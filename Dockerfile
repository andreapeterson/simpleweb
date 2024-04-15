# Base Image - alpine is smaller than slim
FROM python:alpine

# Change working directory(move to not accidentally overwrite important directories)
WORKDIR /usr/app

# Moves filesystem from our local machine to filesystem inside of temprary container created during build system (specifically in /app)
COPY ./ ./

# Install dependencies
RUN pip install Flask

# Default command
CMD ["python", "main.py"]

# Ran 'docker build -t andreapeterson/simpleweb:latest .' then 'docker run -p 8080:8080 andreapeterson/simpleweb:latest' -> from 8080(can be anything) to 8080(what your app is listening to)