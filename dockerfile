FROM node:latest

WORKDIR /home/node/app
COPY . rhpidfyre.io/

WORKDIR rhpidfyre.io/src
RUN npm run build
RUN mv -f ./dist ../buildsrc

WORKDIR ../buildsrc
CMD npm run dev -- --host

EXPOSE 5173
