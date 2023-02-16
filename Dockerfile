FROM node
# WORKDIR /usr/app
# COPY . .
# RUN npm run start

# ENV NODE_ENV=production
# EXPOSE 8080
# CMD cd ./packages/server && ts-node -T src/index.ts
# USER node
WORKDIR /home/node/app
COPY app /home/node/app
RUN npm install
ENV NODE_ENV=production
EXPOSE 8080
CMD npm run app