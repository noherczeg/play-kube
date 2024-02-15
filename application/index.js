import 'dotenv/config';
import express from 'express';
import { database } from './database/index.js';


(async () => {
  await database.migrate.latest();

  const app = express();

  const podName = process.env.MY_POD_NAME || 'Unknown Pod';

  app.get('/', (req, res) => {
    res.send(`Hello from Pod: ${podName}`);
  });

  app.get('/users', async (req, res) => {
    const asd = await database('users').select('*');
    res.json(asd);
  });

  app.get('/service/seed', async (req, res) => {
    await database.seed.run();
    res.send('OK');
  });

  app.get('/service/health', (req, res) => {
    res.send('OK');
  });

  app.get('/service/kill', (req, res) => {
    res.send('Good bye cruel world...');
    process.exit();
  });

  app.listen(3000, () => {
    console.log('Server is running on port 3000');
  });

})();
