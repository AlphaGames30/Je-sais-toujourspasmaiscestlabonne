# Utiliser Python 3.13 slim
FROM python:3.13-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier tous les fichiers du projet
COPY . /app

# Installer pip et dépendances Python
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port utilisé par Flask (si utilisé)
EXPOSE 8080

# Lancer le bot
CMD ["python", "bot.py"]
