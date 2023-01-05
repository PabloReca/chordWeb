#!/bin/bash

# Recorre todos los archivos del directorio /home/usuario/html
for file in /Users/pablo/Documents/workspace/chordWeb/repertorio/other/*.html; do
  # Utiliza el comando tidy para formatear el código HTML del archivo
  tidy -q -i -m -w 120 "$file"
done