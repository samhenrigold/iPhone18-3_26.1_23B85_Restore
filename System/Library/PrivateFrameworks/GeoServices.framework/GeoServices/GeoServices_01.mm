void sub_10003BBD0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10003BBE8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(*(a1 + 56) + 8);
  obj = *(v6 + 40);
  v7 = [v4 bindBlobParameter:"@identifier" toValue:v5 inStatement:a2 error:&obj];
  objc_storeStrong((v6 + 40), obj);
  if (!v7)
  {
    return 0;
  }

  v8 = *(a1 + 32);
  v9 = *(a1 + 72);
  v10 = *(*(a1 + 56) + 8);
  v28 = *(v10 + 40);
  v11 = [v8 bindIntParameter:"@width" toValue:v9 inStatement:a2 error:&v28];
  objc_storeStrong((v10 + 40), v28);
  if (!v11)
  {
    return 0;
  }

  v12 = *(a1 + 32);
  v13 = *(a1 + 76);
  v14 = *(*(a1 + 56) + 8);
  v27 = *(v14 + 40);
  v15 = [v12 bindIntParameter:"@height" toValue:v13 inStatement:a2 error:&v27];
  objc_storeStrong((v14 + 40), v27);
  if (!v15)
  {
    return 0;
  }

  v16 = *(a1 + 32);
  v17 = *(a1 + 64);
  v18 = *(*(a1 + 56) + 8);
  v26 = *(v18 + 40);
  v19 = [v16 bindInt64Parameter:"@data_size" toValue:v17 inStatement:a2 error:&v26];
  objc_storeStrong((v18 + 40), v26);
  if (!v19)
  {
    return 0;
  }

  v20 = *(a1 + 32);
  v21 = *(a1 + 48);
  v22 = *(*(a1 + 56) + 8);
  v25 = *(v22 + 40);
  v23 = [v20 bindBlobParameter:"@data" toValue:v21 inStatement:a2 error:&v25];
  objc_storeStrong((v22 + 40), v25);
  return v23;
}

id sub_10003BE24(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _shrinkBySize:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 16);

  return [v2 vacuum];
}

id sub_10003BF3C(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) _shrinkToSize:*(a1 + 48)];
  v2 = *(*(a1 + 32) + 16);

  return [v2 vacuum];
}

void sub_10003C038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003C254(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v24 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C284(void *a1, sqlite3_stmt *a2)
{
  do
  {
    if (sqlite3_step(a2) != 100)
    {
      break;
    }

    v4 = [*(a1[4] + 16) int64ForColumn:0 inStatment:a2];
    ++*(*(a1[5] + 8) + 24);
    *(*(a1[6] + 8) + 24) += v4;
  }

  while (a1[7] + *(*(a1[6] + 8) + 24) <= a1[8]);
  return 1;
}

id sub_10003C314()
{
  if (qword_1000960D8 != -1)
  {
    dispatch_once(&qword_1000960D8, &stru_100082FE0);
  }

  v1 = qword_1000960D0;

  return v1;
}

void sub_10003C38C(id a1)
{
  qword_1000960D0 = os_log_create("com.apple.GeoServices", "ImageServicePersistence");

  _objc_release_x1();
}

void sub_10003C684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v22 - 112), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003C6B4(void *a1, sqlite3_stmt *a2)
{
  if (![*(a1[4] + 16) bindInt64Parameter:"@timestamp" toValue:a1[7] inStatement:a2 error:0] || sqlite3_step(a2) != 100)
  {
    return 0;
  }

  *(*(a1[5] + 8) + 24) = [*(a1[4] + 16) intForColumn:0 inStatment:a2];
  v4 = 1;
  *(*(a1[6] + 8) + 24) = [*(a1[4] + 16) int64ForColumn:1 inStatment:a2];
  return v4;
}

BOOL sub_10003C818(uint64_t a1, sqlite3_stmt *a2)
{
  v4 = sqlite3_step(a2);
  if (v4 == 100)
  {
    *(*(a1 + 32) + 32) = [*(*(a1 + 32) + 16) int64ForColumn:0 inStatment:a2];
    *(*(a1 + 32) + 40) = [*(*(a1 + 32) + 16) int64ForColumn:1 inStatment:a2];
  }

  return v4 == 100;
}

void sub_10003C928(uint64_t a1)
{
  [*(*(a1 + 32) + 16) tearDown];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;
}

void sub_10003CD54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_10003CD78(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _setup:v3];

  return v5;
}

uint64_t sub_10003CDE0(uint64_t a1)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v1 = qword_1000960E0;
  v6 = qword_1000960E0;
  if (!qword_1000960E0)
  {
    v7 = *off_100083078;
    v8 = *off_100083088;
    v9 = 0;
    v4[3] = _sl_dlopen();
    qword_1000960E0 = v4[3];
    v1 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v1;
}

void sub_10003CEF4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10003CF0C(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  qword_1000960E0 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_10003CFA4()
{
  v2 = 0;
  v0 = sub_10003CDE0(&v2);
  v1 = v2;
  if (!v0)
  {
    v1 = abort_report_np("%s", v2);
    goto LABEL_5;
  }

  if (v2)
  {
LABEL_5:
    free(v1);
  }
}

void sub_10003CFF4(uint64_t a1)
{
  sub_10003CFA4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LSApplicationWorkspace");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000960E8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "LSApplicationWorkspace");
    sub_10003D064(v2);
  }
}

void sub_10003D064(uint64_t a1)
{
  sub_10003CFA4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LSRecord");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_1000960F0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = abort_report_np("Unable to find class %s", "LSRecord");
    [(GEOOfflinePeriodicTelemetryProvider *)v2 .cxx_destruct];
  }
}

void sub_10003D1AC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 _geo_filtered:&stru_100083110];
    if ([v7 count])
    {
      v8 = +[GEOMapDataSubscriptionManager sharedManager];
      v9 = *(*(a1 + 32) + 8);
      v14[0] = _NSConcreteStackBlock;
      v14[1] = 3221225472;
      v14[2] = sub_10003D620;
      v14[3] = &unk_100083138;
      v10 = *(a1 + 40);
      v11 = *(a1 + 32);
      v16 = v10;
      v14[4] = v11;
      v7 = v7;
      v15 = v7;
      [v8 _calculateTotalSizeOfOfflineSubscriptionsWithCallbackQueue:v9 completionHandler:v14];
    }

    else
    {
      sub_10003D38C(*(a1 + 32), 0, 0);
      (*(*(a1 + 40) + 16))();
    }

    goto LABEL_5;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    v13 = *(*(a1 + 32) + 8);
    if (v13)
    {
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_10003D378;
      block[3] = &unk_100083BC0;
      v19 = v12;
      v18 = v6;
      dispatch_async(v13, block);

      v7 = v19;
LABEL_5:
    }
  }
}

void sub_10003D38C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    BOOL = GEOConfigGetBOOL();
    v6 = GEOConfigGetBOOL();
    if (qword_100096100 != -1)
    {
      dispatch_once(&qword_100096100, &stru_1000831A0);
    }

    v7 = qword_1000960F8;
    if (os_log_type_enabled(qword_1000960F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134218752;
      *&buf[4] = a2;
      *&buf[12] = 2048;
      *&buf[14] = a3;
      *&buf[22] = 1024;
      LODWORD(v22) = BOOL;
      WORD2(v22) = 1024;
      *(&v22 + 6) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEBUG, "[Offline] Reporting subscription count: %llu, consumedDiskSpace: %{bytes}llu, automaticUpdatesEnabled: %i, optimizeStorageEnabled: %i", buf, 0x22u);
    }

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10003D72C;
    v14[3] = &unk_100083180;
    v14[4] = a2;
    v14[5] = a3;
    v15 = BOOL;
    v16 = v6;
    v8 = @"com.apple.GeoServices.OfflineRegionsStatistics";
    v9 = v14;
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v10 = off_100096068;
    v20 = off_100096068;
    if (!off_100096068)
    {
      *buf = _NSConcreteStackBlock;
      *&buf[8] = 3221225472;
      *&buf[16] = sub_1000266A0;
      *&v22 = &unk_1000830D0;
      *(&v22 + 1) = &v17;
      v11 = sub_10002653C();
      v12 = dlsym(v11, "AnalyticsSendEventLazy");
      *(*(*(&v22 + 1) + 8) + 24) = v12;
      off_100096068 = *(*(*(&v22 + 1) + 8) + 24);
      v10 = v18[3];
    }

    _Block_object_dispose(&v17, 8);
    if (!v10)
    {
      v13 = dlerror();
      abort_report_np("%s", v13);
      __break(1u);
    }

    v10(@"com.apple.GeoServices.OfflineRegionsStatistics", v9);
  }
}

void sub_10003D600(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10003D620(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = *(a1 + 48);
    if (v6)
    {
      v7 = *(*(a1 + 32) + 8);
      if (v7)
      {
        v8[0] = _NSConcreteStackBlock;
        v8[1] = 3221225472;
        v8[2] = sub_10003D718;
        v8[3] = &unk_100083BC0;
        v10 = v6;
        v9 = v5;
        dispatch_async(v7, v8);
      }
    }
  }

  else
  {
    sub_10003D38C(*(a1 + 32), [*(a1 + 40) count], a2);
    (*(*(a1 + 48) + 16))();
  }
}

id sub_10003D72C(uint64_t a1)
{
  v8[0] = @"regionCount";
  v2 = [NSNumber numberWithUnsignedInteger:*(a1 + 32)];
  v9[0] = v2;
  v8[1] = @"consumedDiskSpace";
  v3 = [NSNumber numberWithUnsignedLongLong:*(a1 + 40)];
  v9[1] = v3;
  v8[2] = @"automaticUpdatesEnabled";
  v4 = [NSNumber numberWithBool:*(a1 + 48)];
  v9[2] = v4;
  v8[3] = @"optimizeStorageEnabled";
  v5 = [NSNumber numberWithBool:*(a1 + 49)];
  v9[3] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:4];

  return v6;
}

