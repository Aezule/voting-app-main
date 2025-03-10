# Utilise une image Python officielle
FROM python:3.9-alpine

# Définit le répertoire de travail
WORKDIR /app

# Installe les dépendances système nécessaires
RUN apk add --no-cache gcc musl-dev python3-dev

# Installe Flask, Redis et Requests
RUN pip install flask redis requests

# Copie le reste du code de l'application
COPY azure-vote/ ./azure-vote/

# Expose le port 80
EXPOSE 80

# Commande pour lancer l'application
CMD ["python", "azure-vote/main.py"]
