call html5core#namespace('')

call html5core#class('HTMLAnchorElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('href', 'hrefString'),
  \ html5core#attr('hreflang', 'langString'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('rel', 'relString'),
  \ html5core#attr('tabIndex', 'number'),
  \ html5core#attr('target', 'targetString'),
  \ html5core#attr('text', 'String'),
  \ html5core#attr('type', 'mimeString'),
  \ html5core#attr('media', 'String'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('click(', ')', 'void'),
  \ html5core#method('focus(', ')', 'void'),
  \ ])
  " html5core#attr('charset', 'charsetString'),
  " html5core#attr('rev', 'String'),
  " html5core#attr('shape', 'shapeString'),
  " html5core#attr('coords', 'coordsString'),

call html5core#class('HTMLAppletElement', 'HTMLElement', [ 
  \ html5core#attr('align', 'String'),
  \ html5core#attr('alt', 'String'),
  \ html5core#attr('archive', 'String'),
  \ html5core#attr('code', 'String'),
  \ html5core#attr('codeBase', 'String'),
  \ html5core#attr('height', 'String'),
  \ html5core#attr('hspace', 'String'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('object', 'String'),
  \ html5core#attr('vspace', 'String'),
  \ html5core#attr('width', 'String'),
  \ ])

call html5core#class('HTMLAreaElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('alt', 'String'),
  \ html5core#attr('coords', 'coordsString'),
  \ html5core#attr('hash', 'String'),
  \ html5core#attr('host', 'String'),
  \ html5core#attr('hostname', 'String'),
  \ html5core#attr('href', 'String'),
  \ html5core#attr('pathname', 'String'),
  \ html5core#attr('port', 'String'),
  \ html5core#attr('protocol', 'String'),
  \ html5core#attr('search', 'String'),
  \ html5core#attr('shape', 'shapeString'),
  \ html5core#attr('tabIndex', 'String'),
  \ html5core#attr('target', 'targetString'),
  \ html5core#method('click(', ')', 'void'),
  \ ])
  " html5core#attr('noHref', 'String'),

call html5core#class('HTMLBaseElement', 'HTMLElement', [ 
  \ html5core#attr('href', 'String'),
  \ html5core#attr('target', 'targetString'),
  \ ])

call html5core#class('HTMLBaseFontElement', 'HTMLElement', [ 
  \ html5core#attr('color', 'String'),
  \ html5core#attr('face', 'String'),
  \ html5core#attr('size', 'String'),
  \ ])

call html5core#class('HTMLBlockquoteElement', 'HTMLElement', [ 
  \ html5core#attr('cit', 'String'),
  \ ])

call html5core#class('HTMLBodyElement', 'HTMLElement', [ 
  \ html5core#method('createTextRange(', '', 'TextRange'),
  \ ])
  " html5core#attr('background', 'String'),
  " html5core#attr('bgColor', 'String'),
  " html5core#attr('aLink', 'String'),
  " html5core#attr('link', 'String'),
  " html5core#attr('text', 'String'),
  " html5core#attr('vLink', 'String'),

call html5core#class('HTMLBRElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('clear', 'String'),

call html5core#class('HTMLButtonElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('tabIndex', 'number'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('value', 'String'),
  \ html5core#method('createTextRange(', ')	', 'TextRange'),
  \ ])

call html5core#class('HTMLDirectoryElement', 'HTMLElement', [ 
  \ html5core#attr('compact', 'boolean'),
  \ ])

call html5core#class('HTMLDivElement', 'HTMLElement', [ 
  \ html5core#attr('align', 'String'),
  \ ])

call html5core#class('HTMLDListElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('compac', 'boolean'),

call html5core#class('HTMLFieldSetElement', 'HTMLElement', [ 
  \ html5core#attr('form', 'HTMLFormElement'),
  \ ])

call html5core#class('HTMLFontElement', 'HTMLElement', [ 
  \ html5core#attr('color', 'String'),
  \ html5core#attr('face', 'String'),
  \ html5core#attr('size', 'String'),
  \ ])

