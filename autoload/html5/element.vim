call html5core#namespace('')

call html5core#class('HTMLAnchorElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('charset', 'charsetString'),
  \ html5core#prop('coords', 'coordsString'),
  \ html5core#prop('href', 'hrefString'),
  \ html5core#prop('hreflang', 'langString'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('rel', 'relString'),
  \ html5core#prop('rev', 'String'),
  \ html5core#prop('shape', 'shapeString'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('target', 'targetString'),
  \ html5core#prop('text', 'String'),
  \ html5core#prop('type', 'mimeString'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('click(', ')', 'void'),
  \ html5core#method('focus(', ')', 'void'),
  \ ])

call html5core#class('HTMLAppletElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('alt', 'String'),
  \ html5core#prop('archive', 'String'),
  \ html5core#prop('code', 'String'),
  \ html5core#prop('codeBase', 'String'),
  \ html5core#prop('height', 'String'),
  \ html5core#prop('hspace', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('object', 'String'),
  \ html5core#prop('vspace', 'String'),
  \ html5core#prop('width', 'String'),
  \ ])

call html5core#class('HTMLAreaElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('alt', 'String'),
  \ html5core#prop('coords', 'coordsString'),
  \ html5core#prop('hash', 'String'),
  \ html5core#prop('host', 'String'),
  \ html5core#prop('hostname', 'String'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('noHref', 'String'),
  \ html5core#prop('pathname', 'String'),
  \ html5core#prop('port', 'String'),
  \ html5core#prop('protocol', 'String'),
  \ html5core#prop('search', 'String'),
  \ html5core#prop('shape', 'shapeString'),
  \ html5core#prop('tabIndex', 'String'),
  \ html5core#prop('target', 'targetString'),
  \ html5core#method('click(', ')', 'void'),
  \ ])

call html5core#class('HTMLBaseElement', 'HTMLElement', [ 
  \ html5core#prop('href', 'String'),
  \ html5core#prop('target', 'targetString'),
  \ ])

call html5core#class('HTMLBaseFontElement', 'HTMLElement', [ 
  \ html5core#prop('color', 'String'),
  \ html5core#prop('face', 'String'),
  \ html5core#prop('size', 'String'),
  \ ])

call html5core#class('HTMLBlockquoteElement', 'HTMLElement', [ 
  \ html5core#prop('cit', 'String'),
  \ ])

call html5core#class('HTMLBodyElement', 'HTMLElement', [ 
  \ html5core#prop('aLink', 'String'),
  \ html5core#prop('background', 'String'),
  \ html5core#prop('bgColor', 'String'),
  \ html5core#prop('link', 'String'),
  \ html5core#prop('text', 'String'),
  \ html5core#prop('vLin', 'String'),
  \ html5core#method('createTextRange(', '', 'TextRange'),
  \ ])

call html5core#class('HTMLBRElement', 'HTMLElement', [ 
  \ html5core#prop('clear', 'String'),
  \ ])

call html5core#class('HTMLButtonElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#method('createTextRange(', ')	', 'TextRange'),
  \ ])

call html5core#class('HTMLDirectoryElement', 'HTMLElement', [ 
  \ html5core#prop('compact', 'boolean'),
  \ ])

call html5core#class('HTMLDivElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ ])

call html5core#class('HTMLDListElement', 'HTMLElement', [ 
  \ html5core#prop('compac', 'boolean'),
  \ ])

call html5core#class('HTMLFieldSetElement', 'HTMLElement', [ 
  \ html5core#prop('form', 'HTMLFormElement'),
  \ ])

call html5core#class('HTMLFontElement', 'HTMLElement', [ 
  \ html5core#prop('color', 'String'),
  \ html5core#prop('face', 'String'),
  \ html5core#prop('size', 'String'),
  \ ])

