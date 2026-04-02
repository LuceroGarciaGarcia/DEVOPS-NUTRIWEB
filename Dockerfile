FROM node:18

WORKDIR /app

COPY . .

RUN npm install

# 🔥 FIX PERMISOS VITE
RUN chmod +x node_modules/.bin/vite

# Build usando npx
RUN npx vite build

CMD ["npm", "run", "preview"]