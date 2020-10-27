#!/bin/bash

docker build -t breezeshared/python_training . && \
docker run --name python_training \
  --detach -p 5678:5678 \
  -itv "$PWD/work:/python_training" breezeshared/python_training /bin/bash && \
docker start python_training && \
docker exec -it python_training git clone https://github.com/breeze-shared-inc/python_training_01.git /python_training
