#!/bin/bash

while true; do
    # Mostrar el menú
    clear
    echo "-----MENU-----"
    echo "Seleccione una opción:"
    echo "1. Listar el contenido de un fichero (carpeta)"
    echo "2. Crear un archivo de texto con una línea de texto"
    echo "3. Comparar dos archivos de texto"
    echo "4. Usar el comando awk"
    echo "5. Usar el comando grep"
    echo "6. Salir"

    # Leer la opción del usuario
    read opcion

    case $opcion in
        1)
            clear
            echo Opcion_1: Listar el contenido de una carpeta
            echo "Ingrese la ruta absoluta al fichero o carpeta:"
            read ruta
            ls -al $ruta
            sleep 3
            ;;
        2)
            clear
            echo Opcion_2: Crear un archivo de texto con una línea de texto
            echo "Ingrese la cadena de texto para almacenar en el archivo:"
            read texto
            echo $texto > ejemplo.txt
            echo "Archivo creado exitosamente."
            sleep 3
            ;;
        3)
            clear
            echo Opcion_3: Comparar dos archivos de texto
            echo "Ingrese la ruta del primer archivo:"
            read archivo1
            echo "Ingrese la ruta del segundo archivo:"
            read archivo2
            diff $archivo1 $archivo2
            sleep 3
            ;;
        4)
            clear
            echo Opcion_4: Usar el comando awk
            echo "Ejemplo de uso de awk:"
            echo "Contenido del archivo 'ejemplo.txt':"
            cat /home/kali/Documents/Hands4/ejemplo.txt
            echo "Mostrar la segunda columna usando awk:"   
	    '{print $2}' ejemplo.txt
            sleep 3
            ;;
        5)
            clear
            echo Opcion_5: Usar el comando grep
            echo "Ejemplo de uso de grep:"
            echo "Introduce la palabra a buscar en el archivo 'ejemplo.txt':"
	    read word
            grep $word /home/kali/Documents/Hands4/ejemplo.txt
            sleep 3
            ;;
        6)
            # Opción 6: Salir del script
            echo "Saliendo del script. ¡Hasta luego!"
            sleep 3
            exit 0
            ;;
        *)
            # Opción no válida
            echo "Por favor, seleccione una opción válida."
            sleep 3
            ;;
    esac
done
