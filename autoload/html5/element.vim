call html5core#namespace('')

call html5core#class('HTMLAnchorElement', 'HTMLElement', [ 
  \ html5core#prop('accessKey', 'String'),
  \ html5core#prop('charset', 'String'),
  \ html5core#prop('coords', 'String'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('hreflang', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('rel', 'String'),
  \ html5core#prop('rev', 'String'),
  \ html5core#prop('shape', 'String'),
  \ html5core#prop('tabIndex', 'number'),
  \ html5core#prop('target', 'String'),
  \ html5core#prop('text', 'String'),
  \ html5core#prop('typ', 'String'),
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
  \ html5core#prop('coords', 'String'),
  \ html5core#prop('hash', 'String'),
  \ html5core#prop('host', 'String'),
  \ html5core#prop('hostname', 'String'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('noHref', 'String'),
  \ html5core#prop('pathname', 'String'),
  \ html5core#prop('port', 'String'),
  \ html5core#prop('protocol', 'String'),
  \ html5core#prop('search', 'String'),
  \ html5core#prop('shape', 'String'),
  \ html5core#prop('tabIndex', 'String'),
  \ html5core#prop('target', 'String'),
  \ html5core#method('click(', ')', 'void'),
  \ ])

call html5core#class('HTMLBaseElement', 'HTMLElement', [ 
  \ html5core#prop('href', 'String'),
  \ html5core#prop('target', 'String'),
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
  \ html5core#prop('acceptCharset', 'String'),
  \ html5core#prop('action', 'String'),
  \ html5core#prop('behavio', 'String'),
  \ html5core#prop('elements', 'HTMLCollection'),
  \ html5core#prop('encoding', 'String'),
  \ html5core#prop('length', 'number'),
  \ html5core#prop('method', 'String'),
  \ html5core#prop('name', 'String'),
  \ html5core#prop('target', 'String'),
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
  \ html5core#prop('accept', 'String'),
  \ html5core#prop('accessKey', 'String'),
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
  \ html5core#prop('charset', 'String'),
  \ html5core#prop('disabled', 'boolean'),
  \ html5core#prop('href', 'String'),
  \ html5core#prop('hreflang', 'String'),
  \ html5core#prop('media', 'String'),
  \ html5core#prop('rel', 'String'),
  \ html5core#prop('rev', 'String'),
  \ html5core#prop('target', 'String'),
  \ html5core#prop('type', 'String'),
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
  \ html5core#prop('name', 'String'),
  \ html5core#prop('scheme', 'String'),
  \ ])

call html5core#class('HTMLModElement', 'HTMLElement', [ 
  \ html5core#prop('cite', 'String'),
  \ html5core#prop('dateTime', 'String'),
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
  \ html5core#prop('charset', 'String'),
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