void sub_10003D868(id a1)
{
  qword_1000960F8 = os_log_create("com.apple.GeoServices", "PeriodicTelemetry");

  _objc_release_x1();
}

BOOL sub_10003D8AC(id a1, GEOMapDataSubscription *a2)
{
  v2 = a2;
  v3 = ([(GEOMapDataSubscription *)v2 dataTypes]& 0x400) != 0 && [(GEOMapDataSubscription *)v2 policy]== 1;

  return v3;
}

id sub_10003DFCC()
{
  if (qword_100096110 != -1)
  {
    dispatch_once(&qword_100096110, &stru_100083238);
  }

  v1 = qword_100096108;

  return v1;
}

void sub_10003E020(id a1)
{
  qword_100096108 = os_log_create("com.apple.GeoServices", "URLShortener");

  _objc_release_x1();
}

void sub_10003E6D0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = sub_10003DFCC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478595;
    v12 = v8;
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2113;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Lengthen result: %{private}@ - %{private, mask.hash}@ - %{public}@", &v11, 0x2Au);
  }

  [*(a1 + 32) requestCompleted:v9];
  [*(a1 + 40) _processLengthenResponse:v8 data:v7 error:v9 completion:*(a1 + 48)];
}

void sub_10003EACC(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    v17 = 1752392040;
    v18 = 2113;
    *buf = 141558787;
    if (a3)
    {
      v10 = "YES";
    }

    v19 = v7;
    v20 = 2081;
    v21 = v10;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Lengthened URL: %{private, mask.hash}@ wasCached: %{private}s error: %{public}@", buf, 0x2Au);
  }

  [*(a1 + 32) setUrl:v7];
  [*(a1 + 32) setError:v8];
  global_queue = geo_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003ED88;
  block[3] = &unk_1000838C8;
  v15 = *(a1 + 32);
  dispatch_async(global_queue, block);

  if (v7 && (a3 & 1) == 0 && *(a1 + 52) == 1)
  {
    v12 = +[GEOPDPlaceCache sharedCache];
    v13 = [*(a1 + 40) url];
    [v12 storeShortMapURL:v13 longMapsURL:v7];
  }
}

void sub_10003ECC0(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _expandURL:*(a1 + 40) asyncCompletion:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [NSError GEOErrorWithCode:-10 reason:@"Invalid options"];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

void sub_10003F0B8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  [*(a1 + 32) requestCompleted:v9];
  v10 = sub_10003DFCC();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = 138478595;
    v12 = v8;
    v13 = 2160;
    v14 = 1752392040;
    v15 = 2113;
    v16 = v7;
    v17 = 2114;
    v18 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEBUG, "Shorten result: %{private}@ - %{private, mask.hash}@ - %{public}@", &v11, 0x2Au);
  }

  [*(a1 + 40) _processShortenResponse:v8 data:v7 error:v9 completion:*(a1 + 48)];
}

void sub_10003F4B4(uint64_t a1, void *a2, int a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  v9 = sub_10003DFCC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = "NO";
    v17 = 1752392040;
    v18 = 2113;
    *buf = 141558787;
    if (a3)
    {
      v10 = "YES";
    }

    v19 = v7;
    v20 = 2081;
    v21 = v10;
    v22 = 2114;
    v23 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Shortened URL: %{private, mask.hash}@ wasCached: %{private}s error: %{public}@", buf, 0x2Au);
  }

  [*(a1 + 32) setUrl:v7];
  [*(a1 + 32) setError:v8];
  global_queue = geo_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003F770;
  block[3] = &unk_1000838C8;
  v15 = *(a1 + 32);
  dispatch_async(global_queue, block);

  if (v7 && (a3 & 1) == 0 && *(a1 + 52) == 1)
  {
    v12 = +[GEOPDPlaceCache sharedCache];
    v13 = [*(a1 + 40) url];
    [v12 storeShortMapURL:v7 longMapsURL:v13];
  }
}

void sub_10003F6A8(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    (*(*(a1 + 48) + 16))();
  }

  else if (*(a1 + 56) == 1)
  {
    [*(a1 + 32) _shortenURL:*(a1 + 40) asyncCompletion:*(a1 + 48)];
  }

  else
  {
    v3 = *(a1 + 48);
    v4 = [NSError GEOErrorWithCode:-10 reason:@"Invalid options"];
    (*(v3 + 16))(v3, 0, 0, v4);
  }
}

id sub_10003FD64(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (xpc_dictionary_get_data(v4, "mcfg", 0) && ([v3 hasEntitlement:@"com.apple.geoservices.custom-manifest-configuration"] & 1) == 0)
  {
    v8 = GEOGetTileLoadingLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v9 = [v3 bundleIdentifier];
      v11 = 138543362;
      v12 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_FAULT, "Un-entitled process %{public}@ is trying to set a custom manifest configuration", &v11, 0xCu);
    }

    v7 = [GEOTileLoader modernLoaderForResourceManifestConfiguration:0 locale:0];
  }

  else
  {
    objc_opt_class();
    v5 = GEODecodeXPCValue();
    v6 = sub_100002560(v4);
    v7 = [GEOTileLoader modernLoaderForResourceManifestConfiguration:v5 locale:v6];
  }

  return v7;
}

BOOL sub_10003FF00(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6, double a7)
{
  v13 = a5;
  v14 = a3;
  v15 = objc_alloc_init(GEOTileEnumeration);
  v16 = [NSData dataWithBytes:a2 length:16];
  [v15 setKey:v16];

  if (*(a1 + 40))
  {
    v17 = v14;
  }

  else
  {
    v17 = 0;
  }

  [v15 setData:v17];

  [v15 setCurrent:a4];
  [v15 setETag:v13];

  [v15 setOriginalLoadReason:a6];
  [v15 setAge:a7];
  v18 = xpc_dictionary_create(0, 0, 0);
  [v15 encodeToXPCDictionary:v18];
  v19 = xpc_connection_send_message_with_reply_sync(*(a1 + 32), v18);
  v20 = xpc_get_type(v19) == &_xpc_type_dictionary && xpc_dictionary_get_BOOL(v19, "cont");

  return v20;
}

void sub_100040E98(uint64_t a1, uint64_t value)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "sz", value);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  xpc_connection_send_message(v3, v4);
}

void sub_100041050(uint64_t a1, uint64_t value)
{
  xpc_dictionary_set_uint64(*(a1 + 32), "sz", value);
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  xpc_connection_send_message(v3, v4);
}

void sub_100042D04(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void *a6)
{
  v20 = a5;
  v10 = a6;
  v11 = a3;
  if ((GEOTileKeyEquals() & 1) == 0)
  {
    v12 = GEOStringFromTileKey();
    v13 = GEOStringFromTileKey();
    NSLog(@"Asked to load key %@ and instead got back %@. See <rdar://problem/13307083>", v12, v13);
  }

  if ((*(a1 + 88) & 1) == 0 && (GEOTileKeyIsOffline() & 1) == 0)
  {
    if (v10)
    {
      v14 = [v10 objectForKeyedSubscript:GEOTileLoadResultSourceKey];
      if ([v14 integerValue] == 2)
      {

LABEL_10:
        GEOMachAbsoluteTimeGetCurrent();
        v16 = v15;
        v17 = +[GEOOfflineStateManager shared];
        [v17 reportTileResponse:a2 usedInterfaces:0 forCohortId:*(a1 + 32) duration:v20 error:v16 - *(a1 + 64)];

        goto LABEL_11;
      }
    }

    if (!v20)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_11:
  v18 = [v10 objectForKeyedSubscript:GEOTileLoadResultIsPreliminaryKey];
  v19 = [v18 BOOLValue];

  [*(a1 + 40) _receivedTile:v11 error:v20 info:v10 forKey:a2 forPeer:*(a1 + 48)];
  if ((v19 & 1) == 0)
  {
    dispatch_group_leave(*(a1 + 56));
  }
}

void sub_100042EA8(void *a1)
{
  v2 = [*(a1[4] + 8) objectForKeyedSubscript:a1[5]];
  [v2 removeObject:a1[6]];

  v3 = a1[7];
  v4 = a1[8];

  xpc_connection_send_message(v3, v4);
}

void sub_100043198(id a1)
{
  qword_100096120 = objc_alloc_init(_GEOImageServiceRequestConfig);

  _objc_release_x1();
}

void sub_100043334(void *a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  if (v10)
  {
    v7 = a1[5];
    if (!v7)
    {
      goto LABEL_9;
    }

    v8 = *(v7 + 16);
  }

  else
  {
    v9 = a1[6];
    if (!v9)
    {
      goto LABEL_9;
    }

    v8 = *(v9 + 16);
  }

  v8();
LABEL_9:
}

void sub_10004342C(id a1)
{
  qword_100096128 = objc_alloc_init(GEOImageServiceServerRequester);

  _objc_release_x1();
}

uint64_t sub_1000436E4(void *a1)
{
  v2 = a1[7];
  if (a1[4])
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = a1[5];
    v4 = a1[6];
  }

  return (*(v2 + 16))(v2, v3, v4);
}

void sub_100043710(id a1)
{
  qword_100096138 = os_log_create("com.apple.GeoServices", "ResourceRequester");

  _objc_release_x1();
}

id sub_100043A8C(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 40) filename];
  [*(*(a1 + 32) + 48) setObject:v4 atIndexedSubscript:a2];

  v5 = *(a1 + 48);
  v6 = *(*(a1 + 32) + 56);

  return [v6 setObject:v5 atIndexedSubscript:a2];
}

void sub_100043E2C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  [*(*(a1 + 32) + 48) addObject:&stru_100086258];
  [*(*(a1 + 32) + 56) addObject:*(a1 + 40)];
  v5 = [*(a1 + 48) objectForKeyedSubscript:v6];
  if (!v5)
  {
    v5 = +[NSMutableIndexSet indexSet];
    [*(a1 + 48) setObject:v5 forKeyedSubscript:v6];
  }

  [v5 addIndex:a3];
}

