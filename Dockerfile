FROM continuumio/anaconda3:4.4.0

RUN conda create -n test -c conda-forge r-base==3.5.1 r-ggplot2

RUN conda activate test

RUN R
