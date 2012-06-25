FROM momoto/mecab-on-ubuntu:latest
ENV WORKDIR /mecab
WORKDIR ${WORKDIR}

COPY ./input.txt ${WORKDIR}
RUN apt-get update && apt-get install -y mecab
RUN mecab input.txt

VOLUME [ ${WORKDIR} ]
ENTRYPOINT [ "mecab" ]
CMD [ "input.txt" ]
