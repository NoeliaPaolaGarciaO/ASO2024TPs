# ASO2024TPs2
<img src="./TP2/Captura de pantalla_2024-04-08_14-06-40.png" />

- Compilado del programa procesos.c (código fuente en lenguaje C)
- Ejecución de dicho programa
- Listado de procesos corriendo
- Captura de pantalla de la consola


# ASO2024TPs3

#trabajopractico nº3 #ejercicio1 ejecución con hilos y sin hilos

#conhilos

ejecución con hilos

#1.a) Con respecto al tiempo de ejecución del script conhilos.py, se puede notar que es bastante consistente a lo largo de las ejecuciones, rondando alrededor de los 4 segundos en cada corrida. Este comportamiento sugiere que el uso de hilos está optimizando la ejecución del programa de manera eficiente.
#sinhilos

ejecución sin hilos

1.A) Tiempo de ejecución: El código conhilos.py, que utiliza hilos (threads), tiende a tener un tiempo de ejecución más consistente y generalmente más corto en comparación con sinhilos.py, que no utiliza hilos. Previsibilidad: El tiempo de ejecución del código conhilos.py tiende a ser más predecible en comparación con sinhilos.py. Esto se debe a que el uso de hilos permite que las tareas se ejecuten de manera concurrente, lo que puede aprovechar mejor los recursos del sistema y reducir la latencia asociada con la espera de tareas bloqueantes.

El uso de hilos puede mejorar el rendimiento y la previsibilidad en ciertos casos, especialmente cuando se trata de tareas que pueden ejecutarse de manera independiente y concurrente. Sin embargo, es importante tener en cuenta que el uso de hilos también puede introducir complejidad adicional en el código y requerir cuidado al manejar recursos compartidos para evitar problemas como condiciones de carrera.

#COMPARACION

ejecución sin hilos

1.B) Al comparar el tiempo de ejecución con un compañero, es poco probable que los tiempos sean exactamente iguales. Incluso en sistemas idénticos, pequeñas variaciones en la carga del sistema o en la asignación de recursos pueden influir en los tiempos de ejecución. Sin embargo, si los sistemas son similares y no hay otros procesos importantes en ejecución, es posible que los tiempos de ejecución sean comparables dentro de un margen aceptable de diferencia.

1.C) #suma_resta ejecución sin hilos

#suma_resta_descomentado ejecución sin hilos

Después de descomentar las líneas 11, 12, 19 y 20 del código y ejecutarlo nuevamente, se observa un cambio en el valor final y en el tiempo de ejecución en comparación con la ejecución inicial.

En la primera versión del código, las líneas comentadas en las funciones sumador() y restador() se encargan de simular una carga de trabajo adicional al ejecutar un bucle interno 1000 veces. Sin embargo, al comentar estas líneas, se elimina esta carga de trabajo adicional, lo que significa que el proceso principal y los subprocesos ejecutan las operaciones de suma y resta mucho más rápidamente.

Debido a que los subprocesos thr1 y thr2 comparten la variable acumulador, al eliminar la carga de trabajo adicional, ambos subprocesos terminan más rápidamente sus iteraciones de suma y resta. Esto resulta en un valor final diferente para acumulador en comparación con la ejecución inicial.

El valor final se debe a la competencia por el recurso compartido (la variable acumulador) entre los subprocesos. Cuando los subprocesos realizan las operaciones más rápidamente, es más probable que el valor final se vea afectado por condiciones de carrera y otros problemas de concurrencia.

Además, el tiempo de ejecución también se reduce significativamente debido a la eliminación de la carga de trabajo adicional, lo que hace que los subprocesos terminen más rápido.

2-A Puzzle

El cambio de turno lo puse antes de salir de la zona critica. Lo hice asi para que cuando un hilo come una hamburguesa deba pasar al otro turno para que pueda entrar en la seccion critica y comer una hamburguesa.

si no quedan hamburguesas entra al else, alli pongo el cambio de turno y paso al turno siguiente para que no quede en un bucle infinito mirando la bandeja vacia

2-B

Viendo la figura como sería para el problema de las hamburguesas con 2 comensales y 8 hamburgesas.

esquema
