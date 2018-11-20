FROM node:10.13.0
ENV LAST_UPDATED 20160617T185400

# Copy source code
COPY . /app

# Change working directory
WORKDIR /app

# Update npm to solve "ajv-keywords@3.2.0 requires a peer of ajv@^6.0.0"
RUN npm install ajv@^6.0.0

# Redis
RUN npm install connect-redis

# Install dependencies
RUN npm install

# Expose API port to the outside
ENV PORT 80
EXPOSE 80

# Launch application
CMD ["npm","start"]

