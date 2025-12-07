void sub_100139D80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 128), 8);
  _Unwind_Resume(a1);
}

id sub_100139DB4(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_text(a2, 1, [*(a1 + 32) UTF8String], -1, 0);
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(PurchaseIntentDatabaseRow);
      [(PurchaseIntentDatabaseRow *)v5 setAppBundleId:*(a1 + 32)];
      [(PurchaseIntentDatabaseRow *)v5 setTimestamp:*(a1 + 48)];
      v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 0)];
      [(PurchaseIntentDatabaseRow *)v5 setProductIdentifier:v6];
      v7 = [NSNumber numberWithInt:sqlite3_column_int(a2, 3)];
      [(PurchaseIntentDatabaseRow *)v5 setPid:v7];

      v8 = sqlite3_column_text(a2, 4);
      if (v8)
      {
        v9 = [NSString stringWithUTF8String:v8];
        [(PurchaseIntentDatabaseRow *)v5 setProductName:v9];
      }

      v10 = sqlite3_column_text(a2, 5);
      if (v10)
      {
        v11 = [NSString stringWithUTF8String:v10];
        [(PurchaseIntentDatabaseRow *)v5 setAppName:v11];
      }

      [*(*(*(a1 + 56) + 8) + 40) addObject:v5];

      result = [*(a1 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

id sub_100139F40(uint64_t a1, sqlite3_stmt *a2)
{
  if ([*(*(*(a1 + 40) + 8) + 40) count])
  {
    v4 = 0;
    v5 = 6;
    do
    {
      v6 = [*(*(*(a1 + 40) + 8) + 40) objectAtIndex:v4];
      v7 = [v6 productIdentifier];
      sqlite3_bind_text(a2, v5 - 5, [v7 UTF8String], -1, 0);

      v8 = [v6 appBundleId];
      sqlite3_bind_text(a2, v5 - 4, [v8 UTF8String], -1, 0);

      v9 = [v6 timestamp];
      sqlite3_bind_int(a2, v5 - 3, [v9 intValue]);

      v10 = [v6 pid];
      sqlite3_bind_int(a2, v5 - 2, [v10 intValue]);

      v11 = [v6 productName];

      if (v11)
      {
        v12 = [v6 productName];
        sqlite3_bind_text(a2, v5 - 1, [v12 UTF8String], -1, 0);
      }

      v13 = [v6 appName];

      if (v13)
      {
        v14 = [v6 appName];
        sqlite3_bind_text(a2, v5, [v14 UTF8String], -1, 0);
      }

      ++v4;
      v5 += 6;
    }

    while (v4 < [*(*(*(a1 + 40) + 8) + 40) count]);
  }

  result = [*(a1 + 32) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10013A398(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013A3B8(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013A488;
  v9[3] = &unk_100329880;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v11 = v3;
  v12 = v5;
  v10 = v4;
  v6 = v3;
  [v6 prepareStatementForSQL:@"INSERT OR REPLACE INTO install_attribution_params_table (app_adam_id cache:ad_network_id usingBlock:{campaign_id, impression_id, timestamp, attribution_signature, local_timestamp) VALUES (?, ?, ?, ?, ?, ?, ?);", 0, v9}];
  v7 = *(*(*(a1 + 40) + 8) + 24);

  return v7;
}

id sub_10013A488(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) appAdamId];
  sqlite3_bind_int64(a2, 1, [v4 longLongValue]);

  v5 = [*(a1 + 32) adNetworkId];
  sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0);

  v6 = [*(a1 + 32) campaignId];
  sqlite3_bind_int64(a2, 3, [v6 longLongValue]);

  v7 = [*(a1 + 32) impressionId];
  sqlite3_bind_text(a2, 4, [v7 UTF8String], -1, 0);

  v8 = [*(a1 + 32) timestamp];
  sqlite3_bind_int64(a2, 5, [v8 longLongValue]);

  v9 = [*(a1 + 32) attributionSignature];
  sqlite3_bind_text(a2, 6, [v9 UTF8String], -1, 0);

  v10 = [*(a1 + 32) localTimestamp];
  sqlite3_bind_int64(a2, 7, [v10 longLongValue]);

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013A838(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM install_attribution_params_table WHERE app_adam_id = ?"];;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100139404;
  v16[4] = sub_100139414;
  v17 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013AA10;
  v12[3] = &unk_1003298D0;
  v13 = *(a1 + 32);
  v6 = v4;
  v14 = v6;
  v15 = v16;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013AC5C;
  block[3] = &unk_1003298F8;
  v10 = *(a1 + 40);
  v11 = v16;
  dispatch_async(v7, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void sub_10013A9F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013AA10(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(InstallAttributionParams);
      v6 = *(*(a1 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v8 = *(*(*(a1 + 48) + 8) + 40);
      v9 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
      [v8 setAppAdamId:v9];

      v10 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      [*(*(*(a1 + 48) + 8) + 40) setAdNetworkId:v10];
      v11 = *(*(*(a1 + 48) + 8) + 40);
      v12 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      [v11 setCampaignId:v12];

      v13 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
      [*(*(*(a1 + 48) + 8) + 40) setImpressionId:v13];
      v14 = *(*(*(a1 + 48) + 8) + 40);
      v15 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 4)];
      [v14 setTimestamp:v15];

      v16 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 5)];
      [*(*(*(a1 + 48) + 8) + 40) setAttributionSignature:v16];
      v17 = *(*(*(a1 + 48) + 8) + 40);
      v18 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 6)];
      [v17 setLocalTimestamp:v18];

      result = [*(a1 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10013AC5C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_10013AE74(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013AF8C;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_params_table WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013AF74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013AF8C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013B1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013B2E8;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_params_table WHERE local_timestamp < ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013B2D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B2E8(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSince1970];
  sqlite3_bind_int64(a2, 1, (v4 * 1000.0));
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013B538(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013B650;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"INSERT INTO install_attribution_pingback_table (app_adam_id cache:ad_network_id usingBlock:{campaign_id, transaction_id, attribution_signature, pingback_url, pending, retry_count, local_timestamp) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?);", 0, v8}];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013B638(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013B650(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = [*(a1 + 32) appAdamId];
  sqlite3_bind_int64(a2, 1, [v4 longLongValue]);

  v5 = [*(a1 + 32) adNetworkId];
  sqlite3_bind_text(a2, 2, [v5 UTF8String], -1, 0);

  v6 = [*(a1 + 32) campaignId];
  sqlite3_bind_int64(a2, 3, [v6 longLongValue]);

  v7 = [*(a1 + 32) transactionId];
  sqlite3_bind_text(a2, 4, [v7 UTF8String], -1, 0);

  v8 = [*(a1 + 32) attributionSignature];
  sqlite3_bind_text(a2, 5, [v8 UTF8String], -1, 0);

  v9 = [*(a1 + 32) pingbackUrl];
  v10 = [v9 absoluteString];
  sqlite3_bind_text(a2, 6, [v10 UTF8String], -1, 0);

  sqlite3_bind_int64(a2, 7, 0);
  sqlite3_bind_int64(a2, 8, [*(a1 + 32) retryCount]);
  v11 = [*(a1 + 32) localTimestamp];
  sqlite3_bind_int64(a2, 9, [v11 longLongValue]);

  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013BA44(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM install_attribution_pingback_table WHERE app_adam_id = ?"];;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = sub_100139404;
  v16[4] = sub_100139414;
  v17 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013BC1C;
  v12[3] = &unk_1003298D0;
  v13 = *(a1 + 32);
  v6 = v4;
  v14 = v6;
  v15 = v16;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10013BE4C;
  block[3] = &unk_1003298F8;
  v10 = *(a1 + 40);
  v11 = v16;
  dispatch_async(v7, block);

  _Block_object_dispose(v16, 8);
  return 1;
}

void sub_10013BC04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013BC1C(uint64_t a1, sqlite3_stmt *a2)
{
  v3 = a1;
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(v3 + 40) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v5 = objc_alloc_init(InstallAttributionPingback);
      v6 = *(*(v3 + 48) + 8);
      v7 = *(v6 + 40);
      *(v6 + 40) = v5;

      v22 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
      v21 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      v8 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      v9 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
      v10 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 4)];
      v11 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 5)];
      v12 = sqlite3_column_int64(a2, 7);
      v13 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 8)];
      v14 = v3;
      v15 = [InstallAttributionPingback alloc];
      v16 = [NSURL URLWithString:v11];
      v17 = v15;
      v3 = v14;
      v18 = [(InstallAttributionPingback *)v17 initWithAppAdamId:v22 transactionId:v9 campaignId:v8 adNetworkId:v21 attributionSignature:v10 pingbackUrl:v16 retryCount:v12 localTimestamp:v13];
      v19 = *(*(v14 + 48) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      result = [*(v14 + 40) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10013BE4C(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_10013C064(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013C17C;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"UPDATE install_attribution_pingback_table SET pending = 1 WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C17C(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013C264(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v5 = [NSString stringWithFormat:@"SELECT * FROM install_attribution_pingback_table WHERE pending = 1"];;
  v15[0] = 0;
  v15[1] = v15;
  v15[2] = 0x3032000000;
  v15[3] = sub_100139404;
  v15[4] = sub_100139414;
  v16 = objc_opt_new();
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10013C438;
  v12[3] = &unk_1003299E8;
  v6 = v4;
  v13 = v6;
  v14 = v15;
  [v6 prepareStatementForSQL:v5 cache:1 usingBlock:v12];
  v7 = dispatch_get_global_queue(0, 0);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10013C650;
  v9[3] = &unk_1003298F8;
  v10 = *(a1 + 32);
  v11 = v15;
  dispatch_async(v7, v9);

  _Block_object_dispose(v15, 8);
  return 1;
}

void sub_10013C420(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C438(uint64_t a1, sqlite3_stmt *a2)
{
  result = [*(a1 + 32) statementHasRowAfterStepping:a2];
  if (result)
  {
    do
    {
      v15 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 0)];
      v4 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 1)];
      v5 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 2)];
      v6 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 3)];
      v14 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 4)];
      v7 = [NSString stringWithUTF8String:sqlite3_column_text(a2, 5)];
      v8 = sqlite3_column_int64(a2, 7);
      v9 = [NSNumber numberWithLongLong:sqlite3_column_int64(a2, 8)];
      v10 = [InstallAttributionPingback alloc];
      v11 = [NSURL URLWithString:v7];
      v12 = [(InstallAttributionPingback *)v10 initWithAppAdamId:v15 transactionId:v6 campaignId:v5 adNetworkId:v4 attributionSignature:v14 pingbackUrl:v11 retryCount:v8 localTimestamp:v9];

      if (v12)
      {
        [*(*(*(a1 + 40) + 8) + 40) addObject:v12];
      }

      result = [*(a1 + 32) statementHasRowAfterStepping:a2];
    }

    while ((result & 1) != 0);
  }

  return result;
}

uint64_t sub_10013C650(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, *(*(*(a1 + 40) + 8) + 40));
  }

  return result;
}

uint64_t sub_10013C868(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013C980;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_pingback_table WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013C968(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013C980(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013CBC4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013CCDC;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"DELETE FROM install_attribution_pingback_table WHERE local_timestamp < ? AND pending = 0;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013CCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013CCDC(uint64_t a1, sqlite3_stmt *a2)
{
  [*(a1 + 32) timeIntervalSince1970];
  sqlite3_bind_int64(a2, 1, (v4 * 1000.0));
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

uint64_t sub_10013CF2C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 database];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10013D044;
  v8[3] = &unk_100329880;
  v9 = *(a1 + 32);
  v11 = &v12;
  v5 = v4;
  v10 = v5;
  [v5 prepareStatementForSQL:@"UPDATE install_attribution_pingback_table SET retry_count = retry_count + 1 WHERE app_adam_id = ?;" cache:0 usingBlock:v8];
  v6 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v6;
}

void sub_10013D02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10013D044(uint64_t a1, sqlite3_stmt *a2)
{
  sqlite3_bind_int64(a2, 1, [*(a1 + 32) longLongValue]);
  result = [*(a1 + 40) statementDidFinishAfterStepping:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

void sub_10013D158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10013DBEC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 96));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_10013DC1C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = objc_loadWeakRetained((a1 + 64));
  v4 = [v3 success];

  if (v4)
  {
    v5 = +[SSAccountStore defaultStore];
    v6 = [v5 accountWithUniqueIdentifier:*(a1 + 32)];

    [v6 setFreeDownloadsPasswordSetting:*(a1 + 72)];
    [v6 setPaidPurchasesPasswordSetting:*(a1 + 80)];
    v7 = +[SSLogConfig sharedAccountsConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      v13 = [v6 accountName];
      v14 = SSHashIfNeeded();
      v21 = 138543618;
      v22 = v11;
      v23 = 2114;
      v24 = v14;
      v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 0, "%{public}@: Setting an account's password settings. Saving %{public}@.", &v21, 22);

      if (!v15)
      {
LABEL_14:

        v16 = +[SSAccountStore defaultStore];
        [v16 saveAccount:v6 verifyCredentials:0 completion:0];

        goto LABEL_15;
      }

      v10 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  v18 = objc_loadWeakRetained((a1 + 64));
  +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v18 success]);
  SSXPCDictionarySetCFObject();

  v19 = objc_loadWeakRetained((a1 + 64));
  [v19 error];
  SSXPCDictionarySetCFObject();

  xpc_connection_send_message(*(a1 + 48), reply);
  v20 = +[Daemon daemon];
  [v20 releaseKeepAliveAssertion:@"com.apple.itunesstored.AccountPasswordSettings"];
}

void sub_10013F5F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10013F620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10013F638(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = a2;
    v5 = [v3 buttons];
    v6 = [v4 selectedButtonIndex];

    v7 = [v5 objectAtIndex:v6];
    v8 = *(a1[5] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *(*(a1[6] + 8) + 24) = 1;
  }
}

id sub_100140868(void *a1, void *a2, id *a3)
{
  v6 = objc_alloc_init(NSAutoreleasePool);
  if (*a3)
  {
    v7 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [*a3 longLongValue], a1[4]);
    if (([-[DownloadEntity valueForProperty:](v7 valueForProperty:{@"client_id", "isEqualToString:", a1[5]}] & 1) == 0)
    {
      v8 = [[PersistentDownloadEntity alloc] initWithPersistentID:a2 inDatabase:a1[4]];
      [(PersistentDownloadEntity *)v8 deleteFromDatabase];
      v9 = +[SSLogConfig sharedDaemonConfig];
      if (!v9)
      {
        v9 = +[SSLogConfig sharedConfig];
      }

      v10 = [v9 shouldLog];
      if ([v9 shouldLogToDisk])
      {
        LODWORD(v11) = v10 | 2;
      }

      else
      {
        LODWORD(v11) = v10;
      }

      v12 = [v9 OSLogObject];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v11 = v11;
      }

      else
      {
        v11 &= 2u;
      }

      if (v11)
      {
        v13 = objc_opt_class();
        v14 = *a3;
        v15 = a1[5];
        v32 = 138413058;
        v33 = v13;
        v34 = 2048;
        v35 = a2;
        v36 = 2112;
        v37 = v14;
        v38 = 2112;
        v39 = v15;
        v16 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v12, 0, "%@: Pruned orphaned persistent download [%lld, %@, %@]", &v32, 42);
        if (v16)
        {
          v17 = v16;
          v18 = [NSString stringWithCString:v16 encoding:4];
          free(v17);
          v29 = v18;
          SSFileLog();
        }
      }

      if (![PersistentDownloadEntity anyInDatabase:a1[4] predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"download_id" equalToValue:*a3, v29]])
      {
        v19 = +[SSLogConfig sharedDaemonConfig];
        if (!v19)
        {
          v19 = +[SSLogConfig sharedConfig];
        }

        v20 = [v19 shouldLog];
        if ([v19 shouldLogToDisk])
        {
          LODWORD(v21) = v20 | 2;
        }

        else
        {
          LODWORD(v21) = v20;
        }

        v22 = [v19 OSLogObject];
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v21;
        }

        else
        {
          v21 &= 2u;
        }

        if (v21)
        {
          v23 = objc_opt_class();
          v24 = *a3;
          v32 = 138412546;
          v33 = v23;
          v34 = 2112;
          v35 = v24;
          LODWORD(v31) = 22;
          v25 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, v22, 0, "%@: Pruned orphaned download: %@", &v32, v31);
          if (v25)
          {
            v26 = v25;
            v27 = [NSString stringWithCString:v25 encoding:4];
            free(v26);
            v30 = v27;
            SSFileLog();
          }
        }

        [(DownloadEntity *)v7 deleteFromDatabase];
      }
    }
  }

  return [v6 drain];
}

uint64_t sub_100140DB8(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383F20;
  qword_100383F20 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100141454(uint64_t a1, BOOL a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, "1", a2);
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
  v9 = [*(a1 + 32) outputConnection];
  [v9 sendMessage:v10];
}

void sub_100141520(uint64_t a1, BOOL a2, void *a3, void *a4)
{
  v7 = a4;
  v8 = a3;
  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v10, "1", a2);
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
  v9 = [*(a1 + 32) outputConnection];
  [v9 sendMessage:v10];
}

void sub_1001418CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 error];
  SSXPCDictionarySetObject();
}

void sub_100141C48(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_int64(v4, "0", [v3 matchStatus]);
  v5 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_100142080(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001420A8(id *a1, void *a2, _BOOL4 a3, void *a4)
{
  v7 = a4;
  v8 = a2;
  xdict = xpc_dictionary_create(0, 0, 0);
  SSXPCDictionarySetObject();

  xpc_dictionary_set_BOOL(xdict, "3", a3);
  SSXPCDictionarySetObject();

  v9 = [a1[4] outputConnection];
  [v9 sendMessage:xdict];

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained && a3)
  {
    [a1[5] _dequeueSubscriptionStatusOperation:WeakRetained];
  }
}

void sub_100142590(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001425B8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [WeakRetained success]);
    v4 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v5 = [WeakRetained downloads];
    v6 = objc_opt_new();
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v20;
      do
      {
        v11 = 0;
        do
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(*(&v19 + 1) + 8 * v11) dictionary];
          v13 = [v12 copy];

          [v6 addObject:v13];
          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v9);
    }

    v23[0] = @"result";
    v14 = [WeakRetained success];
    v15 = &__kCFBooleanFalse;
    if (v14)
    {
      v15 = &__kCFBooleanTrue;
    }

    v24[0] = v15;
    v23[1] = @"count";
    v16 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v7 count]);
    v23[2] = @"downloads";
    v24[1] = v16;
    v24[2] = v6;
    v17 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:3];

    SSXPCDictionarySetObject();
    v18 = [*(a1 + 32) outputConnection];
    [v18 sendMessage:v3];

    [WeakRetained setCompletionBlock:0];
  }
}

void sub_100142D38(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100142D60(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v6 = WeakRetained;
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    v4 = reply;
    if (reply)
    {
      xpc_dictionary_set_int64(reply, "0", 1011);
      xpc_dictionary_set_BOOL(v4, "1", [v6 success]);
      v5 = [v6 error];
      SSXPCDictionarySetObject();

      xpc_connection_send_message(*(a1 + 40), v4);
    }

    [*(a1 + 48) setClient:0 forOperation:v6];

    WeakRetained = v6;
  }
}

void sub_1001431D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, id location)
{
  objc_destroyWeak((v23 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001431FC(id *a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
    SSXPCDictionarySetObject();
    SSXPCDictionarySetObject();
    v8 = [a1[4] outputConnection];
    [v8 sendMessage:v7];

    [a1[5] setClient:0 forOperation:WeakRetained];
  }
}

void sub_100143604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10014362C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    reply = xpc_dictionary_create_reply(*(a1 + 32));
    SSXPCDictionarySetObject();
    SSXPCDictionarySetObject();
    xpc_connection_send_message(*(a1 + 40), reply);
    [*(a1 + 48) setClient:0 forOperation:WeakRetained];
  }
}

void sub_100143C74(uint64_t a1, int a2, void *a3, uint64_t a4, void *a5)
{
  LODWORD(v7) = a2;
  v9 = a3;
  v10 = a5;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = v7;
    v7 = v9;
    v17 = a4;
    v18 = objc_opt_class();
    v19 = a1;
    v20 = *(a1 + 40);
    v28 = v18;
    v21 = [v20 itemIdentifier];
    v29 = 138413058;
    v30 = v18;
    a4 = v17;
    v9 = v7;
    LOBYTE(v7) = v16;
    v31 = 2112;
    v32 = v21;
    v33 = 1024;
    v34 = v16;
    v35 = 2048;
    v36 = a4;
    v22 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 0, "%@: App Store daemon responded to managed application request for itemID: %@ result: %d changeType: %ld", &v29, 38);

    a1 = v19;
    if (v22)
    {
      v23 = [NSString stringWithCString:v22 encoding:4];
      free(v22);
      v27 = v23;
      SSFileLog();
    }
  }

  else
  {
  }

  v24 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_int64(v24, "0", 1011);
  xpc_dictionary_set_BOOL(v24, "1", v7);
  SSXPCDictionarySetObject();

  if (*(a1 + 56) == 1)
  {
    v25 = [NSNumber numberWithInt:a4];
    SSXPCDictionarySetObject();

    SSXPCDictionarySetObject();
  }

  v26 = [*(a1 + 48) outputConnection];
  [v26 sendMessage:v24];
}

void sub_10014421C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_BOOL(v4, "1", [v3 success]);
  v5 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_1001445E4(uint64_t a1, void *a2)
{
  xdict = a2;
  v3 = [*(a1 + 32) success];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 URLBag];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 URLBagDictionary];
      SSXPCDictionarySetObject();

      [v6 invalidationTime];
      xpc_dictionary_set_double(xdict, "1", v8);
      v9 = [v6 storeFrontIdentifier];
      SSXPCDictionarySetObject();
    }
  }

  else
  {
    v6 = [v4 error];
    SSXPCDictionarySetObject();
  }
}

void sub_100144A70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100144A98(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v13 = WeakRetained;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    if ([v13 success])
    {
      v4 = [SSProtocolConditionalEvaluator alloc];
      v5 = [v13 dataProvider];
      v6 = [v5 output];
      v7 = [v4 initWithDictionary:v6];

      v8 = [v7 dictionaryByEvaluatingConditions];
      SSXPCDictionarySetObject();

      v9 = [v13 response];
      v10 = [v9 itunes_expirationDate];

      if (v10)
      {
        SSXPCDictionarySetObject();
      }
    }

    v11 = [v13 error];
    SSXPCDictionarySetObject();

    v12 = [*(a1 + 32) outputConnection];
    [v12 sendMessage:v3];

    [v13 setCompletionBlock:0];
    WeakRetained = v13;
  }
}

