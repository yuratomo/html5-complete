" http://www.w3.org/TR/css-2010/
call csscore#namespace('')

let _uri = [
  \ csscore#attr('/', ''),
  \ csscore#attr('./', ''),
  \ csscore#attr('../', ''),
  \ csscore#attr('http://', ''),
  \ csscore#attr('https://', ''),
  \ ]

let _number = [
  \ csscore#attr('0', ''),
  \ csscore#attr('1', ''),
  \ csscore#attr('2', ''),
  \ ]

let _size = [
  \ csscore#attr('medium', ''),
  \ csscore#attr('xx-small', ''),
  \ csscore#attr('x-small', ''),
  \ csscore#attr('small', ''),
  \ csscore#attr('large', ''),
  \ csscore#attr('x-large', ''),
  \ csscore#attr('xx-large', ''),
  \ csscore#attr('smaller', ''),
  \ csscore#attr('larger', ''),
  \ ]

let _length = [
  \ csscore#attr('3px', ''),
  \ csscore#attr('4pt', ''),
  \ csscore#attr('5cm', ''),
  \ csscore#attr('6em', ''),
  \ ]

let _per = [
  \ csscore#attr('100%', ''),
  \ ]

let _id = [
  \ csscore#attr('id1', ''),
  \ ]

let _time = [
  \ csscore#attr('0s', ''),
  \ ]

let _font_family = [
  \ csscore#attr("'Georgia'", ''),
  \ csscore#attr("'serif'", ''),
  \ csscore#attr("'Palatino Linotype'", ''),
  \ csscore#attr("'Book Antiqua'", ''),
  \ csscore#attr("'Palatino'", ''),
  \ csscore#attr("'Times New Roman'", ''),
  \ csscore#attr("'Times'", ''),
  \ csscore#attr("'Arial'", ''),
  \ csscore#attr("'Helvetica'", ''),
  \ csscore#attr("'sans-serif'", ''),
  \ csscore#attr("'Arial Black'", ''),
  \ csscore#attr("'Gadget'", ''),
  \ csscore#attr("'Comic Sans MS'", ''),
  \ csscore#attr("'cursive'", ''),
  \ csscore#attr("'Impact'", ''),
  \ csscore#attr("'Charcoal'", ''),
  \ csscore#attr("'Lucida Sans Unicode'", ''),
  \ csscore#attr("'Lucida Grande'", ''),
  \ csscore#attr("'Tahoma'", ''),
  \ csscore#attr("'Geneva'", ''),
  \ csscore#attr("'Trebuchet MS'", ''),
  \ csscore#attr("'Verdana'", ''),
  \ csscore#attr("'Courier New'", ''),
  \ csscore#attr("'Courier'", ''),
  \ csscore#attr("'Lucida Console'", ''),
  \ csscore#attr("'Monaco'", ''),
  \ csscore#attr("'monospace'", ''),
  \ ]

let _border_style = [
  \ csscore#attr('none', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('dotted', ''),
  \ csscore#attr('dashed', ''),
  \ csscore#attr('solid', ''),
  \ csscore#attr('double', ''),
  \ csscore#attr('groove', ''),
  \ csscore#attr('ridge', ''),
  \ csscore#attr('inset', ''),
  \ csscore#attr('outset', ''),
  \ csscore#attr('initial', ''),
  \ ]

