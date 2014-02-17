" http://www.w3.org/TR/DOM-Level-2-HTML/html.html
call html5core#namespace('')

call html5core#class('_global', '', [ 
  \ html5core#prop('accesskey', 'number'),
  \ html5core#prop('class', 'String'),
  \ html5core#prop('contenteditable', 'String'),
  \ html5core#prop('contextmenu', 'String'),
  \ html5core#prop('dir', 'dirString'),
  \ html5core#prop('draggable', 'boolean'),
  \ html5core#prop('dropzone', 'dropzoneString'),
  \ html5core#prop('hidden', 'boolean'),
  \ html5core#prop('id ', 'String'),
  \ html5core#prop('lang', 'langString'),
  \ html5core#prop('spellcheck', 'boolean'),
  \ html5core#prop('style', 'String'),
  \ html5core#prop('tabindex', 'number'),
  \ html5core#prop('title', 'String'),
  \ ])

call html5core#class('Node', '_global', [ 
  \ html5core#prop('attributes', 'NamedNodeMap'),
  \ html5core#prop('childNodes', 'NodeList'),
  \ html5core#prop('firstChild', 'Node'),
  \ html5core#prop('lastChild', 'Node'),
  \ html5core#prop('nextSibling', 'Node'),
  \ html5core#prop('nodeName', 'String'),
  \ html5core#prop('nodeType', 'number'),
  \ html5core#prop('nodeValue', 'String'),
  \ html5core#prop('ownerDocument', 'Document'),
  \ html5core#prop('parentElement', 'Node'),
  \ html5core#prop('parentNode', 'Node'),
  \ html5core#prop('previousSibling', 'Node'),
  \ html5core#method('appendChild(', 'Node newChild)', 'Node'),
  \ html5core#method('cloneNode(', 'boolean deep)', 'Node'),
  \ html5core#method('hasChildNodes(', ')', 'boolean'),
  \ html5core#method('insertBefore(', 'Node newChild, Node refChild)', 'Node'),
  \ html5core#method('removeChild(', 'Node oldChild)', 'Node'),
  \ html5core#method('removeNode(', 'boolean removeChildren)', 'Node'),
  \ html5core#method('replaceChild(', 'Node newChild, Node refChild)', 'Node'),
  \ ])

call html5core#class('Array', '', [ 
  \ html5core#prop('length', 'number'),
  \ html5core#method('concat(', 'Array array2)', 'Array'),
  \ html5core#method('join(', 'String delimiterString)', 'String'),
  \ html5core#method('pop(', ')', 'Object'),
  \ html5core#method('push(', 'value)', 'Object'),
  \ html5core#method('reverse(', ')', 'Array'),
  \ html5core#method('shift(', ')', 'Object'),
  \ html5core#method('slice(', 'number startIndex, number endIndex)', 'Array'),
  \ html5core#method('sort(', 'compareFunction)', 'Array'),
  \ html5core#method('unshift(', 'value)', 'number'),
  \ ])

call html5core#class('Context', '', [ 
  \ html5core#method('clear(', ')', 'void'),
  \ html5core#method('get(', 'String key)', 'Object'),
  \ html5core#method('getContext(', 'String type)', 'Context'),
  \ html5core#method('getContextContaining(', 'String name)', 'Context'),
  \ html5core#method('getContextName(', ')', 'String'),
  \ html5core#method('getContextType(', ')', 'String'),
  \ html5core#method('getKeys(', ')', 'Iterator'),
  \ html5core#method('getNamedContext(', 'String name)', 'void'),
  \ html5core#method('getParentContext(', ')', 'void'),
  \ html5core#method('put(', 'String key, Object value)', 'void'),
  \ ])

