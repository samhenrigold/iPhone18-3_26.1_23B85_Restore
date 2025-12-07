id sub_100000D18(uint64_t a1)
{
  if (qword_100008600 != -1)
  {
    sub_1000012D4();
  }

  v2 = qword_1000085F8;

  return v2;
}

void sub_100000D5C(id a1)
{
  qword_1000085F8 = os_log_create("com.apple.storagedatad", "storagedatad");

  _objc_release_x1();
}

void sub_1000010CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id sub_1000010F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));

  if (WeakRetained)
  {
    v4 = sub_100000D18(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = objc_loadWeakRetained((a1 + 40));
      v10 = 138412290;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Connection from remote invalidated: %@", &v10, 0xCu);
    }

    v6 = *(*(a1 + 32) + 8);
    v7 = objc_loadWeakRetained((a1 + 40));
    [v6 removeObject:v7];
  }

  result = [*(*(a1 + 32) + 8) count];
  if (!result)
  {
    v9 = sub_100000D18(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Last connection invalidated ; exiting", &v10, 2u);
    }

    exit(0);
  }

  return result;
}

uint64_t start()
{
  v0 = objc_opt_new();
  v1 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.storagedatad"];
  [v1 setDelegate:v0];
  [v1 resume];
  v2 = +[NSRunLoop currentRunLoop];
  [v2 run];

  return 0;
}

void sub_1000012E8(void *a1, NSObject *a2)
{
  v3[0] = 67109120;
  v3[1] = [a1 processIdentifier];
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Client %d is missing entitlements required to use this service", v3, 8u);
}