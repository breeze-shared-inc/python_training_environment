FROM continuumio/miniconda3

RUN mkdir /python_training
WORKDIR /python_training
RUN conda init