void sub_100145024(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 lookupResponse];
  SSXPCDictionarySetObject();

  v6 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_10014556C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100145590(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  v5 = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = v5 | 2;
  }

  else
  {
    LODWORD(v6) = v5;
  }

  v7 = [v4 OSLogObject];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (!v6)
  {
    goto LABEL_12;
  }

  v10 = 138412546;
  v11 = objc_opt_class();
  v12 = 2112;
  v13 = v3;
  v8 = v11;
  v9 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, v7, 1, "[%@]: AppStore Migrator scheduled: %@", &v10, 22);

  if (v9)
  {
    v7 = [NSString stringWithCString:v9 encoding:4];
    free(v9);
    SSFileLog();
LABEL_12:
  }

  *(*(*(a1 + 40) + 8) + 24) = v3 == 0;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100145D34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100145D5C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [v7 success]);
    v4 = [v7 error];
    SSXPCDictionarySetObject();

    v5 = [v7 rentalInformation];
    if (v5)
    {
      SSXPCDictionarySetObject();
    }

    v6 = [*(a1 + 32) outputConnection];
    [v6 sendMessage:v3];

    [v7 setCompletionBlock:0];
    WeakRetained = v7;
  }
}

void sub_1001462B8(uint64_t a1, int a2, void *a3, void *a4)
{
  LODWORD(v5) = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  v10 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    v11 = v10 | 2;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 OSLogObject];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = v11;
  }

  else
  {
    v13 = v11 & 2;
  }

  if (v13)
  {
    v14 = v5;
    v5 = objc_opt_class();
    v15 = *(a1 + 32);
    v23 = a1;
    v16 = v5;
    v17 = [v15 bundleID];
    v18 = [v7 componentsJoinedByString:{@", "}];
    v24 = 138413058;
    v25 = v5;
    LOBYTE(v5) = v14;
    v26 = 2112;
    v27 = v17;
    v28 = 1024;
    v29 = v14;
    v30 = 2112;
    v31 = v18;
    v19 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v12, 1, "[%@]: Repair complete for bundleID: %@ result: %d changedBundleIdentifiers: [%@]", &v24, 38);

    a1 = v23;
    if (v19)
    {
      v20 = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }
  }

  else
  {
  }

  v21 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_BOOL(v21, "1", v5);
  SSXPCDictionarySetObject();

  SSXPCDictionarySetObject();
  v22 = [*(a1 + 40) outputConnection];
  [v22 sendMessage:v21];
}

void sub_10014699C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 URLResponse];
  SSXPCDictionarySetObject();

  v6 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

uint64_t sub_100146DD8(uint64_t a1, int a2, xpc_object_t object)
{
  if (xpc_get_type(object) == &_xpc_type_string)
  {
    v4 = SSXPCCreateCFObjectFromXPCObject();
    [*(a1 + 40) addObject:v4];
  }

  return 1;
}

void sub_100147148(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [*(a1 + 32) success];
  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 URLBag];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 storeFrontIdentifier];
      SSXPCDictionarySetObject();
    }
  }

  else
  {
    v6 = [v4 error];
    SSXPCDictionarySetObject();
  }
}

void sub_1001475DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100147604(id *a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v4 = xpc_dictionary_create(0, 0, 0);
    SSXPCDictionarySetObject();
    v5 = [a1[4] outputConnection];
    [v5 sendMessage:v4];

    [a1[5] setClient:0 forOperation:WeakRetained];
  }
}

void sub_100147C20(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100147C48(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [WeakRetained success]);
    v4 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v5 = [WeakRetained dataProvider];
    v6 = [v5 output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SSXPCDictionarySetObject();
LABEL_17:
      v13 = [*(a1 + 32) outputConnection];
      [v13 sendMessage:v3];

      goto LABEL_18;
    }

    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v15[0] = 0;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "NetworkRequestQueue: Silent enrollment failed to parse server response", v15, 2);

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }

      v10 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      v14 = v10;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
}

void sub_100148420(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 128));
  _Unwind_Resume(a1);
}

void sub_100148448(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v3, "0", 1011);
    xpc_dictionary_set_BOOL(v3, "1", [WeakRetained success]);
    v4 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v5 = [WeakRetained dataProvider];
    v6 = [v5 output];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      SSXPCDictionarySetObject();
LABEL_17:
      v13 = [*(a1 + 32) outputConnection];
      [v13 sendMessage:v3];

      goto LABEL_18;
    }

    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v15[0] = 0;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 16, "NetworkRequestQueue: Silent enrollment failed to parse server response", v15, 2);

      if (!v12)
      {
LABEL_16:

        goto LABEL_17;
      }

      v10 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      v14 = v10;
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_18:
}

void sub_100148914(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = a2;
  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = [v5 copyXPCEncoding];

  if (v7)
  {
    xpc_dictionary_set_value(v6, "1", v7);
  }

  SSXPCDictionarySetObject();
  v8 = [*(a1 + 32) outputConnection];
  [v8 sendMessage:v6];

  +[SSVSubscriptionStatusCoordinator endSuspendingSubscriptionStatusChangeNotifications];
}

void sub_100148D30(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = objc_alloc_init(SSVServerAuthenticateResponse);
  v4 = [*(a1 + 32) authenticatedAccountDSID];
  [v10 setAuthenticatedAccountIdentifier:v4];

  v5 = [*(a1 + 32) redirectURL];
  [v10 setRedirectURL:v5];

  v6 = [*(a1 + 40) buttons];
  v7 = [*(a1 + 32) performedButton];
  [v10 setPerformedButtonIndex:{objc_msgSend(v6, "indexOfObject:", v7)}];

  v8 = [*(a1 + 32) selectedButton];
  [v10 setSelectedButtonIndex:{objc_msgSend(v6, "indexOfObject:", v8)}];

  SSXPCDictionarySetObject();
  v9 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();
}

void sub_1001495E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, id location)
{
  objc_destroyWeak((v19 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100149610(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v2 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_int64(v2, "0", 166);
    if ([WeakRetained success])
    {
      v3 = [WeakRetained dataProvider];
      v4 = [v3 output];
      SSXPCDictionarySetObject();
    }

    v5 = [WeakRetained error];
    SSXPCDictionarySetObject();

    v6 = [*(a1 + 32) outputConnection];
    [v6 sendMessage:v2];

    [WeakRetained setCompletionBlock:0];
  }
}

void sub_100149AE8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  xpc_dictionary_set_BOOL(v4, "1", [v3 success]);
  v5 = [*(a1 + 32) error];
  SSXPCDictionarySetObject();

  v6 = [*(a1 + 32) response];
  SSXPCDictionarySetObject();
}

void sub_10014A440(id *a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([a1[4] length] || !objc_msgSend(v7, "isEqualToString:", @"action"))
  {
    if ([v7 isEqualToString:@"code"])
    {
      [a1[5] addObject:v5];
    }

    else if ([v7 isEqualToString:@"url"])
    {
      v6 = [[NSURL alloc] initWithString:v5];
      if (v6)
      {
        [a1[6] addObject:v6];
      }
    }
  }

  else
  {
    [a1[4] setString:v5];
  }
}

id sub_10014A9C8(uint64_t a1)
{
  [*(a1 + 32) setClient:*(a1 + 40) forOperation:*(a1 + 48)];
  v2 = *(a1 + 32);
  if (*(v2 + 40))
  {
    v3 = *(v2 + 48);
    if (!v3)
    {
      v4 = objc_alloc_init(NSMutableArray);
      v5 = *(a1 + 32);
      v6 = *(v5 + 48);
      *(v5 + 48) = v4;

      v3 = *(*(a1 + 32) + 48);
    }

    v7 = *(a1 + 48);

    return [v3 addObject:v7];
  }

  else
  {
    objc_storeStrong((v2 + 40), *(a1 + 48));
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);

    return [v9 addOperation:v10];
  }
}

void sub_10014AB20(uint64_t a1)
{
  [*(a1 + 32) setClient:0 forOperation:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3 != *(a1 + 40))
  {
    v4 = +[SSLogConfig sharedDaemonConfig];
    if (!v4)
    {
      v4 = +[SSLogConfig sharedConfig];
    }

    v5 = [v4 shouldLog];
    if ([v4 shouldLogToDisk])
    {
      v6 = v5 | 2;
    }

    else
    {
      v6 = v5;
    }

    v7 = [v4 OSLogObject];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = v6;
    }

    else
    {
      v8 = v6 & 2;
    }

    if (v8)
    {
      v9 = *(a1 + 40);
      v10 = *(*(a1 + 32) + 40);
      v15 = 138412546;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v7, 16, "ERROR: SubscriptionStatusOperation dequeued: %@ where currentSubscriptiontStatusOperation = %@", &v15, 22);

      if (!v11)
      {
LABEL_14:

        v2 = *(a1 + 32);
        v3 = *(v2 + 40);
        goto LABEL_15;
      }

      v7 = [NSString stringWithCString:v11 encoding:4];
      free(v11);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
  *(v2 + 40) = 0;

  if ([*(*(a1 + 32) + 48) count])
  {
    v12 = [*(*(a1 + 32) + 48) firstObject];
    [*(*(a1 + 32) + 48) removeObjectAtIndex:0];
    objc_storeStrong((*(a1 + 32) + 40), v12);
    [*(a1 + 32) addOperation:v12];
    if (![*(*(a1 + 32) + 48) count])
    {
      v13 = *(a1 + 32);
      v14 = *(v13 + 48);
      *(v13 + 48) = 0;
    }
  }
}

void sub_10014B1D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, id a18)
{
  objc_destroyWeak((v18 + 48));
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a18);
  _Unwind_Resume(a1);
}

void sub_10014B210(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained(a1 + 6);
    v4 = [v3 authenticateResponse];

    v5 = WeakRetained[2];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10014B2FC;
    block[3] = &unk_1003281A0;
    v8 = a1[4];
    v9 = v4;
    v10 = WeakRetained;
    v6 = v4;
    dispatch_async(v5, block);
  }
}

id sub_10014B2FC(uint64_t a1)
{
  [*(a1 + 32) setAuthenticateResponse:*(a1 + 40)];
  v2 = *(a1 + 48);
  v3 = *(a1 + 32);

  return [v2 _finishResponse:v3];
}

id sub_10014BA40(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F30 = result;
  return result;
}

void sub_10014BD40(id a1)
{
  v1[0] = _NSConcreteStackBlock;
  v1[1] = 3221225472;
  v1[2] = sub_10014BDB8;
  v1[3] = &unk_100329DD0;
  [+[ML3MusicLibrary sharedLibrary](ML3MusicLibrary "sharedLibrary")];
}

id sub_10014BDB8(uint64_t a1)
{
  v1 = [ML3Track queryWithLibrary:*(a1 + 32) predicate:[ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsOTAPurchased equalToInteger:1]];

  return [v1 deleteAllEntitiesFromLibrary];
}

id sub_10014BE88(uint64_t a1)
{
  v2 = +[ML3MusicLibrary sharedLibrary];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10014BF1C;
  v4[3] = &unk_100329DF8;
  v5 = *(a1 + 32);
  v7 = *(a1 + 48);
  v6 = v2;
  return [v2 performDatabaseTransactionWithBlock:v4];
}

uint64_t sub_10014BF1C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = objc_autoreleasePoolPush();
        [*(a1 + 40) _removeDownloadWithIdentifier:objc_msgSend(v7 canceled:"longLongValue") inLibrary:{*(a1 + 56), *(a1 + 48)}];
        objc_autoreleasePoolPop(v8);
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  return 1;
}

id sub_10014C0B4(uint64_t a1)
{
  v2 = +[ML3MusicLibrary sharedLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10014C148;
  v6[3] = &unk_100329E20;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[5] = v2;
  v6[6] = v4;
  v7 = *(a1 + 48);
  v6[4] = v3;
  return [v2 performDatabaseTransactionWithBlock:v6];
}

void sub_10014C398(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  if (!v2)
  {
    *(*(a1 + 32) + 24) = objc_alloc_init(NSMutableArray);
    v2 = *(*(a1 + 32) + 24);
  }

  if (![v2 count])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  [*(*(a1 + 32) + 24) addObjectsFromArray:*(a1 + 40)];
  v3 = *(a1 + 32);
  if (!*(v3 + 32))
  {
    *(*(a1 + 32) + 32) = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, *(v3 + 8));
    v4 = *(*(a1 + 32) + 32);
    v5 = dispatch_time(0, 5000000000);
    dispatch_source_set_timer(v4, v5, 0, 0);
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10014C4D4;
    handler[3] = &unk_100327378;
    handler[4] = v6;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(*(*(a1 + 32) + 32));
  }
}

id sub_10014C548(uint64_t a1)
{
  v2 = [+[ML3MusicLibrary sharedLibrary](ML3MusicLibrary "sharedLibrary")];
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);

  return [v2 setAppleID:v3 forDSID:v4];
}

id sub_10014D88C(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  v1 = +[Daemon daemon];

  return [v1 releaseKeepAliveAssertion:@"com.apple.itunesstored.IPodLibrary"];
}

uint64_t sub_1001500BC(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(NSMutableDictionary);
  v5 = objc_alloc_init(NSMutableDictionary);
  v52 = [a2 database];
  v48 = +[DownloadHandlerManager handlerManager];
  v53 = a1;
  v6 = [*(a1 + 32) responseDownloads];
  v58 = 0u;
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v58 objects:v67 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v59;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v59 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v58 + 1) + 8 * i);
        v12 = [[NSNumber alloc] initWithItemIdentifier:{objc_msgSend(v11, "itemIdentifier")}];
        [v5 setObject:v11 forKey:v12];

        v13 = [v11 podcastEpisodeGUID];
        if (v13)
        {
          [v4 setObject:v11 forKey:v13];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v58 objects:v67 count:16];
    }

    while (v8);
  }

  v49 = v4;
  v47 = [*(v53 + 32) responseError];
  v51 = [*(v53 + 40) _downloadRestoreStateForError:?];
  v14 = [*(v53 + 32) requestItems];
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  obj = v14;
  v15 = [v14 countByEnumeratingWithState:&v54 objects:v66 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v55;
    v46 = a2;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v54 + 1) + 8 * j);
        v20 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v19 downloadIdentifier], v52);
        v21 = [v19 storeItemID];
        v22 = v21;
        if (v21 && [v21 longLongValue] && (v23 = objc_msgSend(v5, "objectForKey:", v22)) != 0 || (v24 = objc_msgSend(v19, "podcastEpisodeGUID", v44)) != 0 && (v23 = objc_msgSend(v49, "objectForKey:", v24)) != 0)
        {
          [*(v53 + 40) _updateDownloadEntity:v20 withTransaction:a2 storeDownload:v23 accountID:{0, v44}];
        }

        else if (v51)
        {
          v25 = [*(v53 + 40) _copyDownloadSessionPropertiesForItem:v19 download:v20];
          if ([v48 canOpenSessionWithProperties:v25])
          {
            v26 = +[SSLogConfig sharedDaemonConfig];
            if (!v26)
            {
              v26 = +[SSLogConfig sharedConfig];
            }

            v27 = [v26 shouldLog];
            if ([v26 shouldLogToDisk])
            {
              LODWORD(v28) = v27 | 2;
            }

            else
            {
              LODWORD(v28) = v27;
            }

            v29 = [v26 OSLogObject];
            if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
            {
              v28 = v28;
            }

            else
            {
              v28 &= 2u;
            }

            if (v28)
            {
              v30 = objc_opt_class();
              v62 = 138543618;
              v63 = v30;
              v64 = 2114;
              v65 = v19;
              LODWORD(v45) = 22;
              v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v29, 16, "%{public}@: Restore failed for item: %{public}@", &v62, v45);
              if (v31)
              {
                v32 = v31;
                v33 = [NSString stringWithCString:v31 encoding:4];
                free(v32);
                v44 = v33;
                SSFileLog();
              }
            }

            [(DownloadEntity *)v20 setValue:[NSNumber forProperty:"numberWithInteger:" numberWithInteger:v51, v44], @"download_state.restore_state"];
            a2 = v46;
          }

          else if (v51 == 1)
          {
            v41 = [v19 error];
            if (v22 && !v41)
            {
              v41 = [*(v53 + 32) errorForItemIdentifier:v22];
            }

            if (v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = v47;
            }

            [*(v53 + 40) _hardFailRestoreItem:v19 download:v20 transaction:a2 error:v42];
          }

          else
          {
            [a2 unionChangeset:{objc_msgSend(*(v53 + 40), "_softFailRestoreItem:download:withRestoreState:error:", v19, v20, v51, v47)}];
          }
        }

        else
        {
          v34 = +[SSLogConfig sharedDaemonConfig];
          if (!v34)
          {
            v34 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v35) = [v34 shouldLog];
          if ([v34 shouldLogToDisk])
          {
            LODWORD(v35) = v35 | 2;
          }

          v36 = [v34 OSLogObject];
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            v35 = v35;
          }

          else
          {
            v35 &= 2u;
          }

          if (v35)
          {
            v37 = objc_opt_class();
            v62 = 138543618;
            v63 = v37;
            v64 = 2114;
            v65 = v19;
            LODWORD(v45) = 22;
            v38 = _os_log_send_and_compose_impl(v35, 0, 0, 0, &_mh_execute_header, v36, 16, "%{public}@: Restore transient failed for item: %{public}@", &v62, v45);
            if (v38)
            {
              v39 = v38;
              v40 = [NSString stringWithCString:v38 encoding:4];
              free(v39);
              v44 = v40;
              SSFileLog();
            }
          }
        }
      }

      v16 = [obj countByEnumeratingWithState:&v54 objects:v66 count:16];
    }

    while (v16);
  }

  return 1;
}

id sub_100152318(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v4 = *(a1 + 32);
  result = [v4 countByEnumeratingWithState:&v36 objects:v63 count:16];
  v35 = result;
  if (result)
  {
    v34 = *v37;
    v33 = SSDownloadPropertyBundleIdentifier;
    v32 = SSDownloadPropertyIsRestore;
    v31 = SSDownloadPropertyIsStoreDownload;
    v30 = SSDownloadPropertyKind;
    v29 = SSDownloadPropertyPodcastEpisodeGUID;
    v28 = SSDownloadPropertyStoreAccountIdentifier;
    v27 = SSDownloadPropertyStoreAccountAppleID;
    v26 = SSDownloadPropertyStoreCollectionIdentifier;
    v25 = SSDownloadPropertyStoreFrontIdentifier;
    v24 = SSDownloadPropertyStoreItemIdentifier;
    v23 = SSDownloadPropertyStoreMatchStatus;
    v22 = SSDownloadPropertyStoreSagaIdentifier;
    v21 = SSDownloadPropertyStoreSoftwareVersionIdentifier;
    v20 = SSDownloadPropertyTitle;
    v18 = SSDownloadAssetTypeMedia;
    v17 = SSDownloadAssetPropertyIsDRMFree;
    v16 = SSDownloadAssetPropertyStoreFlavor;
    v15 = SSDownloadAssetPropertyVideoDimensions;
    v19 = v4;
    do
    {
      v6 = 0;
      do
      {
        if (*v37 != v34)
        {
          objc_enumerationMutation(v4);
        }

        v7 = *(*(&v36 + 1) + 8 * v6);
        v8 = objc_autoreleasePoolPush();
        v9 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v7 longLongValue], v3);
        v62[0] = @"client_id";
        v62[1] = @"handler_id";
        v62[2] = @"IFNULL(download_state.has_restore_data, -1)";
        v62[3] = @"IFNULL(download_state.restore_data_size, 0)";
        v62[4] = @"bundle_id";
        v62[5] = @"is_restore";
        v62[6] = @"is_from_store";
        v62[7] = @"kind";
        v62[8] = @"podcast_episode_guid";
        v62[9] = @"store_account_id";
        v62[10] = @"store_account_name";
        v62[11] = @"store_collection_id";
        v62[12] = @"store_front_id";
        v62[13] = @"store_item_id";
        v62[14] = @"store_match_status";
        v62[15] = @"store_saga_id";
        v62[16] = @"store_software_version_id";
        v62[17] = @"title";
        memset(v47, 0, sizeof(v47));
        v48 = v33;
        v49 = v32;
        v50 = v31;
        v51 = v30;
        v52 = v29;
        v53 = v28;
        v54 = v27;
        v55 = v26;
        v56 = v25;
        v57 = v24;
        v58 = v23;
        v59 = v22;
        v60 = v21;
        v61 = v20;
        [(DownloadEntity *)v9 getValues:&v43 forProperties:v62 count:18];
        if ([v45 BOOLValue] && (objc_msgSend(v46, "BOOLValue") & 1) == 0)
        {
          v10 = v3;
          v11 = -[RestoreDownloadItem initWithDownloadIdentifier:]([RestoreDownloadItem alloc], "initWithDownloadIdentifier:", [v7 longLongValue]);
          for (i = 32; i != 144; i += 8)
          {
            [(RestoreDownloadItem *)v11 setValue:*(&v43 + i) forDownloadProperty:*(v47 + i)];
          }

          if (v44)
          {
            -[RestoreDownloadItem setHandlerIdentifier:](v11, "setHandlerIdentifier:", [v44 longLongValue]);
          }

          [(RestoreDownloadItem *)v11 setClientIdentifier:v43];
          v13 = [(DownloadEntity *)v9 anyAssetForAssetType:v18];
          if (v13)
          {
            v42[0] = @"is_drm_free";
            v42[1] = @"store_flavor";
            v42[2] = @"video_dimensions";
            v41[0] = v17;
            v41[1] = v16;
            v41[2] = v15;
            [v13 getValues:v40 forProperties:v42 count:3];
            for (j = 0; j != 3; ++j)
            {
              [(RestoreDownloadItem *)v11 setValue:*&v40[j * 8] forAssetProperty:v41[j]];
            }
          }

          [*(a1 + 40) addObject:v11];

          v3 = v10;
          v4 = v19;
        }

        objc_autoreleasePoolPop(v8);
        v6 = v6 + 1;
      }

      while (v6 != v35);
      result = [v4 countByEnumeratingWithState:&v36 objects:v63 count:16];
      v35 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1001528C4(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = objc_alloc_init(NSMutableDictionary);
        [v9 setObject:+[NSNumber numberWithBool:](NSNumber forKey:{"numberWithBool:", objc_msgSend(v8, "hasRestoreData")), @"download_state.has_restore_data"}];
        [v9 setObject:+[NSNumber numberWithLongLong:](NSNumber forKey:{"numberWithLongLong:", objc_msgSend(v8, "restoreDataSize")), @"download_state.restore_data_size"}];
        v10 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v8 downloadIdentifier], v3);
        [(DownloadEntity *)v10 setValuesWithDictionary:v9];
      }

      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_100152F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
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

intptr_t sub_100152F8C(void *a1, void *a2, void *a3)
{
  *(*(a1[5] + 8) + 24) = [a2 authenticatedAccount] != 0;
  *(*(a1[6] + 8) + 40) = [a2 error];
  if (!*(*(a1[6] + 8) + 40))
  {
    *(*(a1[6] + 8) + 40) = a3;
  }

  v6 = a1[4];

  return dispatch_semaphore_signal(v6);
}

