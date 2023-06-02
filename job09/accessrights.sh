#!/bin/bash

# Chemin du fichier CSV contenant les informations des utilisateurs
CSV_FILE="/home/jules/Bureau/Shell.exe/job09/Shell_Userlist.csv"

  # Lire le fichier CSV ligne par ligne
  while IFS=',' read -r username role
  do
    # Créer l'utilisateur sur le système
    useradd -m $prenom.$nom -u $Id -p $Password

    # Vérifier si l'utilisateur est un administrateur
    if [[ $role == "Admin" ]]; then
      # Donner à l'utilisateur le rôle de superutilisateur (root)
      usermod -aG sudo $username
    fi

  done < $CSV_FILE

  echo "Les utilisateurs ont été créés et les droits ont été attribués."
else
  echo "Aucun changement détecté dans le fichier CSV."
fi
