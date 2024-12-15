# Makefile pour guessinggame.sh

# Nom du script
SCRIPT = guessinggame.sh

# Nom du fichier README.md
README = README.md

# Nombre de lignes de code dans guessinggame.sh
LINES = $(shell wc -l < $(SCRIPT))

# Cible par défaut
all: $(SCRIPT) $(README)

# Rendre le script exécutable
$(SCRIPT):
	chmod +x $(SCRIPT)

# Générer le README.md
$(README):
	echo "# Projet Guessing Game" > $(README)
	echo "Date et heure de la génération : $(shell date)" >> $(README)
	echo "Nombre de lignes dans guessinggame.sh : $(LINES)" >> $(README)

# Cible pour exécuter le jeu
run: $(SCRIPT)
	./$(SCRIPT)

# Cible de nettoyage
clean:
	rm -f $(README)
