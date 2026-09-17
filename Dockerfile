FROM node:20-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
# Forces the dynamic files to compile into raw, fast HTML/JS
RUN npm run build 
EXPOSE 8080
ENV HOST=0.0.0.0
ENV PORT=8080
# Launches the built files instantly without loading bottlenecks
CMD ["npm", "run", "start"] 
