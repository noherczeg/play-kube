const tableName = 'posts';

export async function up(knex) {
  return knex.schema.createTable(tableName, (table) => {
    table.increments('id');
    table.string('title').notNullable();
    table.string('content').notNullable();
    table.integer('user_id').unsigned().notNullable();
    table.foreign('user_id').references('id').inTable('users').onDelete('CASCADE');
    table.timestamps(true, true);
  });
}


export async function down(knex) {
  return knex.schema.dropTable(tableName);
}
