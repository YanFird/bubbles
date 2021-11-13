FROM registry.access.redhat.com/ubi8/nodejs-14:1-51
COPY . /opt/app-root/src/
WORKDIR /opt/app-root/src/
RUN npm install @angular/cli @angular-devkit/core@0.0.29
RUN sed -i 's/"es2015"//' node_modules/@types/node/index.d.ts
RUN sed -i 's/reference lib=//' node_modules/@types/node/index.d.ts
CMD ["ng","serve","--host", "0.0.0.0", "--disable-host-check"]

