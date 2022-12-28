## Setup ElasticSearch & Kibana on local


#### run es & kibana on local:
``
make local-setup
``

#### Down es & kibana :
``
make local-down
``

#### Build Dockerfile :
`docker build -t babulal107/elasticsearch .`

#### Run docker with exec :
`docker run -it babulal107/elasticsearch /bin/bash`

#### Elasticsearch
`http://localhost:9200/`

#### Kibana
`http://localhost:5601/app/kibana#/dev_tools/console?_g=()`

### Dump data to ES
`elasticdump
--input=/Users/apple/Downloads/es-dump/one_month_ZB_v1.json
--output=http://localhost:9200/zb_news_query`