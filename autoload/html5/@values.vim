
call html5core#enum('boolean', [
  \ html5core#prop('true', ''),
  \ html5core#prop('false', ''),
  \ ])

call html5core#enum('typeString', [
  \ html5core#prop('true', ''),
  \ html5core#prop('hidden', ''),
  \ html5core#prop('text', ''),
  \ html5core#prop('search', ''),
  \ html5core#prop('tel', ''),
  \ html5core#prop('url', ''),
  \ html5core#prop('email', ''),
  \ html5core#prop('password', ''),
  \ html5core#prop('datetime', ''),
  \ html5core#prop('date', ''),
  \ html5core#prop('month', ''),
  \ html5core#prop('week', ''),
  \ html5core#prop('time', ''),
  \ html5core#prop('datetime', ''),
  \ html5core#prop('number', ''),
  \ html5core#prop('range', ''),
  \ html5core#prop('color', ''),
  \ html5core#prop('checkbox', ''),
  \ html5core#prop('radio', ''),
  \ html5core#prop('file', ''),
  \ html5core#prop('submit', ''),
  \ html5core#prop('image', ''),
  \ html5core#prop('reset', ''),
  \ html5core#prop('button', ''),
  \ ])

call html5core#enum('langString', [
  \ html5core#prop('ar', ''),
  \ html5core#prop('it', ''),
  \ html5core#prop('de', ''),
  \ html5core#prop('ja', ''),
  \ html5core#prop('el', ''),
  \ html5core#prop('ko', ''),
  \ html5core#prop('en', ''),
  \ html5core#prop('la', ''), 
  \ html5core#prop('eo', ''), 
  \ html5core#prop('ms', ''), 
  \ html5core#prop('es', ''), 
  \ html5core#prop('ru', ''), 
  \ html5core#prop('fr', ''), 
  \ html5core#prop('zh', ''), 
  \ ])

call html5core#enum('dirString', [
  \ html5core#prop('ltr', ''), 
  \ html5core#prop('rtl', ''), 
  \ html5core#prop('auto', ''), 
  \ ])

call html5core#enum('number', [
  \ html5core#prop('0', ''), 
  \ html5core#prop('1', ''), 
  \ html5core#prop('2', ''), 
  \ html5core#prop('3', ''), 
  \ html5core#prop('10', ''), 
  \ ])

call html5core#enum('coordsString', [
  \ html5core#prop('x1,y1,x2,y2', ''), 
  \ html5core#prop('x,y,r', ''), 
  \ html5core#prop('x1,y1,x2,y2,...', ''), 
  \ ])

call html5core#enum('dropzoneString', [
  \ html5core#prop('copy', ''), 
  \ html5core#prop('move', ''), 
  \ html5core#prop('link', ''), 
  \ ])

call html5core#enum('hrefString', [
  \ html5core#prop('/', ''), 
  \ html5core#prop('./', ''), 
  \ html5core#prop('http://', ''), 
  \ html5core#prop('https://', ''), 
  \ ])

call html5core#enum('targetString', [
  \ html5core#prop('_blank', ''), 
  \ html5core#prop('_self', ''), 
  \ html5core#prop('_parent', ''), 
  \ html5core#prop('_top', ''), 
  \ ])

call html5core#enum('mimeString', [
  \ html5core#prop('application/msexcel', ''),
  \ html5core#prop('application/mspowerpoint', ''),
  \ html5core#prop('application/msword', ''),
  \ html5core#prop('application/pdf', ''),
  \ html5core#prop('application/rss+xml', ''),
  \ html5core#prop('application/atom+xml', ''),
  \ html5core#prop('application/x-httpd-cgi', ''),
  \ html5core#prop('application/x-httpd-php', ''),
  \ html5core#prop('application/x-shockwave-flash', ''),
  \ html5core#prop('application/x-java-vm', ''),
  \ html5core#prop('application/zip', ''),
  \ html5core#prop('audio/mpeg', ''),
  \ html5core#prop('audio/aac', ''),
  \ html5core#prop('audio/ogg', ''),
  \ html5core#prop('audio/midi', ''),
  \ html5core#prop('audio/vnd.rn-realaudio', ''),
  \ html5core#prop('audio/wav', ''),
  \ html5core#prop('image/gif', ''),
  \ html5core#prop('image/jpeg', ''),
  \ html5core#prop('image/png', ''),
  \ html5core#prop('image/svg+xml', ''),
  \ html5core#prop('text/css', ''),
  \ html5core#prop('text/html', ''),
  \ html5core#prop('text/javascript', ''),
  \ html5core#prop('text/plain', ''),
  \ html5core#prop('text/xml', ''),
  \ html5core#prop('video/mpeg', ''),
  \ html5core#prop('video/avi', ''),
  \ html5core#prop('video/mp4', ''),
  \ html5core#prop('video/webm', ''),
  \ html5core#prop('video/ogg', ''),
  \ html5core#prop('video/quicktime', ''),
  \ ])

call html5core#enum('relString', [
  \ html5core#prop('alternate', ''), 
  \ html5core#prop('search', ''), 
  \ html5core#prop('help', ''), 
  \ html5core#prop('prev', ''), 
  \ html5core#prop('next', ''), 
  \ html5core#prop('prefetch', ''), 
  \ html5core#prop('bookmark', ''), 
  \ html5core#prop('tag', ''), 
  \ html5core#prop('license', ''), 
  \ html5core#prop('author', ''), 
  \ ])

call html5core#enum('mediaString', [
  \ html5core#prop('all' , ''),
  \ html5core#prop('screen' , ''),
  \ html5core#prop('tv' , ''),
  \ html5core#prop('handheld' , ''),
  \ html5core#prop('print' , ''),
  \ html5core#prop('projection' , ''),
  \ html5core#prop('tty' , ''),
  \ html5core#prop('braille' , ''),
  \ html5core#prop('aural' , ''),
  \ ])

call html5core#enum('shapeString', [
  \ html5core#prop('rect', ''),
  \ html5core#prop('circle', ''),
  \ html5core#prop('poly', ''),
  \ html5core#prop('default', ''),
  \ ])

call html5core#enum('preloadString', [
  \ html5core#prop('none', ''),
  \ html5core#prop('metadata', ''),
  \ html5core#prop('auto', ''),
  \ ])

call html5core#enum('methodString', [
  \ html5core#prop('get', ''),
  \ html5core#prop('post', ''),
  \ ])

call html5core#enum('dateTimeString', [
  \ html5core#prop('YYYY-MM-DDThh:mm:ssTZD', ''),
  \ ])

call html5core#enum('sandboxString', [
  \ html5core#prop('allow-forms', ''),
  \ html5core#prop('allow-scripts', ''),
  \ html5core#prop('allow-same-origin', ''),
  \ html5core#prop('allow-top-navigation', ''),
  \ ])

call html5core#enum('autocompleteString', [
  \ html5core#prop('on', ''),
  \ html5core#prop('off', ''),
  \ ])

call html5core#enum('keytypeString', [
  \ html5core#prop('rsa', ''),
  \ ])

call html5core#enum('charsetString', [
  \ html5core#prop('UTF-8', ''),
  \ html5core#prop('Shift_JIS', ''),
  \ ])
