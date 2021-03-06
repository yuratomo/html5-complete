let [ s:TYPE_NAMESPACE, s:TYPE_CLASS, s:TYPE_ENUM , s:TYPE_EVENT, s:TYPE_METHOD, s:TYPE_PROP, s:TYPE_FIELD, s:TYPE_BINDING, s:TYPE_KEYWORD, s:TYPE_CONST, s:TYPE_ATTR ] = range(11)
let [ s:MODE_NAMESPACE, s:MODE_CLASS, s:MODE_MEMBER, s:MODE_ENUM, s:MODE_NEW_CLASS, s:MODE_EQUAL, s:MODE_STATIC ] = range(7)
let [ s:ROOT_IS_CLASS, s:ROOT_IS_VAR ] = range(2)

let g:html5_complete_item_len = 30
let s:complete_mode = s:MODE_CLASS
let s:type = ''
let s:parts = []
let s:last_list = []

let g:cs_access_modifier = [
  \ 'public',
  \ 'private',
  \ 'protected',
  \ 'internal',
  \ 'static',
  \ ]

function! s:analize(line, cur)
  " find start of word
  "
  "     type
  "     |
  "     V
  "     Class1 variable;
  "
  "     variable.property1.property2.property3 = variable
  "     A                            A
  "     |                            |
  "     vstart                       pstart
  "
  "  parts = [ variable, property1, property2, property3 ]
  "
  let cur = a:cur
  let line = getline(a:line)[ 0 : cur-1 ]
  let compmode = s:MODE_CLASS

  " is using?
  if line[0:10] =~ '\<using\>\s'
    let pstart = matchend(line, '\<using\>\s\+')
    let exist = 0
    for ns in s:namespace
      if ns =~ '^' . line[ pstart : ]
        let exist = 1
        break
      endif
    endfor
    if exist == 1
      return [ pstart, s:MODE_NAMESPACE, '', [] ]
    endif
  endif

  " resolve complete mode [CLASS/MEMBER]
  let idx = cur
  while idx > 0 && line[idx] !~ '[. \t(;]'
    let idx -= 1
  endwhile
  if cur <= 0 || line[idx] =~ '[ \t]'
    let compmode = s:MODE_CLASS
  elseif line[idx] == '.'
    let compmode = s:MODE_MEMBER
  else
    let compmode = s:MODE_CLASS
  endif

  " find pstart and vstart
  let vstart = cur
  let pstart = -1
  let end_bracket = 0
  while vstart > 0 && line[vstart - 1] !~ '[ \t"]'
    if line[vstart - 1] == ')'
      let end_bracket = end_bracket + 1
    elseif line[vstart - 1] == '('
      if end_bracket == 0
        break
      else
        let end_bracket = end_bracket - 1
      endif
    endif
    if pstart == -1 && line[vstart - 1] == '.'
      let pstart = vstart
    endif
    let vstart -= 1
  endwhile
  if pstart == -1
    let pstart = vstart
  endif
  let variable = substitute(line[ vstart : cur ], '([^()]*)', '(', 'g')

  " separate variable by dot and resolve type.
  let type = { 'class' : '' }
  let parts = split(s:normalize_prop(variable), '\.')
  if !empty(parts) && parts[0] != '='
    if line[cur-1] == '.'
      call add(parts, '')
    endif
    let type = s:find_type(a:line, parts[0])
    if type.mode == s:ROOT_IS_CLASS
      let compmode = s:MODE_STATIC
    endif
  else
    " value complete
    let idx = cur - 1
    while idx > 0 && line[idx] =~ '[ \t]'
      let idx -= 1
    endwhile

    if line[idx] == '='
      let compmode = s:MODE_EQUAL

      " resolve property type of forward 'equal'
      let idx -= 1
      while idx >= 0 && line[idx] =~ '[ \t+]'
        let idx -= 1
      endwhile
      let vend = idx
      let idx -= 1
      while idx >= 0 && line[idx] !~ '[ \t+]'
        let idx -= 1
      endwhile
      let vstart = idx+1

      let variable = line[ vstart : vend ]
      let parts = split(s:normalize_prop(variable), '\.')
      let type = s:find_type(a:line, parts[0])
      " this class member
      if type.class == variable
        call insert(parts, 'this', 0)
      endif
      call add(parts, '')
      let pstart = col('.')+1

    elseif idx >= 3 && line[ idx-3 : ] =~ '\<new\>'
      " find target variable
      let idx -= 3
      while idx > 0 && line[idx] =~ '[ \t=]'
        let idx -= 1
      endwhile

      " find variable start for new
      let new_vstart = idx
      while new_vstart > 0 && line[new_vstart - 1] !~ '[ \t"]'
        let new_vstart -= 1
      endwhile
      let new_vparts = split(s:normalize_prop(line[ new_vstart : idx ]), '\.')
      let type = s:find_type(a:line, new_vparts[0])

      let compmode = s:MODE_NEW_CLASS
    endif
  endif
  return [ pstart, compmode, type.class, parts ]