let _shape = [
  \ csscore#attr('auto', ''),
  \ csscore#attr('shape', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ]

let _border_type_width = [
  \ csscore#attr('medium', ''),
  \ csscore#attr('thin', ''),
  \ csscore#attr('thick', ''),
  \ csscore#attr('length', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ]

let _color = [
  \ csscore#attr('rgb(', ''),
  \ csscore#attr('hsl(', ''),
  \ csscore#attr('hsla(', ''),
  \ csscore#attr('aliceblue', '#F0F8FF'),
  \ csscore#attr('antiquewhite', '#FAEBD7'),
  \ csscore#attr('aqua', '#00FFFF'),
  \ csscore#attr('aquamarine', '#7FFFD4'),
  \ csscore#attr('azure', '#F0FFFF'),
  \ csscore#attr('beige', '#F5F5DC'),
  \ csscore#attr('bisque', '#FFE4C4'),
  \ csscore#attr('black', '#000000'),
  \ csscore#attr('blanchedalmond', '#FFEBCD'),
  \ csscore#attr('blue', '#0000FF'),
  \ csscore#attr('blueviolet', '#8A2BE2'),
  \ csscore#attr('brown', '#A52A2A'),
  \ csscore#attr('burlywood', '#DEB887'),
  \ csscore#attr('cadetblue', '#5F9EA0'),
  \ csscore#attr('chartreuse', '#7FFF00'),
  \ csscore#attr('chocolate', '#D2691E'),
  \ csscore#attr('coral', '#FF7F50'),
  \ csscore#attr('cornflowerblue', '#6495ED'),
  \ csscore#attr('cornsilk', '#FFF8DC'),
  \ csscore#attr('crimson', '#DC143C'),
  \ csscore#attr('cyan', '#00FFFF'),
  \ csscore#attr('darkblue', '#00008B'),
  \ csscore#attr('darkcyan', '#008B8B'),
  \ csscore#attr('darkgoldenrod', '#B8860B'),
  \ csscore#attr('darkgray', '#A9A9A9'),
  \ csscore#attr('darkgreen', '#006400'),
  \ csscore#attr('darkgrey', '#A9A9A9'),
  \ csscore#attr('darkkhaki', '#BDB76B'),
  \ csscore#attr('darkmagenta', '#8B008B'),
  \ csscore#attr('darkolivegreen', '#556B2F'),
  \ csscore#attr('darkorange', '#FF8C00'),
  \ csscore#attr('darkorchid', '#9932CC'),
  \ csscore#attr('darkred', '#8B0000'),
  \ csscore#attr('darksalmon', '#E9967A'),
  \ csscore#attr('darkseagreen', '#8FBC8F'),
  \ csscore#attr('darkslateblue', '#483D8B'),
  \ csscore#attr('darkslategray', '#2F4F4F'),
  \ csscore#attr('darkslategrey', '#2F4F4F'),
  \ csscore#attr('darkturquoise', '#00CED1'),
  \ csscore#attr('darkviolet', '#9400D3'),
  \ csscore#attr('deeppink', '#FF1493'),
  \ csscore#attr('deepskyblue', '#00BFFF'),
  \ csscore#attr('dimgray', '#696969'),
  \ csscore#attr('dimgrey', '#696969'),
  \ csscore#attr('dodgerblue', '#1E90FF'),
  \ csscore#attr('firebrick', '#B22222'),
  \ csscore#attr('floralwhite', '#FFFAF0'),
  \ csscore#attr('forestgreen', '#228B22'),
  \ csscore#attr('fuchsia', '#FF00FF'),
  \ csscore#attr('gainsboro', '#DCDCDC'),
  \ csscore#attr('ghostwhite', '#F8F8FF'),
  \ csscore#attr('gold', '#FFD700'),
  \ csscore#attr('goldenrod', '#DAA520'),
  \ csscore#attr('gray', '#808080'),
  \ csscore#attr('green', '#008000'),
  \ csscore#attr('greenyellow', '#ADFF2F'),
  \ csscore#attr('grey', '#808080'),
  \ csscore#attr('honeydew', '#F0FFF0'),
  \ csscore#attr('hotpink', '#FF69B4'),
  \ csscore#attr('indianred', '#CD5C5C'),
  \ csscore#attr('indigo', '#4B0082'),
  \ csscore#attr('ivory', '#FFFFF0'),
  \ csscore#attr('khaki', '#F0E68C'),
  \ csscore#attr('lavender', '#E6E6FA'),
  \ csscore#attr('lavenderblush', '#FFF0F5'),
  \ csscore#attr('lawngreen', '#7CFC00'),
  \ csscore#attr('lemonchiffon', '#FFFACD'),
  \ csscore#attr('lightblue', '#ADD8E6'),
  \ csscore#attr('lightcoral', '#F08080'),
  \ csscore#attr('lightcyan', '#E0FFFF'),
  \ csscore#attr('lightgoldenrodyellow', '#FAFAD2'),
  \ csscore#attr('lightgray', '#D3D3D3'),
  \ csscore#attr('lightgreen', '#90EE90'),
  \ csscore#attr('lightgrey', '#D3D3D3'),
  \ csscore#attr('lightpink', '#FFB6C1'),
  \ csscore#attr('lightsalmon', '#FFA07A'),
  \ csscore#attr('lightseagreen', '#20B2AA'),
  \ csscore#attr('lightskyblue', '#87CEFA'),
  \ csscore#attr('lightslategray', '#778899'),
  \ csscore#attr('lightslategrey', '#778899'),
  \ csscore#attr('lightsteelblue', '#B0C4DE'),
  \ csscore#attr('lightyellow', '#FFFFE0'),
  \ csscore#attr('lime', '#00FF00'),
  \ csscore#attr('limegreen', '#32CD32'),
  \ csscore#attr('linen', '#FAF0E6'),
  \ csscore#attr('magenta', '#FF00FF'),
  \ csscore#attr('maroon', '#800000'),
  \ csscore#attr('mediumaquamarine', '#66CDAA'),
  \ csscore#attr('mediumblue', '#0000CD'),
  \ csscore#attr('mediumorchid', '#BA55D3'),
  \ csscore#attr('mediumpurple', '#9370DB'),
  \ csscore#attr('mediumseagreen', '#3CB371'),
  \ csscore#attr('mediumslateblue', '#7B68EE'),
  \ csscore#attr('mediumspringgreen', '#00FA9A'),
  \ csscore#attr('mediumturquoise', '#48D1CC'),
  \ csscore#attr('mediumvioletred', '#C71585'),
  \ csscore#attr('midnightblue', '#191970'),
  \ csscore#attr('mintcream', '#F5FFFA'),
  \ csscore#attr('mistyrose', '#FFE4E1'),
  \ csscore#attr('moccasin', '#FFE4B5'),
  \ csscore#attr('navajowhite', '#FFDEAD'),
  \ csscore#attr('navy', '#000080'),
  \ csscore#attr('oldlace', '#FDF5E6'),
  \ csscore#attr('olive', '#808000'),
  \ csscore#attr('olivedrab', '#6B8E23'),
  \ csscore#attr('orange', '#FFA500'),
  \ csscore#attr('orangered', '#FF4500'),
  \ csscore#attr('orchid', '#DA70D6'),
  \ csscore#attr('palegoldenrod', '#EEE8AA'),
  \ csscore#attr('palegreen', '#98FB98'),
  \ csscore#attr('paleturquoise', '#AFEEEE'),
  \ csscore#attr('palevioletred', '#DB7093'),
  \ csscore#attr('papayawhip', '#FFEFD5'),
  \ csscore#attr('peachpuff', '#FFDAB9'),
  \ csscore#attr('peru', '#CD853F'),
  \ csscore#attr('pink', '#FFC0CB'),
  \ csscore#attr('plum', '#DDA0DD'),
  \ csscore#attr('powderblue', '#B0E0E6'),
  \ csscore#attr('purple', '#800080'),
  \ csscore#attr('red', '#FF0000'),
  \ csscore#attr('rosybrown', '#BC8F8F'),
  \ csscore#attr('royalblue', '#4169E1'),
  \ csscore#attr('saddlebrown', '#8B4513'),
  \ csscore#attr('salmon', '#FA8072'),
  \ csscore#attr('sandybrown', '#F4A460'),
  \ csscore#attr('seagreen', '#2E8B57'),
  \ csscore#attr('seashell', '#FFF5EE'),
  \ csscore#attr('sienna', '#A0522D'),
  \ csscore#attr('silver', '#C0C0C0'),
  \ csscore#attr('skyblue', '#87CEEB'),
  \ csscore#attr('slateblue', '#6A5ACD'),
  \ csscore#attr('slategray', '#708090'),
  \ csscore#attr('slategrey', '#708090'),
  \ csscore#attr('snow', '#FFFAFA'),
  \ csscore#attr('springgreen', '#00FF7F'),
  \ csscore#attr('steelblue', '#4682B4'),
  \ csscore#attr('tan', '#D2B48C'),
  \ csscore#attr('teal', '#008080'),
  \ csscore#attr('thistle', '#D8BFD8'),
  \ csscore#attr('tomato', '#FF6347'),
  \ csscore#attr('turquoise', '#40E0D0'),
  \ csscore#attr('violet', '#EE82EE'),
  \ csscore#attr('wheat', '#F5DEB3'),
  \ csscore#attr('white', '#FFFFFF'),
  \ csscore#attr('whitesmoke', '#F5F5F5'),
  \ csscore#attr('yellow', '#FFFF00'),
  \ csscore#attr('yellowgreen', '#9ACD32'),
  \ ]

let _list_style = [
  \ csscore#attr('disc', ''),
  \ csscore#attr('armenian', ''),
  \ csscore#attr('circle', ''),
  \ csscore#attr('cjk-ideographic', ''),
  \ csscore#attr('decimal', ''),
  \ csscore#attr('decimal-leading-zero', ''),
  \ csscore#attr('georgian', ''),
  \ csscore#attr('hebrew', ''),
  \ csscore#attr('hiragana', ''),
  \ csscore#attr('hiragana-iroha', ''),
  \ csscore#attr('katakana', ''),
  \ csscore#attr('katakana-iroha', ''),
  \ csscore#attr('lower-alpha', ''),
  \ csscore#attr('lower-greek', ''),
  \ csscore#attr('lower-latin', ''),
  \ csscore#attr('lower-roman', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('square', ''),
  \ csscore#attr('upper-alpha', ''),
  \ csscore#attr('upper-latin', ''),
  \ csscore#attr('upper-roman', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ]

"let _background_position = 
"  \ csscore#enum('background-position-x', [
"  \ csscore#attr('left', ''),
"  \ csscore#attr('right', ''),
"  \ ])

let _background_attachment = 
  \ csscore#enum('background-attachment', [
  \ csscore#attr('scroll', ''),
  \ csscore#attr('fixed', ''),
  \ csscore#attr('inherit', ''),
  \ ])

let _background_color = 
  \ csscore#enum('background-color', _color + [
  \ csscore#attr('transparent', ''),
  \ ])