void sub_100043F44(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _failAllPendingRequests];
}

void sub_1000445E4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v6 = a2;
  v9 = [v5 objectAtIndexedSubscript:a3];
  v7 = *(a1 + 40);
  v8 = [*(a1 + 48) _finished:v9 withResult:v6 error:0];

  [v7 addObjectsFromArray:v8];
}

void sub_100044B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100044B4C(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 wantsUnpacked:*(a1 + 32)];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

void sub_100044B94(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 finishedResource:*(a1 + 32) withResult:*(a1 + 40) error:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v3];
  }
}

id sub_100044EBC(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[3])
  {
    dispatch_source_set_timer(v2[3], 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_source_set_event_handler(*(*(a1 + 32) + 24), &stru_100083490);
    v3 = *(a1 + 32);
    v4 = *(v3 + 24);
    *(v3 + 24) = 0;

    v2 = *(a1 + 32);
  }

  return [(dispatch_source_t *)v2 _failAllPendingRequests];
}

void sub_100045240(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 56));
  objc_destroyWeak((v2 - 88));
  _Unwind_Resume(a1);
}

void sub_100045260(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    [*(*(a1 + 32) + 16) removeObject:WeakRetained];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: strongLoader != nil", buf, 2u);
  }

  if (!v6)
  {
    v8 = [v5 count];
    if (v8 == [*(a1 + 40) count])
    {
      v9 = [NSURL fileURLWithPath:*(a1 + 48)];
      v10 = GEOResourceDevResourcesPath();
      v11 = [NSURL fileURLWithPath:v10 isDirectory:1];

      v12 = +[NSFileManager defaultManager];
      v13 = GEOResourceDevResourcesPath();
      v14 = [v12 contentsOfDirectoryAtPath:v13 error:0];
      v15 = [NSSet setWithArray:v14];

      v16 = [v15 allObjects];
      v17 = [v16 _geo_map:&stru_100083420];
      v18 = [NSSet setWithArray:v17];

      v19 = *(a1 + 40);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000456AC;
      v34[3] = &unk_100083448;
      v20 = v15;
      v35 = v20;
      v21 = v11;
      v36 = v21;
      v22 = v18;
      v37 = v22;
      v23 = v9;
      v38 = v23;
      v24 = [v19 _geo_compactMap:v34];
      v25 = [v24 count];
      if (v25 == [*(a1 + 40) count])
      {
        [*(a1 + 32) didResolvePaths:v24 forResources:*(a1 + 40)];
        v6 = 0;
      }

      else
      {
        v33 = v20;
        v29 = [*(a1 + 40) count];
        v30 = v29 - [v24 count];
        v31 = [NSString stringWithFormat:@"unable to resolve name for %d resources", v30];
        v6 = [NSError GEOErrorWithCode:-11 reason:v31];

        v32 = sub_1000018BC();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v40 = v30;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "Couldn't get name for %d resources", buf, 8u);
        }

        [*(a1 + 32) failedToResolveResources:*(a1 + 40) withError:v6];
        v20 = v33;
      }

      goto LABEL_11;
    }

    v6 = [NSError GEOErrorWithCode:-11 reason:@"loadedResources.count != input remaining.count"];
  }

  v26 = sub_1000018BC();
  if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
  {
    v27 = [*(a1 + 40) count];
    v28 = [v5 count];
    *buf = 67109376;
    v40 = v27;
    v41 = 1024;
    v42 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Requested %d resources, got %d resources", buf, 0xEu);
  }

  [*(a1 + 32) failedToResolveResources:*(a1 + 40) withError:v6];
LABEL_11:
}

id sub_1000456AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 filename];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [v3 filename];
    v8 = v6;
LABEL_5:
    v10 = [v8 URLByAppendingPathComponent:v7 isDirectory:0];
    goto LABEL_7;
  }

  v9 = [v3 filename];
  v7 = GEOCanonicalResourceNameForVersionedName();

  if ([*(a1 + 48) containsObject:v7])
  {
    v8 = *(a1 + 40);
    goto LABEL_5;
  }

  v11 = *(a1 + 56);
  v12 = [v3 filename];
  v10 = [v11 URLByAppendingPathComponent:v12 isDirectory:0];

LABEL_7:

  return v10;
}

void sub_100046540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [NSURLQueryItem queryItemWithName:a2 value:a3];
  [*(a1 + 32) addObject:v4];
}

void sub_100046D5C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
  }

  if (v5)
  {
    v8 = v5;
    v9 = +[GEOExperimentConfiguration sharedConfiguration];
    v10 = [v8 datasetAbStatus];
    [v9 refreshDatasetABStatus:v10];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v11 = [v8 routes];
    v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        v15 = 0;
        do
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v18 + 1) + 8 * v15) unpackLatLngVertices];
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    v16 = a1[7];
    if (v16)
    {
      (*(v16 + 16))(v16, v8);
    }

    if ([v8 hasRedactedAnalyticData])
    {
      v17 = [v8 redactedAnalyticData];
      [GEORequestResponseMetadataRecorder recordRedactedDirectionsRequestResponseAnalyticsData:v17 forRouteIdentifier:a1[4] predictedDepartureTimeDelta:a1[5]];
    }

    goto LABEL_17;
  }

  if (a1[8])
  {
    v8 = [v6 _geo_directionsErrorInfo];
    (*(a1[8] + 16))();
LABEL_17:
  }
}

