#!/bin/bash
current_dir=`pwd`

docker build -t breezeshared/python_training . && \
id=`docker images breezeshared/python_training -q` && \
docker run --name python_training \
  --detach -p 5678:5678 \
  -itv ${current_dir}/work:/python_training ${id} /bin/bash && \
docker start python_training && \
docker exec -it python_training git clone https://github.com/breeze-shared-inc/python_training_01.git /python_training