uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_226DD6200()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD623C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226DD6274()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226DD62C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD62F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6330()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226DD6380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226DD643C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226E635C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226DD6504()
{
  _Block_release(*(v0 + 32));
  _Block_release(*(v0 + 40));
  _Block_release(*(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_226DD6568()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD65A0()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD65E4()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_226DD662C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD6664()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226DD66B4()
{
  sub_226E47FFC(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 25, 7);
}

uint64_t sub_226DD66F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226E63590();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226DD67A0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226E63590();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226DD6844()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD689C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226DD68E4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD691C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6954()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226DD69AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_226DD6A68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_226E635C0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_226DD6B34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_226E63040();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_226DD6BE0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_226E63040();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_226DD6C84()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6CC4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226DD6D0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_226DD6D44()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_226DD6DBC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_226DD6DF4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void sub_226DD74E8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v3 - 104));
  _Unwind_Resume(a1);
}

void sub_226DD8064(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id CreateTablesAndIndexes(uint64_t a1)
{
  if (CreateTablesAndIndexes_onceToken != -1)
  {
    CreateTablesAndIndexes_cold_1();
  }

  v2 = CreateTablesAndIndexes__ddlCreateTables;

  return v2;
}

void __CreateTablesAndIndexes_block_invoke()
{
  v14 = MEMORY[0x277CBEA60];
  v35 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"transactions", @"(t_tid integer primary key autoincrement, t_identifier text, t_service_identifier text, a_finance_account_id text, t_finance_transaction_id text, t_finance_transaction_shared_id text, t_finance_transaction_source integer, t_payment_hash text, t_source_identifier text, t_amount integer, t_currencycode text, t_timezone integer, t_date integer, t_status integer, t_status_changed_date integer, t_source integer, t_card_type integer, t_type integer, a_type integer, t_altDSID text, t_receipt_identifier text, t_associated_receipt_unique_id text, t_fh_internal_state integer, m_merchant_identifier text, m_industrycode integer, m_name text, m_raw_name text, m_category integer, m_detailed_category text, m_displayname text, m_street text, m_city text, m_state text, m_zip text, m_country_code text, m_country text, m_maps_merchant_id text, m_maps_merchant_result_id integer, m_maps_merchant_brand_id text, m_maps_merchant_brand_result_id integer, lat real, long real, v_accuracy real, h_accuracy real, dispute_type integer, dispute_status integer, peer_pay_counterpart text, peer_pay_type integer, t_description text, processed_description text, peer_pay_is_recurring integer, dispute_open_date integer, dispute_last_updated_date integer, proprietary_bank_transaction_code text, proprietary_bank_transaction_issuer text)"];;
  v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"transaction_features", @"(t_identifier text primary key, t_features text, t_compound_features text, locale text, t_mark_for_delete integer, t_finance_transaction_id text)"];;
  v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_deterministic_realtime", @"(f1_tid integer primary key autoincrement, t_identifier text UNIQUE, a integer, b integer, c integer, f integer, g integer)"];;
  v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_predicted_realtime", @"(f2_tid integer primary key autoincrement, identifier text, feature_name text, feature_predicted_class integer, version text, data_type integer, predicted_score real, UNIQUE(identifier, feature_name, feature_predicted_class, version))"];;
  v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_prediction_labels", @"(feature_label_id integer primary key autoincrement, feature_name text, feature_predicted_class integer, smart_feature_name text, UNIQUE(feature_name, feature_predicted_class, smart_feature_name))"];;
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_compound_realtime", @"(f3_tid integer primary key autoincrement, t_identifier text UNIQUE, t_compound_feature_value text)"];;
  v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_merchant", @"(merchant_aggregate_id integer primary key autoincrement, merchant_aggregate_type text, merchant_aggregate_value text, start_date integer, end_date integer, UNIQUE(merchant_aggregate_type, start_date, end_date))"];;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_detailed_category", @"(category_aggregate_id integer primary key autoincrement, detailed_category text, amount integer, transaction_count integer, country_code text, recurring_transaction_ratio real, time_of_day integer, time_window integer, start_date real, end_date real, UNIQUE(detailed_category, time_of_day, time_window, country_code))"];;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_datetime", @"(datetime_aggregate_id integer primary key autoincrement, datetime_aggregate_type text, datetime_aggregate_value_start_date integer, datetime_aggregate_value_end_date integer, start_date integer, end_date integer, UNIQUE(datetime_aggregate_type, start_date, end_date))"];;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_amount", @"(amount_aggregate_id integer primary key autoincrement, amount_aggregate_type text, amount_aggregate_value integer, comparison_operator text, start_date integer, end_date integer, UNIQUE(amount_aggregate_type, start_date, end_date))"];;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_schema", @"(sch_id integer primary key autoincrement, sch_version_id text, sch_upgrade_status integer, sch_date integer, sch_getall_status integer)"];;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_heuristics", @"(h_id integer primary key autoincrement, t_identifier text, t_heuristics_identifier text, t_heuristics_value integer, t_heuristics_score real, UNIQUE(t_identifier, t_heuristics_identifier))"];;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_instrumentation", @"(inst_id integer primary key autoincrement, tag_source integer, tag_type integer, tag_click_date integer, pass_type integer, heuristics_identifier text, account_state integer, paid_using_ring integer)"];;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_events", @"(e_id integer primary key autoincrement, e_identifier text, start_date integer, end_date integer, UNIQUE(e_identifier, start_date, end_date))"];;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_processing_history", @"(fh_processing_history_id integer primary key autoincrement, feature_name text, feature_processing_date integer, feature_data text, UNIQUE(feature_name))"];;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_peer_payments", @"(p1_tid integer primary key autoincrement, source_identifier text, peer_pay_counterpart text, amount integer, frequency real, peer_pay_type integer, forecast_date integer, forecast_signal_type integer, heuristics_identifier text, UNIQUE(heuristics_identifier))"];;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"features_insight_trends", @"(trend_pid integer primary key autoincrement, trend_date real, trend_direction integer, trend_feature_name text, trend_feature_type text, trend_spend real, trend_window integer, trend_average real, trend_readable_description text)"];;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"t_date_index", @"transactions", @"t_date"];;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"t_identifier_index", @"transactions", @"t_identifier"];;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"t_finance_transaction_id_index", @"transactions", @"t_finance_transaction_id"];;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"a_finance_account_id_index", @"transactions", @"a_finance_account_id"];;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"identifier_index", @"features_predicted_realtime", @"identifier"];;
  v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"create index if not exists %@ on %@(%@)", @"pattern_class_index", @"features_predicted_realtime", @"feature_predicted_class"];;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_account_information", @"(source_identifier text primary key, account_type integer, account_balance integer, source_type, account_currency_code text, account_date integer, account_category integer, account_description text, account_status integer, credit_limit integer, next_payment_date real, minimum_payment_amount integer, overdue_payment_amount integer, institution_name text, institution_id text, unique_account_id text, UNIQUE(institution_id, unique_account_id))"];;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE VIRTUAL TABLE IF NOT EXISTS fts_transactions USING fts5(t_identifier UNINDEXED, t_source_identifier UNINDEXED, a_type UNINDEXED, t_date UNINDEXED, t_amount UNINDEXED, processed_description, content=transactions, content_rowid=t_tid)"];;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_grouping", @"(g_id integer primary key autoincrement, t_identifier text, group_id text, similarity_score text, group_type integer, UNIQUE(t_identifier))"];;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_ai AFTER INSERT ON transactions BEGIN INSERT INTO fts_transactions(rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES (new.t_tid, new.t_identifier, new.t_source_identifier, new.a_type, new.t_date, new.t_amount, new.processed_description) END;"];;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_bu BEFORE UPDATE ON transactions BEGIN INSERT INTO fts_transactions(fts_transactions, rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES('delete', old.t_tid, old.t_identifier, old.t_source_identifier, old.a_type, old.t_date, old.t_amount, old.processed_description) END;"];;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_bd BEFORE DELETE ON transactions BEGIN INSERT INTO fts_transactions(fts_transactions, rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES('delete', old.t_tid, old.t_identifier, old.t_source_identifier, old.a_type, old.t_date, old.t_amount, old.processed_description) END;"];;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@", @"CREATE TRIGGER IF NOT EXISTS transactions_au AFTER UPDATE ON transactions BEGIN INSERT INTO fts_transactions(rowid, t_identifier, t_source_identifier, a_type, t_date, t_amount, processed_description) VALUES (new.t_tid, new.t_identifier, new.t_source_identifier, new.a_type, new.t_date, new.t_amount, new.processed_description) END;"];;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_recurring_predictions", @"(source_identifier text, merchant_entity text, detailed_category text, amount integer, frequency real, transaction_type integer, transaction_source integer, forecast_date real, forecast_signal_type integer, heuristic_identifier text, UNIQUE(heuristic_identifier))"];;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_receipt_data", @"(fhr_id integer primary key autoincrement, receiptIdentifier text, line_item_index text, title text, subtitle text, quantity integer, amount integer, currencyCode text, adamIdentifier integer, UNIQUE(receiptIdentifier, line_item_index))"];;
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"create table if not exists %@ %@", @"fh_summarization_data", @"(account_identifier text, summary text, summary_processing_date integer, summary_date_window text, UNIQUE(account_identifier, summary_date_window))"];;
  v6 = [v14 arrayWithObjects:{v35, v34, v32, v33, v31, v29, v30, v28, v27, v26, v25, v24, v23, v21, v22, v20, v13, v19, v12, v11, v18, v17, v16, v15, v9, v10, v0, v8, v1, v2, v3, v4, v5, 0}];
  v7 = CreateTablesAndIndexes__ddlCreateTables;
  CreateTablesAndIndexes__ddlCreateTables = v6;
}

id DropTablesAndIndexes(uint64_t a1)
{
  if (DropTablesAndIndexes_onceToken != -1)
  {
    DropTablesAndIndexes_cold_1();
  }

  v2 = DropTablesAndIndexes__ddlDropTables;

  return v2;
}

void __DropTablesAndIndexes_block_invoke()
{
  v16 = MEMORY[0x277CBEA60];
  v29 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_schema"];;
  v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"transactions"];;
  v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"transaction_features"];;
  v26 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_deterministic_realtime"];;
  v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_prediction_labels"];;
  v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_compound_realtime"];;
  v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_predicted_realtime"];;
  v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_merchant"];;
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_detailed_category"];;
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_datetime"];;
  v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_amount"];;
  v20 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_heuristics"];;
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_events"];;
  v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_instrumentation"];;
  v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_processing_history"];;
  v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_peer_payments"];;
  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"features_insight_trends"];;
  v17 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_account_information"];;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_grouping"];;
  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fts_transactions"];;
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_au"];;
  v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_ai"];;
  v0 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_bd"];;
  v1 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop trigger %@", @"transactions_bu"];;
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_recurring_predictions"];;
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_receipt_data"];;
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"drop table if exists %@", @"fh_summarization_data"];;
  v5 = [v16 arrayWithObjects:{v29, v28, v27, v26, v25, v24, v23, v22, v15, v21, v14, v20, v13, v19, v12, v18, v11, v17, v10, v9, v8, v7, v0, v1, v2, v3, v4, 0}];
  v6 = DropTablesAndIndexes__ddlDropTables;
  DropTablesAndIndexes__ddlDropTables = v5;
}

void sub_226DDAF50(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 112));
  _Unwind_Resume(a1);
}

void sub_226DDC704(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226DDE214(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DDE764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DDEDAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE1950(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE41D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, char a60)
{
  _Block_object_dispose(&a42, 8);
  _Block_object_dispose(&a48, 8);
  _Block_object_dispose(&a54, 8);
  _Block_object_dispose(&a60, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Block_object_dispose(&STACK[0x230], 8);
  _Unwind_Resume(a1);
}

void sub_226DE6F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE70B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE74F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  objc_destroyWeak((v28 + 80));
  objc_destroyWeak(&location);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Block_object_dispose((v29 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_226DE8674(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DE9104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a49, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a66, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose((v66 - 256), 8);
  _Block_object_dispose((v66 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_226DEA4D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a57, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose((v65 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_226DEB5A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DEBBD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va1, a20);
  va_start(va, a20);
  v21 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_226DEBDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 48), 8);
  _Unwind_Resume(a1);
}

void sub_226DECAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DED8D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DEE094(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va1, a17);
  va_start(va, a17);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v17 - 136), 8);
  _Unwind_Resume(a1);
}

void sub_226DEE904(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226DEEBC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id FinHealthLogObject(void *a1)
{
  v1 = FinHealthLogObject___once;
  v2 = a1;
  v3 = v2;
  if (v1 != -1)
  {
    FinHealthLogObject_cold_1();
  }

  v4 = FinHealthLogFacilities(v2);
  v5 = [v4 indexOfObject:v3];

  if (v5 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5;
  }

  v7 = FinHealthLogObject_logObjects[v6];

  return v7;
}

uint64_t __FinHealthLogObject_block_invoke()
{
  v0 = os_log_create("com.apple.FinHealth", [@"FinHealthClient" UTF8String]);
  v1 = FinHealthLogObject_logObjects[0];
  FinHealthLogObject_logObjects[0] = v0;

  v2 = os_log_create("com.apple.FinHealth", [@"FinHealthServer" UTF8String]);
  v3 = qword_280CEA448;
  qword_280CEA448 = v2;

  v4 = os_log_create("com.apple.FinHealth", [@"FinHealthSQL" UTF8String]);
  v5 = qword_280CEA450;
  qword_280CEA450 = v4;

  qword_280CEA458 = os_log_create("com.apple.FinHealth", [@"FinHealthCore" UTF8String]);

  return MEMORY[0x2821F96F8]();
}

id FinHealthLogFacilities(uint64_t a1)
{
  if (FinHealthLogFacilities___once != -1)
  {
    FinHealthLogFacilities_cold_1();
  }

  v2 = FinHealthLogFacilities_logFacilities;

  return v2;
}

void __FinHealthLogFacilities_block_invoke()
{
  v2[4] = *MEMORY[0x277D85DE8];
  v2[0] = @"FinHealthClient";
  v2[1] = @"FinHealthServer";
  v2[2] = @"FinHealthSQL";
  v2[3] = @"FinHealthCore";
  v0 = [MEMORY[0x277CBEA60] arrayWithObjects:v2 count:4];
  v1 = FinHealthLogFacilities_logFacilities;
  FinHealthLogFacilities_logFacilities = v0;
}

void sub_226DF1658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t FHTransactionTimeOfDayFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"EarlyMorning"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Morning"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Daytime"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Evening"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Nighttime"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHTransactionTimeOfDayToString(unint64_t a1)
{
  if (a1 > 5)
  {
    return @"unknown";
  }

  else
  {
    return off_2785CB5C8[a1];
  }
}

__CFString *FHTransactionRepeatingPatternClassToFHSmartFeature(uint64_t a1)
{
  v2 = 0;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        goto LABEL_3;
      case 1:
        v3 = FHSmartFeatureAggregateTypeRegular;
        goto LABEL_4;
      case 2:
        v3 = FHSmartFeatureAggregateTypeIrregular;
        goto LABEL_4;
    }
  }

  else
  {
    if ((a1 - 3) < 8)
    {
LABEL_3:
      v3 = FHSmartFeatureAggregateTypeRecurring;
LABEL_4:
      v2 = *v3;
      goto LABEL_5;
    }

    if (a1 == 11)
    {
      v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lu", 11];
    }
  }

LABEL_5:

  return v2;
}

id loadConfigurationFromJsonFile(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA8D8];
  v2 = a1;
  v3 = [v1 bundleForClass:objc_opt_class()];
  v4 = [v3 bundlePath];

  v5 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "bundle path: %@", &v10, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleWithPath:v4];
  v7 = [v6 pathForResource:v2 ofType:@"json" inDirectory:@"FeaturesResources"];

  v8 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v7];

  return v8;
}

id FHSmartFeaturesDict(uint64_t a1)
{
  if (FHSmartFeaturesDict_onceToken != -1)
  {
    FHSmartFeaturesDict_cold_1();
  }

  v2 = FHSmartFeaturesDict_fhSmartFeaturesDict;

  return v2;
}

void __FHSmartFeaturesDict_block_invoke()
{
  v15 = *MEMORY[0x277D85DE8];
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_8;
  }

  v0 = [[FHExperiment alloc] initWithNamespaceName:@"WPC_ANALYTICS_FHCONFIGS"];
  v1 = [(FHExperiment *)v0 getFilePathForFactor:@"FH_CONFIG_ROLLOUT"];
  if (!v1)
  {

LABEL_8:
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_DEBUG, "Loading features.json data from default resource.", buf, 2u);
    }

    v3 = loadConfigurationFromJsonFile(@"assets_1671/features");
    goto LABEL_11;
  }

  v2 = v1;
  v3 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v1];
  v4 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v14 = v2;
    _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_DEBUG, "Loading path: %@ for features.json data from Turi", buf, 0xCu);
  }

  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_11:
  v12 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v3 options:1 error:&v12];
  v7 = v12;
  v8 = FHSmartFeaturesDict_fhSmartFeaturesDict;
  FHSmartFeaturesDict_fhSmartFeaturesDict = v6;

  v9 = FinHealthLogObject(@"FinHealthCore");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v10 = [FHSmartFeaturesDict_fhSmartFeaturesDict allKeys];
    *buf = 138412290;
    v14 = v10;
    _os_log_impl(&dword_226DD4000, v9, OS_LOG_TYPE_DEBUG, "[fhSmartFeaturesDict allKeys]: %@", buf, 0xCu);
  }

  if (!FHSmartFeaturesDict_fhSmartFeaturesDict)
  {
    v11 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
      _os_log_impl(&dword_226DD4000, v11, OS_LOG_TYPE_ERROR, "Error parsing JSON: %@", buf, 0xCu);
    }
  }
}

id FHMerchantSmartFeaturesArray(uint64_t a1)
{
  if (FHMerchantSmartFeaturesArray_onceToken != -1)
  {
    FHMerchantSmartFeaturesArray_cold_1();
  }

  v2 = FHMerchantSmartFeaturesArray__fhSmartFeatures;

  return v2;
}

void __FHMerchantSmartFeaturesArray_block_invoke(uint64_t a1)
{
  v4 = FHSmartFeaturesDict(a1);
  v1 = [v4 objectForKey:@"FHMerchantSmartFeatures"];
  v2 = [v1 allKeys];
  v3 = FHMerchantSmartFeaturesArray__fhSmartFeatures;
  FHMerchantSmartFeaturesArray__fhSmartFeatures = v2;
}

id FHAmountSmartFeaturesArray(uint64_t a1)
{
  if (FHAmountSmartFeaturesArray_onceToken != -1)
  {
    FHAmountSmartFeaturesArray_cold_1();
  }

  v2 = FHAmountSmartFeaturesArray__fhSmartFeatures;

  return v2;
}

void __FHAmountSmartFeaturesArray_block_invoke(uint64_t a1)
{
  v4 = FHSmartFeaturesDict(a1);
  v1 = [v4 objectForKey:@"FHAmountSmartFeatures"];
  v2 = [v1 allKeys];
  v3 = FHAmountSmartFeaturesArray__fhSmartFeatures;
  FHAmountSmartFeaturesArray__fhSmartFeatures = v2;
}

id FHDateTimeSmartFeaturesArray(uint64_t a1)
{
  if (FHDateTimeSmartFeaturesArray_onceToken != -1)
  {
    FHDateTimeSmartFeaturesArray_cold_1();
  }

  v2 = FHDateTimeSmartFeaturesArray__fhSmartFeatures;

  return v2;
}

