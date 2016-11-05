#!/bin/bash

REPORTE=reporte-`date +%Y%m%d`.log

echo "Reporte generado por  #USER:" > reporte `date +%Y%m%d`.log
echo " " >> $REPORTE
echo " " >> $REPORTE

echo "##############" >> $REPORTE
echo "Interfases Disponibles en el Servidor" >> $REPORTE
echo "##############" >> $REPORTE

echo " " >> $REPORTE

ifconfig >> $REPORTE

echo "##############" >> $REPORTE
echo "Puertos  Habilitados  en el Servidor" >> $REPORTE
echo "##############" >> $REPORTE

netstat -latun | grep LISTEN >> $REPORTE
