FROM continuumio/anaconda3:4.4.0

RUN conda config --set ssl_verify false 

RUN conda create -n test --override-channels -c conda-forge -c r -c anaconda r-base==3.5.1 r-ggplot2 r-arrow

RUN echo "library('ggplot2');library('arrow');" > /test.r && /opt/conda/envs/test/bin/Rscript /test.r
