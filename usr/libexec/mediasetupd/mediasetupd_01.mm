void sub_10003045C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000304CC()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030508()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1000305C4()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030634(uint64_t a1)
{
  v1 = [*(a1 + 48) zoneName];
  sub_1000045A8();
  sub_100030044();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1000306C4()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030700()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_10003073C()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030778()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_1000307E8(uint64_t a1, uint64_t a2, os_log_t log)
{
  v3 = *(a1 + 32);
  v4 = 136315650;
  v5 = "[CKDatabase(MSDCloudDatabase) _handleRecordZonesChanged:deletedRecordZones:]_block_invoke";
  v6 = 2112;
  v7 = v3;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s Error updating records for recordZoneID %@, %@", &v4, 0x20u);
}

void sub_10003090C(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to create MSDDefaultsInfo object", buf, 2u);
}

void sub_10003094C(void *a1)
{
  v1 = [a1 recordID];
  v2 = [v1 recordName];
  sub_1000045A8();
  sub_100030044();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
}

void sub_1000309F0()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030A2C()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030A68()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030AA4()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030B94(void *a1)
{
  v1 = [a1 zoneName];
  sub_1000045A8();
  sub_100030044();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_100030C20()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030C5C()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030CCC(uint64_t a1)
{
  [*(a1 + 32) databaseScope];
  v1 = CKDatabaseScopeString();
  sub_1000045A8();
  sub_100030044();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

void sub_100030D78()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030DE8()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030E58()
{
  sub_100002F28();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_100030E94()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030F04()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100030F74()
{
  sub_1000045A8();
  sub_10000459C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

id sub_100030FE4(uint64_t a1)
{
  if (qword_100059AE0 != -1)
  {
    sub_10003106C();
  }

  v2 = qword_100059AD8;

  return v2;
}

void sub_100031028(id a1)
{
  qword_100059AD8 = os_log_create("com.apple.mediasetupd", "log");

  _objc_release_x1();
}

void sub_1000310C4(id a1)
{
  qword_100059AF0 = dispatch_queue_create("Logging Queue", 0);

  _objc_release_x1();
}

void sub_100031320(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (*(a1 + 40) >= 3600.0)
  {
    v3 = *(a1 + 40);
  }

  else
  {
    v3 = 3600.0;
  }

  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100031438;
  v7[3] = &unk_1000527D8;
  objc_copyWeak(&v8, (a1 + 32));
  v4 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v7 block:v3];
  v5 = WeakRetained[2];
  WeakRetained[2] = v4;

  [WeakRetained[1] timeIntervalSinceNow];
  if (*(a1 + 40) < -v6)
  {
    [WeakRetained[2] fire];
  }

  objc_destroyWeak(&v8);
}

void sub_100031438(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _fileMetrics];
}

uint64_t sub_10003155C(uint64_t a1)
{
  *(*(a1 + 32) + 56) = objc_retainBlock(*(a1 + 40));

  return _objc_release_x1();
}

void sub_100031960(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  [v8 doubleValue];
  v10 = v9;
  v11 = [*(a1 + 40) objectForKeyedSubscript:v7];
  v12 = v10 * [v11 unsignedIntegerValue];

  [v6 doubleValue];
  v14 = v13;

  v15 = [*(a1 + 48) objectForKeyedSubscript:v7];
  v16 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v15 unsignedIntegerValue] + 1);
  [*(a1 + 48) setObject:v16 forKeyedSubscript:v7];

  v17 = [*(a1 + 48) objectForKeyedSubscript:v7];
  v18 = (v12 + v14) / [v17 unsignedIntegerValue];

  v19 = [NSNumber numberWithDouble:v18];
  [*(a1 + 56) setObject:v19 forKeyedSubscript:v7];
}

void sub_100031ABC(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  v8 = [v5 objectForKeyedSubscript:v7];
  v9 = [v8 unsignedIntegerValue];

  v10 = [v6 unsignedIntegerValue];
  v11 = [NSNumber numberWithUnsignedInteger:&v9[v10]];
  [*(a1 + 40) setObject:v11 forKeyedSubscript:v7];
}

void sub_100031B7C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v7];

  if (v6)
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }
}