call html5core#class('HTMLFormElement', 'HTMLElement', [ 
  \ html5core#attr('acceptCharset', 'charsetString'),
  \ html5core#attr('action', 'String'),
  \ html5core#attr('behavio', 'String'),
  \ html5core#attr('elements', 'HTMLCollection'),
  \ html5core#attr('encoding', 'String'),
  \ html5core#attr('length', 'number'),
  \ html5core#attr('method', 'methodString'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('target', 'targetString'),
  \ html5core#method('item(', 'key)', 'HTMLElement'),
  \ html5core#method('reset(', ')', 'void'),
  \ html5core#method('submit(', ')', 'void'),
  \ ])

call html5core#class('HTMLFrameElement', 'HTMLElement', [ 
  \ html5core#attr('contentDocument', 'Document'),
  \ html5core#attr('frameBorder', 'String'),
  \ html5core#attr('longDesc', 'String'),
  \ html5core#attr('marginHeight', 'String'),
  \ html5core#attr('marginWidth', 'String'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('noResize', 'boolean'),
  \ html5core#attr('scrolling', 'String'),
  \ html5core#attr('src', 'String'),
  \ ])

call html5core#class('HTMLFrameSetElement', 'HTMLElement', [ 
  \ html5core#attr('cols', 'String'),
  \ html5core#attr('rows', 'String'),
  \ ])

call html5core#class('HTMLHeadElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('profile', 'String'),

call html5core#class('HTMLHeadingElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('align', 'String'),

call html5core#class('HTMLHRElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('align', 'String'),
  " html5core#attr('noShade', 'boolean'),
  " html5core#attr('size', 'String'),
  " html5core#attr('width', 'String'),

call html5core#class('HTMLHtmlElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('version', 'String'),

call html5core#class('HTMLIFrameElement', 'HTMLElement', [ 
  \ html5core#attr('contentDocument', 'Document'),
  \ html5core#attr('height', 'String'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('src', 'String'),
  \ html5core#attr('width', 'String'),
  \ html5core#attr('sandbox', 'sandboxString'),
  \ ])
  " html5core#attr('longDesc', 'String'),
  " html5core#attr('scrolling', 'String'),
  " html5core#attr('frameBorder', 'String'),
  " html5core#attr('marginHeight', 'String'),
  " html5core#attr('marginWidth', 'String'),
  " html5core#attr('align', 'String'),

call html5core#class('HTMLImageElement', 'HTMLElement', [ 
  \ html5core#attr('alt', 'String'),
  \ html5core#attr('border', 'String'),
  \ html5core#attr('complete', 'boolean'),
  \ html5core#attr('height', 'String'),
  \ html5core#attr('isMap', 'String'),
  \ html5core#attr('lowsrc', 'String'),
  \ html5core#attr('src', 'String'),
  \ html5core#attr('useMap', 'String'),
  \ html5core#attr('width', 'String'),
  \ ])
  " html5core#attr('longDesc', 'String'),
  " html5core#attr('name', 'String'),
  " html5core#attr('align', 'String'),
  " html5core#attr('hspace', 'String'),
  " html5core#attr('vspace', 'String'),

call html5core#class('HTMLInputElement', 'HTMLElement', [ 
  \ html5core#attr('accept', 'mimeString'),
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('autocomplete', 'autocompleteString'),
  \ html5core#attr('alt', 'String'),
  \ html5core#attr('checked', 'boolean'),
  \ html5core#attr('defaultChecked', 'boolean'),
  \ html5core#attr('defaultValue', 'String'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('maxLength', 'number'),
  \ html5core#attr('name', 'String'),
  \ html5core#event('onchange', 'onchange'),
  \ html5core#event('onclick', 'onclick'),
  \ html5core#attr('options', 'options'),
  \ html5core#attr('readOnly', 'boolean'),
  \ html5core#attr('selectedIndex', ''),
  \ html5core#attr('size', 'String'),
  \ html5core#attr('tabIndex', 'number'),
  \ html5core#attr('type', 'typeString'),
  \ html5core#attr('value', 'String'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('click(', ')', 'void'),
  \ html5core#method('createTextRange(', '', 'TextRange'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('select(', ')', 'void'),
  \ ])
  " html5core#attr('align', 'String'),
  " html5core#attr('useMap', 'String'),

