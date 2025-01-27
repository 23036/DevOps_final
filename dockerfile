# image Python de base
FROM python:3.9-slim

# le dossier de travail dans le conteneur
WORKDIR /app

# Copier les fichiers nécessaires dans le conteneur
COPY requirements.txt requirements.txt
COPY app.py app.py

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

#  le port que l'app utilise
EXPOSE 5000

# pour démarrer l'application
CMD ["python", "app.py"]