void sub_100047244(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100047438(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  [v5 setClientInfo:a2];
  [*(a1 + 32) setError:v6];

  v7 = *(a1 + 32);

  return [v7 send];
}

void sub_1000475A8(uint64_t a1, void *a2, void *a3)
{
  v10 = a3;
  v5 = [a2 clientInfo];
  if (v10)
  {
    v6 = [v10 domain];
    v7 = GEOErrorDomain();
    if ([v6 isEqual:v7])
    {
      v8 = [v10 code];

      if (v8 != -11)
      {
        goto LABEL_9;
      }

      if (qword_100096150 != -1)
      {
        dispatch_once(&qword_100096150, &stru_100083598);
      }

      v7 = v5;
      v6 = v10;
      v5 = qword_100096148;
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

LABEL_9:
  [*(*(a1 + 32) + 8) setValue:v5];
  v9 = *(a1 + 40);
  if (v9)
  {
    (*(v9 + 16))(v9, v5, v10);
  }
}

void sub_1000476E8(id a1)
{
  v1 = objc_alloc_init(GEOPairedDeviceClientInfo);
  v2 = qword_100096148;
  qword_100096148 = v1;

  [qword_100096148 setClientVersion:1];
  [qword_100096148 addSupportedMessages:101];
  [qword_100096148 addSupportedMessages:102];
  [qword_100096148 addSupportedMessages:104];
  v3 = qword_100096148;

  [v3 addSupportedMessages:2];
}

void sub_100048080(uint64_t a1)
{
  v56 = 0;
  v57 = &v56;
  v58 = 0x3032000000;
  v59 = sub_100048630;
  v60 = sub_10004865C;
  v61 = 0;
  v53[0] = _NSConcreteStackBlock;
  v53[1] = 3221225472;
  v53[2] = sub_100048664;
  v53[3] = &unk_100083BC0;
  v54 = *(a1 + 32);
  v55 = *(a1 + 48);
  v2 = objc_retainBlock(v53);
  v3 = v57[5];
  v57[5] = v2;

  v4 = objc_alloc_init(NSMutableSet);
  v5 = *(a1 + 40);
  v6 = [*(a1 + 32) configuration];
  v51[0] = _NSConcreteStackBlock;
  v51[1] = 3221225472;
  v51[2] = sub_1000486EC;
  v51[3] = &unk_1000836C0;
  v24 = v4;
  v52 = v24;
  [v5 _forEachPeerMatchingConfiguration:v6 perform:v51];

  if ([v24 count])
  {
    v65[0] = @"message";
    v65[1] = @"userInfo";
    v66[0] = @"resourcemanifest.didChangeActiveTileGroup";
    v63 = @"messageTimestamp";
    GEOGetMonotonicTime();
    v7 = [NSNumber numberWithDouble:?];
    v64 = v7;
    v8 = [NSDictionary dictionaryWithObjects:&v64 forKeys:&v63 count:1];
    v66[1] = v8;
    v20 = [NSDictionary dictionaryWithObjects:v66 forKeys:v65 count:2];

    v23 = _CFXPCCreateXPCObjectFromCFObject();
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v9 = [v24 copy];
    v10 = [v9 countByEnumeratingWithState:&v47 objects:v62 count:16];
    if (v10)
    {
      v22 = *v48;
      obj = v9;
      do
      {
        v11 = 0;
        do
        {
          if (*v48 != v22)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v47 + 1) + 8 * v11);
          v45[0] = 0;
          v45[1] = v45;
          v45[2] = 0x2020000000;
          v46 = 0;
          v40[0] = _NSConcreteStackBlock;
          v40[1] = 3221225472;
          v40[2] = sub_1000486F8;
          v40[3] = &unk_100083990;
          v43 = v45;
          v41 = v24;
          v42 = v12;
          v44 = &v56;
          v13 = objc_retainBlock(v40);
          v34 = 0;
          v35 = &v34;
          v36 = 0x3032000000;
          v37 = sub_10004879C;
          v38 = sub_1000487AC;
          v39 = 0;
          v28 = _NSConcreteStackBlock;
          v29 = 3221225472;
          v30 = sub_1000487B4;
          v31 = &unk_1000836E8;
          v14 = v13;
          v32 = v14;
          v33 = &v34;
          v15 = geo_dispatch_timer_create_on_queue();
          v16 = v35[5];
          v35[5] = v15;

          dispatch_activate(v35[5]);
          v17 = [v12 connection];
          v18 = *(*(a1 + 40) + 40);
          v25[0] = _NSConcreteStackBlock;
          v25[1] = 3221225472;
          v25[2] = sub_100048834;
          v25[3] = &unk_100083710;
          v19 = v14;
          v26 = v19;
          v27 = &v34;
          [v17 sendMessage:v23 withReply:v18 handler:v25];

          _Block_object_dispose(&v34, 8);
          _Block_object_dispose(v45, 8);
          v11 = v11 + 1;
        }

        while (v10 != v11);
        v9 = obj;
        v10 = [obj countByEnumeratingWithState:&v47 objects:v62 count:16];
      }

      while (v10);
    }
  }

  else
  {
    (*(v57[5] + 16))();
  }

  _Block_object_dispose(&v56, 8);
}

id sub_100048630(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

uint64_t sub_100048664(uint64_t a1)
{
  v2 = [*(a1 + 32) configuration];
  v3 = GEOActiveTileGroupChangedInternalDarwinNotificationName();
  notify_post([v3 UTF8String]);

  v4 = *(a1 + 40);
  if (v4)
  {
    (*(v4 + 16))();
  }

  v5 = GEOActiveTileGroupChangedNotification;

  return notify_post(v5);
}

void sub_1000486F8(uint64_t a1)
{
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    [*(a1 + 32) removeObject:*(a1 + 40)];
    if (*(*(*(a1 + 56) + 8) + 40))
    {
      if (![*(a1 + 32) count])
      {
        (*(*(*(*(a1 + 56) + 8) + 40) + 16))();
        v3 = *(*(a1 + 56) + 8);
        v4 = *(v3 + 40);
        *(v3 + 40) = 0;
      }
    }
  }
}

uint64_t sub_10004879C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1000487B4(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v2);
  v3 = *(*(*(a1 + 40) + 8) + 40);
  if (v3)
  {
    dispatch_source_cancel(v3);
    v4 = *(*(a1 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;
  }
}

void sub_100048834(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  (*(*(a1 + 32) + 16))();
  objc_autoreleasePoolPop(v3);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  if (v4)
  {
    dispatch_source_cancel(v4);
    v5 = *(*(a1 + 40) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = 0;
  }
}

void sub_100048B28(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = a3;
  if (v10)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = [v10 data];
    [v6 setObject:v7 forKey:@"manifestData"];

    v8 = *(a1 + 32);
  }

  else
  {
    if (!v5)
    {
      goto LABEL_6;
    }

    v9 = *(a1 + 32);
    v6 = [NSDictionary _geo_replyDictionaryForError:v5 key:@"err"];
    v8 = v9;
  }

  [v8 sendReply:v6];

LABEL_6:
}

void sub_100049360(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049558(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049698(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSDictionary _geo_replyDictionaryForError:a2 key:@"err"];
  [v2 sendReply:v3];
}

void sub_100049CBC(id a1, NSArray *a2)
{
  v2 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [GEOResourceManifestConfiguration configurationWithPairedDevice:*(*(&v10 + 1) + 8 * v6)];
        v8 = [GEOResourceManifestManager modernManagerForConfiguration:v7];
        v9 = [v8 serverProxy];
        [v9 performOpportunisticResourceLoading];

        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

void sub_100049E68(id a1)
{
  qword_100096170 = objc_alloc_init(GEOResourceManifestConfiguration);

  _objc_release_x1();
}

void sub_10004A044(uint64_t a1)
{
  v4 = objc_alloc_init(GEOResourceManifestConfiguration);
  [*(*(a1 + 32) + 16) addObject:v4];
  v2 = +[GEOResourceManifestManager modernManager];
  [v2 addServerProxyObserver:*(a1 + 32)];

  v3 = +[GEOResourceManifestManager modernManager];
  [v3 openServerConnection];
}

void sub_10004A164(uint64_t a1)
{
  v2 = +[GEONetworkObserver sharedNetworkObserver];
  v3 = [v2 isNetworkConstrained];

  v4 = *(*(a1 + 32) + 32);
  if (v3)
  {
    if (v4 || !GEOConfigGetBOOL())
    {
      return;
    }

    v11 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    v5 = [v11 addInternalAssertionForReason:@"constrained-network"];
    v6 = *(a1 + 32);
    v7 = *(v6 + 32);
    *(v6 + 32) = v5;

    v8 = v11;
  }

  else
  {
    if (!v4)
    {
      return;
    }

    v9 = +[GEOResourceManifestUpdateAssertionRegistry sharedRegistry];
    [v9 removeAssertion:*(*(a1 + 32) + 32)];

    v10 = *(a1 + 32);
    v8 = *(v10 + 32);
    *(v10 + 32) = 0;
  }
}

id sub_10004A380(uint64_t a1)
{
  [*(a1 + 32) _fireOpportunisticResourceLoads];
  v2 = *(a1 + 40);

  return [v2 setTaskCompleted];
}

void sub_10004A68C(uint64_t a1)
{
  if (sub_10000BF18(0))
  {
    v2 = [sub_10000C0DC() sharedInstance];
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10004A738;
    v3[3] = &unk_100083610;
    v4 = *(a1 + 32);
    [v2 getDevicesWithBlock:v3];
  }
}

void sub_10004A738(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [[NSMutableSet alloc] initWithCapacity:{objc_msgSend(v2, "count")}];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v38 objects:v45 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v39;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v39 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [GEOResourceManifestConfiguration configurationWithPairedDevice:*(*(&v38 + 1) + 8 * i)];
        v10 = [v9 dataDirectoryFor:7];
        if ([v10 length])
        {
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v38 objects:v45 count:16];
    }

    while (v6);
  }

  v11 = +[NSFileManager defaultManager];
  v12 = GEOResourcesPairedDevicesCachesDirectory();
  v13 = [v11 contentsOfDirectoryAtPath:v12 error:0];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v13;
  v14 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v35;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v35 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v34 + 1) + 8 * j);
        v19 = GEOResourcesPairedDevicesCachesDirectory();
        v20 = [v19 stringByAppendingPathComponent:v18];

        if (([v3 containsObject:v20] & 1) == 0)
        {
          v21 = v4;
          v22 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            *buf = 138477827;
            v43 = v20;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "Paired device data directory is obsolete. Removing it... (%{private}@)", buf, 0xCu);
          }

          v23 = +[NSFileManager defaultManager];
          v33 = 0;
          v24 = [v23 removeItemAtPath:v20 error:&v33];
          v25 = v33;

          if ((v24 & 1) == 0)
          {
            v26 = GEOFindOrCreateLog();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v43 = v25;
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "Failed to remove obsolete paired device directory: %{public}@", buf, 0xCu);
            }
          }

          v4 = v21;
        }
      }

      v15 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    }

    while (v15);
  }

  if ([v4 count])
  {
    v27 = *(*(a1 + 32) + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10004AB6C;
    block[3] = &unk_100083940;
    v31 = v4;
    v32 = *(a1 + 32);
    dispatch_async(v27, block);
  }
}

void sub_10004AB6C(uint64_t a1)
{
  v2 = [*(a1 + 32) firstObject];
  v5 = [GEOResourceManifestConfiguration configurationWithPairedDevice:v2];

  if (([*(*(a1 + 40) + 16) containsObject:v5] & 1) == 0)
  {
    [*(*(a1 + 40) + 16) addObject:v5];
    v3 = [GEOResourceManifestManager modernManagerForConfiguration:v5];
    [v3 addServerProxyObserver:*(a1 + 40)];

    v4 = [GEOResourceManifestManager modernManagerForConfiguration:v5];
    [v4 openServerConnection];
  }
}

void sub_10004AC4C(id a1, BGSystemTask *a2)
{
  v2 = a2;
  objc_opt_self();
  v3 = sub_10004AEF4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    *&buf[4] = 1;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Generating telemetry for type: %llu", buf, 0xCu);
  }

  v4 = dispatch_group_create();
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  objc_opt_self();
  *buf = objc_opt_class();
  v5 = [NSArray arrayWithObjects:buf count:1];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * v9);
        dispatch_group_enter(v4);
        v11 = objc_alloc_init(v10);
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_10004AF48;
        v17[3] = &unk_100083EC0;
        v18 = v4;
        [v11 reportTelemetryForType:1 completionHandler:v17];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:buf count:16];
    }

    while (v7);
  }

  global_queue = geo_get_global_queue();
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10004AF50;
  block[3] = &unk_1000837A0;
  v15 = v2;
  v16 = 1;
  v13 = v2;
  dispatch_group_notify(v4, global_queue, block);
}

id sub_10004AEF4()
{
  if (qword_100096180 != -1)
  {
    dispatch_once(&qword_100096180, &stru_1000837C0);
  }

  v1 = qword_100096178;

  return v1;
}

id sub_10004AF50(uint64_t a1)
{
  v2 = sub_10004AEF4();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 40);
    v5 = 134217984;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Finished generating telemetry for type: %llu", &v5, 0xCu);
  }

  return [*(a1 + 32) setTaskCompleted];
}

void sub_10004B000(id a1)
{
  qword_100096178 = os_log_create("com.apple.GeoServices", "PeriodicTelemetry");

  _objc_release_x1();
}

id sub_10004B204(void *a1)
{
  v1 = a1;
  v2 = objc_alloc_init(GEOPDPlaceResponse);
  v3 = [v1 _geo_map:&stru_100083C78];

  v4 = [v3 mutableCopy];
  [v2 setMapsResults:v4];

  return v2;
}

id sub_10004B294(id a1, GEOPDPlace *a2)
{
  v2 = a2;
  v3 = objc_alloc_init(GEOPDMapsResult);
  [v3 setResultType:1];
  [v3 setPlace:v2];

  return v3;
}

void sub_10004B76C(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  v5 = +[GEOPDPlace failedPlaceDataForMuid:](GEOPDPlace, "failedPlaceDataForMuid:", [v7 muid]);
  [*(*(a1 + 32) + 32) addObject:v5];
  v6 = [*(a1 + 40) objectForKeyedSubscript:v7];
  if (!v6)
  {
    v6 = +[NSMutableIndexSet indexSet];
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v7];
  }

  [v6 addIndex:a3];
}