call html5core#class('HTMLIsIndexElement', 'HTMLElement', [ 
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('prompt', 'String'),
  \ ])

call html5core#class('HTMLLabelElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('htmlFor', 'String'),
  \ ])

call html5core#class('HTMLLayerElement', 'HTMLElement', [ 
  \ html5core#attr('bgColor', 'String'),
  \ html5core#method('captureEvents(', 'eventTypeList)', 'void'),
  \ ])

call html5core#class('HTMLLegendElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ ])
  " html5core#attr('align', 'String'),

call html5core#class('HTMLLIElement', 'HTMLElement', [ 
  \ html5core#attr('value', 'String'),
  \ ])
  " html5core#attr('type', 'String'),

call html5core#class('HTMLLinkElement', 'HTMLElement', [ 
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('href', 'String'),
  \ html5core#attr('hreflang', 'String'),
  \ html5core#attr('media', 'mediaString'),
  \ html5core#attr('rel', 'relString'),
  \ html5core#attr('type', 'mimeString'),
  \ ])
  " html5core#attr('charset', 'charsetString'),
  " html5core#attr('rev', 'String'),
  " html5core#attr('target', 'targetString'),

call html5core#class('HTMLMapElement', 'HTMLElement', [ 
  \ html5core#attr('areas', 'HTMLCollection'),
  \ html5core#attr('name', 'String'),
  \ ])

call html5core#class('HTMLMenuElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('compact', 'boolean'),

call html5core#class('HTMLMetaElement', 'HTMLElement', [ 
  \ html5core#attr('content', 'String'),
  \ html5core#prop('httpEquiv', 'String'),
  \ html5core#attr('http-equiv', 'httpEquivString'),
  \ html5core#attr('name', 'metaString'),
  \ ])
  " html5core#attr('scheme', 'String'),

call html5core#class('HTMLModElement', 'HTMLElement', [ 
  \ html5core#attr('cite', 'String'),
  \ html5core#attr('dateTime', 'dateTimeString'),
  \ ])

call html5core#class('HTMLObjectElement', 'HTMLElement', [ 
  \ html5core#attr('code', 'String'),
  \ html5core#attr('contentDocument', 'Document'),
  \ html5core#attr('data', 'String'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('height', 'String'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('tabIndex', 'number'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('useMap', 'String'),
  \ html5core#attr('width', 'String'),
  \ ])
  " html5core#attr('archive', 'String'),
  " html5core#attr('codeBase', 'String'),
  " html5core#attr('codeType', 'String'),
  " html5core#attr('standby', 'String'),
  " html5core#attr('declare', 'boolean'),
  " html5core#attr('align', 'String'),
  " html5core#attr('border', 'String'),
  " html5core#attr('hspace', 'String'),
  " html5core#attr('vspace', 'String'),

call html5core#class('HTMLOListElement', 'HTMLElement', [ 
  \ html5core#attr('start', 'number'),
  \ html5core#attr('type', 'String'),
  \ ])
  " html5core#attr('compact', 'boolean'),

call html5core#class('HTMLOptGroupElement', 'HTMLElement', [ 
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('label', 'String'),
  \ ])

call html5core#class('HTMLOptionElement', 'HTMLElement', [ 
  \ html5core#attr('defaultSelected', 'boolean'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('index', 'number'),
  \ html5core#attr('label', 'String'),
  \ html5core#event('onsubmit', 'onsubmit'),
  \ html5core#attr('selected', 'boolean'),
  \ html5core#attr('text', 'String'),
  \ html5core#attr('value', 'String'),
  \ html5core#method('click(', '', 'void'),
  \ ])

call html5core#class('HTMLParagraphElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('align', 'String'),

call html5core#class('HTMLParamElement', 'HTMLElement', [ 
  \ html5core#attr('name', 'String'),
  \ html5core#attr('value', 'String'),
  \ ])
  " html5core#attr('type', 'String'),
  " html5core#attr('valueType', 'String'),

call html5core#class('HTMLPreElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('width', 'number'),

