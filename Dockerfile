# Image Python 3.13 minimale (slim)
FROM python:3.13-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier tous les fichiers du projet
COPY . /app

# Installer les dépendances système légères nécessaires
RUN apt-get update && apt-get install -y \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Installer pip et dépendances Python
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port Flask
EXPOSE 8080

# Lancer le bot
CMD ["python", "bot.py"]
