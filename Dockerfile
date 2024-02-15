# Use an official Node.js runtime as the base image
FROM node:18-alpine

# Set the working directory in the Docker image
WORKDIR /usr/src/app

# Install pnpm
RUN npm install -g pnpm

# Copy package.json and pnpm-lock.yaml to the working directory
COPY package*.json pnpm-lock.yaml ./

# Install the application dependencies
RUN pnpm install

# Copy the rest of the application code to the working directory
COPY . .

# Compile the application
RUN pnpm run build

# Expose port 3000 for the application
EXPOSE 3000

# Start the application
CMD ["pnpm", "run", "start:prod"]
