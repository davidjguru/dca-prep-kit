FROM node:14.15.2-alpine
LABEL description="Docker Certified Associate Guide."
COPY ./docs ./docs
RUN npm install -g docsify-cli@latest && \
  docsify init ./docs
EXPOSE 3000/tcp
ENTRYPOINT docsify serve ./docs