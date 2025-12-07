void start()
{
  _set_user_dir_suffix();
  v0 = os_variant_allows_internal_security_policies();
  if (v0)
  {
    v9 = +[NSFileManager defaultManager];
    v10 = [v9 fileExistsAtPath:@"/tmp/gamecontrollerd_prevent_startup"];

    if (v10)
    {
      do
      {
        v11 = sub_1000013D8(v0, v1);
        if (v11)
        {
          v14 = sub_1000015D0(v11);
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "Deferring startup...", buf, 2u);
          }
        }

        sleep(1u);
        v12 = +[NSFileManager defaultManager];
        v13 = [v12 fileExistsAtPath:@"/tmp/gamecontrollerd_prevent_startup"];
      }

      while ((v13 & 1) != 0);
    }
  }

  v2 = sub_1000013D8(v0, v1);
  if (v2)
  {
    v15 = sub_1000015D0(v2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Running...", v16, 2u);
    }
  }

  v3 = objc_autoreleasePoolPush();
  +[GameControllerDaemon run];
  [objc_msgSend([IOGCFastPathProxyServer alloc] initWithServerName:{@"com.apple.GameController.gamecontrollerd", "activate"}];
  signal(15, 1);
  v4 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v5 = qword_10000D320;
  qword_10000D320 = v4;

  dispatch_source_set_event_handler(qword_10000D320, &stru_100008408);
  dispatch_resume(qword_10000D320);
  while (1)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = +[NSRunLoop currentRunLoop];
    v8 = [NSDate dateWithTimeIntervalSinceNow:5.0];
    [v7 runUntilDate:v8];

    objc_autoreleasePoolPop(v6);
  }
}

id hexStringFromByteArray(uint64_t a1, unsigned int a2)
{
  v4 = [NSMutableString stringWithCapacity:(2 * a2)];
  if (a2 >= 1)
  {
    v5 = a2 - 1;
    do
    {
      if (v5)
      {
        v6 = @":";
      }

      else
      {
        v6 = &stru_1000084A8;
      }

      v7 = [NSString stringWithFormat:@"%02x%@", *(a1 + v5), v6];
      [v4 appendString:v7];

      v8 = v5-- + 1;
    }

    while (v8 > 1);
  }

  v9 = [NSString stringWithString:v4];
  v10 = [v9 uppercaseString];

  return v10;
}

uint64_t isPartnerSupportEnabled(uint64_t a1, uint64_t a2)
{
  if (qword_10000D280 != -1)
  {
    sub_100002AF0();
  }

  return byte_10000D288;
}

void sub_1000012F8(id a1)
{
  v1 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.GameController"];
  v2 = [v1 BOOLForKey:@"GCPartnersEnable"];
  byte_10000D288 = v2;
  v3 = sub_100001698(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4[0] = 67109120;
    v4[1] = byte_10000D288;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Partners mode enabled? %d", v4, 8u);
  }
}

uint64_t sub_1000013D8(uint64_t a1, uint64_t a2)
{
  if (qword_10000D298 != -1)
  {
    sub_100002B04();
  }

  return byte_10000D290;
}

id sub_100001438(uint64_t a1)
{
  if (qword_10000D2A8 != -1)
  {
    sub_100002B18();
  }

  v2 = qword_10000D2A0;

  return v2;
}

void sub_10000147C(id a1)
{
  qword_10000D2A0 = os_log_create("com.apple.GameController", "default");

  _objc_release_x1();
}

id sub_1000014C0(uint64_t a1)
{
  if (qword_10000D2B8 != -1)
  {
    sub_100002B2C();
  }

  v2 = qword_10000D2B0;

  return v2;
}

void sub_100001504(id a1)
{
  qword_10000D2B0 = os_log_create("com.apple.GameController", "monitor");

  _objc_release_x1();
}

id sub_100001548(uint64_t a1)
{
  if (qword_10000D2C8 != -1)
  {
    sub_100002B40();
  }

  v2 = qword_10000D2C0;

  return v2;
}

void sub_10000158C(id a1)
{
  qword_10000D2C0 = os_log_create("com.apple.GameController", "analytics");

  _objc_release_x1();
}

id sub_1000015D0(uint64_t a1)
{
  if (qword_10000D2D8 != -1)
  {
    sub_100002B54();
  }

  v2 = qword_10000D2D0;

  return v2;
}

void sub_100001614(id a1)
{
  qword_10000D2D0 = os_log_create("com.apple.GameController.Daemon", "default");

  _objc_release_x1();
}

uint64_t sub_100001658(char *category)
{
  qword_10000D2E0 = os_log_create("com.apple.GameController.HID", category);

  return _objc_release_x1();
}

id sub_100001698(uint64_t a1)
{
  if (qword_10000D2E8 != -1)
  {
    sub_100002B68();
  }

  v2 = qword_10000D2E0;

  return v2;
}

void sub_1000016DC(id a1)
{
  if (!qword_10000D2E0)
  {
    objc_storeStrong(&qword_10000D2E0, &_os_log_default);
  }
}

id sub_100001700(uint64_t a1)
{
  if (qword_10000D2F8 != -1)
  {
    sub_100002B7C();
  }

  v2 = qword_10000D2F0;

  return v2;
}

void sub_100001744(id a1)
{
  qword_10000D2F0 = os_log_create("com.apple.GameController.Settings", "default");

  _objc_release_x1();
}

id sub_100001788(uint64_t a1)
{
  if (qword_10000D308 != -1)
  {
    sub_100002B90();
  }

  v2 = qword_10000D300;

  return v2;
}

void sub_1000017CC(id a1)
{
  qword_10000D300 = os_log_create("com.apple.GameController.Haptics", "default");

  _objc_release_x1();
}

id sub_100001810(uint64_t a1)
{
  if (qword_10000D318 != -1)
  {
    sub_100002BA4();
  }

  v2 = qword_10000D310;

  return v2;
}

void sub_100001854(id a1)
{
  qword_10000D310 = os_log_create("com.apple.runtime-issues", "GameController");

  _objc_release_x1();
}

void sub_10000196C(id a1)
{
  qword_10000D328 = [[GameControllerDaemon alloc] _init];

  _objc_release_x1();
}

void sub_100001C78(id a1, OS_xpc_object *a2)
{
  v2 = a2;
  if (sub_1000013D8(v2, v3))
  {
    sub_100002BCC(v2);
  }
}

void sub_100002BCC(uint64_t a1)
{
  v2 = sub_100001438(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v3 = 138412290;
    v4 = a1;
    _os_log_debug_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "XPC Event Stream 'com.apple.iokit.match.gamecontroller' event: %@", &v3, 0xCu);
  }
}

void sub_100002C74(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    sub_100002AC8();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100002D0C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    sub_100002AC8();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100002DB4(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    sub_100002AC8();
    _os_log_impl(v2, v3, v4, v5, v6, 0xCu);
  }
}

void sub_100002E4C(void *a1)
{
  v2 = sub_1000015D0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1 serviceName];
    sub_100002AD8();
    sub_100002AC8();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_100002F00(void *a1)
{
  v2 = sub_1000015D0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1 serviceName];
    sub_100002AD8();
    sub_100002AC8();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}

void sub_100002FB4(void *a1)
{
  v2 = sub_1000015D0(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [a1 serviceName];
    sub_100002AD8();
    sub_100002AC8();
    _os_log_impl(v4, v5, v6, v7, v8, 0x16u);
  }
}