call html5core#class('HTMLQuoteElement', 'HTMLElement', [ 
  \ html5core#attr('cit', 'String'),
  \ ])

call html5core#class('HTMLScriptElement', 'HTMLElement', [ 
  \ html5core#attr('charset', 'charsetString'),
  \ html5core#attr('defer', 'boolean'),
  \ html5core#attr('event', 'String'),
  \ html5core#attr('htmlFor', 'String'),
  \ html5core#attr('src', 'String'),
  \ html5core#attr('text', 'String'),
  \ html5core#attr('type', 'String'),
  \ ])

call html5core#class('HTMLSelectElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('length', 'number'),
  \ html5core#attr('multiple', 'boolean'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('options', 'HTMLCollection'),
  \ html5core#attr('selectedIndex', 'number'),
  \ html5core#attr('size', 'number'),
  \ html5core#attr('tabIndex', 'number'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('value', 'String'),
  \ html5core#method('add(', 'HTMLElement element, HTMLElement before)', 'void'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('remove(', 'number index)', 'void'),
  \ ])

call html5core#class('HTMLStyleElement', 'HTMLElement', [ 
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('media', 'String'),
  \ html5core#attr('type', 'String'),
  \ ])

call html5core#class('HTMLTableCaptionElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('align', 'String'),

call html5core#class('HTMLTableCellElement', 'HTMLElement', [ 
  \ html5core#attr('abbr', 'String'),
  \ html5core#attr('axis', 'String'),
  \ html5core#attr('ch', 'String'),
  \ html5core#attr('chOff', 'String'),
  \ html5core#attr('colSpan', 'number'),
  \ html5core#attr('headers', 'String'),
  \ html5core#attr('height', 'String'),
  \ html5core#attr('noWrap', 'boolean'),
  \ html5core#attr('rowSpan', 'number'),
  \ html5core#attr('scope', 'String'),
  \ html5core#attr('vAlign', 'String'),
  \ ])
  " html5core#attr('width', 'String'),
  " html5core#attr('cellIndex', 'number'),
  " html5core#attr('align', 'String'),
  " html5core#attr('bgColor', 'String'),

call html5core#class('HTMLTableColElement', 'HTMLElement', [ 
  \ html5core#attr('width', 'String'),
  \ ])
  " html5core#attr('align', 'String'),
  " html5core#attr('ch', 'String'),
  " html5core#attr('chOff', 'String'),
  " html5core#attr('span', 'number'),
  " html5core#attr('vAlign', 'String'),

call html5core#class('HTMLTableElement', 'HTMLElement', [ 
  \ html5core#attr('align', 'String'),
  \ html5core#attr('bgColor', 'String'),
  \ html5core#attr('border', 'String'),
  \ html5core#attr('caption', 'HTMLTableCaptionElement'),
  \ html5core#attr('cellPadding', 'String'),
  \ html5core#attr('cellSpacing', 'String'),
  \ html5core#attr('frame', 'String'),
  \ html5core#attr('rows', 'HTMLCollection'),
  \ html5core#attr('rules', 'String'),
  \ html5core#attr('summary', 'String'),
  \ html5core#attr('tBodies', 'HTMLCollection'),
  \ html5core#attr('tFoot', 'HTMLTableSectionElement'),
  \ html5core#attr('tHead', 'HTMLTableSectionElement'),
  \ html5core#attr('width', 'String'),
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
  \ html5core#attr('bgColor', 'String'),
  \ html5core#attr('cells', 'HTMLCollection'),
  \ html5core#attr('ch', 'String'),
  \ html5core#attr('chOff', 'String'),
  \ html5core#attr('rowIndex', 'number'),
  \ html5core#attr('sectionRowIndex', 'number'),
  \ html5core#method('deleteCell(', 'number index)', 'void'),
  \ html5core#method('insertCell(', 'number index)', 'HTMLElement'),
  \ ])
  " html5core#attr('align', 'String'),
  " html5core#attr('vAlign', 'String'),