let _background_image =
  \ csscore#enum('background-image', _uri + [
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])

let _background_position = 
  \ csscore#enum('background-position', _length + _per + [
  \ csscore#attr('left', ''),
  \ csscore#attr('center', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('top', ''),
  \ csscore#attr('bottom', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-collapse', [
  \ csscore#attr('collapse', ''),
  \ csscore#attr('separate', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _border_color = 
  \ csscore#enum('border-color', _color)
call csscore#enum('border-spacing', _length + [
  \ csscore#attr('transparent', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-style', _border_style + [
  \ csscore#attr('inherit', ''),
  \ ])

let _border_top_color = 
  \ csscore#enum('border-top-color', _color + [
  \ csscore#attr('transparent', ''),
  \ ])

call csscore#enum('border-right-color', _color + [
  \ csscore#attr('transparent', ''),
  \ ])

call csscore#enum('border-let-color', _color + [
  \ csscore#attr('transparent', ''),
  \ ])

call csscore#enum('border-bottom-color', _color + [
  \ csscore#attr('transparent', ''),
  \ ])

call csscore#enum('border-top', _border_style + _border_type_width + _border_top_color.members + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-right', _border_style + _border_type_width + _border_top_color.members + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-bottom', _border_style + _border_type_width + _border_top_color.members + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-left', _border_style + _border_type_width + _border_top_color.members + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-top-style', _border_style + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-right-style', _border_style + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-bottom-style', _border_style + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-left-style', _border_style + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-top-width', _border_type_width + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-right-width', _border_type_width + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-bottom-width', _border_type_width + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border-left-width', _border_type_width + [
  \ csscore#attr('inherit', ''),
  \ ])
let _border_width = 
  \ csscore#enum('border-width', _border_type_width + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('border', _border_style + _border_type_width + [
  \ csscore#attr('border-top-color', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('bottom', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('caption-side', [
  \ csscore#attr('top', ''),
  \ csscore#attr('bottom', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('clear', [
  \ csscore#attr('none', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('both', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('clip', _shape + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ csscore#attr('rect(,,,)', ''),
  \ csscore#attr('inset(,,,)', ''),
  \ ])
call csscore#enum('color', _color)
call csscore#enum('content', _uri + [
  \ csscore#attr('normal', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('""', ''),
  \ csscore#attr("''", ''),
  \ csscore#attr("counter(", ''),
  \ csscore#attr('attr(', ''),
  \ csscore#attr('open-quote', ''),
  \ csscore#attr('close-quote', ''),
  \ csscore#attr('no-open-quote', ''),
  \ csscore#attr('no-close-quote+', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('counter-increment', _id + _number + [
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('counter-reset', _id + _number + [
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('cursor', _uri + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('crosshair', ''),
  \ csscore#attr('default', ''),
  \ csscore#attr('pointer', ''),
  \ csscore#attr('move', ''),
  \ csscore#attr('e-resize', ''),
  \ csscore#attr('ne-resize', ''),
  \ csscore#attr('nw-resize', ''),
  \ csscore#attr('n-resize', ''),
  \ csscore#attr('se-resize', ''),
  \ csscore#attr('sw-resize', ''),
  \ csscore#attr('s-resize', ''),
  \ csscore#attr('w-resize', ''),
  \ csscore#attr('text', ''),
  \ csscore#attr('wait', ''),
  \ csscore#attr('help', ''),
  \ csscore#attr('progress', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('direction', [
  \ csscore#attr('ltr', ''),
  \ csscore#attr('rtl', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('display', [
  \ csscore#attr('inline', ''),
  \ csscore#attr('block', ''),
  \ csscore#attr('list-item', ''),
  \ csscore#attr('inline-block', ''),
  \ csscore#attr('table', ''),
  \ csscore#attr('inline-table', ''),
  \ csscore#attr('table-row-group', ''),
  \ csscore#attr('table-header-group', ''),
  \ csscore#attr('table-footer-group', ''),
  \ csscore#attr('table-row', ''),
  \ csscore#attr('table-column-group', ''),
  \ csscore#attr('table-column', ''),
  \ csscore#attr('table-cell', ''),
  \ csscore#attr('table-caption', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('empty-cells', [
  \ csscore#attr('show', ''),
  \ csscore#attr('hide', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('float', [
  \ csscore#attr('left', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('font-family', _font_family + [
  \ csscore#attr('inherit', ''),
  \ ])
let _font_size =
  \ csscore#enum('font-size', _length + _size + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
let _font_style = 
  \ csscore#enum('font-style', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('italic', ''),
  \ csscore#attr('oblique', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _font_variant = 
  \ csscore#enum('font-variant', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('unicase', ''),
  \ csscore#attr('titling-caps', ''),
  \ csscore#attr('small-caps', ''),
  \ csscore#attr('petite-caps', ''),
  \ csscore#attr('all-small-caps', ''),
  \ csscore#attr('all-petite-caps', ''),
  \ ])