uint64_t sub_100153BF4(uint64_t a1, void *a2, void *a3)
{
  if ([a2 isEqual:?])
  {
    return 0;
  }

  if (!*(a1 + 32))
  {
    goto LABEL_9;
  }

  if ([a2 isEqual:?])
  {
    return -1;
  }

  if (*(a1 + 32) && ([a3 isEqual:?] & 1) != 0)
  {
    return 1;
  }

LABEL_9:
  v7 = [objc_msgSend(*(a1 + 40) objectForKey:{a2), "count"}];
  v8 = [objc_msgSend(*(a1 + 40) objectForKey:{a3), "count"}];
  if (v7 == v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = -1;
  }

  if (v7 < v8)
  {
    return 1;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_100153E5C(uint64_t a1)
{
  v1 = objc_alloc_init(objc_opt_class());
  v2 = qword_100383F40;
  qword_100383F40 = v1;

  return _objc_release_x1(v1, v2);
}

void sub_100154274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001542B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_1001542C8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _createAttestationDataForAccountIdentifier:v3 purpose:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = ISWeakLinkedStringConstantForString();
    v10 = [*(*(*(a1 + 64) + 8) + 40) domain];
    if ([v10 isEqualToString:v9])
    {
      v11 = [*(*(*(a1 + 64) + 8) + 40) code];

      if (v11 != -3)
      {
LABEL_32:

        return dispatch_semaphore_signal(*(a1 + 48));
      }

      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = *(a1 + 72);
      v39 = 0;
      v15 = [v12 _generateKeychainTokensForAccountIdentifier:v13 purpose:v14 error:&v39];
      v16 = v39;
      v17 = v39;
      v10 = v17;
      if (v15)
      {
        v18 = *(a1 + 32);
        v19 = *(a1 + 40);
        v20 = *(a1 + 72);
        v38 = v10;
        v21 = [v18 _createAttestationDataForAccountIdentifier:v19 purpose:v20 error:&v38];
        v22 = v38;

        v23 = *(*(a1 + 56) + 8);
        v24 = *(v23 + 40);
        *(v23 + 40) = v21;
        v10 = v22;
LABEL_30:

        goto LABEL_31;
      }

      if (v17)
      {
        objc_storeStrong((*(*(a1 + 64) + 8) + 40), v16);
        v24 = +[SSLogConfig sharedDaemonConfig];
        if (!v24)
        {
          v24 = +[SSLogConfig sharedConfig];
        }

        v25 = [v24 shouldLog];
        if ([v24 shouldLogToDisk])
        {
          LODWORD(v26) = v25 | 2;
        }

        else
        {
          LODWORD(v26) = v25;
        }

        v27 = [v24 OSLogObject];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v26 = v26;
        }

        else
        {
          v26 &= 2u;
        }

        if (v26)
        {
          v28 = objc_opt_class();
          v29 = *(*(*(a1 + 64) + 8) + 40);
          v41 = 138543618;
          v42 = v28;
          v43 = 2114;
          v44 = v29;
          v30 = v28;
          v31 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v27, 0, "%{public}@: Create attestation data failed with error: %{public}@", &v41, 22);

          if (!v31)
          {
            goto LABEL_30;
          }

          v27 = [NSString stringWithCString:v31 encoding:4];
          free(v31);
          SSFileLog();
        }

        goto LABEL_30;
      }

      v10 = +[SSLogConfig sharedDaemonConfig];
      if (!v10)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v32 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        LODWORD(v33) = v32 | 2;
      }

      else
      {
        LODWORD(v33) = v32;
      }

      v24 = [v10 OSLogObject];
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v33;
      }

      else
      {
        v33 &= 2u;
      }

      if (!v33)
      {
        goto LABEL_30;
      }

      v34 = objc_opt_class();
      v41 = 138543362;
      v42 = v34;
      v35 = v34;
      v36 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, v24, 0, "%{public}@: Create attestation data failed", &v41, 12);

      if (v36)
      {
        v24 = [NSString stringWithCString:v36 encoding:4];
        free(v36);
        SSFileLog();
        goto LABEL_30;
      }
    }

LABEL_31:

    goto LABEL_32;
  }

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100154A40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100154A80(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 72);
  v5 = *(*(a1 + 64) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _createX509CertChainDataForAccountIdentifier:v3 purpose:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 48));
}

intptr_t sub_100154C9C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 64) + 8);
  obj = *(v4 + 40);
  v5 = [v2 _deleteKeychainTokensForAccountIdentifier:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v5;
  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_1001550C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100155100(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(a1 + 72);
  v6 = *(*(a1 + 64) + 8);
  obj = *(v6 + 40);
  v7 = [v2 _publicKeyDataForAccountIdentifier:v3 purpose:v5 regenerateKeys:v4 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  return dispatch_semaphore_signal(*(a1 + 48));
}

void sub_100155524(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_100155560(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _signData:v3 context:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  return dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100156BBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v32 - 192), 8);
  _Unwind_Resume(a1);
}

void sub_100156C08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v7 = v6;
  if (a2 && !v6)
  {
    v8 = *(a1 + 96);
    result = 0;
    v137 = v8;
    [ISBiometricStore keychainLabelForKeyWithAccountID:*(a1 + 32) purpose:?];
    v157[0] = kSecClass;
    v157[1] = kSecAttrKeyClass;
    v158[0] = kSecClassKey;
    v158[1] = kSecAttrKeyClassPrivate;
    v157[2] = kSecAttrLabel;
    v138 = v157[3] = kSecReturnRef;
    v158[2] = v138;
    v158[3] = &__kCFBooleanTrue;
    v157[4] = kSecUseAuthenticationContext;
    v158[4] = *(a1 + 40);
    v9 = [NSDictionary dictionaryWithObjects:v158 forKeys:v157 count:5];
    v10 = v9;
    v139 = v9;
    if (!v9)
    {
      goto LABEL_47;
    }

    v11 = SecItemCopyMatching(v9, &result);
    if (v11 == -25300)
    {
      v12 = [(__CFDictionary *)v10 mutableCopy];
      v13 = [*(a1 + 48) _amsKeychainLabelForPurpose:v137];
      [v12 setObject:v13 forKeyedSubscript:kSecAttrLabel];

      v11 = SecItemCopyMatching(v12, &result);
    }

    if (v11)
    {
      v14 = SSError();
      v15 = *(*(a1 + 72) + 8);
      v16 = *(v15 + 40);
      *(v15 + 40) = v14;

      v17 = [NSNumber numberWithInt:v11];
      v18 = SSErrorBySettingUserInfoValue();
      v19 = *(*(a1 + 72) + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;

      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      v22 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v22 |= 2u;
      }

      v23 = [v21 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (!v24)
      {
        v7 = 0;
        goto LABEL_43;
      }

      v25 = objc_opt_class();
      v26 = *(a1 + 32);
      v27 = *(a1 + 96);
      v133 = v25;
      v28 = [NSNumber numberWithInteger:v27];
      v29 = [NSNumber numberWithInt:v11];
      v149 = 138544130;
      v150 = v25;
      v151 = 2112;
      v152 = v26;
      v153 = 2114;
      v154 = v28;
      v155 = 2114;
      v156 = v29;
      v30 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v23, 0, "%{public}@: Private key copy failed while signing for DSID: %@, purpose: %{public}@, status: %{public}@", &v149, 42);

      if (v30)
      {
        v7 = 0;
LABEL_17:
        v10 = v139;
        v23 = [NSString stringWithCString:v30 encoding:4];
        free(v30);
        v128 = v23;
        SSFileLog();
LABEL_43:

LABEL_46:
LABEL_47:
        v42 = result;
        if (result)
        {
          goto LABEL_48;
        }

        v76 = +[SSLogConfig sharedDaemonConfig];
        if (!v76)
        {
          v76 = +[SSLogConfig sharedConfig];
        }

        v77 = [v76 shouldLog];
        if ([v76 shouldLogToDisk])
        {
          v77 |= 2u;
        }

        v78 = [v76 OSLogObject];
        if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
        {
          v79 = v77;
        }

        else
        {
          v79 = v77 & 2;
        }

        if (v79)
        {
          v80 = objc_opt_class();
          v81 = *(a1 + 32);
          v82 = *(a1 + 96);
          v83 = v80;
          v84 = [NSNumber numberWithInteger:v82];
          v149 = 138543874;
          v150 = v80;
          v151 = 2112;
          v152 = v81;
          v10 = v139;
          v153 = 2114;
          v154 = v84;
          LODWORD(v131) = 32;
          v85 = _os_log_send_and_compose_impl(v79, 0, 0, 0, &_mh_execute_header, v78, 16, "%{public}@: Failed to sign data for no private key for DSID: %@, purpose: %{public}@", &v149, v131);

          if (!v85)
          {
LABEL_83:

            v86 = *(a1 + 48);
            v87 = *(v86 + 8);
            block[0] = _NSConcreteStackBlock;
            block[1] = 3221225472;
            block[2] = sub_100157F34;
            block[3] = &unk_100328350;
            block[4] = v86;
            v88 = *(a1 + 32);
            v89 = *(a1 + 96);
            v141 = v88;
            v142 = v89;
            v143 = v137;
            dispatch_async(v87, block);
            v90 = SSError();
            v91 = *(*(a1 + 72) + 8);
            v92 = *(v91 + 40);
            *(v91 + 40) = v90;

            v93 = SSErrorBySettingUserInfoValue();
            v94 = *(*(a1 + 72) + 8);
            v95 = *(v94 + 40);
            *(v94 + 40) = v93;

            Signature = 0;
            goto LABEL_120;
          }

          v78 = [NSString stringWithCString:v85 encoding:4];
          free(v85);
          SSFileLog();
        }

        goto LABEL_83;
      }

      v7 = 0;
    }

    else
    {
      v42 = result;
      if (result)
      {
LABEL_48:
        Signature = SecKeyCreateSignature(v42, kSecKeyAlgorithmECDSASignatureMessageX962SHA256, *(a1 + 56), (*(*(a1 + 80) + 8) + 24));
        v55 = *(*(*(a1 + 80) + 8) + 24);
        if (!Signature || v55)
        {
          objc_storeStrong((*(*(a1 + 72) + 8) + 40), v55);
          v56 = +[SSLogConfig sharedDaemonConfig];
          if (!v56)
          {
            v56 = +[SSLogConfig sharedConfig];
          }

          v68 = [v56 shouldLog];
          if ([v56 shouldLogToDisk])
          {
            v69 = v68 | 2;
          }

          else
          {
            v69 = v68;
          }

          v59 = [v56 OSLogObject];
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
          {
            v70 = v69;
          }

          else
          {
            v70 = v69 & 2;
          }

          if (!v70)
          {
            v10 = v139;
            goto LABEL_86;
          }

          v135 = Signature;
          v61 = v7;
          v71 = objc_opt_class();
          v72 = *(a1 + 32);
          v73 = *(a1 + 96);
          v65 = v71;
          v74 = [NSNumber numberWithInteger:v73];
          v75 = *(*(*(a1 + 80) + 8) + 24);
          v149 = 138544130;
          v150 = v71;
          v151 = 2112;
          v152 = v72;
          v153 = 2114;
          v154 = v74;
          v155 = 2114;
          v156 = v75;
          LODWORD(v131) = 42;
          v67 = _os_log_send_and_compose_impl(v70, 0, 0, 0, &_mh_execute_header, v59, 0, "%{public}@: Sign data failed for DSID: %@, purpose: %{public}@, error: %{public}@", &v149, v131);
        }

        else
        {
          objc_storeStrong((*(*(a1 + 88) + 8) + 40), Signature);
          v56 = +[SSLogConfig sharedDaemonConfig];
          if (!v56)
          {
            v56 = +[SSLogConfig sharedConfig];
          }

          v57 = [v56 shouldLog];
          if ([v56 shouldLogToDisk])
          {
            v58 = v57 | 2;
          }

          else
          {
            v58 = v57;
          }

          v59 = [v56 OSLogObject];
          if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
          {
            v60 = v58;
          }

          else
          {
            v60 = v58 & 2;
          }

          if (!v60)
          {
            goto LABEL_86;
          }

          v135 = Signature;
          v61 = v7;
          v62 = objc_opt_class();
          v63 = *(a1 + 32);
          v64 = *(a1 + 96);
          v65 = v62;
          v66 = [NSNumber numberWithInteger:v64];
          v149 = 138543874;
          v150 = v62;
          v151 = 2112;
          v152 = v63;
          v153 = 2114;
          v154 = v66;
          LODWORD(v131) = 32;
          v67 = _os_log_send_and_compose_impl(v60, 0, 0, 0, &_mh_execute_header, v59, 2, "%{public}@: Signed data for DSID: %@, purpose: %{public}@", &v149, v131);
        }

        v7 = v61;
        if (!v67)
        {
          v10 = v139;
          Signature = v135;
          goto LABEL_87;
        }

        v59 = [NSString stringWithCString:v67 encoding:4];
        free(v67);
        v129 = v59;
        SSFileLog();
        v10 = v139;
        Signature = v135;
LABEL_86:

LABEL_87:
        if (*(*(*(a1 + 72) + 8) + 40))
        {
          v96 = +[SSLogConfig sharedDaemonConfig];
          if (!v96)
          {
            v96 = +[SSLogConfig sharedConfig];
          }

          LODWORD(v97) = [v96 shouldLog];
          if ([v96 shouldLogToDisk])
          {
            LODWORD(v97) = v97 | 2;
          }

          v98 = [v96 OSLogObject];
          if (os_log_type_enabled(v98, OS_LOG_TYPE_ERROR))
          {
            v97 = v97;
          }

          else
          {
            v97 &= 2u;
          }

          if (v97)
          {
            v99 = objc_opt_class();
            v100 = *(*(*(a1 + 72) + 8) + 40);
            v149 = 138543618;
            v150 = v99;
            v151 = 2114;
            v152 = v100;
            v101 = v99;
            LODWORD(v131) = 22;
            v102 = _os_log_send_and_compose_impl(v97, 0, 0, 0, &_mh_execute_header, v98, 16, "%{public}@: Signature failed with error: %{public}@", &v149, v131);

            if (!v102)
            {
              goto LABEL_99;
            }

            v98 = [NSString stringWithCString:v102 encoding:4];
            free(v102);
            v130 = v98;
            SSFileLog();
          }

LABEL_99:
          v103 = ISWeakLinkedStringConstantForString();
          v104 = ISWeakLinkedStringConstantForString();
          v105 = [*(*(*(a1 + 72) + 8) + 40) domain];
          v134 = v103;
          if ([v105 isEqualToString:v103])
          {
            v106 = [*(*(*(a1 + 72) + 8) + 40) code] != -2;
          }

          else
          {
            v106 = 0;
          }

          v107 = [*(*(*(a1 + 72) + 8) + 40) domain];
          if ([v107 isEqualToString:v104])
          {
            v108 = [*(*(*(a1 + 72) + 8) + 40) code] == -3;
          }

          else
          {
            v108 = 0;
          }

          if (!v106 && !v108)
          {
            goto LABEL_119;
          }

          v136 = v7;
          v109 = +[SSLogConfig sharedDaemonConfig];
          if (!v109)
          {
            v109 = +[SSLogConfig sharedConfig];
          }

          v110 = [v109 shouldLog];
          if ([v109 shouldLogToDisk])
          {
            v111 = v110 | 2;
          }

          else
          {
            v111 = v110;
          }

          v112 = [v109 OSLogObject];
          if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
          {
            v113 = v111;
          }

          else
          {
            v113 = v111 & 2;
          }

          if (v113)
          {
            v114 = objc_opt_class();
            v115 = *(a1 + 32);
            v116 = *(a1 + 96);
            v132 = v114;
            v117 = [NSNumber numberWithInteger:v116];
            v118 = *(*(*(a1 + 72) + 8) + 40);
            v149 = 138544130;
            v150 = v114;
            v151 = 2112;
            v152 = v115;
            v153 = 2114;
            v154 = v117;
            v155 = 2114;
            v156 = v118;
            LODWORD(v131) = 42;
            v119 = _os_log_send_and_compose_impl(v113, 0, 0, 0, &_mh_execute_header, v112, 0, "%{public}@: Attempting key regeneration for fatal signing error for DSID: %@, purpose: %{public}@, error: %{public}@", &v149, v131);

            if (!v119)
            {
LABEL_118:

              v120 = *(a1 + 48);
              v121 = *(v120 + 8);
              v144[0] = _NSConcreteStackBlock;
              v144[1] = 3221225472;
              v144[2] = sub_100157D2C;
              v144[3] = &unk_100328350;
              v144[4] = v120;
              v145 = *(a1 + 32);
              v146 = v137;
              v147 = *(a1 + 96);
              dispatch_async(v121, v144);
              v122 = SSError();
              v123 = *(*(a1 + 72) + 8);
              v124 = *(v123 + 40);
              *(v123 + 40) = v122;

              v125 = SSErrorBySettingUserInfoValue();
              v126 = *(*(a1 + 72) + 8);
              v127 = *(v126 + 40);
              *(v126 + 40) = v125;

              v7 = v136;
              v10 = v139;
LABEL_119:

              goto LABEL_120;
            }

            v112 = [NSString stringWithCString:v119 encoding:4];
            free(v119);
            SSFileLog();
          }

          goto LABEL_118;
        }

LABEL_120:
        if (result)
        {
          CFRelease(result);
        }

        if (Signature)
        {
          CFRelease(Signature);
        }

        goto LABEL_125;
      }

      v43 = SSError();
      v44 = *(*(a1 + 72) + 8);
      v45 = *(v44 + 40);
      *(v44 + 40) = v43;

      v21 = +[SSLogConfig sharedDaemonConfig];
      if (!v21)
      {
        v21 = +[SSLogConfig sharedConfig];
      }

      v46 = [v21 shouldLog];
      if ([v21 shouldLogToDisk])
      {
        v47 = v46 | 2;
      }

      else
      {
        v47 = v46;
      }

      v23 = [v21 OSLogObject];
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
      }

      else
      {
        v48 = v47 & 2;
      }

      if (!v48)
      {
        goto LABEL_43;
      }

      v49 = objc_opt_class();
      v50 = *(a1 + 32);
      v51 = *(a1 + 96);
      v52 = v49;
      v53 = [NSNumber numberWithInteger:v51];
      v149 = 138543874;
      v150 = v49;
      v151 = 2112;
      v152 = v50;
      v153 = 2114;
      v154 = v53;
      v30 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &_mh_execute_header, v23, 0, "%{public}@: Private key copy failed while signing for DSID: %@, purpose: %{public}@", &v149, 32);

      if (v30)
      {
        goto LABEL_17;
      }
    }

    v10 = v139;
    goto LABEL_46;
  }

  objc_storeStrong((*(*(a1 + 72) + 8) + 40), a3);
  v31 = +[SSLogConfig sharedDaemonConfig];
  if (!v31)
  {
    v31 = +[SSLogConfig sharedConfig];
  }

  v32 = [v31 shouldLog];
  if ([v31 shouldLogToDisk])
  {
    v32 |= 2u;
  }

  v33 = [v31 OSLogObject];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    v34 = v32;
  }

  else
  {
    v34 = v32 & 2;
  }

  if (v34)
  {
    v35 = objc_opt_class();
    v36 = *(a1 + 32);
    v37 = *(a1 + 96);
    v38 = v35;
    v39 = [NSNumber numberWithInteger:v37];
    v149 = 138544130;
    v150 = v35;
    v151 = 2112;
    v152 = v36;
    v153 = 2114;
    v154 = v39;
    v155 = 2114;
    v156 = v7;
    v40 = _os_log_send_and_compose_impl(v34, 0, 0, 0, &_mh_execute_header, v33, 0, "%{public}@: Policy evaluation failed for DSID: %@, purpose: %{public}@, error: %{public}@", &v149, 42);

    if (v40)
    {
      v41 = [NSString stringWithCString:v40 encoding:4];
      free(v40);
      SSFileLog();
    }
  }

  else
  {
  }

LABEL_125:
  dispatch_semaphore_signal(*(a1 + 64));
}

void sub_100157D2C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v17 = 0;
  v5 = [v2 _generateKeychainTokensForAccountIdentifier:v3 purpose:v4 error:&v17];
  v6 = v17;
  if ((v5 & 1) == 0)
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = a1[5];
      v13 = a1[7];
      v14 = v11;
      v15 = [NSNumber numberWithInteger:v13];
      v18 = 138544130;
      v19 = v11;
      v20 = 2112;
      v21 = v12;
      v22 = 2114;
      v23 = v15;
      v24 = 2114;
      v25 = v6;
      v16 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 0, "%{public}@: Key regeneration failed for fatal signing error for DSID: %@, purpose: %{public}@, error: %{public}@", &v18, 42);

      if (!v16)
      {
LABEL_14:

        goto LABEL_15;
      }

      v10 = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    goto LABEL_14;
  }

LABEL_15:
}

void sub_100157F34(void *a1)
{
  v2 = +[SSLogConfig sharedDaemonConfig];
  if (!v2)
  {
    v2 = +[SSLogConfig sharedConfig];
  }

  v3 = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = v3 | 2;
  }

  else
  {
    LODWORD(v4) = v3;
  }

  v5 = [v2 OSLogObject];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (v4)
  {
    v6 = objc_opt_class();
    v8 = a1[5];
    v7 = a1[6];
    v9 = v6;
    v10 = [NSNumber numberWithInteger:v7];
    v50 = 138543874;
    v51 = v6;
    v52 = 2112;
    v53 = v8;
    v54 = 2114;
    v55 = v10;
    v11 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 16, "%{public}@: Re-generating tokens and keys for no private key for DSID: %@, purpose: %{public}@", &v50, 32);

    if (!v11)
    {
      goto LABEL_13;
    }

    v5 = [NSString stringWithCString:v11 encoding:4];
    free(v11);
    SSFileLog();
  }

LABEL_13:
  v12 = [NSString stringWithFormat:@"mt-tid-%@", a1[5]];
  v58 = NSHTTPCookieName;
  v59 = v12;
  v13 = [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
  v14 = +[ACAccountStore ams_sharedAccountStore];
  v49 = 0;
  [v14 ams_removeCookiesMatchingProperties:v13 error:&v49];
  v15 = v49;

  if (!v15)
  {
    goto LABEL_27;
  }

  v16 = +[SSLogConfig sharedDaemonConfig];
  if (!v16)
  {
    v16 = +[SSLogConfig sharedConfig];
  }

  v17 = [v16 shouldLog];
  if ([v16 shouldLogToDisk])
  {
    v18 = v17 | 2;
  }

  else
  {
    v18 = v17;
  }

  v19 = [v16 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (!v20)
  {
    goto LABEL_25;
  }

  v21 = objc_opt_class();
  v46 = v13;
  v22 = v12;
  v23 = a1[5];
  v24 = a1[6];
  v45 = v21;
  v25 = v24;
  v12 = v22;
  v26 = [NSNumber numberWithInteger:v25];
  v50 = 138544130;
  v51 = v21;
  v52 = 2112;
  v53 = v23;
  v13 = v46;
  v54 = 2114;
  v55 = v26;
  v56 = 2114;
  v57 = v15;
  LODWORD(v44) = 42;
  v27 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 16, "%{public}@: Failed to remove biometric token for no private key for DSID: %@, purpose:%{public}@, error: %{public}@", &v50, v44);

  if (v27)
  {
    v19 = [NSString stringWithCString:v27 encoding:4];
    free(v27);
    v43 = v19;
    SSFileLog();
LABEL_25:
  }

LABEL_27:
  v28 = a1[4];
  v29 = a1[5];
  v30 = a1[7];
  v48 = v15;
  v31 = [v28 _generateKeychainTokensForAccountIdentifier:v29 purpose:v30 error:{&v48, v43}];
  v32 = v48;

  if ((v31 & 1) == 0)
  {
    v33 = +[SSLogConfig sharedDaemonConfig];
    if (!v33)
    {
      v33 = +[SSLogConfig sharedConfig];
    }

    v34 = [v33 shouldLog];
    if ([v33 shouldLogToDisk])
    {
      v34 |= 2u;
    }

    v35 = [v33 OSLogObject];
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = v34;
    }

    else
    {
      v36 = v34 & 2;
    }

    if (v36)
    {
      v37 = objc_opt_class();
      v38 = v13;
      v40 = a1[5];
      v39 = a1[6];
      v47 = v37;
      v41 = [NSNumber numberWithInteger:v39];
      v50 = 138544130;
      v51 = v37;
      v52 = 2112;
      v53 = v40;
      v13 = v38;
      v54 = 2114;
      v55 = v41;
      v56 = 2114;
      v57 = v32;
      LODWORD(v44) = 42;
      v42 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, v35, 16, "%{public}@: Key regeneration failed for no private key for DSID: %@, purpose: %{public}@, error: %{public}@", &v50, v44);

      if (!v42)
      {
LABEL_39:

        goto LABEL_40;
      }

      v35 = [NSString stringWithCString:v42 encoding:4];
      free(v42);
      SSFileLog();
    }

    goto LABEL_39;
  }

