FROM cypress/base:16.5.0

RUN mkdir /app
WORKDIR /app

COPY . /app

RUN npm install

RUN $(npm bin)/cypress verify

CMD ["npm", "run", "cypress:e2e"]