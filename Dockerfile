# Image Python complète
FROM python:3.13

WORKDIR /app

# Copier tout le projet
COPY . /app

# Installer les dépendances
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Lancer le bot
CMD ["python", "bot.py"]