call html5core#class('HTMLTableSectionElement', 'HTMLElement', [ 
  \ html5core#attr('align', 'String'),
  \ html5core#attr('ch', 'String'),
  \ html5core#attr('chOff', 'String'),
  \ html5core#attr('rows', 'HTMLCollection'),
  \ html5core#attr('vAlign', 'String'),
  \ html5core#method('deleteRow(', 'number index)', 'void'),
  \ html5core#method('insertRow(', 'number index)', 'HTMLElement'),
  \ ])

call html5core#class('HTMLTextAreaElement', 'HTMLElement', [ 
  \ html5core#attr('accesskey', 'accString'),
  \ html5core#attr('cols', 'number'),
  \ html5core#attr('defaultValue', 'String'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('hash', 'String'),
  \ html5core#attr('host', 'String'),
  \ html5core#attr('hostname', 'String'),
  \ html5core#attr('href', 'String'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('pathname', 'String'),
  \ html5core#attr('port', 'String'),
  \ html5core#attr('protocol', 'String'),
  \ html5core#attr('readOnly', 'boolean'),
  \ html5core#attr('rows', 'number'),
  \ html5core#attr('search', 'String'),
  \ html5core#attr('tabIndex', 'number'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('value', 'String'),
  \ html5core#method('blur(', ')', 'void'),
  \ html5core#method('createTextRange(', '', 'TextRange'),
  \ html5core#method('focus(', ')', 'void'),
  \ html5core#method('select(', ')', 'void'),
  \ ])

call html5core#class('HTMLTitleElement', 'HTMLElement', [ 
  \ html5core#attr('text', 'String'),
  \ ])

call html5core#class('HTMLUListElement', 'HTMLElement', [ 
  \ ])
  " html5core#attr('compact', 'boolean'),
  " html5core#attr('type', 'String'),

call html5core#class('HTMLProgressElement', 'HTMLElement', [ 
  \ html5core#attr('value', 'float'),
  \ html5core#attr('max', 'float'),
  \ html5core#attr('position', 'float'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('labels', 'NodeList'),
  \ ])

 
call html5core#class('HTMLMediaElement', 'HTMLElement', [ 
  \ html5core#attr('error', 'MediaError'),
  \ html5core#attr('src', 'String'),
  \ html5core#attr('currentSrc', 'String'),
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
  \ html5core#attr('readyState', 'unsigned short'),
  \ html5core#attr('seeking', 'boolean'),
  \ html5core#attr('currentTime', 'float'),
  \ html5core#attr('startTime', 'float'),
  \ html5core#attr('duration', 'float'),
  \ html5core#attr('paused', 'boolean'),
  \ html5core#attr('defaultPlaybackRate', 'float'),
  \ html5core#attr('playbackRate', 'float'),
  \ html5core#attr('played', 'TimeRanges'),
  \ html5core#attr('seekable', 'TimeRanges'),
  \ html5core#attr('ended', 'boolean'),
  \ html5core#attr('autoplay', 'boolean'),
  \ html5core#attr('loop', 'boolean'),
  \ html5core#method('play(', ')', 'void'),
  \ html5core#method('pause(', ')', 'void'),
  \ html5core#attr('controls', 'boolean'),
  \ html5core#attr('volume', 'float'),
  \ html5core#attr('muted', 'boolean'),
  \ ])

call html5core#class('HTMLAudioElement', 'HTMLMediaElement', [ 
  \ ])

call html5core#class('HTMLCanvasElement', 'HTMLElement', [ 
  \ html5core#attr('width', 'long unsigned'),
  \ html5core#attr('height', 'long unsigned'),
  \ html5core#method('toDataURL(', 'optional String type, any... arguments)', 'String'),
  \ html5core#method('toBlob(', 'FileCallback? _callback, optional String type, any... arguments)', 'void'),
  \ html5core#attr('getContext(String contextId, any... arguments)', 'object?'),
  \ ])

call html5core#class('HTMLCommandElement', 'HTMLElement', [ 
  \ html5core#attr('type', 'String'),
  \ html5core#attr('label', 'String'),
  \ html5core#attr('icon', 'String'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('checked', 'boolean'),
  \ html5core#attr('radiogroup', 'String'),
  \ ])

