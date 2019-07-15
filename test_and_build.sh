docker build -t shaharx/react-test -f ./client/Dockerfile.dev ./client

docker run shaharx/react-test npm test -- --coverage

docker build -t shaharx/fsi-client ./client
docker build -t shaharx/fsi-nginx ./nginx
docker build -t shaharx/fsi-server ./server
docker build -t shaharx/fsi-worker ./worker

docker push shaharx/fsi-client 
docker push shaharx/fsi-nginx
docker push shaharx/fsi-server
docker push shaharx/fsi-worker