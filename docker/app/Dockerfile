FROM node:10.21.0-jessie

# ARG user=appuser
# ARG group=appuser
# ARG uid=1000
# ARG gid=1000

# RUN chown -R node /usr/local/lib/node_modules
# USER node

RUN npm install --global foundation-cli --unsafe-perm

EXPOSE 3000
EXPOSE 3001

CMD ["npm", "start"]
