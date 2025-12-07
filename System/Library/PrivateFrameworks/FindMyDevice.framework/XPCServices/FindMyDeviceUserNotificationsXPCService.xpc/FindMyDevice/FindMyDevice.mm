void sub_1000015E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, ...)
{
  va_start(va, a26);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10000161C(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001634(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = sub_1000020EC(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v26 = v5;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "geocoding _placemarks = %@, error = %@", buf, 0x16u);
  }

  if (!v6)
  {
    v18 = 0;
    v19 = a1;
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v20 + 1) + 8 * v12);
          v14 = sub_1000020EC(v9);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v13;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "geocoding _placemark = %@", buf, 0xCu);
          }

          v12 = v12 + 1;
        }

        while (v10 != v12);
        v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v10 = v9;
      }

      while (v9);
    }

    v6 = 0;
    a1 = v19;
  }

  v15 = [v5 firstObject];
  v16 = *(*(a1 + 40) + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;

  dispatch_group_leave(*(a1 + 32));
}

void sub_10000183C(uint64_t a1)
{
  v2 = +[NSMutableDictionary dictionary];
  v3 = [*(a1 + 32) deviceId];

  if (v3)
  {
    v4 = [*(a1 + 32) deviceId];
    [v2 setObject:v4 forKeyedSubscript:@"deviceId"];
  }

  v5 = [*(a1 + 32) serialNumber];

  if (v5)
  {
    v6 = [*(a1 + 32) serialNumber];
    [v2 setObject:v6 forKeyedSubscript:@"serialNumber"];
  }

  v7 = objc_alloc_init(UNMutableNotificationContent);
  v8 = [*(a1 + 32) title];
  [v7 setTitle:v8];

  v9 = [*(a1 + 32) body];
  [v7 setBody:v9];

  v10 = [*(a1 + 32) categoryIdentifier];
  [v7 setCategoryIdentifier:v10];

  [v7 setUserInfo:v2];
  v11 = +[UNNotificationSound defaultSound];
  [v7 setSound:v11];

  v12 = sub_1000020EC([v7 setInterruptionLevel:{objc_msgSend(*(a1 + 32), "interruptionLevel")}]);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [*(a1 + 32) categoryIdentifier];
    *buf = 138412546;
    v25 = v13;
    v26 = 2048;
    v27 = [v7 interruptionLevel];
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "category id = %@ %lu", buf, 0x16u);
  }

  v14 = [*(a1 + 32) identifier];
  if (!v14)
  {
    v15 = +[NSUUID UUID];
    v14 = [v15 UUIDString];
  }

  v16 = [UNNotificationRequest requestWithIdentifier:v14 content:v7 trigger:0];
  v17 = [UNUserNotificationCenter alloc];
  v18 = [v17 initWithBundleIdentifier:kFMIPAppBundleIdentifier];
  v19 = sub_1000020EC(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v16;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "UNNotificationRequest = %@", buf, 0xCu);
  }

  v21 = sub_1000020EC(v20);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "UNUserNotificationCenter = %@", buf, 0xCu);
  }

  v22[0] = _NSConcreteStackBlock;
  v22[1] = 3221225472;
  v22[2] = sub_100001BF8;
  v22[3] = &unk_100008C48;
  v23 = *(a1 + 40);
  [v18 addNotificationRequest:v16 withCompletionHandler:v22];
}

void sub_100001BF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = sub_1000020EC(v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unable to present user notification %@", &v7, 0xCu);
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v4);
  }
}

void sub_100001F48(uint64_t a1)
{
  v2 = [UNUserNotificationCenter alloc];
  v3 = [v2 initWithBundleIdentifier:kFMIPAppBundleIdentifier];
  v7 = *(a1 + 32);
  v4 = [NSArray arrayWithObjects:&v7 count:1];
  [v3 removeDeliveredNotificationsWithIdentifiers:v4];

  v6 = *(a1 + 32);
  v5 = [NSArray arrayWithObjects:&v6 count:1];
  [v3 removePendingNotificationRequestsWithIdentifiers:v5];
}

uint64_t start(uint64_t a1)
{
  v1 = sub_1000020EC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "FindMyDeviceUserNotificationsXPCService started", v6, 2u);
  }

  v2 = objc_autoreleasePoolPush();
  v3 = objc_alloc_init(FindMyDeviceUserNotificationsXPCServer);
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  objc_autoreleasePoolPop(v2);
  return 0;
}

id sub_1000020EC(uint64_t a1)
{
  if (qword_10000CBA0 != -1)
  {
    sub_100003220();
  }

  v2 = qword_10000CBA8;

  return v2;
}

void sub_100002130(id a1)
{
  qword_10000CBA8 = os_log_create("com.apple.icloud.findmydeviced", "_");

  _objc_release_x1();
}

id sub_100002174(uint64_t a1)
{
  if (qword_10000CBB0 != -1)
  {
    sub_100003234();
  }

  v2 = qword_10000CBB8;

  return v2;
}

void sub_1000021B8(id a1)
{
  qword_10000CBB8 = os_log_create("com.apple.icloud.findmydeviced", "locations");

  _objc_release_x1();
}

id sub_1000021FC(uint64_t a1)
{
  if (qword_10000CBC0 != -1)
  {
    sub_100003248();
  }

  v2 = qword_10000CBC8;

  return v2;
}

void sub_100002240(id a1)
{
  qword_10000CBC8 = os_log_create("com.apple.icloud.findmydeviced", "accessory");

  _objc_release_x1();
}