call html5core#class('HTMLFormElement', 'HTMLElement', [ 
  \ html5core#prop('acceptCharset', 'charsetString'),
  \ html5core#prop('action', 'String'),
  \ html5core#prop('behavio', 'String'),
  \ html5core#prop('elements', 'HTMLCollection'),
  \ html5core#prop('encoding', 'String'),
  \ html5core#prop('length', 'number'),
  \ html5core#prop('method', 'methodString'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('target', 'targetString'),
  \ html5core#method('item(', 'key)', 'HTMLElement'),
  \ html5core#method('reset(', ')', 'void'),
  \ html5core#method('submit(', ')', 'void'),
  \ ])

call html5core#class('HTMLFrameElement', 'HTMLElement', [ 
  \ html5core#prop('contentDocument', 'Document'),
  \ html5core#prop('frameBorder', 'String'),
  \ html5core#prop('longDesc', 'String'),
  \ html5core#prop('marginHeight', 'String'),
  \ html5core#prop('marginWidth', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('noResize', 'boolean'),
  \ html5core#prop('scrolling', 'String'),
  \ html5core#prop('src', 'String'),
  \ ])

call html5core#class('HTMLFrameSetElement', 'HTMLElement', [ 
  \ html5core#prop('cols', 'String'),
  \ html5core#prop('rows', 'String'),
  \ ])

call html5core#class('HTMLHeadElement', 'HTMLElement', [ 
  \ html5core#prop('profile', 'String'),
  \ ])

call html5core#class('HTMLHeadingElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ ])

call html5core#class('HTMLHRElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('noShade', 'boolean'),
  \ html5core#prop('size', 'String'),
  \ html5core#prop('width', 'String'),
  \ ])

call html5core#class('HTMLHtmlElement', 'HTMLElement', [ 
  \ html5core#prop('version', 'String'),
  \ ])

call html5core#class('HTMLIFrameElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('contentDocument', 'Document'),
  \ html5core#prop('frameBorder', 'String'),
  \ html5core#prop('height', 'String'),
  \ html5core#prop('longDesc', 'String'),
  \ html5core#prop('marginHeight', 'String'),
  \ html5core#prop('marginWidth', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('scrolling', 'String'),
  \ html5core#prop('src', 'String'),
  \ html5core#prop('width', 'String'),
  \ html5core#prop('sandbox', 'sandboxString'),
  \ ])

call html5core#class('HTMLImageElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('alt', 'String'),
  \ html5core#prop('border', 'String'),
  \ html5core#prop('complete', 'boolean'),
  \ html5core#prop('height', 'String'),
  \ html5core#prop('hspace', 'String'),
  \ html5core#prop('isMap', 'String'),
  \ html5core#prop('longDesc', 'String'),
  \ html5core#prop('lowsrc', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('src', 'String'),
  \ html5core#prop('useMap', 'String'),
  \ html5core#prop('vspace', 'String'),
  \ html5core#prop('width', 'String'),
  \ ])

call html5core#class('HTMLInputElement', 'HTMLElement', [ 
  \ html5core#prop('accept', 'mimeString'),
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('autocomplete', 'autocompleteString'),
  \ html5core#prop('align', 'String'),
  \ html5core#prop('alt', 'String'),
  \ html5core#prop('checked', 'boolean'),
  \ html5core#prop('defaultChecked', 'boolean'),
  \ html5core#prop('defaultValue', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('maxLength', 'number'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('onchange', 'onchange'),
  \ html5core#prop('onclick', 'onclick'),
  \ html5core#prop('options', 'options'),
  \ html5core#prop('readOnly', 'boolean'),
  \ html5core#prop('selectedIndex', ''),
  \ html5core#prop('size', 'String'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('type', 'typeString'),
  \ html5core#prop('useMap', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('click(', ')', 'void'),
  \ html5core#method('createTextRange(', '', 'TextRange'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('select(', ')', 'void'),
  \ ])

call html5core#class('HTMLIsIndexElement', 'HTMLElement', [ 
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('prompt', 'String'),
  \ ])

call html5core#class('HTMLLabelElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('htmlFo', 'String'),
  \ ])

call html5core#class('HTMLLayerElement', 'HTMLElement', [ 
  \ html5core#prop('bgColor', 'String'),
  \ html5core#method('captureEvents(', 'eventTypeList)', 'void'),
  \ ])

call html5core#class('HTMLLegendElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('align', 'String'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ ])