call html5core#class('Date', '', [ 
  \ html5core#method('getDate(', ')', 'number'),
  \ html5core#method('getDay(', ')', 'number'),
  \ html5core#method('getFullYear(', ')', 'number'),
  \ html5core#method('getHours(', ')', 'number'),
  \ html5core#method('getMilliseconds(', ')', 'number'),
  \ html5core#method('getMinutes(', ')', 'number'),
  \ html5core#method('getMonth(', ')', 'number'),
  \ html5core#method('getSeconds(', ')', 'number'),
  \ html5core#method('getTime(', ')', 'number'),
  \ html5core#method('getTimezoneOffset(', ')', 'number'),
  \ html5core#method('getUTCDate(', ')', 'number'),
  \ html5core#method('getUTCFullYear(', ')', 'number'),
  \ html5core#method('getUTCHours(', ')', 'number'),
  \ html5core#method('getUTCMilliseconds(', ')', 'number'),
  \ html5core#method('getUTCMinutes(', ')', 'number'),
  \ html5core#method('getUTCMonth(', ')', 'number'),
  \ html5core#method('getUTCSeconds(', ')', 'number'),
  \ html5core#method('getYear(', ')', 'number'),
  \ html5core#method('parse(', 'String date)', 'number'),
  \ html5core#method('setDate(', 'number date)', 'number'),
  \ html5core#method('setFullYear(', 'number year)', 'number'),
  \ html5core#method('setHours(', 'number hour)', 'number'),
  \ html5core#method('setMilliseconds(', 'number ms)', 'number'),
  \ html5core#method('setMinutes(', 'number min)', 'number'),
  \ html5core#method('setMonth(', 'number month)', 'number'),
  \ html5core#method('setSeconds(', 'number sec)', 'number'),
  \ html5core#method('setTime(', 'number ms)', 'number'),
  \ html5core#method('setUTCDate(', 'number date)', 'number'),
  \ html5core#method('setUTCFullYear(', 'number year)', 'number'),
  \ html5core#method('setUTCHours(', 'number hour)', 'number'),
  \ html5core#method('setUTCMilliseconds(', 'number ms)', 'number'),
  \ html5core#method('setUTCMinutes(', 'number min)', 'number'),
  \ html5core#method('setUTCMonth(', 'number month)', 'number'),
  \ html5core#method('setUTCSeconds(', 'number sec)', 'number'),
  \ html5core#method('setYear(', 'number year)', 'number'),
  \ html5core#method('toGMTString(', ')', 'String'),
  \ html5core#method('toLocaleString(', ')', 'String'),
  \ html5core#method('toString(', ')', 'String'),
  \ html5core#method('toUTCString(', ')', 'String'),
  \ html5core#method('UTC(', 'number yyyy, number mm, number dd, number hh, number mm, number ss, number msec)', 'number'),
  \ html5core#method('valueOf(', ')', 'number'),
  \ ])

call html5core#class('history', '', [ 
  \ html5core#prop('current', 'String'),
  \ html5core#prop('next', 'String'),
  \ html5core#prop('previous', 'String'),
  \ html5core#method('back(', ')', 'void'),
  \ html5core#method('forward(', ')', 'void'),
  \ html5core#method('go(', 'url|stepCount)', 'void'),
  \ ])

call html5core#class('HTMLCollection', '', [ 
  \ html5core#prop('length', 'number'),
  \ html5core#method('item(', 'number index)', 'Node'),
  \ html5core#method('namedItem(', 'String name)', 'Node'),
  \ ])

call html5core#class('Layer', '', [ 
  \ html5core#prop('clip', 'Clip'),
  \ html5core#prop('document', 'HTMLDocument'),
  \ html5core#prop('layers', 'Array'),
  \ html5core#prop('parentLayer', 'Array'),
  \ html5core#prop('siblingAbove', 'Layer'),
  \ html5core#prop('siblingBelow', 'Layer'),
  \ html5core#prop('window', 'window'),
  \ html5core#method('captureEvents(', 'eventTypeList)', 'void'),
  \ html5core#method('handleEvent(', ')', 'void'),
  \ html5core#method('load(', 'String src, number width)', 'void'),
  \ html5core#method('moveAbove(', 'Layer target)', 'void'),
  \ html5core#method('moveBelow(', 'Layer target)', 'void'),
  \ html5core#method('moveBy(', 'number dx, number dy)', 'void'),
  \ html5core#method('moveTo(', 'number x, number y)', 'void'),
  \ html5core#method('moveToAbsolute(', 'number x, number y)', 'void'),
  \ html5core#method('offset(', 'number dx, number dy)', 'void'),
  \ html5core#method('releaseEvents(', ')', 'void'),
  \ html5core#method('resizeBy(', 'number dw, number dh)', 'void'),
  \ html5core#method('resizeTo(', 'Layer width, Layer height)', 'void'),
  \ html5core#method('routeEvent(', ')', 'void'),
  \ ])

