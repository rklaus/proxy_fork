SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(27);

SELECT has_foreign_table(
    'loan_pro_fdw', '_sound_group_entity',
    'Should have foreign table loan_pro_fdw._sound_group_entity'
);

SELECT hasnt_pk(
    'loan_pro_fdw', '_sound_group_entity',
    'Table loan_pro_fdw._sound_group_entity should have a primary key'
);

SELECT columns_are('loan_pro_fdw'::name, '_sound_group_entity'::name, ARRAY[
    'id'::name,
    'name'::name,
    'active'::name,
    'deleted'::name,
    'created'::name,
    'lastupdated'::name
]);

SELECT has_column(       'loan_pro_fdw', '_sound_group_entity', 'id', 'Column loan_pro_fdw._sound_group_entity.id should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_entity', 'id', 'integer', 'Column loan_pro_fdw._sound_group_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_entity', 'id', 'Column loan_pro_fdw._sound_group_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_entity', 'id', 'Column loan_pro_fdw._sound_group_entity.id should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_entity', 'name', 'Column loan_pro_fdw._sound_group_entity.name should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_entity', 'name', 'character varying(100)', 'Column loan_pro_fdw._sound_group_entity.name should be type character varying(100)');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_entity', 'name', 'Column loan_pro_fdw._sound_group_entity.name should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_entity', 'name', 'Column loan_pro_fdw._sound_group_entity.name should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_entity', 'active', 'Column loan_pro_fdw._sound_group_entity.active should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_entity', 'active', 'integer', 'Column loan_pro_fdw._sound_group_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_entity', 'active', 'Column loan_pro_fdw._sound_group_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_entity', 'active', 'Column loan_pro_fdw._sound_group_entity.active should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_entity', 'deleted', 'Column loan_pro_fdw._sound_group_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_entity', 'deleted', 'integer', 'Column loan_pro_fdw._sound_group_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_entity', 'deleted', 'Column loan_pro_fdw._sound_group_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_entity', 'deleted', 'Column loan_pro_fdw._sound_group_entity.deleted should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_entity', 'created', 'Column loan_pro_fdw._sound_group_entity.created should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_entity', 'created', 'text', 'Column loan_pro_fdw._sound_group_entity.created should be type text');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_entity', 'created', 'Column loan_pro_fdw._sound_group_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_entity', 'created', 'Column loan_pro_fdw._sound_group_entity.created should not  have a default');

SELECT has_column(       'loan_pro_fdw', '_sound_group_entity', 'lastupdated', 'Column loan_pro_fdw._sound_group_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_fdw', '_sound_group_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_fdw._sound_group_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_fdw', '_sound_group_entity', 'lastupdated', 'Column loan_pro_fdw._sound_group_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_fdw', '_sound_group_entity', 'lastupdated', 'Column loan_pro_fdw._sound_group_entity.lastupdated should not  have a default');

SELECT * FROM finish();
ROLLBACK;
