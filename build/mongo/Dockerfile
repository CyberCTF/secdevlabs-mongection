# Upstream's deployments/mongo.Dockerfile (mongo with upstream's mongo-init.js, which creates the
# app's database user), with the script copied from app/deployments/ and the base image pinned to
# mongo:4.2: upstream takes the latest MongoDB, but the app's driver (mongodb 3.3.2, from
# mongoose 5.7.5 in its package-lock.json) supports MongoDB up to 4.2.
FROM docker.io/library/mongo:4.2

ADD app/deployments/mongo-init.js /docker-entrypoint-initdb.d/
