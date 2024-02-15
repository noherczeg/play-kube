const tableName = 'users';

export async function up(knex) {
  return knex.schema.createTable(tableName, (table) => {
    table.increments('id');
    table.string('email').unique().notNullable();
    table.string('password').notNullable();
    table.string('first_name').notNullable();
    table.string('last_name').notNullable();
    table.timestamps(true, true);
  });
}


export async function down(knex) {
  return knex.schema.dropTable(tableName);
}
