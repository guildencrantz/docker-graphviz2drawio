FROM python:3.10-buster

LABEL io.whalebrew.config.name 'graphviz2drawio'

ARG VERSION

RUN apt-get update && apt-get install -y \
  graphviz \
  graphviz-dev \
  python3-graphviz \
  && rm -rf /var/lib/apt/lists/*

RUN pip3 install graphviz2drawio${VERSION+==$VERSION}

ENTRYPOINT ["/usr/local/bin/graphviz2drawio"]
