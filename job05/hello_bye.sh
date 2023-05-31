#!/bin/bash

# Vérifier si l'argument est présent
if [ $# -ne 1 ]; then
  echo "Usage: $0 [Hello|Bye]"
  exit 1
fi

# Récupérer l'argument
argument=$1

# Vérifier la valeur de l'argument et afficher le message correspondant
if [ "$argument" = "Hello" ]; then
  echo "Bonjour, je suis un script !"
elif [ "$argument" = "Bye" ]; then
  echo "Au revoir et bonne journée"
else
  echo "Argument non valide : $argument. Utilisez 'Hello' ou 'Bye'."
  exit 1
fi
