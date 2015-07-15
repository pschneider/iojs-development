FROM iojs

EXPOSE 3000

RUN mkdir /src
VOLUME /src
WORKDIR /src

RUN rm /bin/sh && ln -s /bin/bash /bin/sh && \
  npm install -g forever mocha supervisor

RUN cd /src

ENV NODE_ENV development

CMD ["forever", "-c", "iojs", "-w", "index.js"]
