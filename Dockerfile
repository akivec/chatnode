# Use the official Node.js image from the Docker Hub
FROM node:16

# Create and change to the app directory
WORKDIR /app

# Copy package.json and package-lock.json (if available)
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose the port the app runs on
EXPOSE 3000

# Define environment variable for production
ENV NODE_ENV production

# Start the application
CMD ["npm", "start"]
