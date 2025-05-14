#!/bin/bash
# Script para crear entorno virtual con R y Jupyter Notebook

# Nombre del entorno
R_ENAFY="r_env"

echo "Creando entorno virtual $R_ENAFY con R y Jupyter..."
conda create -n $R_ENAFY r-essentials r-base -y

echo "Activando entorno..."
conda activate $R_ENAFY

echo "Instalando kernel R para Jupyter..."
R -e "IRkernel::installspec()"

echo "Listo. Ejecuta 'conda activate $R_ENAFY' y luego 'jupyter notebook'"
