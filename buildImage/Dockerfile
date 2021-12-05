FROM node:16.13.0-alpine3.14

RUN npm install -g tiddlywiki@5.2.0 --registry=https://registry.npm.taobao.org

EXPOSE 8080

VOLUME ["/wiki"]

WORKDIR /wiki

COPY startup.sh /startup.sh

RUN chmod +x /startup.sh

CMD ["/startup.sh"]


