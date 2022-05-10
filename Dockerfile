# partindo da imagem ubuntu
FROM ubuntu:latest

#RUN serve para rodar um comando shell script na criação da imagem docker
# \ indica quebra de linha
RUN apt-get update && apt-get install python3-pip -y \ 
    && apt-get install nano -y

#criando pasta. Ela será CRIADA NO CONTAINER, E NÃO NA MAQUINA 
RUN mkdir /nova-pasta

# ao iniciar o container, o mesmo apresenta o console 
ENTRYPOINT ["/bin/bash"]

# docker build -t minha-imagem .
#docker run --name mi -it minha-imagem
