FROM cpchou/ubuntu_jdk8

RUN sudo echo "Asia/Taipei" > /etc/timezone
RUN wget -O /usr/local/bin/gitlab-runner https://gitlab-runner-downloads.s3.amazonaws.com/latest/binaries/gitlab-runner-linux-amd64
RUN chmod +x /usr/local/bin/gitlab-runner
RUN useradd --comment 'GitLab Runner' --create-home gitlab-runner --shell /bin/bash
RUN gitlab-runner install --user=gitlab-runner --working-directory=/home/gitlab-runner
RUN gitlab-runner start

#RUN wget https://cpchou0701.diskstation.me/forDocker/ncdr_repository.tar
#RUN mkdir -p /root/.m2 
#RUN tar xvf ncdr_repository.tar -C /root/.m2
#RUN rm -f ncdr_repository.tar
