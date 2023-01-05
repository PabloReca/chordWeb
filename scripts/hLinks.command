#!/bin/bash

# Carpeta del script
dir=$(dirname "$0")

# Busca todos los archivos con extensión .html en la carpeta del script
html_files=$(find $dir -name "*.html")

# Recorre los archivos HTML
for html_file in $html_files; do
  # Lee el contenido del archivo
  html_content=$(cat $html_file)

  # Añade las líneas de código al head del documento HTML
  html_content=${html_content/<head>/<head>  <link rel='preconnect' href='https://fonts.googleapis.com'>  <link rel='preconnect' href='https://fonts.gstatic.com' crossorigin>  <link href='https://fonts.googleapis.com/css2?family=Raleway:wght@200;300;400;500;600;700&display=swap' rel='stylesheet'>  <link rel='stylesheet' href='../../styles/chordStyles.css'>}

  # Sobrescribe el archivo HTML con las modificaciones
  echo "$html_content" > $html_file
done