void __FHDateTimeSmartFeaturesArray_block_invoke(uint64_t a1)
{
  v4 = FHSmartFeaturesDict(a1);
  v1 = [v4 objectForKey:@"FHDateTimeSmartFeatures"];
  v2 = [v1 allKeys];
  v3 = FHDateTimeSmartFeaturesArray__fhSmartFeatures;
  FHDateTimeSmartFeaturesArray__fhSmartFeatures = v2;
}

id FHRepeatingAggregateFeatureSet(uint64_t a1)
{
  if (FHRepeatingAggregateFeatureSet_onceToken != -1)
  {
    FHRepeatingAggregateFeatureSet_cold_1();
  }

  v2 = FHRepeatingAggregateFeatureSet__fhSmartFeatures;

  return v2;
}

uint64_t __FHRepeatingAggregateFeatureSet_block_invoke()
{
  FHRepeatingAggregateFeatureSet__fhSmartFeatures = [MEMORY[0x277CBEB98] setWithObjects:{@"FHSmartFeatureAggregateTypeRecurring", @"FHSmartFeatureAggregateTypeRegular", @"FHSmartFeatureAggregateTypeIrregular", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHMultiClassPredictionsSmartFeaturesArray(uint64_t a1)
{
  if (FHMultiClassPredictionsSmartFeaturesArray_onceToken != -1)
  {
    FHMultiClassPredictionsSmartFeaturesArray_cold_1();
  }

  v2 = FHMultiClassPredictionsSmartFeaturesArray__fhSmartFeatures;

  return v2;
}

uint64_t __FHMultiClassPredictionsSmartFeaturesArray_block_invoke()
{
  FHMultiClassPredictionsSmartFeaturesArray__fhSmartFeatures = [MEMORY[0x277CBEA60] arrayWithObjects:{@"FHSmartFeatureAggregateTypeRecurring", @"FHSmartFeatureAggregateTypeRegular", @"FHSmartFeatureAggregateTypeIrregular", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHMultiClassPredictionsSmartFeaturesAsString(uint64_t a1)
{
  if (FHMultiClassPredictionsSmartFeaturesAsString_onceToken != -1)
  {
    FHMultiClassPredictionsSmartFeaturesAsString_cold_1();
  }

  v2 = FHMultiClassPredictionsSmartFeaturesAsString__commaSeparatedBinaryPredictionsSmartFeatures;

  return v2;
}

void __FHMultiClassPredictionsSmartFeaturesAsString_block_invoke(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = FHMultiClassPredictionsSmartFeaturesArray(v2);
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        [v2 appendString:{@"", v11}];
        [v2 appendString:v8];
        [v2 appendString:{@", "}];
        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }

  if ([v2 length])
  {
    [v2 substringToIndex:{objc_msgSend(v2, "length") - 1}];
  }

  else
  {
    [MEMORY[0x277CCACA8] stringWithString:v2];
  }
  v9 = ;
  v10 = FHMultiClassPredictionsSmartFeaturesAsString__commaSeparatedBinaryPredictionsSmartFeatures;
  FHMultiClassPredictionsSmartFeaturesAsString__commaSeparatedBinaryPredictionsSmartFeatures = v9;
}

id FHApplicationToTagsMapping(uint64_t a1)
{
  if (FHApplicationToTagsMapping_onceToken != -1)
  {
    FHApplicationToTagsMapping_cold_1();
  }

  v2 = FHApplicationToTagsMapping_fhFeaturesForApplications;

  return v2;
}

void __FHApplicationToTagsMapping_block_invoke()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = loadConfigurationFromJsonFile(@"features_for_applications");
  v5 = 0;
  v1 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v0 options:1 error:&v5];
  v2 = v5;
  v3 = FHApplicationToTagsMapping_fhFeaturesForApplications;
  FHApplicationToTagsMapping_fhFeaturesForApplications = v1;

  if (!FHApplicationToTagsMapping_fhFeaturesForApplications)
  {
    v4 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v7 = v2;
      _os_log_impl(&dword_226DD4000, v4, OS_LOG_TYPE_ERROR, "Error parsing JSON: %@", buf, 0xCu);
    }
  }
}

void *FHProprietaryCodesMapping()
{
  v11 = *MEMORY[0x277D85DE8];
  v0 = loadConfigurationFromJsonFile(@"income_filters");
  v8 = 0;
  v1 = [MEMORY[0x277CCAAA0] JSONObjectWithData:v0 options:1 error:&v8];
  v2 = v8;
  v3 = FHProprietaryCodesMapping_fhIncomePropietaryCodes;
  FHProprietaryCodesMapping_fhIncomePropietaryCodes = v1;

  v4 = FHProprietaryCodesMapping_fhIncomePropietaryCodes;
  if (!FHProprietaryCodesMapping_fhIncomePropietaryCodes)
  {
    v5 = FinHealthLogObject(@"FinHealthCore");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v2;
      _os_log_impl(&dword_226DD4000, v5, OS_LOG_TYPE_ERROR, "Error parsing JSON: %@", buf, 0xCu);
    }

    v4 = FHProprietaryCodesMapping_fhIncomePropietaryCodes;
  }

  v6 = v4;

  return v4;
}

id FHApplications(uint64_t a1)
{
  if (FHApplications_onceToken != -1)
  {
    FHApplications_cold_1();
  }

  v2 = FHApplications_fhApplications;

  return v2;
}

uint64_t __FHApplications_block_invoke()
{
  FHApplications_fhApplications = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Search", @"Payment Ring", @"Messaging", @"Test Client", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHCleanSuperMerchants(uint64_t a1)
{
  if (FHCleanSuperMerchants_onceToken != -1)
  {
    FHCleanSuperMerchants_cold_1();
  }

  v2 = FHCleanSuperMerchants_fhSuperMerchants;

  return v2;
}

uint64_t __FHCleanSuperMerchants_block_invoke()
{
  FHCleanSuperMerchants_fhSuperMerchants = [MEMORY[0x277CBEA60] arrayWithObjects:{@"uber", @"ubereats", @"nike", @"panera", @"exxon", @"mobil", @"acehardware", @"walgreens", @"duanereade", 0}];

  return MEMORY[0x2821F96F8]();
}

id FHSuperMerchants(uint64_t a1)
{
  if (FHSuperMerchants_onceToken != -1)
  {
    FHSuperMerchants_cold_1();
  }

  v2 = FHSuperMerchants_fhSuperMerchants;

  return v2;
}

uint64_t __FHSuperMerchants_block_invoke()
{
  FHSuperMerchants_fhSuperMerchants = [MEMORY[0x277CBEA60] arrayWithObjects:{@"Uber", @"Uber Eats", @"Nike", @"Panera", @"Exxon", @"Mobil", @"Ace Hardware", @"Walgreens", @"Duane Reade", 0}];

  return MEMORY[0x2821F96F8]();
}

id getCleanMerchantName(void *a1)
{
  v1 = MEMORY[0x277CCA900];
  v2 = a1;
  v3 = [v1 characterSetWithCharactersInString:@"!@#$%^&*()_+|"];
  v4 = [v2 componentsSeparatedByCharactersInSet:v3];

  v5 = [v4 componentsJoinedByString:&stru_283A7B918];
  v6 = [v5 stringByReplacingOccurrencesOfString:@" " withString:&stru_283A7B918];
  v7 = [v6 lowercaseString];

  return v7;
}

id FHMerchantsUnaffectedBySource(uint64_t a1)
{
  if (FHMerchantsUnaffectedBySource_onceToken != -1)
  {
    FHMerchantsUnaffectedBySource_cold_1();
  }

  v2 = FHMerchantsUnaffectedBySource_fhMerchantsUnaffectedBySource;

  return v2;
}

uint64_t __FHMerchantsUnaffectedBySource_block_invoke()
{
  FHMerchantsUnaffectedBySource_fhMerchantsUnaffectedBySource = [MEMORY[0x277CBEA60] arrayWithObjects:{@"apple", @"appleservices", 0}];

  return MEMORY[0x2821F96F8]();
}

__CFString *FHApplicationFromProcessName(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"passd"])
  {
    v2 = @"Search";
  }

  else if ([v1 isEqualToString:@"PassKitUI"])
  {
    v2 = @"Payment Ring";
  }

  else if ([v1 isEqualToString:@"engagementd"])
  {
    v2 = @"Messaging";
  }

  else if ([v1 isEqualToString:@"finhealth_client"])
  {
    v2 = @"Test Client";
  }

  else
  {
    v2 = @"unknown Client";
  }

  return v2;
}

id FHPeerPaymentForecastingSignalPriority(uint64_t a1)
{
  if (FHPeerPaymentForecastingSignalPriority_onceToken != -1)
  {
    FHPeerPaymentForecastingSignalPriority_cold_1();
  }

  v2 = FHPeerPaymentForecastingSignalPriority_peerPaymentForecastingSignalPriority;

  return v2;
}

uint64_t __FHPeerPaymentForecastingSignalPriority_block_invoke()
{
  FHPeerPaymentForecastingSignalPriority_peerPaymentForecastingSignalPriority = [MEMORY[0x277CBEAC0] dictionaryWithObjectsAndKeys:{&unk_283A88218, &unk_283A88230, &unk_283A88248, &unk_283A88260, &unk_283A88278, &unk_283A88290, &unk_283A882A8, &unk_283A882C0, &unk_283A882A8, &unk_283A882D8, &unk_283A882A8, &unk_283A882F0, &unk_283A882A8, &unk_283A88308, &unk_283A882A8, &unk_283A88320, 0}];

  return MEMORY[0x2821F96F8]();
}

uint64_t FHDataDirectory()
{
  v0 = CPSharedResourcesDirectory();

  return [v0 stringByAppendingPathComponent:@"/Library/FinHealth/"];
}

id FHModelDirectory()
{
  v0 = [CPSharedResourcesDirectory() stringByAppendingPathComponent:@"/Library/FinHealth/"];
  v1 = [v0 stringByAppendingPathComponent:@"/mlmodels/"];

  return v1;
}

id GetProcessingDate(uint64_t a1)
{
  if (GetProcessingDate_onceToken != -1)
  {
    GetProcessingDate_cold_1();
  }

  v2 = GetProcessingDate_processingDate;

  return v2;
}

uint64_t __GetProcessingDate_block_invoke()
{
  GetProcessingDate_processingDate = [MEMORY[0x277CBEAA8] now];

  return MEMORY[0x2821F96F8]();
}

double TimeWindowToSeconds(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 31536000.0 * -0.5;
    }

    if (a1 == 3)
    {
      return -31536000.0;
    }

LABEL_7:
    v2 = GetProcessingDate(a1);
    [v2 timeIntervalSinceReferenceDate];
    v1 = -v3;

    return v1;
  }

  if (a1 != 1)
  {
    goto LABEL_7;
  }

  return 0xFFFFFFFFFF895900;
}

uint64_t GetTimeOfDay(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a2;
  v5 = a1;
  v6 = [v3 currentCalendar];
  [v6 setTimeZone:v4];

  v7 = [v6 components:636 fromDate:v5];

  v8 = [v7 hour];
  if (v8 > 0x18)
  {
    v9 = 0;
  }

  else
  {
    v9 = qword_226E680A8[v8];
  }

  return v9;
}

__CFString *FHInsightTrendWindowToString(unint64_t a1)
{
  if (a1 > 3)
  {
    return @"week";
  }

  else
  {
    return off_2785CB5F8[a1];
  }
}

__CFString *FHMerchantCategoryToString(uint64_t a1)
{
  if ((a1 - 1) > 6)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785CB618[a1 - 1];
  }
}

uint64_t FHMerchantCategoryFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Food & Drinks"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Shopping"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Travel"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Services"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Entertainment"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Health"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"Transportation"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *GetDayOfWeekFromSignalDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 component:512 fromDate:v2];

  if ((v4 - 1) > 6)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_2785CB650[v4 - 1];
  }
}

id GetPeriodicCategoryFromFrequency(void *a1)
{
  v1 = MEMORY[0x277CCA988];
  v2 = a1;
  v3 = [[v1 alloc] initWithRoundingMode:0 scale:0 raiseOnExactness:0 raiseOnOverflow:0 raiseOnUnderflow:0 raiseOnDivideByZero:1];
  v4 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:86400];
  v5 = [v2 decimalNumberByDividingBy:v4 withBehavior:v3];

  v6 = [v5 integerValue];
  if ((v6 - 6) >= 3)
  {
    if ((v6 - 13) >= 3)
    {
      if ((v6 - 27) >= 7)
      {
        v7 = 1;
      }

      else
      {
        v7 = 5;
      }
    }

    else
    {
      v7 = 4;
    }
  }

  else
  {
    v7 = 3;
  }

  v8 = FHRecurringPeerPaymentPeriodicCategoryTypeToString(v7);

  return v8;
}

id FHDateFromNumberOfDays(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEAB8];
  v4 = a1;
  v5 = objc_alloc_init(v3);
  [v5 setDay:a2];
  v6 = [MEMORY[0x277CBEA80] currentCalendar];
  v7 = [v6 dateByAddingComponents:v5 toDate:v4 options:0];

  return v7;
}

id FHStartOfYear(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:6 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id FHStartOfLastYear(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setYear:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = FHStartOfYear(v5);

  return v6;
}

id FHDateStartOfWeek(void *a1, void *a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 currentCalendar];
  if ([v5 component:512 fromDate:v4] != a2)
  {
    v6 = [v5 nextDateAfterDate:v4 matchingUnit:512 value:a2 options:260];

    v4 = v6;
  }

  v7 = [v5 components:28702 fromDate:v4];

  v8 = [v5 dateFromComponents:v7];

  return v8;
}

id FHDateStartOfLastMonth(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v4 setMonth:-1];
  v5 = [v3 dateByAddingComponents:v4 toDate:v2 options:0];

  v6 = FHDateStartOfMonth(v5);

  return v6;
}

id FHDateStartOfMonth(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  v4 = [v3 components:14 fromDate:v2];

  v5 = [v3 dateFromComponents:v4];

  return v5;
}

id FHDateByAddingMonths(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setMonth:a2];
  v7 = [v5 dateByAddingComponents:v6 toDate:v4 options:0];

  return v7;
}

id FHDateByAddingWeeks(void *a1, uint64_t a2)
{
  v3 = MEMORY[0x277CBEA80];
  v4 = a1;
  v5 = [v3 currentCalendar];
  v6 = objc_alloc_init(MEMORY[0x277CBEAB8]);
  [v6 setDay:7 * a2];
  v7 = [v5 dateByAddingComponents:v6 toDate:v4 options:0];

  return v7;
}

id FHDateEndOfMonth(void *a1)
{
  v1 = FHDateByAddingMonths(a1, 1);
  v2 = FHDateStartOfMonth(v1);
  v3 = [v2 dateByAddingTimeInterval:-1.0];

  return v3;
}

id FHDateEndOfWeekStartingOnMonday(void *a1)
{
  v1 = FHDateStartOfWeek(a1, 2);
  v2 = FHDateByAddingWeeks(v1, 1);

  v3 = [v2 dateByAddingTimeInterval:-1.0];

  return v3;
}

uint64_t FHIsDateBetweenDates(void *a1, void *a2, void *a3, unsigned int a4, unsigned int a5)
{
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = v11;
  v13 = 0;
  if (v9 && v10 && v11)
  {
    v14 = a4 - 1;
    v15 = a5 - 1;
    v16 = [v10 compare:v9] == v14 || objc_msgSend(v10, "compare:", v9) == -1;
    v17 = [v12 compare:v9] == v15 || objc_msgSend(v12, "compare:", v9) == 1;
    v13 = v16 & v17;
  }

  return v13;
}

uint64_t FHNumberOfDaysBetweenDates(void *a1, void *a2, unsigned int a3)
{
  v3 = -1;
  if (a1 && a2)
  {
    v6 = MEMORY[0x277CBEA80];
    v7 = a2;
    v8 = a1;
    v9 = [v6 currentCalendar];
    v10 = [v9 components:16 fromDate:v8 toDate:v7 options:0];

    v3 = [v10 day] + a3;
  }

  return v3;
}

id FHShuffledArray(void *a1)
{
  v1 = a1;
  v2 = [v1 count];
  if (v2 < 2)
  {
    v6 = [v1 copy];
  }

  else
  {
    v3 = v2;
    v4 = [v1 mutableCopy];
    v5 = v3 - 1;
    do
    {
      [v4 exchangeObjectAtIndex:v5 withObjectAtIndex:arc4random() % v5];
      --v5;
    }

    while (v5);
    v6 = [v4 copy];
  }

  return v6;
}

uint64_t FHNumberOfDaysInMonthForDate(void *a1)
{
  v1 = MEMORY[0x277CBEA80];
  v2 = a1;
  v3 = [v1 currentCalendar];
  [v3 rangeOfUnit:16 inUnit:8 forDate:v2];
  v5 = v4;

  return v5;
}

unint64_t FHEqualObjects(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqual:a2];
  }

  else
  {
    return a1 == a2;
  }
}

unint64_t FHEqualStrings(void *a1, void *a2)
{
  if (a1 && a2)
  {
    return [a1 isEqualToString:a2];
  }

  else
  {
    return a1 == a2;
  }
}

