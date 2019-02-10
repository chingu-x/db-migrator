FROM node:10-slim

# Create app directory
WORKDIR /app

# Install sequelize
COPY package.json yarn.lock ./
RUN yarn --pure-lockfile

# Copy the migration script & sequelize config
COPY migrate.sh config.js .sequelizerc ./
RUN chmod +x migrate.sh

# Run the migration script
CMD ["./migrate.sh"]