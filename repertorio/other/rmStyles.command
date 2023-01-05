#!/bin/bash

# Cambia al directorio donde se encuentra el script
cd "$(dirname "$0")"

# Utiliza find para buscar todos los archivos HTML en la carpeta actual
for archivo in $(find . -name '*.html')
do
    # Utiliza sed para buscar y eliminar todas las etiquetas de estilo
    # del archivo HTML
    sed '/<style/,/<\/style>/d' $archivo > $archivo.tmp

    # Sobreescribe el archivo original con la versión sin estilos
    mv $archivo.tmp $archivo

    echo "Se han eliminado los estilos del archivo $archivo."
done