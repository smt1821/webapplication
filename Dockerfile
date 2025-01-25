# Use Node.js base image
FROM node:16

# Set working directory
WORKDIR /app

# Copy files
COPY package*.json ./
COPY app.js ./

# Install dependencies
RUN npm install

# Expose the application port
EXPOSE 3000

# Run the application
CMD ["node", "app.js"]
