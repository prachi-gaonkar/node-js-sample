#e the official Node.js image from Docker Hub
FROM node:slim

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json (if available) to the container
COPY node-js-sample/package*.json ./

# Install the app dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY node-js-sample/ .

# Expose the port the app will run on
EXPOSE 5000

# Command to run the app
CMD ["npm", "start"]
