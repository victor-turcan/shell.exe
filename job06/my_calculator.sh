#!/bin/bash

# Vérification du nombre de paramètres
if [ $# -ne 3 ]; then
  echo "Usage: $0 <nombre1> <opérateur> <nombre2>"
  exit 1
fi

# Récupération des paramètres
nombre1=$1
operateur=$2
nombre2=$3

# Vérification de l'opérateur et exécution de l'opération correspondante
case $operateur in
  +)
    resultat=$(($nombre1 + $nombre2))
    ;;
  -)
    resultat=$(($nombre1 - $nombre2))
    ;;
  x)
    resultat=$(($nombre1 * $nombre2))
    ;;
  %)
    resultat=$(($nombre1 / $nombre2))
    ;;
  *)
    echo "Opérateur non valide. Les opérations disponibles sont : + - x %"
    exit 1
    ;;
esac

# Affichage du résultat
echo "Résultat : $resultat"
