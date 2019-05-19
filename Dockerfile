# Specify base image
# An alpine version is as compact as possible
FROM node:alpine

# Install deps
RUN npm install

# Default command
CMD ["npm", "start"]