call html5core#class('location', '', [ 
  \ html5core#prop('hash', 'String'),
  \ html5core#prop('host', 'String'),
  \ html5core#prop('hostname', 'String'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('pathname', 'String'),
  \ html5core#prop('port', 'String'),
  \ html5core#prop('protocol', 'String'),
  \ html5core#prop('search', 'String'),
  \ html5core#method('assign(', 'String url)', 'void'),
  \ html5core#method('reload(', 'boolean unconditional)', 'void'),
  \ html5core#method('replace(', 'String url)', 'void'),
  \ ])

call html5core#class('NamedNodeMap', '', [
  \ html5core#prop('length', 'number'),
  \ html5core#method('getNamedItem(', 'String name)', 'Node'),
  \ html5core#method('item(', 'number index)', 'Node'),
  \ html5core#method('removeNamedItem(', 'String name)', 'Node'),
  \ html5core#method('setNamedItem(', 'Node arg)', 'Node'),
  \ ])

call html5core#class('navigator', '', [ 
  \ html5core#prop('appCodeName', 'String'),
  \ html5core#prop('appMinorVersion', 'String'),
  \ html5core#prop('appName', 'String'),
  \ html5core#prop('appVersion', 'String'),
  \ html5core#prop('browserLanguage', 'String'),
  \ html5core#prop('cookieEnabled', 'boolean'),
  \ html5core#prop('cpuClass', 'String'),
  \ html5core#prop('isWebKing', 'boolean'),
  \ html5core#prop('mimeTypes', 'Array'),
  \ html5core#prop('boolean	onLine', 'readonly'),
  \ html5core#prop('String	platform', 'readonly'),
  \ html5core#prop('plugins', 'plugins'),
  \ html5core#prop('String	userAgent', 'readonly'),
  \ html5core#method('getContext(', ')', 'Context'),
  \ html5core#method('javaEnabled(', ')', 'boolean'),
  \ ])

call html5core#class('NodeList', '', [ 
  \ html5core#prop('length', 'number'),
  \ html5core#method('item(', 'number index)', 'Node'),
  \ ])

call html5core#class('plugins', '', [ 
  \ html5core#method('refresh(', ')', 'void'),
  \ ])

call html5core#class('Rule', '', [ 
  \ html5core#prop('selectorTex', 'String'),
  \ html5core#prop('styl', 'style'),
  \ ])

call html5core#class('screen', '', [ 
  \ html5core#prop('number	availHeight', 'readonly'),
  \ html5core#prop('number	availLeft', 'readonly'),
  \ html5core#prop('number	availTop', 'readonly'),
  \ html5core#prop('number	availWidth', 'readonly'),
  \ html5core#prop('number	colorDepth', 'readonly'),
  \ html5core#prop('number	height', 'readonly'),
  \ html5core#prop('number	pixelDepth', 'readonly'),
  \ html5core#prop('number	width', 'readonly'),
  \ ])

call html5core#class('StyleSheet', '', [ 
  \ html5core#prop('hre', 'string'),
  \ html5core#prop('rule', 'Array'),
  \ html5core#method('addRule(', 'string selector, string style, number index', 'number'),
  \ html5core#method('removeRule(', 'number index', 'void'),
  \ ])

call html5core#class('TextRange', '', [ 
  \ html5core#prop('htmlText', 'String'),
  \ html5core#prop('text', 'String'),
  \ ])