void sub_10004BFB4(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = *(a1 + 32);
  if (*(a1 + 64) == 1)
  {
    v6 = *(a1 + 32);
    v7 = a3;
LABEL_3:
    v8 = [v6 objectAtIndexedSubscript:v7];
    v9 = *(a1 + 48);
    v10 = [*(a1 + 56) _finished:v8 withResult:v13 error:0];
    [v9 addObjectsFromArray:v10];

    goto LABEL_4;
  }

  v11 = [[GEOMapItemIdentifier alloc] initWithPlace:v13];
  v12 = [v5 indexOfObject:v11];

  if (v12 != 0x7FFFFFFFFFFFFFFFLL)
  {
    [*(a1 + 40) addIndex:v12];
    v6 = *(a1 + 32);
    v7 = v12;
    goto LABEL_3;
  }

LABEL_4:
}

void sub_10004C3A8(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 finishedIdentifier:*(a1 + 32) withResult:*(a1 + 40) error:*(a1 + 48)])
  {
    [*(a1 + 56) addObject:v3];
  }
}

void sub_10004D4B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, ...)
{
  va_start(va, a42);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v42 - 176), 8);
  _Block_object_dispose((v42 - 240), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10004D510(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10004D528(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_10004D598(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_10004D608(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 64) != 4)
  {
    v5 = [v3 resultsWithResultType:1];
    if ([v4 status] || objc_msgSend(v5, "count"))
    {
      if ([v5 count] != 1)
      {
LABEL_13:

        goto LABEL_14;
      }

      v6 = [v5 firstObject];
      [*(a1 + 32) requestType];
      if (GEOMapItemHandleShouldStoreRequestData())
      {
        v7 = objc_alloc_init(GEOMapItemInitialRequestData);
        [v6 setRequestData:v7];

        v8 = [*(a1 + 32) requestType];
        v9 = [v6 requestData];
        [v9 setRequestType:v8];

        v10 = [*(a1 + 32) placeRequestParameters];
        v11 = [v10 copy];
        v12 = [v6 requestData];
        [v12 setPlaceRequestParameters:v11];
      }

      if (![v6 status])
      {
        v13 = [*(a1 + 40) pdPlaceCache];
        [v13 storePlace:v6 forRequest:*(a1 + 32)];

        sub_10004D8E8(*(a1 + 40), v6, *(a1 + 48));
      }
    }

    else
    {
      v14 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v15 = *(a1 + 32);
        v19 = 138412290;
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEBUG, "Caching negative response for request %@", &v19, 0xCu);
      }

      v6 = objc_alloc_init(GEOPDPlace);
      [v6 setNilPlace:1];
      v16 = [*(a1 + 40) pdPlaceCache];
      [v16 storePlace:v6 forRequest:*(a1 + 32)];
    }

    goto LABEL_13;
  }

LABEL_14:
  v17 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    v19 = 134217984;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Response from the server: %p", &v19, 0xCu);
  }

  v18 = *(a1 + 56);
  if (v18)
  {
    (*(v18 + 16))(v18, v4, 0);
  }
}

uint64_t sub_10004D8C8(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void sub_10004D8E8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = +[GEOPlatform sharedPlatform];
    if (![v7 isInternalInstall])
    {
LABEL_123:

      goto LABEL_124;
    }

    v8 = [v6 count];

    if (v8)
    {
      v7 = [v5 calculateMissingComponentTypes:v6];
      if ([v7 count])
      {
        v9 = +[NSMutableArray array];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v10 = v7;
        v11 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v20;
          do
          {
            v14 = 0;
            do
            {
              if (*v20 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = [*(*(&v19 + 1) + 8 * v14) intValue];
              v16 = @"COMPONENT_TYPE_UNKNOWN";
              switch(v15)
              {
                case 0:
                  break;
                case 1:
                  v16 = @"COMPONENT_TYPE_ENTITY";
                  break;
                case 2:
                  v16 = @"COMPONENT_TYPE_PLACE_INFO";
                  break;
                case 3:
                  v16 = @"COMPONENT_TYPE_ROAD_ACCESS_INFO";
                  break;
                case 4:
                  v16 = @"COMPONENT_TYPE_BOUNDS";
                  break;
                case 5:
                  v16 = @"COMPONENT_TYPE_ADDRESS";
                  break;
                case 6:
                  v16 = @"COMPONENT_TYPE_RATING";
                  break;
                case 7:
                  v16 = @"COMPONENT_TYPE_REVIEW";
                  break;
                case 8:
                  v16 = @"COMPONENT_TYPE_PHOTO";
                  break;
                case 9:
                  v16 = @"COMPONENT_TYPE_HOURS";
                  break;
                case 10:
                  v16 = @"COMPONENT_TYPE_TRANSIT_INFO";
                  break;
                case 11:
                  v16 = @"COMPONENT_TYPE_TRANSIT_SCHEDULE";
                  break;
                case 12:
                  v16 = @"COMPONENT_TYPE_ETA";
                  break;
                case 13:
                  v16 = @"COMPONENT_TYPE_FLYOVER";
                  break;
                case 14:
                  v16 = @"COMPONENT_TYPE_RAW_ATTRIBUTE";
                  break;
                case 15:
                  v16 = @"COMPONENT_TYPE_AMENITIES";
                  break;
                case 16:
                  v16 = @"COMPONENT_TYPE_STYLE_ATTRIBUTES";
                  break;
                case 20:
                  v16 = @"COMPONENT_TYPE_TRANSIT_INCIDENT";
                  break;
                case 21:
                  v16 = @"COMPONENT_TYPE_TRANSIT_ASSOCIATED_INFO";
                  break;
                case 22:
                  v16 = @"COMPONENT_TYPE_TEXT_BLOCK";
                  break;
                case 23:
                  v16 = @"COMPONENT_TYPE_FACTOID";
                  break;
                case 24:
                  v16 = @"COMPONENT_TYPE_TRANSIT_ATTRIBUTION";
                  break;
                case 25:
                  v16 = @"COMPONENT_TYPE_BUSINESS_CLAIM";
                  break;
                case 26:
                  v16 = @"COMPONENT_TYPE_CAPTIONED_PHOTO";
                  break;
                case 27:
                  v16 = @"COMPONENT_TYPE_TRANSIT_INFO_SNIPPET";
                  break;
                case 29:
                  v16 = @"COMPONENT_TYPE_EXTERNAL_ACTION";
                  break;
                case 30:
                  v16 = @"COMPONENT_TYPE_RESULT_SNIPPET";
                  break;
                case 31:
                  v16 = @"COMPONENT_TYPE_ADDRESS_OBJECT";
                  break;
                case 32:
                  v16 = @"COMPONENT_TYPE_SIMPLE_RESTAURANT_MENU_TEXT";
                  break;
                case 33:
                  v16 = @"COMPONENT_TYPE_RESTAURANT_RESERVATION_LINK";
                  break;
                case 34:
                  v16 = @"COMPONENT_TYPE_SPATIAL_LOOKUP_RESULT";
                  break;
                case 36:
                  v16 = @"COMPONENT_TYPE_TIP";
                  break;
                case 37:
                  v16 = @"COMPONENT_TYPE_PLACECARD_URL";
                  break;
                case 38:
                  v16 = @"COMPONENT_TYPE_ASSOCIATED_APP";
                  break;
                case 39:
                  v16 = @"COMPONENT_TYPE_MESSAGE_LINK";
                  break;
                case 40:
                  v16 = @"COMPONENT_TYPE_QUICK_LINK";
                  break;
                case 41:
                  v16 = @"COMPONENT_TYPE_RAP";
                  break;
                case 42:
                  v16 = @"COMPONENT_TYPE_OFFLINE_AREA";
                  break;
                case 43:
                  v16 = @"COMPONENT_TYPE_LOCATION_EVENT";
                  break;
                case 44:
                  v16 = @"COMPONENT_TYPE_SUPPORTS_OFFLINE_MAPS";
                  break;
                case 45:
                  v16 = @"COMPONENT_TYPE_OFFLINE_IDENTIFIER";
                  break;
                case 46:
                  v16 = @"COMPONENT_TYPE_OFFLINE_QUAD_NODES";
                  break;
                case 47:
                  v16 = @"COMPONENT_TYPE_OFFLINE_SIZE";
                  break;
                case 48:
                  v16 = @"COMPONENT_TYPE_VENUE_INFO";
                  break;
                case 49:
                  v16 = @"COMPONENT_TYPE_OFFLINE_UPDATE_MANIFEST";
                  break;
                case 50:
                  v16 = @"COMPONENT_TYPE_CONTAINED_PLACE";
                  break;
                case 51:
                  v16 = @"COMPONENT_TYPE_WIFI_FINGERPRINT";
                  break;
                case 52:
                  v16 = @"COMPONENT_TYPE_ICON";
                  break;
                case 53:
                  v16 = @"COMPONENT_TYPE_PRICE_DESCRIPTION";
                  break;
                case 54:
                  v16 = @"COMPONENT_TYPE_BROWSE_CATEGORIES";
                  break;
                case 55:
                  v16 = @"COMPONENT_TYPE_STOREFRONT";
                  break;
                case 56:
                  v16 = @"COMPONENT_TYPE_GROUND_VIEW_LABEL";
                  break;
                case 57:
                  v16 = @"COMPONENT_TYPE_ANNOTATED_ITEM_LIST";
                  break;
                case 58:
                  v16 = @"COMPONENT_TYPE_POI_EVENT";
                  break;
                case 59:
                  v16 = @"COMPONENT_TYPE_STOREFRONT_PRESENTATION";
                  break;
                case 60:
                  v16 = @"COMPONENT_TYPE_PLACECARD_LAYOUT";
                  break;
                case 61:
                  v16 = @"COMPONENT_TYPE_PROTOTYPE_CONTAINER";
                  break;
                case 62:
                  v16 = @"COMPONENT_TYPE_TRANSIT_VEHICLE_POSITION";
                  break;
                case 63:
                  v16 = @"COMPONENT_TYPE_LINKED_SERVICE";
                  break;
                case 64:
                  v16 = @"COMPONENT_TYPE_BUSINESS_HOURS";
                  break;
                case 65:
                  v16 = @"COMPONENT_TYPE_COLLECTION";
                  break;
                case 66:
                  v16 = @"COMPONENT_TYPE_RELATED_PLACE";
                  break;
                case 67:
                  v16 = @"COMPONENT_TYPE_TRANSIT_TRIP_STOP";
                  break;
                case 68:
                  v16 = @"COMPONENT_TYPE_TRANSIT_TRIP_STOP_TIME";
                  break;
                case 69:
                  v16 = @"COMPONENT_TYPE_TRANSIT_TRIP_GEOMETRY";
                  break;
                case 70:
                  v16 = @"COMPONENT_TYPE_PLACE_BROWSE_CATEGORIES";
                  break;
                case 71:
                  v16 = @"COMPONENT_TYPE_PUBLISHER";
                  break;
                case 72:
                  v16 = @"COMPONENT_TYPE_MINI_PLACE_BROWSE_CATEGORIES";
                  break;
                case 73:
                  v16 = @"COMPONENT_TYPE_PLACE_QUESTIONNAIRE";
                  break;
                case 74:
                  v16 = @"COMPONENT_TYPE_PLACE_COLLECTION_ITEM";
                  break;
                case 76:
                  v16 = @"COMPONENT_TYPE_COLLECTION_IDS";
                  break;
                case 77:
                  v16 = @"COMPONENT_TYPE_ISO_3166_CODE";
                  break;
                case 78:
                  v16 = @"COMPONENT_TYPE_VENDOR_AMENITIES";
                  break;
                case 79:
                  v16 = @"COMPONENT_TYPE_TRANSIT_NEARBY_SCHEDULE";
                  break;
                case 81:
                  v16 = @"COMPONENT_TYPE_STOREFRONT_FACES";
                  break;
                case 82:
                  v16 = @"COMPONENT_TYPE_GUIDE_GROUP";
                  break;
                case 83:
                  v16 = @"COMPONENT_TYPE_CONTAINMENT_PLACE";
                  break;
                case 84:
                  v16 = @"COMPONENT_TYPE_CATEGORIZED_PHOTOS";
                  break;
                case 85:
                  v16 = @"COMPONENT_TYPE_EXPLORE_GUIDES";
                  break;
                case 86:
                  v16 = @"COMPONENT_TYPE_ABOUT";
                  break;
                case 87:
                  v16 = @"COMPONENT_TYPE_LABEL_GEOMETRY";
                  break;
                case 88:
                  v16 = @"COMPONENT_TYPE_ENHANCED_PLACEMENT";
                  break;
                case 89:
                  v16 = @"COMPONENT_TYPE_TEMPLATE_PLACE";
                  break;
                case 90:
                  v16 = @"COMPONENT_TYPE_SEARCH_ENRICHMENT";
                  break;
                case 91:
                  v16 = @"COMPONENT_TYPE_TRANSIT_PAYMENT_METHOD_INFO";
                  break;
                case 92:
                  v16 = @"COMPONENT_TYPE_BUSINESS_ASSETS";
                  break;
                case 93:
                  v16 = @"COMPONENT_TYPE_ENRICHMENT_INFO";
                  break;
                case 94:
                  v16 = @"COMPONENT_TYPE_ACTION_DATA";
                  break;
                case 95:
                  v16 = @"COMPONENT_TYPE_ENRICHMENT_DATA";
                  break;
                case 96:
                  v16 = @"COMPONENT_TYPE_POI_CLAIM";
                  break;
                case 97:
                  v16 = @"COMPONENT_TYPE_EV_CHARGER";
                  break;
                case 98:
                  v16 = @"COMPONENT_TYPE_TRAIL_HEAD";
                  break;
                case 99:
                  v16 = @"COMPONENT_TYPE_TOOL_TIP";
                  break;
                case 100:
                  v16 = @"COMPONENT_TYPE_REFRESH_ID";
                  break;
                case 101:
                  v16 = @"COMPONENT_TYPE_ADDRESS_COMPONENTS";
                  break;
                case 102:
                  v16 = @"COMPONENT_TYPE_SEARCH_RESULT_PLACE_PHOTO";
                  break;
                case 103:
                  v16 = @"COMPONENT_TYPE_FORWARD_INFO";
                  break;
                case 104:
                  v16 = @"COMPONENT_TYPE_HIKE_ASSOCIATED_INFO";
                  break;
                case 105:
                  v16 = @"COMPONENT_TYPE_HIKE_SUMMARY";
                  break;
                case 106:
                  v16 = @"COMPONENT_TYPE_HIKE_GEOMETRY";
                  break;
                case 107:
                  v16 = @"COMPONENT_TYPE_ACCOLADES";
                  break;
                case 108:
                  v16 = @"COMPONENT_TYPE_LOCALIZED_NAMES";
                  break;
                case 109:
                  v16 = @"COMPONENT_TYPE_BRAND_LOGO_EMBEDDING";
                  break;
                case 110:
                  v16 = @"COMPONENT_TYPE_VISUAL_EVIDENCE";
                  break;
                case 111:
                  v16 = @"COMPONENT_TYPE_VISITED_PLACES_META_DATA";
                  break;
                case 112:
                  v16 = @"COMPONENT_TYPE_EXPERT_CONTENT";
                  break;
                case 113:
                  v16 = @"COMPONENT_TYPE_TOKENIZER_RESULT";
                  break;
                default:
                  v16 = [NSString stringWithFormat:@"(unknown: %i)", v15];
                  break;
              }

              [v9 addObject:v16];

              v14 = v14 + 1;
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v19 objects:v25 count:16];
          }

          while (v12);
        }

        [v9 sortUsingSelector:"compare:"];
        v17 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v18 = [v9 componentsJoinedByString:{@", "}];
          *buf = 138412290;
          v24 = v18;
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Result was missing components: %@", buf, 0xCu);
        }
      }

      goto LABEL_123;
    }
  }

