#FROM Raspian
#download and install Docker
apt update && apt full-upgrade -y && apt autoremove -y
curl -ssl https://get.docker.com | sh
usermod -a -G docker $USER

#download and install docker-compose
apt-get -y install python-pip
pip install docker-compose

#install git, and other favorite software (optional), preferably some form of deployment automation for updates etc. 
apt install git
docker run hello-world
#run docker compose file of teapots
#cron job - run apt update and apt full-upgrade weekly. report 200 OK