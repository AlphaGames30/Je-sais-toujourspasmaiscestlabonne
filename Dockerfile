# Python complet (Debian-based) pour inclure audioop
FROM python:3.13-bullseye

# Définir le répertoire de travail
WORKDIR /app

# Copier tout le projet
COPY . /app

# Installer les dépendances du système nécessaires pour certaines libs Python
RUN apt-get update && apt-get install -y \
    build-essential \
    libffi-dev \
    libssl-dev \
    && rm -rf /var/lib/apt/lists/*

# Installer les dépendances Python
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Lancer le bot
CMD ["python", "bot.py"]
