FROM node:18-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .
RUN npm run build || { echo 'Build failed'; exit 1; }
COPY .env .env
EXPOSE 3000
CMD ["npm", "run", "start"]

