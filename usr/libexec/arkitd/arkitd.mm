uint64_t start()
{
  v0 = objc_opt_new();
  v35[0] = 0;
  v35[1] = v35;
  v35[2] = 0x3032000000;
  v35[3] = sub_100000F40;
  v35[4] = sub_100000F50;
  v36 = 0;
  v1 = objc_autoreleasePoolPush();
  v2 = objc_opt_new();
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];
  v5 = [NSString stringWithFormat:@"%@:init", v4];

  v6 = v5;
  [v5 UTF8String];
  v7 = os_transaction_create();
  v8 = sub_100000F58(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Spawned", buf, 2u);
  }

  if ([v0 supportsWatchdog])
  {
    v9 = objc_opt_new();
  }

  else
  {
    v9 = 0;
  }

  v10 = &_dispatch_main_q;
  [v9 addQueue:&_dispatch_main_q hangPolicy:1];

  v11 = ARCreateFixedPriorityDispatchQueue();
  [v9 addQueue:v11 hangPolicy:0];
  *buf = _NSConcreteStackBlock;
  v28 = 3221225472;
  v29 = sub_100000F9C;
  v30 = &unk_100004260;
  v12 = v9;
  v31 = v12;
  v13 = v0;
  v32 = v13;
  v34 = v35;
  v14 = v2;
  v33 = v14;
  dispatch_async_and_wait(v11, buf);
  v16 = sub_100000F58(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    description = os_transaction_get_description();
    *v37 = 136446210;
    v38 = description;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "Releasing %{public}s transaction", v37, 0xCu);
  }

  objc_autoreleasePoolPop(v1);
  v18 = +[NSRunLoop mainRunLoop];
  [v18 run];

  if (qword_100008238 != -1)
  {
    sub_1000018F8();
  }

  v20 = byte_100008230;
  v21 = sub_100000F58(v19);
  v22 = v21;
  if (v20 == 1)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *v37 = 0;
      v23 = "Exiting unexpectedly";
      v24 = v22;
      v25 = OS_LOG_TYPE_ERROR;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v24, v25, v23, v37, 2u);
    }
  }

  else if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    *v37 = 0;
    v23 = "Error: Exiting unexpectedly";
    v24 = v22;
    v25 = OS_LOG_TYPE_INFO;
    goto LABEL_15;
  }

  _Block_object_dispose(v35, 8);
  return 1;
}

void sub_100000F14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100000F40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id sub_100000F58(uint64_t a1)
{
  if (qword_1000081F8 != -1)
  {
    sub_100001920();
  }

  v2 = qword_1000081F0;

  return v2;
}

void sub_100000F9C(uint64_t a1)
{
  [*(a1 + 32) updateStatus:1];
  v2 = *(a1 + 40);
  v3 = +[NSBundle mainBundle];
  v4 = [v3 bundleIdentifier];

  [v4 UTF8String];
  v5 = _set_user_dir_suffix();
  if (v5)
  {
    v6 = NSTemporaryDirectory();
    v7 = sub_100000F58(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sandbox temporary directory: %{private}@", &buf, 0xCu);
    }

    goto LABEL_17;
  }

  if (qword_100008238 != -1)
  {
    sub_100001934();
  }

  v8 = byte_100008230;
  v9 = sub_1000016C8(v5);
  v10 = v9;
  if (v8 == 1)
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    LOWORD(buf) = 0;
    v11 = "Failed to setup sandbox temporary directory!";
    v12 = v10;
    v13 = OS_LOG_TYPE_ERROR;
  }

  else
  {
    if (!os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      goto LABEL_13;
    }

    LOWORD(buf) = 0;
    v11 = "Error: Failed to setup sandbox temporary directory!";
    v12 = v10;
    v13 = OS_LOG_TYPE_INFO;
  }

  _os_log_impl(&_mh_execute_header, v12, v13, v11, &buf, 2u);
