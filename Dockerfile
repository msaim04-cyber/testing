
FROM node:18-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install --production

# Copy the rest of the application
COPY . .

# Expose the app port
EXPOSE 3000

# Start the application
CMD ["npm", "start"]