endfunction

function! html5core#complete(findstart, base)
  if a:findstart
    let line = line('.')
    let cur = col('.') - 1
    let [ pstart, s:complete_mode, s:type, s:parts ] = s:analize(line, cur)
    return pstart

  else
    let res = []
    if s:complete_mode == s:MODE_NAMESPACE
      call html5core#ns_completion(a:base, res)

    elseif s:complete_mode == s:MODE_CLASS
      call s:keyword_completion(a:base, res)
      call s:this_member_completion(a:base, res)
      call html5core#class_completion(a:base, res)
      call html5core#enum_completion(a:base, res)

    elseif s:complete_mode == s:MODE_ENUM
      call html5core#enum_completion(a:base, res)

    elseif s:complete_mode == s:MODE_NEW_CLASS
      call s:class_new_completion(s:type, res)

    elseif s:complete_mode == s:MODE_EQUAL
      call s:class_member_completion(a:base, res, 1)

    elseif s:complete_mode == s:MODE_STATIC
      call s:class_member_completion(a:base, res, 2)

    else
      if len(s:parts) >= 1 

        " is namespace complete ?
        let match_ns = 0
        let variable = join(s:parts, '.')
        if variable[-1:-1] == '.'
          let variable = variable[0:-2]
          let type = variable
        else
          let type = substitute(variable, '\.[^.]\+$', '', '')
        endif
        let start = len(join(s:parts[0:-2], '.'))+1
        for ns in html5core#getNamespaces()
          if ns =~ '^' . variable
            let compitem = ns[start : ]
            call add(res, html5core#ns_to_compitem(compitem))
          endif
          if ns == type
            let match_ns = 1
          endif
        endfor

        if match_ns == 1 || s:parts[0] == 'System'
          let s:type = substitute(type, '.*\.', '', '')
        elseif html5core#isEnumExist(s:parts[0])
          let s:type = s:parts[0]
        endif
      endif
      call s:class_member_completion(a:base, res, 0)
    endif
    let s:last_list = res
    return res

  endif
endfunction

function! s:keyword_completion(base, res)
  for fun in s:keyword
    if fun.name =~ '^' . a:base
      call add(a:res, s:keyword_to_compitem(fun))
    endif
  endfor
endfunction

function! html5core#ns_completion(base, res)
  for ns in s:namespace
    if ns =~ '^' . a:base
      call add(a:res, html5core#ns_to_compitem(ns))
    endif
  endfor
endfunction

function! s:this_member_completion(base, res)
    let type = s:type
    let parts = s:parts
    let s:type = 'this'
    let s:parts = [ 'this', '' ]
    call s:class_member_completion(a:base, a:res, 0)
    let s:type = type
    let s:parts = parts
endfunction

function! html5core#class_completion(base, res)
  for key in keys(s:class)
    if key =~ '^' . a:base
      let item = s:class[ key ]
      call add(a:res, s:class_to_compitem(item))
    endif
  endfor
endfunction

function! s:enum_member_completion(tag, base, res, type)
  if !html5core#isEnumExist(a:tag)
    return
  endif

  let item = html5core#getEnum(a:tag)
  for member in item.members
   if member.name =~ '^' . a:base
      let newitem = html5core#member_to_compitem(item.name, member)
      if a:type == 1 && s:is_primitive(item.name) == 0
        let newitem.word = item.name . "." . member.name
        let newitem.abbr = s:abbr(newitem.word)
      endif
      call add(a:res, newitem)
    endif
  endfor
endfunction

function! html5core#enum_completion(base, res)
  for key in keys(s:enum)
    if key =~ '^' . a:base
      let item = s:enum[ key ]
      call add(a:res, s:class_to_compitem(item))
    endif
  endfor
endfunction

function! s:class_member_completion(base, res, type)
  let len = len(s:parts)
  let idx = 0
  let parts = s:parts
  let type  = s:type

  " this or super class member ?
  if parts[0] == 'this' || parts[0] == 'base'
    let [ type, super ] = s:this_class(line('.'))
    if parts[0] == 'base'
      let type = super
    else
      if !html5core#isClassExist(type)
        let type = super
      endif
    endif
  endif

  " std .net class member ?
  let class = s:conv_primitive(s:normalize_type(type))
  for part in parts
    if idx == 0
      let idx = 1
      continue
    endif
    if !html5core#isClassExist(class)
      if !html5core#isEnumExist(class)
"       let item = html5core#getTag(class)
"       if empty(item)
"         if exists('item')
"           unlet item
"         endif
"         break
"       endif
        return
      else
        let item = html5core#getEnum(class)
      endif
    else
      let item = html5core#getClass(class)
    endif

    if idx == len - 1
      break
    endif

    " find target in member list
    let _break = 0
    while 1
      for member in item.members
        if member.name ==# part
          let _break = 1
          let class = s:normalize_retval(member.class)
          let class = s:conv_primitive(class)
          break
        endif
      endfor
      if _break == 1
        break
      endif
      if has_key(item, 'extend')
        if html5core#isClassExist(item.extend)
          let item = html5core#getClass(item.extend)
        else
"         let item = html5core#getTag(item.extend)
"         if empty(item)
"           unlet item
            break
"         endif
        endif
      else
        return
      endif
    endwhile

    let idx += 1
  endfor

  if exists('item')
    if a:type == 0
      call s:attr_completion(item.name, a:base, a:res, 0)
      call s:enum_member_completion(item.name, a:base, a:res, a:type)
    elseif a:type == 1
      call s:enum_member_completion(item.name, a:base, a:res, a:type)
      if !has_key(s:primitive_dict, item.name)
        let newitem = html5core#member_to_compitem('new ' . item.name . '(', {})
        let newitem.menu = 'create new instance'
        call add(a:res, newitem)
        let newitem = html5core#member_to_compitem('(' . item.name . ')', {})
        let newitem.menu = 'for cast'
        call add(a:res, newitem)
      endif
      if empty(a:res)
        call html5core#class_completion(a:base, a:res)
      endif
    else
      call s:attr_completion(item.name, a:base, a:res, 1)
    endif
  endif
endfunction

function! s:normalize_type(type)
  return substitute(
        \ substitute(
        \ substitute(
        \ a:type, 
        \ '<.*>', '', ''), 
        \ '\[.*\]', '', ''),
        \ 'static ', '', '')
endfunction

function! s:normalize_retval(type)
  return substitute(
        \ substitute(
        \ substitute(
        \ substitute(
        \ a:type,
        \ '<.*>', '', ''),
        \ '\[.*\]', '', ''),
        \ 'static ', '', ''),
        \ 'abstruct ', '', '')
endfunction

function! s:normalize_prop(prop)
  return substitute(
        \ substitute(
        \ a:prop,
        \ '<.\{-\}>','','g'),
        \ '\[.\{-\}\]','','g')
endfunction

function! s:find_type(start_line, var)
  let result = { 'class' :  a:var , 'mode' : s:ROOT_IS_VAR}

  " find current function start
  let s = a:start_line
  while s >= 0
    let line = getline(s)
    if line =~ '^\s\+[a-zA-Z0-9_.<>]\+\s\+[a-zA-Z0-9_.<> ]\+('
      break
    endif
    let s -= 1
  endwhile

  for rng in [ [s, a:start_line], [0, s-1], [a:start_line+1, line('$')-1] ]
    let l = rng[0]
    while l <= rng[1]
      let line = s:normalize_prop(getline(l))
      if line =~ '[a-zA-Z0-9_]\+\s\+\<' . a:var . '\>.*'
        let parts = split(line, '[(). \t;=]\+')
        let pre = ''
        let var_mode = 0
        for p in parts
          if p ==# a:var && index(g:cs_access_modifier, pre) < 0
            let result.class = s:conv_primitive(pre)
            let result.mode = s:ROOT_IS_VAR
            " 2013/08/30 varの型解決
            if result.class != 'var'
              return result
            else
              let var_mode = 1
            endif
          elseif var_mode == 1 && ( pre == 'new' || pre == 'as' )
            let result.class = s:conv_primitive(p)
            let result.mode = s:ROOT_IS_VAR
            return result
          endif
          let pre = p
        endfor
      endif
      let l += 1
    endwhile
  endfor

  if html5core#isClassExist(result.class)
    let result.mode = s:ROOT_IS_CLASS
  endif

  return result
endfunction

function! s:this_class(start_line)
  let _class = ''
  let _super = ''
  let finded_class = 0
  let s = a:start_line
  while s >= 0
    let line = getline(s)
    if line =~ '.*\<class\s\+' && line !~ "^\s*\/\/"
      let finded_class = 1
      let _class = substitute(substitute(line, '.*\<class\s\+', '', ''), '\s\+.*$', '', '')
    endif
    if finded_class == 1
      if line =~ '.*\s*:\s*' && line !~ "^\s*\/\/"
        let _super = substitute(substitute(line, '.*:\s*', '', ''), '\s\+.*$', '', '')
      endif
      if line =~ '{'
        break
      endif
    endif
    let s -= 1
  endwhile
  return [ _class , _super]
endfunction

function! s:this_namespace()
  let s = 0
  let e = line('$')
  while s < e
    let line = getline(s)
    if line =~ '\s*namespace\s\+' && line !~ "^\s*\/\/"
      return substitute(substitute(line, '.*namespace\s\+', '', ''), '\s\+.*$', '', '')
    endif
    let s += 1
  endwhile
  return ''
endfunction

let s:primitive_dict = {
  \ 'byte '  : 'Byte',
  \ 'sbyte ' : 'SByte',
  \ 'int8'   : 'SByte',
  \ 'uint8'  : 'Byte',
  \ 'short'  : 'Int16',
  \ 'ushort' : 'UInt16',
  \ 'int16'  : 'Int16',
  \ 'uint16' : 'UInt16',
  \ 'int'    : 'Int32',
  \ 'uint'   : 'UInt32',
  \ 'int32'  : 'Int32',
  \ 'uint32' : 'UInt32',
  \ 'long'   : 'Int64',
  \ 'ulong'  : 'UInt64',
  \ 'int64'  : 'Int64',
  \ 'uint64' : 'UInt64',
  \ 'float'  : 'Single',
  \ 'float64': 'Double',
  \ 'double' : 'Double',
  \ 'char'   : 'Char',
  \ 'string' : 'String',
  \ 'bool'   : 'Boolean',
  \ 'decimal': 'Decimal',
  \ 'object' : 'Object',
  \ }
function! s:conv_primitive(str)
  if has_key(s:primitive_dict, a:str)
    return s:primitive_dict[a:str]
  else
    return a:str
  endif
endfunction

function! s:is_primitive(str)
  if has_key(s:primitive_dict, a:str)
    return 1
  endif
  for val in values(s:primitive_dict)
    if val == a:str
      return 1
    endif
  endfor
  return 0
endfunction

function! s:attr_completion(tag, base, res, static)
  if !html5core#isClassExist(a:tag)
"   let item = html5core#getTag(a:tag)
"   if empty(item)
      return
"   endif
  else
    let item = html5core#getClass(a:tag)
  endif
  for member in item.members
    if a:static == 1 && has_key(member, 'static') && member.static == 0
      continue
    endif

    " negrect get_ and set_
    if member.name =~ '^\(get_\|set_\)'
      continue
    endif

   if member.name =~ '^' . a:base
      call add(a:res, html5core#member_to_compitem(item.name, member))
    endif
  endfor

  " find super class member
  if item.extend != '' && item.extend != '-'
    call s:attr_completion(item.extend, a:base, a:res, a:static)
  endif
  " find implements interface member
  if has_key(item, 'implements') && !empty(item.implements)
    for implement in item.implements
      call s:attr_completion(implement, a:base, a:res, a:static)
    endfor
  endif
endfunction

function! s:abbr(str)
  if len(a:str) > g:html5_complete_item_len
    return a:str[0 : g:html5_complete_item_len] . '...'
  endif
  return a:str
endfunction

function! html5core#member_to_compitem(class, member)
  if empty(a:member)
    return {
      \ 'word' : a:class,
      \ 'abbr' : s:abbr(a:class),
      \ 'menu' : a:class,
      \ 'kind' : 't',
      \ 'dup'  : 1,
      \}
  else
    return {
      \ 'word' : a:member.name,
      \ 'abbr' : s:abbr(a:member.name),
      \ 'menu' : '[' . a:class . '] ' . a:member.class . ' ' . a:member.name . a:member.detail,
      \ 'kind' : a:member.kind,
      \ 'dup'  : 1,
      \}
  endif
endfunction

function! html5core#ns_to_compitem(ns)
  return {
    \ 'word' : a:ns,
    \ 'menu' : 'namespace',
    \ 'kind' : 't',
    \}
endfunction

function! s:class_to_compitem(member)
  if a:member.type ==? s:TYPE_ENUM
    return {
      \ 'word' : a:member.name,
      \ 'abbr' : s:abbr(a:member.name),
      \ 'menu' : ':enum',
      \ 'kind' : a:member.kind,
      \}
  elseif a:member.type == s:TYPE_NAMESPACE
    return {
      \ 'word' : a:member.name,
      \ 'abbr' : s:abbr(a:member.name),
      \ 'menu' : ':namespace',
      \ 'kind' : a:member.kind,
      \}
  else
    return {
      \ 'word' : a:member.name,
      \ 'abbr' : s:abbr(a:member.name),
      \ 'menu' : ':' . a:member.extend,
      \ 'kind' : a:member.kind,
      \}
  endif
endfunction

function! s:keyword_to_compitem(func)
  return {
    \ 'word' : a:func.name, 
    \ 'menu' : a:func.detail,
    \ 'kind' : 't',
    \}
endfunction

let s:class = {}
function! html5core#class(name, extend, members)
  let s:class[ a:name ] = s:def_class(a:name, a:extend, a:members)
  if exists('s:parent') && index(s:parent.members, a:name) == -1
    call add(s:parent.members, html5core#prop(a:name, a:name))
  endif
endfunction

let s:namespace = []
function! html5core#namespace(ns)
  try
    unret s:parent
  catch /.*/
  endtry

  call add(s:namespace, a:ns)

  let parts = split(a:ns, '\.')
  for part in parts
    "if exists('s:parent') && index(s:parent.members, part) == -1
    "  call add(s:parent.members, html5core#prop(part, part))
    "endif

    if !html5core#isClassExist(part)
      call s:namespace_item(part, '', [])
    endif

    " last namespace (for html5core#class)
    let s:parent = html5core#getClass(part)
  endfor
endfunction

let s:keyword = []
function! html5core#keyword(name, detail)
  call add(s:keyword, 
    \ {
    \ 'type'      : s:TYPE_KEYWORD,
    \ 'name'      : a:name,
    \ 'detail'    : a:detail
    \ })
endfunction

function! s:def_class(name, extend, members)
  return {
    \ 'type'   : s:TYPE_CLASS,
    \ 'name'   : a:name,
    \ 'kind'   : 't',
    \ 'extend' : a:extend,
    \ 'members': a:members,
    \ }
endfunction

function! html5core#method(name, detail, class)
  return {
    \ 'type'   : s:TYPE_METHOD,
    \ 'kind'   : 'f', 
    \ 'name'   : a:name,
    \ 'class'  : a:class,
    \ 'detail' : a:detail,
    \ }
endfunction

function! html5core#prop(name, class)
  return {
    \ 'type'   : s:TYPE_PROP,
    \ 'kind'   : 'm', 
    \ 'name'   : a:name,
    \ 'class'  : a:class,
    \ 'detail' : '',
    \ }
endfunction

function! html5core#attr(name, class)
  return {
    \ 'type'   : s:TYPE_ATTR,
    \ 'kind'   : 'm', 
    \ 'name'   : a:name,
    \ 'class'  : a:class,
    \ 'detail' : '',
    \ }
endfunction

function! html5core#const(name, value)
  return {
    \ 'type'   : s:TYPE_CONST,
    \ 'kind'   : 'm', 
    \ 'name'   : a:name,
    \ 'class'  : a:value,
    \ 'detail' : a:value,
    \ }
endfunction

function! html5core#field(name, class)
  return {
    \ 'type'   : s:TYPE_FIELD,
    \ 'kind'   : 'v', 
    \ 'name'   : a:name,
    \ 'class'  : a:class,
    \ 'detail' : '',
    \ }
endfunction

function! html5core#event(name, class)
  return {
    \ 'type'   : s:TYPE_EVENT,
    \ 'kind'   : 'f',
    \ 'name'   : a:name,
    \ 'class'  : a:class,
    \ 'detail' : '',
    \ }
endfunction

let s:enum = {}
function! html5core#enum(name, members)
  let s:enum[ a:name ] = {
    \ 'type'   : s:TYPE_ENUM,
    \ 'name'   : a:name,
    \ 'kind'   : 't',
    \ 'members': a:members,
    \ 'class'  : '',
    \ 'detail' : '',
    \ }
endfunction

let s:binding = {}
function! html5core#bind(name, members)
  let s:binding[ a:name ] = {
    \ 'type'   : s:TYPE_BINDING,
    \ 'name'   : a:name,
    \ 'kind'   : 't',
    \ 'members': a:members,
    \ 'class'  : 'Binding',
    \ 'detail' : '',
    \ }
endfunction

function! html5core#isMethod(member)
  if a:member.type == s:TYPE_METHOD
    return 1
  else
    return 0
  endif
endfunction

function! html5core#isConst(member)
  if a:member.type == s:TYPE_CONST
    return 1
  else
    return 0
  endif
endfunction

function! html5core#isAttr(member)
  if a:member.type == s:TYPE_ATTR
    return 1
  else
    return 0
  endif
endfunction

function! s:namespace_item(name, extend, members)
  let s:class[ a:name ] = {
    \ 'type'   : s:TYPE_NAMESPACE,
    \ 'name'   : a:name,
    \ 'kind'   : 't',
    \ 'extend' : a:extend,
    \ 'members': a:members,
    \ }
endfunction

function! html5core#isEvent(member)
  if a:member.type == s:TYPE_EVENT
    return 1
  else
    return 0
  endif
endfunction

function! html5core#isClassExist(name)
  return has_key(s:class, a:name)
endfunction

function! html5core#getClass(name)
  return get(s:class, a:name)
endfunction

function! html5core#getSuperClassList(name, list)
  if !html5core#isClassExist(a:name)
    return
  endif

  let item = html5core#getClass(a:name)
  if item.extend != '' && item.extend != '-'
    call add(a:list, item.extend)
    call html5core#getSuperClassList(item.extend, a:list)
  endif
endfunction

" その都度tagsからロードしていると遅いので、
" タグ → s:class にロードして使うようにする
" function! html5core#getTag(name)
"   let types = filter(taglist('^.*.' . a:name . '\>'), 'v:val.kind == "c"')
"   if empty(types)
"     return {}
"   endif
"   let type = types[0]
"   let extend = ''
"   if has_key(type, 'inherits')
"     let extend = type.inherits
"   endif
" 
"   let tags = taglist('^.*\.' . a:name . '\..*$')
"   if empty(tags)
"     return {}
"   endif
" 
"   let class = s:def_class(a:name, extend, [])
"   for tag in tags
"     let name = substitute(tag.name, '.*' . a:name . '\.', '', '')
"     let ttype = split(substitute(tag.cmd, '\s*\<' . name . '\>.*$', '', ''), '\s\+')[-1]
"     if index(g:cs_access_modifier, ttype) >= 0
"       let ttype = name
"     endif
"     call add(class.members, html5core#prop(name, ttype))
"   endfor
"   return class
" endfunction

function! html5core#isBindingExist(name)
  return has_key(s:binding, a:name)
endfunction

function! html5core#getBinding(name)
  return get(s:binding, a:name)
endfunction

function! html5core#isEnumExist(name)
  return has_key(s:enum, a:name)
endfunction

function! html5core#getEnum(name)
  return get(s:enum, a:name)
endfunction

function! html5core#getNamespaces()
  return s:namespace
endfunction

function! s:class_new_completion(base, res)
  for key in keys(s:class)
    if key == a:base
      let item = html5core#getClass(key)
      for member in item.members
        " negrect not constructor
        if member.name !~ '^' . item.name . '('
          continue
        endif

        if member.name =~ '^' . a:base
          call add(a:res, html5core#member_to_compitem(item.name, member))
        endif
      endfor
      break
    endif
  endfor
endfunction

function! html5core#showRef()
  if !exists('g:html5core#statusline')
    let g:html5core#statusline = &statusline
  endif

  let items = s:ref('', line('.'), col('.'))
  if len(items) == 0
    return ""
  endif

  let b:ref = {
  \ 'index' : -1,
  \ 'items' : items,
  \ 'line'  : line('.'),
  \ }
  call html5core#nextRef()

  augroup html5core
    au!
    au InsertLeave  <buffer> call html5core#clearRef()
    au CursorMovedI <buffer> call html5core#checkLineForRef()
  augroup END
  return ""
endfunction

function! s:toStatusLineString(str)
  return substitute(
        \ substitute(
        \ substitute(
        \ substitute(
        \ a:str, 
        \ '[', '%#Title#[', ''), 
        \ ']', ']%#Function#', ''), 
        \ '(', '%#Normal#(', ''),
        \ '//','%#Comment#//', '')
endfunction

function! html5core#nextRef()
  return s:prevNextRef(1)
endfunction
function! html5core#prevRef()
  return s:prevNextRef(-1)
endfunction
function! s:prevNextRef(adjust)
  if exists("b:ref")
    let b:ref.index += a:adjust
    if b:ref.index >= len(b:ref.items)
      let b:ref.index = 0
    elseif b:ref.index < 0
      let b:ref.index = len(b:ref.items) - 1
    endif
    let idx = b:ref.index + 1
    let def = s:toStatusLineString(b:ref.items[ b:ref.index ])
    if def != ''
      let &l:statusline = '(' . idx . '/' . len(b:ref.items) . ') %#Function#' . def
    endif
  endif
  return ""
endfunction

function! html5core#checkLineForRef()
  if exists("b:ref")
    if b:ref.line != line('.')
      call html5core#clearRef()
    endif
  endif
endfunction

function! html5core#reshowRef()
  if exists("b:ref")
    if b:ref.line == line('.')
      call html5core#showRef()
    endif
  endif
endfunction

function! html5core#clearRef()
  let &l:statusline = g:html5core#statusline
  augroup html5core
    au!
    au InsertEnter  <buffer> call html5core#reshowRef()
  augroup END
endfunction

function! html5core#balloon()
  return join(s:ref(v:beval_text, v:beval_lnum, v:beval_col), "\n")
endfunction

function! s:ref(word, lnum, col)
  let line = getline('.')
  let cc = strridx(line, '(', a:col)
  if cc == -1
    let cc = a:col
  else
    let cc -= 1
  endif

  let [ pstart, complete_mode, s:type, s:parts ] = s:analize(a:lnum, cc)
  let menus = []
  let l = line[ pstart : cc]
  for member in s:last_list
   if member.word =~ '^' . l
      call add(menus, member.menu)
    endif
  endfor
  return menus
endfunction

function! s:msg(msg)
  redraw
  let msg = strpart( a:msg, 0, winwidth(0) - &numberwidth - 10)
  echo 'html5: ' . msg
endfunction

" load from tags
function! html5core#loadFromTags()
  call s:msg("tag load start ... ")

  let idx = char2nr('a')
  let end = char2nr('z')
  let defs = {}
  while idx <= end
    let ptn = nr2char(idx)
    let idx += 1

    call s:msg('tag load [' . ptn . ']. Please wait ... ')
    let tlist = taglist('^' . ptn . '.*')

    " classes
    for titem in tlist
      if titem.kind == 'c'
        let class = titem
        let cname = substitute(class.name, '.*\.', '', '')
        let extend = ''
        if has_key(class, 'inherits')
          let extend = class.inherits
        endif

        if has_key(defs, cname)
          let defs[cname].extend = extend
        else
          let defs[cname] = s:def_class(cname, extend, [])
        endif

      elseif has_key(titem, "class") && ((titem.kind == "f" || titem.kind == "m" || titem.kind == "p"))
        " members
        let member = titem
        let cname = substitute(member.class, '.*\.', '', '')
        let mname = substitute(member.name, '.*\.', '', '')
        if mname =~ '^\~'
          continue
        endif
        if !has_key(defs, cname)
          let defs[cname] = s:def_class(cname, '', [])
        endif

        if !has_key(defs[cname], 'member_names')
          let defs[cname].member_names = []
        endif
        if index(defs[cname].member_names, mname) == -1
          try
            let ttype = split(substitute(member.cmd, '\s*\<' . mname . '\>.*$', '', ''), '\s\+')[-1]
          catch /.*/
            let ttype = mname
          endtry

          if index(g:cs_access_modifier, ttype) >= 0
            let ttype = mname
          endif

          if has_key(member, 'static') && member.static == 1
            let ttype = 'static ' . ttype
          endif

          if has_key(member, 'signature')
            let signature = member.signature
            let item = html5core#method(mname . '(', signature[1:], ttype)
            let mname = mname . signature
          else
            let item = html5core#prop(mname, ttype)
          endif
          call add(defs[cname].members, item)
          call add(defs[cname].member_names, mname)
        endif
        call s:msg('tag load [' . ptn . '] ' . cname . '.' . mname)
      endif
    endfor
  endwhile

  " add s:class
  for [key, value] in items(defs)
    if !has_key(s:class, key)
      let s:class[ key ] = value
    else
      call extend( s:class[ key ].members, value.members )
    endif
  endfor

  call s:msg('tag loaded!')

endfunction

" load autoload/html5/.vim
function! html5core#load(sub)
  let rtp = filter(split(&runtimepath, ','), 'v:val =~ a:sub')
  let files = split(globpath(join(rtp, ','), 'autoload/html5/*.vim'), '\n')
  for file in files
    if file
      continue
    endif
    call s:msg('load ' . substitute(file, '^.*\','',''))
    exe 'so ' . file
  endfor
  call s:msg('loadded')
  call remove(g:html5core#delay_dirs, a:sub)
endfunction

" load
if !exists('s:dictionary_loaded')

  " delay directories
  if !exists('g:html5core#delay_dirs')
    let g:html5core#delay_dirs = []
  end
  let rtp = split(&runtimepath, ',')
  for dir in g:html5core#delay_dirs
    let rtp = filter(rtp, 'v:val !~ dir')
  endfor

  let files = split(globpath(join(rtp, ','), 'autoload/html5/*.vim'), '\n')
  for file in files
    if file
      continue
    endif
    call s:msg('load ' . substitute(file, '^.*\','',''))
    exe 'so ' . file
  endfor
  call s:msg('loadded')
  let s:dictionary_loaded = 1
endif

function! html5core#classes()
  return [ s:class, s:enum, s:binding]
endfunction

