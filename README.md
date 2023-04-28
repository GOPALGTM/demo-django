# demo-django

sudo apt-get update

mkdir project

cd project

sudo apt install python3-pip  nginx -y

pip install django 

django-admin startproject demo

cd demo

git clone https://github.com/GOPALGTM/demo-django

sudo apt install docker.io -y

sudo apt install docker-compose -y

sudo usermod -aG docker $USER

docker-compose up --build -d
