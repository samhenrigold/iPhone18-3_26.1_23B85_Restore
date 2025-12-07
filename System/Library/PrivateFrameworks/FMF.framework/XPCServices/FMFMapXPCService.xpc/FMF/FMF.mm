void sub_10000249C(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [v8 image];

  if (v6)
  {
    v7 = [v8 image];
    v6 = UIImagePNGRepresentation(v7);
  }

  (*(*(a1 + 32) + 16))();
}

void sub_1000026F4(uint64_t a1, void *a2, void *a3)
{
  v11 = a2;
  v5 = a3;
  v6 = [v11 image];

  if (v6)
  {
    v7 = [UIColor colorWithWhite:1.0 alpha:0.300000012];
    v8 = [v11 image];
    v9 = [v8 applyBlurWithRadius:v7 tintColor:0 saturationDeltaFactor:30.0 maskImage:1.79999995];

    if (v9)
    {
      v10 = UIImagePNGRepresentation(v9);
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

void sub_100002A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_100002AAC(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  [WeakRetained setupIdleTimer];
  v3 = dispatch_semaphore_create(0);
  v4 = sub_100003C04(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [a1[4] location];
    [v5 coordinate];
    v7 = v6;
    v8 = [a1[4] location];
    [v8 coordinate];
    v10 = v9;
    v11 = [a1[4] priority];
    *buf = 134284033;
    v34 = v7;
    v35 = 2049;
    v36 = v10;
    v37 = 2048;
    v38 = v11;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Processing request for lat: %{private}f long: %{private}f with priority %lu", buf, 0x20u);
  }

  v12 = a1[4];
  v25 = _NSConcreteStackBlock;
  v26 = 3221225472;
  v27 = sub_100002D94;
  v28 = &unk_1000083A0;
  v13 = WeakRetained;
  v29 = v13;
  v30 = a1[4];
  v32 = a1[5];
  v14 = v3;
  v31 = v14;
  [v13 shiftedLocationForRequest:v12 withCompletionHandler:&v25];
  v15 = dispatch_semaphore_wait(v14, [v13 mapRenderingTimeout]);
  if (v15)
  {
    v16 = sub_100003C04(v15);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [v13 mapRenderingTimeout];
      v18 = [a1[4] location];
      [v18 coordinate];
      v20 = v19;
      v21 = [a1[4] location];
      [v21 coordinate];
      *buf = 134218497;
      v34 = v17;
      v35 = 2049;
      v36 = v20;
      v37 = 2049;
      v38 = v22;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "mapImageForRequest timeout after %llu seconds for lat: %{private}f long: %{private}f", buf, 0x20u);
    }

    v23 = a1[5];
    v24 = [[NSError alloc] initWithDomain:@"FMFMapXPCService" code:408 userInfo:0];
    v23[2](v23, 0, v24);
  }
}

void sub_100002D94(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = sub_100003C04(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "mapImageForRequest: Location shifted requesting snapshot", buf, 2u);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  [v3 coordinate];
  v8 = v7;
  v10 = v9;

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100002EB4;
  v11[3] = &unk_100008378;
  v13 = *(a1 + 56);
  v12 = *(a1 + 48);
  [v5 mapSnapshotForRequest:v6 shiftedCoordinate:v11 andCompletionHandler:{v8, v10}];
}

void sub_100002EB4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 image];

  if (v7)
  {
    v9 = sub_100003C04(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mapImageForRequest data received for map snapshot", buf, 2u);
    }

    v10 = [v5 image];
    v7 = UIImagePNGRepresentation(v10);
  }

  v11 = sub_100003C04(v8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "mapImageForRequest returning map snapshot", v12, 2u);
  }

  (*(*(a1 + 40) + 16))();
  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000037FC(id a1)
{
  if (!qword_10000CD08)
  {
    qword_10000CD08 = objc_alloc_init(FMLocationShifter);

    _objc_release_x1();
  }
}

void sub_100003990(id a1)
{
  v1 = sub_100003C04(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = 134217984;
    v3 = 0x4072C00000000000;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "FMFMapXPCService was idle for %fs, exiting now if clean", &v2, 0xCu);
  }

  xpc_transaction_exit_clean();
}

void start()
{
  NSLog(@"FMFUIXPCService started");
  v0 = objc_alloc_init(FMFMapXPCServer);
  v1 = +[NSXPCListener serviceListener];
  [v1 setDelegate:v0];
  [v1 resume];
  exit(1);
}

id sub_100003B7C(uint64_t a1)
{
  if (qword_10000CD18 != -1)
  {
    sub_100003CA0();
  }

  v2 = qword_10000CD20;

  return v2;
}

void sub_100003BC0(id a1)
{
  qword_10000CD20 = os_log_create("com.apple.icloud.fmfd", "_");

  _objc_release_x1();
}

id sub_100003C04(uint64_t a1)
{
  if (qword_10000CD28 != -1)
  {
    sub_100003CB4();
  }

  v2 = qword_10000CD30;

  return v2;
}

void sub_100003C48(id a1)
{
  qword_10000CD30 = os_log_create("com.apple.icloud.fmfd", "FMFMapXPC");

  _objc_release_x1();
}