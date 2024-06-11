#!/bin/bash

# Solicitar el nombre al usuario
read -p "Ingrese un nombre: " nombre

# Hacer la solicitud a la API
response=$(curl -s "https://api.genderize.io/?name=${nombre}")

# Procesar la respuesta y mostrar la información obtenida
gender=$(echo $response | jq -r '.gender')
probability=$(echo $response | jq -r '.probability')

if [ "$gender" != "null" ]; then
    echo "Nombre: $nombre"
    echo "Género probable: $gender"
    echo "Probabilidad: $(echo "$probability * 100" | bc)%"
else
    echo "No se encontró información para el nombre: $nombre"
fi
