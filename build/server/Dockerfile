# Upstream's deployments/mongection.Dockerfile with these changes: the base image is pinned to
# node:22 (upstream: node, i.e. latest; 22 was current at the secDevLabs commit); the app folder
# is copied from app/ (upstream's build context is the app folder itself); and DBUSER / DBPASS
# from upstream's deployments/docker-compose.yml are baked in. Dependencies come from upstream's
# package-lock.json.
FROM docker.io/library/node:22
WORKDIR /usr/share/mongection
ADD app/ /usr/share/mongection

ENV DBUSER=mongection \
    DBPASS=mongection

RUN apt-get update && \
    npm install

CMD node src/app.js