let _font_weight = 
  \ csscore#enum('font-weight', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('bold', ''),
  \ csscore#attr('bolder', ''),
  \ csscore#attr('lighter', ''),
  \ csscore#attr('100', ''),
  \ csscore#attr('200', ''),
  \ csscore#attr('300', ''),
  \ csscore#attr('400', ''),
  \ csscore#attr('500', ''),
  \ csscore#attr('600', ''),
  \ csscore#attr('700', ''),
  \ csscore#attr('800', ''),
  \ csscore#attr('900', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('font', _font_family + _length + _size + _per + [
  \ csscore#attr('normal', ''),
  \ csscore#attr('italic', ''),
  \ csscore#attr('oblique', ''),
  \ csscore#attr('inherit', ''),
  \ csscore#attr('small-caps', ''),
  \ csscore#attr('bold', ''),
  \ csscore#attr('bolder', ''),
  \ csscore#attr('lighter', ''),
  \ csscore#attr('100', ''),
  \ csscore#attr('200', ''),
  \ csscore#attr('300', ''),
  \ csscore#attr('400', ''),
  \ csscore#attr('500', ''),
  \ csscore#attr('600', ''),
  \ csscore#attr('700', ''),
  \ csscore#attr('800', ''),
  \ csscore#attr('900', ''),
  \ csscore#attr('caption', ''),
  \ csscore#attr('icon', ''),
  \ csscore#attr('menu', ''),
  \ csscore#attr('message-box', ''),
  \ csscore#attr('small-caption', ''),
  \ csscore#attr('status-bar', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('height', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('left', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('letter-spacing', _length + [
  \ csscore#attr('normal', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _line_height = 
  \ csscore#enum('line-height', _length + _number + _per + [
  \ csscore#attr('normal', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _list_style_image = 
  \ csscore#enum('list-style-image', _uri + [
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _list_style_position = 
  \ csscore#enum('list-style-position', [
  \ csscore#attr('inside', ''),
  \ csscore#attr('outside', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _list_style_type = 
  \ csscore#enum('list-style-type', [
  \ csscore#attr('disc', ''),
  \ csscore#attr('circle', ''),
  \ csscore#attr('square', ''),
  \ csscore#attr('decimal', ''),
  \ csscore#attr('decimal-leading-zero', ''),
  \ csscore#attr('lower-roman', ''),
  \ csscore#attr('upper-roman', ''),
  \ csscore#attr('lower-greek', ''),
  \ csscore#attr('lower-latin', ''),
  \ csscore#attr('upper-latin', ''),
  \ csscore#attr('armenian', ''),
  \ csscore#attr('georgian', ''),
  \ csscore#attr('lower-alpha', ''),
  \ csscore#attr('upper-alpha', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('list-style', _list_style + _uri + [
  \ csscore#attr('inside', ''),
  \ csscore#attr('outside', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('margin-right', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('margin-left', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('margin-top', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('margin-bottom', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('margin', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('max-height', _length + _per + [
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('max-width', _length + _per + [
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('min-height', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('min-width', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('opacity', _number + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('orphans', _number + [
  \ csscore#attr('inherit', ''),
  \ ])
let _outline_color = 
  \ csscore#enum('outline-color', _color + [
  \ csscore#attr('invert', ''),
  \ csscore#attr('inherit', ''),
  \ ])
let _outline_style = 
  \ csscore#enum('outline-style', _border_style + [
  \ csscore#attr('inherit', ''),
  \ ])
let _outline_width = 
  \ csscore#enum('outline-width', _border_type_width + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('outline', _border_style + _border_type_width + [
  \ csscore#attr('invert', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('overflow', [
  \ csscore#attr('visible', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('scroll', ''),
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('padding-top', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('padding-right', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('padding-bottom', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('padding-left', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('padding', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('page-break-after', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('always', ''),
  \ csscore#attr('avoid', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('page-break-before', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('always', ''),
  \ csscore#attr('avoid', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('page-break-inside', [
  \ csscore#attr('avoid', ''),
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('position', [
  \ csscore#attr('static', ''),
  \ csscore#attr('relative', ''),
  \ csscore#attr('absolute', ''),
  \ csscore#attr('fixed', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('quotes', [
  \ csscore#attr('""', ''),
  \ csscore#attr("''", ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('right', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('table-layout', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('fixed', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('text-decoration', [
  \ csscore#attr('none', ''),
  \ csscore#attr('underline', ''),
  \ csscore#attr('overline', ''),
  \ csscore#attr('line-through', ''),
  \ csscore#attr('blink', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('text-indent', _length + _per + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('text-transform', [
  \ csscore#attr('capitalize', ''),
  \ csscore#attr('uppercase', ''),
  \ csscore#attr('lowercase', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('top', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('unicode-bidi', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('embed', ''),
  \ csscore#attr('bidi-override', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('vertical-align', _length + _per + [
  \ csscore#attr('baseline', ''),
  \ csscore#attr('sub', ''),
  \ csscore#attr('super', ''),
  \ csscore#attr('top', ''),
  \ csscore#attr('text-top', ''),
  \ csscore#attr('middle', ''),
  \ csscore#attr('bottom', ''),
  \ csscore#attr('text-bottom', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('visibility', [
  \ csscore#attr('visible', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('collapse', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('white-space', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('pre', ''),
  \ csscore#attr('nowrap', ''),
  \ csscore#attr('pre-wrap', ''),
  \ csscore#attr('pre-line', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('widows', _number + [
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('width', _length + _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('word-spacing', _length + _per + [
  \ csscore#attr('normal', ''),
  \ csscore#attr('inherit', ''),
  \ ])
call csscore#enum('z-index', _number + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('inherit', ''),
  \ ])

" CSS3

call csscore#enum('border-top-style', [
  \ ])

call csscore#enum('animation-delay', _time)

let _animation_direction = 
  \ csscore#enum('animation-direction', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('reverse', ''),
  \ csscore#attr('alternate-reverse', ''),
  \ csscore#attr('alternate', ''),
  \ ])

let _animation_duration = 
  \ csscore#enum('animation-duration', _time)

let _animation_fill_mode = 
  \ csscore#enum('animation-fill-mode', [
  \ csscore#attr('none', ''),
  \ csscore#attr('forwards', ''),
  \ csscore#attr('both', ''),
  \ csscore#attr('backwards', ''),
  \ ])

let _animation_iteration_count = 
  \ csscore#enum('animation-iteration-count', _number + [
  \ csscore#attr('infinite', ''),
  \ ])

