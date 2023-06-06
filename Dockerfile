# Use the official Python base image
FROM node:18
# Set the working directory inside the container
WORKDIR /app

# Install dependencies
COPY package.json package-lock.json ./

RUN npm ci

# Copy the application files to the container
COPY . .

# Expose the port that the application listens on
EXPOSE 3000

# Define the default command to run the application
ENTRYPOINT [ "npm", "run", "start:dev" ]