void sub_226DF6240(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226DF76EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t checkIfIncomeCandidate(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t a5, void *a6, double a7)
{
  v13 = a3;
  v14 = a4;
  v15 = a6;
  if (a7 < 0.0 && a1 == 4 && a2 == 0)
  {
    v18 = 0;
    if (a5 <= 0x16 && ((1 << a5) & 0x6B0800) != 0)
    {
      v19 = FHProprietaryCodesMapping();
      v20 = [v19 objectForKey:@"proprietaryBankTransactionCode"];

      v21 = [v20 objectForKey:v13];
      if ([v21 containsObject:v14])
      {
        v18 = 0;
      }

      else
      {
        v18 = [v15 isEqualToString:@"GBP"];
      }
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

uint64_t FHPaymentRingSuggestionCategoryFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"MinimumRemainingPayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"LastPayment"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LastPaymentPlusMerchantCategory1"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LastPaymentPlusMerchantCategory2"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"NewPurchases"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"PayInNineMonths"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"PayInEightMonths"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"PayInSevenMonths"])
  {
    v2 = 8;
  }

  else if ([v1 isEqualToString:@"PayInSixMonths"])
  {
    v2 = 9;
  }

  else if ([v1 isEqualToString:@"PayInFiveMonths"])
  {
    v2 = 10;
  }

  else if ([v1 isEqualToString:@"PayInFourMonths"])
  {
    v2 = 11;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonths"])
  {
    v2 = 12;
  }

  else if ([v1 isEqualToString:@"PayInTwoMonths"])
  {
    v2 = 13;
  }

  else if ([v1 isEqualToString:@"PayInNineMonthsFromUtilization"])
  {
    v2 = 14;
  }

  else if ([v1 isEqualToString:@"PayInSixMonthsFromUtilization"])
  {
    v2 = 15;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonthsFromUtilization"])
  {
    v2 = 16;
  }

  else if ([v1 isEqualToString:@"PayInPlanCompletion"])
  {
    v2 = 17;
  }

  else if ([v1 isEqualToString:@"RemainingStatementBalance"])
  {
    v2 = 18;
  }

  else if ([v1 isEqualToString:@"CurrentBalance"])
  {
    v2 = 19;
  }

  else if ([v1 isEqualToString:@"OneThirdOfCurrentBalance"])
  {
    v2 = 20;
  }

  else if ([v1 isEqualToString:@"OneSixthOfCurrentBalance"])
  {
    v2 = 21;
  }

  else if ([v1 isEqualToString:@"OneNinthOfCurrentBalance"])
  {
    v2 = 22;
  }

  else if ([v1 isEqualToString:@"PayInThreeMonthsForTransactor"])
  {
    v2 = 23;
  }

  else if ([v1 isEqualToString:@"PayInSixMonthsForTransactor"])
  {
    v2 = 24;
  }

  else if ([v1 isEqualToString:@"PayInNineMonthsForTransactor"])
  {
    v2 = 25;
  }

  else if ([v1 isEqualToString:@"OneThirdOfStatementBalance"])
  {
    v2 = 26;
  }

  else if ([v1 isEqualToString:@"OneSixthOfStatementBalance"])
  {
    v2 = 27;
  }

  else if ([v1 isEqualToString:@"OneNinthOfStatementBalance"])
  {
    v2 = 28;
  }

  else if ([v1 isEqualToString:@"AverageOfMinimumAndStatetmentBalance"])
  {
    v2 = 29;
  }

  else if ([v1 isEqualToString:@"CardBalance"])
  {
    v2 = 30;
  }

  else if ([v1 isEqualToString:@"CombinedBalance"])
  {
    v2 = 31;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypeAmountVeryExpensive"])
  {
    v2 = 32;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypeRecurring"])
  {
    v2 = 33;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypeTopMerchant"])
  {
    v2 = 34;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureCompoundTypeTripEvents"])
  {
    v2 = 35;
  }

  else if ([v1 isEqualToString:@"FHSmartFeatureAggregateTypePeakSpend"])
  {
    v2 = 36;
  }

  else if ([v1 isEqualToString:@"Count"])
  {
    v2 = 37;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHPaymentRingSuggestionCategoryToString(unint64_t a1)
{
  if (a1 > 0x25)
  {
    return @"unknown";
  }

  else
  {
    return off_2785CB688[a1];
  }
}

void sub_226DF8C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226DF9018(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 - 56));
  _Unwind_Resume(a1);
}

void sub_226DF9BD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id location)
{
  objc_destroyWeak((v34 + 56));
  _Block_object_dispose((v35 - 160), 8);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226DFA95C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

__CFString *FHRecurringPeerPaymentPeriodicCategoryTypeToString(uint64_t a1)
{
  v3 = @"unknown";
  if (a1 <= 3)
  {
    v4 = @"daily";
    v5 = @"weekly";
    if (a1 != 3)
    {
      v5 = @"unknown";
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1 == 1)
    {
      v3 = @"not supported";
    }

    else
    {
      v3 = v4;
    }

    return v3;
  }

  switch(a1)
  {
    case 4:
      v3 = @"biweekly";

      break;
    case 5:
      v3 = @"monthly";
      break;
    case 6:
      v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"FHRecurringPeerPaymentPeriodicCategoryTypeCount: %lu", 6];

      return v3;
    default:

      break;
  }

  return v3;
}

uint64_t FHRecurringPeerPaymentPeriodicCategoryTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"not supported"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"daily"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"weekly"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"biweekly"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"monthly"])
  {
    v2 = 5;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_226E004B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226E00A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226E00E54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FHTransactionInternalStateFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Dirty"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"RawConsistent"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"UpdatedRealtime"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"UpdatedBatch"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"Consistent"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Invalid"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"RequiresRecomputation"])
  {
    v2 = 7;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHTransactionInternalStateToString(uint64_t a1)
{
  v3 = @"Unknown";
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 == 7)
      {
        v3 = @"RequiresRecomputation";
      }

      else
      {
        if (a1 == 8)
        {
          v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"FHTransactionInternalStateCount: %lu", 8];
        }
      }
    }

    else
    {
      v9 = @"Invalid";
      if (a1 != 6)
      {
        v9 = @"Unknown";
      }

      if (a1 == 5)
      {
        v3 = @"Consistent";
      }

      else
      {
        v3 = v9;
      }
    }
  }

  else
  {
    v4 = @"UpdatedRealtime";
    v5 = @"UpdatedBatch";
    if (a1 != 4)
    {
      v5 = @"Unknown";
    }

    if (a1 != 3)
    {
      v4 = v5;
    }

    v6 = @"Dirty";
    v7 = @"RawConsistent";
    if (a1 != 2)
    {
      v7 = @"Unknown";
    }

    if (a1 != 1)
    {
      v6 = v7;
    }

    if (a1 <= 2)
    {
      v3 = v6;
    }

    else
    {
      v3 = v4;
    }
  }

  return v3;
}

__CFString *FHTransactionAccountTypeToString(uint64_t a1)
{
  if ((a1 - 1) > 5)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785CC518[a1 - 1];
  }
}

uint64_t FHTransactionAccountTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"PeerPayment"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Broadway"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Count"])
  {
    v2 = 6;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

__CFString *FHTransactionPeerPaymentSubtypeToString(uint64_t a1)
{
  if ((a1 - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_2785CC548[a1 - 1];
  }
}

uint64_t FHTransactionPeerPaymentSubtypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Unknown"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Send"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Receive"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"Request"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"Count"])
  {
    v2 = 4;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

FHTransaction *TransactionFromPKPaymentTransaction(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = objc_alloc_init(FHTransaction);
  if (objc_opt_class())
  {
    v4 = v2;
    v5 = [v4 identifier];
    [(FHTransaction *)v3 setIdentifier:v5];

    v6 = [v4 serviceIdentifier];
    [(FHTransaction *)v3 setTransactionServiceIdentifier:v6];

    v7 = [v4 paymentHash];
    [(FHTransaction *)v3 setPaymentHash:v7];

    v8 = [v4 transactionSourceIdentifier];
    [(FHTransaction *)v3 setTransactionSourceIdentifier:v8];

    v9 = [v4 amount];
    [(FHTransaction *)v3 setAmount:v9];

    v10 = [v4 currencyCode];
    [(FHTransaction *)v3 setCurrencyCode:v10];

    v11 = [v4 transactionDate];
    [(FHTransaction *)v3 setTransactionDate:v11];

    v12 = [v4 transactionStatusChangedDate];
    [(FHTransaction *)v3 setTransactionStatusChangedDate:v12];

    -[FHTransaction setTransactionStatus:](v3, "setTransactionStatus:", [v4 transactionStatus]);
    -[FHTransaction setTransactionSource:](v3, "setTransactionSource:", [v4 transactionSource]);
    -[FHTransaction setCardType:](v3, "setCardType:", [v4 cardType]);
    -[FHTransaction setTransactionType:](v3, "setTransactionType:", [v4 transactionType]);
    v13 = [v4 accountType];
    if ((v13 - 1) >= 3)
    {
      v14 = 0;
    }

    else
    {
      v14 = v13;
    }

    [(FHTransaction *)v3 setAccountType:v14];
    v15 = [v4 altDSID];
    [(FHTransaction *)v3 setAltDSID:v15];

    v16 = [v4 receiptIdentifier];
    [(FHTransaction *)v3 setReceiptIdentifier:v16];

    v17 = [v4 associatedReceiptUniqueID];
    [(FHTransaction *)v3 setAssociatedReceiptUniqueID:v17];

    [(FHTransaction *)v3 setTransactionInternalState:0];
    v18 = [v4 timeZone];
    [(FHTransaction *)v3 setTimeZone:v18];

    v19 = [v4 merchant];
    v20 = [v19 uniqueIdentifier];
    [(FHTransaction *)v3 setMerchantUniqueIdentifier:v20];

    v21 = [v4 merchant];
    v22 = [v21 name];
    [(FHTransaction *)v3 setName:v22];

    v23 = [v4 merchant];
    v24 = [v23 rawName];
    [(FHTransaction *)v3 setRawName:v24];

    v25 = [v4 merchant];
    -[FHTransaction setIndustryCode:](v3, "setIndustryCode:", [v25 industryCode]);

    v26 = [v4 merchant];
    v27 = [v26 industryCategory];
    [(FHTransaction *)v3 setIndustryCategory:v27];

    v28 = [v4 merchant];
    v29 = [v28 displayName];
    [(FHTransaction *)v3 setDisplayName:v29];

    v30 = [v4 merchant];
    v31 = [v30 rawCountry];
    [(FHTransaction *)v3 setCountry:v31];

    -[FHTransaction setCategory:](v3, "setCategory:", [v4 effectiveTransactionCategory]);
    v32 = [v4 merchant];
    v33 = [v32 detailedCategory];
    [(FHTransaction *)v3 setMerchantDetailedCategory:v33];

    v34 = [v4 merchant];
    v35 = [v34 mapsMerchant];
    -[FHTransaction setMapsMerchantID:](v3, "setMapsMerchantID:", [v35 identifier]);

    v36 = [v4 merchant];
    v37 = [v36 mapsBrand];
    -[FHTransaction setMapsMerchantBrandID:](v3, "setMapsMerchantBrandID:", [v37 identifier]);

    v38 = [v4 merchant];
    v39 = [v38 mapsMerchant];
    -[FHTransaction setMapsMerchantResultProviderID:](v3, "setMapsMerchantResultProviderID:", [v39 resultProviderIdentifier]);

    v40 = [v4 merchant];
    v41 = [v40 mapsBrand];
    -[FHTransaction setMapsMerchantBrandResultProviderID:](v3, "setMapsMerchantBrandResultProviderID:", [v41 resultProviderIdentifier]);

    v42 = [v4 location];
    [(FHTransaction *)v3 setLocation:v42];

    if (!_os_feature_enabled_impl())
    {
      goto LABEL_19;
    }

    v43 = [(FHTransaction *)v3 location];
    if (!v43)
    {
      goto LABEL_9;
    }

    v41 = [(FHTransaction *)v3 location];
    [v41 coordinate];
    if (v44 != 0.0)
    {
      goto LABEL_17;
    }

    v1 = [(FHTransaction *)v3 location];
    [v1 coordinate];
    if (v45 == 0.0)
    {
LABEL_9:
      v46 = [(FHTransaction *)v3 country];
      if (v46)
      {
        v47 = v46;
        v48 = +[FHTransaction _allowedCountryNamesForMapsMerchant];
        v49 = [(FHTransaction *)v3 country];
        v50 = [v48 containsObject:v49];

        if (v43)
        {
        }

        if ((v50 & 1) == 0)
        {
          goto LABEL_19;
        }

        v51 = [v4 merchant];
        v52 = [v51 mapsMerchant];
        v53 = [v52 location];
        [(FHTransaction *)v3 setLocation:v53];

        v43 = FinHealthLogObject(@"FinHealthCore");
        if (!os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          goto LABEL_18;
        }

        v41 = [(FHTransaction *)v3 location];
        v73 = 138412290;
        v74 = v41;
        _os_log_impl(&dword_226DD4000, v43, OS_LOG_TYPE_DEBUG, "FH_GEO_REVERSE_LOOKUP enabled, transaction.location is :%@", &v73, 0xCu);
LABEL_17:

LABEL_18:
        goto LABEL_19;
      }

      if (!v43)
      {
LABEL_19:
        v54 = [v4 merchant];
        v55 = [v54 mapsMerchant];
        v56 = [v55 postalAddress];

        v57 = [v56 street];
        [(FHTransaction *)v3 setStreet:v57];

        v58 = [v56 ISOCountryCode];
        [(FHTransaction *)v3 setCountryCode:v58];

        if ([(FHTransaction *)v3 transactionSource]== 1)
        {
          v59 = [v56 city];
          [(FHTransaction *)v3 setCity:v59];

          v60 = [v56 state];
          [(FHTransaction *)v3 setState:v60];

          v61 = [v56 postalCode];
          [(FHTransaction *)v3 setZip:v61];
        }

        else
        {
          v62 = [v4 merchant];
          v63 = [v62 city];
          [(FHTransaction *)v3 setCity:v63];

          v64 = [v4 merchant];
          v65 = [v64 state];
          [(FHTransaction *)v3 setState:v65];

          v61 = [v4 merchant];
          v66 = [v61 zip];
          [(FHTransaction *)v3 setZip:v66];
        }

        v67 = [v4 peerPaymentCounterpartHandle];
        [(FHTransaction *)v3 setPeerPaymentCounterpartHandle:v67];

        -[FHTransaction setPeerPaymentType:](v3, "setPeerPaymentType:", [v4 peerPaymentType]);
        v68 = [v4 peerPaymentMemo];
        [(FHTransaction *)v3 setTransactionDescription:v68];

        v69 = [v4 peerPaymentMemo];
        [(FHTransaction *)v3 setProcessedDescription:v69];

        -[FHTransaction setRecurring:](v3, "setRecurring:", [v4 isRecurring]);
        -[FHTransaction setDisputeType:](v3, "setDisputeType:", [v4 disputeType]);
        -[FHTransaction setDisputeStatus:](v3, "setDisputeStatus:", [v4 disputeStatus]);
        v70 = [v4 disputeOpenDate];
        [(FHTransaction *)v3 setDisputeOpenDate:v70];

        v71 = [v4 disputeLastUpdatedDate];
        [(FHTransaction *)v3 setDisputeLastUpdatedDate:v71];

        goto LABEL_23;
      }
    }

    goto LABEL_17;
  }

LABEL_23:

  return v3;
}

FHTransaction *TransactionFromArray(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(FHTransaction);
  v3 = [v1 intAtIndex:9];
  v4 = [objc_alloc(MEMORY[0x277CCA980]) initWithInteger:v3];
  v5 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v1, "unsignedIntAtIndex:", 12)}];
  v6 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:{objc_msgSend(v1, "unsignedIntAtIndex:", 14)}];
  v7 = [v1 stringAtIndex:1];
  [(FHTransaction *)v2 setIdentifier:v7];

  v8 = [v1 stringAtIndex:2];
  [(FHTransaction *)v2 setTransactionServiceIdentifier:v8];

  v9 = [v1 stringAtIndex:6];
  [(FHTransaction *)v2 setFinanceAccountIdentifier:v9];

  v10 = [v1 stringAtIndex:3];
  [(FHTransaction *)v2 setFinanceTransactionIdentifier:v10];

  v11 = [v1 stringAtIndex:4];
  [(FHTransaction *)v2 setFinanceTransactionSharedIdentifier:v11];

  -[FHTransaction setFinanceTransactionSource:](v2, "setFinanceTransactionSource:", [v1 intAtIndex:5]);
  v12 = [v1 stringAtIndex:7];
  [(FHTransaction *)v2 setPaymentHash:v12];

  v13 = [v1 stringAtIndex:8];
  [(FHTransaction *)v2 setTransactionSourceIdentifier:v13];

  v14 = [MEMORY[0x277CCA980] defaultDatabaseAmountMultiplier];
  v15 = [v4 decimalNumberByDividingBy:v14];
  [(FHTransaction *)v2 setAmount:v15];

  [(FHTransaction *)v2 setAmountFromDatabase:v3];
  v16 = [v1 stringAtIndex:10];
  [(FHTransaction *)v2 setCurrencyCode:v16];

  [(FHTransaction *)v2 setTransactionDate:v5];
  -[FHTransaction setTransactionStatus:](v2, "setTransactionStatus:", [v1 intAtIndex:13]);
  [(FHTransaction *)v2 setTransactionStatusChangedDate:v6];
  -[FHTransaction setTransactionSource:](v2, "setTransactionSource:", [v1 intAtIndex:15]);
  -[FHTransaction setCardType:](v2, "setCardType:", [v1 intAtIndex:16]);
  -[FHTransaction setTransactionType:](v2, "setTransactionType:", [v1 intAtIndex:17]);
  -[FHTransaction setAccountType:](v2, "setAccountType:", [v1 intAtIndex:18]);
  v17 = [v1 stringAtIndex:19];
  [(FHTransaction *)v2 setAltDSID:v17];

  v18 = [v1 stringAtIndex:20];
  [(FHTransaction *)v2 setReceiptIdentifier:v18];

  v19 = [v1 stringAtIndex:21];
  [(FHTransaction *)v2 setAssociatedReceiptUniqueID:v19];

  -[FHTransaction setTransactionInternalState:](v2, "setTransactionInternalState:", [v1 intAtIndex:22]);
  v20 = [v1 stringAtIndex:23];
  [(FHTransaction *)v2 setMerchantUniqueIdentifier:v20];

  -[FHTransaction setIndustryCode:](v2, "setIndustryCode:", [v1 intAtIndex:24]);
  v21 = [v1 stringAtIndex:25];
  [(FHTransaction *)v2 setName:v21];

  v22 = [v1 stringAtIndex:26];
  [(FHTransaction *)v2 setRawName:v22];

  -[FHTransaction setCategory:](v2, "setCategory:", [v1 intAtIndex:27]);
  v23 = [v1 stringAtIndex:28];
  [(FHTransaction *)v2 setMerchantDetailedCategory:v23];

  v24 = [v1 stringAtIndex:29];
  [(FHTransaction *)v2 setDisplayName:v24];

  v25 = [v1 stringAtIndex:30];
  [(FHTransaction *)v2 setStreet:v25];

  v26 = [v1 stringAtIndex:31];
  [(FHTransaction *)v2 setCity:v26];

  v27 = [v1 stringAtIndex:32];
  [(FHTransaction *)v2 setState:v27];

  v28 = [v1 stringAtIndex:33];
  [(FHTransaction *)v2 setZip:v28];

  v29 = [v1 stringAtIndex:34];
  [(FHTransaction *)v2 setCountryCode:v29];

  v30 = [v1 stringAtIndex:35];
  [(FHTransaction *)v2 setCountry:v30];

  v31 = [v1 stringAtIndex:36];
  -[FHTransaction setMapsMerchantID:](v2, "setMapsMerchantID:", [v31 longLongValue]);

  -[FHTransaction setMapsMerchantResultProviderID:](v2, "setMapsMerchantResultProviderID:", [v1 intAtIndex:37]);
  v32 = [v1 stringAtIndex:38];
  -[FHTransaction setMapsMerchantBrandID:](v2, "setMapsMerchantBrandID:", [v32 longLongValue]);

  -[FHTransaction setMapsMerchantBrandResultProviderID:](v2, "setMapsMerchantBrandResultProviderID:", [v1 intAtIndex:39]);
  v33 = [v1 stringAtIndex:46];
  [(FHTransaction *)v2 setPeerPaymentCounterpartHandle:v33];

  -[FHTransaction setPeerPaymentType:](v2, "setPeerPaymentType:", [v1 intAtIndex:47]);
  v34 = [v1 stringAtIndex:48];
  [(FHTransaction *)v2 setTransactionDescription:v34];

  v35 = [v1 stringAtIndex:49];
  [(FHTransaction *)v2 setProcessedDescription:v35];

  -[FHTransaction setRecurring:](v2, "setRecurring:", [v1 intAtIndex:50] != 0);
  v36 = [v1 stringAtIndex:53];
  [(FHTransaction *)v2 setProprietaryBankTransactionCode:v36];

  v37 = [v1 stringAtIndex:53];
  [(FHTransaction *)v2 setProprietaryBankTransactionIssuer:v37];

  v38 = [v1 objectAtIndex:40];
  [v38 doubleValue];
  v40 = v39;

  v41 = [v1 objectAtIndex:41];
  [v41 doubleValue];
  v43 = v42;

  v44 = [v1 objectAtIndex:43];
  [v44 doubleValue];
  v46 = v45;

  v47 = [v1 objectAtIndex:42];
  [v47 doubleValue];
  v49 = v48;

  v50 = CLLocationCoordinate2DMake(v40, v43);
  if ((v40 != 0.0 || v43 != 0.0) && CLLocationCoordinate2DIsValid(v50))
  {
    v51 = objc_alloc(MEMORY[0x277CE41F8]);
    v52 = [MEMORY[0x277CBEAA8] now];
    v53 = [v51 initWithCoordinate:v52 altitude:v50.latitude horizontalAccuracy:v50.longitude verticalAccuracy:0.0 timestamp:{v46, v49}];
    [(FHTransaction *)v2 setLocation:v53];
  }

  if ([v1 intAtIndex:11])
  {
    v54 = [MEMORY[0x277CBEBB0] timeZoneForSecondsFromGMT:{objc_msgSend(v1, "intAtIndex:", 11)}];
    [(FHTransaction *)v2 setTimeZone:v54];
  }

  -[FHTransaction setDisputeType:](v2, "setDisputeType:", [v1 intAtIndex:44]);
  -[FHTransaction setDisputeStatus:](v2, "setDisputeStatus:", [v1 intAtIndex:45]);
  v55 = [v1 unsignedIntAtIndex:51];
  v56 = [v1 unsignedIntAtIndex:52];
  if (v55 >= 1)
  {
    v57 = v56;
    if (v56 >= 1)
    {
      v58 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v55];
      [(FHTransaction *)v2 setDisputeOpenDate:v58];

      v59 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSinceReferenceDate:v57];
      [(FHTransaction *)v2 setDisputeLastUpdatedDate:v59];
    }
  }

  return v2;
}

