docker-compose up --build

docker rm kata-assembly

docker run -it --name kata-assembly --mount type=bind,source="$(pwd)",target=/code kata-assembly_app
