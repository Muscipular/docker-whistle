FROM node:8
ADD . ./
RUN mkdir -p /etc/whistle && ln -s /etc/whistle ~/.WhistleAppData && npm install
EXPOSE 8888
CMD node_modules/.bin/w2 start -p 8888 --storage config && tail -f package.json
