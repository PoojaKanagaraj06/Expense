# Step 1: Use official Node.js image
FROM node:18

# Step 2: Set working directory inside the container
WORKDIR /app

# Step 3: Copy backend dependencies
COPY Backend/package*.json ./Backend/
RUN cd Backend && npm install

# Step 4: Copy all project files (both backend and frontend)
COPY . .

# Step 5: Expose port the app will run on
EXPOSE 3000

# Step 6: Start the server
CMD ["node", "Backend/server.js"]
