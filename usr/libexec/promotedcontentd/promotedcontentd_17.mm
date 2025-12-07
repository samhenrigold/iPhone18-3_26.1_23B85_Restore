unint64_t sub_100320D04()
{
  result = qword_1004D9AE8;
  if (!qword_1004D9AE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1004D9AE8);
  }

  return result;
}

uint64_t sub_100320D50(void *a1)
{
  v2 = sub_100398CA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1003204D0(a1)[2] && (sub_1001EC1DC(0x64695F656E696CLL, 0xE700000000000000), (v6 & 1) != 0))
  {
    swift_unknownObjectRetain();

    objc_opt_self();
    v7 = swift_dynamicCastObjCClass();
    if (v7)
    {
      v8 = [v7 stringValue];
      v9 = sub_100398F58();
      swift_unknownObjectRelease();

      return v9;
    }

    swift_unknownObjectRelease();
  }

  else
  {
  }

  sub_100398C98();
  v11 = sub_100398C88();
  v12 = sub_1003993E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Specified dictionary did not contain valid journey start relay campaign value.", v13, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_100320F84(void *a1)
{
  v2 = sub_100398CA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1003204D0(a1);
  if (v6[2] && (v7 = sub_1001EC1DC(0x6E676961706D6163, 0xEB0000000064695FLL), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_unknownObjectRetain();

    v14[3] = v9;
    sub_1001E27A8(&unk_1004D5850, &qword_1003EAF30);
    if (swift_dynamicCast())
    {
      return v14[1];
    }
  }

  else
  {
  }

  sub_100398C98();
  v11 = sub_100398C88();
  v12 = sub_1003993E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Specified dictionary did not contain valid journey start relay campaign value.", v13, 2u);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

void sub_100321EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = APPerfLogForCategory();
  v8 = [*(a1 + 32) intervalId];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "Request Certificate", "", v10, 2u);
    }
  }

  [*(a1 + 32) certificateRetrievalDidFinish:v6 error:v5];
}

void sub_10032243C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = APPerfLogForCategory();
  v8 = [*(a1 + 32) intervalId];
  if ((v8 - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v9 = v8;
    if (os_signpost_enabled(v7))
    {
      *v10 = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v7, OS_SIGNPOST_INTERVAL_END, v9, "SAP Negotiating", "", v10, 2u);
    }
  }

  [*(a1 + 32) setupNegotiationStepDidFinish:v6 certificateIsCached:*(a1 + 40) error:v5];
}

void sub_100323B9C(uint64_t a1)
{
  if (![*(a1 + 32) state])
  {
    [*(a1 + 32) setState:1];
    v2 = [*(a1 + 32) provider];
    [v2 setup];
  }
}

void sub_100324208(id a1)
{
  v2 = @"finalStatus";
  v3 = &off_100492E80;
  v1 = [NSDictionary dictionaryWithObjects:&v3 forKeys:&v2 count:1];
  AnalyticsSendEvent();
}

void sub_100324BBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100324BE0(uint64_t a1)
{
  v2 = [*(a1 + 32) provider];
  v3 = *(a1 + 40);
  v6 = 0;
  v4 = [v2 rawSignatureForData:v3 error:&v6];
  v5 = v6;

  (*(*(a1 + 48) + 16))();
}

void sub_100324C68(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained syncRequestsLock];

  [v8 lock];
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 requestsWhileInitializing];
  v5 = [v4 objectForKeyedSubscript:*(a1 + 32)];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    v7 = [v6 requestsWhileInitializing];
    [v7 removeObjectForKey:*(a1 + 32)];

    [v8 unlock];
    v5[2](v5);
  }

  else
  {
    [v8 unlock];
  }
}

void sub_100324E08(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    v5 = a3;
    v8 = [a2 base64EncodedStringWithOptions:32];
    (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 16);
    v8 = a3;
    v7(v6, 0);
  }
}

void sub_100325224(uint64_t a1)
{
  v1 = [*(a1 + 32) provider];
  [v1 retrySetup];
}

void sub_100325480(id a1)
{
  v1 = [APEventChannel alloc];
  v4 = +[APDestination ecRouter];
  v2 = [(APEventChannel *)v1 initWithDestination:v4 purpose:1234];
  v3 = qword_1004E6D28;
  qword_1004E6D28 = v2;
}

void sub_100325698(id a1)
{
  v1 = +[MetricsModuleClasses metricClass];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = [NSSet setWithObjects:v1, v2, v3, objc_opt_class(), 0];
  [APSupportedSecureEncodedClass addClasses:v4];
}

APEventChannel *__cdecl sub_100325C28(id a1, NSString *a2)
{
  v2 = [(NSString *)a2 componentsSeparatedByString:@"/"];
  if ([v2 count] == 2)
  {
    v3 = [APEventChannel alloc];
    v4 = [APDestination alloc];
    v5 = [v2 objectAtIndexedSubscript:0];
    v6 = [(APDestination *)v4 initWithString:v5];
    v7 = [v2 objectAtIndexedSubscript:1];
    v8 = -[APEventChannel initWithDestination:purpose:](v3, "initWithDestination:purpose:", v6, [v7 intValue]);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

id *sub_1003270F8(id *result)
{
  if (*(result + 48) == 1)
  {
    return [result[4] flushMetricsToServerForChannel:result[5]];
  }

  if (*(result + 49) == 1)
  {
    return [result[4] metricsReadyForDeliveryToChannel:result[5]];
  }

  return result;
}

uint64_t sub_100327710(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [v3 buildSignatureUsingSigning:*(a1 + 32) error:0];
  v6 = [*(a1 + 40) destination];
  v7 = [v6 protectedDestination];
  v8 = [*(a1 + 40) purpose];
  v9 = [v3 signature];
  v10 = +[APMetricStorage_private preparedDataPathForDestination:purpose:containsSignature:](APMetricStorage_private, "preparedDataPathForDestination:purpose:containsSignature:", v7, v8, [v9 length] != 0);

  v11 = +[NSDate now];
  v12 = [v11 yearDayOfYearHourMinute];
  v13 = +[NSUUID UUID];
  v14 = [v13 UUIDString];
  v15 = [NSString stringWithFormat:@"%@.%@", v12, v14];

  v16 = [v10 stringByAppendingPathComponent:v15];
  v17 = *(a1 + 48);
  v25 = 0;
  v18 = [v17 fileForWritingAtKeyPath:v16 error:&v25];
  v19 = v25;
  if (v19)
  {
    v20 = v19;
    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v20;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to save prepared data: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v24 = 0;
    [v18 addObject:v3 error:&v24];
    v20 = v24;
    [v18 close];
    if (!v20)
    {
      v22 = 1;
      goto LABEL_9;
    }

    v21 = APLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v20;
      goto LABEL_7;
    }
  }

  v22 = 0;
LABEL_9:

  objc_autoreleasePoolPop(v4);
  return v22;
}

id *sub_100327D4C(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = APMetricPreparedUnsignedDataProcessor;
    v10 = objc_msgSendSuper2(&v18, "init");
    a1 = v10;
    if (v10)
    {
      objc_storeStrong(v10 + 2, a3);
      objc_storeWeak(a1 + 3, v7);
      objc_storeStrong(a1 + 5, a4);
      objc_initWeak(&location, a1);
      v11 = [APSequentialProcessor alloc];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100327EBC;
      v15[3] = &unk_10047E408;
      objc_copyWeak(&v16, &location);
      v12 = sub_1003951C0(v11, v8, v15);
      v13 = a1[4];
      a1[4] = v12;

      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_100327E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100327EBC(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100327F94;
  v10[3] = &unk_10047E3E0;
  v11 = v5;
  v9 = v5;
  [WeakRetained _processNextFile:v6 completionHandler:v10];
}

uint64_t sub_100327F94(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0);
  }

  return result;
}

void sub_100327FB0(void *a1)
{
  if (a1)
  {
    v2 = APLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Unsigned prepared data server delivery update.", buf, 2u);
    }

    objc_initWeak(buf, a1);
    v3 = [a1 processor];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_1003280D4;
    v4[3] = &unk_10047E430;
    objc_copyWeak(&v5, buf);
    sub_100395298(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_1003280B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

id sub_1003280D4(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained storage];
  v5 = +[APDestination ecRouter];
  v6 = [v4 preparedMetricDataForDestination:v5 purpose:1234 containsSignature:0];

  v7 = [v6 objectEnumerator];

  return v7;
}

void sub_1003282C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1003282EC(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _signFile:*(a1 + 32) usingSigningAuthority:v3 completionHandler:*(a1 + 40)];
}

void sub_1003295F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100329620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100329638(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) data];
  v4 = [*(a1 + 40) signature];
  v5 = [v2 _hashAndSavePayloadForInternalTesting:v3 signature:v4];

  v6 = [*(a1 + 40) headers];
  v7 = [NSMutableDictionary dictionaryWithDictionary:v6];

  if (+[APSystemInternal isAppleInternalInstall])
  {
    [v7 setObject:@"true" forKeyedSubscript:@"X-Apple-EventCollection-Internal"];
  }

  v8 = +[APDeviceInfo current];
  v9 = [v8 deviceModel];
  [v7 setObject:v9 forKeyedSubscript:@"X-Apple-EventCollection-Model"];

  v10 = [v8 buildVersion];
  [v7 setObject:v10 forKeyedSubscript:@"X-Apple-EventCollection-Build"];

  v11 = +[APSystemInfo osIdentifier];
  [v7 setObject:v11 forKeyedSubscript:@"X-Apple-EventCollection-OS"];

  v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"EventCollection %d", [&off_100493480 intValue]);
  [v7 setObject:v12 forKeyedSubscript:@"User-Agent"];

  v13 = [*(a1 + 40) signature];
  [v7 setObject:v13 forKeyedSubscript:@"X-Apple-ActionSignature"];

  if (v5)
  {
    [v7 setObject:v5 forKeyedSubscript:@"apple-request-id"];
  }

  if (+[APSystemInternal isAppleInternalInstall])
  {
    v14 = [NSUserDefaults alloc];
    v15 = [v14 initWithSuiteName:APDefaultsBundleID];
    v16 = [v15 BOOLForKey:kAPAutomationLoggingEnabled];

    if (v16)
    {
      v17 = APLogForCategory();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v30 = v7;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEBUG, "Headers (%@)", buf, 0xCu);
      }
    }
  }

  v18 = sub_100007F08(APMetricsObservability);
  sub_100394A90(v18, *(a1 + 48));

  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  v21 = [*(a1 + 40) data];
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1003299E8;
  v25[3] = &unk_10047E4A0;
  v25[4] = *(a1 + 32);
  v26 = *(a1 + 64);
  v27 = *(a1 + 72);
  v24 = *(a1 + 80);
  v22 = v24;
  v28 = v24;
  v23 = [v19 POST:v20 headers:v7 body:v21 withCompletionHandler:v25];
}

void sub_1003299E8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 URLResponse];
  v5 = [v4 statusCode];
  v6 = APLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = *(a1 + 40);
    v10 = *(a1 + 48);
    v14 = 138478595;
    v15 = v8;
    v16 = 2113;
    v17 = v9;
    v18 = 2117;
    v19 = v10;
    v20 = 2048;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{private}@] Metric data sent to server (%{private}@) (%{sensitive}@) with result (%ld).", &v14, 0x2Au);
  }

  v11 = *(*(a1 + 64) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v3;
  v13 = v3;

  dispatch_group_leave(*(a1 + 56));
}

void sub_10032A0D8(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1004E6D50;
  qword_1004E6D50 = v1;

  [qword_1004E6D50 setDateFormat:@"yyyyDDDHHmm"];
  v3 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
  [qword_1004E6D50 setTimeZone:v3];

  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1004E6D50 setLocale:v4];
}

void sub_10032A1E4(id a1)
{
  v1 = objc_alloc_init(NSDateFormatter);
  v2 = qword_1004E6D60;
  qword_1004E6D60 = v1;

  [qword_1004E6D60 setDateFormat:@"yyyyDDDHHmmSSSSSS"];
  v3 = [NSTimeZone timeZoneWithAbbreviation:@"UTC"];
  [qword_1004E6D60 setTimeZone:v3];

  v4 = [NSLocale localeWithLocaleIdentifier:@"en_US_POSIX"];
  [qword_1004E6D60 setLocale:v4];
}

void sub_10032AB54(id a1)
{
  v1 = +[NSSet setWithObject:](NSSet, "setWithObject:", +[MetricsModuleClasses metricClass]);
  [APSupportedSecureEncodedClass addClasses:v1];
}

void sub_10032C604(uint64_t a1)
{
  v2 = APLogForCategory();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Batch expired, batch ID: %{public}@", &v5, 0xCu);
  }

  v4 = [*(a1 + 40) signalMonitor];
  [v4 batchExpiredWithBatchID:*(a1 + 32)];
}

void sub_10032C6CC(uint64_t a1)
{
  v2 = [*(a1 + 32) signalMonitor];
  [v2 eventSavedWithCreatedToSavedTimeInterval:*(a1 + 48)];
}

void sub_10032C810(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) compactMapObjectsUsingBlock:&stru_10047E5B8];
    if (![v2 count])
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = @"server";
    v5 = *(a1 + 64);
    if (!*(a1 + 56))
    {
      v4 = @"client";
    }

    v9 = 138543874;
    v10 = v4;
    v11 = 2048;
    v12 = v5;
    v13 = 2114;
    v14 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Upload failed with error %{public}@: %ld, batchIDs: %{public}@", &v9, 0x20u);
  }

  v6 = [*(a1 + 40) signalMonitor];
  v7 = v6;
  if (v2)
  {
    v8 = v2;
  }

  else
  {
    v8 = &__NSArray0__struct;
  }

  [v6 uploadFailureWithType:*(a1 + 56) code:*(a1 + 64) batchIDs:v8];

LABEL_13:
}

id sub_10032C958(id a1, APMetricBatchInfoObservable *a2)
{
  v2 = a2;
  v3 = [(APMetricBatchInfoObservable *)v2 purpose];
  if (v3 < 1 || v3 == 8501)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(APMetricBatchInfoObservable *)v2 identifier];
  }

  return v5;
}

void sub_10032CA9C(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) compactMapObjectsUsingBlock:&stru_10047E600];
    if (![v2 count])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Upload success", v5, 2u);
  }

  v4 = [*(a1 + 40) signalMonitor];
  [v4 uploadSuccess];

LABEL_8:
}

id sub_10032CB64(id a1, APMetricBatchInfoObservable *a2)
{
  v2 = a2;
  v3 = [(APMetricBatchInfoObservable *)v2 purpose];
  if (v3 < 1 || v3 == 8501)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(APMetricBatchInfoObservable *)v2 identifier];
  }

  return v5;
}

void sub_10032CBCC(uint64_t a1)
{
  if ([*(a1 + 32) count])
  {
    v2 = [*(a1 + 32) compactMapObjectsUsingBlock:&stru_10047E620];
    if (![v2 count])
    {
      goto LABEL_8;
    }
  }

  else
  {
    v2 = 0;
  }

  v3 = APLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v5 = 134218242;
    v6 = [v2 count];
    v7 = 2114;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEBUG, "Will upload %ld batches. BatchIDs: %{public}@", &v5, 0x16u);
  }

  v4 = [*(a1 + 40) signalMonitor];
  [v4 willUploadWithBatchCount:{objc_msgSend(v2, "count")}];

LABEL_8:
}

id sub_10032CCF0(id a1, APMetricBatchInfoObservable *a2)
{
  v2 = a2;
  v3 = [(APMetricBatchInfoObservable *)v2 purpose];
  if (v3 < 1 || v3 == 8501)
  {
    v5 = 0;
  }

  else
  {
    v5 = [(APMetricBatchInfoObservable *)v2 identifier];
  }

  return v5;
}

id sub_10032CD58(uint64_t a1)
{
  [*(a1 + 32) _batchClosedWithBatchLifetime:*(a1 + 40) batchID:*(a1 + 64) eventsCount:*(a1 + 56)];
  v2 = *(a1 + 32);
  v3 = *(a1 + 72);

  return [v2 _batchEnqueuedWithQueueLength:v3];
}

id sub_10032CDB8(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v10 = 0;
  v6 = [v5 createdDateForFileAtPath:v4 error:&v10];

  v7 = v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    APSimulateCrashNoKillProcess();
  }

  return v6;
}

id sub_10032CE6C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  objc_opt_self();
  v10 = 0;
  v6 = [v5 addedToDirectoryDateForFileAtPath:v4 error:&v10];

  v7 = v10;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    APSimulateCrashNoKillProcess();
  }

  return v6;
}

void sub_10032D078(id a1)
{
  if (!qword_1004E6D80)
  {
    qword_1004E6D80 = NSClassFromString(@"APMetric");
  }
}

void sub_10032D1B8(id a1)
{
  if (!qword_1004E6D90)
  {
    qword_1004E6D90 = NSClassFromString(@"APMetricBatch");
  }
}

void sub_10032D33C(id a1)
{
  if (!qword_1004E6DA0)
  {
    qword_1004E6DA0 = NSClassFromString(@"APMetricNotificationRegistrar");
  }
}

void sub_10032D508(id a1)
{
  if (!qword_1004E6DB0)
  {
    qword_1004E6DB0 = NSClassFromString(@"APMetricPurpose");
  }
}

void sub_10032D68C(id a1)
{
  if (!qword_1004E6DC0)
  {
    qword_1004E6DC0 = NSClassFromString(@"APMetricHTTPDelivery");
  }
}

void sub_10032D810(id a1)
{
  if (!qword_1004E6DD0)
  {
    qword_1004E6DD0 = NSClassFromString(@"APMetricServerDelivery");
  }
}

void sub_10032D950(id a1)
{
  if (!qword_1004E6DE0)
  {
    qword_1004E6DE0 = NSClassFromString(@"APMetricStorageEC");
  }
}

unint64_t typeTranslation(unint64_t result)
{
  if (result <= 5)
  {
    return qword_1003F0938[result];
  }

  return result;
}

id *sub_10032ECDC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v21.receiver = a1;
    v21.super_class = APMetricPreparedDataServerDelivery;
    v13 = objc_msgSendSuper2(&v21, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 1, a3);
      objc_storeWeak(a1 + 2, v9);
      objc_storeWeak(a1 + 3, v11);
      objc_storeStrong(a1 + 7, a5);
      objc_initWeak(&location, a1);
      v14 = [APSequentialProcessor alloc];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10032EE70;
      v18[3] = &unk_10047E408;
      objc_copyWeak(&v19, &location);
      v15 = sub_1003951C0(v14, v10, v18);
      v16 = a1[6];
      a1[6] = v15;

      objc_destroyWeak(&v19);
      objc_destroyWeak(&location);
    }
  }

  return a1;
}

void sub_10032EE4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10032EE70(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v9 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained _uploadFile:v6];

  v5[2](v5, v8);
}

void sub_10032EF10(void *a1)
{
  if (a1)
  {
    v2 = APLogForCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "Prepared data server delivery update.", buf, 2u);
    }

    objc_initWeak(buf, a1);
    v3 = [a1 processor];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10032F034;
    v4[3] = &unk_10047E430;
    objc_copyWeak(&v5, buf);
    sub_100395298(v3, v4);

    objc_destroyWeak(&v5);
    objc_destroyWeak(buf);
  }
}

void sub_10032F010(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 32));
  _Unwind_Resume(a1);
}

id sub_10032F034(uint64_t a1)
{
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained storage];
  v5 = +[APDestination ecRouter];
  v6 = [v4 preparedMetricDataForDestination:v5 purpose:1234 containsSignature:1];

  v7 = [v6 objectEnumerator];
  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setFiles:v7];

  v9 = objc_loadWeakRetained((a1 + 32));
  v10 = [v9 files];

  return v10;
}

void sub_10032F1E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

id sub_10032F208(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained files];

  return v2;
}

id sub_1003329A4(uint64_t a1)
{
  v2 = +[APMetricOffsetSettings settings];
  v3 = qword_1004E6DF8;
  qword_1004E6DF8 = v2;

  v4 = *(a1 + 32);

  return [v4 _setupDefaultRoutes];
}