void sub_100031C94(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 32);
  v3 = objc_opt_new();
  v4 = *(a1 + 32);
  v5 = *(v4 + 32);
  *(v4 + 32) = v3;

  v6 = *(*(a1 + 32) + 48);
  v7 = objc_opt_new();
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  *(v8 + 48) = v7;

  v10 = objc_opt_new();
  v11 = *(a1 + 32);
  v12 = *(v11 + 40);
  *(v11 + 40) = v10;

  v13 = [*(a1 + 32) performanceLog];

  if (v13)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100031E3C;
    v19[3] = &unk_1000528C8;
    v19[4] = *(a1 + 32);
    [v2 enumerateKeysAndObjectsUsingBlock:v19];
  }

  v14 = [*(a1 + 32) occuranceLog];

  if (v14)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_100032004;
    v18[3] = &unk_1000528C8;
    v18[4] = *(a1 + 32);
    [v6 enumerateKeysAndObjectsUsingBlock:v18];
  }

  v15 = +[NSDate date];
  v16 = *(a1 + 32);
  v17 = *(v16 + 8);
  *(v16 + 8) = v15;

  [*(a1 + 32) _saveAnalyticsData];
}

void sub_100031E3C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100031F68;
  v16 = &unk_100052878;
  v17 = *(a1 + 32);
  v18 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:&v13];

  v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{v6, v13, v14, v15, v16, v17}];

  [v8 setValuesForKeysWithDictionary:v9];
  v10 = *(a1 + 32);
  v11 = v10[7];
  v12 = [v10 performanceLog];
  (*(v11 + 16))(v11, v12, v8);
}

void sub_100031F68(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(*(a1 + 32) + 88);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = v8;
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
}

void sub_100032004(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = +[NSMutableDictionary dictionary];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100032130;
  v16 = &unk_100052878;
  v17 = *(a1 + 32);
  v18 = v7;
  v8 = v7;
  [v5 enumerateKeysAndObjectsUsingBlock:&v13];

  v9 = [*(*(a1 + 32) + 24) objectForKeyedSubscript:{v6, v13, v14, v15, v16, v17}];

  [v8 setValuesForKeysWithDictionary:v9];
  v10 = *(a1 + 32);
  v11 = v10[7];
  v12 = [v10 occuranceLog];
  (*(v11 + 16))(v11, v12, v8);
}

void sub_100032130(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = *(*(a1 + 32) + 88);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v8];
  if (!v7)
  {
    v7 = v8;
  }

  [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
}

void sub_1000323E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000323F8(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = a3;
  if ((objc_opt_isKindOfClass() & 1) == 0 || (objc_opt_isKindOfClass() & 1) == 0)
  {
    *(*(a1[4] + 8) + 24) = 0;
    *a4 = 1;
  }
}

void sub_1000329C4(uint64_t a1)
{
  if (![*(*(a1 + 32) + 8) count] && (objc_msgSend(*(a1 + 40), "isEqualToString:", @"Start") & 1) == 0)
  {
    NSLog(@"Warning: CMSLoggerSession should start with kMSLoggingEventTypeStart. We have %@. It will be insert for you %s", *(a1 + 40), "[CMSLoggingSession recordEvent:occuredAt:]_block_invoke");
    v2 = [[MSLoggingEvent alloc] initForEventType:@"Start" atTimestamp:*(a1 + 48)];
    [*(*(a1 + 32) + 8) addObject:v2];
  }

  v3 = [[MSLoggingEvent alloc] initForEventType:*(a1 + 40) atTimestamp:*(a1 + 48)];
  [*(*(a1 + 32) + 8) addObject:v3];
}

void sub_100032F80(uint64_t a1)
{
  v4 = [*(a1 + 32) eventDurations];
  v2 = [*(a1 + 32) eventOccurance];
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  [WeakRetained _sumbitFromSessionType:*(*(a1 + 32) + 24) withMetadata:*(*(a1 + 32) + 32) withEventDurations:v4 withEventOccurance:v2];
}