call html5core#class('window', '', [ 
  \ html5core#prop('closed', 'boolean'),
  \ html5core#prop('document', 'HTMLDocument'),
  \ html5core#prop('frameElemen', 'HTMLElement'),
  \ html5core#prop('frames', 'Array'),
  \ html5core#prop('history', 'history'),
  \ html5core#prop('innerHeight', 'number'),
  \ html5core#prop('innerWidth', 'number'),
  \ html5core#prop('length', 'number'),
  \ html5core#prop('location', 'location'),
  \ html5core#prop('locationba', 'toolbar'),
  \ html5core#prop('menuba', 'toolbar'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('navigator', 'navigator'),
  \ html5core#prop('opener', 'window'),
  \ html5core#prop('outerHeight', 'number'),
  \ html5core#prop('outerWidth', 'number'),
  \ html5core#prop('parent', 'window'),
  \ html5core#prop('personalba', 'toolbar'),
  \ html5core#prop('screen', 'screen'),
  \ html5core#prop('scrollbar', 'toolbar'),
  \ html5core#prop('self', 'window'),
  \ html5core#prop('status', 'String'),
  \ html5core#prop('statusba', 'toolbar'),
  \ html5core#prop('toolba', 'toolbar'),
  \ html5core#prop('top', 'window'),
  \ html5core#prop('window', 'window'),
  \ html5core#method('alert(', 'String message)', 'void'),
  \ html5core#method('attachEvent(', 'String event, code notify', 'boolean'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('captureEvents(', 'eventTypeList)', 'void'),
  \ html5core#method('clearInterval(', 'number id)', 'void'),
  \ html5core#method('clearTimeout(', 'number id)', 'void'),
  \ html5core#method('close(', ')', 'void'),
  \ html5core#method('confirm(', 'String message)', 'boolean'),
  \ html5core#method('createPopup(', '', 'window'),
  \ html5core#method('detachEvent(', 'String event, code notify', 'void'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('moveBy(', 'number x, number y)', 'void'),
  \ html5core#method('moveTo(', 'number x, number y)', 'void'),
  \ html5core#method('navigate(', 'string url', 'eoid'),
  \ html5core#method('open(', 'String url, String windowName, String features)', 'window'),
  \ html5core#method('print(', ')', 'void'),
  \ html5core#method('prompt(', 'String message, String defaultReply)', 'String'),
  \ html5core#method('resizeBy(', ')', 'void'),
  \ html5core#method('resizeTo(', ')', 'void'),
  \ html5core#method('ScriptEngineMajorVersion(', ')', 'String'),
  \ html5core#method('ScriptEngineMinorVersion(', ')', 'String'),
  \ html5core#method('scroll(', ')', 'void'),
  \ html5core#method('scrollBy(', ')', 'void'),
  \ html5core#method('scrollTo(', ')', 'void'),
  \ html5core#method('setInterval(', 'code expression, number msecs)', 'number'),
  \ html5core#method('setTimeout(', 'code expression, number msecs)', 'number'),
  \ html5core#method('showModalDialog(', 'String url, arguments, features', 'window'),
  \ html5core#method('showModelessDialog(', 'String url, arguments, features', 'window'),
  \ ])

call html5core#class('CharacterData', 'Node', [ 
  \ html5core#prop('data', 'String'),
  \ html5core#prop('length', 'number'),
  \ html5core#method('appendData(', 'String arg)', 'void'),
  \ html5core#method('deleteData(', 'number offset, number count)', 'void'),
  \ html5core#method('insertData(', 'number offset, String arg)', 'void'),
  \ html5core#method('replaceData(', 'number offset, number count, String arg)', 'void'),
  \ html5core#method('substringData(', 'number offset, number count)', 'String'),
  \ ])

call html5core#class('Text', 'CharacterData', [ 
  \ html5core#method('splitText(', 'number offset)', 'Text'),
  \ ])


call html5core#class('Document', 'Node', [ 
  \ html5core#prop('documentElement', 'Element'),
  \ html5core#prop('createElement(String tagName)', 'Element'),
  \ html5core#method('createTextNode(', 'String data)', 'Text'),
  \ html5core#method('getElementById(', 'String elementId)', 'Element'),
  \ html5core#method('getElementsByTagName(', 'String tagname)', 'NodeList'),
  \ ])

