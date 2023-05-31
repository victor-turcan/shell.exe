#!/bin/bash

# Vérifier si les deux arguments sont présents
if [ $# -ne 2 ]; then
  echo "Usage: $0 fichier_destination fichier_source"
  exit 1
fi

# Nom du fichier de destination
fichier_destination=$1

# Nom du fichier source
fichier_source=$2

# Créer le fichier de destination et le remplir avec le contenu du fichier source
cat "$fichier_source" > "$fichier_destination"

# Afficher un message de confirmation
echo "Le fichier $fichier_destination a été créé avec succès et rempli avec le contenu de $fichier_source."
