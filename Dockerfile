FROM node as base
COPY . /usr/src/app
WORKDIR /usr/src/app
RUN npm install -s

FROM node as production
COPY --from=base /usr/src/app ./
RUN npm run build
