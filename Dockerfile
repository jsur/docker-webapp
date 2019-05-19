# Specify base image
FROM alpine

# Install deps
RUN npm Install

# Default command
CMD ["npm", "start"]