LABEL_13:

  if (qword_100008218 != -1)
  {
    sub_100001948();
  }

  if ((byte_100008210 & 1) == 0)
  {
    v14 = [NSString stringWithFormat:@"Failed to setup sandbox temporary directory!"];
    v6 = [NSString stringWithFormat:@"ARCrashCustomerVisible: %@", v14];

    v15 = v6;
    qword_1000080B0 = strdup([v6 UTF8String]);
    ARAbortWithError();
LABEL_17:
  }

  if (![v2 hasLibraryDirectoryReadWriteAccess])
  {
    goto LABEL_37;
  }

  v16 = ARLibraryDirectory();
  v17 = +[NSFileManager defaultManager];
  location = 0;
  v18 = [v17 createDirectoryAtPath:v16 withIntermediateDirectories:1 attributes:0 error:&location];
  v19 = location;

  if (v18)
  {
    v21 = sub_100000F58(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138477827;
      *(&buf + 4) = v16;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Sandbox library directory: %{private}@", &buf, 0xCu);
    }

    goto LABEL_35;
  }

  if (qword_100008238 != -1)
  {
    sub_1000018F8();
  }

  v22 = byte_100008230;
  v23 = sub_1000016C8(v20);
  v24 = v23;
  if (v22 == 1)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v19;
      v25 = "Failed to setup sandbox library directory with error: %@";
      v26 = v24;
      v27 = OS_LOG_TYPE_ERROR;
LABEL_29:
      _os_log_impl(&_mh_execute_header, v26, v27, v25, &buf, 0xCu);
    }
  }

  else if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v19;
    v25 = "Error: Failed to setup sandbox library directory with error: %@";
    v26 = v24;
    v27 = OS_LOG_TYPE_INFO;
    goto LABEL_29;
  }

  if (qword_100008218 != -1)
  {
    sub_100001948();
  }

  if (byte_100008210)
  {
    goto LABEL_36;
  }

  v28 = [NSString stringWithFormat:@"Failed to setup sandbox library directory with error: %@", v19];
  v21 = [NSString stringWithFormat:@"ARCrash: %@", v28];

  v29 = v21;
  qword_1000080B0 = strdup([v21 UTF8String]);
  if (!ARInternalOSBuild())
  {
    abort();
  }

  ARAbortWithError();
LABEL_35:

LABEL_36:
LABEL_37:

  v30 = [[ARDaemon alloc] initWithConfiguration:*(a1 + 40) spawnTime:*(a1 + 48) watchdogMonitor:*(a1 + 32)];
  v31 = *(*(a1 + 56) + 8);
  v32 = *(v31 + 40);
  *(v31 + 40) = v30;

  objc_initWeak(&location, *(*(*(a1 + 56) + 8) + 40));
  v33 = &_dispatch_main_q;
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100001560;
  v35[3] = &unk_100004238;
  objc_copyWeak(&v36, &location);
  v34 = v35;
  *&buf = _NSConcreteStackBlock;
  *(&buf + 1) = 3221225472;
  v39 = sub_100001784;
  v40 = &unk_100004330;
  v41 = &off_100004498;
  v42 = &_dispatch_main_q;
  v43 = v34;
  if (qword_100008228 != -1)
  {
    dispatch_once(&qword_100008228, &buf);
  }

  [*(*(*(a1 + 56) + 8) + 40) startup];
  objc_destroyWeak(&v36);
  objc_destroyWeak(&location);
}

void sub_10000153C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100001560(uint64_t a1, int a2)
{
  v4 = sub_100000F58(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [NSString stringWithUTF8String:sys_signame[a2]];
    v6 = [v5 uppercaseString];

    v8 = 138543618;
    v9 = v6;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Signal received: %{public}@ (%i)", &v8, 0x12u);
  }

  if (a2 != 29)
  {
    if (a2 != 15)
    {
      return;
    }

    quick_exit();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained printInfo];
}

void sub_100001684(id a1)
{
  qword_1000081F0 = os_log_create("com.apple.ARKit", "Daemon");

  _objc_release_x1();
}

id sub_1000016C8(uint64_t a1)
{
  if (qword_100008208 != -1)
  {
    sub_100001970();
  }

  v2 = qword_100008200;

  return v2;
}

void sub_10000170C(id a1)
{
  qword_100008200 = os_log_create("com.apple.ARKit", "General");

  _objc_release_x1();
}

void sub_100001784(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = qword_100008220;
  qword_100008220 = v2;

  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100001840;
  v5[3] = &unk_100004308;
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  [v4 enumerateObjectsUsingBlock:v5];
}

void sub_100001840(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 intValue];
  object = ARCreateDispatchSourceForSignalWithHandler();
  [qword_100008220 setObject:object forKeyedSubscript:v2];

  dispatch_resume(object);
  signal(v3, 1);
}