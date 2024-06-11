#!/bin/bash

# Inicializar variables
start_time=0
elapsed_time=0
running=false

# Función para mostrar el tiempo transcurrido
show_time() {
    if $running; then
        current_time=$(date +%s)
        elapsed_time=$((current_time - start_time))
    fi
    echo "Tiempo transcurrido: $elapsed_time segundos"
}

# Función para iniciar el cronómetro
start() {
    if $running; then
        echo "El cronómetro ya está en marcha."
    else
        start_time=$(date +%s)
        running=true
        echo "Cronómetro iniciado."
    fi
}

# Función para detener el cronómetro
stop() {
    if $running; then
        current_time=$(date +%s)
        elapsed_time=$((current_time - start_time))
        running=false
        echo "Cronómetro detenido."
        show_time
    else
        echo "El cronómetro no está en marcha."
    fi
}

# Función para reiniciar el cronómetro
reset() {
    start_time=0
    elapsed_time=0
    running=false
    echo "Cronómetro reiniciado."
}

# Menú de opciones
while true; do
    echo ""
    echo "Seleccione una opción:"
    echo "1. Iniciar"
    echo "2. Detener"
    echo "3. Reiniciar"
    echo "4. Mostrar tiempo transcurrido"
    echo "5. Salir"
    read -p "Opción: " option

    case $option in
        1) start ;;
        2) stop ;;
        3) reset ;;
        4) show_time ;;
        5) echo "Saliendo..."; break ;;
        *) echo "Opción no válida." ;;
    esac
done