call html5core#class('HTMLLIElement', 'HTMLElement', [ 
  \ html5core#prop('type', 'String'),
  \ html5core#prop('value', 'String'),
  \ ])

call html5core#class('HTMLLinkElement', 'HTMLElement', [ 
  \ html5core#prop('charset', 'charsetString'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('hreflang', 'String'),
  \ html5core#prop('media', 'mediaString'),
  \ html5core#prop('rel', 'relString'),
  \ html5core#prop('rev', 'String'),
  \ html5core#prop('target', 'targetString'),
  \ html5core#prop('type', 'mimeString'),
  \ ])

call html5core#class('HTMLMapElement', 'HTMLElement', [ 
  \ html5core#prop('areas', 'HTMLCollection'),
  \ html5core#prop('name', 'String'),
  \ ])

call html5core#class('HTMLMenuElement', 'HTMLElement', [ 
  \ html5core#prop('compact', 'boolean'),
  \ ])

call html5core#class('HTMLMetaElement', 'HTMLElement', [ 
  \ html5core#prop('content', 'String'),
  \ html5core#prop('httpEquiv', 'String'),
  \ html5core#prop('http-equiv', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('scheme', 'String'),
  \ ])

call html5core#class('HTMLModElement', 'HTMLElement', [ 
  \ html5core#prop('cite', 'String'),
  \ html5core#prop('dateTime', 'dateTimeString'),
  \ ])

call html5core#class('HTMLObjectElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('archive', 'String'),
  \ html5core#prop('border', 'String'),
  \ html5core#prop('code', 'String'),
  \ html5core#prop('codeBase', 'String'),
  \ html5core#prop('codeType', 'String'),
  \ html5core#prop('contentDocument', 'Document'),
  \ html5core#prop('data', 'String'),
  \ html5core#prop('declare', 'boolean'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('height', 'String'),
  \ html5core#prop('hspace', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('standby', 'String'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('useMap', 'String'),
  \ html5core#prop('vspace', 'String'),
  \ html5core#prop('width', 'String'),
  \ ])

call html5core#class('HTMLOListElement', 'HTMLElement', [ 
  \ html5core#prop('compact', 'boolean'),
  \ html5core#prop('start', 'number'),
  \ html5core#prop('type', 'String'),
  \ ])

call html5core#class('HTMLOptGroupElement', 'HTMLElement', [ 
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('label', 'String'),
  \ ])

call html5core#class('HTMLOptionElement', 'HTMLElement', [ 
  \ html5core#prop('defaultSelected', 'boolean'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('index', 'number'),
  \ html5core#prop('label', 'String'),
  \ html5core#prop('onsubmit', 'onsubmit'),
  \ html5core#prop('selected', 'boolean'),
  \ html5core#prop('text', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#method('click(', '', 'void'),
  \ ])

call html5core#class('HTMLParagraphElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ ])

call html5core#class('HTMLParamElement', 'HTMLElement', [ 
  \ html5core#prop('name', 'String'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#prop('valueType', 'String'),
  \ ])

call html5core#class('HTMLPreElement', 'HTMLElement', [ 
  \ html5core#prop('width', 'number'),
  \ ])

call html5core#class('HTMLQuoteElement', 'HTMLElement', [ 
  \ html5core#prop('cit', 'String'),
  \ ])

call html5core#class('HTMLScriptElement', 'HTMLElement', [ 
  \ html5core#prop('charset', 'charsetString'),
  \ html5core#prop('defer', 'boolean'),
  \ html5core#prop('event', 'String'),
  \ html5core#prop('htmlFor', 'String'),
  \ html5core#prop('src', 'String'),
  \ html5core#prop('text', 'String'),
  \ html5core#prop('type', 'String'),
  \ ])

call html5core#class('HTMLSelectElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('length', 'number'),
  \ html5core#prop('multiple', 'boolean'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('options', 'HTMLCollection'),
  \ html5core#prop('selectedIndex', 'number'),
  \ html5core#prop('size', 'number'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#method('add(', 'HTMLElement element, HTMLElement before)', 'void'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('remove(', 'number index)', 'void'),
  \ ])