LABEL_40:
}

void sub_10015864C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    v9 = [*(a1 + 40) sharedInstance];
    v13 = 0;
    v10 = [v9 createAttestationDataForAccountIdentifier_:v6 purpose:v8 error:&v13];
    v11 = v13;
  }

  else
  {
    v12 = a3;
    v11 = SSError();
    v10 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_10015883C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    v9 = [*(a1 + 40) sharedInstance];
    v13 = 0;
    v10 = [v9 createX509CertChainDataForAccountIdentifier_:v6 purpose:v8 error:&v13];
    v11 = v13;
  }

  else
  {
    v12 = a3;
    v11 = SSError();
    v10 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100158A2C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    v7 = [*(a1 + 40) sharedInstance];
    v10 = 0;
    [v7 deleteKeychainTokensForAccountIdentifier_:v6 error:&v10];
    v8 = v10;
  }

  else
  {
    v9 = a3;
    v8 = SSError();
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100158BF8(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    v9 = [*(a1 + 40) sharedInstance];
    v13 = 0;
    v10 = [v9 publicKeyDataForAccountIdentifier_:v6 purpose:v8 error:&v13];
    v11 = v13;
  }

  else
  {
    v12 = a3;
    v11 = SSError();
    v10 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100158E08(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v8 = SSXPCDictionaryCopyObjectWithClass();
    pid = xpc_connection_get_pid(*(a1 + 40));
    v10 = +[SSLogConfig sharedDaemonConfig];
    v11 = v10;
    if (v6)
    {
      if (!v10)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      v12 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        LODWORD(v13) = v12 | 2;
      }

      else
      {
        LODWORD(v13) = v12;
      }

      v14 = [v11 OSLogObject];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (v13)
      {
        v15 = [NSNumber numberWithInt:pid];
        v29 = 138412546;
        v30 = v8;
        v31 = 2114;
        v32 = v15;
        v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v14, 0, "DaemonBiometricKeychain: Preparing legacy data signing operation over XPC for DSID: %@, PID: %{public}@", &v29, 22);

        if (!v16)
        {
LABEL_15:

          v17 = objc_alloc_init(SSBiometricAuthenticationContext);
          [v17 setAccountIdentifier:v8];
          v18 = objc_alloc_init(SSConsolidatedDialog);
          [v18 setReason:v7];
          [v17 setConsolidatedDialog:v18];
          v19 = [*(a1 + 48) sharedInstance];
          v28 = 0;
          v20 = [v19 signData_:v6 context:v17 error:&v28];
          v21 = v28;

LABEL_30:
          goto LABEL_31;
        }

        v14 = [NSString stringWithCString:v16 encoding:4];
        free(v16);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v23 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      LODWORD(v24) = v23 | 2;
    }

    else
    {
      LODWORD(v24) = v23;
    }

    v25 = [v11 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = [NSNumber numberWithInt:pid];
      v29 = 138412546;
      v30 = v8;
      v31 = 2114;
      v32 = v26;
      v27 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v25, 16, "DaemonBiometricKeychain: Legacy data signing operation failed with no payload in XPC message for DSID: %@, PID: %{public}@", &v29, 22);

      if (!v27)
      {
LABEL_29:

        v21 = SSError();
        v20 = 0;
        goto LABEL_30;
      }

      v25 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v22 = a3;
  v21 = SSError();
  v20 = 0;
LABEL_31:
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100159340(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    v7 = [SSBiometricAuthenticationContext alloc];
    v8 = xpc_dictionary_get_value(*(a1 + 32), "2");
    v9 = [v7 initWithXPCEncoding:v8];

    pid = xpc_connection_get_pid(*(a1 + 40));
    v11 = +[SSLogConfig sharedDaemonConfig];
    v12 = v11;
    if (v6)
    {
      if (!v11)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      v13 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        LODWORD(v14) = v13 | 2;
      }

      else
      {
        LODWORD(v14) = v13;
      }

      v15 = [v12 OSLogObject];
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 &= 2u;
      }

      if (v14)
      {
        v16 = [v9 accountIdentifier];
        v17 = [NSNumber numberWithInt:pid];
        v30 = 138412546;
        v31 = v16;
        v32 = 2114;
        v33 = v17;
        v18 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v15, 0, "DaemonBiometricKeychain: Preparing context-based data signing operation over XPC for DSID: %@, PID: %{public}@", &v30, 22);

        if (!v18)
        {
LABEL_15:

          v19 = [*(a1 + 48) sharedInstance];
          v29 = 0;
          v20 = [v19 signData_:v6 context:v9 error:&v29];
          v21 = v29;

LABEL_30:
          goto LABEL_31;
        }

        v15 = [NSString stringWithCString:v18 encoding:4];
        free(v18);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if (!v11)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    v23 = [v12 shouldLog];
    if ([v12 shouldLogToDisk])
    {
      LODWORD(v24) = v23 | 2;
    }

    else
    {
      LODWORD(v24) = v23;
    }

    v25 = [v12 OSLogObject];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v24 = v24;
    }

    else
    {
      v24 &= 2u;
    }

    if (v24)
    {
      v26 = [v9 accountIdentifier];
      v27 = [NSNumber numberWithInt:pid];
      v30 = 138412546;
      v31 = v26;
      v32 = 2114;
      v33 = v27;
      v28 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v25, 16, "DaemonBiometricKeychain: Context-based data signing operation failed with no payload in XPC message for DSID: %@, PID: %{public}@", &v30, 22);

      if (!v28)
      {
LABEL_29:

        v21 = SSError();
        v20 = 0;
        goto LABEL_30;
      }

      v25 = [NSString stringWithCString:v28 encoding:4];
      free(v28);
      SSFileLog();
    }

    goto LABEL_29;
  }

  v22 = a3;
  v21 = SSError();
  v20 = 0;
LABEL_31:
  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_10015982C(uint64_t a1, char a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    objc_opt_class();
    v6 = SSXPCDictionaryCopyObjectWithClass();
    objc_opt_class();
    v7 = SSXPCDictionaryCopyObjectWithClass();
    v8 = [v7 integerValue];

    objc_opt_class();
    v9 = SSXPCDictionaryCopyObjectWithClass();
    v10 = [v9 BOOLValue];

    v11 = [*(a1 + 40) sharedInstance];
    v15 = 0;
    v12 = [v11 x509CertChainDataForAccountIdentifier_:v6 purpose:v8 regenerateCerts:v10 error:&v15];
    v13 = v15;
  }

  else
  {
    v14 = a3;
    v13 = SSError();
    v12 = 0;
  }

  SSXPCDictionarySetObject();
  SSXPCDictionarySetObject();
}

void sub_100159B58(uint64_t a1)
{
  if ((SSXPCConnectionHasEntitlement() & 1) == 0 && (SSXPCConnectionHasEntitlement() & 1) == 0)
  {
    v2 = +[SSLogConfig sharedDaemonConfig];
    if (!v2)
    {
      v2 = +[SSLogConfig sharedConfig];
    }

    v3 = [v2 shouldLog];
    if ([v2 shouldLogToDisk])
    {
      LODWORD(v4) = v3 | 2;
    }

    else
    {
      LODWORD(v4) = v3;
    }

    v5 = [v2 OSLogObject];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v4 = v4;
    }

    else
    {
      v4 &= 2u;
    }

    if (v4)
    {
      v9 = 138543362;
      v10 = objc_opt_class();
      v6 = v10;
      v7 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, v5, 0, "%{public}@: Rejecting message from unentitled client", &v9, 12);

      if (!v7)
      {
LABEL_16:

        goto LABEL_17;
      }

      v5 = [NSString stringWithCString:v7 encoding:4];
      free(v7);
      SSFileLog();
    }

    goto LABEL_16;
  }

LABEL_17:
  reply = xpc_dictionary_create_reply(*(a1 + 40));
  (*(*(a1 + 48) + 16))(*(a1 + 48));
  xpc_connection_send_message(*(a1 + 32), reply);
}

void sub_10015E3F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, id location, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, ...)
{
  va_start(va, a48);
  objc_destroyWeak(&a36);
  objc_destroyWeak(&location);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v48 - 256), 8);
  _Block_object_dispose((v48 - 208), 8);
  _Unwind_Resume(a1);
}

void sub_10015E5F4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v10 = +[SSLogConfig sharedDaemonConfig];
  v11 = v10;
  if (v8)
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v12 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v13 = v12 | 2;
    }

    else
    {
      v13 = v12;
    }

    v14 = [v11 OSLogObject];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = v13;
    }

    else
    {
      v15 = v13 & 2;
    }

    if (v15)
    {
      v16 = objc_opt_class();
      v17 = *(a1 + 88);
      v34 = v7;
      v18 = v16;
      v19 = [NSNumber numberWithInteger:v17];
      v39 = 138543874;
      v40 = v16;
      v41 = 2114;
      v42 = v8;
      v43 = 2114;
      v44 = v19;
      v20 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 16, "%{public}@: Create X509 cert data completed with error: %{public}@, purpose: %{public}@", &v39, 32);

      v7 = v34;
      if (v20)
      {
        v21 = [NSString stringWithCString:v20 encoding:4];
        free(v20);
        SSFileLog();
      }
    }

    else
    {
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a4);
  }

  else
  {
    if (!v10)
    {
      v11 = +[SSLogConfig sharedConfig];
    }

    v22 = [v11 shouldLog];
    if ([v11 shouldLogToDisk])
    {
      v22 |= 2u;
    }

    v23 = [v11 OSLogObject];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v22;
    }

    else
    {
      v24 = v22 & 2;
    }

    if (v24)
    {
      v25 = objc_opt_class();
      v26 = v7;
      v35 = v25;
      v27 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v7 count]);
      v28 = [NSNumber numberWithInteger:*(a1 + 88)];
      v39 = 138543874;
      v40 = v25;
      v41 = 2114;
      v42 = v27;
      v43 = 2114;
      v44 = v28;
      v29 = _os_log_send_and_compose_impl(v24, 0, 0, 0, &_mh_execute_header, v23, 0, "%{public}@: Create X509 cert data completed with success with %{public}@ cert(s), purpose: %{public}@", &v39, 32);

      v8 = 0;
      v7 = v26;

      if (v29)
      {
        v30 = [NSString stringWithCString:v29 encoding:4];
        free(v29);
        SSFileLog();
      }
    }

    else
    {
    }

    *(*(*(a1 + 48) + 8) + 24) = a2;
    v31 = objc_alloc_init(NSMutableArray);
    v32 = *(*(a1 + 56) + 8);
    v33 = *(v32 + 40);
    *(v32 + 40) = v31;

    v36[0] = _NSConcreteStackBlock;
    v36[1] = 3221225472;
    v36[2] = sub_10015EA3C;
    v36[3] = &unk_10032A048;
    v37 = *(a1 + 56);
    v38 = *(a1 + 72);
    [v7 enumerateObjectsUsingBlock:v36];
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_10015EA3C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = SecCertificateCopyData(v7);
  [*(*(*(a1 + 32) + 8) + 40) addObject:v5];
  if (a3)
  {
    if (a3 != 1)
    {
      goto LABEL_6;
    }

    v6 = 48;
  }

  else
  {
    v6 = 40;
  }

  *(*(*(a1 + v6) + 8) + 24) = v7;
LABEL_6:
}

void sub_100161A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v40 - 208), 8);
  _Block_object_dispose((v40 - 160), 8);
  _Unwind_Resume(a1);
}

void sub_100161A7C(void *a1, void *a2, void *a3, char a4, void *a5, void *a6, void *a7)
{
  v12 = a2;
  v60 = a3;
  v13 = a3;
  obj = a5;
  v14 = a5;
  v63 = a6;
  v15 = a6;
  v16 = a7;
  v17 = +[SSLogConfig sharedDaemonConfig];
  if (!v17)
  {
    v17 = +[SSLogConfig sharedConfig];
  }

  v18 = [v17 shouldLog];
  if ([v17 shouldLogToDisk])
  {
    v18 |= 2u;
  }

  v19 = [v17 OSLogObject];
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = v18;
  }

  else
  {
    v20 = v18 & 2;
  }

  if (v20)
  {
    v21 = a1[4];
    v65 = 138543362;
    v66 = v21;
    v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v19, 0, "%{public}@: [BIO] DisplayPaymentSheetOperation did complete", &v65, 12);

    if (!v22)
    {
      goto LABEL_12;
    }

    v19 = [NSString stringWithCString:v22 encoding:4];
    free(v22);
    v58 = v19;
    SSFileLog();
  }

LABEL_12:
  v23 = v16;
  if (v16)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a7);
    v24 = +[SSLogConfig sharedDaemonConfig];
    v25 = v15;
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v26 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v26 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v28 = v26;
    }

    else
    {
      v28 = v26 & 2;
    }

    if (!v28)
    {
      goto LABEL_45;
    }

    v29 = a1[4];
    v65 = 138543618;
    v66 = v29;
    v67 = 2114;
    v68 = v23;
    LODWORD(v59) = 22;
    v30 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, v27, 16, "%{public}@: [BIO] Payment sheet authorization failed with error: %{public}@", &v65, v59);
LABEL_43:
    v40 = v30;

    if (!v40)
    {
LABEL_46:

      goto LABEL_47;
    }

    v27 = [NSString stringWithCString:v40 encoding:4];
    free(v40);
    v58 = v27;
    SSFileLog();
LABEL_45:

    goto LABEL_46;
  }

  v25 = v15;
  if ((a4 & 1) == 0)
  {
    v34 = ISError();
    v35 = *(a1[5] + 8);
    v36 = *(v35 + 40);
    *(v35 + 40) = v34;

    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v37 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v37 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
    }

    else
    {
      v38 = v37 & 2;
    }

    if (!v38)
    {
      goto LABEL_45;
    }

    v39 = a1[4];
    v65 = 138543362;
    v66 = v39;
    LODWORD(v59) = 12;
    v30 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, v27, 0, "%{public}@: [BIO] Payment sheet did cancel", &v65, v59);
    goto LABEL_43;
  }

  if (v12)
  {
    objc_storeStrong((*(a1[6] + 8) + 40), a2);
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v31 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v31 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v32 = v31;
    }

    else
    {
      v32 = v31 & 2;
    }

    if (!v32)
    {
      goto LABEL_45;
    }

    v33 = a1[4];
    v65 = 138543362;
    v66 = v33;
    LODWORD(v59) = 12;
    v30 = _os_log_send_and_compose_impl(v32, 0, 0, 0, &_mh_execute_header, v27, 0, "%{public}@: [BIO] Payment sheet did sign challenge", &v65, v59);
    goto LABEL_43;
  }

  if (v13)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), v60);
    v24 = +[SSLogConfig sharedDaemonConfig];
    if (!v24)
    {
      v24 = +[SSLogConfig sharedConfig];
    }

    v55 = [v24 shouldLog];
    if ([v24 shouldLogToDisk])
    {
      v55 |= 2u;
    }

    v27 = [v24 OSLogObject];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v56 = v55;
    }

    else
    {
      v56 = v55 & 2;
    }

    if (!v56)
    {
      goto LABEL_45;
    }

    v57 = a1[4];
    v65 = 138543362;
    v66 = v57;
    LODWORD(v59) = 12;
    v30 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &_mh_execute_header, v27, 0, "%{public}@: [BIO] Payment sheet did fallback to password", &v65, v59);
    goto LABEL_43;
  }

LABEL_47:
  if (!v14)
  {
    goto LABEL_61;
  }

  objc_storeStrong((*(a1[8] + 8) + 40), obj);
  v41 = +[SSLogConfig sharedDaemonConfig];
  if (!v41)
  {
    v41 = +[SSLogConfig sharedConfig];
  }

  v42 = [v41 shouldLog];
  if ([v41 shouldLogToDisk])
  {
    v43 = v42 | 2;
  }

  else
  {
    v43 = v42;
  }

  v44 = [v41 OSLogObject];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    v45 = v43;
  }

  else
  {
    v45 = v43 & 2;
  }

  if (!v45)
  {
    goto LABEL_59;
  }

  v46 = a1[4];
  v65 = 138543362;
  v66 = v46;
  LODWORD(v59) = 12;
  v47 = _os_log_send_and_compose_impl(v45, 0, 0, 0, &_mh_execute_header, v44, 0, "%{public}@: [BIO] Found payment token", &v65, v59);

  if (v47)
  {
    v44 = [NSString stringWithCString:v47 encoding:4];
    free(v47);
    v58 = v44;
    SSFileLog();
LABEL_59:
  }

LABEL_61:
  if (v25)
  {
    objc_storeStrong((*(a1[9] + 8) + 40), v63);
    v48 = +[SSLogConfig sharedDaemonConfig];
    if (!v48)
    {
      v48 = +[SSLogConfig sharedConfig];
    }

    v49 = [v48 shouldLog];
    if ([v48 shouldLogToDisk])
    {
      v50 = v49 | 2;
    }

    else
    {
      v50 = v49;
    }

    v51 = [v48 OSLogObject];
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = v50;
    }

    else
    {
      v52 = v50 & 2;
    }

    if (v52)
    {
      v53 = a1[4];
      v65 = 138543362;
      v66 = v53;
      LODWORD(v59) = 12;
      v54 = _os_log_send_and_compose_impl(v52, 0, 0, 0, &_mh_execute_header, v51, 0, "%{public}@: [BIO] Found FPAN ID", &v65, v59);

      if (!v54)
      {
LABEL_74:

        goto LABEL_75;
      }

      v51 = [NSString stringWithCString:v54 encoding:4];
      free(v54);
      SSFileLog();
    }

    goto LABEL_74;
  }

LABEL_75:
}

void sub_100163098(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

intptr_t sub_1001630D8(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 80);
  v5 = *(*(a1 + 72) + 8);
  obj = *(v5 + 40);
  v6 = [v2 _copyPublicKeyDataForAccountIdentifier:v3 purpose:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 64) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    v10 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = v10 | 2;
    }

    else
    {
      LODWORD(v11) = v10;
    }

    v12 = [v9 OSLogObject];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (!v11)
    {
      goto LABEL_14;
    }

    v13 = objc_opt_class();
    v14 = v13;
    v15 = SSHashIfNeeded();
    v50 = 138543618;
    v51 = v13;
    v52 = 2112;
    v53 = v15;
    v46 = 22;
    v16 = "%{public}@: Regenerate keychain tokens found public key without regeneration for DSID: %@";
    v17 = v11;
    v18 = v12;
    v19 = 2;
LABEL_12:
    v20 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v18, v19, v16, &v50, v46);

    if (!v20)
    {
LABEL_15:

      return dispatch_semaphore_signal(*(a1 + 56));
    }

    v12 = [NSString stringWithCString:v20 encoding:4];
    free(v20);
    SSFileLog();
LABEL_14:

    goto LABEL_15;
  }

  v21 = [*(*(*(a1 + 72) + 8) + 40) domain];
  v22 = [v21 isEqualToString:SSErrorDomain];

  if (v22)
  {
    v23 = [*(*(*(a1 + 72) + 8) + 40) userInfo];
    v24 = [v23 objectForKey:SSErrorKeychainStatusCodeKey];
    v25 = [v24 integerValue];

    if (v25 == -25300)
    {
      if ([*(a1 + 32) _isDeviceUnlocked])
      {
        v26 = *(a1 + 32);
        v27 = *(a1 + 40);
        v28 = *(a1 + 80);
        v29 = *(*(a1 + 72) + 8);
        v48 = *(v29 + 40);
        [v26 _generateKeychainTokensForAccountIdentifier:v27 purpose:v28 error:&v48];
        objc_storeStrong((v29 + 40), v48);
        v30 = *(*(a1 + 72) + 8);
        v32 = *(v30 + 40);
        v31 = (v30 + 40);
        if (v32)
        {
          v9 = +[SSLogConfig sharedDaemonConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v33 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            LODWORD(v34) = v33 | 2;
          }

          else
          {
            LODWORD(v34) = v33;
          }

          v12 = [v9 OSLogObject];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v34;
          }

          else
          {
            v34 &= 2u;
          }

          if (!v34)
          {
            goto LABEL_14;
          }

          v35 = objc_opt_class();
          v14 = v35;
          v15 = SSHashIfNeeded();
          v36 = *(*(*(a1 + 72) + 8) + 40);
          v50 = 138543874;
          v51 = v35;
          v52 = 2112;
          v53 = v15;
          v54 = 2114;
          v55 = v36;
          v46 = 32;
          v16 = "%{public}@: Regenerate keychain tokens error for DSID: %@, error: %{public}@";
        }

        else
        {
          v37 = *(a1 + 32);
          v38 = *(a1 + 40);
          v39 = *(a1 + 80);
          v47 = 0;
          v40 = [v37 _copyPublicKeyDataForAccountIdentifier:v38 purpose:v39 error:&v47];
          objc_storeStrong(v31, v47);
          v41 = *(*(a1 + 64) + 8);
          v42 = *(v41 + 40);
          *(v41 + 40) = v40;

          if (*(*(*(a1 + 64) + 8) + 40))
          {
            return dispatch_semaphore_signal(*(a1 + 56));
          }

          v9 = +[SSLogConfig sharedDaemonConfig];
          if (!v9)
          {
            v9 = +[SSLogConfig sharedConfig];
          }

          v44 = [v9 shouldLog];
          if ([v9 shouldLogToDisk])
          {
            LODWORD(v34) = v44 | 2;
          }

          else
          {
            LODWORD(v34) = v44;
          }

          v12 = [v9 OSLogObject];
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v34 = v34;
          }

          else
          {
            v34 &= 2u;
          }

          if (!v34)
          {
            goto LABEL_14;
          }

          v45 = objc_opt_class();
          v14 = v45;
          v15 = SSHashIfNeeded();
          v50 = 138543618;
          v51 = v45;
          v52 = 2112;
          v53 = v15;
          v46 = 22;
          v16 = "%{public}@: Public key copy for regenerate keychain tokens failed for DSID: %@";
        }

        v17 = v34;
        v18 = v12;
        v19 = 0;
        goto LABEL_12;
      }
    }
  }

  return dispatch_semaphore_signal(*(a1 + 56));
}

