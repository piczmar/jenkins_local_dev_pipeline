docker run -d --name jenkins-slave1 --restart=unless-stopped \
           -v /$HOME/jenkins-slave1:/home/jenkins \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -e JENKINS_URL=http://172.17.0.1:8082 \
           foxylion/jenkins-slave


docker run -d --name jenkins-slave2 --restart=unless-stopped \
           -v $HOME/jenkins-slave2:/home/jenkins \
           -v /var/run/docker.sock:/var/run/docker.sock \
           -e JENKINS_URL=http://172.17.0.1:8082 \
           foxylion/jenkins-slave