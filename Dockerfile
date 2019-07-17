FROM continuumio/anaconda3:4.4.0

RUN conda create -n test --override-channels -c conda-forge r-base==3.5.1 r-ggplot2
