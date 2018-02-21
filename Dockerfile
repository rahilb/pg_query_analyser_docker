FROM buildpack-deps:jessie

RUN apt-get update &&\
    apt-get install -y qt4-dev-tools qt4-qmake libqt4-dev &&\
    git clone https://github.com/WoLpH/pg_query_analyser.git /pg_query_analyser &&\
    cd /pg_query_analyser && qmake && make && make install

CMD [ "echo", "Usage: docker run -it -v /path/to/pg/logs/on/host:/pglogs pg_query_analyzer:latest pg_query_analyser --input-file=/pglogs/pg.log --output-file=/pglogs/report.html"]