void sub_226E1118C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v17 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226E11A24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, ...)
{
  va_start(va, a52);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226E137C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va1, a18);
  va_start(va, a18);
  v19 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  v23 = va_arg(va1, void);
  v24 = va_arg(va1, void);
  v25 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void *FHAccount.init(from:)(uint64_t a1)
{
  v2 = sub_226E632A0();
  v143 = *(v2 - 8);
  v144 = v2;
  MEMORY[0x28223BE20](v2);
  v142 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  MEMORY[0x28223BE20](v4 - 8);
  v140 = &v136 - v5;
  v6 = sub_226E62D70();
  v158 = *(v6 - 8);
  v159 = v6;
  MEMORY[0x28223BE20](v6);
  v157 = &v136 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6860, &qword_226E68358);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v141 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v156 = &v136 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v139 = &v136 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v155 = &v136 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v138 = &v136 - v18;
  MEMORY[0x28223BE20](v17);
  v154 = &v136 - v19;
  v20 = sub_226E62D40();
  v152 = *(v20 - 8);
  v153 = v20;
  MEMORY[0x28223BE20](v20);
  v137 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6868, &unk_226E68360);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v151 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v150 = &v136 - v25;
  v26 = sub_226E62E80();
  v148 = *(v26 - 8);
  v149 = v26;
  v27 = MEMORY[0x28223BE20](v26);
  v147 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v146 = &v136 - v29;
  v30 = sub_226E62C50();
  v145 = *(v30 - 8);
  v31 = MEMORY[0x28223BE20](v30);
  v33 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v35 = &v136 - v34;
  v36 = sub_226E635C0();
  v37 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v39 = &v136 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_226E62E40();
  sub_226E635B0();
  (*(v37 + 8))(v39, v36);
  v41 = v40;
  v42 = sub_226E639B0();

  [v40 setAccountID_];

  v43 = v145;
  [v40 setSourceType_];
  sub_226E62DC0();
  (*(v43 + 32))(v33, v35, v30);
  v44 = (*(v43 + 88))(v33, v30);
  v45 = 0;
  if (v44 != *MEMORY[0x277CC6B50])
  {
    if (v44 == *MEMORY[0x277CC6B58])
    {
      v45 = 1;
    }

    else
    {
      (*(v43 + 8))(v33, v30, 0);
      v45 = -1;
    }
  }

  [v40 setAccountCategory_];
  v46 = v146;
  sub_226E62DB0();
  v48 = v147;
  v47 = v148;
  v49 = v46;
  v50 = v149;
  (*(v148 + 32))(v147, v49, v149);
  v51 = (*(v47 + 88))(v48, v50);
  v52 = v153;
  v53 = v151;
  if (v51 == *MEMORY[0x277CC7158])
  {
    v54 = 4;
    v55 = v152;
  }

  else
  {
    v55 = v152;
    if (v51 == *MEMORY[0x277CC7170])
    {
      v54 = 2;
    }

    else if (v51 == *MEMORY[0x277CC7178])
    {
      v54 = 1;
    }

    else if (v51 == *MEMORY[0x277CC7168])
    {
      v54 = 3;
    }

    else if (v51 == *MEMORY[0x277CC7160])
    {
      v54 = 5;
    }

    else
    {
      (*(v47 + 8))(v48, v50);
      v54 = 0;
    }
  }

  [v41 setAccountType_];
  sub_226E62E10();
  v56 = sub_226E639B0();

  [v41 setAccountDescription_];

  v57 = v150;
  sub_226E62DE0();
  v58 = v55[6];
  v59 = v58(v57, 1, v52);
  sub_226E15E98(v57, &qword_27D7B6868, &unk_226E68360);
  if (v59 == 1)
  {
    v60 = -1;
    v62 = v158;
    v61 = v159;
  }

  else
  {
    sub_226E62DE0();
    result = v58(v53, 1, v52);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    v64 = v137;
    (v55[2])(v137, v53, v52);
    v65 = (v55[11])(v64, v52);
    v62 = v158;
    v61 = v159;
    if (v65 == *MEMORY[0x277CC6D40])
    {
      v60 = 0;
    }

    else if (v65 == *MEMORY[0x277CC6D48])
    {
      v60 = 1;
    }

    else if (v65 == *MEMORY[0x277CC6D58])
    {
      v60 = 2;
    }

    else if (v65 == *MEMORY[0x277CC6D50])
    {
      v60 = 3;
    }

    else
    {
      (v55[1])(v64, v52);
      v60 = -1;
    }

    (v55[1])(v53, v52);
  }

  [v41 setAccountStatus_];
  sub_226E62E50();
  v66 = sub_226E639B0();

  [v41 setCurrency_];

  v67 = v154;
  sub_226E62DD0();
  v68 = v67;
  v69 = v138;
  sub_226E15E28(v68, v138);
  v70 = v62 + 48;
  v71 = *(v62 + 48);
  v72 = v71(v69, 1, v61);
  v152 = v41;
  v153 = a1;
  if (v72 == 1)
  {
    v73 = 0;
  }

  else
  {
    v74 = v157;
    (*(v62 + 32))(v157, v69, v61);
    v75 = sub_226E62D60();
    v76 = v75;
    v78 = v77;
    v80 = v79;
    v81 = v62 + 48;
    v82 = HIDWORD(v75);
    v83 = v71;
    v84 = HIWORD(v75);
    v85 = v77 >> 16;
    v150 = HIDWORD(v77);
    v151 = HIWORD(v77);
    v86 = HIWORD(v79);
    v87 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v160 = v76;
    v161 = v82;
    v70 = v81;
    v162 = v84;
    v71 = v83;
    v163 = v78;
    v164 = v85;
    v62 = v158;
    v61 = v159;
    v165 = v150;
    v166 = v151;
    v167 = v80;
    v168 = v86;
    v41 = v152;
    a1 = v153;
    v73 = [v87 initWithDecimal_];
    (*(v62 + 8))(v74, v61);
  }

  v88 = v140;
  sub_226E15E98(v154, &qword_27D7B6860, &qword_226E68358);
  [v41 setCreditLimit_];

  sub_226E62E00();
  v89 = sub_226E63590();
  v90 = *(v89 - 8);
  v91 = 0;
  if ((*(v90 + 48))(v88, 1, v89) != 1)
  {
    v91 = sub_226E63530();
    (*(v90 + 8))(v88, v89);
  }

  [v41 setNextPaymentDate_];

  v92 = v155;
  sub_226E62E20();
  v93 = v92;
  v94 = v139;
  sub_226E15E28(v93, v139);
  if (v71(v94, 1, v61) == 1)
  {
    v95 = 0;
  }

  else
  {
    v96 = v157;
    (*(v62 + 32))(v157, v94, v61);
    v97 = sub_226E62D60();
    v98 = v97;
    v100 = v99;
    v102 = v101;
    v103 = HIDWORD(v97);
    v104 = HIWORD(v97);
    v105 = v99 >> 16;
    v106 = HIDWORD(v99);
    v154 = v70;
    v107 = HIWORD(v99);
    v151 = v71;
    v108 = HIWORD(v101);
    v109 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v160 = v98;
    v161 = v103;
    v162 = v104;
    v62 = v158;
    v61 = v159;
    v163 = v100;
    v164 = v105;
    v165 = v106;
    v41 = v152;
    a1 = v153;
    v166 = v107;
    v167 = v102;
    v168 = v108;
    v71 = v151;
    v95 = [v109 initWithDecimal_];
    (*(v62 + 8))(v96, v61);
  }

  sub_226E15E98(v155, &qword_27D7B6860, &qword_226E68358);
  [v41 setMinimumPaymentAmount_];

  v110 = v156;
  sub_226E62E30();
  v111 = v110;
  v112 = v141;
  sub_226E15E28(v111, v141);
  if (v71(v112, 1, v61) == 1)
  {
    v113 = 0;
  }

  else
  {
    (*(v62 + 32))(v157, v112, v61);
    v114 = sub_226E62D60();
    v115 = v114;
    v117 = v116;
    v119 = v118;
    v120 = HIDWORD(v114);
    v121 = HIWORD(v114);
    v122 = v116 >> 16;
    v123 = HIDWORD(v116);
    v124 = HIWORD(v116);
    v125 = HIWORD(v118);
    v126 = objc_allocWithZone(MEMORY[0x277CCA980]);
    v160 = v115;
    v161 = v120;
    v162 = v121;
    v163 = v117;
    v164 = v122;
    v165 = v123;
    v41 = v152;
    a1 = v153;
    v166 = v124;
    v167 = v119;
    v168 = v125;
    v113 = [v126 initWithDecimal_];
    (*(v62 + 8))(v157, v159);
  }

  sub_226E15E98(v156, &qword_27D7B6860, &qword_226E68358);
  [v41 setOverduePaymentAmount_];

  sub_226E62DF0();
  v127 = sub_226E639B0();

  [v41 setInstitutionName_];

  v128 = v41;
  v129 = v142;
  sub_226E62D90();
  sub_226E63280();
  v130 = v144;
  v131 = *(v143 + 8);
  v131(v129, v144);
  v132 = sub_226E639B0();

  [v128 setInstitutionID_];

  sub_226E62D90();
  sub_226E63290();
  v131(v129, v130);
  v133 = sub_226E639B0();

  [v128 setUniqueAccountID_];

  sub_226E62DA0();
  v134 = sub_226E639B0();

  [v128 setExternalAccountID_];

  [v128 setDpanSuffix_];
  [v128 setFpanSuffix_];
  [v128 setVirtualCardSuffix_];

  v135 = sub_226E62E60();
  (*(*(v135 - 8) + 8))(a1, v135);
  return v128;
}

uint64_t FHAccount.FHAccountCategory(from:)(uint64_t a1)
{
  v2 = sub_226E62C50();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277CC6B50])
  {
    if (v6 == *MEMORY[0x277CC6B58])
    {
      return 1;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return -1;
    }
  }

  return result;
}

uint64_t FHAccount.FHAccountType(from:)(uint64_t a1)
{
  v2 = sub_226E62E80();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  if (v6 == *MEMORY[0x277CC7158])
  {
    return 4;
  }

  if (v6 == *MEMORY[0x277CC7170])
  {
    return 2;
  }

  if (v6 == *MEMORY[0x277CC7178])
  {
    return 1;
  }

  if (v6 == *MEMORY[0x277CC7168])
  {
    return 3;
  }

  if (v6 == *MEMORY[0x277CC7160])
  {
    return 5;
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t FHAccount.FHAccountStatus(from:)(uint64_t a1)
{
  v2 = sub_226E62D40();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, a1, v2);
  v6 = (*(v3 + 88))(v5, v2);
  result = 0;
  if (v6 != *MEMORY[0x277CC6D40])
  {
    if (v6 == *MEMORY[0x277CC6D48])
    {
      return 1;
    }

    else if (v6 == *MEMORY[0x277CC6D58])
    {
      return 2;
    }

    else if (v6 == *MEMORY[0x277CC6D50])
    {
      return 3;
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      return -1;
    }
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226E15E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6860, &qword_226E68358);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E15E98(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_226E15EF8()
{
  type metadata accessor for TaskCollectionRegistry();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_226E199E0(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  qword_27D7B6D98 = v0;
  return result;
}

uint64_t *sub_226E15F44()
{
  if (qword_27D7B6D90 != -1)
  {
    swift_once();
  }

  return &qword_27D7B6D98;
}

uint64_t static TaskCollectionRegistry.shared.getter()
{
  if (qword_27D7B6D90 != -1)
  {
    swift_once();
  }
}

uint64_t sub_226E15FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v4 + 112);
  *(v4 + 112) = 0x8000000000000000;
  sub_226E192BC(&unk_226E68378, v8, a1, isUniquelyReferenced_nonNull_native);
  *(v4 + 112) = v11;
  return swift_endAccess();
}

uint64_t sub_226E160C8(uint64_t a1, int *a2)
{
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 16) = v3;
  *v3 = v2;
  v3[1] = sub_226E1A614;

  return v5();
}

void *sub_226E161B0(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  if (*(v3 + 16))
  {

    v4 = sub_226E18C8C(a1);
    if (v5)
    {
      v7 = *(*(v3 + 56) + 16 * v4);

      *(swift_allocObject() + 16) = v7;
      return &unk_226E68388;
    }
  }

  return 0;
}

uint64_t sub_226E16270(int *a1)
{
  v4 = (a1 + *a1);
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_226E1A614;

  return v4();
}

uint64_t TaskCollectionRegistry.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t TaskCollectionRegistry.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t static Task<>.setTimeoutWithTaskGroup<A>(timeoutInterval:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  return MEMORY[0x2822009F8](sub_226E163FC, 0, 0);
}

uint64_t sub_226E163FC()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = *(v0 + 32);
  *(v3 + 16) = v1;
  *(v3 + 24) = v4;
  *(v3 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_226E164F8;
  v6 = *(v0 + 16);

  return MEMORY[0x282200740](v6);
}

uint64_t sub_226E164F8()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226E16634, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_226E16634()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E16698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 56) = a5;
  *(v6 + 48) = a6;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = sub_226E63D80();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E167AC, 0, 0);
}

uint64_t sub_226E167AC()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[6];
  v5 = v0[4];
  v4 = v0[5];
  v6 = sub_226E63B80();
  v7 = *(*(v6 - 8) + 56);
  v7(v1, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;
  v8[5] = v5;
  v8[6] = v4;

  v0[13] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B6878, &qword_226E68920);
  v9 = sub_226E63C10();
  sub_226E16E40(v1, &unk_226E68588, v8, v9);
  sub_226E1A268(v1);
  v7(v1, 1, 1, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = v3;
  sub_226E16E40(v1, &unk_226E68598, v10, v9);
  sub_226E1A268(v1);
  v11 = swift_task_alloc();
  v0[14] = v11;
  *v11 = v0;
  v11[1] = sub_226E169C0;
  v12 = v0[11];

  return MEMORY[0x2822004D0](v12, 0, 0, v9);
}

uint64_t sub_226E169C0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_226E16CC8;
  }

  else
  {
    v2 = sub_226E16AD4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E16AD4()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  sub_226E63C00();
  (*(v4 + 16))(v1, v2, v3);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 48))(v1, 1, v5);
  v8 = *(v4 + 8);
  if (v7 == 1)
  {
    v9 = v0[11];
    v10 = v0[8];
    v8(v0[10], v10);
    sub_226E19F54();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
    v8(v9, v10);
  }

  else
  {
    v13 = v0[10];
    v14 = v0[7];
    v15 = v0[2];
    v8(v0[11], v0[8]);
    (*(v6 + 32))(v15, v13, v14);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_226E16CC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E16D48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_226E1A614;

  return v8(a1);
}

uint64_t sub_226E16E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v19 - v9;
  sub_226E1A598(a1, v19 - v9, &qword_27D7B6870, &qword_226E683B0);
  v11 = sub_226E63B80();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_226E1A268(v10);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_226E63B40();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_226E63B70();
    (*(v12 + 8))(v10, v11);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v5;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_226E17024(double a1)
{
  *(v1 + 16) = a1;
  v2 = sub_226E63F10();
  *(v1 + 24) = v2;
  *(v1 + 32) = *(v2 - 8);
  *(v1 + 40) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E170E4, 0, 0);
}

uint64_t sub_226E170E4()
{
  v1 = sub_226E640F0();
  v3 = v2;
  sub_226E64040();
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_226E171C0;

  return sub_226E18718(v1, v3, 0, 0, 1);
}

