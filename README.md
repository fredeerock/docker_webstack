# Webstack Dockerfile
Primarily used to get node and redis up and running. It will also `npm install` and `npm start` anything inside the "project" directory.

- Build using 'docker build -t gcr.io/spartan-perigee-136623/c7-node:v4 .'
- Run using 'docker run -ti -v /Users/fredeerock/Docker/webstack/mnt:/root/mnt gcr.io/spartan-perigee-136623/c7-node:v4 /bin/bash'
- Run in daemon mode using 'docker run -d -p 8080:8080 gcr.io/spartan-perigee-136623/c7-node:v4'
- Test with 'curl http://localhost:8080'
- Push to Google Cloud using 'gcloud docker push gcr.io/spartan-perigee-136623/c7-node:v4'

*Reference: http://kubernetes.io/docs/hellonode/*
