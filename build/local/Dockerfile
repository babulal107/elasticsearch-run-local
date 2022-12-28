FROM docker.elastic.co/elasticsearch/elasticsearch:7.4.0

RUN yum install -y wget && yum install -y unzip
RUN mkdir -p ./plugins/ik
WORKDIR ./plugins/ik
RUN wget https://github.com/medcl/elasticsearch-analysis-ik/releases/download/v7.4.0/elasticsearch-analysis-ik-7.4.0.zip

RUN echo $PWD
RUN unzip elasticsearch-analysis-ik-7.4.0.zip && rm elasticsearch-analysis-ik-7.4.0.zip

WORKDIR /usr/share/elasticsearch/bin
RUN elasticsearch-plugin list && elasticsearch-plugin install analysis-smartcn

ADD config /usr/share/elasticsearch/config/.
ADD dictionary /usr/share/elasticsearch/config/.
RUN chown elasticsearch:root -R  /usr/share/elasticsearch/config

WORKDIR /usr/share/elasticsearch