#!/bin/bash
# Còpies de seguretat amb tar.
# Data: 22/01/2026
# Author: Pol García López

# 1. Comprovar si hi han dos paràmetres
if [ $# -ne 2 ]; then
    echo "Calen dos paràmetres: origen i destí."
    exit 3
fi

# 2. Variables
ORIGEN=$1
DESTI=$2

# 3. Comprovar si existeix el directori a copiar
if [ ! -d "$ORIGEN" ]; then
    echo "Error: El directori d'origen no existeix."
    exit 1
fi

# 4. Nom i ruta del fitxer
NOM_DIR=$(basename "$ORIGEN")
DATA=$(date +%Y%m%d)
NOM_FITXER="backup_${NOM_DIR}_${DATA}.tar.gz"
RUTA_FINAL="$DESTI/$NOM_FITXER"

# 5. Comprovar si existeix el fitxer al destí
if [ -f "$RUTA_FINAL" ]; then
    echo "Error: El fitxer $NOM_FITXER ja existeix."
    exit 2
fi

# 6. Copia amb tar
tar -czf "$RUTA_FINAL" "$ORIGEN"

# 7. Missatge final
echo "Còpia guardada correctament a: $RUTA_FINAL"