let _animation_name =
  \ csscore#enum('animation-name', _id + [
  \ csscore#attr('none', ''),
  \ ])

let _animation_timing_function = 
  \ csscore#enum('animation-timing-function', [
  \ csscore#attr('ease', ''),
  \ csscore#attr('steps(,)', ''),
  \ csscore#attr('step-start', ''),
  \ csscore#attr('step-end', ''),
  \ csscore#attr('linear', ''),
  \ csscore#attr('ease-out', ''),
  \ csscore#attr('ease-in-out', ''),
  \ csscore#attr('ease-in', ''),
  \ csscore#attr('cubic-bezier(,,,)', ''),
  \ ])

let _animation_play_state = 
  \ csscore#enum('animation-play-state', [
  \ csscore#attr('running', ''),
  \ csscore#attr('paused', ''),
  \ ])

call csscore#enum('visibility', [
  \ csscore#attr('visible', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('collapse', ''),
  \ ])

call csscore#enum('backface-visibility', [
  \ csscore#attr('visible', ''),
  \ csscore#attr('hidden', ''),
  \ ])

let _background_clip = 
  \ csscore#enum('background-clip', [
  \ csscore#attr('border-box', ''),
  \ csscore#attr('padding-box', ''),
  \ csscore#attr('content-box', ''),
  \ ])

call csscore#enum('background-image', [
  \ csscore#attr('none', ''),
  \ csscore#attr('url(', ''),
  \ csscore#attr('repeating-gradient(', ''),
  \ csscore#attr('radial-gradient(', ''),
  \ csscore#attr('linear-gradient(', ''),
  \ ])

let _background_origin = 
  \ csscore#enum('background-origin', [
  \ csscore#attr('padding-box', ''),
  \ csscore#attr('content-box', ''),
  \ csscore#attr('border-box', ''),
  \ ])
call csscore#enum('position', [
  \ csscore#attr('static', ''),
  \ csscore#attr('sticky', ''),
  \ csscore#attr('relative', ''),
  \ csscore#attr('page', ''),
  \ csscore#attr('fixed', ''),
  \ csscore#attr('center', ''),
  \ csscore#attr('absolute', ''),
  \ ])

let _background_repeat = 
  \ csscore#enum('background-repeat', [
  \ csscore#attr('repeat', ''),
  \ csscore#attr('space', ''),
  \ csscore#attr('round', ''),
  \ csscore#attr('repeat-y', ''),
  \ csscore#attr('repeat-x', ''),
  \ csscore#attr('repeat', ''),
  \ csscore#attr('no-repeat', ''),
  \ ])

let _background_size = 
  \ csscore#enum('background-size', _per + [
  \ csscore#attr('auto', ''),
  \ csscore#attr('cover', ''),
  \ csscore#attr('contain', ''),
  \ ])

call csscore#enum('animation', _time + _animation_direction.members + _animation_iteration_count.members + _animation_name.members + _animation_timing_function.members + _animation_play_state.members + _animation_duration.members + [
  \ ])

call csscore#enum('background', _background_attachment.members + _background_color.members + _background_image.members + _background_repeat.members + _background_position.members + _background_clip.members + _background_origin.members + _background_size.members + [
  \ ])

call csscore#enum('border', _border_width.members + _border_style + _border_color.members + [
  \ ])

call csscore#enum('border-left-color', _color + [
  \ csscore#attr('transparent', ''),
  \ ])

call csscore#enum('border-radius', _per + _length + [
  \ ])

call csscore#enum('border-top-left-radius', _per + _length + [
  \ ])

call csscore#enum('border-top-right-radius', _per + _length + [
  \ ])

call csscore#enum('border-bottom-left-radius', _per + _length + [
  \ ])

call csscore#enum('border-bottom-right-radius', _per + _length + [
  \ ])

let _border_image_source = 
  \ csscore#enum('border-image-source', [
  \ csscore#attr('none', ''),
  \ csscore#attr('url(', ''),
  \ ])

let _border_image_slice = 
  \ csscore#enum('border-image-slice', _per + [
  \ csscore#attr('fill', ''),
  \ csscore#attr('initial', ''),
  \ ])

let _border_image_width = 
  \ csscore#enum('border-image-width', _number + _length + _per + [
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('width', _per + _length + [
  \ csscore#attr('auto', ''),
  \ ])

let _border_image_outset = 
  \ csscore#enum('border-image-outset', _number + _length + [
  \ csscore#attr('auto', ''),
  \ ])

let _border_image_repeat = 
  \ csscore#enum('border-image-repeat', [
  \ csscore#attr('stretch', ''),
  \ csscore#attr('space', ''),
  \ csscore#attr('round', ''),
  \ csscore#attr('repeat', ''),
  \ ])

call csscore#enum('border-image', _border_image_source.members + _border_image_slice.members + _border_image_width.members + _border_image_outset.members + _border_image_repeat.members + [
  \ ])

call csscore#enum('border-spacing', _number + _length + [
  \ ])

call csscore#enum('box-decoration-break', [
  \ csscore#attr('slice', ''),
  \ csscore#attr('clone', ''),
  \ ])

call csscore#enum('box-shadow', _length + [
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('box-sizing', [
  \ csscore#attr('content-box', ''),
  \ csscore#attr('padding-box', ''),
  \ csscore#attr('border-box', ''),
  \ ])

call csscore#enum('break-before', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('page', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('column', ''),
  \ csscore#attr('avoid-page', ''),
  \ csscore#attr('avoid-column', ''),
  \ csscore#attr('avoid', ''),
  \ csscore#attr('always', ''),
  \ ])

call csscore#enum('break-after', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('page', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('column', ''),
  \ csscore#attr('avoid-page', ''),
  \ csscore#attr('avoid-column', ''),
  \ csscore#attr('avoid', ''),
  \ csscore#attr('always', ''),
  \ ])

call csscore#enum('break-inside', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('avoid-page', ''),
  \ csscore#attr('avoid-column', ''),
  \ csscore#attr('avoid', ''),
  \ ])

call csscore#enum('caption-side', [
  \ csscore#attr('top', ''),
  \ csscore#attr('bottom', ''),
  \ ])

call csscore#enum('clear', [
  \ csscore#attr('none', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('both', ''),
  \ ])

