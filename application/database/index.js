import Knex from 'knex';
import { config } from '../knexfile.js';

export const database = Knex(config);
