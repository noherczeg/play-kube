import 'dotenv/config';

const connection = {
  host: process.env.DB_HOST,
  port: process.env.DB_PORT,
  database: process.env.DB_NAME,
  user: process.env.DB_USER,
  password: process.env.DB_PASSWORD,
};

export const config = {
  client: 'pg',
  connection,
  migrations: {
      directory: './database/migrations',
  },
  seeds: {
      directory: './database/seeds',
  }
};
