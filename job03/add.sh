# Vérifier si les deux arguments sont présents
if [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 nombre1 nombre2"
  exit 1
fi

# Effectuer l'addition et afficher le résultat
echo "Le résultat de l'addition est : $(($1 + $2))"
