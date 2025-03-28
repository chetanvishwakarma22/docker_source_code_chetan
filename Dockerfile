FROM ubuntu:22.04
MAINTAINER chetan
ARG TEST=/home/ubuntu/test20
ARG VALUE=${VALUE}
ENV TEST=${TEST}
WORKDIR $TEST
#WORKDIR /home/ubuntu/test20
RUN pwd
RUN echo "welcome to docker image" >> file20
#COPY Shell_scripts/factorial_of_number.sh .
COPY . .
#CMD [ "/bin/bash" ]
#ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.39/bin/apache-tomcat-10.1.39.tar.gz .
ADD apache-tomcat-10.1.39.tar.gz .
#CMD [ "/bin/bash","/home/ubuntu/test20/Shell_scripts/factorial_of_number.sh", "5" ]
#ENTRYPOINT [ "/bin/bash","/home/ubuntu/test20/Shell_scripts/factorial_of_number.sh", "5" ]
#CMD [ "/bin/bash" ]
#ENTRYPOINT [ "/bin/bash" ]                                                                                                                                   1,11          Top
