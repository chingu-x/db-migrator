const {
  DB_HOST: host = 'localhost',
  DB_PORT: port = '5432',
  DB_USERNAME: username,
  DB_PASSWORD: password,
  DB_NAME: database,
} = process.env;

const profile = {
  host,
  port,
  username,
  password,
  database,
  dialect: 'postgres',
  operatorsAliases: false
};

module.exports = {
  development: profile,
  test: profile,
  production: profile
}