call html5core#class('HTMLStyleElement', 'HTMLElement', [ 
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('media', 'String'),
  \ html5core#prop('type', 'String'),
  \ ])

call html5core#class('HTMLTableCaptionElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ ])

call html5core#class('HTMLTableCellElement', 'HTMLElement', [ 
  \ html5core#prop('abbr', 'String'),
  \ html5core#prop('align', 'String'),
  \ html5core#prop('axis', 'String'),
  \ html5core#prop('bgColor', 'String'),
  \ html5core#prop('cellIndex', 'number'),
  \ html5core#prop('ch', 'String'),
  \ html5core#prop('chOff', 'String'),
  \ html5core#prop('colSpan', 'number'),
  \ html5core#prop('headers', 'String'),
  \ html5core#prop('height', 'String'),
  \ html5core#prop('noWrap', 'boolean'),
  \ html5core#prop('rowSpan', 'number'),
  \ html5core#prop('scope', 'String'),
  \ html5core#prop('vAlign', 'String'),
  \ html5core#prop('width', 'String'),
  \ ])

call html5core#class('HTMLTableColElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('ch', 'String'),
  \ html5core#prop('chOff', 'String'),
  \ html5core#prop('span', 'number'),
  \ html5core#prop('vAlign', 'String'),
  \ html5core#prop('width', 'String'),
  \ ])

call html5core#class('HTMLTableElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('bgColor', 'String'),
  \ html5core#prop('border', 'String'),
  \ html5core#prop('caption', 'HTMLTableCaptionElement'),
  \ html5core#prop('cellPadding', 'String'),
  \ html5core#prop('cellSpacing', 'String'),
  \ html5core#prop('frame', 'String'),
  \ html5core#prop('rows', 'HTMLCollection'),
  \ html5core#prop('rules', 'String'),
  \ html5core#prop('summary', 'String'),
  \ html5core#prop('tBodies', 'HTMLCollection'),
  \ html5core#prop('tFoot', 'HTMLTableSectionElement'),
  \ html5core#prop('tHead', 'HTMLTableSectionElement'),
  \ html5core#prop('width', 'String'),
  \ html5core#method('createCaption(', ')', 'HTMLElement'),
  \ html5core#method('createTFoot(', ')', 'HTMLElement'),
  \ html5core#method('createTHead(', ')', 'HTMLElement'),
  \ html5core#method('deleteCaption(', ')', 'void'),
  \ html5core#method('deleteRow(', 'number index)', 'void'),
  \ html5core#method('deleteTFoot(', ')', 'void'),
  \ html5core#method('deleteTHead(', ')', 'void'),
  \ html5core#method('insertRow(', 'number index)', 'HTMLElement'),
  \ ])

call html5core#class('HTMLTableRowElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('bgColor', 'String'),
  \ html5core#prop('cells', 'HTMLCollection'),
  \ html5core#prop('ch', 'String'),
  \ html5core#prop('chOff', 'String'),
  \ html5core#prop('rowIndex', 'number'),
  \ html5core#prop('sectionRowIndex', 'number'),
  \ html5core#prop('vAlign', 'String'),
  \ html5core#method('deleteCell(', 'number index)', 'void'),
  \ html5core#method('insertCell(', 'number index)', 'HTMLElement'),
  \ ])

call html5core#class('HTMLTableSectionElement', 'HTMLElement', [ 
  \ html5core#prop('align', 'String'),
  \ html5core#prop('ch', 'String'),
  \ html5core#prop('chOff', 'String'),
  \ html5core#prop('rows', 'HTMLCollection'),
  \ html5core#prop('vAlign', 'String'),
  \ html5core#method('deleteRow(', 'number index)', 'void'),
  \ html5core#method('insertRow(', 'number index)', 'HTMLElement'),
  \ ])

