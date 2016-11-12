#!/bin/bash

# ejemplo de redireccionamiento de datos

WRKDIR= `pwd`
OUTDIR=$WRKDIR/../misc

echo $WRKDIR
echo $OUTDIR

cp algo otro../misc


cp -v casa perro $OUTDIR/ >> $OUTDIR/out.log 2>> $OUTDIR/error.log


## Ejemplo de expresiones regulares

OBJETIVO=dhcp.conf
SALIDA=clientes_ocupados.log

grep -v "#" tarea2 | sed '/^\s*$/d' | grep fixed | cut -d " " -f2 | sed 's/;//' | cut -d '.' -f4 > clientes_ocupados.log
