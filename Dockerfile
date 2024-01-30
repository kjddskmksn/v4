# Use the Node.js 20 image as the base image
FROM node:20-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the package.json and package-lock.json files
COPY package.json package-lock.json ./

# Install project dependencies
RUN npm install

# Copy the rest of the source code 
COPY . .

# Set the port for the HTTP server
EXPOSE 3000

# Define the default command to run on container startup
CMD [ "node", "index.js" ]