call html5core#class('HTMLTextAreaElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('cols', 'number'),
  \ html5core#prop('defaultValue', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('hash', 'String'),
  \ html5core#prop('host', 'String'),
  \ html5core#prop('hostname', 'String'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('pathname', 'String'),
  \ html5core#prop('port', 'String'),
  \ html5core#prop('protocol', 'String'),
  \ html5core#prop('readOnly', 'boolean'),
  \ html5core#prop('rows', 'number'),
  \ html5core#prop('search', 'String'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('createTextRange(', '', 'TextRange'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('select(', ')', 'void'),
  \ ])

call html5core#class('HTMLTitleElement', 'HTMLElement', [ 
  \ html5core#prop('text', 'String'),
  \ ])

call html5core#class('HTMLUListElement', 'HTMLElement', [ 
  \ html5core#prop('compact', 'boolean'),
  \ html5core#prop('type', 'String'),
  \ ])

call html5core#class('HTMLProgressElement', 'HTMLElement', [ 
  \ html5core#prop('value', 'float'),
  \ html5core#prop('max', 'float'),
  \ html5core#prop('position', 'float'),
  \ html5core#prop('form', 'HTMLFormElement'),
  \ html5core#prop('labels', 'NodeList'),
  \ ])

 
call html5core#class('HTMLMediaElement', 'HTMLElement', [ 
  \ html5core#prop('error', 'MediaError'),
  \ html5core#prop('src', 'String'),
  \ html5core#prop('currentSrc', 'String'),
  \ html5core#const('NETWORK_EMPTY', '0'),
  \ html5core#const('NETWORK_IDLE', '1'),
  \ html5core#const('NETWORK_LOADING', '2'),
  \ html5core#const('NETWORK_NO_SOURCE', '3'),
  \ html5core#const('networkState', 'short'),
  \ html5core#const('preload', 'preloadString'),
  \ html5core#const('buffered', 'TimeRanges'),
  \ html5core#method('load(', ')', 'void'),
  \ html5core#method('canPlayType(', 'in String type)', 'String'),
  \ html5core#const('HAVE_NOTHING', '0'),
  \ html5core#const('HAVE_METADATA', '1'),
  \ html5core#const('HAVE_CURRENT_DATA', '2'),
  \ html5core#const('HAVE_FUTURE_DATA', '3'),
  \ html5core#const('HAVE_ENOUGH_DATA', '4'),
  \ html5core#prop('readyState', 'unsigned short'),
  \ html5core#prop('seeking', 'boolean'),
  \ html5core#prop('currentTime', 'float'),
  \ html5core#prop('startTime', 'float'),
  \ html5core#prop('duration', 'float'),
  \ html5core#prop('paused', 'boolean'),
  \ html5core#prop('defaultPlaybackRate', 'float'),
  \ html5core#prop('playbackRate', 'float'),
  \ html5core#prop('played', 'TimeRanges'),
  \ html5core#prop('seekable', 'TimeRanges'),
  \ html5core#prop('ended', 'boolean'),
  \ html5core#prop('autoplay', 'boolean'),
  \ html5core#prop('loop', 'boolean'),
  \ html5core#method('play(', ')', 'void'),
  \ html5core#method('pause(', ')', 'void'),
  \ html5core#prop('controls', 'boolean'),
  \ html5core#prop('volume', 'float'),
  \ html5core#prop('muted', 'boolean'),
  \ ])

call html5core#class('HTMLAudioElement', 'HTMLMediaElement', [ 
  \ ])

call html5core#class('HTMLCanvasElement', 'HTMLElement', [ 
  \ html5core#prop('width', 'long unsigned'),
  \ html5core#prop('height', 'long unsigned'),
  \ html5core#method('toDataURL(', 'optional String type, any... arguments)', 'String'),
  \ html5core#method('toBlob(', 'FileCallback? _callback, optional String type, any... arguments)', 'void'),
  \ html5core#prop('getContext(String contextId, any... arguments)', 'object?'),
  \ ])

call html5core#class('HTMLCommandElement', 'HTMLElement', [ 
  \ html5core#prop('type', 'String'),
  \ html5core#prop('label', 'String'),
  \ html5core#prop('icon', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('checked', 'boolean'),
  \ html5core#prop('radiogroup', 'String'),
  \ ])

