FROM node: 16.3.0
RUN mkdir /opt/items
WORKDIR /opt/items
COPY CoreBot/package.json /opt/items
RUN npm install
COPY CoreBot/. /opt/items
CMD -[-"npm", "start"-]
