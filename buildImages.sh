echo "Building all Dockerfiles"
cd vote
docker build -t docker1234432156/vote-app .
docker login -u "docker1234432156" -p "password123" docker.io
docker push docker1234432156/vote-app
cd ..
cd result
docker build -t docker1234432156/result-app .
docker push docker1234432156/result-app
docker rm -f redis db vote-app result-app worker-app
cd ..
docker logout
