# Use an official Node runtime as a base image
FROM node:14

# Set the working directory in the container
WORKDIR /src/app

# Install app dependencies by copying
# package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Bundle app source by copying the rest of the dependency files
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define the command to run the app
CMD [ "npm", "start" ]