int64_t sub_10016921C(id a1, id a2, id a3)
{
  v4 = a3;
  v5 = sub_100169278(a2);
  v6 = sub_100169278(v4);

  v7 = -1;
  if (v5 >= v6)
  {
    v7 = 1;
  }

  if (v5 == v6)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_100169278(void *a1)
{
  v1 = a1;
  if (SSDownloadKindIsSoftwareKind())
  {
    v2 = 1;
  }

  else if (SSDownloadKindIsEBookKind())
  {
    v2 = 2;
  }

  else if (SSDownloadKindIsVideoKind())
  {
    v2 = 5;
  }

  else if (SSDownloadKindIsToneKind())
  {
    v2 = 4;
  }

  else if (SSDownloadKindIsMediaKind())
  {
    v2 = 3;
  }

  else
  {
    v2 = 6;
  }

  return v2;
}

void sub_100169DF0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100169E14(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _attemptFireForJob:v5 withName:v8];
  }
}

void sub_10016C658(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x10016C664);
}

uint64_t sub_10016D360(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = qword_100383F50;
  qword_100383F50 = v1;

  return _objc_release_x1(v1, v2);
}

id sub_10016D88C(uint64_t a1)
{
  [*(a1 + 32) _decrementPendingInstallsForDownloadIdentifier:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);

  return [v2 _fireWaitBlocksIfNecessaryForDownloadWithIdentifier:v3];
}

void sub_10016D9BC(uint64_t a1)
{
  [*(a1 + 32) _performNextOperation];
  [*(*(a1 + 32) + 32) lock];
  v2 = [*(*(a1 + 32) + 48) count];
  [*(*(a1 + 32) + 32) unlock];
  v3 = +[UMUserManager sharedManager];
  v4 = [v3 isMultiUser];

  if (v4)
  {
    v5 = v2 == 0;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v6 = +[UMUserManager sharedManager];
    [v6 resumeSync];

    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = v8 | 2;
    }

    else
    {
      v9 = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = v9;
    }

    else
    {
      v11 = v9 & 2;
    }

    if (v11)
    {
      v13[0] = 0;
      v12 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v10, 1, "[ApplicationWorkspace]: Resuming sync bubble.", v13, 2);

      if (!v12)
      {
LABEL_18:

        return;
      }

      v10 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_18;
  }
}

void sub_10016E0AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10016E108(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"store_item_id" equalToValue:*(a1 + 32)];
  v7 = [NSArray arrayWithObjects:v5, v4, v6, 0];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v7];

  v9 = [v3 database];

  v10 = [DownloadEntity queryWithDatabase:v9 predicate:v8];

  v16 = @"download_state.phase";
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_10016E324;
  v13[3] = &unk_10032A118;
  v14 = *(a1 + 32);
  v12 = *(a1 + 40);
  v11 = v12;
  v15 = v12;
  [v10 enumeratePersistentIDsAndProperties:&v16 count:1 usingBlock:v13];
}

void sub_10016E324(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v8 = *a3;
  v9 = v8;
  if (v8)
  {
    if (([v8 isEqualToString:SSDownloadPhaseDownloading] & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", SSDownloadPhaseInstalling) & 1) == 0 && (objc_msgSend(v9, "isEqualToString:", SSDownloadPhaseProcessing) & 1) == 0 && !objc_msgSend(v9, "isEqualToString:", SSDownloadPhaseWaiting))
    {
      v17 = [NSNumber numberWithLongLong:a2];
      [*(a1 + 40) addObject:v17];

      goto LABEL_19;
    }

    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v15 = *(a1 + 32);
      v18 = 138412546;
      v19 = v15;
      v20 = 2112;
      v21 = v9;
      v16 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v13, 1, "[ApplicationWorkspace]: Persistent state installing item with itemIdentifier: %@ phase: %@", &v18, 22);

      if (!v16)
      {
LABEL_18:

        *(*(*(a1 + 48) + 8) + 24) = 1;
        *a5 = 1;
        goto LABEL_19;
      }

      v13 = [NSString stringWithCString:v16 encoding:4];
      free(v16);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
}

uint64_t sub_10016ED08(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 database];
  v6 = objc_alloc_init(SSSQLiteQueryDescriptor);
  v7 = [SSSQLiteComparisonPredicate predicateWithProperty:@"time_updated" value:*(a1 + 32) comparisonType:3];
  [v6 setEntityClass:objc_opt_class()];
  v22 = @"time_updated";
  v8 = [NSArray arrayWithObjects:&v22 count:1];
  [v6 setOrderingProperties:v8];

  v21 = SSSQLiteOrderAscending;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  [v6 setOrderingDirections:v9];

  [v6 setPredicate:v7];
  v10 = [[SSSQLiteQuery alloc] initWithDatabase:v5 descriptor:v6];
  v20[0] = @"bundle_id";
  v20[1] = @"download_id";
  v20[2] = @"expected_phase";
  v20[3] = @"retry_count";
  v11 = [NSArray arrayWithObjects:v20 count:4];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10016EF6C;
  v16[3] = &unk_10032A168;
  v12 = v3;
  v17 = v12;
  v13 = *(a1 + 32);
  v14 = *(a1 + 40);
  v18 = v13;
  v19 = v14;
  [v10 enumerateMemoryEntitiesWithProperties:v11 usingBlock:v16];

  objc_autoreleasePoolPop(v4);
  return 1;
}

void sub_10016EF6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 valueForProperty:@"bundle_id"];
  if ([v5 length])
  {
    v51 = v4;
    v6 = [v3 valueForProperty:@"download_id"];
    v7 = [v3 valueForProperty:@"transaction_id"];
    v8 = [v3 valueForProperty:@"expected_phase"];
    v50 = [v3 valueForProperty:@"retry_count"];
    v9 = [v50 intValue];
    v52 = v6;
    if (v9 > 1)
    {
      v24 = +[SSLogConfig sharedDaemonConfig];
      if (!v24)
      {
        v24 = +[SSLogConfig sharedConfig];
      }

      v25 = [v24 shouldLog];
      if ([v24 shouldLogToDisk])
      {
        v25 |= 2u;
      }

      v26 = [v24 OSLogObject];
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = v25;
      }

      else
      {
        v27 = v25 & 2;
      }

      if (v27)
      {
        v53 = 138412802;
        v54 = v8;
        v55 = 2112;
        v56 = v5;
        v57 = 2112;
        v58 = v6;
        v28 = _os_log_send_and_compose_impl(v27, 0, 0, 0, &_mh_execute_header, v26, 0, "[ApplicationWorkspace]: Cannot retry incomplete operation again: [%@] [%@] [%@]", &v53, 32);

        if (v28)
        {
          v29 = [NSString stringWithCString:v28 encoding:4];
          free(v28);
          SSFileLog();
        }
      }

      else
      {
      }

      [ApplicationWorkspaceState deleteIncompleteNotification:v8 forBundleIdentifier:v5];
      goto LABEL_69;
    }

    v10 = v9;
    v11 = [ApplicationWorkspaceState alloc];
    v12 = [v3 databaseID];
    v13 = [*(a1 + 32) database];
    v14 = [(ApplicationWorkspaceState *)v11 initWithPersistentID:v12 inDatabase:v13];

    v59[0] = @"retry_count";
    v15 = [NSNumber numberWithInt:(v10 + 1)];
    v59[1] = @"time_updated";
    v16 = *(a1 + 40);
    v60[0] = v15;
    v60[1] = v16;
    v17 = [NSDictionary dictionaryWithObjects:v60 forKeys:v59 count:2];
    v49 = v14;
    [(ApplicationWorkspaceState *)v14 setValuesWithDictionary:v17];

    v18 = -[ApplicationHandle initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:]([ApplicationHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:bundleIdentifier:", [v7 longLongValue], objc_msgSend(v52, "longLongValue"), v5);
    if ([v8 isEqualToString:SSDownloadPhaseFailed])
    {
      v46 = v18;
      v19 = +[SSLogConfig sharedDaemonConfig];
      v4 = v51;
      if (!v19)
      {
        v19 = +[SSLogConfig sharedConfig];
      }

      v20 = [v19 shouldLog];
      if ([v19 shouldLogToDisk])
      {
        v20 |= 2u;
      }

      v21 = [v19 OSLogObject];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v20;
      }

      else
      {
        v22 = v20 & 2;
      }

      if (v22)
      {
        v53 = 138412802;
        v54 = v8;
        v55 = 2112;
        v56 = v5;
        v57 = 2112;
        v58 = v52;
        v23 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v21, 0, "[ApplicationWorkspace]: Retrying incomplete due to download fail: [%@] [%@] [%@]", &v53, 32);

        if (!v23)
        {
LABEL_15:

          v18 = v46;
          [*(a1 + 48) markFailedPlaceholderForApplicationHandle:v46];
LABEL_68:

LABEL_69:
          goto LABEL_70;
        }

        v21 = [NSString stringWithCString:v23 encoding:4];
        free(v23);
        SSFileLog();
      }

      goto LABEL_15;
    }

    if ([v8 isEqualToString:SSDownloadPhaseInstalling])
    {
      v47 = v18;
      v30 = +[SSLogConfig sharedDaemonConfig];
      v4 = v51;
      if (!v30)
      {
        v30 = +[SSLogConfig sharedConfig];
      }

      v31 = [v30 shouldLog];
      if ([v30 shouldLogToDisk])
      {
        v31 |= 2u;
      }

      v32 = [v30 OSLogObject];
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = v31;
      }

      else
      {
        v33 = v31 & 2;
      }

      if (v33)
      {
        v53 = 138412802;
        v54 = v8;
        v55 = 2112;
        v56 = v5;
        v57 = 2112;
        v58 = v52;
        v34 = _os_log_send_and_compose_impl(v33, 0, 0, 0, &_mh_execute_header, v32, 0, "[ApplicationWorkspace]: Retrying incomplete installing: [%@] [%@] [%@]", &v53, 32);

        if (!v34)
        {
LABEL_38:

          v18 = v47;
          [*(a1 + 48) installPlaceholderForApplicationHandle:v47];
          goto LABEL_68;
        }

        v32 = [NSString stringWithCString:v34 encoding:4];
        free(v34);
        SSFileLog();
      }

      goto LABEL_38;
    }

    v35 = [v8 isEqualToString:SSDownloadPhaseCanceled];
    v36 = +[SSLogConfig sharedDaemonConfig];
    v37 = v36;
    if (v35)
    {
      v48 = v18;
      if (!v36)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      v38 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        v38 |= 2u;
      }

      v39 = [v37 OSLogObject];
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        v40 = v38;
      }

      else
      {
        v40 = v38 & 2;
      }

      if (v40)
      {
        v53 = 138412802;
        v54 = v8;
        v55 = 2112;
        v56 = v5;
        v57 = 2112;
        v58 = v52;
        v41 = _os_log_send_and_compose_impl(v40, 0, 0, 0, &_mh_execute_header, v39, 0, "[ApplicationWorkspace]: Retrying incomplete download canceled: [%@] [%@] [%@]", &v53, 32);

        v4 = v51;
        if (!v41)
        {
LABEL_64:

          v18 = v48;
          [*(a1 + 48) uninstallPlaceholderForApplicationHandle:v48];
          goto LABEL_68;
        }

        v39 = [NSString stringWithCString:v41 encoding:4];
        free(v41);
        SSFileLog();
      }

      else
      {
        v4 = v51;
      }

      goto LABEL_64;
    }

    if (!v36)
    {
      v37 = +[SSLogConfig sharedConfig];
    }

    v42 = [v37 shouldLog];
    if ([v37 shouldLogToDisk])
    {
      v42 |= 2u;
    }

    v43 = [v37 OSLogObject];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = v42;
    }

    else
    {
      v44 = v42 & 2;
    }

    if (v44)
    {
      v53 = 138412802;
      v54 = v8;
      v55 = 2112;
      v56 = v5;
      v57 = 2112;
      v58 = v52;
      v45 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, v43, 0, "[ApplicationWorkspace]:Unexpected incomplete operation type: [%@] [%@] [%@]", &v53, 32);

      v4 = v51;
      if (!v45)
      {
LABEL_67:

        goto LABEL_68;
      }

      v43 = [NSString stringWithCString:v45 encoding:4];
      free(v45);
      SSFileLog();
    }

    else
    {
      v4 = v51;
    }

    goto LABEL_67;
  }

LABEL_70:

  objc_autoreleasePoolPop(v4);
}

void sub_10016FE54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10016FE9C(uint64_t a1, void *a2)
{
  v3 = SSDownloadKindDocument;
  v4 = a2;
  v5 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:v3];
  v6 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindEBook];
  v14[0] = v5;
  v14[1] = v6;
  v7 = [NSArray arrayWithObjects:v14 count:2];
  v8 = [SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:v7];

  v9 = [v4 database];

  v10 = [DownloadEntity queryWithDatabase:v9 predicate:v8];

  v13 = @"download_state.phase";
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10017006C;
  v11[3] = &unk_10032A190;
  v12 = *(a1 + 32);
  [v10 enumeratePersistentIDsAndProperties:&v13 count:1 usingBlock:v11];
}

void sub_10017006C(uint64_t a1, uint64_t a2, id *a3)
{
  v5 = *a3;
  v6 = v5;
  if (v5 && (([v5 isEqualToString:SSDownloadPhaseDownloading] & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseInstalling) & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseProcessing) & 1) != 0 || objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseWaiting)))
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = 138412802;
      v14 = objc_opt_class();
      v15 = 2048;
      v16 = a2;
      v17 = 2112;
      v18 = v6;
      v11 = v14;
      v12 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 1, "[%@]: Still downloading item with itemIdentifier: %lld phase: %@", &v13, 32);

      if (!v12)
      {
LABEL_18:

        ++*(*(*(a1 + 40) + 8) + 24);
        goto LABEL_19;
      }

      v10 = [NSString stringWithCString:v12 encoding:4];
      free(v12);
      SSFileLog();
    }

    goto LABEL_18;
  }

LABEL_19:
}

void sub_100170708(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  v4 = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = v4 | 2;
  }

  else
  {
    LODWORD(v5) = v4;
  }

  v6 = [v3 OSLogObject];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (!v5)
  {
    goto LABEL_12;
  }

  v9 = 138412546;
  v10 = objc_opt_class();
  v11 = 2112;
  v12 = v2;
  v7 = v10;
  v8 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, v6, 0, "[%@]: Error suspending quotas: %@", &v9, 22);

  if (v8)
  {
    v6 = [NSString stringWithCString:v8 encoding:4];
    free(v8);
    SSFileLog();
LABEL_12:
  }
}

BOOL sub_1001717B8(id a1, DownloadsTransaction *a2)
{
  v2 = a2;
  v3 = [SSSQLiteComparisonPredicate predicateWithProperty:@"is_from_store" equalToLongLong:1];
  v4 = [SSSQLiteComparisonPredicate predicateWithProperty:@"kind" equalToValue:SSDownloadKindSoftwareApplication];
  v5 = [NSArray arrayWithObjects:v4, v3, 0];
  v6 = [SSSQLiteCompoundPredicate predicateMatchingAllPredicates:v5];

  v7 = [(DownloadsSession *)v2 database];
  v8 = [DownloadEntity queryWithDatabase:v7 predicate:v6];

  v14[0] = @"download_state.phase";
  v14[1] = @"bundle_id";
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1001719AC;
  v12[3] = &unk_100327958;
  v9 = v2;
  v13 = v9;
  [v8 enumeratePersistentIDsAndProperties:v14 count:2 usingBlock:v12];

  for (i = 1; i != -1; --i)
  {
  }

  return 1;
}

void sub_1001719AC(uint64_t a1, uint64_t a2, id *a3)
{
  v6 = *a3;
  v7 = a3[1];
  if (v6 && (([v6 isEqualToString:SSDownloadPhaseDownloading] & 1) != 0 || objc_msgSend(v6, "isEqualToString:", SSDownloadPhaseWaiting)))
  {
    v8 = [*(a1 + 32) finishDownloadWithID:a2 finalPhase:SSDownloadPhaseCanceled];
    v9 = +[SSLogConfig sharedDaemonConfig];
    v10 = v9;
    if (!v8)
    {
      if (!v9)
      {
        v10 = +[SSLogConfig sharedConfig];
      }

      v21 = [v10 shouldLog];
      if ([v10 shouldLogToDisk])
      {
        v22 = v21 | 2;
      }

      else
      {
        v22 = v21;
      }

      v18 = [v10 OSLogObject];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v22;
      }

      else
      {
        v23 = v22 & 2;
      }

      if (!v23)
      {
        goto LABEL_39;
      }

      *v27 = 134218498;
      *&v27[4] = a2;
      *&v27[12] = 2112;
      *&v27[14] = v6;
      *&v27[22] = 2112;
      v20 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, v18, 0, "[ApplicationWorkspace]: Failed to cancel downloadID: %lld phase: %@ bundleID: %@", v27, 32, *v27, *&v27[8], v7);
      goto LABEL_37;
    }

    if (!v9)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v11 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      v12 = v11 | 2;
    }

    else
    {
      v12 = v11;
    }

    v13 = [v10 OSLogObject];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      *v27 = 134218498;
      *&v27[4] = a2;
      *&v27[12] = 2112;
      *&v27[14] = v7;
      *&v27[22] = 2112;
      v28 = v6;
      v15 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v13, 1, "[ApplicationWorkspace]: Successfully canceled downloadID: %lld bundleID: %@ phase: %@", v27, 32);

      if (!v15)
      {
LABEL_17:

        v10 = +[SSLogConfig sharedDaemonConfig];
        if (!v10)
        {
          v10 = +[SSLogConfig sharedConfig];
        }

        v16 = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          v17 = v16 | 2;
        }

        else
        {
          v17 = v16;
        }

        v18 = [v10 OSLogObject];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = v17;
        }

        else
        {
          v19 = v17 & 2;
        }

        if (!v19)
        {
          goto LABEL_39;
        }

        *v27 = 134218242;
        *&v27[4] = a2;
        *&v27[12] = 2112;
        *&v27[14] = v7;
        LODWORD(v26) = 22;
        v20 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v18, 0, "[ApplicationWorkspace]: Failed to uninstall placeholder for downloadID: %lld bundleID: %@", v27, v26, *v27, *&v27[8], v28);
LABEL_37:
        v24 = v20;

        if (!v24)
        {
LABEL_40:

          goto LABEL_41;
        }

        v18 = [NSString stringWithCString:v24 encoding:4];
        free(v24);
        SSFileLog();
LABEL_39:

        goto LABEL_40;
      }

      v13 = [NSString stringWithCString:v15 encoding:4];
      free(v15);
      v25 = v13;
      SSFileLog();
    }

    goto LABEL_17;
  }

LABEL_41:
}

BOOL sub_10017200C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 applicationHandle];
  v4 = v2 == [v3 downloadID];

  return v4;
}

void sub_100172398(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_10017254C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = *(*(a1 + 40) + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001725EC;
    block[3] = &unk_100327110;
    v4 = *(a1 + 32);
    dispatch_async(v2, block);
  }
}

void sub_1001725EC(uint64_t a1)
{
  v6 = 0u;
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v7;
    do
    {
      v5 = 0;
      do
      {
        if (*v7 != v4)
        {
          objc_enumerationMutation(v1);
        }

        (*(*(*(&v6 + 1) + 8 * v5) + 16))(*(*(&v6 + 1) + 8 * v5));
        v5 = v5 + 1;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v6 objects:v10 count:16];
    }

    while (v3);
  }
}

void sub_100172A74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100172A94(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100172AAC(uint64_t a1, int a2, id obj)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), obj);
  v5 = obj;
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_100173410(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100173428(uint64_t a1, uint64_t a2)
{
  result = [SSSQLiteDatabase statementHasRowAfterStepping:a2];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void sub_100173464(void *a1)
{
  v2 = &unk_10032A2B0;
  v3 = 5;
  do
  {
    v4 = [[NSString alloc] initWithFormat:@"INSERT INTO application_id (effective_client_id, bundle_id) VALUES (%ld, %@)", *v2, *(v2 - 1)];
    [a1 executeSQL:v4];

    v2 += 2;
    --v3;
  }

  while (v3);
}

void sub_100174128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100174164(uint64_t a1, uint64_t a2)
{
  if ([SSSQLiteDatabase statementHasRowAfterStepping:a2])
  {
    v3 = SSSQLiteCopyFoundationValueForStatementColumn();
    *(*(*(a1 + 32) + 8) + 24) = [v3 intValue];
  }
}

id sub_1001741F8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_account_name TEXT;"];
  *a2 = 5001;

  return [a1 setUserVersion:5001];
}

id sub_100174248(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN suppress_error_dialogs SchemaUserVersionEGER NOT NULL DEFAULT 0;"];
  *a2 = 5002;

  return [a1 setUserVersion:5002];
}

id sub_100174298(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN blocked_reason INTEGER NOT NULL DEFAULT 0;"];
  *a2 = 5003;

  return [a1 setUserVersion:5003];
}

id sub_1001742E8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_match_status INTEGER NOT NULL DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_redownload_status INTEGER NOT NULL DEFAULT 0;"];
  *a2 = 5004;

  return [a1 setUserVersion:5004];
}

id sub_100174348(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_store_queued INTEGER DEFAULT 0;"];
  *a2 = 5005;

  return [a1 setUserVersion:5005];
}

id sub_100174398(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_redownload_parameters TEXT;"];
  *a2 = 5006;

  return [a1 setUserVersion:5006];
}

id sub_1001743E8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN thumbnail_newsstand_binding_edge TEXT;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN thumbnail_newsstand_binding_type TEXT;"];
  *a2 = 5007;

  return [a1 setUserVersion:5007];
}

id sub_100174448(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_cellular_restricted INTEGER DEFAULT 0;"];
  *a2 = 5008;

  return [a1 setUserVersion:5008];
}

id sub_100174498(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN requires_device_plugged_in INTEGER DEFAULT 0;"];
  *a2 = 5009;

  return [a1 setUserVersion:5009];
}

id sub_1001744E8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN cancel_on_failure INTEGER DEFAULT 0;"];
  *a2 = 5010;

  return [a1 setUserVersion:5010];
}

id sub_100174538(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_4G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_5G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_6G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_7G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_8G INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN size_limit_9G INTEGER;"];
  *a2 = 5100;

  return [a1 setUserVersion:5100];
}

id sub_1001745D8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE persistent_manager ADD COLUMN migration_version INTEGER DEFAULT 0;"];
  *a2 = 5101;

  return [a1 setUserVersion:5101];
}

id sub_100174628(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN download_token INTEGER DEFAULT 0;"];
  *a2 = 6000;

  return [a1 setUserVersion:6000];
}

