FROM node:19-slim
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . ./
ENV PORT=3000
ENV HOST="0.0.0.0"
CMD ["node", "app"]