call csscore#enum('clear-after', [
  \ csscore#attr('none', ''),
  \ csscore#attr('top', ''),
  \ csscore#attr('start', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('outside', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('inside', ''),
  \ csscore#attr('end', ''),
  \ csscore#attr('descendants', ''),
  \ csscore#attr('bottom', ''),
  \ csscore#attr('both', ''),
  \ ])

call csscore#enum('column-fill', [
  \ csscore#attr('balance', ''),
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('column-span', [
  \ csscore#attr('none', ''),
  \ csscore#attr('all', ''),
  \ ])

let _column_width = 
  \ csscore#enum('column-width', _length + [
  \ csscore#attr('auto', ''),
  \ ])

let _column_count = 
  \ csscore#enum('column-count', _number + [
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('column-gap', _length + [
  \ csscore#attr('normal', ''),
  \ ])

let _column_rule_color = 
  \ csscore#enum('column-rule-color', _color + [
  \ ])

let _column_rule_style = 
  \ csscore#enum('column-rule-style', [
  \ csscore#attr('none', ''),
  \ csscore#attr('solid', ''),
  \ csscore#attr('ridge', ''),
  \ csscore#attr('outset', ''),
  \ csscore#attr('inset', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('groove', ''),
  \ csscore#attr('double', ''),
  \ csscore#attr('dotted', ''),
  \ csscore#attr('dashed', ''),
  \ ])

let _column_rule_width = 
  \ csscore#enum('column-rule-width', _length + [
  \ csscore#attr('medium', ''),
  \ csscore#attr('thin', ''),
  \ csscore#attr('thick', ''),
  \ ])

call csscore#enum('column-rule', _column_rule_width.members + _column_rule_style.members + _column_rule_color.members + [
  \ ])

call csscore#enum('columns', _column_width.members + _column_count.members + [
  \ ])

call csscore#enum('content', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('open-quote', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('no-open-quote', ''),
  \ csscore#attr('no-close-quote', ''),
  \ csscore#attr('icon', ''),
  \ csscore#attr('close-quote', ''),
  \ csscore#attr('attr(', ''),
  \ csscore#attr('url(', ''),
  \ csscore#attr("''", ''),
  \ csscore#attr('""', ''),
  \ csscore#attr('counter(', ''),
  \ ])

call csscore#enum('counter-increment', _id + _number + [
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('cursor', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('zoom-out', ''),
  \ csscore#attr('zoom-in', ''),
  \ csscore#attr('wait', ''),
  \ csscore#attr('w-resize', ''),
  \ csscore#attr('vertical-text', ''),
  \ csscore#attr('url(', ''),
  \ csscore#attr('text', ''),
  \ csscore#attr('sw-resize', ''),
  \ csscore#attr('se-resize', ''),
  \ csscore#attr('s-resize', ''),
  \ csscore#attr('row-resize', ''),
  \ csscore#attr('progress', ''),
  \ csscore#attr('pointer', ''),
  \ csscore#attr('nwse-resize', ''),
  \ csscore#attr('nw-resize', ''),
  \ csscore#attr('ns-resize', ''),
  \ csscore#attr('not-allowed', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('no-drop', ''),
  \ csscore#attr('nesw-resize', ''),
  \ csscore#attr('ne-resize', ''),
  \ csscore#attr('n-resize', ''),
  \ csscore#attr('move', ''),
  \ csscore#attr('help', ''),
  \ csscore#attr('ew-resize', ''),
  \ csscore#attr('e-resize', ''),
  \ csscore#attr('default', ''),
  \ csscore#attr('crosshair', ''),
  \ csscore#attr('copy', ''),
  \ csscore#attr('context-menu', ''),
  \ csscore#attr('col-resize', ''),
  \ csscore#attr('cell', ''),
  \ csscore#attr('all-scroll', ''),
  \ csscore#attr('alias', ''),
  \ ])

call csscore#enum('display', [
  \ csscore#attr('inline', ''),
  \ csscore#attr('table-row-group', ''),
  \ csscore#attr('table-row', ''),
  \ csscore#attr('table-header-group', ''),
  \ csscore#attr('table-footer-group', ''),
  \ csscore#attr('table-column-group', ''),
  \ csscore#attr('table-column', ''),
  \ csscore#attr('table-cell', ''),
  \ csscore#attr('table-caption', ''),
  \ csscore#attr('table', ''),
  \ csscore#attr('run-in', ''),
  \ csscore#attr('run-in', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('list-item', ''),
  \ csscore#attr('inline-table', ''),
  \ csscore#attr('inline-flex', ''),
  \ csscore#attr('inline-block', ''),
  \ csscore#attr('flex', ''),
  \ csscore#attr('container', ''),
  \ csscore#attr('compact', ''),
  \ csscore#attr('block', ''),
  \ ])

call csscore#enum('empty-cells', [
  \ csscore#attr('show', ''),
  \ csscore#attr('hide', ''),
  \ ])

call csscore#enum('float', [
  \ csscore#attr('none', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('left', ''),
  \ ])

let _flex_direction = 
  \ csscore#enum('flex-direction', [
  \ csscore#attr('row', ''),
  \ csscore#attr('row-reverse', ''),
  \ csscore#attr('column-reverse', ''),
  \ csscore#attr('column', ''),
  \ ])

let _flex_wrap = 
  \ csscore#enum('flex-wrap', [
  \ csscore#attr('nowrap', ''),
  \ csscore#attr('wrap-reverse', ''),
  \ csscore#attr('wrap', ''),
  \ ])

let _flex_grow = 
  \ csscore#enum('flex-grow', _number + [
  \ ])

let _flex_shrink = 
  \ csscore#enum('flex-shrink', _number + [
  \ ])

let _flex_basis = 
  \ csscore#enum('flex-basis', _length + [
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('flex-flow', _flex_direction.members + _flex_wrap.members +[
  \ ])

call csscore#enum('flex', _flex_grow.members + _flex_shrink.members + _flex_basis.members +[
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('justify-content', [
  \ csscore#attr('flex-start', ''),
  \ csscore#attr('space-between', ''),
  \ csscore#attr('space-around', ''),
  \ csscore#attr('flex-end', ''),
  \ csscore#attr('center', ''),
  \ ])

call csscore#enum('align-items', [
  \ csscore#attr('stretch', ''),
  \ csscore#attr('flex-start', ''),
  \ csscore#attr('flex-end', ''),
  \ csscore#attr('center', ''),
  \ csscore#attr('baseline', ''),
  \ ])