call html5core#class('HTMLDataElement', 'HTMLElement', [ 
  \ html5core#attr('value', 'String'),
  \ ])

call html5core#class('HTMLDataListElement', 'HTMLElement', [ 
  \ html5core#attr('options', 'HTMLCollection'),
  \ ])

call html5core#class('HTMLDetailsElement', 'HTMLElement', [ 
  \ html5core#attr('open', 'boolean'),
  \ ])

call html5core#class('HTMLDialogElement', 'HTMLElement', [ 
  \ html5core#attr('open', 'boolean'),
  \ html5core#attr('returnValue', 'String'),
  \ html5core#method('show(', 'optional (MouseEvent or Element) anchor)', 'void'),
  \ html5core#method('showModal(', 'optional (MouseEvent or Element) anchor)', 'void'),
  \ html5core#method('close(', 'optional String returnValue)', 'void'),
  \ ])

call html5core#class('HTMLDivElement', 'HTMLElement', [ 
  \ ])

call html5core#class('HTMLEmbedElement', 'HTMLElement', [ 
  \ html5core#attr('src', 'String'),
  \ html5core#attr('type', 'mimeString'),
  \ html5core#attr('width', 'String'),
  \ html5core#attr('height', 'String'),
  \ html5core#method('any (', 'any... arguments)', 'legacycaller'),
  \ ])

call html5core#class('HTMLKeygenElement', 'HTMLElement', [ 
  \ html5core#attr('autofocus', 'boolean'),
  \ html5core#attr('challenge', 'String'),
  \ html5core#attr('disabled', 'boolean'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('keytype', 'keytypeString'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('willValidate', 'boolean'),
  \ html5core#attr('validity', 'ValidityState'),
  \ html5core#attr('validationMessage', 'String'),
  \ html5core#method('checkValidity(', ')', 'boolean'),
  \ html5core#method('setCustomValidity(', 'String error)', 'void'),
  \ html5core#attr('labels', 'NodeList'),
  \ ])

call html5core#class('HTMLMeterElement', 'HTMLElement', [ 
  \ html5core#attr('value', 'double'),
  \ html5core#attr('min', 'double'),
  \ html5core#attr('max', 'double'),
  \ html5core#attr('low', 'double'),
  \ html5core#attr('high', 'double'),
  \ html5core#attr('optimum', 'double'),
  \ html5core#attr('labels', 'NodeList'),
  \ ])

call html5core#class('HTMLOutputElement', 'HTMLElement', [ 
  \ html5core#attr('htmlFor', 'DOMSettableTokenList'),
  \ html5core#attr('form', 'HTMLFormElement'),
  \ html5core#attr('name', 'String'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('defaultValue', 'String'),
  \ html5core#attr('value', 'String'),
  \ html5core#attr('willValidate', 'boolean'),
  \ html5core#attr('validity', 'ValidityState'),
  \ html5core#attr('validationMessage', 'String'),
  \ html5core#method('checkValidity(', ')', 'boolean'),
  \ html5core#method('setCustomValidity(', 'String error)', 'void'),
  \ html5core#attr('labels', 'NodeList'),
  \ ])

call html5core#class('HTMLSourceElement', 'HTMLElement', [ 
  \ html5core#attr('src', 'String'),
  \ html5core#attr('type', 'String'),
  \ html5core#attr('media', 'String'),
  \ ])

call html5core#class('HTMLSpanElement', 'HTMLElement', [ 
  \ ])

call html5core#class('HTMLTableHeaderCellElement', 'HTMLTableCellElement', [ 
  \ html5core#attr('scope', 'String'),
  \ html5core#attr('abbr', 'String'),
  \ ])

call html5core#class('HTMLTimeElement', 'HTMLElement', [ 
  \ html5core#attr('datetime', 'String'),
  \ ])

call html5core#class('HTMLVideoElement', 'HTMLMediaElement', [ 
  \ html5core#attr('width', 'long unsigned'),
  \ html5core#attr('height', 'long unsigned'),
  \ html5core#attr('videoWidth', 'long unsigned'),
  \ html5core#attr('videoHeight', 'long unsigned'),
  \ html5core#attr('poster', 'String'),
  \ ])