uint64_t sub_226E171C0()
{
  v2 = *(*v1 + 40);
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  *(*v1 + 56) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_226E173C8;
  }

  else
  {
    v5 = sub_226E17330;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226E17330(uint64_t a1)
{
  sub_226E19F54();
  swift_allocError();
  *v2 = 3;
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_226E173C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Task<>.setTimeout<A>(timeoutInterval:task:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *(v5 + 40) = a3;
  *(v5 + 48) = a4;
  *(v5 + 32) = a2;
  *(v5 + 24) = a5;
  *(v5 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E174D4, 0, 0);
}

uint64_t sub_226E174D4()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[3];
  v6 = sub_226E63B80();
  v7 = *(*(v6 - 8) + 56);
  v7(v2, 1, 1, v6);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v1;
  v8[5] = v4;
  v8[6] = v3;

  v0[8] = sub_226E17D44(0, 0, v2, &unk_226E683C0, v8, v1);
  v7(v2, 1, 1, v6);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = v5;
  v10 = sub_226E18338(0, 0, v2, &unk_226E683D0, v9);
  v0[9] = v10;
  v11 = swift_task_alloc();
  v0[10] = v11;
  *v11 = v0;
  v11[1] = sub_226E176AC;
  v12 = MEMORY[0x277D839B0];

  return MEMORY[0x282200460](v0 + 13, v10, v12);
}

uint64_t sub_226E176AC()
{

  return MEMORY[0x2822009F8](sub_226E177A8, 0, 0);
}

uint64_t sub_226E177A8()
{
  if (*(v0 + 104))
  {
    sub_226E63BA0();
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    *v1 = v0;
    v1[1] = sub_226E17958;
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    v5 = *(v0 + 16);
    v6 = MEMORY[0x277D84950];

    return MEMORY[0x282200430](v5, v3, v4, v2, v6);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    sub_226E63BA0();
    sub_226E19F54();
    swift_allocError();
    *v7 = 3;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_226E17958()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_226E17AE4;
  }

  else
  {
    v2 = sub_226E17A6C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E17A6C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E17AE4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E17B58(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_226E17C50;

  return v8(a1);
}

uint64_t sub_226E17C50()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226E17D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24[-1] - v11;
  v24[5] = a4;
  v24[6] = a5;
  sub_226E1A598(a3, &v24[-1] - v11, &qword_27D7B6870, &qword_226E683B0);
  v13 = sub_226E63B80();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_226E1A268(v12);
  }

  else
  {
    sub_226E63B70();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = sub_226E63B40();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = sub_226E639E0();
      sub_226E18BD0(v20 + 32, v24);

      v21 = v24[0];
      sub_226E1A268(a3);

      return v21;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E1A268(a3);
  if (v19 | v17)
  {
    v24[1] = 0;
    v24[2] = 0;
    v24[3] = v17;
    v24[4] = v19;
  }

  return swift_task_create();
}

uint64_t sub_226E17F98(uint64_t a1, double a2)
{
  *(v2 + 24) = a2;
  *(v2 + 16) = a1;
  v3 = sub_226E63F10();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E1805C, 0, 0);
}

uint64_t sub_226E1805C()
{
  v1 = sub_226E640F0();
  v3 = v2;
  sub_226E64040();
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *v4 = v0;
  v4[1] = sub_226E18138;

  return sub_226E18718(v1, v3, 0, 0, 1);
}

uint64_t sub_226E18138()
{
  v2 = *v1;

  v3 = v2[6];
  v4 = v2[5];
  v5 = v2[4];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_226E1A634;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_226E182D0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_226E182D0()
{
  **(v0 + 16) = 0;

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E18338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_226E1A598(a3, v25 - v10, &qword_27D7B6870, &qword_226E683B0);
  v12 = sub_226E63B80();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_226E1A268(v11);
  }

  else
  {
    sub_226E63B70();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_226E63B40();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_226E639E0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_226E1A268(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_226E1A268(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_226E18644()
{
  v1 = *v0;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v1);
  return sub_226E640C0();
}

uint64_t sub_226E186D4(uint64_t a1)
{
  v2 = *v1;
  sub_226E640A0();
  MEMORY[0x22AA8D6A0](v2);
  return sub_226E640C0();
}

uint64_t sub_226E18718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_226E63F00();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_226E18818, 0, 0);
}

uint64_t sub_226E18818()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_226E63F10();
  v5 = sub_226E1A550(&qword_27D7B6898, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_226E64020();
  sub_226E1A550(&qword_27D7B68A0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_226E63F20();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_226E189A8;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_226E189A8()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_226E18B64, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_226E18B64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E18BD0@<X0>(uint64_t result@<X0>, uint64_t *a7@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a7 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_226E18C8C(uint64_t a1)
{
  sub_226E635C0();
  sub_226E1A550(&qword_280CEA228, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_226E63980();

  return sub_226E18D24(a1, v2);
}

unint64_t sub_226E18D24(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_226E635C0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_226E1A550(&qword_27D7B68A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_226E639A0();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_226E18EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_226E635C0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B0, &qword_226E685A0);
  v38 = v4;
  result = sub_226E63F60();
  v11 = result;
  if (*(v9 + 16))
  {
    v42 = v8;
    v43 = v5;
    v34 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = (v6 + 16);
    v36 = v6;
    v39 = (v6 + 32);
    v18 = result + 64;
    v37 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v41 = *(v6 + 72);
      v25 = v24 + v41 * v23;
      if (v38)
      {
        (*v39)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      else
      {
        (*v35)(v42, v25, v43);
        v40 = *(*(v9 + 56) + 16 * v23);
      }

      sub_226E1A550(&qword_280CEA228, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_226E63980();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        v6 = v36;
        v9 = v37;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
      v6 = v36;
      v9 = v37;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v39)(*(v11 + 48) + v41 * v19, v42, v43);
      *(*(v11 + 56) + 16 * v19) = v40;
      ++*(v11 + 16);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_226E192BC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = sub_226E635C0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = sub_226E18C8C(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      sub_226E19558();
      goto LABEL_9;
    }

    sub_226E18EE4(v18, a4 & 1);
    v21 = sub_226E18C8C(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = sub_226E64010();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return sub_226E19498(v15, v12, v23, a2, v24);
  }
}

uint64_t sub_226E19498(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_226E635C0();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

void *sub_226E19558()
{
  v1 = v0;
  v30 = sub_226E635C0();
  v32 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v29 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B0, &qword_226E685A0);
  v3 = *v0;
  v4 = sub_226E63F50();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v31 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v28 = v32 + 16;
    v26 = v3 + 64;
    for (i = v32 + 32; v12; result = )
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = v32;
      v19 = *(v32 + 72) * v17;
      v20 = v29;
      v21 = v30;
      (*(v32 + 16))(v29, *(v3 + 48) + v19, v30);
      v17 *= 16;
      v22 = v31;
      v23 = *(v31 + 48);
      v24 = *(v18 + 32);
      v33 = *(*(v3 + 56) + v17);
      v24(v23 + v19, v20, v21);
      *(*(v22 + 56) + v17) = v33;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v25;
        v5 = v31;
        goto LABEL_18;
      }

      v16 = *(v26 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_226E197D8(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_226E198CC;

  return v5(v2 + 32);
}

uint64_t sub_226E198CC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

unint64_t sub_226E199E0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B8, &qword_226E685A8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68B0, &qword_226E685A0);
    v7 = sub_226E63F70();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_226E1A598(v9, v5, &qword_27D7B68B8, &qword_226E685A8);
      result = sub_226E18C8C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_226E635C0();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_226E19BC8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1A614;

  return sub_226E160C8(a1, v4);
}

uint64_t sub_226E19C80()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E1A614;

  return sub_226E16270(v2);
}

uint64_t sub_226E19D2C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = *(v2 + 3);
  v8 = *(v2 + 4);
  v9 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226E1A614;

  return sub_226E16698(a1, a2, v7, v8, v6, v9);
}

uint64_t sub_226E19E00(uint64_t a1)
{
  v4 = *(v1 + 40);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E17C50;

  return sub_226E17B58(a1, v5, v6, v4);
}

uint64_t sub_226E19EAC(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E17C50;

  return sub_226E17F98(a1, v4);
}

unint64_t sub_226E19F54()
{
  result = qword_27D7B6880;
  if (!qword_27D7B6880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6880);
  }

  return result;
}

unint64_t sub_226E19FAC()
{
  result = qword_27D7B6888;
  if (!qword_27D7B6888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6888);
  }

  return result;
}

unint64_t sub_226E1A004()
{
  result = qword_27D7B6890;
  if (!qword_27D7B6890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B6890);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FinHealthFeatureFlag.FinHealthFeatures(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FinHealthFeatureFlag.FinHealthFeatures(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_226E1A268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E1A2D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1A614;

  return sub_226E197D8(a1, v4);
}

uint64_t objectdestroy_10Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_226E1A3C8(uint64_t a1)
{
  v4 = *(v1 + 40);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E1A614;

  return sub_226E16D48(a1, v5, v6, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_226E1A4BC()
{
  v2 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E1A614;

  return sub_226E17024(v2);
}

uint64_t sub_226E1A550(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E1A598(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t EntityGroups.EntityGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t EntityGroups.EntityGroup.id.setter(uint64_t a1)
{
  v3 = sub_226E635C0();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t EntityGroups.EntityGroup.transactionIds.getter()
{
  type metadata accessor for EntityGroups.EntityGroup(0);
}

uint64_t type metadata accessor for EntityGroups.EntityGroup(uint64_t a1)
{
  result = qword_280CEA3A0;
  if (!qword_280CEA3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EntityGroups.EntityGroup.transactionIds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for EntityGroups.EntityGroup(0) + 20);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_226E1A858()
{
  if (*v0)
  {
    return 0x746361736E617274;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_226E1A894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_226E63FF0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746361736E617274 && a2 == 0xEE007364496E6F69)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_226E63FF0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_226E1A988(uint64_t a1)
{
  v2 = sub_226E1AC4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_226E1A9C4(uint64_t a1)
{
  v2 = sub_226E1AC4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EntityGroups.EntityGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68C0, &qword_226E68608);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E1AC4C();
  sub_226E640E0();
  v12 = 0;
  sub_226E635C0();
  sub_226E23108(&qword_27D7B68C8, MEMORY[0x277CC95F8]);
  sub_226E63FB0();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for EntityGroups.EntityGroup(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
    sub_226E1B038(&qword_27D7B68D8, &qword_27D7B68C8, MEMORY[0x277CC95F8], MEMORY[0x277D83B50]);
    sub_226E63FB0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_226E1AC4C()
{
  result = qword_27D7B7020[0];
  if (!qword_27D7B7020[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7020);
  }

  return result;
}

uint64_t EntityGroups.EntityGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_226E635C0();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68E0, &unk_226E68618);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for EntityGroups.EntityGroup(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_226E1AC4C();
  sub_226E640D0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_226E23108(&qword_27D7B68E8, MEMORY[0x277CC9618]);
  v15 = v26;
  v16 = v24;
  sub_226E63FA0();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68D0, &qword_226E68610);
  v28 = 1;
  sub_226E1B038(&qword_27D7B68F0, &qword_27D7B68E8, MEMORY[0x277CC9618], MEMORY[0x277D83B70]);
  sub_226E63FA0();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_226E1B0C0(v18, v22);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_226E1B124(v18);
}

uint64_t sub_226E1B038(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7B68D0, &qword_226E68610);
    sub_226E23108(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E1B0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityGroups.EntityGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E1B124(uint64_t a1)
{
  v2 = type metadata accessor for EntityGroups.EntityGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226E1B180@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_226E635C0();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for EntityGroups.EntityGroup(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_226E1B22C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E685C0;
  v10 = sub_226E639C0();
  v14 = v1;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v2 = sub_226E639C0();
  MEMORY[0x22AA8D010](v2);

  *(v0 + 32) = v10;
  *(v0 + 40) = v14;
  v11 = sub_226E639C0();
  v15 = v3;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v4 = sub_226E639C0();
  MEMORY[0x22AA8D010](v4);

  *(v0 + 48) = v11;
  *(v0 + 56) = v15;
  v12 = sub_226E639C0();
  v16 = v5;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v6 = sub_226E639C0();
  MEMORY[0x22AA8D010](v6);

  *(v0 + 64) = v12;
  *(v0 + 72) = v16;
  v13 = sub_226E639C0();
  v17 = v7;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v8 = sub_226E639C0();
  MEMORY[0x22AA8D010](v8);

  *(v0 + 80) = v13;
  *(v0 + 88) = v17;
  return v0;
}

void sub_226E1B3D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_226E685D0;
  sub_226E639C0();
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v1 = sub_226E639C0();
  MEMORY[0x22AA8D010](v1);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v2 = sub_226E63CF0();
  v3 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v4 = sub_226E639B0();

  v5 = [v3 initWithLabelAndRank:v4 featureRank:v2];

  if (v5)
  {
    *(v0 + 32) = v5;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226E1B538()
{
  v1 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x78))();
  *(v0 + 24) = v1;
  sub_226E62C40();
  swift_allocObject();
  v2 = sub_226E62C30();
  *(v0 + 32) = v2;
  v3 = v2;
  v4 = *(v0 + 16);
  if (*(v1 + 16) <= 1uLL)
  {
    v5 = *(v1 + 16);
  }

  else
  {
    v5 = 1;
  }

  v6 = swift_task_alloc();
  *(v0 + 40) = v6;
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v4;
  v6[5] = v3;
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_226E1B6B4;

  return MEMORY[0x282200740](v7);
}

uint64_t sub_226E1B6B4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_226E1B840;
  }

  else
  {

    v2 = sub_226E1B7DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E1B7DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E1B840()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226E1B8B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a5;
  v6[21] = a6;
  v6[18] = a3;
  v6[19] = a4;
  v6[17] = a2;
  v7 = *(type metadata accessor for EntityGroups.EntityGroup(0) - 8);
  v6[22] = v7;
  v6[23] = *(v7 + 64);
  v6[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  v6[25] = swift_task_alloc();
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6960, &qword_226E68810);
  v6[29] = v8;
  v6[30] = *(v8 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E1BA48, 0, 0);
}

uint64_t sub_226E1BA48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(v5 + 152);
  if (v6 < 0)
  {
    goto LABEL_23;
  }

  v7 = *(v5 + 184);
  if (!v6)
  {
    v14 = 0;
    v11 = v7 + 7;
LABEL_18:
    *(v5 + 256) = v11;
    *(v5 + 264) = **(v5 + 136);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    sub_226E63BD0();
    *(v5 + 272) = v14;
    v32 = swift_task_alloc();
    *(v5 + 280) = v32;
    *v32 = v5;
    v32[1] = sub_226E1BE4C;
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = (v5 + 128);
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  v8 = 0;
  v9 = 0;
  v35 = *(v5 + 176);
  v10 = *(*(v5 + 144) + 16);
  v11 = v7 + 7;
  v36 = v7 + 7;
  v34 = v10;
  while (1)
  {
    v14 = v10;
    if (v9 != v10)
    {
      break;
    }

LABEL_6:
    ++v8;
    v9 = v14;
    if (v8 == v6)
    {
      goto LABEL_18;
    }
  }

  if (v9 < v10)
  {
    if (__OFADD__(v9, 1))
    {
      goto LABEL_22;
    }

    v40 = v9 + 1;
    v15 = *(v5 + 224);
    v39 = *(v5 + 216);
    v16 = *(v5 + 192);
    v17 = *(v5 + 160);
    v37 = v15;
    v38 = *(v5 + 168);
    v18 = *(v35 + 80);
    v19 = *(v5 + 144) + ((v18 + 32) & ~v18) + *(v35 + 72) * v9;
    v20 = sub_226E63B80();
    v21 = *(v20 - 8);
    (*(v21 + 56))(v15, 1, 1, v20);
    sub_226E1B0C0(v19, v16);
    v22 = (v18 + 40) & ~v18;
    v23 = swift_allocObject();
    v23[2] = 0;
    v24 = v23 + 2;
    v23[3] = 0;
    v23[4] = v17;
    sub_226E202F8(v16, v23 + v22);
    *(v23 + ((v22 + v11) & 0xFFFFFFFFFFFFFFF8)) = v38;
    sub_226E2324C(v37, v39);
    v25 = (*(v21 + 48))(v39, 1, v20);
    v26 = v17;

    v27 = *(v5 + 216);
    if (v25 == 1)
    {
      sub_226E15E98(*(v5 + 216), &qword_27D7B6870, &qword_226E683B0);
      if (*v24)
      {
LABEL_12:
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_226E63B40();
        v30 = v29;
        swift_unknownObjectRelease();
LABEL_15:
        v31 = **(v5 + 136);

        if (v30 | v28)
        {
          v12 = v5 + 16;
          *(v5 + 16) = 0;
          *(v5 + 24) = 0;
          *(v5 + 32) = v28;
          *(v5 + 40) = v30;
        }

        else
        {
          v12 = 0;
        }

        v11 = v36;
        v13 = *(v5 + 224);
        *(v5 + 80) = 1;
        *(v5 + 88) = v12;
        *(v5 + 96) = v31;
        swift_task_create();

        a1 = sub_226E15E98(v13, &qword_27D7B6870, &qword_226E683B0);
        v6 = *(v5 + 152);
        v14 = v40;
        v10 = v34;
        goto LABEL_6;
      }
    }

    else
    {
      sub_226E63B70();
      (*(v21 + 8))(v27, v20);
      if (*v24)
      {
        goto LABEL_12;
      }
    }

    v28 = 0;
    v30 = 0;
    goto LABEL_15;
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
  return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
}

uint64_t sub_226E1BE4C()
{

  if (v0)
  {
    v1 = sub_226E1C33C;
  }

  else
  {
    v1 = sub_226E1BF5C;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_226E1BF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if ((*(v5 + 288) & 1) == 0)
  {
    v8 = *(v5 + 272);
    v9 = *(v5 + 144);
    v10 = *(v9 + 16);
    if (v8 != v10)
    {
      if (v8 >= v10)
      {
        __break(1u);
        return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
      }

      v11 = *(v5 + 256);
      v12 = *(v5 + 208);
      v34 = *(v5 + 200);
      v13 = *(v5 + 192);
      v14 = *(v5 + 176);
      v32 = v12;
      v33 = *(v5 + 168);
      v15 = *(v5 + 160);
      v16 = *(v14 + 80);
      v17 = v9 + ((v16 + 32) & ~v16) + *(v14 + 72) * v8;
      v18 = sub_226E63B80();
      v19 = *(v18 - 8);
      (*(v19 + 56))(v12, 1, 1, v18);
      sub_226E1B0C0(v17, v13);
      v20 = (v16 + 40) & ~v16;
      v21 = swift_allocObject();
      v21[2] = 0;
      v21[3] = 0;
      v21[4] = v15;
      sub_226E202F8(v13, v21 + v20);
      *(v21 + ((v20 + v11) & 0xFFFFFFFFFFFFFFF8)) = v33;
      sub_226E2324C(v32, v34);
      LODWORD(v11) = (*(v19 + 48))(v34, 1, v18);
      v22 = v15;

      v23 = *(v5 + 200);
      if (v11 == 1)
      {
        sub_226E15E98(*(v5 + 200), &qword_27D7B6870, &qword_226E683B0);
      }

      else
      {
        sub_226E63B70();
        (*(v19 + 8))(v23, v18);
      }

      v24 = v8 + 1;
      if (v21[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v25 = sub_226E63B40();
        v27 = v26;
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = 0;
        v27 = 0;
      }

      if (v27 | v25)
      {
        v28 = v5 + 48;
        *(v5 + 48) = 0;
        *(v5 + 56) = 0;
        *(v5 + 64) = v25;
        *(v5 + 72) = v27;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v5 + 264);
      v30 = *(v5 + 208);
      *(v5 + 104) = 1;
      *(v5 + 112) = v28;
      *(v5 + 120) = v29;
      swift_task_create();

      sub_226E15E98(v30, &qword_27D7B6870, &qword_226E683B0);
      *(v5 + 272) = v24;
    }

    v31 = swift_task_alloc();
    *(v5 + 280) = v31;
    *v31 = v5;
    v31[1] = sub_226E1BE4C;
    a4 = *(v5 + 232);
    a1 = v5 + 288;
    a5 = v5 + 128;
    a2 = 0;
    a3 = 0;

    return MEMORY[0x2822004E8](a1, a2, a3, a4, a5);
  }

  (*(*(v5 + 240) + 8))(*(v5 + 248), *(v5 + 232), a3, a4, a5);

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_226E1C33C()
{
  (*(v0[30] + 8))(v0[31], v0[29]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_226E1C404(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_226E1A614;

  return sub_226E1B8B8(v9, a2, v5, v6, v8, v7);
}

uint64_t sub_226E1C4C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E234EC;

  return sub_226E22398(a5, a6);
}

uint64_t sub_226E1C55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_226E1C5F8;

  return sub_226E22398(a5, a6);
}

uint64_t sub_226E1C5F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226E1C6F0(uint64_t a1)
{
  v1[2] = a1;
  v2 = sub_226E638E0();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v3 = sub_226E635C0();
  v1[7] = v3;
  v1[8] = *(v3 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E1C824, 0, 0);
}

uint64_t sub_226E1C824()
{
  v1 = v0[2];
  v2 = v1[2];
  v0[11] = v2;
  if (v2)
  {
    v0[12] = sub_226E62C40();
    v0[13] = 0;
    v3 = v0[10];
    v4 = v1[4];
    v0[14] = v4;
    v5 = v1[5];
    v0[15] = v5;

    v6 = sub_226E53234();
    asUUID(rawString:lossy:)(v4, v5, v6, v3);
    v0[16] = sub_226E62BE0();
    v7 = swift_task_alloc();
    v0[17] = v7;
    *v7 = v0;
    v7[1] = sub_226E1C980;
    v8 = v0[10];

    return MEMORY[0x282116E38](v8);
  }

  else
  {

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_226E1C980()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_226E1CE34;
  }

  else
  {

    v2 = sub_226E1CAC0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226E1CAC0()
{
  v42 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v5 = v0[6];
  v6 = v0[3];
  v7 = v0[4];
  v8 = sub_226E56FC8();
  (*(v7 + 16))(v5, v8, v6);
  (*(v4 + 16))(v1, v2, v3);
  v9 = sub_226E638C0();
  v10 = sub_226E63C80();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[9];
  v13 = v0[10];
  v14 = v0[7];
  v15 = v0[8];
  v16 = v0[6];
  v18 = v0[3];
  v17 = v0[4];
  if (v11)
  {
    v40 = v0[6];
    v19 = swift_slowAlloc();
    v39 = v18;
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315138;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v37 = v10;
    v21 = sub_226E63FE0();
    v38 = v13;
    v23 = v22;
    v24 = *(v15 + 8);
    v24(v12, v14);
    v25 = sub_226E1FC98(v21, v23, &v41);

    *(v19 + 4) = v25;
    _os_log_impl(&dword_226DD4000, v9, v37, "Entity Group Deleted: %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    MEMORY[0x22AA8E1B0](v20, -1, -1);
    MEMORY[0x22AA8E1B0](v19, -1, -1);

    (*(v17 + 8))(v40, v39);
    v24(v38, v14);
  }

  else
  {

    v26 = *(v15 + 8);
    v26(v12, v14);
    (*(v17 + 8))(v16, v18);
    v26(v13, v14);
  }

  v27 = v0[13] + 1;
  if (v27 == v0[11])
  {

    v28 = v0[1];

    return v28();
  }

  else
  {
    v0[13] = v27;
    v30 = v0[10];
    v31 = v0[2] + 16 * v27;
    v32 = *(v31 + 32);
    v0[14] = v32;
    v33 = *(v31 + 40);
    v0[15] = v33;

    v34 = sub_226E53234();
    asUUID(rawString:lossy:)(v32, v33, v34, v30);
    v0[16] = sub_226E62BE0();
    v35 = swift_task_alloc();
    v0[17] = v35;
    *v35 = v0;
    v35[1] = sub_226E1C980;
    v36 = v0[10];

    return MEMORY[0x282116E38](v36);
  }
}

uint64_t sub_226E1CE34()
{
  v36 = v0;
  v1 = v0[18];
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[3];
  (*(v0[8] + 8))(v0[10], v0[7]);
  v5 = sub_226E56FC8();
  (*(v3 + 16))(v2, v5, v4);

  v6 = v1;
  v7 = sub_226E638C0();
  v8 = sub_226E63CA0();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[18];
  v11 = v0[15];
  if (v9)
  {
    v12 = v0[14];
    v13 = v0[4];
    v33 = v0[3];
    v34 = v0[5];
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v35 = v16;
    *v14 = 138412546;
    v17 = v10;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 4) = v18;
    *v15 = v18;
    *(v14 + 12) = 2080;
    v19 = sub_226E1FC98(v12, v11, &v35);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_226DD4000, v7, v8, "Error: %@ when deleting entity group: %s", v14, 0x16u);
    sub_226E15E98(v15, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x22AA8E1B0](v16, -1, -1);
    MEMORY[0x22AA8E1B0](v14, -1, -1);

    (*(v13 + 8))(v34, v33);
  }

  else
  {
    v21 = v0[4];
    v20 = v0[5];
    v22 = v0[3];

    (*(v21 + 8))(v20, v22);
  }

  v23 = v0[13] + 1;
  if (v23 == v0[11])
  {

    v24 = v0[1];

    return v24();
  }

  else
  {
    v0[13] = v23;
    v26 = v0[10];
    v27 = v0[2] + 16 * v23;
    v28 = *(v27 + 32);
    v0[14] = v28;
    v29 = *(v27 + 40);
    v0[15] = v29;

    v30 = sub_226E53234();
    asUUID(rawString:lossy:)(v28, v29, v30, v26);
    v0[16] = sub_226E62BE0();
    v31 = swift_task_alloc();
    v0[17] = v31;
    *v31 = v0;
    v31[1] = sub_226E1C980;
    v32 = v0[10];

    return MEMORY[0x282116E38](v32);
  }
}

void sub_226E1D1A4()
{
  v49 = sub_226E638E0();
  v48 = *(v49 - 1);
  MEMORY[0x28223BE20](v49);
  v2 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for EntityGroups.EntityGroup(0);
  v52 = *(v50 - 8);
  v3 = MEMORY[0x28223BE20](v50);
  v51 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (*((*MEMORY[0x277D85000] & *v0) + 0x80))(v3);
  v6 = swift_allocObject();
  v54 = v6;
  *(v6 + 16) = MEMORY[0x277D84F90];
  v53 = (v6 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = (v7 + 16);
  v56 = v7;
  *(v7 + 24) = 0;
  v9 = swift_allocObject();
  v55 = v9;
  *(v9 + 16) = MEMORY[0x277D84FA0];
  v10 = v9 + 16;
  v11 = objc_opt_self();
  v61 = sub_226E1D928;
  v62 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_226E23500;
  v60 = &block_descriptor;
  v12 = _Block_copy(&aBlock);
  v13 = @"fh_grouping";
  v14 = [v11 initWithBuilder_];
  _Block_release(v12);
  v15 = [objc_allocWithZone(FHDatabaseEntity) initWithEntity:v13 joinClause:v14];

  if (!v15)
  {

    v40 = sub_226E56FC8();
    v41 = v48;
    v42 = v49;
    (v48)[2](v2, v40, v49);
    v43 = sub_226E638C0();
    v44 = sub_226E63CA0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226DD4000, v43, v44, "Grouping table does not exist - Write back aborted", v45, 2u);
      MEMORY[0x22AA8E1B0](v45, -1, -1);
    }

    (v41[1])(v2, v42);
    goto LABEL_13;
  }

  v48 = v5;
  v47 = v10;
  v49 = v15;
  v16 = objc_opt_self();
  v61 = sub_226E1D96C;
  v62 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_226E23500;
  v60 = &block_descriptor_13;
  v17 = _Block_copy(&aBlock);
  v18 = [v16 initWithBuilder:v17 logicalOperator:@"AND"];
  _Block_release(v17);
  if (v18)
  {
    v19 = @"AND";
    v20 = v18;
    v21 = sub_226E63AE0();
    sub_226E202A4(0, &qword_280CE9F98, off_2785CA820);
    v22 = sub_226E63AE0();
    v23 = swift_allocObject();
    v25 = v55;
    v24 = v56;
    v23[2] = v56;
    v23[3] = v25;
    v26 = v48;
    v23[4] = v54;
    v23[5] = v26;
    v61 = sub_226E202EC;
    v62 = v23;
    aBlock = MEMORY[0x277D85DD0];
    v58 = 1107296256;
    v59 = sub_226E1EB4C;
    v60 = &block_descriptor_19;
    v27 = _Block_copy(&aBlock);

    v28 = v49;
    [v49 queryDataWithBlock:v20 logicalOperator:v19 limit:-1 selectFields:v21 orderby:v22 usingBlock:v27];
    _Block_release(v27);
    v48 = v20;

    swift_beginAccess();
    v29 = *(v24 + 24);
    v30 = v53;
    if (v29)
    {
      v31 = *v8;

      v32 = sub_226E53234();
      v33 = v51;
      asUUID(rawString:lossy:)(v31, v29, v32, v51);

      v34 = v47;
      swift_beginAccess();
      *(v33 + *(v50 + 20)) = *v34;
      swift_beginAccess();
      v35 = *v30;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v30 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v35 = sub_226E1F9B0(0, v35[2] + 1, 1, v35, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
        *v30 = v35;
      }

      v37 = v52;
      v39 = v35[2];
      v38 = v35[3];
      if (v39 >= v38 >> 1)
      {
        v35 = sub_226E1F9B0((v38 > 1), v39 + 1, 1, v35, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
      }

      v35[2] = v39 + 1;
      sub_226E202F8(v33, v35 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v39);
      *v30 = v35;
      swift_endAccess();
    }

    swift_beginAccess();
LABEL_13:

    return;
  }

  __break(1u);
}

id sub_226E1D928(id result)
{
  if (result)
  {
    return [result addKeyPairsWithJoinType:@"inner" leftEntity:@"fh_grouping" rightEntity:@"transactions" joinKey:@"t_identifier"];
  }

  return result;
}

void sub_226E1D96C(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @"!=";

    MEMORY[0x22AA8D010](0x745F70756F72672ELL, 0xEB00000000657079);

    v4 = sub_226E639B0();

    [v2 addIntegerClause:v3 fieldName:v4 expression:0];

    sub_226E639C0();
    v5 = v3;

    MEMORY[0x22AA8D010](0x745F70756F72672ELL, 0xEB00000000657079);

    v6 = sub_226E639B0();

    [v2 addIntegerClause:v5 fieldName:v6 expression:7];
  }
}

void sub_226E1DAE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_226E1DB54(uint64_t a1, char *a2, uint64_t a3, char *a4, uint64_t a5)
{
  v118 = a5;
  v117 = a4;
  v122 = a3;
  v7 = sub_226E638E0();
  v125 = *(v7 - 8);
  v126 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v108 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v120 = &v108 - v12;
  MEMORY[0x28223BE20](v11);
  v121 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  v15 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v108 - v18;
  v20 = sub_226E635C0();
  v127 = *(v20 - 8);
  v128 = v20;
  v21 = MEMORY[0x28223BE20](v20);
  v124 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v108 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v108 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v108 - v30;
  v32 = MEMORY[0x28223BE20](v29);
  v119 = &v108 - v33;
  MEMORY[0x28223BE20](v32);
  v123 = &v108 - v34;
  v35 = type metadata accessor for EntityGroups.EntityGroup(0);
  MEMORY[0x28223BE20](v35);
  v38 = (&v108 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1 && *(a1 + 16) == 4)
  {
    v108 = v36;
    sub_226E2233C(a1 + 32, v131);
    if (swift_dynamicCast())
    {
      v39 = v130;
      v111 = v129;
    }

    else
    {
      v111 = 0;
      v39 = 0xE000000000000000;
    }

    v114 = v39;
    sub_226E2233C(a1 + 64, v131);
    if (swift_dynamicCast())
    {
      v47 = v130;
      v116 = v129;
    }

    else
    {
      v116 = 0;
      v47 = 0xE000000000000000;
    }

    v115 = v47;
    sub_226E2233C(a1 + 96, v131);
    if (swift_dynamicCast())
    {
      v48 = v130;
      v109 = v129;
    }

    else
    {
      v109 = 0;
      v48 = 0xE000000000000000;
    }

    v113 = v48;
    sub_226E2233C(a1 + 128, v131);
    v49 = swift_dynamicCast();
    v50 = v129;
    if (!v49)
    {
      v50 = 0;
    }

    v110 = v50;
    swift_beginAccess();
    v51 = *(a2 + 3);
    v112 = v25;
    if (!v51)
    {
      goto LABEL_26;
    }

    v52 = *(a2 + 2);
    if (v52 == v116 && v51 == v115)
    {
      goto LABEL_26;
    }

    if (sub_226E63FF0())
    {
      goto LABEL_26;
    }

    v53 = v122;
    swift_beginAccess();
    if (!*(*(v53 + 16) + 16))
    {
      goto LABEL_26;
    }

    v54 = sub_226E53234();
    asUUID(rawString:lossy:)(v52, v51, v54, v38);

    v55 = v122;
    swift_beginAccess();
    *(v38 + *(v35 + 20)) = *(v55 + 16);
    v56 = v117;
    swift_beginAccess();
    v57 = *(v56 + 2);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v56 + 2) = v57;
    v59 = a2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_65;
    }

    while (1)
    {
      v60 = v108;
      v62 = v57[2];
      v61 = v57[3];
      if (v62 >= v61 >> 1)
      {
        v107 = sub_226E1F9B0((v61 > 1), v62 + 1, 1, v57, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
        v60 = v108;
        v57 = v107;
      }

      v57[2] = (v62 + 1);
      sub_226E202F8(v38, v57 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v62);
      *(v56 + 2) = v57;
      swift_endAccess();
      v63 = v122;
      swift_beginAccess();
      *(v63 + 16) = MEMORY[0x277D84FA0];

      a2 = v59;
LABEL_26:
      sub_226E635A0();
      v64 = v127;
      v59 = v128;
      v117 = *(v127 + 48);
      if ((v117)(v19, 1, v128) == 1)
      {

        sub_226E15E98(v19, &qword_27D7B6940, &qword_226E68A90);
LABEL_57:
        v92 = v115;
        goto LABEL_58;
      }

      v111 = a2;
      v38 = *(v64 + 32);
      v65 = v123;
      v38(v123, v19, v59);
      if (v110 == 2)
      {
        v66 = HIBYTE(v113) & 0xF;
        if ((v113 & 0x2000000000000000) == 0)
        {
          v66 = v109 & 0xFFFFFFFFFFFFLL;
        }

        if (v66)
        {

          v67 = sub_226E56FC8();
          v69 = v125;
          v68 = v126;
          v70 = v121;
          (*(v125 + 16))(v121, v67, v126);
          v71 = v127;
          v72 = v119;
          (*(v127 + 16))(v119, v65, v59);
          v73 = v115;

          v74 = sub_226E638C0();
          v75 = sub_226E63C80();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v124 = swift_slowAlloc();
            v129 = v124;
            *v76 = 136315394;
            sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
            v77 = sub_226E63FE0();
            v78 = v72;
            v80 = v79;
            v81 = *(v127 + 8);
            v81(v78, v59);
            v82 = sub_226E1FC98(v77, v80, &v129);

            *(v76 + 4) = v82;
            *(v76 + 12) = 2080;
            *(v76 + 14) = sub_226E1FC98(v116, v73, &v129);
            _os_log_impl(&dword_226DD4000, v74, v75, "CNS Transaction %s excluded from group %s due to shared identifier", v76, 0x16u);
            v83 = v124;
            swift_arrayDestroy();
            MEMORY[0x22AA8E1B0](v83, -1, -1);
            MEMORY[0x22AA8E1B0](v76, -1, -1);

            (*(v69 + 8))(v121, v126);
            v81(v123, v59);
          }

          else
          {

            v91 = *(v71 + 8);
            v91(v72, v59);
            (*(v69 + 8))(v70, v68);
            v91(v123, v59);
          }

          a2 = v111;
          v92 = v73;
          goto LABEL_58;
        }
      }

      v84 = v127;
      (*(v127 + 16))(v28, v65, v59);
      swift_beginAccess();
      sub_226E2035C(v31, v28);
      swift_endAccess();
      v86 = *(v84 + 8);
      v56 = (v84 + 8);
      v85 = v86;
      v86(v31, v59);
      if (v110 != 1)
      {
        goto LABEL_56;
      }

      v87 = HIBYTE(v113) & 0xF;
      if ((v113 & 0x2000000000000000) == 0)
      {
        v87 = v109 & 0xFFFFFFFFFFFFLL;
      }

      if (!v87)
      {
LABEL_56:
        v85(v123, v59);

        a2 = v111;
        goto LABEL_57;
      }

      v110 = v85;
      v119 = v56;
      v88 = v118;
      if (*(v118 + 16) && (v89 = sub_226E20614(v109, v113), (v90 & 1) != 0))
      {
        v31 = *(*(v88 + 56) + 8 * v89);
      }

      else
      {
        v31 = MEMORY[0x277D84F90];
      }

      v121 = *(v31 + 2);
      if (!v121)
      {
        break;
      }

      v19 = 0;
      v57 = (v31 + 40);
      v28 = MEMORY[0x277D84F90];
      while (v19 < *(v31 + 2))
      {
        v56 = *v57;

        v59 = v128;
        sub_226E635A0();

        if ((v117)(v17, 1, v59) == 1)
        {
          sub_226E15E98(v17, &qword_27D7B6940, &qword_226E68A90);
        }

        else
        {
          v93 = v112;
          v38(v112, v17, v59);
          v38(v124, v93, v59);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v28 = sub_226E1F9B0(0, *(v28 + 2) + 1, 1, v28, &qword_27D7B6948, &qword_226E68A40, MEMORY[0x277CC95F0]);
          }

          v95 = *(v28 + 2);
          v94 = *(v28 + 3);
          v56 = (v95 + 1);
          if (v95 >= v94 >> 1)
          {
            v28 = sub_226E1F9B0((v94 > 1), v95 + 1, 1, v28, &qword_27D7B6948, &qword_226E68A40, MEMORY[0x277CC95F0]);
          }

          *(v28 + 2) = v56;
          v96 = &v28[((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v95];
          v59 = v128;
          v38(v96, v124, v128);
        }

        ++v19;
        v57 += 2;
        if (v121 == v19)
        {
          goto LABEL_60;
        }
      }

      __break(1u);
LABEL_65:
      v57 = sub_226E1F9B0(0, (v57[2] + 1), 1, v57, &qword_27D7B6938, &qword_226E68808, type metadata accessor for EntityGroups.EntityGroup);
      *(v56 + 2) = v57;
    }

    v28 = MEMORY[0x277D84F90];
LABEL_60:

    swift_beginAccess();

    sub_226E22FC0(v97);
    swift_endAccess();

    v98 = sub_226E56FC8();
    v100 = v125;
    v99 = v126;
    v101 = v120;
    (*(v125 + 16))(v120, v98, v126);
    v92 = v115;

    v102 = sub_226E638C0();
    v103 = sub_226E63C80();

    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v129 = v105;
      *v104 = 134218242;
      v106 = *(v28 + 2);

      *(v104 + 4) = v106;

      *(v104 + 12) = 2080;
      *(v104 + 14) = sub_226E1FC98(v116, v92, &v129);
      _os_log_impl(&dword_226DD4000, v102, v103, "Added %ld CNS transactions to group %s", v104, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v105);
      MEMORY[0x22AA8E1B0](v105, -1, -1);
      MEMORY[0x22AA8E1B0](v104, -1, -1);

      (*(v100 + 8))(v120, v99);
    }

    else
    {

      swift_bridgeObjectRelease_n();
      (*(v100 + 8))(v101, v99);
    }

    v110(v123, v59);
    a2 = v111;
LABEL_58:
    swift_beginAccess();
    *(a2 + 2) = v116;
    *(a2 + 3) = v92;
  }

  else
  {
    v40 = sub_226E56FC8();
    v42 = v125;
    v41 = v126;
    (*(v125 + 16))(v10, v40, v126);
    v43 = sub_226E638C0();
    v44 = sub_226E63CA0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_226DD4000, v43, v44, "Entity group query returned invalid response", v45, 2u);
      MEMORY[0x22AA8E1B0](v45, -1, -1);
    }

    return (*(v42 + 8))(v10, v41);
  }
}

uint64_t sub_226E1EB4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_226E63AF0();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a3)
  {
LABEL_3:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6878, &qword_226E68920);
    v5 = sub_226E63AF0();
  }

LABEL_4:

  v6(v7, v5, a4);
}

void sub_226E1EC18()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_226E21908(MEMORY[0x277D84F90]);
  sub_226E639C0();
  v1 = objc_allocWithZone(FHDatabaseEntity);
  v2 = sub_226E639B0();

  v3 = [v1 initWithEntity_];

  v4 = objc_opt_self();
  v20 = sub_226E1EF80;
  v21 = 0;
  v16 = MEMORY[0x277D85DD0];
  v17 = 1107296256;
  v18 = sub_226E23500;
  v19 = &block_descriptor_25;
  v5 = _Block_copy(&v16);
  v6 = [v4 initWithBuilder:v5 logicalOperator:@"AND"];
  _Block_release(v5);
  if (v6)
  {
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_226E685E0;
      v16 = sub_226E639C0();
      v17 = v8;
      v9 = v3;
      v10 = v6;
      v11 = @"AND";

      MEMORY[0x22AA8D010](0x746E6564695F742ELL, 0xED00007265696669);

      v12 = v17;
      *(v7 + 32) = v16;
      *(v7 + 40) = v12;
      v16 = sub_226E639C0();
      v17 = v13;

      MEMORY[0x22AA8D010](0xD000000000000020, 0x8000000226E72DC0);

      v14 = v17;
      *(v7 + 48) = v16;
      *(v7 + 56) = v14;
      v6 = sub_226E63AE0();

      v20 = sub_226E21A0C;
      v21 = v0;
      v16 = MEMORY[0x277D85DD0];
      v17 = 1107296256;
      v18 = sub_226E1EB4C;
      v19 = &block_descriptor_28;
      v15 = _Block_copy(&v16);

      [v9 queryDataWithBlock:v10 logicalOperator:v11 selectFields:v6 usingBlock:v15];

      _Block_release(v15);
    }

    swift_beginAccess();
  }

  else
  {
    __break(1u);
  }
}

void sub_226E1EF80(void *a1)
{
  if (a1)
  {
    sub_226E639C0();
    v2 = a1;
    v3 = @"!=";

    MEMORY[0x22AA8D010](0xD000000000000020, 0x8000000226E72DC0);

    v4 = sub_226E639B0();

    v5 = sub_226E639B0();
    [v2 addStringClause:v3 fieldName:v4 expression:v5];

    sub_226E639C0();
    v6 = @"==";

    MEMORY[0x22AA8D010](0xD00000000000001DLL, 0x8000000226E72E20);

    v7 = sub_226E639B0();

    [v2 addIntegerClause:v6 fieldName:v7 expression:2];
  }
}

uint64_t sub_226E1F120(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_226E217DC(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_226E2233C(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_226E217DC((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_226E1F234()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(FHDatabaseManager) init_];
  v5 = [v4 computeAndPersistTransactionGroupings];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6928, &qword_226E68640);
  v6 = sub_226E63960();

  v7 = sub_226E56FC8();
  (*(v1 + 16))(v3, v7, v0);
  v8 = sub_226E638C0();
  v9 = sub_226E63C80();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_226DD4000, v8, v9, "Completed finhealth grouping", v10, 2u);
    MEMORY[0x22AA8E1B0](v10, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v6;
}

uint64_t sub_226E1F404()
{
  v0 = sub_226E638E0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() deleteOutdatedEntityGroupsAndInsights];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6928, &qword_226E68640);
  v5 = sub_226E63960();

  v6 = sub_226E56FC8();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_226E638C0();
  v8 = sub_226E63C80();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_226DD4000, v7, v8, "Deleted outdated entity groups and insights", v9, 2u);
    MEMORY[0x22AA8E1B0](v9, -1, -1);
  }

  (*(v1 + 8))(v3, v0);
  return v5;
}

id sub_226E1F5BC()
{
  v0 = [objc_allocWithZone(FHDatabaseManager) init_];
  v1 = [v0 groupingSchemaUpdate];

  return v1;
}

id EntityGroups.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void EntityGroups.init()()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC13FinHealthCore12EntityGroups_fields;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226E685C0;
  v25 = sub_226E639C0();
  v26 = v4;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v5 = sub_226E639C0();
  MEMORY[0x22AA8D010](v5);

  v6 = v26;
  *(v3 + 32) = v25;
  *(v3 + 40) = v6;
  v25 = sub_226E639C0();
  v26 = v7;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v8 = sub_226E639C0();
  MEMORY[0x22AA8D010](v8);

  v9 = v26;
  *(v3 + 48) = v25;
  *(v3 + 56) = v9;
  v25 = sub_226E639C0();
  v26 = v10;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v11 = sub_226E639C0();
  MEMORY[0x22AA8D010](v11);

  v12 = v26;
  *(v3 + 64) = v25;
  *(v3 + 72) = v12;
  v25 = sub_226E639C0();
  v26 = v13;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v14 = sub_226E639C0();
  MEMORY[0x22AA8D010](v14);

  v15 = v26;
  *(v3 + 80) = v25;
  *(v3 + 88) = v15;
  *&v0[v2] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6908, &unk_226E68A50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_226E685D0;
  v25 = sub_226E639C0();
  v26 = v17;
  MEMORY[0x22AA8D010](46, 0xE100000000000000);
  v18 = sub_226E639C0();
  MEMORY[0x22AA8D010](v18);

  sub_226E202A4(0, &qword_280CE9FA8, 0x277CCA980);
  v19 = sub_226E63CF0();
  v20 = objc_allocWithZone(FHSmartCompoundFeatureRankedValue);
  v21 = sub_226E639B0();

  v22 = [v20 initWithLabelAndRank:v21 featureRank:v19];

  if (v22)
  {
    v23 = OBJC_IVAR____TtC13FinHealthCore12EntityGroups_orderBy;
    *(v16 + 32) = v22;
    *&v1[v23] = v16;
    v24.receiver = v1;
    v24.super_class = type metadata accessor for EntityGroups();
    objc_msgSendSuper2(&v24, sel_init);
  }

  else
  {
    __break(1u);
  }
}

id EntityGroups.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EntityGroups();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_226E1F9B0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_226E1FB8C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_226E1FC98(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_226E1FD64(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_226E2233C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_226E1FD64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_226E1FE70(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_226E63EB0();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_226E1FE70(uint64_t a1, unint64_t a2)
{
  v3 = sub_226E1FEBC(a1, a2);
  sub_226E1FFEC(&unk_283A79ED0);
  return v3;
}

void *sub_226E1FEBC(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_226E200D8(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_226E63EB0();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_226E63A30();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_226E200D8(v10, 0);
        result = sub_226E63E50();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_226E1FFEC(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_226E2014C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_226E200D8(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6958, qword_226E68B50);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_226E2014C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6958, qword_226E68B50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226E202A4(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_226E202F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityGroups.EntityGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_226E2035C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_226E63980();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_226E23108(&qword_27D7B68A8, MEMORY[0x277CC9610]);
      v21 = sub_226E639A0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_226E209D4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

unint64_t sub_226E20614(uint64_t a1, uint64_t a2)
{
  sub_226E640A0();
  sub_226E63A00();
  v4 = sub_226E640C0();

  return sub_226E21190(a1, a2, v4);
}

uint64_t sub_226E2068C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_226E635C0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6950, &qword_226E68B00);
  result = sub_226E63E20();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
      result = sub_226E63980();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_226E209D4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_226E635C0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_226E2068C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_226E20C50();
      goto LABEL_12;
    }

    sub_226E20E88(v10 + 1);
  }

  v12 = *v3;
  sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
  v13 = sub_226E63980();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_226E23108(&qword_27D7B68A8, MEMORY[0x277CC9610]);
      v21 = sub_226E639A0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_226E64000();
  __break(1u);
  return result;
}

void *sub_226E20C50()
{
  v1 = v0;
  v2 = sub_226E635C0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6950, &qword_226E68B00);
  v6 = *v0;
  v7 = sub_226E63E10();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_226E20E88(uint64_t a1)
{
  v2 = v1;
  v33 = sub_226E635C0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6950, &qword_226E68B00);
  v7 = sub_226E63E20();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
      result = sub_226E63980();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

unint64_t sub_226E21190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_226E63FF0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_226E21248(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6930, &unk_226E696B0);
  v34 = v4;
  result = sub_226E63F60();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_226E640A0();
      sub_226E63A00();
      result = sub_226E640C0();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_226E214F0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_226E20614(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_226E21248(v16, a4 & 1);
      v11 = sub_226E20614(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        result = sub_226E64010();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_226E2166C();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v23 = (v21[6] + 16 * v11);
  *v23 = a2;
  v23[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v24 = v21[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v25;
}

void *sub_226E2166C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6930, &unk_226E696B0);
  v2 = *v0;
  v3 = sub_226E63F50();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

char *sub_226E217DC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_226E217FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_226E217FC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_226E21908(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6930, &unk_226E696B0);
    v3 = sub_226E63F70();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_226E20614(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_226E21A0C(void *result)
{
  if (result)
  {
    result = sub_226E1F120(result);
    if (result)
    {
      if (result[2] == 2)
      {
        v3 = result[4];
        v2 = result[5];
        v5 = result[6];
        v4 = result[7];

        swift_beginAccess();
        v6 = *(v1 + 16);
        if (*(v6 + 16) && (v7 = sub_226E20614(v5, v4), (v8 & 1) != 0))
        {
          v9 = *(*(v6 + 56) + 8 * v7);
          swift_endAccess();

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_226E1FB8C(0, *(v9 + 16) + 1, 1, v9);
          }

          v10 = *(v9 + 16);
          v11 = *(v9 + 24);
          v12 = v10 + 1;
          if (v10 >= v11 >> 1)
          {
            v18 = v10 + 1;
            v15 = v9;
            v16 = *(v9 + 16);
            v17 = sub_226E1FB8C((v11 > 1), v10 + 1, 1, v15);
            v10 = v16;
            v12 = v18;
            v9 = v17;
          }

          *(v9 + 16) = v12;
          v13 = v9 + 16 * v10;
          *(v13 + 32) = v3;
          *(v13 + 40) = v2;
        }

        else
        {
          swift_endAccess();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B68F8, &unk_226E695F0);
          v9 = swift_allocObject();
          *(v9 + 16) = xmmword_226E685F0;
          *(v9 + 32) = v3;
          *(v9 + 40) = v2;
        }

        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = *(v1 + 16);
        *(v1 + 16) = 0x8000000000000000;
        sub_226E214F0(v9, v5, v4, isUniquelyReferenced_nonNull_native);

        *(v1 + 16) = v19;
        return swift_endAccess();
      }

      else
      {
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of EntityGroups.save()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x60);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E17C50;

  return v5();
}

uint64_t dispatch thunk of EntityGroups.delete(_:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x68);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_226E1A614;

  return v7(a1);
}

void sub_226E21FD0(uint64_t a1)
{
  sub_226E635C0();
  if (v1 <= 0x3F)
  {
    sub_226E22054(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_226E22054(uint64_t a1)
{
  if (!qword_280CE9FB8)
  {
    sub_226E635C0();
    sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
    v1 = sub_226E63C70();
    if (!v2)
    {
      atomic_store(v1, &qword_280CE9FB8);
    }
  }
}

uint64_t getEnumTagSinglePayload for EntityGroups.EntityGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EntityGroups.EntityGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_226E22234()
{
  result = qword_27D7B7230[0];
  if (!qword_27D7B7230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7230);
  }

  return result;
}

unint64_t sub_226E2228C()
{
  result = qword_27D7B7340;
  if (!qword_27D7B7340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B7340);
  }

  return result;
}

unint64_t sub_226E222E4()
{
  result = qword_27D7B7348[0];
  if (!qword_27D7B7348[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27D7B7348);
  }

  return result;
}

uint64_t sub_226E2233C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_226E22398(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_226E635C0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_226E63220();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = type metadata accessor for EntityGroups.EntityGroup(0);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v5 = sub_226E638E0();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226E22588, 0, 0);
}

uint64_t sub_226E22588(uint64_t a1)
{
  v44 = v1;
  v2 = v1[20];
  v3 = v1[16];
  v4 = v1[17];
  v6 = v1[14];
  v5 = v1[15];
  v7 = v1[13];
  v8 = v1[2];
  v9 = sub_226E56FC8();
  v1[21] = v9;
  v10 = *(v4 + 16);
  v1[22] = v10;
  v1[23] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v10(v2, v9, v3);
  sub_226E1B0C0(v8, v5);
  sub_226E1B0C0(v8, v6);
  sub_226E1B0C0(v8, v7);
  v11 = sub_226E638C0();
  v12 = sub_226E63C80();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v1[20];
  v15 = v1[16];
  v16 = v1[17];
  v18 = v1[14];
  v17 = v1[15];
  v19 = v1[13];
  if (v13)
  {
    v38 = v1[10];
    v42 = v1[20];
    v39 = v12;
    v20 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v43 = v40;
    *v20 = 136315650;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v41 = v15;
    v21 = sub_226E63FE0();
    v23 = v22;
    sub_226E1B124(v17);
    v24 = sub_226E1FC98(v21, v23, &v43);

    *(v20 + 4) = v24;
    *(v20 + 12) = 2080;
    sub_226E23108(&qword_280CEA228, MEMORY[0x277CC9600]);
    v25 = sub_226E63C40();
    v27 = v26;
    sub_226E1B124(v18);
    v28 = sub_226E1FC98(v25, v27, &v43);

    *(v20 + 14) = v28;
    *(v20 + 22) = 2048;
    v29 = *(*(v19 + *(v38 + 20)) + 16);
    sub_226E1B124(v19);
    *(v20 + 24) = v29;
    _os_log_impl(&dword_226DD4000, v11, v39, "Saving Entity Group ID: %s\nTransaction Ids: %s\nTransaction count: %ld", v20, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x22AA8E1B0](v40, -1, -1);
    MEMORY[0x22AA8E1B0](v20, -1, -1);

    v30 = *(v16 + 8);
    v30(v42, v41);
  }

  else
  {
    sub_226E1B124(v1[13]);

    sub_226E1B124(v18);
    sub_226E1B124(v17);
    v30 = *(v16 + 8);
    v30(v14, v15);
  }

  v1[24] = v30;
  v31 = v1[10];
  v32 = v1[6];
  v33 = v1[2];
  (*(v1[5] + 16))(v32, v33, v1[4]);
  MEMORY[0x22AA8C800](v32);
  v34 = *(v33 + *(v31 + 20));
  v35 = swift_task_alloc();
  v1[25] = v35;
  *v35 = v1;
  v35[1] = sub_226E22900;
  v36 = v1[9];

  return MEMORY[0x282116ED8](v36, v34);
}

uint64_t sub_226E22900()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 208) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_226E22CD4;
  }

  else
  {
    v5 = sub_226E22A70;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226E22A70()
{
  v21 = v0;
  v1 = *(v0 + 96);
  v2 = *(v0 + 16);
  (*(v0 + 176))(*(v0 + 152), *(v0 + 168), *(v0 + 128));
  sub_226E1B0C0(v2, v1);
  v3 = sub_226E638C0();
  v4 = sub_226E63C80();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  v7 = *(v0 + 152);
  v8 = *(v0 + 128);
  v9 = *(v0 + 96);
  if (v5)
  {
    v19 = *(v0 + 192);
    v10 = swift_slowAlloc();
    v18 = v7;
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v12 = sub_226E63FE0();
    v14 = v13;
    sub_226E1B124(v9);
    v15 = sub_226E1FC98(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_226DD4000, v3, v4, "Entity Group Saved: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x22AA8E1B0](v11, -1, -1);
    MEMORY[0x22AA8E1B0](v10, -1, -1);

    v19(v18, v8);
  }

  else
  {

    sub_226E1B124(v9);
    v6(v7, v8);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_226E22CD4()
{
  v28 = v0;
  v1 = *(v0 + 208);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  (*(v0 + 176))(*(v0 + 144), *(v0 + 168), *(v0 + 128));
  sub_226E1B0C0(v3, v2);
  v4 = v1;
  v5 = sub_226E638C0();
  v6 = sub_226E63CA0();

  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 208);
  v9 = *(v0 + 192);
  v10 = *(v0 + 144);
  v11 = *(v0 + 128);
  v12 = *(v0 + 88);
  if (v7)
  {
    v26 = *(v0 + 192);
    v25 = *(v0 + 128);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v27 = v15;
    *v13 = 138412546;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 4) = v17;
    *v14 = v17;
    *(v13 + 12) = 2080;
    sub_226E23108(&qword_27D7B6920, MEMORY[0x277CC9628]);
    v18 = sub_226E63FE0();
    v24 = v10;
    v20 = v19;
    sub_226E1B124(v12);
    v21 = sub_226E1FC98(v18, v20, &v27);

    *(v13 + 14) = v21;
    _os_log_impl(&dword_226DD4000, v5, v6, "Error: %@ when saving entity group: %s", v13, 0x16u);
    sub_226E15E98(v14, &qword_27D7B6918, &qword_226E68950);
    MEMORY[0x22AA8E1B0](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x22AA8E1B0](v15, -1, -1);
    MEMORY[0x22AA8E1B0](v13, -1, -1);

    v26(v24, v25);
  }

  else
  {

    sub_226E1B124(v12);
    v9(v10, v11);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_226E22FC0(uint64_t a1)
{
  v2 = sub_226E635C0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v4);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v6, v14, v2);
      sub_226E2035C(v9, v6);
      result = (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_226E23108(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_226E635C0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_226E2314C()
{
  v2 = *(type metadata accessor for EntityGroups.EntityGroup(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E1C4C0(v5, v6, v7, v8, v0 + v3, v4);
}

uint64_t sub_226E2324C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6870, &qword_226E683B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_39Tm()
{
  v1 = *(type metadata accessor for EntityGroups.EntityGroup(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = sub_226E635C0();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_226E233C8()
{
  v2 = *(type metadata accessor for EntityGroups.EntityGroup(0) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_226E1A614;

  return sub_226E1C55C(v5, v6, v7, v8, v0 + v3, v4);
}

id sub_226E23504(char *a1, void *a2, uint64_t a3)
{
  v304 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6968, &qword_226E68848);
  MEMORY[0x28223BE20](v5 - 8);
  v293 = &v265 - v6;
  v295 = sub_226E63270();
  v298 = *(v295 - 8);
  MEMORY[0x28223BE20](v295);
  v294 = &v265 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v302 = sub_226E62CE0();
  v309 = *(v302 - 8);
  MEMORY[0x28223BE20](v302);
  v272 = &v265 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v271 = sub_226E631E0();
  v270 = *(v271 - 8);
  MEMORY[0x28223BE20](v271);
  v266 = &v265 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6970, &qword_226E68850);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v290 = &v265 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v291 = &v265 - v13;
  v318 = sub_226E63200();
  v315 = *(v318 - 8);
  MEMORY[0x28223BE20](v318);
  v311 = &v265 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v301 = sub_226E63320();
  v308 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v269 = &v265 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v328 = sub_226E62CC0();
  v267 = *(v328 - 8);
  MEMORY[0x28223BE20](v328);
  v327 = &v265 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v329 = sub_226E62CD0();
  v335 = *(v329 - 8);
  MEMORY[0x28223BE20](v329);
  v336 = &v265 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v305 = sub_226E62D30();
  v307 = *(v305 - 8);
  MEMORY[0x28223BE20](v305);
  v288 = &v265 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6978, &qword_226E68858);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v289 = &v265 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v316 = &v265 - v23;
  MEMORY[0x28223BE20](v22);
  v314 = &v265 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6980, &qword_226E68860);
  v26 = MEMORY[0x28223BE20](v25 - 8);
  v292 = &v265 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v326 = &v265 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v333 = &v265 - v31;
  MEMORY[0x28223BE20](v30);
  v313 = &v265 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6988, &qword_226E68D50);
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v287 = &v265 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v325 = &v265 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v332 = &v265 - v39;
  MEMORY[0x28223BE20](v38);
  v312 = &v265 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6990, &qword_226E68868);
  v42 = MEMORY[0x28223BE20](v41 - 8);
  v324 = &v265 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v42);
  v286 = &v265 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v331 = &v265 - v47;
  MEMORY[0x28223BE20](v46);
  v303 = &v265 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6858, &qword_226E688C0);
  MEMORY[0x28223BE20](v49 - 8);
  v320 = &v265 - v50;
  v319 = sub_226E62FD0();
  v317 = *(v319 - 8);
  v51 = MEMORY[0x28223BE20](v319);
  v310 = &v265 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v300 = &v265 - v53;
  v299 = sub_226E62E90();
  v285 = *(v299 - 1);
  v54 = MEMORY[0x28223BE20](v299);
  v284 = &v265 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v283 = &v265 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6998, &qword_226E68870);
  MEMORY[0x28223BE20](v57 - 8);
  v282 = &v265 - v58;
  v281 = sub_226E62E70();
  v280 = *(v281 - 8);
  MEMORY[0x28223BE20](v281);
  v279 = &v265 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_226E62EA0();
  v277 = *(v278 - 8);
  v60 = MEMORY[0x28223BE20](v278);
  v276 = &v265 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v60);
  v275 = &v265 - v62;
  v306 = sub_226E63590();
  v323 = *(v306 - 8);
  v63 = MEMORY[0x28223BE20](v306);
  v268 = &v265 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v297 = &v265 - v65;
  v322 = sub_226E62D70();
  v330 = *(v322 - 1);
  MEMORY[0x28223BE20](v322);
  v321 = &v265 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B6940, &qword_226E68A90);
  MEMORY[0x28223BE20](v67 - 8);
  v69 = &v265 - v68;
  v70 = sub_226E635C0();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v265 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  [v74 setAccountType_];
  if (a2)
  {
    v75 = a2;
    [v74 setAccountType_];
  }

  v296 = a2;
  sub_226E62F60();
  sub_226E635B0();
  v76 = *(v71 + 8);
  v76(v73, v70);
  v77 = sub_226E639B0();

  [v74 setIdentifier_];

  sub_226E62F20();
  if (v78)
  {
    v79 = sub_226E639B0();

    [v74 setTransactionServiceIdentifier_];
  }

  sub_226E62FB0();
  sub_226E635B0();
  v76(v73, v70);
  v80 = sub_226E639B0();

  [v74 setFinanceAccountIdentifier_];

  sub_226E62F60();
  sub_226E635B0();
  v76(v73, v70);
  v81 = sub_226E639B0();

  [v74 setFinanceTransactionIdentifier_];

  sub_226E62FA0();
  v82 = (*(v71 + 48))(v69, 1, v70);
  v334 = v74;
  if (v82 == 1)
  {
    v83 = v74;
    sub_226E15E98(v69, &qword_27D7B6940, &qword_226E68A90);
    v84 = 0;
  }

  else
  {
    sub_226E635B0();
    v76(v69, v70);
    v84 = sub_226E639B0();
    v83 = v334;
  }

  v85 = v276;
  [v83 setFinanceTransactionSharedIdentifier_];

  v86 = v321;
  sub_226E62F10();
  sub_226E62D50();
  v87 = *(v330 + 8);
  v330 += 8;
  v276 = v87;
  (v87)(v86, v322);
  v88 = sub_226E639B0();

  [v83 setCurrencyCode_];

  v89 = v297;
  sub_226E62EF0();
  v90 = sub_226E63530();
  v91 = *(v323 + 8);
  v274 = v323 + 8;
  v273 = v91;
  v91(v89, v306);
  [v83 setTransactionDate_];

  v92 = v275;
  sub_226E62F90();
  v93 = v277;
  v94 = v92;
  v95 = v278;
  (*(v277 + 32))(v85, v94, v278);
  v96 = (*(v93 + 88))(v85, v95);
  if (v96 == *MEMORY[0x277CC71F8])
  {
    v97 = 8;
    v98 = v282;
  }

  else
  {
    v97 = 0;
    v98 = v282;
    if (v96 != *MEMORY[0x277CC7200] && v96 != *MEMORY[0x277CC7210])
    {
      if (v96 == *MEMORY[0x277CC7208])
      {
        v97 = 1;
      }

      else if (v96 == *MEMORY[0x277CC7218])
      {
        v97 = 6;
      }

      else
      {
        (*(v93 + 8))(v85, v95, 0);
        v97 = -1;
      }
    }
  }

  [v83 setTransactionStatus_];
  v99 = v279;
  sub_226E62F00();
  v100 = sub_226E26A7C(v99);
  (*(v280 + 8))(v99, v281);
  [v83 setTransactionType_];
  sub_226E62F50();
  v101 = sub_226E639B0();

  [v83 setTransactionDescription_];

  sub_226E62F40();
  v102 = sub_226E63010();
  v103 = *(v102 - 8);
  if ((*(v103 + 48))(v98, 1, v102) == 1)
  {
    sub_226E15E98(v98, &qword_27D7B6998, &qword_226E68870);
    v104 = 0;
  }

  else
  {
    v105 = sub_226E63000();
    (*(v103 + 8))(v98, v102);
    v104 = v105;
  }

  v106 = v334;
  [v334 setIndustryCode_];
  v107 = sub_226E62EE0();
  [v106 setLocation_];

  sub_226E62FB0();
  sub_226E635B0();
  v76(v73, v70);
  v108 = sub_226E639B0();

  [v106 setTransactionSourceIdentifier_];

  v109 = v283;
  sub_226E62F80();
  v110 = v285;
  v111 = v284;
  v112 = v109;
  v113 = v299;
  v285[4](v284, v112, v299);
  v114 = (v110[11])(v111, v113);
  if (v114 == *MEMORY[0x277CC71F0])
  {
    v115 = 0;
    v116 = v315;
    v117 = v301;
  }

  else
  {
    v116 = v315;
    v117 = v301;
    if (v114 == *MEMORY[0x277CC71E8])
    {
      v115 = 1;
    }

    else if (v114 == *MEMORY[0x277CC71E0])
    {
      v115 = 2;
    }

    else
    {
      (v110[1])(v111, v113);
      v115 = 0;
    }
  }

  [v106 setFinanceTransactionSource_];
  v118 = v321;
  sub_226E62F10();
  v119 = sub_226E62D60();
  v121 = v120;
  v123 = v122;
  (v276)(v118, v322);
  *&v340 = v119;
  *(&v340 + 1) = v121;
  v341 = v123;
  v124 = v300;
  sub_226E62F30();
  v125 = v317;
  v126 = v310;
  v127 = v319;
  (*(v317 + 104))(v310, *MEMORY[0x277CC7790], v319);
  sub_226E26D3C();
  sub_226E63AC0();
  sub_226E63AC0();
  v128 = *(v125 + 8);
  v128(v126, v127);
  v128(v124, v127);
  if (v337 == v339)
  {
    sub_226E63D50();
  }

  v129 = objc_allocWithZone(MEMORY[0x277CCA980]);
  v337 = v340;
  v338 = v341;
  v130 = [v129 initWithDecimal_];
  v131 = v334;
  [v334 setAmount_];

  v132 = v320;
  sub_226E62EC0();
  v133 = v132;
  v134 = v323;
  v135 = v132;
  v136 = v306;
  v137 = (*(v323 + 48))(v135, 1, v306);
  v138 = v302;
  if (v137 == 1)
  {
    sub_226E15E98(v133, &qword_27D7B6858, &qword_226E688C0);
  }

  else
  {
    v139 = v268;
    (*(v134 + 32))(v268, v133, v136);
    v140 = v136;
    v141 = sub_226E63530();
    [v131 setTransactionStatusChangedDate_];

    v273(v139, v140);
  }

  v142 = v318;
  v143 = v305;
  sub_226E62ED0();
  if (v144)
  {
    *&v337 = 0x746E61686372656DLL;
    *(&v337 + 1) = 0xE90000000000002DLL;
    MEMORY[0x22AA8D010]();
    v145 = sub_226E639B0();

    [v334 setMerchantUniqueIdentifier_];

    v116 = v315;
    v146 = sub_226E639B0();
    [v334 setName_];

    v147 = sub_226E639B0();

    [v334 setDisplayName_];

    v142 = v318;
  }

  (*(v307 + 56))(v331, 1, 1, v143);
  (*(v308 + 56))(v332, 1, 1, v117);
  v148 = *(v116 + 56);
  v300 = (v116 + 56);
  v299 = v148;
  (v148)(v316, 1, 1, v142);
  (*(v309 + 56))(v333, 1, 1, v138);
  if (v304)
  {
    v284 = a1;
    v149 = *(v304 + 16);
    v150 = v329;
    v151 = v336;
    if (v149)
    {
      v152 = *(v335 + 16);
      v153 = v304 + ((*(v335 + 80) + 32) & ~*(v335 + 80));
      v154 = (v335 + 88);
      v317 = v335 + 8;
      v330 = v335 + 96;
      v285 = (v315 + 32);
      v323 = v267 + 32;
      v335 += 16;
      v155 = *(v335 + 56);
      v322 = (v267 + 8);
      v156 = *MEMORY[0x277CC6BE8];
      LODWORD(v321) = *MEMORY[0x277CC6BE0];
      LODWORD(v310) = *MEMORY[0x277CC6BF0];
      LODWORD(v320) = v156;
      v319 = v155;
      v152(v336, v153, v329);
      while (1)
      {
        v171 = (*v154)(v151, v150);
        if (v171 == v156)
        {
          (*v330)(v151, v150);
          v157 = v327;
          v158 = v328;
          (*v323)(v327, v336, v328);
          v159 = v152;
          v160 = v325;
          sub_226E62CA0();
          v161 = v332;
          sub_226E15E98(v332, &qword_27D7B6988, &qword_226E68D50);
          sub_226E26D94(v160, v161, &qword_27D7B6988, &qword_226E68D50);
          v162 = v324;
          sub_226E62CB0();
          v163 = v331;
          sub_226E15E98(v331, &qword_27D7B6990, &qword_226E68868);
          v164 = v162;
          v152 = v159;
          sub_226E26D94(v164, v163, &qword_27D7B6990, &qword_226E68868);
          v165 = v326;
          sub_226E62C90();
          v166 = v157;
          v151 = v336;
          v167 = v158;
          v150 = v329;
          (*v322)(v166, v167);
          v168 = v333;
          sub_226E15E98(v333, &qword_27D7B6980, &qword_226E68860);
          v169 = v165;
          v155 = v319;
          v170 = v168;
          v156 = v320;
          sub_226E26D94(v169, v170, &qword_27D7B6980, &qword_226E68860);
        }

        else if (v171 == v321 || v171 != v310)
        {
          (*v317)(v151, v150);
        }

        else
        {
          v172 = v316;
          sub_226E15E98(v316, &qword_27D7B6978, &qword_226E68858);
          (*v330)(v151, v150);
          v173 = v151;
          v174 = v318;
          (*v285)(v172, v173, v318);
          v175 = v174;
          v151 = v336;
          (v299)(v172, 0, 1, v175);
        }

        v153 += v155;
        if (!--v149)
        {
          break;
        }

        v152(v151, v153, v150);
      }
    }

    a1 = v284;
    v138 = v302;
    v117 = v301;
    v143 = v305;
  }

  v176 = v303;
  sub_226E26D94(v331, v303, &qword_27D7B6990, &qword_226E68868);
  sub_226E26D94(v332, v312, &qword_27D7B6988, &qword_226E68D50);
  sub_226E26D94(v333, v313, &qword_27D7B6980, &qword_226E68860);
  sub_226E26D94(v316, v314, &qword_27D7B6978, &qword_226E68858);
  v177 = v176;
  v178 = v286;
  sub_226E1A598(v177, v286, &qword_27D7B6990, &qword_226E68868);
  v179 = v307;
  if ((*(v307 + 48))(v178, 1, v143) == 1)
  {
    sub_226E15E98(v178, &qword_27D7B6990, &qword_226E68868);
    v180 = v311;
    v181 = v290;
    v182 = v308;
  }

  else
  {
    v183 = v288;
    (*(v179 + 32))(v288, v178, v143);
    sub_226E261DC(v183, v334);
    *&v184 = COERCE_DOUBLE(sub_226E62D00());
    v180 = v311;
    v181 = v290;
    if ((v185 & 1) == 0)
    {
      v186 = *&v184;
      v187 = sub_226E62D10();
      if ((v188 & 1) == 0)
      {
        v189 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v186 longitude:*&v187];
        [v334 setLocation_];
      }
    }

    v190 = sub_226E62CF0();
    v182 = v308;
    if (v190)
    {
      v191 = v190;
      v192 = [v190 street];
      if (!v192)
      {
        sub_226E639C0();
        v192 = sub_226E639B0();
        v180 = v311;
      }

      v193 = v334;
      [v334 setStreet_];

      v194 = [v191 ISOCountryCode];
      if (!v194)
      {
        sub_226E639C0();
        v194 = sub_226E639B0();
        v180 = v311;
      }

      [v193 setCountryCode_];

      v195 = [v191 city];
      if (!v195)
      {
        sub_226E639C0();
        v195 = sub_226E639B0();
        v180 = v311;
      }

      [v193 setCity_];

      v196 = [v191 state];
      if (!v196)
      {
        sub_226E639C0();
        v196 = sub_226E639B0();
        v180 = v311;
      }

      [v193 setState_];

      v197 = [v191 postalCode];
      if (!v197)
      {
        sub_226E639C0();
        v197 = sub_226E639B0();
        v180 = v311;
      }

      [v193 setZip_];

      v182 = v308;
      v179 = v307;
    }

    (*(v179 + 8))(v288, v305);
  }

  v198 = v287;
  sub_226E1A598(v312, v287, &qword_27D7B6988, &qword_226E68D50);
  v199 = (*(v182 + 48))(v198, 1, v117);
  v200 = v318;
  if (v199 == 1)
  {
    sub_226E15E98(v198, &qword_27D7B6988, &qword_226E68D50);
  }

  else
  {
    v201 = v198;
    v202 = v269;
    (*(v182 + 32))(v269, v201, v117);
    sub_226E2662C(v202, v334);
    (*(v182 + 8))(v202, v117);
  }

  v203 = v289;
  sub_226E1A598(v314, v289, &qword_27D7B6978, &qword_226E68858);
  v204 = v315;
  if ((*(v315 + 48))(v203, 1, v200) == 1)
  {
    sub_226E15E98(v203, &qword_27D7B6978, &qword_226E68858);
    v205 = v293;
  }

  else
  {
    (*(v204 + 32))(v180, v203, v200);
    v206 = sub_226E63110();
    if ((v206 & 0x10000) == 0)
    {
      [v334 setIndustryCode_];
    }

    v207 = v291;
    sub_226E631F0();
    sub_226E1A598(v207, v181, &qword_27D7B6970, &qword_226E68850);
    v208 = v270;
    v209 = v271;
    if ((*(v270 + 48))(v181, 1, v271) == 1)
    {
      v210 = 0;
    }

    else
    {
      v211 = v266;
      (*(v208 + 32))(v266, v181, v209);
      v212 = v208;
      sub_226E631B0();
      v214 = v213;
      sub_226E631C0();
      v216 = v215;
      sub_226E631A0();
      v218 = v217;
      sub_226E63190();
      v220 = v219;
      sub_226E63180();
      v222 = v221;
      v284 = a1;
      v223 = v297;
      sub_226E631D0();
      v224 = objc_allocWithZone(MEMORY[0x277CE41F8]);
      v225 = sub_226E63530();
      v210 = [v224 initWithCoordinate:v225 altitude:v214 horizontalAccuracy:v216 verticalAccuracy:v218 timestamp:{v220, v222}];

      a1 = v284;
      v273(v223, v306);
      (*(v212 + 8))(v211, v209);
    }

    v205 = v293;
    sub_226E15E98(v291, &qword_27D7B6970, &qword_226E68850);
    v226 = v334;
    [v334 setLocation_];

    sub_226E63150();
    if (v227)
    {
      v228 = sub_226E639B0();

      [v226 setIndustryCategory_];
    }

    sub_226E63170();
    v230 = v334;
    if (!v229)
    {
      v231 = [v334 countryCode];
      sub_226E639C0();

      v180 = v311;
    }

    v232 = sub_226E639B0();

    [v230 setCountryCode_];

    sub_226E63120();
    if (!v233)
    {
      v234 = [v230 city];
      sub_226E639C0();

      v180 = v311;
    }

    v235 = sub_226E639B0();

    [v230 setCity_];

    sub_226E63130();
    if (!v236)
    {
      v237 = [v230 state];
      sub_226E639C0();

      v180 = v311;
    }

    v238 = sub_226E639B0();

    [v230 setState_];

    sub_226E63100();
    if (!v239)
    {
      v240 = [v230 zip];
      sub_226E639C0();

      v180 = v311;
    }

    v241 = sub_226E639B0();

    [v230 setZip_];

    sub_226E63140();
    if (!v242)
    {
      v243 = [v230 rawName];
      sub_226E639C0();

      v180 = v311;
    }

    v244 = sub_226E639B0();

    [v230 setRawName_];

    sub_226E63160();
    if (!v245)
    {
      v246 = [v230 country];
      sub_226E639C0();

      v180 = v311;
    }

    v247 = sub_226E639B0();

    [v230 setCountry_];

    (*(v315 + 8))(v180, v318);
  }

  v248 = v292;
  sub_226E1A598(v313, v292, &qword_27D7B6980, &qword_226E68860);
  v249 = (*(v309 + 48))(v248, 1, v138);
  v250 = v295;
  if (v249 == 1)
  {
    sub_226E15E98(v248, &qword_27D7B6980, &qword_226E68860);
    v251 = v334;
    [v334 setCategory_];
  }

  else
  {
    v252 = v309;
    v253 = v272;
    (*(v309 + 32))(v272, v248, v138);
    v254 = sub_226E26DFC(v253);
    v251 = v334;
    [v334 setCategory_];
    (*(v252 + 8))(v253, v138);
  }

  sub_226E62EB0();
  v255 = v298;
  if ((*(v298 + 48))(v205, 1, v250) == 1)
  {

    v256 = sub_226E62FC0();
    (*(*(v256 - 8) + 8))(a1, v256);
    sub_226E15E98(v314, &qword_27D7B6978, &qword_226E68858);
    sub_226E15E98(v313, &qword_27D7B6980, &qword_226E68860);
    sub_226E15E98(v312, &qword_27D7B6988, &qword_226E68D50);
    sub_226E15E98(v303, &qword_27D7B6990, &qword_226E68868);
    v257 = &qword_27D7B6968;
    v258 = &qword_226E68848;
    v259 = v205;
  }

  else
  {
    (*(v255 + 32))(v294, v205, v250);
    sub_226E63250();
    v260 = sub_226E639B0();

    [v334 setProprietaryBankTransactionCode_];

    v251 = v334;
    sub_226E63260();
    if (v261)
    {
      v262 = sub_226E639B0();

      [v251 setProprietaryBankTransactionIssuer_];
    }

    v263 = sub_226E62FC0();
    (*(*(v263 - 8) + 8))(a1, v263);
    (*(v298 + 8))(v294, v250);
    sub_226E15E98(v314, &qword_27D7B6978, &qword_226E68858);
    sub_226E15E98(v313, &qword_27D7B6980, &qword_226E68860);
    sub_226E15E98(v312, &qword_27D7B6988, &qword_226E68D50);
    v257 = &qword_27D7B6990;
    v258 = &qword_226E68868;
    v259 = v303;
  }

  sub_226E15E98(v259, v257, v258);
  return v251;
}