call csscore#enum('align-self', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('stretch', ''),
  \ csscore#attr('flex-start', ''),
  \ csscore#attr('flex-end', ''),
  \ csscore#attr('center', ''),
  \ csscore#attr('baseline', ''),
  \ ])

call csscore#enum('align-content', [
  \ csscore#attr('stretch', ''),
  \ csscore#attr('space-between', ''),
  \ csscore#attr('space-around', ''),
  \ csscore#attr('flex-start', ''),
  \ csscore#attr('flex-end', ''),
  \ csscore#attr('center', ''),
  \ ])

call csscore#enum('order', _number + [
  \ ])

call csscore#enum('font-family', _font_family + [
  \ ])

let _font_stretch = 
  \ csscore#enum('font-stretch', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('ultra-expanded', ''),
  \ csscore#attr('ultra-condensed', ''),
  \ csscore#attr('semi-expanded', ''),
  \ csscore#attr('semi-condensed', ''),
  \ csscore#attr('extra-expanded', ''),
  \ csscore#attr('extra-condensed', ''),
  \ csscore#attr('expanded', ''),
  \ csscore#attr('condensed', ''),
  \ ])

call csscore#enum('font-size-adjust', _number + [
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('font-synthesis', [
  \ csscore#attr('weight style', ''),
  \ csscore#attr('weight', ''),
  \ csscore#attr('style', ''),
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('font-kerning', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('normal', ''),
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('font-variant-caps', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('unicase', ''),
  \ csscore#attr('titling-caps', ''),
  \ csscore#attr('small-caps', ''),
  \ csscore#attr('petite-caps', ''),
  \ csscore#attr('all-small-caps', ''),
  \ csscore#attr('all-petite-caps', ''),
  \ ])

call csscore#enum('font', _font_style.members + _font_variant.members + _font_weight.members + _font_stretch.members + _font_size.members + _line_height.members + _font_family + [
  \ ])

call csscore#enum('hanging-punctuation', [
  \ csscore#attr('none', ''),
  \ csscore#attr('first', ''),
  \ csscore#attr('last', ''),
  \ csscore#attr('allow-end', ''),
  \ csscore#attr('force-end', ''),
  \ csscore#attr('initial', ''),
  \ csscore#attr('inherit', ''),
  \ ])

call csscore#enum('hyphens', [
  \ csscore#attr('manual', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('icon', _uri + [
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('image-resolution', [
  \ csscore#attr('1dppx', ''),
  \ csscore#attr('from-image', ''),
  \ ])

call csscore#enum('image-orientation', [
  \ csscore#attr('0deg', ''),
  \ csscore#attr('90deg', ''),
  \ csscore#attr('180deg', ''),
  \ csscore#attr('270deg', ''),
  \ ])

call csscore#enum('line-break', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('strict', ''),
  \ csscore#attr('normal', ''),
  \ csscore#attr('loose', ''),
  \ ])

call csscore#enum('list-style', _list_style_type.members + _list_style_position.members + _list_style_image.members +[
  \ ])

call csscore#enum('object-fit', [
  \ csscore#attr('fill', ''),
  \ csscore#attr('scale-down', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('cover', ''),
  \ csscore#attr('contain', ''),
  \ ])

call csscore#enum('object-position', _per + _length + [
  \ csscore#attr('50% 50%', ''),
  \ csscore#attr('right bottom', ''),
  \ csscore#attr('left top', ''),
  \ csscore#attr('center center', ''),
  \ ])

call csscore#enum('opacity', _number + [
  \ ])

call csscore#enum('orphans', _number + [
  \ csscore#attr('2', ''),
  \ ])

call csscore#enum('outline', _outline_color.members + _outline_style.members + _outline_width.members +[
  \ ])

call csscore#enum('overflow-x', [
  \ csscore#attr('visible', ''),
  \ csscore#attr('scroll', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('overflow-y', [
  \ csscore#attr('visible', ''),
  \ csscore#attr('scroll', ''),
  \ csscore#attr('hidden', ''),
  \ csscore#attr('auto', ''),
  \ ])

call csscore#enum('overflow-wrap', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('break-word', ''),
  \ ])

call csscore#enum('perspective', _length + [
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('perspective-origin', _per + _length + [
  \ csscore#attr('50% 50%', ''),
  \ csscore#attr('top', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('center', ''),
  \ csscore#attr('bottom', ''),
  \ ])

call csscore#enum('pointer-events', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('none', ''),
  \ ])

call csscore#enum('quotes', [
  \ csscore#attr('none', ''),
  \ csscore#attr('<string> <string>', ''),
  \ ])

call csscore#enum('resize', [
  \ csscore#attr('none', ''),
  \ csscore#attr('vertical', ''),
  \ csscore#attr('horizontal', ''),
  \ csscore#attr('both', ''),
  \ ])

call csscore#enum('tab-size', _length + _number + [
  \ ])

call csscore#enum('text-align', [
  \ csscore#attr('start end', ''),
  \ csscore#attr('start', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('match-parent', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('justify', ''),
  \ csscore#attr('end', ''),
  \ csscore#attr('center', ''),
  \ ])

call csscore#enum('text-align-last', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('start', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('justify', ''),
  \ csscore#attr('end', ''),
  \ csscore#attr('center', ''),
  \ ])

let _text_decoration_line = 
  \ csscore#enum('text-decoration-line', [
  \ csscore#attr('none', ''),
  \ csscore#attr('underline', ''),
  \ csscore#attr('overline', ''),
  \ csscore#attr('line-through', ''),
  \ csscore#attr('blink', ''),
  \ ])

call csscore#enum('text-decoration-skip', [
  \ csscore#attr('none', ''),
  \ csscore#attr('spaces', ''),
  \ csscore#attr('objects', ''),
  \ csscore#attr('ink', ''),
  \ csscore#attr('edges', ''),
  \ csscore#attr('box-decoration', ''),
  \ csscore#attr('box-decoration', ''),
  \ ])

call csscore#enum('text-underline-position', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('under right', ''),
  \ csscore#attr('under left', ''),
  \ csscore#attr('under', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('left', ''),
  \ ])

let _text_decoration_style = 
  \ csscore#enum('text-decoration-style', [
  \ csscore#attr('solid', ''),
  \ csscore#attr('wavy', ''),
  \ csscore#attr('double', ''),
  \ csscore#attr('dotted', ''),
  \ csscore#attr('dashed', ''),
  \ ])

