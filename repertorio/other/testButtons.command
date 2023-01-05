#! /bin/bash

# Buscar todos los archivos que se llaman A.html
for file in A.html
do
  # Insertar las líneas de código en la línea 18
  sed -i '18i\
  <div class="actionButtons">\
    <div><a href="Bb.html">\
      <button>Subir semitono</button>\
    </a> </div>\
    \
    <div><a href="Ab.html">\
      <button>Bajar mediotono</button>\
    </a> </div>\
    \
    <div><a href="numbers.html">\
      <button>Números</button>\
    </a> </div>\
    \
    <div><a href="lyrics.html">\
      <button>Letra</button>\
    </a> </div>\
    \
    <div><input type="button" value="Descargar" onclick="window.print()"></div>\
  </div>' $file
done