LABEL_124:
}

void sub_10004E2D0(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

uint64_t sub_10004E47C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = [a4 data];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];

  return 1;
}

void sub_10004E4DC(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = [*(a1 + 32) copy];
  (*(v1 + 16))(v1, v2, 0);
}

void sub_10004EB74(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, ...)
{
  va_start(va, a30);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10004EB94(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v6 = +[NSNull null];

  if (v6 != v5)
  {
    v7 = GEOStringForPhoneNumber();
    v8 = v7;
    if (v7 && [v7 length])
    {
      v9 = [*(a1 + 32) pdPlaceCache];
      v10 = [v9 lookupIdentifierByPhoneNumber:v8];

      if (v10)
      {
        v11 = *(a1 + 40);
        v12 = [NSNumber numberWithUnsignedInteger:a3];
        [v11 setObject:v12 forKey:v10];
      }
    }

    else
    {
      v13 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *v14 = 0;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "Couldn't construct a string version for phone number.", v14, 2u);
      }
    }
  }
}

id sub_10004ECD8(uint64_t a1, uint64_t a2)
{
  result = objc_retainBlock(*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_10004ED0C(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);
  v12 = *(a1 + 48);
  v11 = *(a1 + 56);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10004EE40;
  v17[3] = &unk_100083B48;
  v13 = *(a1 + 88);
  v21 = v8;
  v22 = v13;
  v18 = v7;
  v14 = *(a1 + 64);
  v19 = *(a1 + 72);
  v20 = *(a1 + 80);
  v23 = *(a1 + 96);
  v15 = v7;
  v16 = v8;
  [v10 requestIdentifiers:v15 resultProviderID:0 requestUUID:v9 traits:v12 options:a2 auditToken:v11 throttleToken:v14 requesterHandler:v17];
}

void sub_10004EE40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (*(a1 + 56) || *(*(*(a1 + 64) + 8) + 40))
  {
    v7 = [NSMutableSet setWithArray:*(a1 + 32)];
    if (v6)
    {
      v8 = GEOFindOrCreateLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67240450;
        v36 = 0;
        v37 = 2114;
        v38 = v6;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Error consulting providerId=%{public}d: %{public}@", buf, 0x12u);
      }
    }

    else
    {
      v8 = [v5 resultsWithResultType:1];
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
      if (v9)
      {
        v10 = v9;
        v29 = 0;
        v30 = v5;
        v11 = *v32;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v32 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v31 + 1) + 8 * i);
            if ([v13 status] != 20)
            {
              v14 = [[GEOMapItemIdentifier alloc] initWithPlace:v13];
              v15 = [*(a1 + 40) objectForKeyedSubscript:v14];
              v16 = v15;
              if (v15)
              {
                v17 = v7;
                v18 = *(a1 + 48);
                v19 = [v15 unsignedIntegerValue];
                v20 = v18;
                v7 = v17;
                [v20 setObject:v13 atIndexedSubscript:v19];
              }

              [v7 removeObject:v14];
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v31 objects:v39 count:16];
        }

        while (v10);
        v6 = v29;
        v5 = v30;
      }
    }

    v21 = *(a1 + 56);
    if (v21)
    {
      v22 = sub_10004B204(*(a1 + 48));
      (*(v21 + 16))(v21, v22, v6);
    }

    v23 = *(a1 + 64);
    if (*(*(v23 + 8) + 40))
    {
      if (*(a1 + 72) == 1)
      {
        v24 = [v7 count];
        v23 = *(a1 + 64);
        if (v24)
        {
          v25 = *(*(v23 + 8) + 40);
          v26 = [v7 allObjects];
          (*(v25 + 16))(v25, 1, v26, 0);

          v23 = *(a1 + 64);
        }
      }
    }

    v27 = *(v23 + 8);
    v28 = *(v27 + 40);
    *(v27 + 40) = 0;
  }
}

