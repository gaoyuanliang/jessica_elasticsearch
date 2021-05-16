############Dockerfile###########
FROM openjdk:8

RUN apt-get update
RUN apt-get install -y wget
RUN apt-get install -y git 
RUN apt-get install -y curl
RUN apt-get install -y vim
RUN apt-get install -y tar
RUN apt-get install -y bzip2

RUN apt-get update
RUN apt-get install -y python3-dev
RUN apt-get install -y python3-pip

####neo4j
RUN pip3 install neo4j==4.1.1
RUN pip3 install gdown==3.12.2
RUN pip3 install rdflib==5.0.0
RUN pip3 install requests==2.24.0
RUN pip3 install pandas==1.1.3
RUN pip3 install elasticsearch==7.11.0
RUN pip3 install pyspark==3.1.1

WORKDIR /

####

RUN mkdir /home/jessica
RUN chmod 777 /home/jessica

RUN useradd -u 8877 jessica
USER jessica

####

ENV PYSPARK_PYTHON=/usr/bin/python3
ENV PYSPARK_DRIVER_PYTHON=/usr/bin/python3

####

WORKDIR /home/jessica/

RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-6.7.1.tar.gz
RUN tar xvzf elasticsearch-6.7.1.tar.gz

EXPOSE 5601/tcp
EXPOSE 9200/tcp

WORKDIR /home/jessica/

RUN git clone https://github.com/gaoyuanliang/jessica_elasticsearch.git
RUN mv jessica_elasticsearch/* ./
RUN rm -r jessica_elasticsearch

############Dockerfile############