id sub_100174678(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN policy_id INTEGER DEFAULT 0;"];
  v3 = objc_alloc_init(NSMutableDictionary);
  v41[2] = *off_10032A318;
  v41[3] = *off_10032A328;
  v42 = @"size_limit_WiFi";
  v41[0] = *off_10032A2F8;
  v41[1] = *off_10032A308;
  v4 = objc_alloc_init(NSMutableArray);
  for (i = 0; i != 72; i += 8)
  {
    [v4 addObject:{+[SSSQLiteNullPredicate isNotNullPredicateWithProperty:](SSSQLiteNullPredicate, "isNotNullPredicateWithProperty:", *(v41 + i))}];
  }

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_100176100;
  v34[3] = &unk_10032A348;
  v34[4] = v3;
  v34[5] = 9;
  [+[DownloadEntity queryWithDatabase:predicate:](DownloadEntity queryWithDatabase:a1 predicate:{+[SSSQLiteCompoundPredicate predicateMatchingAnyPredicates:](SSSQLiteCompoundPredicate, "predicateMatchingAnyPredicates:", v4)), "enumeratePersistentIDsAndProperties:count:usingBlock:", v41, 9, v34}];

  v6 = [DownloadAssetEntity queryWithDatabase:a1 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"requires_device_plugged_in" equalToLongLong:1]];
  v40 = @"download_id";
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100176368;
  v33[3] = &unk_100327288;
  v33[4] = v3;
  [v6 enumeratePersistentIDsAndProperties:&v40 count:1 usingBlock:v33];
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v7 = [v3 countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v30;
    do
    {
      for (j = 0; j != v8; j = j + 1)
      {
        if (*v30 != v9)
        {
          objc_enumerationMutation(v3);
        }

        v11 = *(*(&v29 + 1) + 8 * j);
        v28 = 0;
        v12 = +[NSKeyedArchiver archivedDataWithRootObject:requiringSecureCoding:error:](NSKeyedArchiver, "archivedDataWithRootObject:requiringSecureCoding:error:", [v3 objectForKey:{v11, v25}], 1, &v28);
        if (v28)
        {
          v13 = +[SSLogConfig sharedStoreServicesConfig];
          if (!v13)
          {
            v13 = +[SSLogConfig sharedConfig];
          }

          v14 = [v13 shouldLog];
          if ([v13 shouldLogToDisk])
          {
            v15 = v14 | 2;
          }

          else
          {
            v15 = v14;
          }

          v16 = [v13 OSLogObject];
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v17 = v15;
          }

          else
          {
            v17 = v15 & 2;
          }

          if (v17)
          {
            v35 = 136446466;
            v36 = "void ConvertConstraintsToPolicies(SSSQLiteDatabase *)";
            v37 = 2114;
            v38 = v28;
            LODWORD(v26) = 22;
            v18 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, v16, 16, "%{public}s: Failed to archive download policy. Error = %{public}@", &v35, v26);
            if (v18)
            {
              v19 = v18;
              v20 = [NSString stringWithCString:v18 encoding:4];
              free(v19);
              v25 = v20;
              SSFileLog();
            }
          }
        }

        if (v12)
        {
          v21 = [[NSDictionary alloc] initWithObjectsAndKeys:{v12, @"policy_data", 0}];
          v22 = [[DownloadPolicyEntity alloc] initWithPropertyValues:v21 inDatabase:a1];
          v23 = -[DownloadEntity initWithPersistentID:inDatabase:]([DownloadEntity alloc], "initWithPersistentID:inDatabase:", [v11 longLongValue], a1);
          [(DownloadEntity *)v23 setValue:[NSNumber forProperty:"numberWithLongLong:" numberWithLongLong:?], @"policy_id"];
        }
      }

      v8 = [v3 countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v8);
  }

  *a2 = 6001;
  return [a1 setUserVersion:6001];
}

id sub_100174B2C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN preferred_asset_flavor TEXT;"];
  *a2 = 6002;

  return [a1 setUserVersion:6002];
}

id sub_100174B7C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN cancel_if_duplicate INTEGER DEFAULT 0;"];
  *a2 = 6003;

  return [a1 setUserVersion:6003];
}

id sub_100174BCC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN sinfs_data BLOB;"];
  *a2 = 6004;

  return [a1 setUserVersion:6004];
}

id sub_100174C1C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN etag TEXT;"];
  *a2 = 6005;

  return [a1 setUserVersion:6005];
}

id sub_100174C6C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN blocked_reason INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN store_download_key TEXT;"];
  *a2 = 6006;

  return [a1 setUserVersion:6006];
}

id sub_100174CCC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN is_server_finished INTEGER DEFAULT 0;"];
  *a2 = 6007;

  return [a1 setUserVersion:6007];
}

id sub_100174D1C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN service_type INTEGER DEFAULT 0;"];
  *a2 = 6008;

  return [a1 setUserVersion:6008];
}

id sub_100174D6C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_hash_verified INTEGER DEFAULT 0;"];
  *a2 = 6009;

  return [a1 setUserVersion:6009];
}

id sub_100174DBC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_url TEXT;"];
  *a2 = 6010;

  return [a1 setUserVersion:6010];
}

id sub_100174E0C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN has_restore_data INTEGER DEFAULT -1;"];
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN restore_data_size INTEGER DEFAULT 0;"];
  *a2 = 6011;

  return [a1 setUserVersion:6011];
}

id sub_100174E6C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN store_queue_refresh_count INTEGER DEFAULT 0;"];
  *a2 = 6012;

  return [a1 setUserVersion:6012];
}

id sub_100174EBC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN did_restore_data INTEGER DEFAULT 0;"];
  *a2 = 6013;

  return [a1 setUserVersion:6013];
}

id sub_100174F0C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_explicit INTEGER DEFAULT 0;"];
  *a2 = 6014;

  return [a1 setUserVersion:6014];
}

id sub_100174F5C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN page_progression_direction TEXT;"];
  *a2 = 6100;

  return [a1 setUserVersion:6100];
}

id sub_100174FAC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN asset_order INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_local_cache_server INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN server_guid TEXT;"];
  *a2 = 7000;

  return [a1 setUserVersion:7000];
}

id sub_10017501C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN purchase_id INTEGER DEFAULT 0;"];
  *a2 = 7002;

  return [a1 setUserVersion:7002];
}

id sub_10017506C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN page_progression_direction TEXT;"];
  *a2 = 7002;

  return [a1 setUserVersion:7002];
}

id sub_1001750BC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN auto_update_time INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN auto_update_state INTEGER NOT NULL DEFAULT 0;"];
  *a2 = 7003;

  return [a1 setUserVersion:7003];
}

id sub_10017511C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_hd INTEGER DEFAULT 0;"];
  *a2 = 7004;

  return [a1 setUserVersion:7004];
}

id sub_10017516C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_zip_streamable INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN uncompressed_size INTEGER DEFAULT 0;"];
  *a2 = 7005;

  return [a1 setUserVersion:7005];
}

id sub_1001751CC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE client ADD COLUMN audit_token_data BLOB;"];
  *a2 = 7006;

  return [a1 setUserVersion:7006];
}

id sub_10017521C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN body_data_file_path TEXT;"];
  *a2 = 7008;

  return [a1 setUserVersion:7008];
}

id sub_10017526C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN body_data_file_path TEXT;"];
  *a2 = 7008;

  return [a1 setUserVersion:7008];
}

id sub_1001752BC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN can_cancel INTEGER DEFAULT 1;"];
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN can_prioritize INTEGER DEFAULT 1;"];
  *a2 = 7009;

  return [a1 setUserVersion:7009];
}

id sub_10017531C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN override_audit_token_data BLOB;"];
  *a2 = 7010;

  return [a1 setUserVersion:7010];
}

id sub_10017536C(void *a1, _DWORD *a2)
{
  [a1 executeSQL:{@"CREATE TABLE IF NOT EXISTS application_workspace_state (pid INTEGER, bundle_id TEXT NOT NULL, download_id INTEGER, expected_phase TEXT NOT NULL DEFAULT 0, retry_count INTEGER NOT NULL DEFAULT 0, time_updated INTEGER NOT NULL DEFAULT 0, transaction_id INTEGER, PRIMARY KEY (pid), UNIQUE (bundle_id));"}];
  [a1 executeSQL:@"CREATE INDEX IF NOT EXISTS application_workspace_state_bundle_id ON application_workspace_state (bundle_id);"];
  *a2 = 7011;

  return [a1 setUserVersion:7011];
}

id sub_1001753CC(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN effective_client_id INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN order_seed INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"UPDATE download SET priority=1 WHERE priority>1;"];
  [a1 executeSQL:@"UPDATE download SET priority=-1 WHERE priority<0;"];
  [a1 executeSQL:@"UPDATE download SET priority=-2 WHERE is_restore=1;"];
  sub_100173464(a1);
  *a2 = 7012;

  return [a1 setUserVersion:7012];
}

id sub_100175464(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_downloaded INTEGER DEFAULT 0;"];
  *a2 = 7013;

  return [a1 setUserVersion:7013];
}

id sub_1001754B4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN duet_transfer_type INTEGER DEFAULT 0;"];
  *a2 = 7014;

  return [a1 setUserVersion:7014];
}

id sub_100175504(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN airplay_content_type TEXT;"];
  *a2 = 7015;

  return [a1 setUserVersion:7015];
}

id sub_100175554(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN hash_type INTEGER DEFAULT 0;"];
  *a2 = 7100;

  return [a1 setUserVersion:7100];
}

id sub_1001755A4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN url_session_task_id INTEGER DEFAULT -1;"];
  *a2 = 8000;

  return [a1 setUserVersion:8000];
}

id sub_1001755F4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN processing_types INTEGER DEFAULT 0;"];
  *a2 = 8001;

  return [a1 setUserVersion:8001];
}

id sub_100175644(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN dpinfo_data BLOB;"];
  *a2 = 8002;

  return [a1 setUserVersion:8002];
}

id sub_100175694(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN file_protection TEXT;"];
  *a2 = 8003;

  return [a1 setUserVersion:8003];
}

id sub_1001756E4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_discretionary INTEGER DEFAULT 0;"];
  *a2 = 8004;

  return [a1 setUserVersion:8004];
}

id sub_100175734(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN avfoundation_blocked INTEGER DEFAULT 0;"];
  *a2 = 8005;

  return [a1 setUserVersion:8005];
}

id sub_100175784(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_cohort TEXT;"];
  *a2 = 8006;

  return [a1 setUserVersion:8006];
}

id sub_1001757D4(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN ref_app TEXT;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN ref_url TEXT;"];
  *a2 = 8300;

  return [a1 setUserVersion:8300];
}

id sub_100175834(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN reason INTEGER DEFAULT 0;"];
  *a2 = 8301;

  return [a1 setUserVersion:8301];
}

id sub_100175884(void *a1, _DWORD *a2)
{
  [a1 executeSQL:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"UPDATE application_id SET effective_client_id=%ld WHERE bundle_id=com.apple.Music;", 4)}];
  *a2 = 8302;

  return [a1 setUserVersion:8302];
}

id sub_1001758F8(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN protection_type INTEGER DEFAULT 0;"];
  *a2 = 8303;

  return [a1 setUserVersion:8303];
}

id sub_100175948(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN variant_id TEXT;"];
  *a2 = 9003;

  return [a1 setUserVersion:9003];
}

id sub_100175998(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN reason INTEGER DEFAULT 0;"];
  [a1 executeSQL:{+[NSString stringWithFormat:](NSString, "stringWithFormat:", @"UPDATE application_id SET effective_client_id=%ld WHERE bundle_id=com.apple.Music;", 4)}];
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN protection_type INTEGER DEFAULT 0;"];
  *a2 = 9003;

  return [a1 setUserVersion:9003];
}

id sub_100175A30(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN loading_priority REAL;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN rate_limit INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN timeout_interval REAL;"];
  *a2 = 9004;

  return [a1 setUserVersion:9004];
}

id sub_100175AA0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN variant_id TEXT;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN beta_external_version_identifier INTEGER DEFAULT 0;"];
  *a2 = 9005;

  return [a1 setUserVersion:9005];
}

id sub_100175B00(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download_state ADD COLUMN last_odr_action INTEGER DEFAULT 0;"];
  *a2 = 9006;

  return [a1 setUserVersion:9006];
}

id sub_100175B50(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN initial_odr_size INTEGER;"];
  *a2 = 9007;

  return [a1 setUserVersion:9007];
}

id sub_100175BA0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_tv_template INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_device_based_vpp INTEGER DEFAULT 0;"];
  *a2 = 9008;

  return [a1 setUserVersion:9008];
}

id sub_100175C00(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_shared INTEGER DEFAULT 0;"];
  *a2 = 9300;

  return [a1 setUserVersion:9300];
}

id sub_100175C50(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN transaction_id INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE application_workspace_state ADD COLUMN transaction_id INTEGER;"];
  *a2 = 9301;

  return [a1 setUserVersion:9301];
}

id sub_100175CB0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN store_publication_version INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN download_permalink TEXT;"];
  *a2 = 9302;

  return [a1 setUserVersion:9302];
}

id sub_100175D10(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_diverted INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN diverted_job_id INTEGER;"];
  *a2 = 10000;

  return [a1 setUserVersion:10000];
}

id sub_100175D70(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN rental_id INTEGER;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN hls_playlist_url TEXT;"];
  *a2 = 10001;

  return [a1 setUserVersion:10001];
}

id sub_100175DD0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_messages_extension INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN launch_prohibited INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN messages_artwork_url TEXT;"];
  *a2 = 10002;

  return [a1 setUserVersion:10002];
}

id sub_100175E40(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN enable_extensions INTEGER DEFAULT 0;"];
  *a2 = 10003;

  return [a1 setUserVersion:10003];
}

id sub_100175E90(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN launch_prohibited INTEGER DEFAULT 0;"];
  *a2 = 10004;

  return [a1 setUserVersion:10004];
}

id sub_100175EE0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download RENAME TO _download;"];
  [a1 executeSQL:{@"CREATE TABLE IF NOT EXISTS download (pid INTEGER, airplay_content_type TEXT, artist_name TEXT, artwork_is_prerendered INTEGER DEFAULT 0, artwork_template_name TEXT, auto_update_time INTEGER, beta_external_version_identifier INTEGER DEFAULT 0, bundle_id TEXT, bundle_version TEXT, cancel_if_duplicate INTEGER DEFAULT 0, cancel_on_failure INTEGER DEFAULT 0, cancel_url TEXT, client_id TEXT, collection_artist_name TEXT, collection_group_count INTEGER, collection_item_count INTEGER, collection_name TEXT, composer_name TEXT, diverted_job_id INTEGER, document_target_id TEXT, download_permalink TEXT, duet_transfer_type INTEGER DEFAULT 0, duration_in_ms INTEGER DEFAULT 0, effective_client_id INTEGER DEFAULT 0, enable_extensions INTEGER DEFAULT 0, episode_id TEXT, episode_sort_id INTEGER, handler_id INTEGER DEFAULT 0, has_4k INTEGER DEFAULT 0, has_dolby_vision INTEGER DEFAULT 0, has_hdr INTEGER DEFAULT 0, has_messages_extension INTEGER DEFAULT 0, hls_playlist_url TEXT, genre_name TEXT, index_in_collection INTEGER DEFAULT 0, index_in_collection_group INTEGER, is_automatic INTEGER DEFAULT 0, is_compilation INTEGER DEFAULT 0, is_device_based_vpp INTEGER DEFAULT 0, is_diverted INTEGER DEFAULT 0, is_explicit INTEGER DEFAULT 0, is_from_store INTEGER DEFAULT 0, is_hd INTEGER DEFAULT 0, is_hls INTEGER DEFAULT 0, is_premium INTEGER DEFAULT 0, is_private INTEGER DEFAULT 0, is_purchase INTEGER DEFAULT 0, is_redownload INTEGER DEFAULT 0, is_restore INTEGER DEFAULT 0, is_rental INTEGER DEFAULT 0, is_sample INTEGER DEFAULT 0, is_shared INTEGER DEFAULT 0, is_store_queued INTEGER DEFAULT 0, is_tv_template INTEGER DEFAULT 0, is_music_show INTEGER DEFAULT 0, kind TEXT, launch_prohibited INTEGER DEFAULT 0, library_id TEXT, loading_priority REAL, long_description TEXT, long_season_description TEXT, messages_artwork_url TEXT, network_name TEXT, order_key DOUBLE DEFAULT 0, order_seed INTEGER DEFAULT 0, override_audit_token_data BLOB, page_progression_direction TEXT, podcast_episode_guid TEXT, podcast_feed_url TEXT, podcast_type TEXT, policy_id INTEGER DEFAULT 0, priority INTEGER DEFAULT 0, preferred_asset_flavor TEXT, purchase_id INTEGER DEFAULT 0, rate_limit INTEGER, reason INTEGER DEFAULT 0, ref_app TEXT, ref_url TEXT, release_date INTEGER, release_year INTEGER, rental_id INTEGER, resource_timeout_interval REAL, season_number INTEGER, series_name TEXT, software_type TEXT, short_description TEXT, show_composer INTEGER DEFAULT 0, suppress_error_dialogs INTEGER NOT NULL DEFAULT 0, store_account_id INTEGER, store_account_name TEXT, store_artist_id INTEGER, store_cohort TEXT, store_collection_id INTEGER, store_composer_id INTEGER, store_download_key TEXT, store_front_id TEXT, store_genre_id INTEGER, store_item_id INTEGER, store_match_status INTEGER NOT NULL DEFAULT 0, store_publication_version INTEGER DEFAULT 0, store_preorder_id INTEGER, store_purchase_date INTEGER, store_redownload_parameters TEXT, store_redownload_status INTEGER NOT NULL DEFAULT 0, store_saga_id INTEGER, store_software_version_id INTEGER, store_transaction_id TEXT, store_url TEXT, store_xid TEXT, thumbnail_newsstand_binding_edge TEXT, thumbnail_newsstand_binding_type TEXT, thumbnail_url TEXT, timeout_interval REAL, timestamp INTEGER DEFAULT (strftime('%s', 'now')), title TEXT, transaction_id INTEGER DEFAULT 0, variant_id TEXT, work_name TEXT, PRIMARY KEY (pid));"}];
  [a1 executeSQL:{@"INSERT INTO download (pid, airplay_content_type, artist_name, artwork_is_prerendered, artwork_template_name, auto_update_time, beta_external_version_identifier, bundle_id, bundle_version, cancel_if_duplicate, cancel_on_failure, cancel_url, client_id, collection_artist_name, collection_group_count, collection_item_count, collection_name, composer_name, diverted_job_id, document_target_id, download_permalink, duet_transfer_type, duration_in_ms, effective_client_id, enable_extensions, episode_id, episode_sort_id, handler_id, has_messages_extension, hls_playlist_url, genre_name, index_in_collection, index_in_collection_group, is_automatic, is_compilation, is_device_based_vpp, is_diverted, is_explicit, is_from_store, is_hd, is_private, is_purchase, is_redownload, is_restore, is_rental, is_sample, is_shared, is_store_queued, is_tv_template, kind, launch_prohibited, library_id, loading_priority, long_description, long_season_description, messages_artwork_url, network_name, order_key, order_seed, override_audit_token_data, page_progression_direction, podcast_episode_guid, podcast_feed_url, podcast_type, policy_id, priority, preferred_asset_flavor, purchase_id, rate_limit, reason, ref_app, ref_url, release_date, release_year, rental_id, season_number, series_name, software_type, short_description, suppress_error_dialogs, store_account_id, store_account_name, store_artist_id, store_cohort, store_collection_id, store_composer_id, store_download_key, store_front_id, store_genre_id, store_item_id, store_match_status, store_publication_version, store_preorder_id, store_purchase_date, store_redownload_parameters, store_redownload_status, store_saga_id, store_software_version_id, store_transaction_id, store_url, store_xid, thumbnail_newsstand_binding_edge, thumbnail_newsstand_binding_type, thumbnail_url, timeout_interval, title, transaction_id, variant_id) SELECT pid, airplay_content_type, artist_name, artwork_is_prerendered, artwork_template_name, auto_update_time, beta_external_version_identifier, bundle_id, bundle_version, cancel_if_duplicate, cancel_on_failure, cancel_url, client_id, collection_artist_name, collection_group_count, collection_item_count, collection_name, composer_name, diverted_job_id, document_target_id, download_permalink, duet_transfer_type, duration_in_ms, effective_client_id, enable_extensions, episode_id, episode_sort_id, handler_id, has_messages_extension, hls_playlist_url, genre_name, index_in_collection, index_in_collection_group, is_automatic, is_compilation, is_device_based_vpp, is_diverted, is_explicit, is_from_store, is_hd, is_private, is_purchase, is_redownload, is_restore, is_rental, is_sample, is_shared, is_store_queued, is_tv_template, kind, launch_prohibited, library_id, loading_priority, long_description, long_season_description, messages_artwork_url, network_name, order_key, order_seed, override_audit_token_data, page_progression_direction, podcast_episode_guid, podcast_feed_url, podcast_type, policy_id, priority, preferred_asset_flavor, purchase_id, rate_limit, reason, ref_app, ref_url, release_date, release_year, rental_id, season_number, series_name, software_type, short_description, suppress_error_dialogs, store_account_id, store_account_name, store_artist_id, store_cohort, store_collection_id, store_composer_id, store_download_key, store_front_id, store_genre_id, store_item_id, store_match_status, store_publication_version, store_preorder_id, store_purchase_date, store_redownload_parameters, store_redownload_status, store_saga_id, store_software_version_id, store_transaction_id, store_url, store_xid, thumbnail_newsstand_binding_edge, thumbnail_newsstand_binding_type, thumbnail_url, timeout_interval, title, transaction_id, variant_id FROM _download;"}];
  [a1 executeSQL:@"DROP TABLE _download;"];
  *a2 = 10100;

  return [a1 setUserVersion:10100];
}

id sub_100175F60(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_music_show INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN show_composer INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN work_name TEXT;"];
  *a2 = 10300;

  return [a1 setUserVersion:10300];
}

id sub_100175FD0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE asset ADD COLUMN is_hls INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_hls INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN is_premium INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_hdr INTEGER DEFAULT 0;"];
  *a2 = 11000;

  return [a1 setUserVersion:11000];
}

id sub_100176050(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_4k INTEGER DEFAULT 0;"];
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN has_dolby_vision INTEGER DEFAULT 0;"];
  *a2 = 11200;

  return [a1 setUserVersion:11200];
}

id sub_1001760B0(void *a1, _DWORD *a2)
{
  [a1 executeSQL:@"ALTER TABLE download ADD COLUMN resource_timeout_interval REAL;"];
  *a2 = 13000;

  return [a1 setUserVersion:13000];
}

void sub_100176100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [[NSNumber alloc] initWithLongLong:a2];
  v6 = objc_alloc_init(NSMutableDictionary);
  if (*(a1 + 40))
  {
    v7 = 0;
    do
    {
      v8 = *(a3 + 8 * v7);
      if (!v8)
      {
        v8 = [[NSNumber alloc] initWithLongLong:0];
      }

      v9 = [v6 objectForKey:v8];
      if (!v9)
      {
        v9 = objc_alloc_init(NSMutableArray);
        [v6 setObject:v9 forKey:v8];
      }

      [v9 addObject:{+[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", qword_1002A9000[v7])}];

      ++v7;
    }

    while (v7 < *(a1 + 40));
  }

  if ([v6 count])
  {
    v18 = v5;
    v10 = objc_alloc_init(SSDownloadPolicy);
    v11 = objc_alloc_init(NSMutableArray);
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        v15 = 0;
        do
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v6);
          }

          v16 = *(*(&v19 + 1) + 8 * v15);
          v17 = objc_alloc_init(SSDownloadPolicyRule);
          [v17 setDownloadSizeLimit:{objc_msgSend(v16, "longLongValue")}];
          [v17 setNetworkTypes:{objc_msgSend(v6, "objectForKey:", v16)}];
          [v10 setPolicyRule:v17];
          [v11 addObject:v17];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v6 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v13);
    }

    v5 = v18;
    [*(a1 + 32) setObject:v10 forKey:v18];
  }
}

