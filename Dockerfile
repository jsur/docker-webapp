# Specify base image
# An alpine version is as compact as possible
FROM node:alpine

WORKDIR /usr/app

# Install deps

# copying package.json before npm install allows changes
# to index.js without invalidating the cache
COPY ./package.json ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]