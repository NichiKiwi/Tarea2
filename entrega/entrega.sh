# Entrega Prisila Alvarengo - 323285
#/bin/bash
clear

LetraContenidaA(){
	valido3=0
	while [ $valido3 -ne 1 ]
	do
		read -p "Ingrese palabra: " contenida
		if [[ "${contenida,,}" =~ [aA] ]]; then
			echo ""
			echo "Contiene la letra a"
			sleep 1
			valido3=1
		else
			echo ""
			read -n 1 -p " no contiene la letra a, si quiere finalizar ingrese 1, en otro caso ingrese 0: " valido3
			echo ""
			contenida="" 
		fi
	done
}

LetraContenidaO(){
	valido3=0
	while [ $valido3 -ne 1 ]
	do
		read -p "Ingrese palabra: " contenida
		if [[ "${contenida,,}" =~ [oO] ]]; then
			echo ""
			echo "Contiene la letra o"
			sleep 1
			valido3=1
		else
			echo ""
			read -n 1 -p " no contiene la letra o, si quiere finalizar ingrese 1, en otro caso ingrese 0: " valido3
			echo ""
			contenida="" 
		fi
	done
}

LetraContenidaB(){
	valido3=0
	while [ $valido3 -ne 1 ]
	do
		read -p "Ingrese palabra: " contenida
		if [[ "${contenida,,}" =~ [bB] ]]; then
			echo ""
			echo "Contiene la letra b"
			sleep 1
			valido3=1
		else
			echo ""
			read -n 1 -p " no contiene la letra b, si quiere finalizar ingrese 1, en otro caso ingrese 0: " valido3
			echo ""
			contenida="" 
		fi
	done
}

Algoritmo() {
      read -p "Ingrese palabra a evaluar: " capicuaNormal
      capicua=$(echo "$capicuaNormal" | tr '[:upper:]' '[:lower:]') 
      longitud=$(echo -n "$capicua" | wc -m) 
      for ((i=$longitud; i>=0; i--)); do 
          reves=${capicua:$i:1} 
          revesPalabra=${revesPalabra}${reves} 
      done
      if [ "$capicua" == "$revesPalabra" ]; then 
          echo "Es capicúa"
          sleep 3
      else
          echo "No es capicúa"
          sleep 3
      fi
      revesPalabra=""
}

salir(){
	read -n 1 -p "Para confirmar que quiere salir ingrese 1, en otro caso ingrese 0: " continuar
}

otroCaso(){
	echo "No es una opción válida"
    sleep 2
}

continuar=0
while [ $continuar -ne 1 ]
do

clear
	echo "Menú Principal"
	echo "Ingrese el número de la opción a la que desee ingresar"
    echo "1) Verificar que la palabra contenga la letra a"
    echo "2) Verificar que la palabra contenga la letra o"
    echo "3) Verificar que la palabra contenga la letra b"
    echo "4) Verificar si palabra es capicua"
    echo "5) Salir"

eleccion=""
	read -p "Ingrese opción: " eleccion

    case $eleccion in
    1) LetraContenidaA
    ;;
    2) LetraContenidaO
    ;;
    3) LetraContenidaB
    ;;
    4) Algoritmo
    ;;
    5) salir
    ;;
    *) otroCaso
    esac
done

clear

