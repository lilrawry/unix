#!/bin/bash

# Obtenir le nombre de fichiers dans le répertoire actuel (en excluant les répertoires)
correct_guess=$(ls -l | grep -v '^d' | wc -l)

# Boucle jusqu'à ce que l'utilisateur devine correctement
while true; do
    # Demander à l'utilisateur de deviner le nombre de fichiers
    echo "Devinez le nombre de fichiers dans le répertoire actuel :"
    read guess

    # Vérifier si la réponse de l'utilisateur est trop basse, trop élevée ou correcte
    if [[ $guess -lt $correct_guess ]]; then
        echo "Votre estimation est trop basse."
    elif [[ $guess -gt $correct_guess ]]; then
        echo "Votre estimation est trop élevée."
    else
        echo "Bravo, vous avez trouvé le bon nombre de fichiers !"
        break  # Quitter la boucle lorsque l'utilisateur devine correctement
    fi
done
