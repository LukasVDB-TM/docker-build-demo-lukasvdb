# Basis image
FROM python:3.9-slim

# Werk directory
WORKDIR /app

# Kopieer de requirements file
COPY requirements /app

# Installeer de vereiste packages
RUN pip install -r requirements

# Kopieer de app files naar de container
COPY app.py /app

LABEL org.opencontainers.image.source=https://github.com/LukasVDB-TM/docker-build-demo-lukasvdb

# Exposeer poort 5000 en start de applicatie
EXPOSE 5000
CMD ["python", "app.py"]
