FROM --platform=linux/amd64 node:19-alpine
ENV NODE_ENV production
# Add a work directory
WORKDIR /app
# Cache and Install dependencies
COPY package.json .
COPY yarn.lock .
# Copy app files
COPY . .
# Build the app
RUN yarn build

#Expose port
EXPOSE 3000

CMD ["yarn", "run", "start"]