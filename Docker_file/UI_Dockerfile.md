# UI Dockerfile


FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build || { echo 'Build failed'; exit 1; }
COPY .env .env
EXPOSE 3000
CMD ["npm", "run", "start"]


# Use the official Node.js 18 Alpine image as the base image
# Set the working directory inside the container
# Copy package.json and package-lock.json to the working directory
# Install dependencies
# Copy the rest of the application code to the working directory
# Build the Next.js app
# Copy the .env file into the container
# Expose port 3000
# Start the Next.js application