FROM node:10.21.0-jessie

LABEL maintainer="Brendan Anderson <brendan_anderson@hcpss.org>"
LABEL vendor="Howard County Public School System"
LABEL org.hcpss.hn.version="1.0.0"

COPY ./headline-news/package.json      /app/
COPY ./headline-news/package-lock.json /app/
COPY ./headline-news/.babelrc          /app/
COPY ./headline-news/gulpfile.babel.js /app/

WORKDIR /app

RUN npm install --global foundation-cli --unsafe-perm \
  && npm install

EXPOSE 3000
EXPOSE 3001

CMD ["npm", "start"]
