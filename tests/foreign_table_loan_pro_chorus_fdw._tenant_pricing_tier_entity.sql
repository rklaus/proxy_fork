SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(39);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity',
    'Should have foreign table loan_pro_chorus_fdw._tenant_pricing_tier_entity'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity',
    'Table loan_pro_chorus_fdw._tenant_pricing_tier_entity should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_tenant_pricing_tier_entity'::name, ARRAY[
    'id'::name,
    'begin'::name,
    'end'::name,
    'price'::name,
    'price_per_loan'::name,
    'created'::name,
    'lastupdated'::name,
    'active'::name,
    'deleted'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'id', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'id', 'integer', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'id', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'id', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'begin', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.begin should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'begin', 'integer', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.begin should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'begin', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.begin should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'begin', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.begin should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'end', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity."end" should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'end', 'integer', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity."end" should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'end', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity."end" should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'end', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity."end" should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price', 'numeric(11,3)', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price should be type numeric(11,3)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price_per_loan', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price_per_loan should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price_per_loan', 'integer', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price_per_loan should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price_per_loan', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price_per_loan should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'price_per_loan', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.price_per_loan should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'created', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'created', 'text', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'created', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'created', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.lastupdated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'lastupdated', 'timestamp with time zone', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.lastupdated should be type timestamp with time zone');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.lastupdated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'lastupdated', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.lastupdated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'active', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'active', 'integer', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'active', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'active', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.active should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'deleted', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'deleted', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_tenant_pricing_tier_entity', 'deleted', 'Column loan_pro_chorus_fdw._tenant_pricing_tier_entity.deleted should not  have a default');

SELECT * FROM finish();
ROLLBACK;
