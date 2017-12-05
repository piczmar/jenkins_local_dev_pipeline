docker run -d --name jenkins -p 8082:8080 -p 50000:50000 \
           -v $HOME/jenkins:/var/jenkins_home \
           foxylion/jenkins