void sub_10004F358(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  if (*(a1 + 32) && ([v3 resultsWithResultType:1], v4 = objc_claimAutoreleasedReturnValue(), v3 = v6, v4))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    if (!*(a1 + 40))
    {
      goto LABEL_7;
    }

    v4 = [NSError GEOErrorWithCode:-11 reason:@"Identifier lookup failed to return any results"];
    v5 = *(a1 + 40);
  }

  (*(v5 + 16))(v5, v4);

  v3 = v6;
LABEL_7:
}

void sub_10004F664(uint64_t a1)
{
  v2 = *(a1 + 88);
  v57 = (v2 & 8) == 0;
  if (_GEOConfigHasValue())
  {
    LOBYTE(v3) = GEOConfigGetBOOL();
  }

  else
  {
    v3 = (v2 >> 1) & 1;
  }

  if (_GEOConfigHasValue())
  {
    LODWORD(v4) = GEOConfigGetBOOL();
  }

  else
  {
    v4 = (v2 >> 2) & 1;
  }

  if (_GEOConfigHasValue())
  {
    BOOL = GEOConfigGetBOOL();
  }

  else
  {
    BOOL = v2 & 1;
  }

  v6 = *(a1 + 32);
  v65 = a1;
  if (!v6)
  {
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2082;
      *&buf[14] = "nil == identifiers";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!*(a1 + 80))
  {
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v37 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v37;
      *&buf[12] = 2082;
      *&buf[14] = "nil == requesterHandler";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  if (!*(a1 + 40))
  {
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v38 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v38;
      *&buf[12] = 2082;
      *&buf[14] = "nil == traits";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

    goto LABEL_54;
  }

  v7 = *(a1 + 108);
  v8 = v3 & v7;
  if (BOOL)
  {
    v9 = 1;
  }

  else
  {
    v9 = v3 & v7;
  }

  if ((v9 & 1) == 0)
  {
    v35 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v39 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543618;
      *&buf[4] = v39;
      *&buf[12] = 2082;
      *&buf[14] = "!canUseCache && !canUseNetwork";
      _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_ERROR, "%{public}@ forbids: %{public}s", buf, 0x16u);
    }

LABEL_54:

    return;
  }

  if (![v6 count])
  {
    v40 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v41 = NSStringFromSelector(*(a1 + 96));
      *buf = 138543362;
      *&buf[4] = v41;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_ERROR, "No use running %{public}@ without any MUIDs.", buf, 0xCu);
    }

    (*(*(a1 + 80) + 16))();
    return;
  }

  v54 = BOOL;
  v11 = *(a1 + 32);
  v10 = (a1 + 32);
  v55 = [*(v10[2] + 5) identifiersRequested:v11 forHandler:v10[6]];
  v56 = [NSMutableOrderedSet orderedSetWithArray:*v10];
  v60 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [*v10 count]);
  [v56 minusSet:v55];
  v12 = NSMutableOrderedSet;
  v62 = +[NSMutableOrderedSet orderedSetWithCapacity:](NSMutableOrderedSet, "orderedSetWithCapacity:", [v56 count]);
  if ((v8 & 1) == 0)
  {
    v12 = +[GEOPlatform sharedPlatform];
    if (![v12 isInternalInstall])
    {
      v63 = 0;
LABEL_59:
      v34 = BOOL;

      v33 = v62;
      [v62 unionOrderedSet:v56];
LABEL_60:
      [v33 minusSet:v55];
      if (v34 && [v62 count])
      {
        v42 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          *&buf[4] = v62;
          _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_DEBUG, "Missing Identifiers: %{private}@", buf, 0xCu);
        }

        v43 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          *&buf[4] = v55;
          _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEBUG, "Requests in progress: %{private}@", buf, 0xCu);
        }

        v44 = [v62 array];
        v45 = *(v65 + 104);
        v46 = *(v65 + 40);
        v47 = *(v65 + 48);
        v48 = *(v65 + 56);
        v49 = *(v65 + 64);
        v50 = *(v65 + 72);
        v68[0] = _NSConcreteStackBlock;
        v68[1] = 3221225472;
        v68[2] = sub_1000505AC;
        v68[3] = &unk_100083AA8;
        v68[4] = v47;
        v71 = v57;
        v63 = v63;
        v69 = v63;
        v70 = v44;
        v66[0] = _NSConcreteStackBlock;
        v66[1] = 3221225472;
        v66[2] = sub_100050680;
        v66[3] = &unk_100083A58;
        v66[4] = *(v65 + 48);
        v67 = v62;
        v51 = v44;
        [v47 _requestIdentifiersFromNetwork:v51 resultProviderID:v45 requestUUID:v49 traits:v46 auditToken:v48 throttleToken:v50 finished:v68 error:v66];
      }

      else
      {
        v52 = *(*(v65 + 48) + 40);
        v53 = [v62 set];
        [v52 failedToResolveIdentifiers:v53 withError:0];

        [*(v65 + 48) _resetRequestTimeout];
      }

      goto LABEL_68;
    }
  }

  v13 = [GEOPDPlaceRequest createRequestedComponentsForReason:0 traits:*(v65 + 40) count:1];
  v63 = [GEOPDPlace componentTypesFromComponentInfos:v13];

  if ((v8 & 1) == 0)
  {
    goto LABEL_59;
  }

  v59 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v56 count]);
  v58 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v56 count]);
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  obj = v56;
  v14 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
  if (!v14)
  {
    goto LABEL_37;
  }

  v15 = v4 & v7;
  v64 = *v87;
  do
  {
    for (i = 0; i != v14; i = i + 1)
    {
      if (*v87 != v64)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(*(&v86 + 1) + 8 * i);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v91 = sub_10004D510;
      v92 = sub_10004D520;
      v93 = 0;
      v82 = 0;
      v83 = &v82;
      v84 = 0x2020000000;
      v85 = 0;
      v78 = 0;
      v79 = &v78;
      v80 = 0x2020000000;
      v81 = 0;
      v18 = [*(v65 + 48) pdPlaceCache];
      v77[0] = _NSConcreteStackBlock;
      v77[1] = 3221225472;
      v77[2] = sub_1000503C4;
      v77[3] = &unk_1000839B8;
      v77[4] = buf;
      v77[5] = &v82;
      v77[6] = &v78;
      [v18 lookupPlaceByIdentifier:v17 allowExpired:v15 resultBlock:v77];

      v19 = *(*&buf[8] + 40);
      if (v19)
      {
        v20 = [v19 hasExpectedComponentTypes:v63];
        if ((v83[3] & 1) == 0 && v20 == 1)
        {
          v21 = 1;
LABEL_33:
          [*(v65 + 48) registerCacheResult:v21 forMapItem:v17 cachedByteCount:v79[3] forRequestType:23 auditToken:*(v65 + 56)];
          [v60 addObject:v17];
          [v59 addObject:*(*&buf[8] + 40)];
          goto LABEL_35;
        }

        if ((v15 & v20) == 1)
        {
          [v58 addObject:v17];
          v21 = 3;
          goto LABEL_33;
        }
      }

      [v62 addObject:v17];
      [*(v65 + 48) registerCacheResult:2 forMapItem:v17 cachedByteCount:v79[3] forRequestType:23 auditToken:*(v65 + 56)];
LABEL_35:
      _Block_object_dispose(&v78, 8);
      _Block_object_dispose(&v82, 8);
      _Block_object_dispose(buf, 8);
    }

    v14 = [obj countByEnumeratingWithState:&v86 objects:v94 count:16];
  }

  while (v14);
LABEL_37:

  [*(*(v65 + 48) + 40) didResolveItems:v59 forIdentifiers:v60];
  if ([v58 count] != 0 && v54 != 0)
  {
    [*(*(v65 + 48) + 40) willUpdateExpiredIdentifiers:v58];
    v22 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138477827;
      *&buf[4] = v58;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "Expired Identifiers: %{private}@", buf, 0xCu);
    }

    v23 = [v58 allObjects];
    v24 = *(v65 + 104);
    v26 = *(v65 + 40);
    v25 = *(v65 + 48);
    v28 = *(v65 + 56);
    v27 = *(v65 + 64);
    v29 = *(v65 + 72);
    v74[0] = _NSConcreteStackBlock;
    v74[1] = 3221225472;
    v74[2] = sub_100050434;
    v74[3] = &unk_100083A08;
    v76 = v57;
    v74[4] = v25;
    v75 = v23;
    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_1000504F4;
    v72[3] = &unk_100083A58;
    v72[4] = v25;
    v73 = v58;
    v30 = v23;
    [v25 _requestIdentifiersFromNetwork:v30 resultProviderID:v24 requestUUID:v27 traits:v26 auditToken:v28 throttleToken:v29 finished:v74 error:v72];
  }

  v31 = [v59 count];
  v32 = [v62 count];
  if (&v31[v32] == [obj count])
  {

    v33 = v62;
    v34 = v54;
    goto LABEL_60;
  }

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_fault_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_FAULT, "Assertion failed: hittingPlaces.count + missingIdentifiers.count == todoIdentifiers.count", buf, 2u);
  }

LABEL_68:
}

void sub_100050388(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, char a63)
{
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a63, 8);
  _Block_object_dispose(&STACK[0x210], 8);
  _Unwind_Resume(a1);
}

void sub_1000503C4(void *a1, void *a2, char a3, uint64_t a4)
{
  objc_storeStrong((*(a1[4] + 8) + 40), a2);
  v8 = a2;
  *(*(a1[5] + 8) + 24) = a3;
  *(*(a1[6] + 8) + 24) = a4;
}

void sub_100050434(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  geo_reentrant_isolate_sync();
}

void sub_1000504F4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 40);
  v4 = v3;
  geo_reentrant_isolate_sync_data();
}

void sub_1000505AC(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v3 = v4;
  geo_reentrant_isolate_sync();
}

void sub_100050680(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = *(a1 + 40);
  v3 = v4;
  geo_reentrant_isolate_sync();
}

