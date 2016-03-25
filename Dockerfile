FROM phusion/passenger-nodejs:0.9.18

ENV PATH node_modules/.bin:$PATH
WORKDIR /opt/

ADD worker.js /opt/worker.js
ADD package.json /opt/package.json

RUN npm install

ENTRYPOINT ["node", "worker.js"]