void sub_100332B20(id a1)
{
  if (!qword_1004E6E10)
  {
    qword_1004E6E10 = objc_opt_class();
  }
}

void sub_100332CA4(id a1)
{
  if (!qword_1004E6E20)
  {
    qword_1004E6E20 = objc_opt_class();
  }
}

id sub_100334454(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v10 = 0;
  v5 = [v4 lastModifiedDateForFileAtPath:v3 error:&v10];
  v6 = v10;
  if (v6)
  {
    v7 = APLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138740227;
      v12 = v3;
      v13 = 2114;
      v14 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Error getting last modified date of batch at (%{sensitive}@)! %{public}@", buf, 0x16u);
    }

    v8 = 0;
  }

  else
  {
    v8 = [v5 isBefore:*(a1 + 40)];
  }

  return v8;
}

void sub_100335F84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100335F9C(uint64_t a1, void *a2, _BYTE *a3)
{
  result = [a2 count];
  if (result == 4)
  {
    ++*(*(*(a1 + 32) + 8) + 24);
    *a3 = 1;
  }

  return result;
}

void sub_1003361C0(id a1)
{
  qword_1004E6E28 = [NSMutableDictionary dictionaryWithCapacity:5];

  _objc_release_x1();
}

id sub_100336DDC(uint64_t a1)
{
  [*(a1 + 32) lock];
  if (([*(a1 + 40) isRunning] & 1) == 0)
  {
    [*(a1 + 40) setIsRunning:1];
    v2 = [*(a1 + 40) queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100336E94;
    block[3] = &unk_1004790A8;
    block[4] = *(a1 + 40);
    dispatch_async(v2, block);
  }

  return [*(a1 + 32) unlock];
}

void sub_100337038(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1003370D8;
  v5[3] = &unk_10047E8B8;
  v5[4] = *(a1 + 32);
  v6 = a2;
  dispatch_async(v4, v5);
}

void sub_100337214(id a1)
{
  v2 = objc_alloc_init(APJourneyBatchSettings);
  [(APJourneyBatchSettings *)v2 periodicDelayTimeInterval];
  qword_1004E6E38 = v1;
}

void sub_10033745C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100337480(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _configurePreparedDataObjects];
}

void sub_100337590(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

void sub_1003375B4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained serverDeliveryQueue];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1003376CC;
  v10[3] = &unk_10047E908;
  v9 = v5;
  v11 = v9;
  objc_copyWeak(&v12, (a1 + 32));
  dispatch_async(v8, v10);

  v6[2](v6, @"OK");
  objc_destroyWeak(&v12);
}

void sub_1003376CC(uint64_t a1)
{
  v10 = objc_alloc_init(APFakeNetworkResponse);
  v2 = [(APFakeNetworkResponse *)v10 loadConfig:*(a1 + 32)];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (v2)
  {
    v4 = v10;
  }

  else
  {
    v4 = 0;
  }

  [WeakRetained setFakeNetworkResponse:v4];

  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = [v5 backoffTimers];
  [v6 removeAllObjects];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 lastProcessingDates];
  [v8 removeAllObjects];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 processServerDeliveryTimer];
}

void sub_1003377F4(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 32));
  v1 = objc_loadWeakRetained(&to);
  [v1 processServerDeliveryTimer];

  objc_destroyWeak(&to);
}

void sub_100338F08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, ...)
{
  va_start(va, a40);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100338F3C(uint64_t a1, void *a2)
{
  ++*(*(*(a1 + 40) + 8) + 24);
  v3 = [a2 bundleIdentifier];
  if ([v3 length])
  {
    [*(a1 + 32) addObject:v3];
  }
}

void sub_100339270(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100339298(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1003392B0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [APEventChannel alloc];
  v5 = [*(a1 + 32) destination];
  v6 = [v3 intValue];

  v10 = [(APEventChannel *)v4 initWithDestination:v5 purpose:v6];
  v7 = [*(*(*(a1 + 40) + 8) + 40) arrayByAddingObject:v10];
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;
}

void sub_100339A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100339AAC(uint64_t a1, char a2)
{
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v3 = *(a1 + 32);
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        if (*(a1 + 56) == 1)
        {
          v10 = [*(a1 + 40) batchDeliveredClosure];
          if (v10)
          {
            v11 = [v9 identifier];
            (v10)[2](v10, v11, [v9 metricsCount]);
          }
        }

        v12 = APLogForCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v13 = [v9 identifier];
          *buf = 138543362;
          v22 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "deleting batch %{public}@", buf, 0xCu);
        }

        v14 = [v9 fileSystemToken];
        v15 = [APMetricBatch removeBatchByFileSystemToken:v14];

        v7 &= v15;
      }

      v5 = [v3 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v7 & a2;
}

void sub_100339DA8(uint64_t a1)
{
  objc_copyWeak(&to, (a1 + 40));
  v2 = objc_loadWeakRetained(&to);
  [v2 processMetrics:*(a1 + 48) forChannel:*(a1 + 32)];

  objc_destroyWeak(&to);
}

void sub_10033A4D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_10033A4F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained preparedDataServerDelivery];
  sub_10032EF10(v1);
}

void sub_10033A7A0(id a1)
{
  qword_1004E6E50 = [[APDestination alloc] initWithString:@"ECRouter"];

  _objc_release_x1();
}

uint64_t sub_10033B27C()
{
  sub_100003894((v0 + 16));

  return swift_deallocClassInstance();
}

float sub_10033B2B4()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1000035B8(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100398CA8();
  sub_10000351C(v4, qword_1004DE5D0);
  v5 = sub_100398C88();
  v6 = sub_1003993D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v11 = v8;
    sub_1003992E8();
    v9 = sub_100005700(0, 0xE000000000000000, &v11);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "time range offset: %s", v7, 0xCu);
    sub_100003894(v8);
  }

  return v3;
}

double variable initialization expression of ObservabilityManager.stateDumper@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_10033B4DC()
{
  sub_1001E27A8(&unk_1004D7BF0, &unk_1003EE150);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003EB210;
  v5 = (v4 + v3);
  *v5 = xmmword_1003EE0D0;
  v6 = enum case for IntBucketContents.range(_:);
  v7 = *(v1 + 104);
  v7(v5, enum case for IntBucketContents.range(_:), v0);
  *(v5 + v2) = xmmword_1003EE0E0;
  v7((v5 + v2), v6, v0);

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100000, v4, _swiftEmptyArrayStorage);
}

Swift::Int sub_10033B62C()
{
  v1 = *v0;
  v2 = v0[1];
  sub_100399B58();
  sub_100399B68(v1);
  sub_100399B68(v2);
  return sub_100399B88();
}

void sub_10033B688()
{
  v1 = v0[1];
  sub_100399B68(*v0);
  sub_100399B68(v1);
}

Swift::Int sub_10033B6C4(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_100399B58();
  sub_100399B68(v2);
  sub_100399B68(v3);
  return sub_100399B88();
}

uint64_t sub_10033B748()
{
  v1 = sub_100399998();
  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  sub_100399068(v2);
  v3._countAndFlagsBits = sub_100399998();
  sub_100399068(v3);

  return v1;
}

