# Use Node.js image
FROM node:18

# Set working directory
WORKDIR /app

# Copy backend code
COPY Backend/package*.json ./Backend/
RUN cd Backend && npm install

# Copy all source code
COPY . .

# Expose port
EXPOSE 3000

# Run the app
CMD ["node", "Backend/server.js"]
