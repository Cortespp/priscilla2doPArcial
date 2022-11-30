#sudo docker build -t exa .
#docker run -i -t exa
#definicion de archivo padre
FROM ubuntu:20.04 

#actualizacion de sistema para evitar errores
RUN 	apt-get -y update && \ 
	apt-get install -y apt-utils && \
	apt-get install -y curl && \
	apt-get install -y nano

COPY	requirements.txt /exa 
COPY	2doparcial.ipynb /exa

#instalacion de jupyter notebook
RUN	apt-get -y install python3-pip && \
	pip install jupyter