call html5core#class('HTMLDataElement', 'HTMLElement', [ 
  \ html5core#prop('value', 'String'),
  \ ])

call html5core#class('HTMLDataListElement', 'HTMLElement', [ 
  \ html5core#prop('options', 'HTMLCollection'),
  \ ])

call html5core#class('HTMLDetailsElement', 'HTMLElement', [ 
  \ html5core#prop('open', 'boolean'),
  \ ])

call html5core#class('HTMLDialogElement', 'HTMLElement', [ 
  \ html5core#prop('open', 'boolean'),
  \ html5core#prop('returnValue', 'String'),
  \ html5core#method('show(', 'optional (MouseEvent or Element) anchor)', 'void'),
  \ html5core#method('showModal(', 'optional (MouseEvent or Element) anchor)', 'void'),
  \ html5core#method('close(', 'optional String returnValue)', 'void'),
  \ ])

call html5core#class('HTMLDivElement', 'HTMLElement', [ 
  \ ])

call html5core#class('HTMLEmbedElement', 'HTMLElement', [ 
  \ html5core#prop('src', 'String'),
  \ html5core#prop('type', 'mimeString'),
  \ html5core#prop('width', 'String'),
  \ html5core#prop('height', 'String'),
  \ html5core#method('any (', 'any... arguments)', 'legacycaller'),
  \ ])

call html5core#class('HTMLKeygenElement', 'HTMLElement', [ 
  \ html5core#prop('autofocus', 'boolean'),
  \ html5core#prop('challenge', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop(' form', 'HTMLFormElement'),
  \ html5core#prop('keytype', 'keytypeString'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('willValidate', 'boolean'),
  \ html5core#prop('validity', 'ValidityState'),
  \ html5core#prop('validationMessage', 'String'),
  \ html5core#method('checkValidity(', ')', 'boolean'),
  \ html5core#method('setCustomValidity(', 'String error)', 'void'),
  \ html5core#prop('labels', 'NodeList'),
  \ ])

call html5core#class('HTMLMeterElement', 'HTMLElement', [ 
  \ html5core#prop('value', 'double'),
  \ html5core#prop('min', 'double'),
  \ html5core#prop('max', 'double'),
  \ html5core#prop('low', 'double'),
  \ html5core#prop('high', 'double'),
  \ html5core#prop('optimum', 'double'),
  \ html5core#prop('labels', 'NodeList'),
  \ ])

call html5core#class('HTMLOutputElement', 'HTMLElement', [ 
  \ html5core#prop('htmlFor', 'DOMSettableTokenList'),
  \ html5core#prop(' form', 'HTMLFormElement'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('defaultValue', 'String'),
  \ html5core#prop('value', 'String'),
  \ html5core#prop('willValidate', 'boolean'),
  \ html5core#prop('validity', 'ValidityState'),
  \ html5core#prop('validationMessage', 'String'),
  \ html5core#method('checkValidity(', ')', 'boolean'),
  \ html5core#method('setCustomValidity(', 'String error)', 'void'),
  \ html5core#prop('labels', 'NodeList'),
  \ ])

call html5core#class('HTMLSourceElement', 'HTMLElement', [ 
  \ html5core#prop('src', 'String'),
  \ html5core#prop('type', 'String'),
  \ html5core#prop('media', 'String'),
  \ ])

call html5core#class('HTMLSpanElement', 'HTMLElement', [ 
  \ ])

call html5core#class('HTMLTableHeaderCellElement', 'HTMLTableCellElement', [ 
  \ html5core#prop('scope', 'String'),
  \ html5core#prop('abbr', 'String'),
  \ ])

call html5core#class('HTMLTimeElement', 'HTMLElement', [ 
  \ html5core#prop('datetime', 'String'),
  \ ])

call html5core#class('HTMLVideoElement', 'HTMLMediaElement', [ 
  \ html5core#prop('width', 'long unsigned'),
  \ html5core#prop('height', 'long unsigned'),
  \ html5core#prop('videoWidth', 'long unsigned'),
  \ html5core#prop('videoHeight', 'long unsigned'),
  \ html5core#prop('poster', 'String'),
  \ ])

