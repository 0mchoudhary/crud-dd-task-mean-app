# Use Node.js 18 base image
FROM node:18

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy application source
COPY . .

# Expose port (as defined in server.js)
EXPOSE 8080

# Command to run the application
CMD ["node", "server.js"]
