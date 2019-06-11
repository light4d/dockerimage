docker build -t light4d/gojava -f gojava/Dockerfile --no-cache .
docker push light4d/gojava
docker build -t light4d/gonode -f gonode/Dockerfile --no-cache .
docker push light4d/gonode