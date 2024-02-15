import { faker } from '@faker-js/faker';

const tableName = 'posts';

export async function seed(knex) {
  await knex(tableName).del();

  const usersIds = await knex('users').select('id');
  const posts = [];

  usersIds.forEach(({ id: user_id }) => {
    const randomAmount = Math.floor(Math.random() * 10) + 1;

    for (let i = 0; i < randomAmount; i++) {
      posts.push({
        title: faker.lorem.words(3),
        content: faker.lorem.paragraph(),
        user_id,
      });
    }
  });

  await knex(tableName).insert(posts);
}
