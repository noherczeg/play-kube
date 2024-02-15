import { faker } from '@faker-js/faker';

const tableName = 'users';

export async function seed(knex) {
  await knex(tableName).del();
  const users = [...Array(10).keys()].map(key => ({
    email: faker.internet.email().toLowerCase(),
    first_name: faker.person.firstName(),
    last_name: faker.person.lastName(),
  }));
  await knex(tableName).insert(users.map(user => ({ ...user, password: 'test_password' })));
}
