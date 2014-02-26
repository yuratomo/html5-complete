call csscore#namespace('')

let tags = [
  \ 'a','applet','area','base','basefont','blockquote','body','br','button','dir','div','dl','fieldset','font','form','frame','frameset',
  \ 'head','h1','h2','h3','h4','h5','h6','hr','html','iframe','img','input','isindex','label','layer','ilayer','legend','li','link','map',
  \ 'menu','meta','del','ins','object','ol','optgroup','option','p','param','pre','q','script','select','style','caption','td','col','colgroup',
  \ 'table','tr','tbody','tfoot','thead','textarea','title','ul','progress','audio','blockquote','canvas','command','data','datalist','details',
  \ 'dialog','div','embed','keygen','meter','output','source','span','th','time','video',
  \ 'abbr', 'address', 'article', 'aside', 'b', 'base', 'bdi', 'bdo', 'cite', 'code', 'dd', 'dfn', 'dt', 'em', 'figcaption', 'figure', 'footer',
  \ 'header', 'hgroup', 'i', 'kbd', 'mark', 'nav', 'noscript', 'rp', 'rt', 'ruby', 'samp', 'section', 'small', 'strong', 'sub', 'sup', 'summary', 'var', 'wbr' 
  \ ]
for key in tags
  call csscore#class(key, 'element', [])
endfor

call csscore#class('element', '', [ 
  \ csscore#attr('link', ''),
  \ csscore#attr('visited', ''),
  \ csscore#attr('hover', ''),
  \ csscore#attr('active', ''),
  \ csscore#attr('focus', ''),
  \ csscore#attr('lang', ''),
  \ csscore#attr('first-child', ''),
  \ csscore#attr('first-letter', ''),
  \ csscore#attr('before', ''),
  \ csscore#attr('after', ''),
  \ ])