id sub_100002284(uint64_t a1)
{
  if (qword_10000CBD0 != -1)
  {
    sub_10000325C();
  }

  v2 = qword_10000CBD8;

  return v2;
}

void sub_1000022C8(id a1)
{
  qword_10000CBD8 = os_log_create("com.apple.icloud.findmydeviced", "traffic");

  _objc_release_x1();
}

id sub_10000230C(uint64_t a1)
{
  if (qword_10000CBE0 != -1)
  {
    sub_100003270();
  }

  v2 = qword_10000CBE8;

  return v2;
}

void sub_100002350(id a1)
{
  qword_10000CBE8 = os_log_create("com.apple.icloud.findmydeviced", "encoder");

  _objc_release_x1();
}

id sub_100002394(uint64_t a1)
{
  if (qword_10000CBF0 != -1)
  {
    sub_100003284();
  }

  v2 = qword_10000CBF8;

  return v2;
}

void sub_1000023D8(id a1)
{
  qword_10000CBF8 = os_log_create("com.apple.icloud.findmydeviced", "bluetoothsession");

  _objc_release_x1();
}

id sub_10000241C(uint64_t a1)
{
  if (qword_10000CC00 != -1)
  {
    sub_100003298();
  }

  v2 = qword_10000CC08;

  return v2;
}

void sub_100002460(id a1)
{
  qword_10000CC08 = os_log_create("com.apple.icloud.findmydeviced", "extensions");

  _objc_release_x1();
}

id sub_1000024A4(uint64_t a1)
{
  if (qword_10000CC10 != -1)
  {
    sub_1000032AC();
  }

  v2 = qword_10000CC18;

  return v2;
}

void sub_1000024E8(id a1)
{
  qword_10000CC18 = os_log_create("com.apple.icloud.findmydeviced", "extensions_playSound");

  _objc_release_x1();
}

id sub_10000252C(uint64_t a1)
{
  if (qword_10000CC20 != -1)
  {
    sub_1000032C0();
  }

  v2 = qword_10000CC28;

  return v2;
}

void sub_100002570(id a1)
{
  qword_10000CC28 = os_log_create("com.apple.icloud.findmydeviced", "secureLocations");

  _objc_release_x1();
}

id sub_1000025B4(uint64_t a1)
{
  if (qword_10000CC30 != -1)
  {
    sub_1000032D4();
  }

  v2 = qword_10000CC38;

  return v2;
}

void sub_1000025F8(id a1)
{
  qword_10000CC38 = os_log_create("com.apple.icloud.findmydeviced", "healUCRT");

  _objc_release_x1();
}

id sub_10000263C(uint64_t a1)
{
  if (qword_10000CC40 != -1)
  {
    sub_1000032E8();
  }

  v2 = qword_10000CC48;

  return v2;
}

void sub_100002680(id a1)
{
  qword_10000CC48 = os_log_create("com.apple.icloud.findmydeviced", "DeviceTnL");

  _objc_release_x1();
}

id sub_1000026C4(uint64_t a1)
{
  if (qword_10000CC50 != -1)
  {
    sub_1000032FC();
  }

  v2 = qword_10000CC58;

  return v2;
}

void sub_100002708(id a1)
{
  qword_10000CC58 = os_log_create("com.apple.icloud.findmydeviced", "repairDevice");

  _objc_release_x1();
}

id sub_10000274C(uint64_t a1)
{
  if (qword_10000CC60 != -1)
  {
    sub_100003310();
  }

  v2 = qword_10000CC68;

  return v2;
}

void sub_100002790(id a1)
{
  qword_10000CC68 = os_log_create("com.apple.icloud.findmydeviced", "ALFailureAnalytics");

  _objc_release_x1();
}

id sub_1000027D4(uint64_t a1)
{
  if (qword_10000CC70 != -1)
  {
    sub_100003324();
  }

  v2 = qword_10000CC78;

  return v2;
}

void sub_100002818(id a1)
{
  qword_10000CC78 = os_log_create("com.apple.icloud.findmydeviced", "disableLocationDisplay");

  _objc_release_x1();
}

id sub_10000285C(uint64_t a1)
{
  if (qword_10000CC80 != -1)
  {
    sub_100003338();
  }

  v2 = qword_10000CC88;

  return v2;
}

void sub_1000028A0(id a1)
{
  qword_10000CC88 = os_log_create("com.apple.icloud.findmydeviced", "accountRatchet");

  _objc_release_x1();
}

id sub_1000028E4(uint64_t a1)
{
  if (qword_10000CC90 != -1)
  {
    sub_10000334C();
  }

  v2 = qword_10000CC98;

  return v2;
}

void sub_100002928(id a1)
{
  qword_10000CC98 = os_log_create("com.apple.icloud.findmydeviced", "ownerAuthentication");

  _objc_release_x1();
}

id sub_10000296C(uint64_t a1)
{
  if (qword_10000CCA0 != -1)
  {
    sub_100003360();
  }

  v2 = qword_10000CCA8;

  return v2;
}

void sub_1000029B0(id a1)
{
  if ([FMPreferencesUtil BOOLForKey:@"ShowAutomationLogs" inDomain:@"com.apple.icloud.findmydeviced.notbackedup"])
  {
    qword_10000CCA8 = os_log_create("com.apple.icloud.findmydeviced", "automation");

    _objc_release_x1();
  }
}

void sub_1000031A8(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}