FROM nginx:1.24-alpine
COPY . /usr/share/nginx/html

LABEL org.opencontainers.image.source=https://github.com/LukasVDB-TM/docker-build-demo-LukasVDB