void sub_100176368(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3)
  {
    v5 = [*(a1 + 32) objectForKey:?];
    if (!v5)
    {
      v5 = objc_alloc_init(SSDownloadPolicy);
      [*(a1 + 32) setObject:? forKey:?];
    }

    v4 = objc_alloc_init(SSDownloadPolicyRule);
    [v4 setPowerStates:2];
    [v5 unionPolicyRule:v4];
  }
}

void sub_100176DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100176DF8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100177044(void *a1)
{
  *(a1[4] + 8) = [*(a1[5] + 8) mutableCopyWithZone:a1[6]];
  *(a1[4] + 24) = [*(a1[5] + 24) copyWithZone:a1[6]];
  *(a1[4] + 16) = *(a1[5] + 16);
  *(a1[4] + 32) = [*(a1[5] + 32) copyWithZone:a1[6]];
  *(a1[4] + 48) = [*(a1[5] + 48) copyWithZone:a1[6]];
  *(a1[4] + 56) = *(a1[5] + 56);
  *(a1[4] + 64) = *(a1[5] + 64);
  *(a1[4] + 72) = *(a1[5] + 72);
  *(a1[4] + 80) = [*(a1[5] + 80) copyWithZone:a1[6]];
  result = [*(a1[5] + 88) copyWithZone:a1[6]];
  *(a1[4] + 88) = result;
  *(a1[4] + 96) = *(a1[5] + 96);
  *(a1[4] + 104) = *(a1[5] + 104);
  return result;
}

void sub_100177318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017734C(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_10017751C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177534(uint64_t a1)
{
  result = [*(*(a1 + 32) + 32) copy];
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

double sub_1001776D8(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  *(*(*(a1 + 40) + 8) + 24) = result;
  return result;
}

id sub_1001777D8(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  if (result)
  {
    result = [result length];
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }

  return result;
}

void sub_1001778F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10017790C(uint64_t a1)
{
  result = *(*(a1 + 32) + 24);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100177A1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177A34(uint64_t a1)
{
  result = *(*(a1 + 32) + 48);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100177B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177B5C(uint64_t a1)
{
  result = *(*(a1 + 32) + 80);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void sub_100177C6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100177C84(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 88) copy];
  v2 = *(*(a1 + 32) + 64);
  if (v2 > 0.00000011920929)
  {
    v3 = v2 * 1000.0;
    if (v3 < 4294967300.0)
    {
      [*(*(*(a1 + 40) + 8) + 40) setDurationInMilliseconds:{+[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", v3)}];
    }
  }

  v4 = [*(*(*(a1 + 40) + 8) + 40) kind];
  v5 = SSDownloadKindPodcast;
  result = [v4 isEqualToString:SSDownloadKindPodcast];
  if ((result & 1) != 0 || (result = [v4 isEqualToString:SSDownloadKindVideoPodcast], result))
  {
    v7 = *(*(a1 + 32) + 16);
    if (v7 == 2)
    {
      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = SSDownloadKindVideoPodcast;
    }

    else
    {
      if (v7 != 1)
      {
        return result;
      }

      v8 = *(*(*(a1 + 40) + 8) + 40);
      v9 = v5;
    }

    return [v8 setKind:v9];
  }

  return result;
}

id sub_1001780E0(uint64_t a1)
{
  *(*(a1 + 32) + 16) = *(a1 + 48);
  *(*(a1 + 32) + 64) = *(a1 + 56);

  result = [*(a1 + 40) copy];
  *(*(a1 + 32) + 32) = result;
  return result;
}

void *sub_100178268(void *result)
{
  v1 = *(result[4] + 8);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] mutableCopy];
    *(v2[4] + 8) = result;
  }

  return result;
}

void *sub_1001783A4(void *result)
{
  v1 = *(result[4] + 32);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 32) = result;
  }

  return result;
}

double sub_1001784E4(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 64) = result;
  return result;
}

void *sub_100178568(void *result)
{
  v1 = *(result[4] + 24);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 24) = result;
  }

  return result;
}

void *sub_100178624(void *result)
{
  v1 = *(result[4] + 48);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 48) = result;
  }

  return result;
}

void *sub_1001786E0(void *result)
{
  v1 = *(result[4] + 80);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 80) = result;
  }

  return result;
}

void *sub_10017879C(void *result)
{
  v1 = *(result[4] + 88);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 88) = result;
  }

  return result;
}

id sub_1001789DC(void *a1)
{
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    if (!v3)
    {
      *(a1[5] + 8) = objc_alloc_init(NSMutableDictionary);
      v2 = a1[4];
      v3 = *(a1[5] + 8);
    }

    v4 = a1[6];

    return [v3 setObject:v2 forKey:v4];
  }

  else
  {
    v6 = a1[6];

    return [v3 removeObjectForKey:v6];
  }
}

void sub_100179544(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, ...)
{
  va_start(va, a34);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v34 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001795F0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100179608(void *a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v9 = a3;
  v10 = a5;
  v11 = +[SSLogConfig sharedDaemonConfig];
  if (!v11)
  {
    v11 = +[SSLogConfig sharedConfig];
  }

  v12 = [v11 shouldLog];
  if ([v11 shouldLogToDisk])
  {
    v13 = v12 | 2;
  }

  else
  {
    v13 = v12;
  }

  v14 = [v11 OSLogObject];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = v13;
  }

  else
  {
    v15 = v13 & 2;
  }

  if (v15)
  {
    v16 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v16;
    v17 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, v14, 0, "%{public}@: [PW] DisplayPaymentSheetOperation did complete", v43, 12);

    if (!v17)
    {
      goto LABEL_13;
    }

    v14 = [NSString stringWithCString:v17 encoding:4];
    free(v17);
    v41 = v14;
    SSFileLog();
  }

LABEL_13:
  if (v10)
  {
    objc_storeStrong((*(a1[5] + 8) + 40), a5);
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v20 = v19 | 2;
    }

    else
    {
      v20 = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    v23 = a1[4];
    *v43 = 138543618;
    *&v43[4] = v23;
    *&v43[12] = 2112;
    *&v43[14] = v10;
    LODWORD(v42) = 22;
    v24 = "%{public}@: [PW] Payment sheet authorized failed with error: %@";
    goto LABEL_24;
  }

  if ((a4 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 1;
    v30 = ISError();
    v31 = *(a1[5] + 8);
    v32 = *(v31 + 40);
    *(v31 + 40) = v30;

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v33 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v34 = v33 | 2;
    }

    else
    {
      v34 = v33;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v34;
    }

    else
    {
      v22 = v34 & 2;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    v35 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v35;
    LODWORD(v42) = 12;
    v24 = "%{public}@: [PW] Payment sheet did cancel";
LABEL_47:
    v25 = v21;
    v26 = 0;
    goto LABEL_48;
  }

  if (v9)
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v27 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      v28 = v27 | 2;
    }

    else
    {
      v28 = v27;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v28;
    }

    else
    {
      v22 = v28 & 2;
    }

    if (!v22)
    {
      goto LABEL_50;
    }

    v29 = a1[4];
    *v43 = 138543362;
    *&v43[4] = v29;
    LODWORD(v42) = 12;
    v24 = "%{public}@: [PW] Payment sheet did authorize payment with password";
    goto LABEL_47;
  }

  v18 = +[SSLogConfig sharedDaemonConfig];
  if (!v18)
  {
    v18 = +[SSLogConfig sharedConfig];
  }

  v38 = [v18 shouldLog];
  if ([v18 shouldLogToDisk])
  {
    v39 = v38 | 2;
  }

  else
  {
    v39 = v38;
  }

  v21 = [v18 OSLogObject];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v22 = v39;
  }

  else
  {
    v22 = v39 & 2;
  }

  if (!v22)
  {
    goto LABEL_50;
  }

  v40 = a1[4];
  *v43 = 138543362;
  *&v43[4] = v40;
  LODWORD(v42) = 12;
  v24 = "%{public}@: [PW] Payment sheet encountered an unknown error";
LABEL_24:
  v25 = v21;
  v26 = 16;
LABEL_48:
  v36 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, v25, v26, v24, v43, v42, *v43, *&v43[8]);

  if (!v36)
  {
    goto LABEL_51;
  }

  v21 = [NSString stringWithCString:v36 encoding:4];
  free(v36);
  SSFileLog();
LABEL_50:

LABEL_51:
  if (v9)
  {
    v37 = a4;
  }

  else
  {
    v37 = 0;
  }

  *(*(a1[8] + 8) + 24) = v37;
}

id sub_10017AEA8(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F60 = result;
  return result;
}

uint64_t sub_10017AF68(void *a1, void *a2)
{
  v28 = [a2 database];
  v26 = objc_alloc_init(NSMutableSet);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = a1[4];
  v29 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v29)
  {
    v27 = *v33;
    p_vtable = DemoteApplicationOperation.vtable;
    v4 = &CFDictionaryGetValue_ptr;
    do
    {
      for (i = 0; i != v29; i = i + 1)
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v32 + 1) + 8 * i);
        v7 = [p_vtable + 352 newValueDictionaryWithItem:v6];
        v8 = v7;
        v9 = a1[5];
        if (v9)
        {
          [v7 setObject:v9 forKey:@"store_account_id"];
        }

        v30 = [objc_alloc((p_vtable + 352)) initWithPropertyValues:v8 inDatabase:v28];
        v10 = [v4[412] sharedDaemonConfig];
        if (!v10)
        {
          v10 = [v4[412] sharedConfig];
        }

        LODWORD(v11) = [v10 shouldLog];
        if ([v10 shouldLogToDisk])
        {
          LODWORD(v11) = v11 | 2;
        }

        v12 = [v10 OSLogObject];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v11 = v11;
        }

        else
        {
          v11 &= 2u;
        }

        if (v11)
        {
          v13 = v4;
          v14 = p_vtable;
          v15 = objc_opt_class();
          v16 = [v30 persistentID];
          v36 = 138412546;
          v37 = v15;
          p_vtable = v14;
          v4 = v13;
          v38 = 2048;
          v39 = v16;
          LODWORD(v24) = 22;
          v17 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, v12, 1, "%@: Adding new preorder: %lld", &v36, v24);
          if (v17)
          {
            v18 = v17;
            v19 = [NSString stringWithCString:v17 encoding:4];
            free(v18);
            v23 = v19;
            SSFileLog();
          }
        }

        if ([v6 itemKind])
        {
          [v26 addObject:{objc_msgSend(v6, "itemKind")}];
        }
      }

      v29 = [obj countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v29);
  }

  v20 = a1[6];
  v21 = *(v20 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B288;
  block[3] = &unk_100327350;
  block[4] = v20;
  block[5] = v26;
  dispatch_async(v21, block);

  return 1;
}

id sub_10017B560(uint64_t a1)
{
  [*(a1 + 32) _handleCheckQueueFinish:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

uint64_t sub_10017B700(void *a1, void *a2)
{
  v3 = [a2 database];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  obj = a1[4];
  v4 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v14 != v6)
      {
        objc_enumerationMutation(obj);
      }

      v8 = [PreorderEntity queryWithDatabase:v3 predicate:[SSSQLiteComparisonPredicate predicateWithProperty:@"store_preorder_id" equalToValue:*(*(&v13 + 1) + 8 * v7)]];
      v17 = @"kind";
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = sub_10017B8CC;
      v12[3] = &unk_10032A488;
      v9 = a1[6];
      v12[4] = a1[5];
      v12[5] = v3;
      v12[6] = v9;
      [v8 enumeratePersistentIDsAndProperties:&v17 count:1 usingBlock:v12];
      if (*(*(a1[6] + 8) + 24) != 1)
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [obj countByEnumeratingWithState:&v13 objects:v18 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        return *(*(a1[6] + 8) + 24);
      }
    }
  }

  return *(*(a1[6] + 8) + 24);
}

void sub_10017B8CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, _BYTE *a5)
{
  v8 = *a3;
  if (v8)
  {
    [*(a1 + 32) addObject:{v8, a4}];
  }

  v9 = [[PreorderEntity alloc] initWithPersistentID:a2 inDatabase:*(a1 + 40)];
  *(*(*(a1 + 48) + 8) + 24) = [(PreorderEntity *)v9 deleteFromDatabase];
  *a5 = *(*(*(a1 + 48) + 8) + 24) ^ 1;
}

void sub_10017BA04(uint64_t a1, void *a2, void *a3)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if ([a2 hasEntitlements])
  {
    value = xpc_dictionary_get_value(*(a1 + 40), "1");
    v7 = value;
    if (value && xpc_get_type(value) == &_xpc_type_array)
    {
      v8 = objc_alloc_init(NSMutableSet);
      v9 = +[DownloadsDatabase downloadsDatabase];
      v21[0] = _NSConcreteStackBlock;
      v21[1] = 3221225472;
      v21[2] = sub_10017BCFC;
      v21[3] = &unk_10032A4D8;
      v10 = *(a1 + 32);
      v21[4] = v7;
      v21[5] = v10;
      v21[6] = v8;
      v21[7] = &v22;
      [v9 modifyUsingTransactionBlock:v21];
      if (*(v23 + 24) == 1)
      {
        v11 = objc_alloc_init(CancelPreordersOperation);
        [+[ISOperationQueue mainQueue](ISOperationQueue "mainQueue")];
        [*(a1 + 32) _sendChangeNotificationForKinds:v8];
      }
    }
  }

  else
  {
    v12 = +[SSLogConfig sharedDaemonConfig];
    if (!v12)
    {
      v12 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v13) = [v12 shouldLog];
    v14 = [v12 shouldLogToDisk];
    v15 = [v12 OSLogObject];
    v16 = v15;
    if (v14)
    {
      LODWORD(v13) = v13 | 2;
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v13;
    }

    else
    {
      v13 &= 2u;
    }

    if (v13)
    {
      v17 = objc_opt_class();
      v18 = [a2 clientIdentifier];
      v26 = 138412546;
      v27 = v17;
      v28 = 2112;
      v29 = v18;
      v19 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, v16, 0, "%@: Deny preorder cancel for unentitled client: %@", &v26, 22);
      if (v19)
      {
        v20 = v19;
        [NSString stringWithCString:v19 encoding:4];
        free(v20);
        SSFileLog();
      }
    }
  }

  xpc_dictionary_set_BOOL(a3, "0", *(v23 + 24));
  _Block_object_dispose(&v22, 8);
}

void sub_10017BCC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10017BCFC(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  count = xpc_array_get_count(*(a1 + 32));
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  v6 = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = v6 | 2;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  v8 = [v5 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    *v21 = 138412546;
    *&v21[4] = objc_opt_class();
    *&v21[12] = 2048;
    *&v21[14] = count;
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 1, "%@: Cancel %ld preorders", v21, 22);
    if (v9)
    {
      v10 = v9;
      [NSString stringWithCString:v9 encoding:4];
      free(v10);
      SSFileLog();
    }
  }

  *(*(*(a1 + 56) + 8) + 24) = count > 0;
  if (count >= 1)
  {
    for (i = 0; i != count; ++i)
    {
      if (*(*(*(a1 + 56) + 8) + 24) != 1)
      {
        break;
      }

      v12 = [[PreorderEntity alloc] initWithPersistentID:xpc_array_get_int64(*(a1 + 32) inDatabase:i), v3];
      *v21 = @"store_account_id";
      *&v21[8] = @"kind";
      *&v21[16] = @"store_preorder_id";
      [(PreorderEntity *)v12 getValues:v19 forProperties:v21 count:3];
      if (v19[0] && v20)
      {
        v13 = [NSDictionary alloc];
        v14 = [v13 initWithObjectsAndKeys:{v19[0], @"store_account_id", v20, @"store_item_id", 0}];
        v15 = [[CanceledPreorderEntity alloc] initWithPropertyValues:v14 inDatabase:v3];
        *(*(*(a1 + 56) + 8) + 24) = v15 != 0;
      }

      if (v19[1])
      {
        [*(a1 + 48) addObject:?];
      }

      v16 = *(*(a1 + 56) + 8);
      if (*(v16 + 24) == 1)
      {
        v17 = [(PreorderEntity *)v12 deleteFromDatabase];
        v16 = *(*(a1 + 56) + 8);
      }

      else
      {
        v17 = 0;
      }

      *(v16 + 24) = v17;
    }
  }

  return *(*(*(a1 + 56) + 8) + 24);
}

id sub_10017C0A0(uint64_t a1, void *a2)
{
  result = [a2 hasEntitlements];
  if (result)
  {
    v5 = +[SSLogConfig sharedDaemonConfig];
    if (!v5)
    {
      v5 = +[SSLogConfig sharedConfig];
    }

    v6 = [v5 shouldLog];
    if ([v5 shouldLogToDisk])
    {
      LODWORD(v7) = v6 | 2;
    }

    else
    {
      LODWORD(v7) = v6;
    }

    v8 = [v5 OSLogObject];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v7 = v7;
    }

    else
    {
      v7 &= 2u;
    }

    if (v7)
    {
      v13 = 138412546;
      v14 = objc_opt_class();
      v15 = 2112;
      v16 = [a2 clientIdentifier];
      v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, v8, 1, "%@: Checking queue for %@", &v13, 22);
      if (v9)
      {
        v10 = v9;
        v11 = [NSString stringWithCString:v9 encoding:4];
        free(v10);
        v12 = v11;
        SSFileLog();
      }
    }

    return [*(a1 + 32) checkPreorderQueue];
  }

  return result;
}

void sub_10017C2B8(uint64_t a1, void *a2, void *a3)
{
  v5 = xpc_array_create(0, 0);
  if ([a2 hasEntitlements])
  {
    v6 = [objc_msgSend(a2 "itemKinds")];
    if ([v6 count])
    {
      v13[0] = _NSConcreteStackBlock;
      v13[1] = 3221225472;
      v13[2] = sub_10017C52C;
      v13[3] = &unk_100329810;
      v13[4] = [SSSQLiteCompoundPredicate predicateWithProperty:@"kind" values:v6 comparisonType:1];
      v13[5] = [NSArray arrayWithObject:@"release_date"];
      v13[6] = v5;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    }
  }

  else
  {
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    v8 = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      LODWORD(v9) = v8 | 2;
    }

    else
    {
      LODWORD(v9) = v8;
    }

    v10 = [v7 OSLogObject];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v14 = 138412546;
      v15 = objc_opt_class();
      v16 = 2112;
      v17 = [a2 clientIdentifier];
      v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v10, 0, "%@: Deny get preorders from unentitled client: %@", &v14, 22);
      if (v11)
      {
        v12 = v11;
        [NSString stringWithCString:v11 encoding:4];
        free(v12);
        SSFileLog();
      }
    }
  }

  xpc_dictionary_set_value(a3, "0", v5);
  xpc_release(v5);
}

void sub_10017C52C(void *a1, void *a2)
{
  v3 = +[PreorderEntity queryWithDatabase:predicate:orderingProperties:](PreorderEntity, "queryWithDatabase:predicate:orderingProperties:", [a2 database], a1[4], a1[5]);
  v4 = +[PreorderEntity allProperties];
  v5 = malloc_type_malloc(8 * [v4 count], 0x80040B8603338uLL);
  [v4 getObjects:v5 range:{0, objc_msgSend(v4, "count")}];
  v6 = [v4 count];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10017C638;
  v7[3] = &unk_100327288;
  v7[4] = a1[6];
  [v3 enumeratePersistentIDsAndProperties:v5 count:v6 usingBlock:v7];
  free(v5);
}

void sub_10017C638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [PreorderEntity newClientPreorderWithPersistentID:a2 allValues:a3];
  v4 = [v6 copyXPCEncoding];
  if (v4)
  {
    v5 = v4;
    xpc_array_append_value(*(a1 + 32), v4);
    xpc_release(v5);
  }
}

double sub_10017C7CC(uint64_t a1, void *a2)
{
  if ([a2 hasEntitlements])
  {
    value = xpc_dictionary_get_value(*(a1 + 40), "1");
    if (value && xpc_get_type(value) == &_xpc_type_array)
    {
      v5 = SSXPCCreateCFObjectFromXPCObject();
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = v7 | 2;
      }

      else
      {
        LODWORD(v8) = v7;
      }

      v9 = [v6 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v25 = 138412802;
        v26 = objc_opt_class();
        v27 = 2112;
        v28 = [a2 clientIdentifier];
        v29 = 2112;
        v30 = v5;
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 1, "%@: Registered client: %@ with kinds: %@", &v25, 32);
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4];
          free(v11);
          v24 = v12;
          SSFileLog();
        }
      }

      [a2 setItemKinds:{+[NSSet setWithArray:](NSSet, "setWithArray:", v5, v24)}];
    }

    v13 = xpc_dictionary_get_value(*(a1 + 40), "2");
    if (v13)
    {
      v15 = v13;
      if (xpc_get_type(v13) == &_xpc_type_endpoint)
      {
        v16 = xpc_connection_create_from_endpoint(v15);
        [a2 setOutputConnectionWithConnection:v16];
        v17 = xpc_dictionary_create(0, 0, 0);
        [objc_msgSend(a2 "outputConnection")];
        xpc_release(v17);
        xpc_release(v16);
      }
    }
  }

  else
  {
    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = v19 | 2;
    }

    else
    {
      LODWORD(v20) = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v25 = 138412546;
      v26 = objc_opt_class();
      v27 = 2112;
      v28 = [a2 clientIdentifier];
      v22 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v21, 0, "%@: Ignore register from unentitled client: %@", &v25, 22);
      if (v22)
      {
        v23 = v22;
        [NSString stringWithCString:v22 encoding:4];
        free(v23);
        SSFileLog();
      }
    }
  }

  return result;
}

id sub_10017CBB0(uint64_t a1)
{
  v2 = [*(a1 + 32) object];
  result = [*(*(a1 + 40) + 8) count];
  v4 = result;
  while (v4-- >= 1)
  {
    result = [*(*(a1 + 40) + 8) objectAtIndex:v4];
    if (result == v2)
    {
      v6 = +[SSLogConfig sharedDaemonConfig];
      if (!v6)
      {
        v6 = +[SSLogConfig sharedConfig];
      }

      v7 = [v6 shouldLog];
      if ([v6 shouldLogToDisk])
      {
        LODWORD(v8) = v7 | 2;
      }

      else
      {
        LODWORD(v8) = v7;
      }

      v9 = [v6 OSLogObject];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (v8)
      {
        v14 = 138412546;
        v15 = objc_opt_class();
        v16 = 2112;
        v17 = v2;
        v10 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, v9, 2, "%@: Client disconnect: %@", &v14, 22);
        if (v10)
        {
          v11 = v10;
          v12 = [NSString stringWithCString:v10 encoding:4];
          free(v11);
          v13 = v12;
          SSFileLog();
        }
      }

      [v2 setOutputConnectionWithConnection:{0, v13}];
      return [*(*(a1 + 40) + 8) removeObjectAtIndex:v4];
    }
  }

  return result;
}

