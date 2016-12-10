#!/bin/bash

error="$0.err"

#La salida estandar de error estara redireccionando al archivo if-then.sh.err
if cp archivo1.txt archivo1.txt.bck 2> $errorlog
then
echo "El archico1.txt fue correctamente respaldado..."
echo "Eliminando arhivo original"
#ejemplo de un "if" aninado, una condicion contenida dentro de otra..
if rm archivo.txt
then
echo "El archivo original fue eliminado correctamente..."
else
echo "NO se pudo eliminar el archivo..."
fi
else
echo "El archivo1.txt no pudo ser respladado, verifique el log: $errorlog"
fi
