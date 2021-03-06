SET client_encoding = 'UTF-8';
BEGIN;
SELECT plan(147);

SELECT has_foreign_table(
    'loan_pro_chorus_fdw', '_loan_autopay_entity_old',
    'Should have foreign table loan_pro_chorus_fdw._loan_autopay_entity_old'
);

SELECT hasnt_pk(
    'loan_pro_chorus_fdw', '_loan_autopay_entity_old',
    'Table loan_pro_chorus_fdw._loan_autopay_entity_old should have a primary key'
);

SELECT columns_are('loan_pro_chorus_fdw'::name, '_loan_autopay_entity_old'::name, ARRAY[
    'id'::name,
    'loan_id'::name,
    'name'::name,
    'type'::name,
    'status'::name,
    'apply_date'::name,
    'process_datetime'::name,
    'original_process_datetime'::name,
    'amount_type'::name,
    'amount'::name,
    'payment_type_id'::name,
    'process_current'::name,
    'charge_service_fee'::name,
    'retry_days'::name,
    'retry_count'::name,
    'post_payment_update_apply_date'::name,
    'recurring_frequency'::name,
    'recurring_periods'::name,
    'scheduling_type'::name,
    'last_dom_enabled'::name,
    'days_in_period'::name,
    'payment_extra_towards'::name,
    'payment_fee'::name,
    'primary_payment_method_id'::name,
    'secondary_payment_method_id'::name,
    'additional_payment_method_id'::name,
    'payment_method_auth_type'::name,
    'payoff_adjustment'::name,
    'charge_off_recovery'::name,
    'mc_processor'::name,
    'security'::name,
    'owner'::name,
    'deleted'::name,
    'created'::name,
    'last_updated'::name,
    'active'::name
]);

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'id', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'loan_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.loan_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'loan_id', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.loan_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'loan_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.loan_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'loan_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.loan_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'name', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.name should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'name', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.name should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'name', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.name should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'name', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.name should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'type', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'status', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.status should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'status', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.status should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'status', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.status should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'status', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.status should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'apply_date', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'apply_date', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.apply_date should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'apply_date', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'apply_date', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_datetime', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_datetime should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_datetime', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_datetime should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_datetime', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_datetime', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_datetime should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'original_process_datetime', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.original_process_datetime should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'original_process_datetime', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.original_process_datetime should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'original_process_datetime', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.original_process_datetime should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'original_process_datetime', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.original_process_datetime should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount_type', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount', 'numeric(10,2)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount should be type numeric(10,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'amount', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.amount should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_type_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_type_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_type_id', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_type_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_type_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_type_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_type_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_type_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_current', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_current should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_current', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_current should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_current', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_current should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'process_current', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.process_current should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_service_fee', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_service_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_service_fee', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_service_fee should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_service_fee', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_service_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_service_fee', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_service_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_days', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_days should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_days', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_days should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_days', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_days should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_days', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_days should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_count', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_count should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_count', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_count should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_count', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_count should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'retry_count', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.retry_count should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'post_payment_update_apply_date', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.post_payment_update_apply_date should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'post_payment_update_apply_date', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.post_payment_update_apply_date should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'post_payment_update_apply_date', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.post_payment_update_apply_date should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'post_payment_update_apply_date', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.post_payment_update_apply_date should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_frequency', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_frequency should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_frequency', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_frequency should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_frequency', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_frequency should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_frequency', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_frequency should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_periods', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_periods should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_periods', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_periods should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_periods', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_periods should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'recurring_periods', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.recurring_periods should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'scheduling_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.scheduling_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'scheduling_type', 'character(64)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.scheduling_type should be type character(64)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'scheduling_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.scheduling_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'scheduling_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.scheduling_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_dom_enabled', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_dom_enabled should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_dom_enabled', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_dom_enabled should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_dom_enabled', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_dom_enabled should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_dom_enabled', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_dom_enabled should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'days_in_period', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.days_in_period should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'days_in_period', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.days_in_period should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'days_in_period', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.days_in_period should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'days_in_period', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.days_in_period should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_extra_towards', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_extra_towards should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_extra_towards', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_extra_towards should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_extra_towards', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_extra_towards should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_extra_towards', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_extra_towards should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_fee', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_fee should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_fee', 'numeric(6,2)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_fee should be type numeric(6,2)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_fee', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_fee should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_fee', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_fee should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'primary_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.primary_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'primary_payment_method_id', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.primary_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'primary_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.primary_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'primary_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.primary_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'secondary_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.secondary_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'secondary_payment_method_id', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.secondary_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'secondary_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.secondary_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'secondary_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.secondary_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'additional_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.additional_payment_method_id should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'additional_payment_method_id', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.additional_payment_method_id should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'additional_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.additional_payment_method_id should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'additional_payment_method_id', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.additional_payment_method_id should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_method_auth_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_method_auth_type should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_method_auth_type', 'character(100)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_method_auth_type should be type character(100)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_method_auth_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_method_auth_type should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payment_method_auth_type', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payment_method_auth_type should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payoff_adjustment', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payoff_adjustment should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payoff_adjustment', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payoff_adjustment should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payoff_adjustment', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payoff_adjustment should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'payoff_adjustment', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.payoff_adjustment should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_off_recovery', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_off_recovery should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_off_recovery', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_off_recovery should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_off_recovery', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_off_recovery should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'charge_off_recovery', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.charge_off_recovery should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'mc_processor', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.mc_processor should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'mc_processor', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.mc_processor should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'mc_processor', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.mc_processor should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'mc_processor', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.mc_processor should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'security', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.security should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'security', 'character(3)', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.security should be type character(3)');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'security', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.security should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'security', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.security should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'owner', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.owner should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'owner', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.owner should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'owner', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.owner should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'owner', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.owner should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'deleted', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.deleted should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'deleted', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.deleted should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'deleted', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.deleted should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'deleted', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.deleted should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'created', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.created should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'created', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.created should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'created', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.created should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'created', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.created should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_updated', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_updated should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_updated', 'text', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_updated should be type text');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_updated', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_updated should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'last_updated', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.last_updated should not  have a default');

SELECT has_column(       'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'active', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.active should exist');
SELECT col_type_is(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'active', 'integer', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.active should be type integer');
SELECT col_is_null(      'loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'active', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.active should allow NULL');
SELECT col_hasnt_default('loan_pro_chorus_fdw', '_loan_autopay_entity_old', 'active', 'Column loan_pro_chorus_fdw._loan_autopay_entity_old.active should not  have a default');

SELECT * FROM finish();
ROLLBACK;
