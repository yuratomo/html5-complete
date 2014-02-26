let [ s:MODE_TAG, s:MODE_ELEMENT, s:MODE_VALUE, s:MODE_FILE, s:MODE_OTHER ] = range(5)
let s:complete_mode = s:MODE_TAG

let s:tag = ''

function! css3#complete(findstart, base)
  if a:findstart
    let line = getline('.')
    let start = col('.') - 1
    let startc = start

    " find start of word
    while start > 0 && line[start - 1] !~ '[\[( :/.={ \t";,]'
      let start -= 1
    endwhile

    " find char
    while startc > 0 && line[startc - 1] !~ '[(\[:{]'
      let startc -= 1
    endwhile

    " resolve complete mode [TAG/ELEMENT/ATTR/VALUE/FILE]
    if line[startc - 1] =~ '('
      let s:complete_mode = s:MODE_FILE
      let start = startc+1
    elseif line[startc - 1] =~ '\['
      let s:complete_mode = s:MODE_ELEMENT
      let s:tag = tolower(matchstr(line, '\w\+'))
    elseif line[startc - 1] =~ ':'
      let s:complete_mode = s:MODE_VALUE
      let s:tag = tolower(matchstr(line, '\zs[a-zA-Z-]*\ze\s*:[^:]\{-}$'))
    elseif line[startc - 1] =~ '[{;]'
      let s:complete_mode = s:MODE_TAG
    else
      let s:complete_mode = s:MODE_OTHER
    endif

    return start

  else
    let res = []
    if s:complete_mode == s:MODE_TAG
      call csscore#enum_completion(a:base, res)

    elseif s:complete_mode == s:MODE_ELEMENT
      if exists('g:loaded_html5')
        call html5#attr_completion(s:tag, a:base, res, '')
      endif

    elseif s:complete_mode == s:MODE_OTHER
      call csscore#enum_completion(a:base, res)
      call csscore#class_completion(a:base, res)

    elseif s:complete_mode == s:MODE_VALUE
      call s:enum_member_completion(s:tag, a:base, res)
      call s:attr_completion(s:tag, a:base, res)

    endif
    return res
  endif

endfunction

function! s:attr_completion(tag, base, res)
  if !csscore#isClassExist(a:tag)
    return
  endif

  let item = csscore#getClass(a:tag)
  for member in item.members
    if member.name =~ '^' . a:base && ( csscore#isAttr(member) || csscore#isEvent(member) )
      let m = copy(member)
      if m.name[-1] != '-'
        let m.name = m.name
      endif
      call add(a:res, csscore#member_to_compitem(item.name, m))
    endif
  endfor

  " find super class member
  if item.extend != ''
    call s:attr_completion(item.extend, a:base, a:res)
  endif
endfunction

function! s:enum_member_completion(tag, base, res)
  if !csscore#isEnumExist(a:tag)
    return
  endif

  let item = csscore#getEnum(a:tag)
  for member in item.members
   if member.name =~ '^' . a:base
      let newitem = csscore#member_to_compitem(item.name, member)
      call add(a:res, newitem)
    endif
  endfor
endfunction

function! css3#showRef()
  call csscore#showRef()
endfun

let [ s:class, s:enum, s:binding ] = csscore#classes()
