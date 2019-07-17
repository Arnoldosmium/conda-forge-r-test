FROM continuumio/anaconda3:4.4.0

RUN conda create -n test --override-channels -c conda-forge -c r -c anaconda r-base==3.5.1 r-ggplot2

RUN conda activate test

RUN R
