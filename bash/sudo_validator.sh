#!/bin/bash
# Comprovaci\Uffffffff superusuari
# Data: 22/01/2026
# Author: Pol Garc\UffffffffL\Uffffffff
#!/bin/bash

if [ $EUID -eq 0 ]; then
    echo "Ets el super usuari."
else
    echo "No ets superusuari."
    exit 1
fi
