# Utiliser une image Go officielle comme base
FROM golang:1.21.5

# Définir le répertoire de travail à l'intérieur du conteneur
WORKDIR /app

# Copier les fichiers go.mod et main.go dans le conteneur
COPY go.mod ./
COPY main.go ./

# Télécharger les dépendances
RUN go mod download

# Compiler l'application
RUN go build -o main .

# Définir le point d'entrée pour démarrer l'application
CMD ["./main"]

# Exposer le port sur lequel l'application est accessible
EXPOSE 8090
