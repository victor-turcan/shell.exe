#!/bin/bash

# Chemin vers le fichier de logs
log_file="/var/log/auth.log"

# Chemin vers le dossier de sauvegarde
backup_dir="Backup"
mkdir -p "$backup_dir"

# Date et heure d'exécution du script
current_date=$(date +'%d-%m-%Y-%H-%M')

# Extraction du nombre de connexions à partir des logs
num_connections=$(grep -c "session opened for user" "$log_file")

# Création du fichier avec le nombre de connexions et la date
filename="number_connection-$current_date"
echo "$num_connections" > "$filename"

# Archivage du fichier avec tar
tar -czvf "$filename.tar.gz" "$filename"
rm $filename

# Déplacement de l'archive dans le sous-dossier Backup
mv "$filename.tar.gz" "$backup_dir/"

# Affichage du message de succès
echo "Le nombre de connexions a été extrait et sauvegardé dans $backup_dir/$filename.tar.gz"
