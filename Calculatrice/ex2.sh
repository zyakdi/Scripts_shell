#!/bin/bash

# Reconnaitre les différents arguments (parenthèse ouvrante/fermante, nombre, opérateur)

#for((i=1;i<=$#;i++))
# Cette syntaxe fonctionne si par la suite on remplace "$i" par "${!i}"
for i in $*
do
echo $i
	case $i in
		"(")
			echo "parenthèse ouvrante"
			;;
		")")
			echo "parenthèse fermante"
			;;
		"+")
			echo "somme"
			;;
		"-")
			echo "soustraction"
			;;
		"x")
			echo "multiplication"
			;;
		"/")
			echo "division"
			;;
		*)
			echo "nombre"
			;;
	esac
done

 
