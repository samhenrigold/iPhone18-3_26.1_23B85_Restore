void sub_100001604(uint64_t a1)
{
  v2 = sub_100001F6C(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) directoryURL];
    v4 = [v3 path];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Monitored directory changed: %@", &v6, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained directoryChanged];
}

void sub_1000016E8(uint64_t a1)
{
  v2 = sub_100001F6C(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) directoryURL];
    v4 = [v3 path];
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Monitored directory went away: %@", &v10, 0xCu);
  }

  v6 = sub_100001F6C(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) directoryURL];
    v8 = [v7 path];
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Monitored directory went away: %@", &v10, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained cancel];
}

id sub_100001F6C(uint64_t a1)
{
  if (qword_100015628 != -1)
  {
    sub_100004538();
  }

  v2 = qword_100015630;

  return v2;
}

void sub_100001FB0(id a1)
{
  qword_100015630 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_100001FF4(uint64_t a1)
{
  if (qword_100015638 != -1)
  {
    sub_10000454C();
  }

  v2 = qword_100015640;

  return v2;
}

void sub_100002038(id a1)
{
  qword_100015640 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_10000207C(uint64_t a1)
{
  if (qword_100015648 != -1)
  {
    sub_100004560();
  }

  v2 = qword_100015650;

  return v2;
}

void sub_1000020C0(id a1)
{
  qword_100015650 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_100002104(uint64_t a1)
{
  if (qword_100015658 != -1)
  {
    sub_100004574();
  }

  v2 = qword_100015660;

  return v2;
}

void sub_100002148(id a1)
{
  qword_100015660 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_10000218C(uint64_t a1)
{
  if (qword_100015668 != -1)
  {
    sub_100004588();
  }

  v2 = qword_100015670;

  return v2;
}

void sub_1000021D0(id a1)
{
  qword_100015670 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_100002214(uint64_t a1)
{
  if (qword_100015678 != -1)
  {
    sub_10000459C();
  }

  v2 = qword_100015680;

  return v2;
}

void sub_100002258(id a1)
{
  qword_100015680 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_10000229C(uint64_t a1)
{
  if (qword_100015688 != -1)
  {
    sub_1000045B0();
  }

  v2 = qword_100015690;

  return v2;
}

void sub_1000022E0(id a1)
{
  qword_100015690 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_100002324(uint64_t a1)
{
  if (qword_100015698 != -1)
  {
    sub_1000045C4();
  }

  v2 = qword_1000156A0;

  return v2;
}

void sub_100002368(id a1)
{
  qword_1000156A0 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_1000023AC(uint64_t a1)
{
  if (qword_1000156A8 != -1)
  {
    sub_1000045D8();
  }

  v2 = qword_1000156B0;

  return v2;
}

void sub_1000023F0(id a1)
{
  qword_1000156B0 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_100002434(uint64_t a1)
{
  if (qword_1000156B8 != -1)
  {
    sub_1000045EC();
  }

  v2 = qword_1000156C0;

  return v2;
}

void sub_100002478(id a1)
{
  qword_1000156C0 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_1000024BC(uint64_t a1)
{
  if (qword_1000156C8 != -1)
  {
    sub_100004600();
  }

  v2 = qword_1000156D0;

  return v2;
}

void sub_100002500(id a1)
{
  qword_1000156D0 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_100002544(uint64_t a1)
{
  if (qword_1000156D8 != -1)
  {
    sub_100004614();
  }

  v2 = qword_1000156E0;

  return v2;
}

void sub_100002588(id a1)
{
  qword_1000156E0 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_1000025CC(uint64_t a1)
{
  if (qword_1000156E8 != -1)
  {
    sub_100004628();
  }

  v2 = qword_1000156F0;

  return v2;
}

void sub_100002610(id a1)
{
  qword_1000156F0 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_100002654(uint64_t a1)
{
  if (qword_1000156F8 != -1)
  {
    sub_10000463C();
  }

  v2 = qword_100015700;

  return v2;
}

void sub_100002698(id a1)
{
  qword_100015700 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_1000026DC(uint64_t a1)
{
  if (qword_100015708 != -1)
  {
    sub_100004650();
  }

  v2 = qword_100015710;

  return v2;
}

void sub_100002720(id a1)
{
  qword_100015710 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_100002764(uint64_t a1)
{
  if (qword_100015718 != -1)
  {
    sub_100004664();
  }

  v2 = qword_100015720;

  return v2;
}

void sub_1000027A8(id a1)
{
  qword_100015720 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_1000027EC(uint64_t a1)
{
  if (qword_100015728 != -1)
  {
    sub_100004678();
  }

  v2 = qword_100015730;

  return v2;
}

void sub_100002830(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_100015730 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_1000028E0(id a1)
{
  qword_100015738 = objc_alloc_init(FMDAutomationHelperFactory);

  _objc_release_x1();
}

uint64_t start(uint64_t a1)
{
  v1 = sub_100001F6C(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "FindMyDeviceEmergencyCallInfoPublisherXPCService started", v6, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(FindMyDeviceEmergencyCallInfoPublisherXPCService);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  objc_autoreleasePoolPop(v2);
  return 0;
}

void sub_100002EC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    (*(*(a1 + 40) + 16))();
  }

  else if (v5)
  {
    v7 = sub_100001F6C(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [v5 URL];
      *buf = 138412290;
      v26 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "FindMyDeviceEmergencyCallInfoPublisherXPCService URL: %@", buf, 0xCu);
    }

    v10 = sub_100001F6C(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v5 allHTTPHeaderFields];
      *buf = 138412290;
      v26 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "FindMyDeviceEmergencyCallInfoPublisherXPCService Sending headers: %@", buf, 0xCu);
    }

    v13 = sub_100001F6C(v12);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v5 HTTPBody];
      v15 = [NSJSONSerialization JSONObjectWithData:v14 options:0 error:0];
      *buf = 138412290;
      v26 = v15;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "FindMyDeviceEmergencyCallInfoPublisherXPCService Sending with body dict: %@", buf, 0xCu);
    }

    v16 = [*(a1 + 32) _session];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_100003148;
    v22 = &unk_10000D060;
    v17 = *(a1 + 40);
    v23 = *(a1 + 32);
    v24 = v17;
    v18 = [v16 dataTaskWithRequest:v5 completionHandler:&v19];
    [v18 resume];
  }
}

void sub_100003148(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = a3;
  v8 = v6;
  if (a4)
  {
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v7 = [*(a1 + 32) _processServerStatusCode:{objc_msgSend(v6, "statusCode")}];
    (*(*(a1 + 40) + 16))();
  }
}

void sub_1000039F4(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = [NSMutableURLRequest alloc];
  v7 = [*(a1 + 32) _requestURLWithServerHostStr:*(a1 + 40)];
  v8 = [v6 initWithURL:v7];

  [v8 setHTTPMethod:@"POST"];
  [v8 setHTTPBody:*(a1 + 48)];
  v9 = [*(a1 + 32) _requestHeaders];
  v10 = [v9 mutableCopy];

  if (v5)
  {
    v11 = [v5 domain];
    v12 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@|%ld", v11, [v5 code]);
    v13 = @"X-Apple-Sign5-Error";
  }

  else
  {
    v14 = [v17 signature];
    v15 = [v14 base64EncodedStringWithOptions:0];
    [v10 fm_safelyMapKey:@"X-Mme-Sign5" toObject:v15];

    v11 = [v17 attestation];
    v12 = [v11 base64EncodedStringWithOptions:0];
    v13 = @"X-Mme-Sign6";
  }

  [v10 fm_safelyMapKey:v13 toObject:v12];

  v16 = [v10 copy];
  [v8 setAllHTTPHeaderFields:v16];

  (*(*(a1 + 56) + 16))();
}

void sub_100004430(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "Failed to open %@", buf, 0xCu);
}

void sub_100004488(void *a1, uint64_t a2, NSObject *a3)
{
  v5 = [a1 directoryURL];
  v6 = 138412546;
  v7 = v5;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "Error while trying to read the contents of directory %@: %@", &v6, 0x16u);
}

void sub_1000046A0(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not find class %@ in the automation bundle", &v2, 0xCu);
}