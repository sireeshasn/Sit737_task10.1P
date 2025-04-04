# Base image
FROM node:20-alpine

# Set working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "app.js"]