let _text_emphasis_style = 
  \ csscore#enum('text-emphasis-style', [
  \ csscore#attr('none', ''),
  \ csscore#attr('triangle', ''),
  \ csscore#attr('sesame', ''),
  \ csscore#attr('open', ''),
  \ csscore#attr('filled', ''),
  \ csscore#attr('double-circle', ''),
  \ csscore#attr('dot', ''),
  \ csscore#attr('circle', ''),
  \ ])

let _text_emphasis_color = 
  \ csscore#enum('text-emphasis-color', _color + [
  \ ])

call csscore#enum('text-emphasis-position', [
  \ csscore#attr('over right', ''),
  \ csscore#attr('over left', ''),
  \ csscore#attr('below right', ''),
  \ csscore#attr('below left', ''),
  \ ])

call csscore#enum('text-emphasis', _text_emphasis_style.members + _text_emphasis_color.members +[
  \ ])

call csscore#enum('text-justify', [
  \ csscore#attr('auto', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('inter-word', ''),
  \ csscore#attr('distribute', ''),
  \ ])

call csscore#enum('text-orientation', [
  \ csscore#attr('mixed', ''),
  \ csscore#attr('use-glyph-orientation', ''),
  \ csscore#attr('upright', ''),
  \ csscore#attr('sideways-right', ''),
  \ csscore#attr('sideways-left', ''),
  \ csscore#attr('sideways', ''),
  \ ])

call csscore#enum('text-combine-horizontal', [
  \ csscore#attr('none', ''),
  \ csscore#attr('digits <integer>', ''),
  \ csscore#attr('all', ''),
  \ ])

call csscore#enum('text-overflow', [
  \ csscore#attr('clip', ''),
  \ csscore#attr('ellipsis', ''),
  \ ])

let _text_decoration_color = 
  \ csscore#enum('text-decoration-color', _color + [
  \ csscore#attr('inherit', ''),
  \ ])

call csscore#enum('text-decoration', _text_decoration_line.members + _text_decoration_style.members + _text_decoration_color.members +[
  \ ])

call csscore#enum('transform', [
  \ csscore#attr('none', ''),
  \ csscore#attr('translateZ(', ''),
  \ csscore#attr('translateY(', ''),
  \ csscore#attr('translateX(', ''),
  \ csscore#attr('translate3d(', ''),
  \ csscore#attr('translate(', ''),
  \ csscore#attr('skewY(', ''),
  \ csscore#attr('skewX(', ''),
  \ csscore#attr('scaleZ(', ''),
  \ csscore#attr('scaleY(', ''),
  \ csscore#attr('scaleX(', ''),
  \ csscore#attr('scale3d(', ''),
  \ csscore#attr('scale(', ''),
  \ csscore#attr('rotateZ(', ''),
  \ csscore#attr('rotateY(', ''),
  \ csscore#attr('rotateX(', ''),
  \ csscore#attr('rotate3d(', ''),
  \ csscore#attr('rotate(', ''),
  \ csscore#attr('perspective(', ''),
  \ csscore#attr('matrix3d(', ''),
  \ csscore#attr('matrix(', ''),
  \ ])

call csscore#enum('transform-origin', _per + _length + [
  \ csscore#attr('50% 50%', ''),
  \ csscore#attr('top', ''),
  \ csscore#attr('right', ''),
  \ csscore#attr('left', ''),
  \ csscore#attr('center', ''),
  \ csscore#attr('bottom', ''),
  \ ])

call csscore#enum('transform-style', [
  \ csscore#attr('flat', ''),
  \ csscore#attr('preserve-3d', ''),
  \ ])

call csscore#enum('text-transform', [
  \ csscore#attr('none', ''),
  \ csscore#attr('uppercase', ''),
  \ csscore#attr('lowercase', ''),
  \ csscore#attr('full-width', ''),
  \ csscore#attr('capitalize', ''),
  \ ])

call csscore#enum('text-shadow', _length + [
  \ csscore#attr('none', ''),
  \ ])

let _transition_property = 
  \ csscore#enum('transition-property', [
  \ csscore#attr('all', ''),
  \ csscore#attr('none', ''),
  \ csscore#attr('propety-name...', ''),
  \ ])

let _transition_timing_function = 
  \ csscore#enum('transition-timing-function', [
  \ csscore#attr('ease', ''),
  \ csscore#attr('steps(', ''),
  \ csscore#attr('steps(', ''),
  \ csscore#attr('steps(', ''),
  \ csscore#attr('step-start', ''),
  \ csscore#attr('step-end', ''),
  \ csscore#attr('linear', ''),
  \ csscore#attr('ease-out', ''),
  \ csscore#attr('ease-in-out', ''),
  \ csscore#attr('ease-in', ''),
  \ csscore#attr('cubic-bezier(', ''),
  \ ])

let _transition_duration = 
  \ csscore#enum('transition-duration', _time + [
  \ ])

let _transition_delay = 
  \ csscore#enum('transition-delay', _time + [
  \ ])

call csscore#enum('transition', _transition_property.members + _transition_duration.members + _transition_timing_function.members + _transition_delay.members +[
  \ ])

call csscore#enum('unicode-bidi', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('embed', ''),
  \ csscore#attr('bidi-override', ''),
  \ ])

call csscore#enum('vertical-align', _per + _length + [
  \ csscore#attr('baseline', ''),
  \ csscore#attr('top', ''),
  \ csscore#attr('text-top', ''),
  \ csscore#attr('text-bottom', ''),
  \ csscore#attr('super', ''),
  \ csscore#attr('sub', ''),
  \ csscore#attr('middle', ''),
  \ csscore#attr('bottom', ''),
  \ ])

call csscore#enum('white-space', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('pre-wrap', ''),
  \ csscore#attr('pre-line', ''),
  \ csscore#attr('pre', ''),
  \ csscore#attr('nowrap', ''),
  \ ])

call csscore#enum('widows', _number + [
  \ ])

call csscore#enum('word-break', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('keep-all', ''),
  \ csscore#attr('break-all', ''),
  \ ])

call csscore#enum('word-spacing', _per + _length + [
  \ csscore#attr('normal', ''),
  \ ])

call csscore#enum('word-wrap', [
  \ csscore#attr('normal', ''),
  \ csscore#attr('break-word', ''),
  \ ])

call csscore#enum('writing-mode', [
  \ csscore#attr('horizontal-tb', ''),
  \ csscore#attr('vertical-rl', ''),
  \ csscore#attr('vertical-lr', ''),
  \ ])