call html5core#class('HTMLDocument', 'Document', [ 
  \ html5core#prop('all', 'Array'),
  \ html5core#prop('anchors', 'HTMLCollection'),
  \ html5core#prop('applets', 'HTMLCollection'),
  \ html5core#prop('body', 'HTMLElement'),
  \ html5core#prop('cookie', 'String'),
  \ html5core#prop('domain', 'String'),
  \ html5core#prop('embeds', 'Array'),
  \ html5core#prop('forms', 'HTMLCollection'),
  \ html5core#prop('frames', 'Array'),
  \ html5core#prop('images', 'HTMLCollection'),
  \ html5core#prop('layers', 'Array'),
  \ html5core#prop('links', 'HTMLCollection'),
  \ html5core#prop('location', 'location'),
  \ html5core#prop('parentWindow', 'window'),
  \ html5core#prop('plugins', 'Array'),
  \ html5core#prop('referrer', 'String'),
  \ html5core#prop('scripts', 'Array'),
  \ html5core#prop('styleSheet', 'Array'),
  \ html5core#prop('title', 'String'),
  \ html5core#prop('uniqueId', 'String'),
  \ html5core#prop('URL', 'String'),
  \ html5core#prop('window', 'window'),
  \ html5core#method('attachEvent(', 'String event, code notify', 'boolean'),
  \ html5core#method('captureEvents(', 'eventTypeList)', 'void'),
  \ html5core#method('close(', ')', 'void'),
  \ html5core#method('createStyleSheet(', 'String url, number index', 'StyleSheet'),
  \ html5core#method('getElementById(', 'String elementId)', 'Element'),
  \ html5core#method('getElementsByName(', 'String elementName)', 'NodeList'),
  \ html5core#method('open(', ')', 'void'),
  \ html5core#method('tags(', ')', ''),
  \ html5core#method('write(', 'String text)', 'void'),
  \ html5core#method('writeln(', 'String text)', 'void'),
  \ ])

call html5core#class('Element', 'Node', [ 
  \ html5core#prop('tagName', 'String'),
  \ html5core#method('getAttribute(', 'String name)', 'String'),
  \ html5core#method('getElementsByTagName(', 'String name)', 'NodeList'),
  \ html5core#method('normalize(', ')', 'void'),
  \ html5core#method('removeAttribute(', 'String name)', 'void'),
  \ html5core#method('setAttribute(', 'String name, String value)', 'void'),
  \ ])

call html5core#class('HTMLElement', 'Element', [ 
  \ html5core#prop('childNodes', 'NodeList'),
  \ html5core#prop('children', 'Array'),
  \ html5core#prop('className', 'String'),
  \ html5core#prop('currentStyle', 'style'),
  \ html5core#prop('dir', 'dirString'),
  \ html5core#prop('document', 'HTMLDocument'),
  \ html5core#prop('filter', 'Array'),
  \ html5core#prop('id', 'String'),
  \ html5core#prop('innerHTML', 'String'),
  \ html5core#prop('innerText', 'String'),
  \ html5core#prop('lang', 'langString'),
  \ html5core#prop('offsetHeight', 'number'),
  \ html5core#prop('offsetLeft', 'number'),
  \ html5core#prop('offsetParent', 'number'),
  \ html5core#prop('offsetTop', 'number'),
  \ html5core#prop('offsetWidth', 'number'),
  \ html5core#prop('style', 'style'),
  \ html5core#prop('title', 'String'),
  \ html5core#prop('uniqueId', 'String'),
  \ html5core#method('addBehavior(', 'String url', 'number'),
  \ html5core#method('attachEvent(', 'String event, code notify', 'boolean'),
  \ html5core#method('detachEvent(', 'String event, code notify', 'void'),
  \ html5core#method('insertAdjacentHTML(', 'String where, String HTMLText)', 'void'),
  \ html5core#method('removeBehavior(', 'number id', 'boolean'),
  \ ])