void sub_100050738(uint64_t a1)
{
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[For MUID] Error fetching missing muids: %{public}@", &v6, 0xCu);
  }

  v4 = *(*(a1 + 40) + 40);
  v5 = [*(a1 + 48) set];
  [v4 failedToResolveIdentifiers:v5 withError:*(a1 + 32)];
}

id sub_100050824(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = *(a1 + 32);
  v3 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v9 = [v7 compactDebugDescription];
          *buf = 138477827;
          v23 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "Received place data: %{private}@", buf, 0xCu);
        }

        [v7 setFirstSeenTimestamp:Current];
        sub_10004D8E8(*(a1 + 40), v7, *(a1 + 48));
        v10 = [[GEOMapItemIdentifier alloc] initWithPlace:v7];
        v11 = GEOFindOrCreateLog();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138477827;
          v23 = v10;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "Checking placedata with identifier=%{private}@", buf, 0xCu);
        }

        v12 = [v7 status];
        v13 = GEOFindOrCreateLog();
        v14 = os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG);
        if (v12)
        {
          if (v14)
          {
            *buf = 138478083;
            v23 = v10;
            v24 = 2113;
            v25 = v7;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received unsuccessful place with identifier=%{private}@, data: %{private}@", buf, 0x16u);
          }
        }

        else
        {
          if (v14)
          {
            v15 = [v7 bestName];
            *buf = 138477827;
            v23 = v15;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "Received place data for: %{private}@", buf, 0xCu);
          }

          if (*(a1 + 64) == 1)
          {
            [*(a1 + 40) trackPlaceData:v7];
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v4);
  }

  return [*(*(a1 + 40) + 40) didResolveItems:*(a1 + 32) forIdentifiers:*(a1 + 56)];
}

void sub_100050B44(void *a1)
{
  [*(a1[4] + 40) failedToResolveIdentifiers:a1[5] withError:0];
  v2 = GEOFindOrCreateLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = a1[6];
    v4 = 138477827;
    v5 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "[For MUID] Error refreshing expired muids: %{private}@", &v4, 0xCu);
  }
}

id sub_100050C10(uint64_t a1)
{
  if (*(a1 + 56) == 1)
  {
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v2 = *(a1 + 32);
    v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = *v10;
      do
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v10 != v5)
          {
            objc_enumerationMutation(v2);
          }

          v7 = *(*(&v9 + 1) + 8 * i);
          if (![v7 status])
          {
            [*(a1 + 40) trackPlaceData:v7];
          }
        }

        v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v4);
    }
  }

  return [*(*(a1 + 40) + 40) didResolveItems:*(a1 + 32) forIdentifiers:{*(a1 + 48), v9}];
}

void sub_100050E90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);
  _Unwind_Resume(a1);
}

id sub_100050EB4(void *a1)
{
  v2 = [*(a1[4] + 16) objectForKey:a1[5]];
  v3 = *(a1[6] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v5 = [*(a1[4] + 24) objectForKey:a1[5]];
  v6 = *(a1[7] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1[4] + 16) removeObjectForKey:a1[5]];
  v8 = a1[5];
  v9 = *(a1[4] + 24);

  return [v9 removeObjectForKey:v8];
}

id sub_100051138(void *a1)
{
  [*(a1[4] + 16) setObject:a1[6] forKeyedSubscript:a1[5]];
  v2 = a1[7];
  v3 = a1[5];
  v4 = *(a1[4] + 24);

  return [v4 setObject:v2 forKeyedSubscript:v3];
}

void sub_100051184(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v13 = a1[5];
  geo_reentrant_isolate_sync_data();
  if (v6)
  {
    v11 = a1[6];
    if (v11)
    {
      (*(v11 + 16))(v11, v6, v7, v8, v9, v10);
    }
  }

  else
  {
    v12 = a1[7];
    if (v12)
    {
      (*(v12 + 16))(v12, v5, v7, v8, v9, v10);
    }
  }
}

id sub_100051270(uint64_t a1)
{
  [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 32) + 24);

  return [v3 removeObjectForKey:v2];
}

void sub_100051328(uint64_t a1)
{
  if (*(*(a1 + 32) + 48) || (global_queue = geo_get_global_queue(), v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, global_queue), v4 = *(a1 + 32), v5 = *(v4 + 48), *(v4 + 48) = v3, v5, global_queue, dispatch_source_set_timer(*(*(a1 + 32) + 48), 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0), objc_initWeak(&location, *(a1 + 32)), v6 = *(*(a1 + 32) + 48), v10[0] = _NSConcreteStackBlock, v10[1] = 3221225472, v10[2] = sub_10005149C, v10[3] = &unk_1000838F0, objc_copyWeak(&v11, &location), dispatch_source_set_event_handler(v6, v10), dispatch_activate(*(*(a1 + 32) + 48)), objc_destroyWeak(&v11), objc_destroyWeak(&location), *(*(a1 + 32) + 48)))
  {
    GEODataRequestTimeout();
    v7 = *(*(a1 + 32) + 48);
    v9 = dispatch_time(0, (v8 * 3.0 * 0.5 * 1000000000.0));
    dispatch_source_set_timer(v7, v9, 0xFFFFFFFFFFFFFFFFLL, 1uLL);
  }
}

void sub_10005149C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _cleanupPendingRequestMananger];
}

uint64_t sub_1000519BC(uint64_t a1)
{
  qword_100096188 = objc_alloc_init(*(a1 + 32));

  return _objc_release_x1();
}

void sub_100051BC8(id a1)
{
  qword_1000961A0 = objc_alloc_init(_GEOTransitRouteUpdateRequestConfig);

  _objc_release_x1();
}

void sub_100051D40(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v8, v5);
  }
}

void sub_100051E1C(id a1)
{
  qword_1000961A8 = objc_alloc_init(GEOTransitUpdateServerRequester);

  _objc_release_x1();
}

void sub_100052568(id a1)
{
  v1 = objc_alloc_init(GEOTaskQueue);
  v2 = qword_1000961B8;
  qword_1000961B8 = v1;

  [qword_1000961B8 setWidth:GEOConfigGetUInteger()];
  global_queue = geo_get_global_queue();
  v3 = _GEOConfigAddBlockListenerForKey();
  v4 = qword_1000961C0;
  qword_1000961C0 = v3;
}

void sub_100052620(id a1, $464B15F94E0D705FD6D497CD7841E26A a2)
{
  UInteger = GEOConfigGetUInteger();
  v3 = qword_1000961B8;

  [v3 setWidth:UInteger];
}

void sub_100052EE4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1 + 32))
  {
    BOOL = GEOConfigGetBOOL();
    v6 = *(a1 + 32);
    if (BOOL)
    {
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100053308;
      v7[3] = &unk_100083DF8;
      v8 = v4;
      (*(v6 + 16))(v6, v7);
    }

    else
    {
      (*(v6 + 16))(v6, v4);
    }
  }

  else
  {
    (*(v3 + 2))(v3, 0);
  }
}

void sub_100052FD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[GEOExperimentConfiguration sharedConfiguration];
  v5 = [v3 datasetAbStatus];
  [v4 refreshDatasetABStatus:v5];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [v3 routes];
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * i);
        if ([v11 reroutedRoutesCount])
        {
          v12 = [v11 reroutedRouteAtIndex:0];
          [v12 unpackLatLngVertices];
          v13 = [v12 unpackedLatLngVertices];

          if (!v13)
          {
            [v11 setReroutedRoutes:0];
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v14 = *(a1 + 32);
  if (v14)
  {
    (*(v14 + 16))(v14, v3);
  }
}

void sub_10005317C(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = +[GEOProtobufSession sharedDelegateQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100053294;
  block[3] = &unk_100083E70;
  v13 = a1[4];
  v11 = v6;
  v14 = a1[5];
  v15 = a1[6];
  v12 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(v7, block);
}

uint64_t sub_100053294(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    (*(v2 + 16))(v2, 0);
  }

  if (a1[4])
  {
    result = a1[7];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = a1[8];
  }

  v4 = *(result + 16);

  return v4();
}

void sub_100053308(uint64_t a1, void *a2)
{
  v3 = a2;
  if (GEOETATrafficUpdateRequestHasSensitiveFields())
  {
    [v3 clearSensitiveFields:0];
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100053618(void *a1, void *a2, void *a3)
{
  v12 = a2;
  v5 = a3;
  v6 = a1[4];
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
  }

  if (v12)
  {
    v7 = v12;
    v8 = +[GEOExperimentConfiguration sharedConfiguration];
    v9 = [v7 datasetAbStatus];
    [v8 refreshDatasetABStatus:v9];

    v10 = a1[5];
    if (v10)
    {
      (*(v10 + 16))(v10, v7);
    }
  }

  else
  {
    v11 = a1[6];
    if (v11)
    {
      (*(v11 + 16))(v11, v5);
    }
  }
}

void sub_100053768(id a1)
{
  qword_1000961D0 = objc_alloc_init(GEOETAServiceRequester);

  _objc_release_x1();
}

void sub_100053A20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[GEOETAUpdateableWillSendRequest alloc] initWithMessage:@"ETA.willSendETARequest" traits:0 auditToken:0 throttleToken:0];
  v5 = [*(a1 + 32) peer];
  v6 = [v5 connection];
  global_workloop = geo_get_global_workloop();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100053BE8;
  v9[3] = &unk_100083EE8;
  v10 = v3;
  v8 = v3;
  [v4 send:v6 withReply:global_workloop handler:v9];
}

id sub_100053B30(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResponse:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_100053B70(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 setError:v4];
  v5 = [v4 _geo_etaTrafficUpdateErrorInfo];

  [*(a1 + 32) setErrorInfo:v5];
  v6 = *(a1 + 32);

  return [v6 send];
}

void sub_100053BE8(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 updatedRequest];
  (*(v2 + 16))(v2, v3);
}

id sub_100053EF4(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setResponse:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}

id sub_100053F34(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setError:a2];
  v3 = *(a1 + 32);

  return [v3 send];
}