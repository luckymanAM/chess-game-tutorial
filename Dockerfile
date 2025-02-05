FROM node:20-alpine
LABEL project = "learning"
ARG USERNAME=am
RUN adduser -D -h /apps -s /bin/sh ${USERNAME}
WORKDIR /apps
COPY --chown=${USERNAME}:${USERNAME} . /apps
RUN npm install && npm run build
EXPOSE 4173
CMD ["npm", "run", "preview","--","--host","4173"]
 