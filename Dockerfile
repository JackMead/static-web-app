FROM mcr.microsoft.com/azure-cli
RUN apk update && apk add npm libsecret
RUN npm install -g @azure/static-web-apps-cli
COPY ./src /src
ENTRYPOINT bash