uint64_t getEnumTagSinglePayload for ObservabilityErrorBucket(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ObservabilityErrorBucket(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

unint64_t sub_10033B838()
{
  result = qword_1004DA248[0];
  if (!qword_1004DA248[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1004DA248);
  }

  return result;
}

uint64_t sub_10033B894(uint64_t a1)
{
  result = sub_1003995E8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10033B910(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((*(v4 + 80) + ((v7 + ((v7 + *(v4 + 80)) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
        }

        if (v9)
        {
          if (v9 > 3)
          {
            LODWORD(v9) = 4;
          }

          if (v9 > 2)
          {
            if (v9 == 3)
            {
              LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              LODWORD(v9) = *a1;
            }
          }

          else if (v9 == 1)
          {
            LODWORD(v9) = *a1;
          }

          else
          {
            LODWORD(v9) = *a1;
          }
        }

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *sub_10033BAB0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((*(v6 + 80) + ((v8 + ((v8 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

uint64_t sub_10033BD1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5)
{
  v70 = a5;
  v75 = a4;
  v8 = *(a3 - 8);
  __chkstk_darwin(a1);
  v69 = &v62[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1003995E8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v67 = &v62[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __chkstk_darwin(v12);
  v68 = &v62[-v15];
  __chkstk_darwin(v14);
  v17 = &v62[-v16];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v76 = *(TupleTypeMetadata2 - 8);
  v19 = __chkstk_darwin(TupleTypeMetadata2);
  v66 = &v62[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v19);
  v71 = &v62[-v22];
  v23 = __chkstk_darwin(v21);
  v25 = &v62[-v24];
  v77 = v11;
  v78 = v23;
  v26 = *(v23 + 48);
  v27 = *(v11 + 16);
  v73 = a1;
  v28 = a1;
  v29 = v27;
  (v27)(&v62[-v24], v28, v10);
  v74 = a2;
  (v27)(&v25[v26], a2, v10);
  v30 = *(v8 + 48);
  v31 = v30(v25, 1, a3);
  v72 = v30;
  if (v31 == 1)
  {
    if (v30(&v25[v26], 1, a3) == 1)
    {
      v65 = v8;
      v32 = *(v77 + 8);
      v32(v25, v10);
      v33 = v75;
      goto LABEL_8;
    }

LABEL_6:
    (*(v76 + 8))(v25, v78);
    return 0;
  }

  (v29)(v17, v25, v10);
  if (v30(&v25[v26], 1, a3) == 1)
  {
    (*(v8 + 8))(v17, a3);
    goto LABEL_6;
  }

  v34 = *(v8 + 32);
  v64 = v29;
  v35 = v69;
  v34(v69, &v25[v26], a3);
  v33 = v75;
  v63 = sub_100398F08();
  v65 = v8;
  v36 = *(v8 + 8);
  v37 = v35;
  v29 = v64;
  v36(v37, a3);
  v36(v17, a3);
  v32 = *(v77 + 8);
  v32(v25, v10);
  if ((v63 & 1) == 0)
  {
    return 0;
  }

LABEL_8:
  v64 = v32;
  v70 = type metadata accessor for FourNumberSummary(0, a3, v33, v70);
  v38 = v70[11];
  v39 = *(v78 + 48);
  v40 = v73;
  v41 = v71;
  (v29)(v71, v73 + v38, v10);
  v42 = v74 + v38;
  v43 = v74;
  (v29)(&v41[v39], v42, v10);
  v44 = v72;
  if (v72(v41, 1, a3) != 1)
  {
    v45 = v68;
    (v29)(v68, v41, v10);
    v46 = v44(&v41[v39], 1, a3);
    v47 = v65;
    if (v46 != 1)
    {
      v49 = v45;
      v50 = v69;
      (*(v65 + 32))(v69, &v41[v39], a3);
      v63 = sub_100398F08();
      v51 = *(v47 + 8);
      v52 = v50;
      v40 = v73;
      v51(v52, a3);
      v51(v49, a3);
      v64(v41, v10);
      v43 = v74;
      v44 = v72;
      if ((v63 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v65 + 8))(v45, a3);
LABEL_13:
    (*(v76 + 8))(v41, v78);
    return 0;
  }

  if (v44(&v41[v39], 1, a3) != 1)
  {
    goto LABEL_13;
  }

  v64(v41, v10);
LABEL_17:
  if (*(v40 + v70[12]) == *(v43 + v70[12]))
  {
    v53 = v40;
    v54 = v70[13];
    v55 = *(v78 + 48);
    v56 = v66;
    (v29)(v66, v53 + v54, v10);
    (v29)(&v56[v55], v43 + v54, v10);
    if (v44(v56, 1, a3) == 1)
    {
      if (v44(&v56[v55], 1, a3) == 1)
      {
        v64(v56, v10);
        return 1;
      }

      goto LABEL_23;
    }

    (v29)(v67, v56, v10);
    if (v44(&v56[v55], 1, a3) == 1)
    {
      (*(v65 + 8))(v67, a3);
LABEL_23:
      (*(v76 + 8))(v56, v78);
      return 0;
    }

    v57 = v65;
    v58 = v69;
    (*(v65 + 32))(v69, &v56[v55], a3);
    v59 = v67;
    v60 = sub_100398F08();
    v61 = *(v57 + 8);
    v61(v58, a3);
    v61(v59, a3);
    v64(v56, v10);
    if (v60)
    {
      return 1;
    }
  }

  return 0;
}

__n128 sub_10033C4F4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10033C528(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10033C570(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10033C5E0@<X0>(int a1@<W0>, uint64_t a2@<X8>)
{
  v79 = a1;
  v75 = a2;
  v3 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  v4 = __chkstk_darwin(v3 - 8);
  v68 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v70 = &v64 - v7;
  __chkstk_darwin(v6);
  v71 = &v64 - v8;
  v76 = type metadata accessor for TimeRange(0);
  v9 = __chkstk_darwin(v76);
  v65 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v69 = &v64 - v12;
  __chkstk_darwin(v11);
  v67 = &v64 - v13;
  v78 = sub_100397968();
  v14 = *(v78 - 8);
  __chkstk_darwin(v78);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_100397918();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_100397318();
  v73 = *(v21 - 8);
  v74 = v21;
  __chkstk_darwin(v21);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = sub_100397748();
  v24 = *(v77 - 8);
  v25 = __chkstk_darwin(v77);
  v64 = &v64 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v66 = &v64 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v64 - v30;
  __chkstk_darwin(v29);
  v33 = &v64 - v32;
  sub_100397678();
  sub_100397868();
  sub_100397928();
  v72 = v33;
  sub_100397888();
  (*(v14 + 8))(v16, v78);
  v34 = *(v18 + 8);
  v34(v20, v17);
  sub_1003972B8();
  sub_1003971D8();
  if (!v79)
  {
    v45 = v31;
    sub_100397298();
    sub_100397258();
    sub_100397868();
    v46 = v71;
    sub_1003978B8();
    v34(v20, v17);
    v36 = v77;
    result = (*(v24 + 48))(v46, 1, v77);
    if (result != 1)
    {
      v47 = v71;
      sub_100397678();
      v39 = *(v24 + 8);
      v39(v47, v36);
      v40 = v67;
      (*(v24 + 32))(v67, v45, v36);
      *(v40 + *(v76 + 20)) = 0;
      sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
      v48 = swift_allocObject();
      *(v48 + 16) = xmmword_1003EB210;
      result = sub_100397278();
      if ((v49 & 1) == 0)
      {
        *(v48 + 56) = &type metadata for Int;
        *(v48 + 64) = &protocol witness table for Int;
        *(v48 + 32) = result;
        result = sub_100397228();
        if ((v50 & 1) == 0)
        {
          *(v48 + 96) = &type metadata for Int;
          *(v48 + 104) = &protocol witness table for Int;
          *(v48 + 72) = result;
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      goto LABEL_24;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v79 == 1)
  {
    sub_100397298();
    sub_100397868();
    v35 = v70;
    sub_1003978B8();
    v34(v20, v17);
    v36 = v77;
    result = (*(v24 + 48))(v35, 1, v77);
    if (result != 1)
    {
      v38 = v66;
      sub_100397678();
      v39 = *(v24 + 8);
      v39(v35, v36);
      v40 = v69;
      (*(v24 + 32))(v69, v38, v36);
      *(v40 + *(v76 + 20)) = 1;
      sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
      v41 = swift_allocObject();
      *(v41 + 16) = xmmword_1003C9260;
      result = sub_100397278();
      if ((v42 & 1) == 0)
      {
        *(v41 + 56) = &type metadata for Int;
        *(v41 + 64) = &protocol witness table for Int;
        *(v41 + 32) = result;
        result = sub_100397228();
        if ((v43 & 1) == 0)
        {
          *(v41 + 96) = &type metadata for Int;
          *(v41 + 104) = &protocol witness table for Int;
          *(v41 + 72) = result;
          result = sub_100397248();
          if ((v44 & 1) == 0)
          {
            *(v41 + 136) = &type metadata for Int;
            *(v41 + 144) = &protocol witness table for Int;
            *(v41 + 112) = result;
LABEL_19:
            v59 = sub_100398F88();
            v61 = v60;
            (*(v73 + 8))(v23, v74);
            v39(v72, v36);
            v62 = v75;
            sub_10000C120(v40, v75);
            result = type metadata accessor for ObservabilityReportingInterval(0);
            v63 = (v62 + *(result + 20));
            *v63 = v59;
            v63[1] = v61;
            return result;
          }

          goto LABEL_29;
        }

        goto LABEL_26;
      }

      goto LABEL_23;
    }

    __break(1u);
    goto LABEL_21;
  }

  result = sub_100397288();
  if (v51)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  sub_100397298();
  sub_100397868();
  v52 = v68;
  sub_1003978B8();
  v34(v20, v17);
  v36 = v77;
  result = (*(v24 + 48))(v52, 1, v77);
  if (result == 1)
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v53 = v64;
  sub_100397678();
  v39 = *(v24 + 8);
  v39(v52, v36);
  v40 = v65;
  (*(v24 + 32))(v65, v53, v36);
  *(v40 + *(v76 + 20)) = 2;
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_1003EB200;
  result = sub_100397278();
  if (v55)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  *(v54 + 56) = &type metadata for Int;
  *(v54 + 64) = &protocol witness table for Int;
  *(v54 + 32) = result;
  result = sub_100397228();
  if (v56)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  *(v54 + 96) = &type metadata for Int;
  *(v54 + 104) = &protocol witness table for Int;
  *(v54 + 72) = result;
  result = sub_100397248();
  if (v57)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  *(v54 + 136) = &type metadata for Int;
  *(v54 + 144) = &protocol witness table for Int;
  *(v54 + 112) = result;
  result = sub_100397288();
  if ((v58 & 1) == 0)
  {
    *(v54 + 176) = &type metadata for Int;
    *(v54 + 184) = &protocol witness table for Int;
    *(v54 + 152) = result;
    goto LABEL_19;
  }

LABEL_32:
  __break(1u);
  return result;
}

void sub_10033CF50(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1003999B8();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_10033CFD8(uint64_t a1)
{
  v2 = sub_10033E5A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10033D014(uint64_t a1)
{
  v2 = sub_10033E5A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10033D050@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = sub_1001E27A8(&qword_1004DA2D0, &unk_1003F0C70);
  __chkstk_darwin(v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1001E27A8(&qword_1004DA400, &qword_1003F0CE8);
  v17 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams(0);
  __chkstk_darwin(v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UtcDate(0);
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_1000035B8(a1, a1[3]);
  sub_10033E5A4();
  v13 = v18;
  sub_100399BC8();
  if (!v13)
  {
    v14 = v16;
    sub_10033E5F8(&qword_1004DCEE0, type metadata accessor for UtcDate, &unk_1003F3704);
    sub_1003998A8();
    (*(v17 + 8))(v8, v6);
    sub_10033E640(v5, v11);
    sub_10033E6B0(v11, v14, type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams);
  }

  sub_100003894(a1);
  return sub_10033E39C(v11, type metadata accessor for ObservabilityStateDumper.ObservabilityStateDumperParams);
}

uint64_t sub_10033D320(uint64_t a1)
{
  v2 = sub_1001E27A8(&qword_1004DA2D0, &unk_1003F0C70);
  __chkstk_darwin(v2 - 8);
  v4 = &v15 - v3;
  v5 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  __chkstk_darwin(v5 - 8);
  v7 = &v15 - v6;
  v8 = sub_100397748();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10033D600(a1, v4);
  v12 = type metadata accessor for UtcDate(0);
  if ((*(*(v12 - 8) + 48))(v4, 1, v12) == 1)
  {
    sub_1001ED244(v4, &qword_1004DA2D0, &unk_1003F0C70);
    (*(v9 + 56))(v7, 1, 1, v8);
    sub_100397738();
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      sub_1001ED244(v7, &qword_1004D4CE0, &unk_1003C8E30);
    }
  }

  else
  {
    (*(v9 + 16))(v7, v4, v8);
    sub_10033E39C(v4, type metadata accessor for UtcDate);
    (*(v9 + 56))(v7, 0, 1, v8);
    (*(v9 + 32))(v11, v7, v8);
  }

  v13 = sub_10033D670();
  (*(v9 + 8))(v11, v8);
  return v13;
}

uint64_t sub_10033D600(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DA2D0, &unk_1003F0C70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033D670()
{
  v1 = v0;
  v99 = sub_100397318();
  v102 = *(v99 - 8);
  __chkstk_darwin(v99);
  v95 = &v79 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_100397918();
  v101 = *(v98 - 8);
  __chkstk_darwin(v98);
  v87 = &v79 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397748();
  v103 = *(v4 - 8);
  v5 = __chkstk_darwin(v4);
  v80 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v81 = &v79 - v8;
  __chkstk_darwin(v7);
  v84 = &v79 - v9;
  v97 = type metadata accessor for TimeRange(0);
  __chkstk_darwin(v97);
  v86 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  v12 = __chkstk_darwin(v11 - 8);
  v83 = &v79 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v85 = &v79 - v15;
  v16 = __chkstk_darwin(v14);
  v88 = &v79 - v17;
  v18 = __chkstk_darwin(v16);
  v94 = (&v79 - v19);
  __chkstk_darwin(v18);
  v21 = &v79 - v20;
  v22 = type metadata accessor for ObservabilityReportingInterval(0);
  v23 = __chkstk_darwin(v22 - 8);
  v25 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = &v79 - v27;
  __chkstk_darwin(v26);
  v30 = &v79 - v29;
  v32 = v0[3];
  v31 = v0[4];
  sub_1000035B8(v0, v32);
  v33 = (*(v31 + 8))(v32, v31);
  v92 = v30;
  sub_10033C5E0(0, v30);
  v89 = v28;
  sub_10033C5E0(1, v28);
  v82 = v25;
  v34 = v25;
  v35 = v4;
  sub_10033C5E0(2, v34);
  v36 = [objc_allocWithZone(NSDateComponentsFormatter) init];
  v104 = 0;
  v105 = 0xE000000000000000;
  sub_1003996F8(252);
  v106._countAndFlagsBits = 0xD000000000000033;
  v106._object = 0x8000000100437FE0;
  sub_100399068(v106);
  v37 = sub_10033E5F8(&qword_1004D5AC0, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v107._countAndFlagsBits = sub_100399998();
  sub_100399068(v107);

  v108._countAndFlagsBits = 10272;
  v108._object = 0xE200000000000000;
  sub_100399068(v108);
  v109._countAndFlagsBits = sub_100397618();
  sub_100399068(v109);

  v110._countAndFlagsBits = 0xD00000000000001CLL;
  v110._object = 0x8000000100438020;
  sub_100399068(v110);
  sub_1003992E8();
  v111._countAndFlagsBits = 10272;
  v111._object = 0xE200000000000000;
  sub_100399068(v111);
  v79 = v36;
  v38 = [v36 stringFromTimeInterval:floorf(v33 * 86400.0)];
  if (v38)
  {
    v39 = v38;
    v40 = sub_100398F58();
    v42 = v41;
  }

  else
  {
    v42 = 0xE300000000000000;
    v40 = 7104878;
  }

  v112._countAndFlagsBits = v40;
  v112._object = v42;
  sub_100399068(v112);

  v113._countAndFlagsBits = 0xD00000000000001CLL;
  v113._object = 0x8000000100438040;
  sub_100399068(v113);
  v43 = v1[15];
  v44 = v1[16];
  sub_1000035B8(v1 + 12, v43);
  (*(v44 + 32))(v43, v44);
  v45 = v103;
  v46 = v103 + 48;
  v100 = *(v103 + 48);
  v47 = 7104878;
  if (v100(v21, 1, v35) == 1)
  {
    sub_1001ED244(v21, &qword_1004D4CE0, &unk_1003C8E30);
    v48 = 0xE300000000000000;
    v49 = 7104878;
  }

  else
  {
    v49 = sub_100397618();
    v48 = v50;
    (*(v45 + 8))(v21, v35);
  }

  v114._countAndFlagsBits = v49;
  v114._object = v48;
  sub_100399068(v114);

  v115._object = 0x8000000100438060;
  v115._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v115);
  v51 = v1[10];
  v52 = v1[11];
  sub_1000035B8(v1 + 7, v51);
  v53 = v94;
  (*(v52 + 32))(v51, v52);
  v96 = v46;
  v54 = v100(v53, 1, v35);
  v55 = v102;
  if (v54 == 1)
  {
    sub_1001ED244(v53, &qword_1004D4CE0, &unk_1003C8E30);
    v56 = 0xE300000000000000;
    v57 = v99;
    v58 = v95;
    v59 = v101;
    v60 = v103;
  }

  else
  {
    v47 = sub_100397618();
    v56 = v61;
    v60 = v103;
    (*(v103 + 8))(v53, v35);
    v57 = v99;
    v58 = v95;
    v59 = v101;
  }

  v116._countAndFlagsBits = v47;
  v116._object = v56;
  sub_100399068(v116);

  v117._object = 0x8000000100438080;
  v117._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v117);
  v62 = v92;
  v63 = v86;
  sub_10033E6B0(v92, v86, type metadata accessor for TimeRange);
  v118._countAndFlagsBits = sub_100399998();
  v93 = v37;
  sub_100399068(v118);

  v94 = *(v60 + 8);
  v95 = (v60 + 8);
  v94(v63, v35);
  v119._countAndFlagsBits = 2108704;
  v119._object = 0xE300000000000000;
  sub_100399068(v119);
  v64 = v87;
  sub_100397868();
  sub_10000BE6C(*(v62 + *(v97 + 20)));
  v65 = v88;
  sub_1003978C8();
  v66 = *(v55 + 8);
  v102 = v55 + 8;
  v91 = v66;
  v66(v58, v57);
  v90 = *(v59 + 8);
  v101 = v59 + 8;
  v90(v64, v98);
  result = (v100)(v65, 1, v35);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v68 = *(v103 + 32);
  v69 = v84;
  v103 += 32;
  v88 = v68;
  (v68)(v84, v65, v35);
  v120._countAndFlagsBits = sub_100399998();
  sub_100399068(v120);

  v70 = v94;
  v94(v69, v35);
  v121._object = 0x80000001004380A0;
  v121._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v121);
  v71 = v89;
  sub_10033E6B0(v89, v63, type metadata accessor for TimeRange);
  v122._countAndFlagsBits = sub_100399998();
  sub_100399068(v122);

  v70(v63, v35);
  v123._countAndFlagsBits = 2108704;
  v123._object = 0xE300000000000000;
  sub_100399068(v123);
  sub_100397868();
  sub_10000BE6C(*(v71 + *(v97 + 20)));
  v72 = v85;
  sub_1003978C8();
  v91(v58, v99);
  v90(v64, v98);
  result = (v100)(v72, 1, v35);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v73 = v81;
  (v88)(v81, v72, v35);
  v124._countAndFlagsBits = sub_100399998();
  sub_100399068(v124);

  v74 = v94;
  v94(v73, v35);
  v125._object = 0x80000001004380C0;
  v125._countAndFlagsBits = 0xD00000000000001BLL;
  sub_100399068(v125);
  v75 = v82;
  sub_10033E6B0(v82, v63, type metadata accessor for TimeRange);
  v126._countAndFlagsBits = sub_100399998();
  sub_100399068(v126);

  v74(v63, v35);
  v127._countAndFlagsBits = 2108704;
  v127._object = 0xE300000000000000;
  sub_100399068(v127);
  sub_100397868();
  sub_10000BE6C(*(v75 + *(v97 + 20)));
  v76 = v83;
  sub_1003978C8();
  v91(v58, v99);
  v90(v64, v98);
  result = (v100)(v76, 1, v35);
  if (result != 1)
  {
    v77 = v80;
    (v88)(v80, v76, v35);
    v128._countAndFlagsBits = sub_100399998();
    sub_100399068(v128);

    v94(v77, v35);

    v78 = v104;
    sub_10033E39C(v75, type metadata accessor for ObservabilityReportingInterval);
    sub_10033E39C(v89, type metadata accessor for ObservabilityReportingInterval);
    sub_10033E39C(v92, type metadata accessor for ObservabilityReportingInterval);
    return v78;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_10033E39C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10033E424(uint64_t a1)
{
  result = type metadata accessor for TimeRange(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10033E4E0(uint64_t a1)
{
  sub_10033E54C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_10033E54C(uint64_t a1)
{
  if (!qword_1004DA3D0)
  {
    type metadata accessor for UtcDate(255);
    v1 = sub_1003995E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1004DA3D0);
    }
  }
}

unint64_t sub_10033E5A4()
{
  result = qword_1004DA408;
  if (!qword_1004DA408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA408);
  }

  return result;
}

uint64_t sub_10033E5F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_10033E640(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004DA2D0, &unk_1003F0C70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10033E6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_10033E72C()
{
  result = qword_1004DA410;
  if (!qword_1004DA410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA410);
  }

  return result;
}

unint64_t sub_10033E784()
{
  result = qword_1004DA418;
  if (!qword_1004DA418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA418);
  }

  return result;
}

unint64_t sub_10033E7DC()
{
  result = qword_1004DA420;
  if (!qword_1004DA420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA420);
  }

  return result;
}

id sub_10033E830()
{
  v1 = v0;
  v2 = sub_100397418();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1003974E8();
  v6 = *(v60 - 8);
  v7 = __chkstk_darwin(v60);
  v57 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v10 = &v47 - v9;
  v11 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  v12 = __chkstk_darwin(v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v58 = &v47 - v15;
  v16 = &v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_propertyListDirectoryName];
  *v16 = 1280331841;
  *(v16 + 1) = 0xE400000000000000;
  v56 = v16;
  v17 = &selRef_fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled_;
  v18 = [objc_allocWithZone(NSFileManager) init];
  *&v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager] = v18;
  v19 = NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, 1uLL, 1);
  v20 = sub_100399198();

  v21 = *(v20 + 16);
  if (v21 && (v22 = v20 + 16 + 16 * v21, v23 = *(v22 + 8), v54 = *v22, v55 = v10, , , v24 = [objc_opt_self() mainBundle], v25 = objc_msgSend(v24, "bundleIdentifier"), v24, v25))
  {
    v26 = sub_100398F58();
    v27 = v6;
    v59 = v6;
    v28 = v2;
    v48 = v23;
    v49 = v26;
    v29 = v14;
    v31 = v30;

    v32 = *(v27 + 56);
    v51 = v27 + 56;
    v52 = v32;
    v33 = v60;
    v32(v29, 1, 1, v60);
    v34 = enum case for URL.DirectoryHint.inferFromPath(_:);
    v53 = v1;
    v35 = *(v3 + 104);
    v35(v5, enum case for URL.DirectoryHint.inferFromPath(_:), v28);
    v36 = v35;
    v50 = v35;
    v37 = v57;
    sub_1003974C8();
    v61 = v49;
    v62 = v31;
    v36(v5, v34, v28);
    v49 = sub_1001E4D94();
    v38 = v55;
    sub_1003974D8();
    v48 = *(v3 + 8);
    v48(v5, v28);
    v39 = *(v59 + 8);
    v59 += 8;
    v54 = v39;
    v39(v37, v33);

    v40 = v56[1];
    v61 = *v56;
    v62 = v40;
    v50(v5, v34, v28);
    v1 = v53;

    v41 = v58;
    sub_1003974D8();
    v48(v5, v28);

    v54(v38, v33);
    v42 = v33;
    v17 = &selRef_fetchSponsorshipAdsWithActivityIfFeatureFlagEnabled_;
    v52(v41, 0, 1, v42);
    sub_100340604(v41, &v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory]);
  }

  else
  {

    v43 = sub_1003993E8();
    sub_100206B54();
    v44 = sub_1003995A8();
    sub_100398B98(v43, &_mh_execute_header, v44, "Error: Could not get property list application directory path.", 62, 2, _swiftEmptyArrayStorage);

    (*(v6 + 56))(&v1[OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory], 1, 1, v60);
  }

  v45 = type metadata accessor for PropertyListFileManagerFileSystem(0);
  v63.receiver = v1;
  v63.super_class = v45;
  return objc_msgSendSuper2(&v63, v17[225]);
}

uint64_t sub_10033EDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = a3;
  v6 = sub_100397418();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  __chkstk_darwin(v10 - 8);
  v12 = &v23 - v11;
  v13 = sub_1003974E8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100340594(v3 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1001ED244(v12, &qword_1004D4AB8, &qword_1003C98E0);
    v17 = sub_1003993E8();
    sub_100206B54();
    v18 = sub_1003995A8();
    sub_100398B98(v17, &_mh_execute_header, v18, "Error: Could not get property list application directory path.", 62, 2, _swiftEmptyArrayStorage);

    v19 = 1;
    v20 = v24;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v25 = a1;
    v26 = a2;
    (*(v7 + 104))(v9, enum case for URL.DirectoryHint.inferFromPath(_:), v6);
    sub_1001E4D94();
    v21 = v24;
    sub_1003974D8();
    (*(v7 + 8))(v9, v6);
    (*(v14 + 8))(v16, v13);
    v19 = 0;
    v20 = v21;
  }

  return (*(v14 + 56))(v20, v19, 1, v13);
}

id sub_10033F100()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PropertyListFileManagerFileSystem(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for PropertyListFileManagerFileSystem(uint64_t a1)
{
  result = qword_1004DA470;
  if (!qword_1004DA470)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10033F1FC(uint64_t a1)
{
  sub_10033F2A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_10033F2A4(uint64_t a1)
{
  if (!qword_1004DA480)
  {
    sub_1003974E8();
    v1 = sub_1003995E8();
    if (!v2)
    {
      atomic_store(v1, &qword_1004DA480);
    }
  }
}

uint64_t sub_10033F2FC(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v25[-v6];
  v8 = sub_1003974E8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v25[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_10033EDD4(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1001ED244(v7, &qword_1004D4AB8, &qword_1003C98E0);
  }

  (*(v9 + 32))(v11, v7, v8);
  v13 = *(v2 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
  sub_100397488(0);
  v14 = sub_100398F28();

  v15 = [v13 fileExistsAtPath:v14];

  if (v15)
  {
    sub_100397438(v16);
    v18 = v17;
    v26 = 0;
    v19 = [v13 removeItemAtURL:v17 error:&v26];

    if (v19)
    {
      v20 = *(v9 + 8);
      v21 = v26;
      return v20(v11, v8);
    }

    v22 = v26;
    sub_1003973E8();

    swift_willThrow();
    v23 = sub_1003993E8();
    sub_100206B54();
    v24 = sub_1003995A8();
    sub_100398B98(v23, &_mh_execute_header, v24, "Error: Could not delete Property List", 37, 2, _swiftEmptyArrayStorage);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_10033F600(uint64_t a1, uint64_t a2)
{
  v5 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  __chkstk_darwin(v5 - 8);
  v7 = &v27 - v6;
  v8 = sub_1003974E8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  sub_10033EDD4(a1, a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1001ED244(v7, &qword_1004D4AB8, &qword_1003C98E0);
    return 0;
  }

  (*(v9 + 32))(v14, v7, v8);
  v15 = *(v2 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
  sub_100397488(0);
  v16 = sub_100398F28();

  v17 = [v15 fileExistsAtPath:v16];

  if (!v17)
  {
    v19 = sub_1003993D8();
    sub_100206B54();
    v20 = sub_1003995A8();
    sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1003C9930;
    v22 = sub_100397488(0);
    v24 = v23;
    *(v21 + 56) = &type metadata for String;
    *(v21 + 64) = sub_100206BA0();
    *(v21 + 32) = v22;
    *(v21 + 40) = v24;
    sub_100398B98(v19, &_mh_execute_header, v20, "Property list not found at path: %@", 35, 2, v21);

    (*(v9 + 8))(v14, v8);
    return 0;
  }

  (*(v9 + 16))(v12, v14, v8);
  v18 = objc_allocWithZone(NSDictionary);
  v26 = sub_100340448(v12);
  (*(v9 + 8))(v14, v8);
  v27 = 0;
  sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
  sub_100398E58();

  result = v27;
  if (!v27)
  {
    return 0;
  }

  return result;
}

uint64_t sub_10033FA7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  __chkstk_darwin(v7 - 8);
  v9 = &v40[-v8];
  v10 = sub_1003974E8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = &v40[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v16 = &v40[-v15];
  sub_10033EDD4(a2, a3, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1001ED244(v9, &qword_1004D4AB8, &qword_1003C98E0);
  }

  (*(v11 + 32))(v16, v9, v10);
  sub_100397458();
  v18 = *(v4 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
  sub_100397488(0);
  v19 = sub_100398F28();

  v20 = [v18 fileExistsAtPath:v19];

  if ((v20 & 1) == 0)
  {
    sub_100397438(v21);
    v23 = v22;
    v41 = 0;
    v24 = [v18 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:&v41];

    if (v24)
    {
      v25 = v41;
    }

    else
    {
      v26 = v41;
      sub_1003973E8();

      swift_willThrow();
      v27 = sub_1003993E8();
      sub_100206B54();
      v28 = sub_1003995A8();
      sub_100398B98(v27, &_mh_execute_header, v28, "Error: Could not create File Directory.", 39, 2, _swiftEmptyArrayStorage);
    }
  }

  sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
  isa = sub_100398E48().super.isa;
  sub_100397438(v30);
  v32 = v31;
  v41 = 0;
  v33 = [(objc_class *)isa writeToURL:v31 error:&v41];

  if (v33)
  {
    v34 = *(v11 + 8);
    v35 = v41;
    v34(v14, v10);
    return (v34)(v16, v10);
  }

  else
  {
    v36 = v41;
    sub_1003973E8();

    swift_willThrow();
    v37 = sub_1003993E8();
    sub_100206B54();
    v38 = sub_1003995A8();
    sub_100398B98(v37, &_mh_execute_header, v38, "Error: Could not save property list.", 36, 2, _swiftEmptyArrayStorage);

    v39 = *(v11 + 8);
    v39(v14, v10);
    return (v39)(v16, v10);
  }
}

void *sub_10033FF08(void *a1, uint64_t a2)
{
  v3 = v2;
  v36[0] = a2;
  v5 = sub_100397418();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  __chkstk_darwin(v9 - 8);
  v11 = v36 - v10;
  v12 = sub_1003974E8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v36 - v17;
  sub_100340594(v3 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileDirectory, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1001ED244(v11, &qword_1004D4AB8, &qword_1003C98E0);
    v19 = sub_1003993E8();
    sub_100206B54();
    v20 = sub_1003995A8();
    v21 = _swiftEmptyArrayStorage;
    sub_100398B98(v19, &_mh_execute_header, v20, "Error: Could not get property list application directory path.", 62, 2, _swiftEmptyArrayStorage);
  }

  else
  {
    (*(v13 + 32))(v18, v11, v12);
    v37[0] = a1;
    v37[1] = v36[0];
    v38 = _swiftEmptyArrayStorage;
    (*(v6 + 104))(v8, enum case for URL.DirectoryHint.inferFromPath(_:), v5);
    sub_1001E4D94();
    sub_1003974D8();
    (*(v6 + 8))(v8, v5);
    sub_100397488(0);
    v22 = *(v13 + 8);
    v22(v16, v12);
    v23 = *(v3 + OBJC_IVAR____TtC7Metrics33PropertyListFileManagerFileSystem_fileManager);
    v24 = sub_100398F28();

    v37[0] = 0;
    v25 = [v23 contentsOfDirectoryAtPath:v24 error:v37];

    v26 = v37[0];
    if (v25)
    {
      v27 = sub_100399198();
      v28 = v26;

      sub_1003535A0(v27);
    }

    else
    {
      v29 = v37[0];
      sub_1003973E8();

      swift_willThrow();
      v30 = sub_1003993E8();
      sub_100206B54();
      v31 = sub_1003995A8();
      if (os_log_type_enabled(v31, v30))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *v32 = 138412290;
        swift_errorRetain();
        v34 = _swift_stdlib_bridgeErrorToNSError();
        *(v32 + 4) = v34;
        *v33 = v34;
        _os_log_impl(&_mh_execute_header, v31, v30, "Error: Could not get files in directory, error info: %@", v32, 0xCu);
        sub_1001ED244(v33, &qword_1004D8610, &qword_1003C9240);
      }

      else
      {
      }
    }

    v22(v18, v12);
    return v38;
  }

  return v21;
}

id sub_100340448(uint64_t a1)
{
  v2 = v1;
  sub_100397438(__stack_chk_guard);
  v5 = v4;
  v14 = 0;
  v6 = [v2 initWithContentsOfURL:v4 error:&v14];

  v7 = v14;
  if (v6)
  {
    v8 = sub_1003974E8();
    v9 = *(*(v8 - 8) + 8);
    v10 = v7;
    v9(a1, v8);
  }

  else
  {
    v11 = v14;
    sub_1003973E8();

    swift_willThrow();
    v12 = sub_1003974E8();
    (*(*(v12 - 8) + 8))(a1, v12);
  }

  return v6;
}

uint64_t sub_100340594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100340604(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&qword_1004D4AB8, &qword_1003C98E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100340674()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 3);
  sub_100003894(v0 + 8);
  sub_100003894(v0 + 13);
  sub_100003894(v0 + 18);

  return swift_deallocClassInstance();
}

uint64_t sub_1003406F0(void (*a1)(char *, uint64_t))
{
  v2 = v1;
  v56 = a1;
  v3 = type metadata accessor for TimeRange(0);
  v4 = *(v3 - 8);
  v54 = v3;
  v55 = v4;
  __chkstk_darwin(v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  __chkstk_darwin(v7 - 8);
  v9 = &v51 - v8;
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v1[16];
  v15 = v1[17];
  sub_1000035B8(v1 + 13, v14);
  v16 = (*(v15 + 8))(v14, v15);
  v17 = v1[21];
  v18 = v1[22];
  sub_1000035B8(v2 + 18, v2[21]);
  (*(v18 + 8))(v16, v17, v18);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1001ED244(v9, &qword_1004D4CE0, &unk_1003C8E30);
  }

  v52 = v11;
  (*(v11 + 32))(v13, v9, v10);
  sub_1000035B8(v1 + 8, v1[11]);
  v20 = sub_100340D88(v56, 2 - v16, v13);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v21 = sub_100398CA8();
  sub_10000351C(v21, qword_1004DE5D0);

  v22 = sub_100398C88();
  v23 = sub_1003993C8();

  v24 = os_log_type_enabled(v22, v23);
  v53 = v13;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v59[0] = swift_slowAlloc();
    *v25 = 136315394;
    if (v16)
    {
      if (v16 == 1)
      {
        v26 = 0x796C72756F68;
      }

      else
      {
        v26 = 0x796C696164;
      }

      if (v16 == 1)
      {
        v27 = 0xE600000000000000;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    else
    {
      v27 = 0xED00006E6F697461;
      v26 = 0x63696E756D6D6F63;
    }

    v46 = sub_100005700(v26, v27, v59);

    *(v25 + 4) = v46;
    *(v25 + 12) = 2080;
    v47 = sub_1003991A8();
    v49 = v20;
    v50 = sub_100005700(v47, v48, v59);

    *(v25 + 14) = v50;
    v20 = v49;
    _os_log_impl(&_mh_execute_header, v22, v23, "%s performing work for %s", v25, 0x16u);
    swift_arrayDestroy();

    v13 = v53;
    v28 = v49[2];
    if (!v28)
    {
      goto LABEL_22;
    }

LABEL_14:
    v54 = v10;
    v29 = *(v55 + 80);
    v51 = v20;
    v30 = v20 + ((v29 + 32) & ~v29);
    v56 = *(v55 + 72);
    do
    {
      sub_10000B904(v30, v6);
      v31 = v2[16];
      v32 = v2[17];
      sub_1000035B8(v2 + 13, v31);
      v33 = (*(v32 + 8))(v31, v32);
      v35 = v2[16];
      v34 = v2[17];
      sub_1000035B8(v2 + 13, v35);
      (*(v34 + 16))(&v57, v6, v35, v34);
      if (v58)
      {
        sub_100004A68(&v57, v59);
        v36 = sub_1000035B8(v2 + 3, v2[6]);
        v38 = v2[16];
        v37 = v2[17];
        sub_1000035B8(v2 + 13, v38);
        v39 = (*(v37 + 8))(v38, v37);
        v40 = v60;
        v41 = v61;
        sub_1000035B8(v59, v60);
        (*(v41 + 8))(v40, v41);
        v42 = *(*v36 + 16);
        sub_1001E27A8(&unk_1004D5850, &qword_1003EAF30);
        isa = sub_100398E48().super.isa;

        [v42 recordMetric:v39 + 2801 forPurpose:8501 properties:isa internalProperties:0 order:0 options:{0, v51}];

        v44 = v2[21];
        v45 = v2[22];
        sub_1000035B8(v2 + 18, v44);
        (*(v45 + 32))(v6, v33, v44, v45);
        sub_10000C5AC(v6);
        sub_100003894(v59);
      }

      else
      {
        sub_10000C5AC(v6);
        sub_1001ED244(&v57, &unk_1004DCD90, &unk_1003F0ED0);
      }

      v30 += v56;
      --v28;
    }

    while (v28);

    v13 = v53;
    v10 = v54;
    return (*(v52 + 8))(v13, v10);
  }

  v28 = v20[2];
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_22:

  return (*(v52 + 8))(v13, v10);
}

void *sub_100340D88(void (*a1)(char *, uint64_t), int a2, uint64_t a3)
{
  LODWORD(v89) = a2;
  v90 = a1;
  v4 = sub_100397318();
  v93 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100397918();
  v8 = *(v7 - 8);
  v91 = v7;
  v92 = v8;
  __chkstk_darwin(v7);
  v68 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  v11 = __chkstk_darwin(v10 - 8);
  v75 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v81 = &v67 - v14;
  __chkstk_darwin(v13);
  v86 = &v67 - v15;
  v16 = sub_100397748();
  v82 = *(v16 - 8);
  v17 = __chkstk_darwin(v16);
  v73 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v79 = &v67 - v20;
  __chkstk_darwin(v19);
  v22 = &v67 - v21;
  v23 = type metadata accessor for TimeRange(0);
  v74 = *(v23 - 8);
  v24 = __chkstk_darwin(v23);
  v72 = &v67 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v84 = &v67 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v67 - v29;
  v31 = __chkstk_darwin(v28);
  v33 = &v67 - v32;
  __chkstk_darwin(v31);
  v35 = &v67 - v34;
  v36 = a3;
  v37 = v89;
  sub_10000AEE8(v36, v89, &v67 - v34);
  sub_10000AEE8(v90, v37, v33);
  v38 = v68;
  sub_100397868();
  v80 = v23;
  v39 = *(v23 + 20);
  v40 = v38;
  sub_10000BE6C(v35[v39]);
  v41 = v86;
  v69 = v35;
  sub_1003978C8();
  v42 = *(v93 + 8);
  v93 += 8;
  v90 = v42;
  v42(v6, v4);
  v43 = *(v92 + 8);
  v92 += 8;
  v89 = v43;
  v43(v38, v91);
  v44 = v82;
  v87 = *(v82 + 48);
  v88 = v82 + 48;
  result = v87(v41, 1, v16);
  if (result == 1)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v46 = *(v44 + 32);
  v85 = v44 + 32;
  v86 = v46;
  (v46)(v22, v41, v16);
  v78 = sub_10000BE14();
  v47 = sub_100398EE8();
  v49 = *(v44 + 8);
  v48 = v44 + 8;
  v50 = v22;
  v51 = v16;
  v77 = v49;
  v49(v50, v16);
  if ((v47 & 1) == 0)
  {
    v76 = v33;
    v82 = v48;
    sub_10000B904(v69, v30);
    v71 = *(v80 + 20);
    v52 = _swiftEmptyArrayStorage;
    v70 = v4;
    while (1)
    {
      sub_100397868();
      v53 = v30[v71];
      sub_10000BE6C(v53);
      v54 = v81;
      sub_1003978C8();
      v90(v6, v4);
      v89(v40, v91);
      result = v87(v54, 1, v51);
      if (result == 1)
      {
        break;
      }

      v55 = v79;
      (v86)(v79, v54, v51);
      v56 = sub_100398EE8();
      v77(v55, v51);
      if (v56)
      {
        sub_10000C5AC(v30);
        v33 = v76;
        goto LABEL_14;
      }

      sub_10000B904(v30, v84);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v52 = sub_100354158(0, v52[2] + 1, 1, v52);
      }

      v58 = v52[2];
      v57 = v52[3];
      if (v58 >= v57 >> 1)
      {
        v52 = sub_100354158((v57 > 1), v58 + 1, 1, v52);
      }

      v52[2] = v58 + 1;
      v59 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v83 = v52;
      sub_10000C120(v84, v52 + v59 + *(v74 + 72) * v58);
      sub_100397868();
      sub_10000BE6C(v53);
      v60 = v75;
      sub_1003978C8();
      v61 = v60;
      v62 = v70;
      (v90)(v6);
      v63 = v40;
      v89(v40, v91);
      result = v87(v61, 1, v51);
      if (result == 1)
      {
        goto LABEL_16;
      }

      sub_10000C5AC(v30);
      v64 = v73;
      v65 = v86;
      (v86)(v73, v61, v51);
      v66 = v72;
      v65(v72, v64, v51);
      *(v66 + *(v80 + 20)) = v53;
      sub_10000C120(v66, v30);
      v40 = v63;
      v4 = v62;
      v52 = v83;
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_14:
  sub_10000C5AC(v33);
  sub_10000C5AC(v69);
  return v52;
}

id sub_1003415D4()
{
  v26 = OBJC_IVAR____TtC7Metrics42APSigningObservabilityCorrespondentWrapper_correspondent;
  v1 = [objc_allocWithZone(APSystemClock) init];
  v2 = type metadata accessor for PropertyListFileManagerFileSystem(0);
  v32 = v2;
  v33 = &off_10047F170;
  v31[0] = [objc_allocWithZone(v2) init];
  v3 = type metadata accessor for SigningObservabilityPropertyListFileStore();
  v4 = swift_allocObject();
  v5 = sub_1001F54B4(v31, v2);
  __chkstk_darwin(v5);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = *v7;
  v4[5] = v2;
  v4[6] = &off_10047F170;
  v4[2] = v9;
  sub_100003894(v31);
  v10 = type metadata accessor for SigningReportCoreAnalyticsTransmitter();
  v11 = swift_allocObject();
  v32 = v3;
  v33 = &off_10047F2C8;
  v31[0] = v4;
  v29 = v10;
  v30 = &off_10047F418;
  v28[0] = v11;
  type metadata accessor for SigningObservabilityCorrespondent();
  v12 = swift_allocObject();
  v13 = sub_1001F54B4(v31, v3);
  __chkstk_darwin(v13);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  v17 = sub_1001F54B4(v28, v29);
  __chkstk_darwin(v17);
  v19 = (&v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v15;
  v22 = *v19;
  v12[6] = v3;
  v12[7] = &off_10047F2C8;
  v12[11] = v10;
  v12[12] = &off_10047F418;
  v12[8] = v22;
  v12[2] = v1;
  v12[3] = v21;
  sub_100003894(v28);
  sub_100003894(v31);
  *&v0[v26] = v12;
  v23 = type metadata accessor for APSigningObservabilityCorrespondentWrapper();
  v27.receiver = v0;
  v27.super_class = v23;
  return objc_msgSendSuper2(&v27, "init");
}

id sub_100341918(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for APSigningObservabilityCorrespondentWrapper();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_100341AC4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for ECPrimitiveCreator();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_100341B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a6;
  v27 = a5;
  v28 = a2;
  v29 = a1;
  v8 = sub_100397798();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1003993D8();
  sub_100206B54();
  v13 = sub_1003995A8();
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v14 = swift_allocObject();
  v15 = v14;
  *(v14 + 16) = xmmword_1003C9930;
  if (a3)
  {
    v32 = sub_1001E27A8(&qword_1004D5E00, &qword_1003EAF20);
    v33 = sub_10027C9D4();
    *&v31 = a3;
    sub_100004A68(&v31, v15 + 32);
  }

  else
  {
    *(v14 + 56) = &type metadata for String;
    *(v14 + 64) = sub_100206BA0();
    *(v15 + 32) = 7104878;
    *(v15 + 40) = 0xE300000000000000;
  }

  sub_100398B98(v12, &_mh_execute_header, v13, "EC Observability report:\n%{public}@", 35, 2, v15);

  [objc_opt_self() metricClass];
  swift_getObjCClassMetadata();
  sub_100397788();
  sub_100397758();
  (*(v9 + 8))(v11, v8);
  v16 = sub_100398F28();

  if (a3)
  {
    sub_1001E27A8(&unk_1004D5850, &qword_1003EAF30);
    v17.super.isa = sub_100398E48().super.isa;
    if (a4)
    {
LABEL_6:
      sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
      v18.super.isa = sub_100398E48().super.isa;
      goto LABEL_9;
    }
  }

  else
  {
    v17.super.isa = 0;
    if (a4)
    {
      goto LABEL_6;
    }
  }

  v18.super.isa = 0;
LABEL_9:
  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v20 = [v19 initWithPurpose:v28 metric:v29 contentIdentifier:0 contextIdentifier:0 handle:v16 secondaryHandle:0 branch:0 properties:v17.super.isa internalProperties:v18.super.isa relayData:0 environment:0 order:v27 options:v26];

  if (v20)
  {
    v30 = &OBJC_PROTOCOL___APMetricDaemonExtension;
    v21 = swift_dynamicCastObjCProtocolConditional();
    if (v21)
    {
      v22 = v21;
      swift_unknownObjectRetain();
      v23 = sub_100398F28();
      [v22 updateClientBundleID:v23];

      swift_unknownObjectRelease();
    }

    [objc_msgSend(objc_opt_self() "storage")];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = sub_1003993E8();
    v25 = sub_1003995A8();
    sub_100398B98(v24, &_mh_execute_header, v25, "Couldn't create observability metric", 36, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_100341F84()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100341FE8()
{
  swift_unknownObjectRelease();
  sub_100003894(v0 + 3);
  sub_100003894(v0 + 8);
  sub_100003894(v0 + 13);

  return swift_deallocClassInstance();
}

void sub_10034205C()
{
  v1 = sub_100397748();
  __chkstk_darwin(v1);
  v3 = (&v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = 0;
  v6 = (v5 + 8);
  do
  {
    sub_1000035B8((v0 + 104), *(v0 + 128));
    v7 = sub_100367130();
    v8 = v7[2];
    if (v8)
    {
      v14 = v7;
      v9 = (v7 + 4);
      do
      {
        sub_100003554(v9, v15);
        v10 = sub_1000035B8(v15, v15[3]);
        v11 = [*(*v10 + 16) now];
        sub_100397708();

        sub_1003406F0(v3);
        (*v6)(v3, v1);
        sub_100003894(v15);
        v9 += 40;
        --v8;
      }

      while (v8);
    }

    sub_1003421E4();
    if ((v12 & 1) == 0)
    {
      break;
    }
  }

  while (v4++ < 3);
}

void sub_1003421E4()
{
  v1 = type metadata accessor for AvailablePeriodicWork(0);
  v2 = *(v1 - 8);
  __chkstk_darwin(v1 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100397748();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100009E04();
  v10 = [*(v0 + 16) now];
  sub_100397708();

  v11 = 0;
  v12 = v9[2];
  while (1)
  {
    if (v12 == v11)
    {
LABEL_5:

      (*(v6 + 8))(v8, v5);
      return;
    }

    if (v11 >= v9[2])
    {
      break;
    }

    sub_1003423E0(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v11++, v4);
    v13 = sub_1003976A8();
    sub_10000C744(v4, type metadata accessor for AvailablePeriodicWork);
    if (v13)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

uint64_t sub_1003423E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AvailablePeriodicWork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ObservabilityError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ObservabilityError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ObservabilityError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

Swift::Int sub_100342508()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_100399B58();
  sub_100399B68(v2);
  sub_100399B68(v1);
  return sub_100399B88();
}

void sub_100342568()
{
  v1 = *v0;
  sub_100399B68(*(v0 + 8));
  sub_100399B68(v1);
}

Swift::Int sub_1003425A8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_100399B58();
  sub_100399B68(v3);
  sub_100399B68(v2);
  return sub_100399B88();
}

unint64_t sub_10034262C()
{
  result = qword_1004DA818;
  if (!qword_1004DA818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DA818);
  }

  return result;
}

uint64_t sub_1003426A4()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 48);
  sub_1000035B8((*v0 + 16), v2);
  result = (*(v3 + 8))(v2, v3);
  if ((result & 0x100000000) != 0)
  {
    v5 = v1[10];
    v6 = v1[11];
    sub_1000035B8(v1 + 7, v5);
    v7 = (*(v6 + 8))(v5, v6);
    v8 = v1[5];
    v9 = v1[6];
    sub_1000035B8(v1 + 2, v8);
    return (*(v9 + 16))(v8, v9, v7);
  }

  return result;
}

uint64_t sub_10034277C()
{
  sub_100003894((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_100342840(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1003980E8();
  v7 = __chkstk_darwin(v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = _swiftEmptyArrayStorage;
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_100367BE8(0, v23[2] + 1, 1);
          v23 = v40;
        }

        v26 = v23[2];
        v25 = v23[3];
        if (v26 >= v25 >> 1)
        {
          sub_100367BE8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        v23[2] = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = _swiftEmptyArrayStorage;
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_100342B10()
{
  v1 = sub_100397748();
  __chkstk_darwin(v1 - 8);
  v2 = sub_1001E27A8(&qword_1004DAA48, &qword_1003F11D0);
  __chkstk_darwin(v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_1003980E8();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v26 - v11;
  __chkstk_darwin(v10);
  v14 = &v26 - v13;
  swift_getObjectType();
  sub_100399538();
  v15 = sub_1000035B8((v0 + 24), *(v0 + 48));
  sub_1000035B8((*v15 + 16), *(*v15 + 40));
  v28 = "tyCorrespondent";
  v16 = sub_10033F600(0xD000000000000016, 0x8000000100438540);
  if (v16)
  {
    sub_1003440C8(v16, v4);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      (*(v6 + 32))(v12, v4, v5);
      goto LABEL_7;
    }
  }

  else
  {
    (*(v6 + 56))(v4, 1, 1, v5);
  }

  sub_100397608();
  sub_1003980A8();
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    sub_1001ED244(v4, &qword_1004DAA48, &qword_1003F11D0);
  }

LABEL_7:
  if ((sub_100398078() & 1) == 0)
  {
LABEL_13:
    v25 = *(v6 + 8);
    v25(v12, v5);
    return (v25)(v14, v5);
  }

  v27 = v12;
  sub_1000035B8((v0 + 24), *(v0 + 48));
  v17 = sub_100343830();
  __chkstk_darwin(v17);
  v26 = v14;
  *(&v26 - 2) = v14;
  v19 = sub_100342840(sub_100343390, (&v26 - 4), v18);
  v20 = v19[2];

  if (!v20)
  {
LABEL_12:

    v23 = sub_1000035B8((v0 + 24), *(v0 + 48));
    sub_1000035B8((*v23 + 16), *(*v23 + 40));
    v14 = v26;
    v24 = sub_100344280();
    sub_10033FA7C(v24, 0xD000000000000016, v28 | 0x8000000000000000);

    v12 = v27;
    goto LABEL_13;
  }

  v22 = 0;
  while (v22 < v19[2])
  {
    (*(v6 + 16))(v9, v19 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22++, v5);
    sub_100342F5C();
    result = (*(v6 + 8))(v9, v5);
    if (v20 == v22)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100342F5C()
{
  v29 = sub_100397748();
  v27 = *(v29 - 8);
  __chkstk_darwin(v29);
  v25 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1003980E8();
  v26 = *(v28 - 8);
  __chkstk_darwin(v28);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1001E27A8(&qword_1004DAA50, &qword_1003F11D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v24 - v5;
  v7 = type metadata accessor for SigningFailure(0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *sub_1000035B8((v0 + 24), *(v0 + 48));
  v12 = sub_100343E5C();
  v14 = v13;
  sub_1000035B8((v11 + 16), *(v11 + 40));
  v15 = sub_10033F600(v12, v14);
  if (v15)
  {
    sub_100344374(v15, v6);
  }

  else
  {
    (*(v8 + 56))(v6, 1, 1, v7);
  }

  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1001ED244(v6, &qword_1004DAA50, &qword_1003F11D8);
  }

  sub_1003433C0(v6, v10);
  v17 = sub_1000035B8((v0 + 24), *(v0 + 48));
  sub_1000035B8((*v17 + 16), *(*v17 + 40));
  v18 = sub_10033F600(0xD000000000000012, 0x8000000100438560);
  if (v18)
  {
    v19 = v18;
    if (*(v18 + 16))
    {
      v20 = sub_1001EC1DC(0xD000000000000012, 0x8000000100438560);
      if (v21)
      {
        v30 = *(*(v19 + 56) + 8 * v20);
        swift_unknownObjectRetain();
        sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v31 = 2;
        }

        v22 = v31;
        goto LABEL_14;
      }
    }
  }

  v22 = 0;
LABEL_14:
  (*(v27 + 16))(v25, v10, v29);
  sub_1003980A8();
  v23 = sub_100398068();
  result = (*(v26 + 8))(v3, v28);
  if (__OFADD__(v23, 1))
  {
    __break(1u);
  }

  else
  {
    sub_100348F58(v22 & 1, v23 + 1, *&v10[*(v7 + 24)]);
    return sub_100343424(v10);
  }

  return result;
}

uint64_t sub_1003433C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SigningFailure(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100343424(uint64_t a1)
{
  v2 = type metadata accessor for SigningFailure(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100343480(void (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1003997F8())
  {
    v6 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v7 = sub_100399708();
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_12;
      }

LABEL_7:
      v10 = v7;
      a1(&v10);

      if (!v3)
      {
        ++v6;
        if (v8 != i)
        {
          continue;
        }
      }

      return;
    }

    if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_13;
    }

    v7 = *(a3 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_7;
    }

LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100343594()
{
  sub_100003894((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1003435F8(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  sub_1000035B8((*v1 + 16), v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t sub_100343668(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  sub_1000035B8((*v2 + 16), v5);
  return (*(v6 + 24))(a1, a2, v5, v6);
}

uint64_t sub_1003436E0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v5[7] = 0;

  v6 = v5[5];
  v7 = v5[6];
  sub_1000035B8(v5 + 2, v6);
  return (*(v7 + 32))(a1, a2, v6, v7);
}

unint64_t sub_10034375C(uint64_t a1)
{
  v2 = sub_100399B48();

  return sub_1003437A0(a1, v2);
}

unint64_t sub_1003437A0(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_100343830()
{
  v1 = sub_1001E27A8(&qword_1004DAA48, &qword_1003F11D0);
  __chkstk_darwin(v1 - 8);
  v3 = &v17 - v2;
  v4 = sub_1003980E8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v20 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000035B8((v0 + 16), *(v0 + 40));
  result = sub_10033FF08(0x736572756C696166, 0xE800000000000000);
  v8 = result;
  v19 = result[2];
  if (v19)
  {
    v9 = 0;
    v10 = (v5 + 48);
    v18 = v5;
    v11 = (v5 + 32);
    v12 = result + 5;
    v13 = _swiftEmptyArrayStorage;
    v17 = result;
    while (v9 < *(v8 + 16))
    {

      sub_100343ADC(v3);
      if ((*v10)(v3, 1, v4) == 1)
      {
        result = sub_1001ED244(v3, &qword_1004DAA48, &qword_1003F11D0);
      }

      else
      {
        v14 = *v11;
        (*v11)(v20, v3, v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_100354180(0, v13[2] + 1, 1, v13);
        }

        v16 = v13[2];
        v15 = v13[3];
        if (v16 >= v15 >> 1)
        {
          v13 = sub_100354180((v15 > 1), v16 + 1, 1, v13);
        }

        v13[2] = v16 + 1;
        result = (v14)(v13 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v16, v20, v4);
        v8 = v17;
      }

      ++v9;
      v12 += 2;
      if (v19 == v9)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
    v13 = _swiftEmptyArrayStorage;
LABEL_13:

    return v13;
  }

  return result;
}

uint64_t sub_100343ADC@<X0>(uint64_t a3@<X8>)
{
  if (sub_100399028() != 8)
  {
    goto LABEL_12;
  }

  v4 = sub_100399048();
  if (sub_100399048() >> 14 < v4 >> 14)
  {
    __break(1u);
    goto LABEL_29;
  }

  sub_100399038();
  v5 = sub_100399108();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = sub_100399048();
  if (sub_100399048() >> 14 < v12 >> 14)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v44 = a3;
  sub_100399038();
  v13 = sub_100399108();
  v15 = v14;
  v43 = v16;
  v18 = v17;
  v19 = sub_100399048();
  if (sub_100399048() >> 14 < v19 >> 14)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  sub_100399038();
  v40 = sub_100399108();
  v41 = v20;
  v42 = v21;
  v23 = v22;

  if (!((v5 ^ v7) >> 14))
  {
LABEL_31:

    goto LABEL_10;
  }

  sub_1003449C4(v5, v7, v9, v11, 10);
  if ((v24 & 0x100) != 0)
  {
    sub_1001E3B5C(v5, v7, v9, v11, 10);
    v27 = v26;

    if ((v27 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_10:

LABEL_11:
    a3 = v44;
LABEL_12:

LABEL_13:
    v28 = 1;
    goto LABEL_14;
  }

  v25 = v24;

  if (v25)
  {
    goto LABEL_10;
  }

LABEL_17:
  if ((v13 ^ v15) < 0x4000)
  {
    goto LABEL_10;
  }

  sub_1003449C4(v13, v15, v43, v18, 10);
  if ((v32 & 0x100) != 0)
  {
    sub_1001E3B5C(v13, v15, v43, v18, 10);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      a3 = v44;
      v35 = v41;
      v34 = v42;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  v33 = v32;

  a3 = v44;
  v35 = v41;
  v34 = v42;
  if (v33)
  {
    goto LABEL_12;
  }

LABEL_23:
  if ((v40 ^ v34) < 0x4000)
  {
    goto LABEL_12;
  }

  sub_1003449C4(v40, v34, v35, v23, 10);
  if ((v38 & 0x100) != 0)
  {
    sub_1001E3B5C(v40, v34, v35, v23, 10);
  }

  v39 = v38;

  if (v39)
  {
    goto LABEL_13;
  }

  sub_1003980B8();
  v28 = 0;
LABEL_14:
  v29 = sub_1003980E8();
  v30 = *(*(v29 - 8) + 56);

  return v30(a3, v28, 1, v29);
}

uint64_t sub_100343E5C()
{
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1003C9260;
  v1 = sub_1003980C8();
  *(v0 + 56) = &type metadata for Int;
  *(v0 + 64) = &protocol witness table for Int;
  *(v0 + 32) = v1;
  v2 = sub_1003980D8();
  *(v0 + 96) = &type metadata for Int;
  *(v0 + 104) = &protocol witness table for Int;
  *(v0 + 72) = v2;
  v3 = sub_100398098();
  *(v0 + 136) = &type metadata for Int;
  *(v0 + 144) = &protocol witness table for Int;
  *(v0 + 112) = v3;
  v5._countAndFlagsBits = sub_100398F88();
  sub_100399068(v5);

  return 0x736572756C696166;
}

unint64_t sub_100343F48()
{
  sub_1001E27A8(&unk_1004D43E0, &unk_1003C9620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  strcpy((inited + 32), "firstFailure");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = sub_100397688();
  *(inited + 56) = 0x6C6961467473616CLL;
  *(inited + 64) = 0xEB00000000657275;
  type metadata accessor for SigningFailure(0);
  sub_100344280();
  sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
  isa = sub_100398E48().super.isa;

  *(inited + 72) = isa;
  strcpy((inited + 80), "daysAttempted");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_100399348();
  v2 = sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DABD0, &unk_1003C9270);
  swift_arrayDestroy();
  return v2;
}

uint64_t sub_1003440C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16) || (sub_1001EC1DC(1918985593, 0xE400000000000000), (v4 & 1) == 0) || (swift_unknownObjectRetain(), sub_1001E27A8(&unk_1004D4400, &unk_1003C9630), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (sub_1001EC1DC(0x68746E6F6DLL, 0xE500000000000000), (v5 & 1) == 0) || (swift_unknownObjectRetain(), (swift_dynamicCast() & 1) == 0) || !*(a1 + 16) || (sub_1001EC1DC(7954788, 0xE300000000000000), (v6 & 1) == 0))
  {

    goto LABEL_12;
  }

  swift_unknownObjectRetain();

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    v7 = 1;
    goto LABEL_13;
  }

  sub_1003980B8();
  v7 = 0;
LABEL_13:
  v8 = sub_1003980E8();
  return (*(*(v8 - 8) + 56))(a2, v7, 1, v8);
}

unint64_t sub_100344280()
{
  sub_1001E27A8(&unk_1004D43E0, &unk_1003C9620);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 32) = 1918985593;
  *(inited + 40) = 0xE400000000000000;
  sub_1003980C8();
  *(inited + 48) = sub_100399348();
  *(inited + 56) = 0x68746E6F6DLL;
  *(inited + 64) = 0xE500000000000000;
  sub_1003980D8();
  *(inited + 72) = sub_100399348();
  *(inited + 80) = 7954788;
  *(inited + 88) = 0xE300000000000000;
  sub_100398098();
  *(inited + 96) = sub_100399348();
  v1 = sub_1001EC30C(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DABD0, &unk_1003C9270);
  swift_arrayDestroy();
  return v1;
}

uint64_t sub_100344374@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1001E27A8(&qword_1004DAA48, &qword_1003F11D0);
  __chkstk_darwin(v4 - 8);
  v44 = (&v40 - v5);
  v6 = sub_1003980E8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100397748();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v45 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1001E27A8(&qword_1004D4CE0, &unk_1003C8E30);
  v14 = __chkstk_darwin(v13 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v40 - v17;
  if (*(a1 + 16) && (v19 = sub_1001EC1DC(0x6961467473726966, 0xEC0000006572756CLL), (v20 & 1) != 0))
  {
    v47 = *(*(a1 + 56) + 8 * v19);
    swift_unknownObjectRetain();
    sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
    v21 = swift_dynamicCast();
    (*(v11 + 56))(v18, v21 ^ 1u, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v18, 1, 1, v10);
  }

  v22 = *(a1 + 16);
  v43 = v9;
  if (!v22)
  {
    v25 = 0;
    goto LABEL_19;
  }

  v23 = sub_1001EC1DC(0x6C6961467473616CLL, 0xEB00000000657275);
  if ((v24 & 1) == 0)
  {
    v25 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_14;
    }

LABEL_19:

    v30 = 0;
    v31 = 1;
    goto LABEL_20;
  }

  v47 = *(*(a1 + 56) + 8 * v23);
  swift_unknownObjectRetain();
  sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
  sub_1001E27A8(&unk_1004DABC0, &unk_1003F1B10);
  if (swift_dynamicCast())
  {
    v25 = v46;
  }

  else
  {
    v25 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_19;
  }

LABEL_14:
  v26 = sub_1001EC1DC(0x6574744173796164, 0xED0000646574706DLL);
  if ((v27 & 1) == 0)
  {
    goto LABEL_19;
  }

  v28 = *(*(a1 + 56) + 8 * v26);
  swift_unknownObjectRetain();

  v47 = v28;
  sub_1001E27A8(&unk_1004D4400, &unk_1003C9630);
  v29 = swift_dynamicCast();
  if (v29)
  {
    v30 = v46;
  }

  else
  {
    v30 = 0;
  }

  v31 = v29 ^ 1;
LABEL_20:
  sub_1001E2838(v18, v16);
  if ((*(v11 + 48))(v16, 1, v10) != 1)
  {
    v41 = v30;
    v42 = a2;
    v32 = *(v11 + 32);
    v32(v45, v16, v10);
    if (v25)
    {
      v33 = v44;
      sub_1003440C8(v25, v44);
      v34 = v6;
      if ((*(v7 + 48))(v33, 1, v6) != 1)
      {
        v35 = v43;
        v44 = *(v7 + 32);
        (v44)(v43, v33, v34);
        if (!v31)
        {
          v38 = v42;
          v32(v42, v45, v10);
          v39 = type metadata accessor for SigningFailure(0);
          (v44)(&v38[*(v39 + 20)], v35, v34);
          *&v38[*(v39 + 24)] = v41;
          sub_1001ED244(v18, &qword_1004D4CE0, &unk_1003C8E30);
          return (*(*(v39 - 8) + 56))(v38, 0, 1, v39);
        }

        (*(v7 + 8))(v35, v34);
        (*(v11 + 8))(v45, v10);
        goto LABEL_28;
      }
    }

    else
    {
      v33 = v44;
      (*(v7 + 56))(v44, 1, 1, v6);
    }

    (*(v11 + 8))(v45, v10);
    sub_1001ED244(v33, &qword_1004DAA48, &qword_1003F11D0);
LABEL_28:
    a2 = v42;
    goto LABEL_29;
  }

  sub_1001ED244(v16, &qword_1004D4CE0, &unk_1003C8E30);
LABEL_29:
  sub_1001ED244(v18, &qword_1004D4CE0, &unk_1003C8E30);
  v36 = type metadata accessor for SigningFailure(0);
  return (*(*(v36 - 8) + 56))(a2, 1, 1, v36);
}

uint64_t sub_1003449C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_100399768();
  }

  result = sub_1001E4568(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_100344B60(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = type metadata accessor for ObservabilitySignal(0);
  __chkstk_darwin(v8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1001E27A8(&qword_1004DABE0, &unk_1003F1290);
  __chkstk_darwin(v11 - 8);
  v13 = &v20[-v12];
  v14 = type metadata accessor for BatchID(0);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_100362154(a2, a3, v13);
  (*(v15 + 56))(v13, 0, 1, v14);
  sub_100345B28(v13, v17);
  v18 = *(sub_1001E27A8(&qword_1004DABE8, &unk_1003F1470) + 64);
  *v10 = a4;
  *(v10 + 1) = a1;
  sub_100345B8C(v17, &v10[v18]);
  swift_storeEnumTagMultiPayload();
  sub_100007F58(v10);
  sub_10000E4F0(v10, type metadata accessor for ObservabilitySignal);
  return sub_10000E4F0(v17, type metadata accessor for BatchID);
}

uint64_t sub_100344EE4(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ObservabilitySignal(0);
  __chkstk_darwin(v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_1001E27A8(&qword_1004DABE0, &unk_1003F1290);
  __chkstk_darwin(v7 - 8);
  v9 = &v15[-v8];
  v10 = type metadata accessor for BatchID(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v15[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];

  sub_100362154(a1, a2, v9);
  (*(v11 + 56))(v9, 0, 1, v10);
  sub_100345B28(v9, v13);
  sub_100345B8C(v13, v6);
  swift_storeEnumTagMultiPayload();
  sub_100007F58(v6);
  sub_10000E4F0(v6, type metadata accessor for ObservabilitySignal);
  return sub_10000E4F0(v13, type metadata accessor for BatchID);
}

uint64_t sub_1003453A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ObservabilitySignal(0);
  __chkstk_darwin(v7);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1001E27A8(&qword_1004DABD8, &unk_1003F21C0);
  __chkstk_darwin(v10 - 8);
  v12 = &v47[-v11];
  v13 = sub_100397AA8();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v60 = &v47[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = type metadata accessor for BatchID(0);
  v59 = *(v16 - 8);
  v17 = __chkstk_darwin(v16 - 8);
  v58 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __chkstk_darwin(v17);
  v57 = &v47[-v20];
  v21 = __chkstk_darwin(v19);
  v56 = &v47[-v22];
  v23 = __chkstk_darwin(v21);
  v55 = &v47[-v24];
  __chkstk_darwin(v23);
  v61 = &v47[-v25];
  v51 = a2;
  v52 = v3;
  if (a1)
  {
    if (a1 != 1)
    {
      v62 = a1;
      result = sub_100399A68();
      __break(1u);
      return result;
    }

    v48 = 0;
  }

  else
  {
    v48 = 1;
  }

  v49 = v7;
  v50 = v9;
  v26 = *(a3 + 16);
  if (v26)
  {
    v27 = (v14 + 48);
    v28 = (v14 + 32);
    v53 = "";
    v54 = "%04lld%02lld%02lld";
    v29 = (a3 + 40);
    v30 = _swiftEmptyArrayStorage;
    do
    {
      v34 = *(v29 - 1);
      v33 = *v29;
      swift_bridgeObjectRetain_n();
      sub_100397A88();
      if ((*v27)(v12, 1, v13) == 1)
      {
        sub_1001ED244(v12, &qword_1004DABD8, &unk_1003F21C0);
        v62 = 0;
        v63 = 0xE000000000000000;
        sub_1003996F8(52);
        v64._countAndFlagsBits = 0xD000000000000031;
        v64._object = (v54 | 0x8000000000000000);
        sub_100399068(v64);
        v65._countAndFlagsBits = v34;
        v65._object = v33;
        sub_100399068(v65);
        v66._countAndFlagsBits = 34;
        v66._object = 0xE100000000000000;
        sub_100399068(v66);

        v31 = sub_1003993E8();
        sub_100206B54();
        v32 = sub_1003995A8();
        sub_100398B98(v31, &_mh_execute_header, v32, "Failed to create BatchID", 24, 2, _swiftEmptyArrayStorage);
      }

      else
      {

        v35 = *v28;
        v36 = v60;
        (*v28)(v60, v12, v13);
        v37 = v58;
        v35(v58, v36, v13);
        v38 = v57;
        sub_100345B28(v37, v57);
        v39 = v38;
        v40 = v56;
        sub_100345B28(v39, v56);
        v41 = v40;
        v42 = v55;
        sub_100345B28(v41, v55);
        sub_100345B28(v42, v61);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v30 = sub_1003541A8(0, v30[2] + 1, 1, v30);
        }

        v44 = v30[2];
        v43 = v30[3];
        if (v44 >= v43 >> 1)
        {
          v30 = sub_1003541A8((v43 > 1), v44 + 1, 1, v30);
        }

        v30[2] = v44 + 1;
        sub_100345B28(v61, v30 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v44);
      }

      v29 += 2;
      --v26;
    }

    while (v26);
  }

  else
  {
    v30 = _swiftEmptyArrayStorage;
  }

  v45 = v50;
  *v50 = v51;
  *(v45 + 8) = v48;
  *(v45 + 16) = v30;
  swift_storeEnumTagMultiPayload();
  sub_100007F58(v45);
  return sub_10000E4F0(v45, type metadata accessor for ObservabilitySignal);
}

uint64_t sub_100345A60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for ObservabilitySignal(0);
  __chkstk_darwin(v4);
  v6 = (&v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v6 = a3;
  swift_storeEnumTagMultiPayload();

  sub_100007F58(v6);

  return sub_10000E4F0(v6, type metadata accessor for ObservabilitySignal);
}

uint64_t sub_100345B28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100345B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BatchID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100345C04()
{
  result = qword_1004DABF0;
  if (!qword_1004DABF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DABF0);
  }

  return result;
}

uint64_t sub_100345C7C()
{
  sub_1001E27A8(&qword_1004D8F48, &qword_1003EFD70);
  sub_100397E78();
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1003EFC40;
  sub_1001E27A8(&unk_1004D7BF0, &unk_1003EE150);
  v0 = sub_100397E08();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + v3) = sub_10025D724(&off_10047EC00);
  v28 = enum case for IntBucketContents.individualValues(_:);
  v5 = *(v1 + 104);
  v5(v4 + v3);
  sub_100397E68();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1003C9260;
  v7 = v6 + v3;
  *(v6 + v3) = xmmword_1003EFC50;
  v8 = enum case for IntBucketContents.range(_:);
  v27 = enum case for IntBucketContents.range(_:);
  (v5)(v6 + v3, enum case for IntBucketContents.range(_:), v0);
  *(v7 + v2) = xmmword_1003EFC60;
  (v5)(v7 + v2, v8, v0);
  v26 = 2 * v2;
  *(v7 + v26) = xmmword_1003EFC70;
  (v5)(v7 + 2 * v2, v8, v0);
  sub_100397E68();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1003C9930;
  *(v9 + v3) = sub_10025D724(&off_10047EC30);
  (v5)(v9 + v3, v28, v0);
  sub_100397E68();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1003C9930;
  *(v10 + v3) = sub_10025D724(&off_10047EC60);
  (v5)(v10 + v3, v28, v0);
  sub_100397E68();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1003C9930;
  *(v11 + v3) = sub_10025D724(&off_10047EC88);
  (v5)(v11 + v3, v28, v0);
  sub_100397E68();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1003C9930;
  *(v12 + v3) = sub_10025D724(&off_10047ECB0);
  (v5)(v12 + v3, v28, v0);
  sub_100397E68();
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9930;
  *(v13 + v3) = sub_10025D724(&off_10047ECE0);
  (v5)(v13 + v3, v28, v0);
  sub_100397E68();
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1003C9930;
  *(v14 + v3) = sub_10025D724(&off_10047ED08);
  (v5)(v14 + v3, v28, v0);
  sub_100397E68();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1003C9930;
  *(v15 + v3) = sub_10025D724(&off_10047ED48);
  (v5)(v15 + v3, v28, v0);
  sub_100397E68();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1003ECC10;
  v17 = (v16 + v3);
  *v17 = sub_10025D724(&off_10047ED78);
  (v5)(v17, v28, v0);
  *(v17 + v2) = xmmword_1003EFC80;
  (v5)(v17 + v2, v27, v0);
  *(v17 + v26) = xmmword_1003EFC90;
  (v5)(v17 + 2 * v2, v27, v0);
  *(v17 + 3 * v2) = xmmword_1003EFCA0;
  (v5)(v17 + 3 * v2, v27, v0);
  *(v17 + 4 * v2) = xmmword_1003EFCB0;
  (v5)(v17 + 4 * v2, v27, v0);
  *(v17 + 5 * v2) = xmmword_1003EFCC0;
  (v5)(v17 + 5 * v2, v27, v0);
  *(v17 + 6 * v2) = xmmword_1003EFCD0;
  (v5)();
  sub_100397E68();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1003EB210;
  v19 = (v18 + v3);
  *v19 = sub_10025D724(&off_10047EDA8);
  (v5)(v19, v28, v0);
  *(v19 + v2) = xmmword_1003EFCE0;
  (v5)(v19 + v2, v27, v0);
  sub_100397E68();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1003C9930;
  *(v20 + v3) = xmmword_1003EFCF0;
  (v5)(v20 + v3, v27, v0);
  sub_100397E68();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1003C9930;
  *(v21 + v3) = sub_10025D724(&off_10047EDD0);
  (v5)(v21 + v3, v28, v0);
  sub_100397E68();
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1003EB210;
  v23 = (v22 + v3);
  *v23 = sub_10025D724(&off_10047EE00);
  (v5)(v23, v28, v0);
  *(v23 + v2) = xmmword_1003EFD00;
  (v5)(v23 + v2, v27, v0);
  sub_100397E68();

  return IntBucketConfiguration.init(unknownBucketName:discreteBuckets:classifiedBuckets:)(100011, _swiftEmptyArrayStorage, v25);
}

uint64_t sub_10034662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v62 = a2;
  v5 = type metadata accessor for TimeRange(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1004DA0A0 != -1)
  {
LABEL_24:
    swift_once();
  }

  v8 = sub_100398CA8();
  sub_10000351C(v8, qword_1004DE5D0);
  sub_1003489D4(a1, v7, type metadata accessor for TimeRange);

  v9 = sub_100398C88();
  v10 = sub_1003993C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v63[0] = swift_slowAlloc();
    *v11 = 136446466;
    *(v11 + 4) = sub_100005700(0x796C696164, 0xE500000000000000, v63);
    *(v11 + 12) = 2082;
    v12 = sub_1003568B8();
    v14 = v13;
    sub_10000C7A4(v7, type metadata accessor for TimeRange);
    v15 = sub_100005700(v12, v14, v63);

    *(v11 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v9, v10, "Generating %{public}s report for %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10000C7A4(v7, type metadata accessor for TimeRange);
  }

  v16 = v3[19];
  v17 = v3[20];
  sub_1000035B8(v3 + 16, v16);
  (*(v17 + 24))(v73, a1, 2, v16, v17);
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v18 = v3[4];
  v19 = v3[5];

  v68[0] = sub_100346E38(v18, v19, sub_10034808C, sub_100367B48);
  v68[1] = v20;
  v69 = v21;
  v22 = v3[2];
  v23 = v3[3];

  v66[0] = sub_100346E38(v22, v23, sub_100347E4C, sub_100367AA8);
  v66[1] = v24;
  v67 = v25;
  v64 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v26 = sub_1000035B8(v73, v73[3]);
  __chkstk_darwin(v26);
  *(&v53 - 8) = &v70;
  *(&v53 - 7) = v66;
  *(&v53 - 6) = &v64;
  *(&v53 - 5) = &v65;
  *(&v53 - 4) = &v72;
  *(&v53 - 3) = &v71;
  *(&v53 - 2) = v68;
  sub_100399128();
  v27 = v65;
  v60 = sub_1003476D0(v65);
  v59 = v28;
  sub_1000035B8(v3 + 21, v3[24]);
  v61 = v64;
  sub_100357E4C(v64);
  v58 = v72;
  if (v72 <= 0 && v71 <= 0 && v70 <= 0)
  {
    v29 = v69;
    v30 = v69 + 32;
    v31 = -*(v69 + 16);
    v7 = -1;
    while (v31 + v7 != -1)
    {
      if (++v7 >= *(v29 + 16))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v3 = (v30 + 48);
      sub_10000ADB4(v30, v63, &unk_1004DCD50, &unk_1003F2040);
      v32 = v63[0];
      sub_1001ED244(v63, &unk_1004DCD50, &unk_1003F2040);
      v30 = v3;
      if (v32)
      {
        goto LABEL_19;
      }
    }

    v33 = v67;
    v34 = v67 + 32;
    v35 = -*(v67 + 16);
    v7 = -1;
    while (v35 + v7 != -1)
    {
      if (++v7 >= *(v33 + 16))
      {
        goto LABEL_23;
      }

      v3 = (v34 + 48);
      sub_10000ADB4(v34, v63, &qword_1004DAD70, &qword_1003F1460);
      v36 = v63[0];
      sub_1001ED244(v63, &qword_1004DAD70, &qword_1003F1460);
      v34 = v3;
      if (v36)
      {
        goto LABEL_19;
      }
    }

    v63[0] = v27;
    sub_1001E27A8(&qword_1004DAD78, &qword_1003F1468);
    sub_1001E6C28(&qword_1004DAD80, &qword_1004DAD78, &qword_1003F1468, &protocol conformance descriptor for [A]);
    if ((sub_100399398() & 1) == 0)
    {
      v52 = type metadata accessor for ObservabilityDailyReport(0);
      (*(*(v52 - 8) + 56))(v62, 1, 1, v52);

      goto LABEL_20;
    }
  }

LABEL_19:
  v37 = sub_100397748();
  v38 = v62;
  (*(*(v37 - 8) + 16))(v62, a1, v37);
  v56 = v71;
  v57 = v70;
  v54 = sub_100348868(v68[0], v69, &unk_1004DCD50, &unk_1003F2040);
  v53 = v39;
  v40 = sub_100348868(v66[0], v67, &qword_1004DAD70, &qword_1003F1460);
  v42 = v41;
  v43 = v27[2];

  v44 = sub_100351E1C();
  v55 = v27;
  v45 = v44;

  v46 = sub_100351E1C();

  v47 = type metadata accessor for ObservabilityDailyReport(0);
  *(v38 + v47[5]) = v58;
  *(v38 + v47[6]) = v56;
  *(v38 + v47[7]) = v57;
  v48 = (v38 + v47[8]);
  v49 = v53;
  *v48 = v54;
  v48[1] = v49;
  v50 = (v38 + v47[9]);
  *v50 = v40;
  v50[1] = v42;
  *(v38 + v47[10]) = v43;
  *(v38 + v47[11]) = v45;
  *(v38 + v47[12]) = v46;
  (*(*(v47 - 1) + 56))(v38, 0, 1, v47);

LABEL_20:

  return sub_100003894(v73);
}

uint64_t sub_100346E38(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), void (*a4)(BOOL, unint64_t, uint64_t))
{

  v8 = a3(a2);

  v9 = *(v8 + 16);
  if (v9)
  {
    v20 = _swiftEmptyArrayStorage;
    v18 = a4;
    a4(0, v9, 0);
    v10 = _swiftEmptyArrayStorage;
    v11 = v8 + 32;
    do
    {
      sub_100003554(v11, v19 + 8);
      *&v19[0] = 0;
      v20 = v10;
      v13 = v10[2];
      v12 = v10[3];
      if (v13 >= v12 >> 1)
      {
        v18(v12 > 1, v13 + 1, 1);
        v10 = v20;
      }

      v10[2] = v13 + 1;
      v14 = &v10[6 * v13];
      v15 = v19[0];
      v16 = v19[2];
      v14[3] = v19[1];
      v14[4] = v16;
      v14[2] = v15;
      v11 += 40;
      --v9;
    }

    while (v9);
  }

  else
  {
  }

  return a1;
}

void sub_100346F8C(uint64_t *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void *a6, void *a7, uint64_t a8)
{
  v45 = a8;
  v46 = a6;
  v47 = a7;
  v48 = a5;
  v50 = a4;
  v10 = type metadata accessor for BatchID(0);
  v49 = *(v10 - 8);
  v11 = __chkstk_darwin(v10 - 8);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v16 = &v45 - v15;
  v17 = __chkstk_darwin(v14);
  v19 = &v45 - v18;
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  v22 = type metadata accessor for ObservabilitySignal(0);
  __chkstk_darwin(v22);
  v24 = (&v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1003489D4(a1, v24, type metadata accessor for ObservabilitySignal);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v27 = a2;
    v28 = v50;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v29 = sub_1001E27A8(&qword_1004DABE8, &unk_1003F1470);
        sub_10034896C(v24 + *(v29 + 64), v21, type metadata accessor for BatchID);
        sub_1003489D4(v21, v19, type metadata accessor for BatchID);
        a1 = v28;
        v22 = *v28;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v28 = v22;
        if (isUniquelyReferenced_nonNull_native)
        {
LABEL_10:
          v32 = v22[2];
          v31 = v22[3];
          if (v32 >= v31 >> 1)
          {
            *a1 = sub_1003541A8((v31 > 1), v32 + 1, 1, v22);
          }

          sub_10000C7A4(v21, type metadata accessor for BatchID);
          v33 = *a1;
          *(v33 + 16) = v32 + 1;
          sub_10034896C(v19, v33 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v32, type metadata accessor for BatchID);
          return;
        }

LABEL_26:
        v22 = sub_1003541A8(0, v22[2] + 1, 1, v22);
        *a1 = v22;
        goto LABEL_10;
      }

      goto LABEL_22;
    }

    v41 = *(v24 + 1);
    v42 = __OFADD__(*v27, v41);
    v43 = *v27 + v41;
    if (!v42)
    {
      v44 = *v24;
      *v27 = v43;
      sub_100347460(v44);
      return;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (EnumCaseMultiPayload != 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        if (!__OFADD__(*v47, 1))
        {
          ++*v47;
          v26 = sub_100399298();
          sub_10034759C(v26);
          return;
        }

        goto LABEL_25;
      }

LABEL_22:
      sub_10000C7A4(v24, type metadata accessor for ObservabilitySignal);
      return;
    }

    if (!__OFADD__(*v46, 1))
    {
      ++*v46;
      v40 = sub_100397748();
      (*(*(v40 - 8) + 8))(v24, v40);
      return;
    }

    __break(1u);
    goto LABEL_24;
  }

  sub_10034896C(v24, v16, type metadata accessor for BatchID);
  sub_1003489D4(v16, v13, type metadata accessor for BatchID);
  v34 = v48;
  v35 = *v48;
  v36 = swift_isUniquelyReferenced_nonNull_native();
  *v34 = v35;
  if ((v36 & 1) == 0)
  {
    v35 = sub_1003541A8(0, v35[2] + 1, 1, v35);
    *v34 = v35;
  }

  v38 = v35[2];
  v37 = v35[3];
  if (v38 >= v37 >> 1)
  {
    *v34 = sub_1003541A8((v37 > 1), v38 + 1, 1, v35);
  }

  sub_10000C7A4(v16, type metadata accessor for BatchID);
  v39 = *v34;
  *(v39 + 16) = v38 + 1;
  sub_10034896C(v13, v39 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v38, type metadata accessor for BatchID);
}

void sub_100347460(double a1)
{
  v2 = *(v1 + 16);
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    for (i = 4; ; i += 6)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_10000ADB4(&v2[i], v11, &qword_1004DAD70, &qword_1003F1460);
      sub_1000035B8(v12, v12[3]);
      v6 = sub_100399138();
      sub_1001ED244(v11, &qword_1004DAD70, &qword_1003F1460);
      if (v6)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

LABEL_13:
    v2 = sub_100348854(v2);
LABEL_8:
    if (v4 >= v2[2])
    {
      __break(1u);
    }

    else
    {
      v7 = v2[i];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (!v8)
      {
        v2[i] = v9;
        *(v10 + 16) = v2;
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_10034759C(uint64_t result)
{
  v2 = *(v1 + 16);
  v3 = v2[2];
  if (v3)
  {
    v4 = 0;
    for (i = 4; ; i += 6)
    {
      if (v4 >= v2[2])
      {
        __break(1u);
        goto LABEL_13;
      }

      sub_10000ADB4(&v2[i], v12, &unk_1004DCD50, &unk_1003F2040);
      sub_1000035B8(v13, v14);
      v6 = sub_100399138();
      isUniquelyReferenced_nonNull_native = sub_1001ED244(v12, &unk_1004DCD50, &unk_1003F2040);
      if (v6)
      {
        break;
      }

      if (v3 == ++v4)
      {
        return isUniquelyReferenced_nonNull_native;
      }
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_13:
    isUniquelyReferenced_nonNull_native = sub_100348840(v2);
    v2 = isUniquelyReferenced_nonNull_native;
LABEL_8:
    if (v4 >= v2[2])
    {
      __break(1u);
    }

    else
    {
      v8 = v2[i];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (!v9)
      {
        v2[i] = v10;
        *(v11 + 16) = v2;
        return isUniquelyReferenced_nonNull_native;
      }
    }

    __break(1u);
  }

  return isUniquelyReferenced_nonNull_native;
}

void *sub_1003476D0(uint64_t a1)
{
  sub_100003554(v1 + 88, &v54);
  type metadata accessor for ErrorCollector();
  v3 = swift_allocObject();
  v3[7] = sub_10034BB24(_swiftEmptyArrayStorage);
  v4 = v3 + 7;
  sub_100004A68(&v54, (v3 + 2));
  v49 = v1;
  sub_100003554(v1 + 48, &v54);
  v5 = swift_allocObject();
  v5[7] = sub_10034BB24(_swiftEmptyArrayStorage);
  v6 = v5 + 7;
  sub_100004A68(&v54, (v5 + 2));
  v48 = *(a1 + 16);
  if (!v48)
  {
    return v3;
  }

  v7 = 0;
  v8 = *(type metadata accessor for BatchID(0) - 8);
  v47[2] = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v47[1] = *(v8 + 72);
  while (1)
  {
    sub_1000035B8((v49 + 168), *(v49 + 192));
    sub_100358198(&v51);
    v9 = sub_1000035B8(&v51, v53);
    __chkstk_darwin(v9);
    (*(v11 + 16))(v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1001E6B7C(&v54);
    sub_100399118();
    sub_100003894(&v51);
    sub_1001F54B4(&v54, AssociatedTypeWitness);
    sub_100399618();
    v12 = v52;
    if (v52 != 255)
    {
      break;
    }

LABEL_3:
    ++v7;
    sub_100003894(&v54);
    if (v7 == v48)
    {
      return v3;
    }
  }

  while (1)
  {
    if ((v12 & 1) == 0)
    {
      sub_1000035B8(v3 + 2, v3[5]);
      v27 = sub_100397E18();
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v3[7];
      v29 = v50;
      v31 = sub_10034375C(v27);
      v32 = v29[2];
      v33 = (v30 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_35;
      }

      v35 = v30;
      if (v29[3] < v34)
      {
        sub_10034AD98(v34, isUniquelyReferenced_nonNull_native);
        v29 = v50;
        v36 = sub_10034375C(v27);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_40;
        }

        v31 = v36;
        *v4 = v29;
        if (v35)
        {
          goto LABEL_27;
        }

LABEL_25:
        v29[(v31 >> 6) + 8] |= 1 << v31;
        *(v29[6] + 8 * v31) = v27;
        *(v29[7] + 8 * v31) = 0;
        v40 = v29[2];
        v15 = __OFADD__(v40, 1);
        v41 = v40 + 1;
        if (v15)
        {
          goto LABEL_38;
        }

        v29[2] = v41;
        goto LABEL_27;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        *v4 = v29;
        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        sub_10034B604();
        v29 = v50;
        *v4 = v50;
        if ((v35 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_27:
      v42 = v29[7];
      v43 = *(v42 + 8 * v31);
      v15 = __OFADD__(v43, 1);
      v44 = v43 + 1;
      if (v15)
      {
        goto LABEL_37;
      }

      *(v42 + 8 * v31) = v44;
      goto LABEL_8;
    }

    sub_1000035B8(v5 + 2, v5[5]);
    v17 = sub_100397E18();
    swift_beginAccess();
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v5[7];
    v19 = v50;
    v20 = sub_10034375C(v17);
    v22 = v19[2];
    v23 = (v21 & 1) == 0;
    v15 = __OFADD__(v22, v23);
    v24 = v22 + v23;
    if (v15)
    {
      break;
    }

    v25 = v21;
    if (v19[3] < v24)
    {
      sub_10034AD98(v24, v18);
      v19 = v50;
      v20 = sub_10034375C(v17);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_40;
      }

LABEL_20:
      *v6 = v19;
      if ((v25 & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_6;
    }

    if (v18)
    {
      goto LABEL_20;
    }

    v45 = v20;
    sub_10034B604();
    v20 = v45;
    v19 = v50;
    *v6 = v50;
    if ((v25 & 1) == 0)
    {
LABEL_21:
      v19[(v20 >> 6) + 8] |= 1 << v20;
      *(v19[6] + 8 * v20) = v17;
      *(v19[7] + 8 * v20) = 0;
      v38 = v19[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_39;
      }

      v19[2] = v39;
    }

LABEL_6:
    v13 = v19[7];
    v14 = *(v13 + 8 * v20);
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_36;
    }

    *(v13 + 8 * v20) = v16;
LABEL_8:
    swift_endAccess();
    sub_1001F54B4(&v54, AssociatedTypeWitness);
    sub_100399618();
    v12 = v52;
    if (v52 == 255)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_100347C68()
{

  sub_100003894(v0 + 6);
  sub_100003894(v0 + 11);
  sub_100003894(v0 + 16);
  sub_100003894(v0 + 21);

  return swift_deallocClassInstance();
}

uint64_t sub_100347CF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1001E27A8(&qword_1004DAD68, &unk_1003F1450);
  __chkstk_darwin(v4 - 8);
  v6 = &v10 - v5;
  sub_10034662C(a1, &v10 - v5);
  v7 = type metadata accessor for ObservabilityDailyReport(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_1001ED244(v6, &qword_1004DAD68, &unk_1003F1450);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0;
  }

  else
  {
    *(a2 + 24) = v7;
    *(a2 + 32) = &off_10047F4B8;
    v9 = sub_1001E6B7C(a2);
    return sub_10034896C(v6, v9, type metadata accessor for ObservabilityDailyReport);
  }

  return result;
}

void *sub_100347E4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 32 + 8 * v1 - 8);
  v15[0] = a1;
  v15[1] = a1 + 32;
  v15[2] = 0;
  v15[3] = 2 * v1 - 1;
  v15[4] = a1;
  v15[5] = a1 + 32;
  v15[6] = 1;
  v15[7] = (2 * v1) | 1;
  sub_1001E27A8(&unk_1004DCD30, &qword_1003F1480);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + 56) = sub_1001E27A8(&qword_1004DAD88, &qword_1003F1488);
  *(v4 + 64) = sub_1001E6C28(&qword_1004DAD90, &qword_1004DAD88, &qword_1003F1488, &protocol conformance descriptor for PartialRangeUpTo<A>);
  *(v4 + 32) = v2;
  v14 = v4;
  swift_bridgeObjectRetain_n();
  v5 = sub_1003482B0(v15);
  v6 = sub_100351474(v5);

  sub_100353694(v6);
  v7 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100354110(0, *(v4 + 16) + 1, 1, v4);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100354110((v8 > 1), v9 + 1, 1, v7);
  }

  sub_1001ED244(v15, &qword_1004DAD98, &qword_1003F1490);
  v12 = sub_1001E27A8(&qword_1004DADA0, &qword_1003F1498);
  v13 = sub_1001E6C28(&qword_1004DADA8, &qword_1004DADA0, &qword_1003F1498, &protocol conformance descriptor for PartialRangeFrom<A>);
  *&v11 = v3;
  v7[2] = v9 + 1;
  sub_100004A68(&v11, &v7[5 * v9 + 4]);
  return v7;
}

void *sub_10034808C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyArrayStorage;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 32 + 8 * v1 - 8);
  v15[0] = a1;
  v15[1] = a1 + 32;
  v15[2] = 0;
  v15[3] = 2 * v1 - 1;
  v15[4] = a1;
  v15[5] = a1 + 32;
  v15[6] = 1;
  v15[7] = (2 * v1) | 1;
  sub_1001E27A8(&qword_1004DADB0, &qword_1003F14A0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1003C9930;
  *(v4 + 56) = sub_1001E27A8(&qword_1004DADB8, &qword_1003F14A8);
  *(v4 + 64) = sub_1001E6C28(&qword_1004DADC0, &qword_1004DADB8, &qword_1003F14A8, &protocol conformance descriptor for PartialRangeUpTo<A>);
  *(v4 + 32) = v2;
  v14 = v4;
  swift_bridgeObjectRetain_n();
  v5 = sub_100348578(v15);
  v6 = sub_1003515A8(v5);

  sub_1003536B8(v6);
  v7 = v4;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v7 = sub_100354134(0, *(v4 + 16) + 1, 1, v4);
  }

  v9 = v7[2];
  v8 = v7[3];
  if (v9 >= v8 >> 1)
  {
    v7 = sub_100354134((v8 > 1), v9 + 1, 1, v7);
  }

  sub_1001ED244(v15, &qword_1004DADC8, &qword_1003F14B0);
  v12 = sub_1001E27A8(&qword_1004DADD0, qword_1003F14B8);
  v13 = sub_1001E6C28(&qword_1004DADD8, &qword_1004DADD0, qword_1003F14B8, &protocol conformance descriptor for PartialRangeFrom<A>);
  *&v11 = v3;
  v7[2] = v9 + 1;
  sub_100004A68(&v11, &v7[5 * v9 + 4]);
  return v7;
}

uint64_t *sub_1003482B0(uint64_t *result)
{
  v1 = result[2];
  v2 = result[3] >> 1;
  if (__OFSUB__(v2, v1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = result[6];
  v4 = result[7] >> 1;
  if (!__OFSUB__(v4, v3))
  {
    v34 = result[2];
    v35 = result[7] >> 1;
    v32 = result[6];
    v33 = result[3] >> 1;
    v30 = result[5];
    v31 = result[1];
    if ((v4 - v3) >= (v2 - v1))
    {
      v5 = v2 - v1;
    }

    else
    {
      v5 = v4 - v3;
    }

    result = sub_100367B28(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      v6 = v32;
      v7 = v35;
      if (v32 > v35)
      {
        v7 = v32;
      }

      v8 = v7 - v32;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v9 = v5;
      v10 = 0;
      v12 = v30;
      v11 = v31;
      v14 = v33;
      v13 = v34;
      do
      {
        if (!(v34 - v33 + v10))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v13 + v10 >= v14)
        {
          goto LABEL_35;
        }

        if (!(v32 - v35 + v10))
        {
          goto LABEL_36;
        }

        if (v8 == v10)
        {
          goto LABEL_37;
        }

        v15 = *(v31 + 8 * v34 + 8 * v10);
        v16 = *(v30 + 8 * v32 + 8 * v10);
        if (v15 > v16)
        {
          goto LABEL_38;
        }

        v18 = _swiftEmptyArrayStorage[2];
        v17 = _swiftEmptyArrayStorage[3];
        if (v18 >= v17 >> 1)
        {
          result = sub_100367B28((v17 > 1), v18 + 1, 1);
          v9 = v5;
          v12 = v30;
          v11 = v31;
          v6 = v32;
          v14 = v33;
          v13 = v34;
        }

        ++v10;
        _swiftEmptyArrayStorage[2] = v18 + 1;
        v19 = &_swiftEmptyArrayStorage[2 * v18];
        v19[4] = v15;
        v19[5] = v16;
      }

      while (v9 != v10);
      v20 = v6 + v10;
      v21 = v13 + v10;
      if (v13 + v10 == v14)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v6 = v32;
      v14 = v33;
      v20 = v32;
      v13 = v34;
      v21 = v34;
      v12 = v30;
      v11 = v31;
      if (v34 == v33)
      {
LABEL_22:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }
    }

    v22 = v21;
    v23 = v20;
    v24 = v35;
    while (v21 >= v13 && v22 < v14)
    {
      if (v24 == v23)
      {
        goto LABEL_22;
      }

      if (v20 < v6 || v23 >= v24)
      {
        goto LABEL_40;
      }

      v25 = *(v11 + 8 * v22);
      v26 = *(v12 + 8 * v23);
      if (v25 > v26)
      {
        goto LABEL_41;
      }

      v28 = _swiftEmptyArrayStorage[2];
      v27 = _swiftEmptyArrayStorage[3];
      if (v28 >= v27 >> 1)
      {
        result = sub_100367B28((v27 > 1), v28 + 1, 1);
        v12 = v30;
        v11 = v31;
        v13 = v34;
        v24 = v35;
        v6 = v32;
        v14 = v33;
      }

      ++v22;
      _swiftEmptyArrayStorage[2] = v28 + 1;
      v29 = &_swiftEmptyArrayStorage[2 * v28];
      v29[4] = v25;
      v29[5] = v26;
      ++v23;
      if (v14 == v22)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t *sub_100348578(uint64_t *result)
{
  v1 = result[2];
  v2 = result[3] >> 1;
  if (__OFSUB__(v2, v1))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v3 = result[6];
  v4 = result[7] >> 1;
  if (!__OFSUB__(v4, v3))
  {
    v33 = result[2];
    v34 = result[7] >> 1;
    v31 = result[6];
    v32 = result[3] >> 1;
    v29 = result[5];
    v30 = result[1];
    if ((v4 - v3) >= (v2 - v1))
    {
      v5 = v2 - v1;
    }

    else
    {
      v5 = v4 - v3;
    }

    result = sub_100367BC8(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_44;
    }

    if (v5)
    {
      v6 = v31;
      v7 = v34;
      if (v31 > v34)
      {
        v7 = v31;
      }

      v35 = v7 - v31;
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v8 = v5;
      v9 = 0;
      v11 = v29;
      v10 = v30;
      v13 = v32;
      v12 = v33;
      do
      {
        if (!(v33 - v32 + v9))
        {
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if (v12 + v9 >= v13)
        {
          goto LABEL_35;
        }

        if (!(v31 - v34 + v9))
        {
          goto LABEL_36;
        }

        if (v35 == v9)
        {
          goto LABEL_37;
        }

        v14 = *(v30 + 8 * v33 + 8 * v9);
        v15 = *(v29 + 8 * v31 + 8 * v9);
        if (v15 < v14)
        {
          goto LABEL_38;
        }

        v17 = _swiftEmptyArrayStorage[2];
        v16 = _swiftEmptyArrayStorage[3];
        if (v17 >= v16 >> 1)
        {
          result = sub_100367BC8((v16 > 1), v17 + 1, 1);
          v8 = v5;
          v11 = v29;
          v10 = v30;
          v6 = v31;
          v13 = v32;
          v12 = v33;
        }

        ++v9;
        _swiftEmptyArrayStorage[2] = v17 + 1;
        v18 = &_swiftEmptyArrayStorage[2 * v17];
        v18[4] = v14;
        v18[5] = v15;
      }

      while (v8 != v9);
      v19 = v6 + v9;
      v20 = v12 + v9;
      if (v12 + v9 == v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      swift_unknownObjectRetain();
      result = swift_unknownObjectRetain();
      v6 = v31;
      v13 = v32;
      v19 = v31;
      v12 = v33;
      v20 = v33;
      v11 = v29;
      v10 = v30;
      if (v33 == v32)
      {
LABEL_22:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return _swiftEmptyArrayStorage;
      }
    }

    v21 = v20;
    v22 = v19;
    v23 = v34;
    while (v20 >= v12 && v21 < v13)
    {
      if (v23 == v22)
      {
        goto LABEL_22;
      }

      if (v19 < v6 || v22 >= v23)
      {
        goto LABEL_40;
      }

      v24 = *(v10 + 8 * v21);
      v25 = *(v11 + 8 * v22);
      if (v25 < v24)
      {
        goto LABEL_41;
      }

      v27 = _swiftEmptyArrayStorage[2];
      v26 = _swiftEmptyArrayStorage[3];
      if (v27 >= v26 >> 1)
      {
        result = sub_100367BC8((v26 > 1), v27 + 1, 1);
        v11 = v29;
        v10 = v30;
        v12 = v33;
        v23 = v34;
        v6 = v31;
        v13 = v32;
      }

      ++v21;
      _swiftEmptyArrayStorage[2] = v27 + 1;
      v28 = &_swiftEmptyArrayStorage[2 * v27];
      v28[4] = v24;
      v28[5] = v25;
      ++v22;
      if (v13 == v21)
      {
        goto LABEL_22;
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_100348868(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v8 = result;
    v15 = _swiftEmptyArrayStorage;
    sub_100211EA4(0, v4, 0);
    v9 = _swiftEmptyArrayStorage;
    v10 = a2 + 32;
    do
    {
      sub_10000ADB4(v10, v14, a3, a4);
      v11 = v14[0];
      sub_1001ED244(v14, a3, a4);
      v15 = v9;
      v13 = v9[2];
      v12 = v9[3];
      if (v13 >= v12 >> 1)
      {
        sub_100211EA4((v12 > 1), v13 + 1, 1);
        v9 = v15;
      }

      v9[2] = v13 + 1;
      v9[v13 + 4] = v11;
      v10 += 48;
      --v4;
    }

    while (v4);
    return v8;
  }

  return result;
}

uint64_t sub_10034896C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1003489D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_100348A3C()
{
  result = qword_1004DADE0;
  if (!qword_1004DADE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DADE0);
  }

  return result;
}

uint64_t sub_100348A90()
{
  if (*v0)
  {
    return 7827308;
  }

  else
  {
    return 1751607656;
  }
}

unint64_t sub_100348B84()
{
  v1 = v0[5];
  v2 = v0[6];
  sub_1000035B8(v0 + 2, v1);
  v3 = (*(v2 + 8))(v1, v2);
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100398CA8();
  sub_10000351C(v4, qword_1004DE5D0);
  v5 = sub_100398C88();
  v6 = sub_1003993D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v7 = 136315138;
    sub_1001E27A8(&qword_1004DAF28, &qword_1003F1668);
    v9 = sub_100398FB8();
    v11 = sub_100005700(v9, v10, &v13);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "stored scale factor: %s", v7, 0xCu);
    sub_100003894(v8);
  }

  return v3 | ((HIDWORD(v3) & 1) << 32);
}

uint64_t sub_100348D2C(float a1)
{
  v2 = v1;
  if (qword_1004DA0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_100398CA8();
  sub_10000351C(v4, qword_1004DE5D0);
  v5 = sub_100398C88();
  v6 = sub_1003993D8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 136315138;
    v13 = v8;
    sub_1003992E8();
    v9 = sub_100005700(0, 0xE000000000000000, &v13);

    *(v7 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v5, v6, "storing scale factor: %s", v7, 0xCu);
    sub_100003894(v8);
  }

  v10 = v2[5];
  v11 = v2[6];
  sub_1000035B8(v2 + 2, v10);
  return (*(v11 + 16))(v10, v11, a1);
}

void sub_100348F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = objc_opt_self();
  v4 = sub_100398F28();
  sub_1001E27A8(&unk_1004D5DB0, &unk_1003ECC30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9260;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x8000000100438560;
  *(inited + 48) = sub_100399218();
  *(inited + 56) = 0x6C69614673796164;
  *(inited + 64) = 0xEA00000000006465;
  *(inited + 72) = sub_100399348();
  strcpy((inited + 80), "daysAttempted");
  *(inited + 94) = -4864;
  *(inited + 96) = sub_100399348();
  sub_1002143B8(inited);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004D5A28, &unk_1003EB1B0);
  swift_arrayDestroy();
  sub_10025A138();
  isa = sub_100398E48().super.isa;

  [v3 sendEvent:v4 customPayload:isa];
}

unint64_t sub_100349120()
{
  result = qword_1004DAFC8;
  if (!qword_1004DAFC8)
  {
    sub_1001E27F0(&qword_1004DAFD0, qword_1003F1718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DAFC8);
  }

  return result;
}

unint64_t sub_100349198()
{
  result = qword_1004DAFD8;
  if (!qword_1004DAFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DAFD8);
  }

  return result;
}

uint64_t sub_1003491EC()
{
  v1 = 0x796C72756F68;
  if (*v0 != 1)
  {
    v1 = 0x796C696164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x63696E756D6D6F63;
  }
}

unint64_t sub_10034924C()
{
  sub_1001E27A8(&unk_1004DAFE0, &qword_1003F1810);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003F17F0;
  *(inited + 32) = 0x444D4D5F65746164;
  *(inited + 40) = 0xEB00000000484844;
  *(inited + 48) = sub_1003494B8();
  strcpy((inited + 56), "created_events");
  *(inited + 71) = -18;
  v2 = type metadata accessor for ObservabilityDailyReport(0);
  *(inited + 72) = sub_100399348();
  *(inited + 80) = 0x6465726566667562;
  *(inited + 88) = 0xEF73746E6576655FLL;
  *(inited + 96) = sub_100399348();
  strcpy((inited + 104), "queued_events");
  *(inited + 118) = -4864;
  *(inited + 120) = sub_100399348();
  *(inited + 128) = 0xD000000000000018;
  *(inited + 136) = 0x8000000100438870;
  *(inited + 144) = sub_1003497AC(*(v0 + v2[8]), *(v0 + v2[8] + 8));
  strcpy((inited + 152), "buffered_time");
  *(inited + 166) = -4864;
  *(inited + 168) = sub_1003497AC(*(v0 + v2[9]), *(v0 + v2[9] + 8));
  *(inited + 176) = 0x5F64657269707865;
  *(inited + 184) = 0xEF73656863746162;
  *(inited + 192) = sub_100399348();
  *(inited + 200) = 0xD000000000000016;
  *(inited + 208) = 0x8000000100438890;
  v3 = *(v0 + v2[12]);

  v5 = sub_100349A54(v4, v3);
  v6 = sub_100349B38(v5);

  *(inited + 216) = v6;
  v7 = sub_10034BC14(inited, &unk_1004D5AD0, &qword_1003EC4E0);
  swift_setDeallocating();
  sub_1001E27A8(&qword_1004DCA80, &qword_1003F1818);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1003494B8()
{
  v0 = sub_100397968();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_100397918();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100397318();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100397868();
  sub_100397928();
  sub_100397888();
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  sub_100004218(0, &qword_1004D4900, NSString_ptr);
  v12 = sub_100399578("%02d%02d%02d", v19, v20, v21);
  sub_1001E27A8(&qword_1004D5860, &unk_1003EB020);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1003C9260;
  result = sub_100397278();
  if (v15)
  {
    __break(1u);
    goto LABEL_6;
  }

  *(v13 + 56) = &type metadata for Int;
  *(v13 + 64) = &protocol witness table for Int;
  *(v13 + 32) = result;
  result = sub_100397228();
  if (v16)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  *(v13 + 96) = &type metadata for Int;
  *(v13 + 104) = &protocol witness table for Int;
  *(v13 + 72) = result;
  result = sub_100397248();
  if ((v17 & 1) == 0)
  {
    *(v13 + 136) = &type metadata for Int;
    *(v13 + 144) = &protocol witness table for Int;
    *(v13 + 112) = result;
    v18 = sub_100399588();

    (*(v9 + 8))(v11, v8);
    return v18;
  }

LABEL_7:
  __break(1u);
  return result;
}

Class sub_1003497AC(uint64_t a1, uint64_t a2)
{
  sub_1001E27A8(&unk_1004DB000, &qword_1003EE2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1003C9930;
  *(inited + 32) = 0x6E6F6973726576;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = sub_100399348();
  v4 = sub_10025F0F0(inited, &qword_1004DAFF0, &qword_1003EE2B8);
  swift_setDeallocating();
  sub_10034BD10(inited + 32);
  v5 = *(a2 + 16);
  if (!v5)
  {
LABEL_16:
    sub_100004218(0, &qword_1004D43F0, NSNumber_ptr);
    isa = sub_100398E48().super.isa;

    return isa;
  }

  v6 = (a2 + 32);
  v7 = 1;
  while (1)
  {
    v10 = *v6++;
    if (v10 < 1)
    {
      goto LABEL_4;
    }

    v28._countAndFlagsBits = sub_100399998();
    sub_100399068(v28);

    v11.super.super.isa = sub_100399348().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = v4;
    v13 = sub_1001EC1DC(0x74656B637562, 0xE600000000000000);
    v15 = v4[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v4[3] < v18)
    {
      sub_10034AFFC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1001EC1DC(0x74656B637562, 0xE600000000000000);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v24 = v13;
    sub_10034B750();
    v13 = v24;
    v4 = v27;
    if (v19)
    {
LABEL_3:
      v8 = v4[7];
      v9 = *(v8 + 8 * v13);
      *(v8 + 8 * v13) = v11;

      goto LABEL_4;
    }

LABEL_12:
    v4[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v4[6] + 16 * v13);
    *v21 = 0x74656B637562;
    v21[1] = 0xE600000000000000;
    *(v4[7] + 8 * v13) = v11;
    v22 = v4[2];
    v17 = __OFADD__(v22, 1);
    v23 = v22 + 1;
    if (v17)
    {
      goto LABEL_18;
    }

    v4[2] = v23;
LABEL_4:
    ++v7;
    if (!--v5)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_100349A54(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v13 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_100349DD4(v12, *v11, v11[1]))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v13;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

Class sub_100349B38(uint64_t a1)
{
  v2 = sub_10025F0F0(_swiftEmptyArrayStorage, &qword_1004DAFF0, &qword_1003EE2B8);
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  v32 = a1 + 56;
  while (v6)
  {
    v12 = v8;
LABEL_11:
    v13 = sub_100399998();
    v15 = v14;
    v16.super.super.isa = sub_100399348().super.super.isa;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = v2;
    v18 = sub_1001EC1DC(v13, v15);
    v20 = *(v2 + 16);
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
      goto LABEL_22;
    }

    v24 = v19;
    if (*(v2 + 24) >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_10034B750();
        v18 = v29;
      }
    }

    else
    {
      sub_10034AFFC(v23, isUniquelyReferenced_nonNull_native);
      v18 = sub_1001EC1DC(v13, v15);
      if ((v24 & 1) != (v25 & 1))
      {
        goto LABEL_24;
      }
    }

    v6 &= v6 - 1;
    if (v24)
    {
      v9 = v18;

      v2 = v33;
      v10 = v33[7];
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v16;
    }

    else
    {
      v2 = v33;
      v33[(v18 >> 6) + 8] |= 1 << v18;
      v26 = (v33[6] + 16 * v18);
      *v26 = v13;
      v26[1] = v15;
      *(v33[7] + 8 * v18) = v16;
      v27 = v33[2];
      v22 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v22)
      {
        goto LABEL_23;
      }

      v33[2] = v28;
    }

    v8 = v12;
    v3 = v32;
  }

  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v7)
    {

      sub_100004218(0, &qword_1004D43F0, NSNumber_ptr);
      isa = sub_100398E48().super.isa;

      return isa;
    }

    v6 = *(v3 + 8 * v12);
    ++v8;
    if (v6)
    {
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  result = sub_100399A98();
  __break(1u);
  return result;
}

uint64_t sub_100349DD4(Swift::UInt *a1, Swift::UInt a2, Swift::UInt a3)
{
  v7 = *v3;
  sub_100399B58();
  sub_100399B68(a2);
  sub_100399B68(a3);
  v8 = sub_100399B88();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_10034A45C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_100349EF0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_100399B48();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_10034A5CC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

void sub_100349FD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001E27A8(&qword_1004DAFF8, &qword_1003F1820);
  v4 = sub_1003996C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_100399B58();
      sub_100399B68(v19);
      sub_100399B68(v20);
      v21 = sub_100399B88();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10034A238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001E27A8(&qword_1004DB030, &qword_1003F13C0);
  v4 = sub_1003996C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v26 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      v18 = sub_100399B48();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v26;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_10034A45C(Swift::UInt result, Swift::UInt a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    sub_100349FD0(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      sub_10034A6EC();
      a3 = v9;
      goto LABEL_15;
    }

    sub_10034A970(v7 + 1);
  }

  v10 = *v4;
  sub_100399B58();
  sub_100399B68(result);
  sub_100399B68(a2);
  v11 = sub_100399B88();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v16 = *v14;
      v15 = v14[1];
      if (v16 == result && v15 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v18 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v19 = (*(v18 + 48) + 16 * a3);
  *v19 = result;
  v19[1] = a2;
  v20 = *(v18 + 16);
  v21 = __OFADD__(v20, 1);
  v22 = v20 + 1;
  if (!v21)
  {
    *(v18 + 16) = v22;
    return;
  }

  __break(1u);
LABEL_18:
  sub_100399A88();
  __break(1u);
}

void sub_10034A5CC(uint64_t result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10034A238(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_10034A830();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10034ABA8(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_100399B48();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = result;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return;
  }

  __break(1u);
LABEL_15:
  sub_100399A88();
  __break(1u);
}

void sub_10034A6EC()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004DAFF8, &qword_1003F1820);
  v2 = *v0;
  v3 = sub_1003996B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 16 * v14) = *(*(v2 + 48) + 16 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_10034A830()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004DB030, &qword_1003F13C0);
  v2 = *v0;
  v3 = sub_1003996B8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_10034A970(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001E27A8(&qword_1004DAFF8, &qword_1003F1820);
  v4 = sub_1003996C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_100399B58();
      sub_100399B68(v18);
      sub_100399B68(v19);
      v20 = sub_100399B88();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
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
    *v2 = v5;
  }
}

void sub_10034ABA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1001E27A8(&qword_1004DB030, &qword_1003F13C0);
  v4 = sub_1003996C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      v17 = sub_100399B48();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }
}

void sub_10034AD98(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001E27A8(&unk_1004DB020, &qword_1003F1830);
  v6 = sub_100399818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v4;
    v32 = v3;
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
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      v22 = sub_100399B48();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if (v31)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
}

void sub_10034AFFC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1001E27A8(&qword_1004DAFF0, &qword_1003EE2B8);
  v36 = v4;
  v6 = sub_100399818();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = v6 + 64;
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
      if ((v36 & 1) == 0)
      {

        v25 = v24;
      }

      sub_100399B58();
      sub_100399018();
      v26 = sub_100399B88();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v35;
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

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_10034B2A0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v42 = sub_100397748();
  v5 = *(v42 - 8);
  __chkstk_darwin(v42);
  v41 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_1001E27A8(&qword_1004DB038, &qword_1003F1838);
  v40 = v4;
  v8 = sub_100399818();
  v9 = v8;
  if (*(v7 + 16))
  {
    v36 = v2;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v37 = (v5 + 16);
    v38 = v7;
    v39 = v5;
    v16 = (v5 + 32);
    v17 = v8 + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + v22);
      v25 = *(v39 + 72);
      v26 = v23 + v25 * v22;
      if (v40)
      {
        (*v16)(v41, v26, v42);
      }

      else
      {
        (*v37)(v41, v26, v42);
      }

      sub_100399B58();
      sub_100399B68(v24);
      v27 = sub_100399B88();
      v28 = -1 << *(v9 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + v18) = v24;
      (*v16)((*(v9 + 56) + v25 * v18), v41, v42);
      ++*(v9 + 16);
      v7 = v38;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v35 = 1 << *(v7 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v11, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
}

void sub_10034B604()
{
  v1 = v0;
  sub_1001E27A8(&unk_1004DB020, &qword_1003F1830);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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
}

void sub_10034B750()
{
  v1 = v0;
  sub_1001E27A8(&qword_1004DAFF0, &qword_1003EE2B8);
  v2 = *v0;
  v3 = sub_100399808();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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

        v22 = v20;
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
}

void sub_10034B8BC()
{
  v1 = v0;
  v29 = sub_100397748();
  v31 = *(v29 - 8);
  __chkstk_darwin(v29);
  v28 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1001E27A8(&qword_1004DB038, &qword_1003F1838);
  v3 = *v0;
  v4 = sub_100399808();
  v5 = v4;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, (v3 + 64), 8 * v7);
    }

    v8 = 0;
    v9 = *(v3 + 16);
    v30 = v5;
    *(v5 + 16) = v9;
    v10 = 1 << *(v3 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v3 + 64);
    v13 = (v10 + 63) >> 6;
    v27 = v31 + 16;
    v25 = v3 + 64;
    v26 = v31 + 32;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_14:
      v17 = v14 | (v8 << 6);
      v18 = *(*(v3 + 48) + v17);
      v19 = v31;
      v20 = *(v31 + 72) * v17;
      v22 = v28;
      v21 = v29;
      (*(v31 + 16))(v28, *(v3 + 56) + v20, v29);
      v23 = v30;
      *(*(v30 + 48) + v17) = v18;
      (*(v19 + 32))(*(v23 + 56) + v20, v22, v21);
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

        v1 = v24;
        v5 = v30;
        goto LABEL_18;
      }

      v16 = *(v25 + 8 * v8);
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
}

unint64_t sub_10034BB24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1001E27A8(&unk_1004DB020, &qword_1003F1830);
    v3 = sub_100399828();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10034375C(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10034BC14(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1001E27A8(a2, a3);
    v5 = sub_100399828();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      swift_unknownObjectRetain();
      result = sub_1001EC1DC(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10034BD10(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004D7E60, &qword_1003EE2A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10034BD78(uint64_t a1)
{
  v2 = sub_1001E27A8(&unk_1004DB040, &unk_1003F1840);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1001E27A8(&qword_1004DB038, &qword_1003F1838);
    v7 = sub_100399828();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_10034BF40(v9, v5);
      v11 = *v5;
      result = sub_100008858(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v11;
      v15 = v7[7];
      v16 = sub_100397748();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, &v5[v8], v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_10034BF40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1001E27A8(&unk_1004DB040, &unk_1003F1840);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10034BFB0(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 115;
  }

  else
  {
    v2 = 99;
  }

  if (*a2)
  {
    v3 = 115;
  }

  else
  {
    v3 = 99;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1003999B8();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10034C020()
{
  sub_100399B58();
  sub_100399018();

  return sub_100399B88();
}

double sub_10034C080(uint64_t a1)
{
  sub_100399018();

  return result;
}

Swift::Int sub_10034C0C4(uint64_t a1)
{
  sub_100399B58();
  sub_100399018();

  return sub_100399B88();
}

void sub_10034C120(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v7._countAndFlagsBits = *a1;
  v3 = a1[1];
  v4._rawValue = &off_10047EE50;
  v7._object = v3;
  v5 = sub_100399848(v4, v7);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v5)
  {
    v6 = 0;
  }

  *a2 = v6;
}

void sub_10034C180(uint64_t *a1@<X8>)
{
  v2 = 99;
  if (*v1)
  {
    v2 = 115;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10034C1A0()
{
  if (*v0)
  {
    return 115;
  }

  else
  {
    return 99;
  }
}

void sub_10034C1BC(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v8._countAndFlagsBits = a1;
  v5._rawValue = &off_10047EE50;
  v8._object = a2;
  v6 = sub_100399848(v5, v8);

  if (v6 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v6)
  {
    v7 = 0;
  }

  *a3 = v7;
}

uint64_t sub_10034C220(uint64_t a1)
{
  v2 = sub_10034C97C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034C25C(uint64_t a1)
{
  v2 = sub_10034C97C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10034C298(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1001E27A8(&qword_1004DB078, &qword_1003F1900);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v12 - v9;
  sub_1000035B8(a1, a1[3]);
  sub_10034C97C();
  sub_100399BF8();
  v14 = a2;
  v13 = 0;
  sub_1001E27A8(&qword_1004DB068, &qword_1003F18F8);
  sub_10034C9D0(&qword_1004DB080, &protocol witness table for Int, &protocol conformance descriptor for <> Set<A>);
  sub_100399948();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_100399948();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_10034C480@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_10034C4C8(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_10034C4C8(void *a1)
{
  v3 = sub_1001E27A8(&qword_1004DB058, &qword_1003F18F0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[3];
  sub_1000035B8(a1, v7);
  sub_10034C97C();
  sub_100399BC8();
  if (!v1)
  {
    sub_1001E27A8(&qword_1004DB068, &qword_1003F18F8);
    v10 = 0;
    sub_10034C9D0(&qword_1004DB070, &protocol witness table for Int, &protocol conformance descriptor for <> Set<A>);
    sub_1003998A8();
    v7 = v11;
    v10 = 1;
    sub_1003998A8();
    (*(v4 + 8))(v6, v3);
  }

  sub_100003894(a1);
  return v7;
}

void sub_10034C6E0(uint64_t a1, uint64_t a2)
{
  v2 = sub_100398FA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1003970B8();
  swift_allocObject();
  sub_1003970A8();
  sub_100398F98();
  v6 = sub_100398F68();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 != 15)
  {
    sub_10034C86C();
    sub_100397098();
    sub_1001DDE50(v6, v8);
  }
}

unint64_t sub_10034C86C()
{
  result = qword_1004DB050;
  if (!qword_1004DB050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB050);
  }

  return result;
}

uint64_t sub_10034C8C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10034C91C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_10034C97C()
{
  result = qword_1004DB060;
  if (!qword_1004DB060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB060);
  }

  return result;
}

uint64_t sub_10034C9D0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1001E27F0(&qword_1004DB068, &qword_1003F18F8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10034CA50()
{
  result = qword_1004DB088;
  if (!qword_1004DB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB088);
  }

  return result;
}

unint64_t sub_10034CAA8()
{
  result = qword_1004DB090;
  if (!qword_1004DB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB090);
  }

  return result;
}

unint64_t sub_10034CB00()
{
  result = qword_1004DB098;
  if (!qword_1004DB098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB098);
  }

  return result;
}

uint64_t type metadata accessor for ObservabilityCommunicationReport(uint64_t a1)
{
  result = qword_1004DB0F8;
  if (!qword_1004DB0F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10034CBC8(uint64_t a1)
{
  sub_100397748();
  if (v1 <= 0x3F)
  {
    sub_10034CC4C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10034CC4C(uint64_t a1)
{
  if (!qword_1004DB108)
  {
    sub_10034CCA8();
    v1 = sub_100399338();
    if (!v2)
    {
      atomic_store(v1, &qword_1004DB108);
    }
  }
}

unint64_t sub_10034CCA8()
{
  result = qword_1004DB110;
  if (!qword_1004DB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1004DB110);
  }

  return result;
}

uint64_t sub_10034CCFC()
{

  return swift_deallocClassInstance();
}

unint64_t sub_10034CD68(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v5 = 0x69747265706F7270;
    v6 = 0xD000000000000016;
    if (a1 != 10)
    {
      v6 = 0x6D6E6F7269766E65;
    }

    if (a1 != 9)
    {
      v5 = v6;
    }

    v7 = 0x696669746E656469;
    v8 = 0x7261646E6F636573;
    if (a1 != 7)
    {
      v8 = 0x68636E617262;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x63697274656DLL;
    v2 = 0x736E6F6974706FLL;
    if (a1 != 3)
    {
      v2 = 0xD000000000000011;
    }

    v3 = 0x5465736F70727570;
    if (a1 != 1)
    {
      v3 = 0x726564726FLL;
    }

    if (a1)
    {
      v1 = v3;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_10034CF14(void *a1)
{
  v3 = v1;
  v5 = sub_1001E27A8(&qword_1004DB290, &qword_1003F1C10);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10 - v7;
  sub_1000035B8(a1, a1[3]);
  sub_10034E678();
  sub_100399BF8();
  LOBYTE(v11) = 0;
  sub_100399968();
  if (!v2)
  {
    LOBYTE(v11) = 1;
    sub_100399968();
    LOBYTE(v11) = 2;
    sub_100399938();
    LOBYTE(v11) = 3;
    sub_100399938();
    LOBYTE(v11) = 4;
    sub_100399918();
    LOBYTE(v11) = 5;
    sub_100399918();
    LOBYTE(v11) = 6;
    sub_100399918();
    LOBYTE(v11) = 7;
    sub_100399918();
    v11 = *(v3 + 112);
    HIBYTE(v10) = 8;
    sub_1001E27A8(&unk_1004D9A20, &qword_1003EED70);
    sub_10034E734(&qword_1004DB298, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    sub_100399948();
    LOBYTE(v11) = 9;
    sub_100399918();
    LOBYTE(v11) = 10;
    sub_100399918();
    v11 = *(v3 + 152);
    HIBYTE(v10) = 11;
    sub_100399948();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_10034D260@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_10034D40C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_10034D294(uint64_t a1)
{
  v2 = sub_10034E678();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10034D2D0(uint64_t a1)
{
  v2 = sub_10034E678();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10034D30C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_10034D7F0(a2, v10);
  if (!v2)
  {
    v5 = v10[7];
    a1[6] = v10[6];
    a1[7] = v5;
    v6 = v10[9];
    a1[8] = v10[8];
    a1[9] = v6;
    v7 = v10[3];
    a1[2] = v10[2];
    a1[3] = v7;
    v8 = v10[5];
    a1[4] = v10[4];
    a1[5] = v8;
    result = *v10;
    v9 = v10[1];
    *a1 = v10[0];
    a1[1] = v9;
  }

  return result;
}

uint64_t sub_10034D3BC(_OWORD *a1)
{
  v1 = a1[7];
  v7[6] = a1[6];
  v7[7] = v1;
  v2 = a1[9];
  v7[8] = a1[8];
  v7[9] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[5];
  v7[4] = a1[4];
  v7[5] = v4;
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  return sub_10034DE6C(v7);
}

uint64_t sub_10034D40C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x63697274656DLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1003999B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5465736F70727570 && a2 == 0xEB00000000657079 || (sub_1003999B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726564726FLL && a2 == 0xE500000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100438910 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000100438930 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1003999B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7261646E6F636573 && a2 == 0xEF656C646E614879 || (sub_1003999B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x68636E617262 && a2 == 0xE600000000000000 || (sub_1003999B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEE006E6F734A7365 || (sub_1003999B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100438950 == a2 || (sub_1003999B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65)
  {

    return 11;
  }

  else
  {
    v6 = sub_1003999B8();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

void sub_10034D7F0(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v52 = sub_1001E27A8(&qword_1004DB270, &unk_1003F1C00);
  v5 = *(v52 - 8);
  __chkstk_darwin(v52);
  v7 = &v37 - v6;
  sub_1000035B8(a1, a1[3]);
  sub_10034E678();
  sub_100399BC8();
  if (v2)
  {
    v53 = v2;
LABEL_4:
    sub_100003894(a1);

    return;
  }

  v51 = v5;
  LOBYTE(v64[0]) = 0;
  v8 = sub_1003998C8();
  LOBYTE(v64[0]) = 1;
  v9 = sub_1003998C8();
  v10 = v51;
  v11 = v9;
  LOBYTE(v64[0]) = 2;
  v12 = sub_100399898();
  v83 = v13 & 1;
  LOBYTE(v64[0]) = 3;
  v50 = sub_100399898();
  v82 = v14 & 1;
  LOBYTE(v64[0]) = 4;
  *&v49 = sub_100399878();
  *(&v49 + 1) = v15;
  LOBYTE(v64[0]) = 5;
  *&v48 = sub_100399878();
  *(&v48 + 1) = v16;
  LOBYTE(v64[0]) = 6;
  v45 = sub_100399878();
  v46 = v12;
  v47 = v17;
  LOBYTE(v64[0]) = 7;
  v18 = sub_100399878();
  v53 = 0;
  v20 = v19;
  v41 = v18;
  v42 = v11;
  v43 = v8;
  v40 = a2;
  sub_1001E27A8(&unk_1004D9A20, &qword_1003EED70);
  LOBYTE(v54) = 8;
  v21 = sub_10034E734(&qword_1004DB288, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  v22 = v53;
  v44 = v21;
  sub_1003998A8();
  v53 = v22;
  if (v22)
  {
    (*(v10 + 8))(v7, v52);
    goto LABEL_4;
  }

  v23 = v64[0];
  LOBYTE(v64[0]) = 9;
  v39 = sub_100399878();
  v53 = 0;
  v25 = v24;
  LOBYTE(v64[0]) = 10;
  v38 = sub_100399878();
  v53 = 0;
  v27 = v26;
  v84 = 11;
  sub_1003998A8();
  v53 = 0;
  (*(v51 + 8))(v7, v52);
  v51 = v81;
  *&v54 = v43;
  *(&v54 + 1) = v42;
  v28 = v47;
  *&v55 = v46;
  LODWORD(v52) = v83;
  BYTE8(v55) = v83;
  v29 = *(&v49 + 1);
  *&v56 = v50;
  LODWORD(v44) = v82;
  BYTE8(v56) = v82;
  v57 = v49;
  v58 = v48;
  *&v59 = v45;
  *(&v59 + 1) = v47;
  *&v60 = v41;
  *(&v60 + 1) = v20;
  v30 = v39;
  *&v61 = v23;
  *(&v61 + 1) = v39;
  *&v62 = v25;
  *(&v62 + 1) = v38;
  *&v63 = v27;
  *(&v63 + 1) = v81;
  sub_10034E6CC(&v54, v64);
  sub_100003894(a1);
  v64[0] = v43;
  v64[1] = v42;
  v64[2] = v46;
  v65 = v52;
  v66 = v50;
  v67 = v44;
  v68 = v49;
  v69 = v29;
  v70 = v48;
  v71 = v45;
  v72 = v28;
  v73 = v41;
  v74 = v20;
  v75 = v23;
  v76 = v30;
  v77 = v25;
  v78 = v38;
  v79 = v27;
  v80 = v51;
  sub_10034E704(v64);
  v31 = v61;
  v32 = v40;
  v40[6] = v60;
  v32[7] = v31;
  v33 = v63;
  v32[8] = v62;
  v32[9] = v33;
  v34 = v57;
  v32[2] = v56;
  v32[3] = v34;
  v35 = v59;
  v32[4] = v58;
  v32[5] = v35;
  v36 = v55;
  *v32 = v54;
  v32[1] = v36;
}