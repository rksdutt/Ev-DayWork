#!/bin/bash

<< task 
Deploy a Django app
and Handling the errors
task


code_clone() {
	echo "Cloning the django app..."
	git clone https://github.com/rksdutt/django-notes-app.git

}


install_requirements() {
	echo "Installing dependencies"
	sudo apt-get install docker.io nginx -y
}


required_restart() {
	sudo chown $USER /var/run/docker.sock
	sudo systemctl enable docker
	sudo systemctl enable nginx
	sudo systemctl restart docker
}

deploy() {
	docker build -t rakeshdutt/notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}

push_to_docker_repo() {
    	echo "Logging in to Docker Hub..."
    	docker login -u $rakeshdutt -p $Dutta@1994

    	echo "Tagging Docker image..."
    	docker tag rakeshdutt/notes-app:latest $rakeshdutt/notes-app:latest

    	echo "Pushing Docker image to Docker Hub..."
    	docker push $rakeshdutt/notes-app:latest
}
echo "********** DEPLOYMENT STARTED ************"

if code_clone; then
	echo "the code dir already exists"
	cd django-notes-app
fi

if ! install_requirements; then 
	echo "Installation failed"
	exit 1
fi

if ! required_restart; then
	echo "System fault identified"
	exit 1
fi
deploy

echo "********** DEPLOYMENT FINISH ************"
