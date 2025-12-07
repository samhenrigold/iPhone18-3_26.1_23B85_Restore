id sub_100000998(uint64_t a1)
{
  if (qword_100008028 != -1)
  {
    sub_100000DA0();
  }

  v2 = qword_100008030;

  return v2;
}

void sub_1000009DC(id a1)
{
  qword_100008030 = os_log_create("com.apple.symptomsd-diag", "daemon");

  _objc_release_x1();
}

uint64_t start()
{
  v0 = _set_user_dir_suffix();
  if ((v0 & 1) == 0)
  {
    v6 = sub_100000998(v0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7.version) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to fixup temporary directory to conform to sandbox", &v7, 2u);
    }

    exit(1);
  }

  v1 = NSTemporaryDirectory();
  v2 = sub_100000998(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v7.version) = 138412290;
    *(&v7.version + 4) = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Updated temporary directory to: %@", &v7, 0xCu);
  }

  dispatch_async(&_dispatch_main_q, &stru_100004168);
  v3 = qword_100008040;
  if (!qword_100008040)
  {
    memset(&v7, 0, 72);
    v7.perform = nullsub_1;
    v3 = CFRunLoopSourceCreate(kCFAllocatorDefault, 0, &v7);
    qword_100008040 = v3;
    if (!v3)
    {
      dispatch_main();
    }
  }

  Main = CFRunLoopGetMain();
  CFRunLoopAddSource(Main, v3, kCFRunLoopCommonModes);
  CFRunLoopRun();
  return 0;
}

void sub_100000BB0(id a1)
{
  v1 = objc_autoreleasePoolPush();
  v2 = sub_100000998(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Initializing signal handlers.", v8, 2u);
  }

  signal(15, 1);
  v3 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, &_dispatch_main_q);
  v4 = qword_100008038;
  qword_100008038 = v3;

  if (qword_100008038)
  {
    dispatch_source_set_event_handler(qword_100008038, &stru_100004188);
    dispatch_resume(qword_100008038);
  }

  atexit_b(&stru_1000041A8);
  v5 = +[ABCAdministrator sharedInstance];
  [v5 startup];

  v6 = +[DRSService sharedInstance];
  [v6 activateService];

  v7 = +[DRSTaskingService sharedInstance];
  [v7 activateService];

  objc_autoreleasePoolPop(v1);
}

void sub_100000CE0(id a1)
{
  v1 = sub_100000998(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "symptomsd-diag is terminating", v5, 2u);
  }

  v2 = +[ABCAdministrator sharedInstance];
  [v2 shutdown];

  v3 = +[DRSService sharedInstance];
  [v3 deactivateService];

  v4 = +[DRSTaskingService sharedInstance];
  [v4 deactivateService];
}