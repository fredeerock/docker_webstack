# Webstack Dockerfile

- Build using 'docker build -t gcr.io/spartan-perigee-136623/c7-node:v3 .'
- Run using 'docker run -ti -v /Users/fredeerock/Docker/webstack/mnt:/root/mnt gcr.io/spartan-perigee-136623/c7-node:v3 /bin/bash'
- Run in daemon mode using 'docker run -d -p 8080:8080 gcr.io/spartan-perigee-136623/c7-node:v3'
- Test with 'curl http://localhost:8080'
- Push to Google Cloud using 'gcloud docker push gcr.io/spartan-perigee-136623/c7-node:v3'

*Reference: http://kubernetes.io/docs/hellonode/*
