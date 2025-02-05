FROM node:23-slim
RUN npm install
ARG USERNAME=am
RUN adduser -D -h /apps -s /bin/sh ${USERNAME}
COPY --chown=${USERNAME}:${USERNAME} . /apps
WORKDIR /apps
RUN npm run build
EXPOSE 8000
CMD ["npm", "run", "preview"]
 