void sub_10017CF70(uint64_t a1, void *a2)
{
  v4 = objc_alloc_init(SSSQLiteQueryDescriptor);
  [v4 setEntityClass:objc_opt_class()];
  [v4 setReturnsDistinctEntities:1];
  v5 = [[SSSQLiteQuery alloc] initWithDatabase:objc_msgSend(a2 descriptor:{"database"), v4}];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10017D0A0;
  v6[3] = &unk_100327288;
  v6[4] = *(a1 + 32);
  v7 = @"store_account_id";
  [v5 enumeratePersistentIDsAndProperties:&v7 count:1 usingBlock:v6];
}

id *sub_10017D0A0(id *result, uint64_t a2, void *a3)
{
  if (*a3)
  {
    return [result[4] addObject:?];
  }

  return result;
}

id sub_10017D448(uint64_t a1, void *a2)
{
  result = [objc_msgSend(*(a1 + 32) _preorderQueryWithAccountID:*(a1 + 40) database:{objc_msgSend(a2, "database")), "countOfEntities"}];
  *(*(*(a1 + 48) + 8) + 24) = result != *(a1 + 56);
  return result;
}

id sub_10017D4A4(uint64_t a1)
{
  [*(a1 + 32) _handleLoadQueueFinish:*(a1 + 40)];
  v2 = *(a1 + 40);

  return [v2 setCompletionBlock:0];
}

uint64_t sub_10017D57C(uint64_t a1, void *a2)
{
  v3 = [a2 database];
  v4 = [*(a1 + 32) accountIdentifier];
  v5 = objc_alloc_init(NSMutableSet);
  v6 = objc_alloc_init(NSMutableSet);
  v7 = objc_alloc_init(NSMutableDictionary);
  v58 = v4;
  v62 = v3;
  v8 = [*(a1 + 40) _preorderQueryWithAccountID:v4 database:v3];
  v79[0] = @"kind";
  v79[1] = @"store_preorder_id";
  v72[0] = _NSConcreteStackBlock;
  v72[1] = 3221225472;
  v72[2] = sub_10017DCA8;
  v72[3] = &unk_100329AE8;
  obj = v6;
  v72[4] = v6;
  v72[5] = v5;
  v56 = v5;
  v72[6] = v7;
  [v8 enumeratePersistentIDsAndProperties:v79 count:2 usingBlock:v72];
  v61 = a1;
  v9 = [*(a1 + 32) preorderItems];
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v68 objects:v78 count:16];
  v59 = v7;
  if (v10)
  {
    v11 = v10;
    v12 = *v69;
    v57 = *v69;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v69 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v68 + 1) + 8 * i);
        v15 = [v14 preOrderIdentifier];
        if (v15)
        {
          v16 = [v7 objectForKey:v15];
          if (v16)
          {
            v17 = v16;
            v18 = +[SSLogConfig sharedDaemonConfig];
            if (!v18)
            {
              v18 = +[SSLogConfig sharedConfig];
            }

            LODWORD(v19) = [v18 shouldLog];
            if ([v18 shouldLogToDisk])
            {
              LODWORD(v19) = v19 | 2;
            }

            v20 = [v18 OSLogObject];
            if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
            {
              v19 = v19;
            }

            else
            {
              v19 &= 2u;
            }

            if (v19)
            {
              v21 = objc_opt_class();
              v74 = 138412546;
              v75 = v21;
              v76 = 2112;
              v77 = v17;
              LODWORD(v55) = 22;
              v22 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, v20, 1, "%@: Updating existing preorder: %@", &v74, v55);
              if (v22)
              {
                v23 = v22;
                v24 = [NSString stringWithCString:v22 encoding:4];
                free(v23);
                v53 = v24;
                SSFileLog();
              }
            }

            v25 = -[PreorderEntity initWithPersistentID:inDatabase:]([PreorderEntity alloc], "initWithPersistentID:inDatabase:", [v17 longLongValue], v62);
            [(PreorderEntity *)v25 setValuesWithItem:v14];
            [obj removeObject:v17];
          }

          else
          {
            v26 = v9;
            v25 = [PreorderEntity newValueDictionaryWithItem:v14];
            [(PreorderEntity *)v25 setObject:v58 forKey:@"store_account_id"];
            v27 = [[PreorderEntity alloc] initWithPropertyValues:v25 inDatabase:v62];
            v28 = +[SSLogConfig sharedDaemonConfig];
            if (!v28)
            {
              v28 = +[SSLogConfig sharedConfig];
            }

            v29 = [v28 shouldLog];
            if ([v28 shouldLogToDisk])
            {
              v29 |= 2u;
            }

            v30 = [v28 OSLogObject];
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = v29;
            }

            else
            {
              v31 = v29 & 2;
            }

            if (v31)
            {
              v32 = objc_opt_class();
              v33 = [(PreorderEntity *)v27 persistentID];
              v74 = 138412546;
              v75 = v32;
              v76 = 2048;
              v77 = v33;
              LODWORD(v55) = 22;
              v34 = _os_log_send_and_compose_impl(v31, 0, 0, 0, &_mh_execute_header, v30, 1, "%@: Adding new preorder: %lld", &v74, v55);
              if (v34)
              {
                v35 = v34;
                v36 = [NSString stringWithCString:v34 encoding:4];
                free(v35);
                v53 = v36;
                SSFileLog();
              }
            }

            if ([v14 itemKind])
            {
              [v56 addObject:{objc_msgSend(v14, "itemKind")}];
            }

            v7 = v59;
            v9 = v26;
            v12 = v57;
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v68 objects:v78 count:16];
    }

    while (v11);
  }

  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v37 = [obj countByEnumeratingWithState:&v64 objects:v73 count:{16, v53}];
  if (v37)
  {
    v38 = v37;
    v39 = *v65;
    do
    {
      for (j = 0; j != v38; j = j + 1)
      {
        if (*v65 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v41 = *(*(&v64 + 1) + 8 * j);
        v42 = -[PreorderEntity initWithPersistentID:inDatabase:]([PreorderEntity alloc], "initWithPersistentID:inDatabase:", [v41 longLongValue], v62);
        v43 = +[SSLogConfig sharedDaemonConfig];
        if (!v43)
        {
          v43 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v44) = [v43 shouldLog];
        if ([v43 shouldLogToDisk])
        {
          LODWORD(v44) = v44 | 2;
        }

        v45 = [v43 OSLogObject];
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v44 = v44;
        }

        else
        {
          v44 &= 2u;
        }

        if (v44)
        {
          v46 = objc_opt_class();
          v74 = 138412546;
          v75 = v46;
          v76 = 2112;
          v77 = v41;
          LODWORD(v55) = 22;
          v47 = _os_log_send_and_compose_impl(v44, 0, 0, 0, &_mh_execute_header, v45, 1, "%@: Pruning disappeared preorder: %@", &v74, v55);
          if (v47)
          {
            v48 = v47;
            v49 = [NSString stringWithCString:v47 encoding:4];
            free(v48);
            v54 = v49;
            SSFileLog();
          }
        }

        [(PreorderEntity *)v42 deleteFromDatabase];
      }

      v38 = [obj countByEnumeratingWithState:&v64 objects:v73 count:16];
    }

    while (v38);
  }

  v50 = *(v61 + 40);
  v51 = *(v50 + 16);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017DD40;
  block[3] = &unk_100327350;
  block[4] = v50;
  block[5] = v56;
  dispatch_async(v51, block);

  return 1;
}

uint64_t sub_10017DCA8(id *a1, uint64_t a2, void *a3)
{
  v8 = [[NSNumber alloc] initWithLongLong:a2];
  v5 = [a1[4] addObject:?];
  if (*a3)
  {
    v5 = [a1[5] addObject:?];
  }

  v6 = v8;
  if (a3[1])
  {
    v5 = [a1[6] setObject:v8 forKey:?];
    v6 = v8;
  }

  return _objc_release_x1(v5, v6);
}

void sub_10017DDF0(uint64_t a1)
{
  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 32) _clientForConnection:*(a1 + 40)]);
  xpc_release(*(a1 + 40));
  v2 = *(a1 + 48);

  xpc_release(v2);
}

void sub_10017DEF4(uint64_t a1)
{
  reply = xpc_dictionary_create_reply(*(a1 + 32));
  (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) _clientForConnection:*(a1 + 48)], reply);
  xpc_connection_send_message(*(a1 + 48), reply);
  xpc_release(reply);
  xpc_release(*(a1 + 48));
  v3 = *(a1 + 32);

  xpc_release(v3);
}

void sub_10017E4E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10017E500(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = v3;
  v6 = [v5 appState];
  if ([v6 isInstalled])
  {
    v7 = *(a1 + 48);
    v8 = *(*(*(a1 + 40) + 8) + 24);

    if (v8 < v7)
    {
      v9 = [SSPurchaseReceipt vppStateFlagsWithProxy:v5];
      v10 = [*(a1 + 32) _optionsWithVPPState:v9];
      if (v10)
      {
        [*(a1 + 32) _refreshReceiptForApplication:v5 withOptions:v10 vppState:v9 error:0];
        ++*(*(*(a1 + 40) + 8) + 24);
      }

      goto LABEL_19;
    }
  }

  else
  {
  }

  v11 = [v5 appState];
  v12 = [v11 isInstalled];

  if ((v12 & 1) == 0)
  {
    v10 = +[SSLogConfig sharedDaemonConfig];
    if (!v10)
    {
      v10 = +[SSLogConfig sharedConfig];
    }

    v13 = [v10 shouldLog];
    if ([v10 shouldLogToDisk])
    {
      LODWORD(v14) = v13 | 2;
    }

    else
    {
      LODWORD(v14) = v13;
    }

    v15 = [v10 OSLogObject];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v14 = v14;
    }

    else
    {
      v14 &= 2u;
    }

    if (v14)
    {
      v16 = objc_opt_class();
      v17 = v16;
      v18 = [v5 bundleIdentifier];
      v20 = 138543618;
      v21 = v16;
      v22 = 2114;
      v23 = v18;
      v19 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, v15, 16, "[%{public}@]: Skipping receipt refresh for non installed bundleID: %{public}@.", &v20, 22);

      if (!v19)
      {
LABEL_19:

        goto LABEL_20;
      }

      v15 = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      SSFileLog();
    }

    goto LABEL_19;
  }

LABEL_20:

  objc_autoreleasePoolPop(v4);
}

id sub_1001818DC(uint64_t a1, void *a2)
{
  v3 = +[CanceledPreorderEntity queryWithDatabase:predicate:](CanceledPreorderEntity, "queryWithDatabase:predicate:", [a2 database], 0);
  v7[0] = @"store_account_id";
  v7[1] = @"store_item_id";
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1001819C8;
  v5[3] = &unk_1003272D8;
  v6 = *(a1 + 32);
  return [v3 enumeratePersistentIDsAndProperties:v7 count:2 usingBlock:v5];
}

void sub_1001819C8(uint64_t a1, uint64_t a2, void *a3)
{
  if (*a3 && a3[1])
  {
    v6 = [[NSNumber alloc] initWithLongLong:a2];
    v5 = [*(a1 + 32) _newURLOperationWithItemID:a3[1] accountID:*a3];
    [*(a1 + 40) setObject:v5 forKey:v6];
  }
}

uint64_t sub_100181A74(uint64_t a1, void *a2)
{
  v2 = -[CanceledPreorderEntity initWithPersistentID:inDatabase:]([CanceledPreorderEntity alloc], "initWithPersistentID:inDatabase:", [*(a1 + 32) longLongValue], objc_msgSend(a2, "database"));
  [(CanceledPreorderEntity *)v2 deleteFromDatabase];

  return 1;
}

void sub_1001835BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100183630;
  v4[3] = &unk_100329108;
  v4[4] = v2;
  v4[5] = a2;
  dispatch_async(v3, v4);
}

id sub_100183630(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);
  v5 = *(a1 + 40);

  return [v4 _sendDidFinishWithResponseFlags:v5];
}

void sub_100183860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100183894(uint64_t a1)
{
  result = *(*(a1 + 32) + 136);
  *(*(*(a1 + 40) + 8) + 40) = result;
  return result;
}

void *sub_100183954(void *result)
{
  v1 = *(result[4] + 136);
  if (v1 != result[5])
  {
    v2 = result;

    result = [v2[5] copy];
    *(v2[4] + 136) = result;
  }

  return result;
}

id sub_100183A5C(void *a1)
{
  result = [*(a1[4] + 136) containsObject:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

void sub_100183ECC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = objc_alloc_init(SSVMediaSocialPostArtist);
  [v5 setIdentifier:*a3];
  [v5 setName:a3[1]];
  [*(a1 + 32) addObject:v5];
}

void sub_1001842F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [DirectUploadArtistEntity newEntityValuesWithMediaSocialArtist:a2];
  [v7 setObject:*(a1 + 32) forKey:@"upload_id"];
  v5 = [[NSNumber alloc] initWithUnsignedInteger:a3];
  [v7 setObject:v5 forKey:@"order_index"];
  if (*(a1 + 40))
  {
    [v7 addEntriesFromDictionary:v7];
  }

  v6 = [[DirectUploadArtistEntity alloc] initWithPropertyValues:v7 inDatabase:*(a1 + 48)];
  if (v6)
  {
    [*(a1 + 56) addObject:v6];
  }
}

void sub_100184A3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v7 = objc_alloc_init(SSVDirectUpload);
  if (*(a3 + 16))
  {
    if (*(a3 + 24))
    {
      v8 = [[NSDictionary alloc] initWithObjectsAndKeys:{*(a3 + 24), NSLocalizedDescriptionKey, 0}];
    }

    else
    {
      v8 = 0;
    }

    v9 = [[NSError alloc] initWithDomain:*(a3 + 16) code:objc_msgSend(*(a3 + 8) userInfo:{"integerValue"), v8}];
    [v7 setError:v9];
  }

  [v7 setCategoryName:*a3];
  [v7 setExplicitContent:{objc_msgSend(*(a3 + 32), "BOOLValue")}];
  [v7 setPersistentIdentifier:a2];
  [v7 setState:{sub_100184C00(objc_msgSend(*(a3 + 40), "integerValue"))}];
  [v7 setSubtitle:*(a3 + 48)];
  if (*(a3 + 56))
  {
    v10 = [[NSURL alloc] initWithString:*(a3 + 56)];
    [v7 setThumbnailImageURL:v10];
  }

  [v7 setTitle:*(a3 + 64)];
  [v7 _setUploadKind:*(a3 + 72)];
  [v7 setUTI:*(a3 + 80)];
  (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v6);
}

unint64_t sub_100184C00(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

id sub_100185A9C(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F78 = result;
  return result;
}

id sub_100185B38(uint64_t a1)
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100185BAC;
  v3[3] = &unk_10032A748;
  v1 = *(a1 + 32);
  v3[4] = *(a1 + 40);
  return [v1 _cancelErrorsPassingTest:v3];
}

void sub_100185C44(uint64_t a1)
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if ([v8 canCoalesceWithError:v2])
        {
          [v8 addDownloadIdentifiers:{objc_msgSend(v2, "downloadIdentifiers")}];
          v2 = v8;
          goto LABEL_11;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:
  v9 = [v2 copyUserNotification];
  if (v9)
  {
    v10 = v9;
    if (v2 == *(a1 + 32))
    {
      [*(*(a1 + 40) + 16) addObject:v2];
    }

    else
    {
      v11 = [v2 _notification];
      if (v11)
      {
        [+[UserNotificationCenter defaultCenter](UserNotificationCenter "defaultCenter")];
LABEL_17:

        return;
      }
    }

    [*(a1 + 40) _scheduleErrorDisplay:v2];
    goto LABEL_17;
  }
}

void sub_100186138(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) performActionForResponseFlags:a2];
  v3 = *(a1 + 40);
  v4 = *(v3 + 8);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1001861C8;
  v6[3] = &unk_100327350;
  v5 = *(a1 + 32);
  v6[4] = v3;
  v6[5] = v5;
  dispatch_async(v4, v6);
}

uint64_t sub_100186E54(uint64_t a1, void *a2)
{
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = *(*(a1 + 32) + 8);
  result = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v12;
    v7 = SSDownloadPhaseCanceled;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        v10 = objc_autoreleasePoolPush();
        LODWORD(v9) = [a2 finishDownloadWithID:objc_msgSend(v9 finalPhase:"longLongValue") updatePipeline:{v7, 0}];
        objc_autoreleasePoolPop(v10);
        if (!v9)
        {
          return 0;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }

    return 1;
  }

  return result;
}

id sub_1001881DC(uint64_t a1)
{
  result = objc_alloc_init(objc_opt_class());
  qword_100383F88 = result;
  return result;
}

void sub_1001882F8(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = *(a1 + 40);
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 16) indexOfObjectIdenticalTo:*(*(&v12 + 1) + 8 * i)];
        if (v8 != 0x7FFFFFFFFFFFFFFFLL)
        {
          [*(*(a1 + 32) + 16) removeObjectAtIndex:v8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  if (v2 >= 1 && ![*(*(a1 + 32) + 16) count])
  {
    [+[Daemon daemon](Daemon "daemon")];
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100188500;
  block[3] = &unk_100327378;
  block[4] = *(a1 + 40);
  dispatch_async(&_dispatch_main_q, block);
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100188510;
  v10[3] = &unk_100327378;
  v10[4] = *(a1 + 40);
  dispatch_async(global_queue, v10);
}

id sub_100188510(uint64_t a1)
{
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (result)
  {
    v3 = result;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [*(*(&v7 + 1) + 8 * v5) completionBlock];
        if (v6)
        {
          v6[2](v6, 1431196227);
        }

        v5 = v5 + 1;
      }

      while (v3 != v5);
      result = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
      v3 = result;
    }

    while (result);
  }

  return result;
}

id sub_10018875C(uint64_t a1)
{
  [*(a1 + 32) setCompletionBlock:*(a1 + 48)];
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);

  return [v2 _showPreparedNotification:v3];
}

id sub_100188914(void *a1)
{
  *(*(a1[6] + 8) + 40) = [[UserNotification alloc] initWithDictionary:a1[7] options:a1[8] completionBlock:a1[5]];
  v2 = a1[4];
  v3 = *(*(a1[6] + 8) + 40);

  return [v2 _showPreparedNotification:v3];
}

void sub_100188A70(uint64_t a1)
{
  [*(a1 + 32) updateWithDictionary:*(a1 + 40) options:*(a1 + 48)];
  v2 = *(a1 + 40);

  CFRelease(v2);
}

id sub_100188B8C(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) count];
  v3 = v2;
  while (v3-- >= 1)
  {
    v5 = [*(*(a1 + 32) + 16) objectAtIndex:v3];
    if ([v5 userNotification] == *(a1 + 40))
    {
      v6 = v5;
      [*(*(a1 + 32) + 16) removeObjectAtIndex:v3];
      if (v6)
      {
        v7 = [v6 completionBlock];
        if (v7)
        {
          v8 = v7;
          global_queue = dispatch_get_global_queue(0, 0);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100188D24;
          block[3] = &unk_10032A850;
          v10 = *(a1 + 48);
          block[4] = v8;
          block[5] = v10;
          dispatch_async(global_queue, block);
        }

        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_100188D38;
        v13[3] = &unk_100327378;
        v13[4] = v6;
        dispatch_async(&_dispatch_main_q, v13);
      }

      break;
    }
  }

  v11 = +[Daemon daemon];
  result = [v11 endShowingDialog];
  if (v2 >= 1)
  {
    result = [*(*(a1 + 32) + 16) count];
    if (!result)
    {
      return [v11 releaseKeepAliveAssertion:@"com.apple.itunesstored.UserNotificationCenter"];
    }
  }

  return result;
}

id sub_100188E98(uint64_t a1)
{
  [*(a1 + 32) beginShowingDialog];
  v2 = *(a1 + 40);

  return [v2 show];
}

id sub_1001890D4(uint64_t a1, uint64_t a2)
{
  v4 = +[UserNotificationCenter defaultCenter];

  return [v4 _finishUserNotification:a1 withResponseFlags:a2];
}

void sub_10018B52C(id a1)
{
  v3 = [[NSArray alloc] initWithObjects:{CPSharedResourcesDirectory(), @"Media", @"Downloads", 0}];
  v1 = [NSString pathWithComponents:v3];
  v2 = qword_100383F98;
  qword_100383F98 = v1;
}

void sub_10018B664(uint64_t a1)
{
  v27 = 0;
  v1 = container_system_path_for_identifier();
  if (v1)
  {
    v6 = v1;
    v7 = [[NSString alloc] initWithCString:v1 encoding:4];
    v8 = [[NSArray alloc] initWithObjects:{v7, @"Library", @"Caches", @"Scratch", 0}];
    v9 = [NSString pathWithComponents:v8];
    v10 = qword_100383FA8;
    qword_100383FA8 = v9;

    if (![qword_100383FA8 length])
    {
      goto LABEL_32;
    }

    v11 = objc_opt_new();
    [v11 createDirectoryAtPath:qword_100383FA8 withIntermediateDirectories:1 attributes:0 error:0];

    v12 = open([qword_100383FA8 UTF8String], 0x1000000);
    if (v12)
    {
      v13 = v12;
      fcntl(v12, 64, 4);
      close(v13);
    }

    v14 = [NSURL fileURLWithPath:qword_100383FA8 isDirectory:1];
    v15 = [NSNumber numberWithBool:1];
    v26 = 0;
    v16 = [v14 setResourceValue:v15 forKey:NSURLIsExcludedFromBackupKey error:&v26];
    v17 = v26;

    if (v16)
    {
LABEL_31:

LABEL_32:
      free(v6);
      goto LABEL_33;
    }

    v18 = +[SSLogConfig sharedDaemonConfig];
    if (!v18)
    {
      v18 = +[SSLogConfig sharedConfig];
    }

    v19 = [v18 shouldLog];
    if ([v18 shouldLogToDisk])
    {
      LODWORD(v20) = v19 | 2;
    }

    else
    {
      LODWORD(v20) = v19;
    }

    v21 = [v18 OSLogObject];
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v20 = v20;
    }

    else
    {
      v20 &= 2u;
    }

    if (v20)
    {
      v22 = objc_opt_class();
      v28 = 138412546;
      v29 = v22;
      v30 = 2112;
      v31 = v17;
      v23 = v22;
      LODWORD(v25) = 22;
      v24 = _os_log_send_and_compose_impl(v20, 0, 0, 0, &_mh_execute_header, v21, 16, "[%@]: Could not exclude path from backup: %@", &v28, v25);

      if (!v24)
      {
LABEL_30:

        goto LABEL_31;
      }

      v21 = [NSString stringWithCString:v24 encoding:4];
      free(v24);
      SSFileLog();
    }

    goto LABEL_30;
  }

  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  v2 = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v3) = v2 | 2;
  }

  else
  {
    LODWORD(v3) = v2;
  }

  v8 = [v7 OSLogObject];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
  {
    v3 = v3;
  }

  else
  {
    v3 &= 2u;
  }

  if (!v3)
  {
    goto LABEL_33;
  }

  v28 = 138412546;
  v29 = objc_opt_class();
  v30 = 2048;
  v31 = v27;
  v4 = v29;
  v5 = _os_log_send_and_compose_impl(v3, 0, 0, 0, &_mh_execute_header, v8, 17, "[%@]: Could not look up path to scratch container: %llu", &v28, 22);

  if (v5)
  {
    v8 = [NSString stringWithCString:v5 encoding:4];
    free(v5);
    SSFileLog();
LABEL_33:
  }
}