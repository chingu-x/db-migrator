# Database Migrator

This project defines a docker container that can be used to run migrations using sequelize in kubernetes.

## Usage

The migrator makes a few assumptions:
  - The database connection information will be supplied via environment variables.
  - The migration files will be mounted at `/app/migrations`.

