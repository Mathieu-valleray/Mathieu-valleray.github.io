#!/bin/bash

# Naviguer vers le répertoire du projet
cd Jaime-le-shell/
while true; do
    # Ajouter tous les fichiers modifiés
    git add .

    # Vérifier s'il y a des changements à committer
    if ! git diff-index --quiet HEAD --; then
        # Commiter les changements avec un message
        git commit -m "Mise à jour automatique $(date +'%Y-%m-%d %H:%M:%S')"
        
        # Pousser les changements vers GitHub
        git push origin main  # Remplace 'main' par la branche que tu utilises
    fi

    # Attendre 10 minutes (600 secondes) avant la prochaine vérification
    sleep 600
done
