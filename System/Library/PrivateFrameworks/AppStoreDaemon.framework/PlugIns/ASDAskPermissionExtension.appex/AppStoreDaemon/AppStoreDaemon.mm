void sub_100000F10(uint64_t a1, int a2, void *a3)
{
  v4 = a3;
  if (v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v6 = 138543618;
      v7 = objc_opt_class();
      v8 = 2114;
      v9 = v4;
      v5 = v7;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Download queue request returned error: %{public}@", &v6, 0x16u);
LABEL_6:
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    v7 = objc_opt_class();
    v8 = 1024;
    LODWORD(v9) = a2;
    v5 = v7;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Download queue request complete with result: %{BOOL}d", &v6, 0x12u);
    goto LABEL_6;
  }
}

void sub_10000183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100001874(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543618;
      v12 = objc_opt_class();
      v13 = 2114;
      v14 = v6;
      v7 = v12;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Download failed. Error: %{public}@", &v11, 0x16u);
    }
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = objc_opt_class();
    v9 = v8;
    v10 = [v5 items];
    v11 = 138543618;
    v12 = v8;
    v13 = 2114;
    v14 = v10;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "[%{public}@] Download succeeded. Response items: %{public}@", &v11, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
}

uint64_t sub_1000019FC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_100001A14(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (v7)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543618;
      v10 = objc_opt_class();
      v11 = 2114;
      v12 = v7;
      v8 = v10;
      _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to lookup AMSMetricsIdentifierStore due to error: %{public}@", &v9, 0x16u);
    }
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  }

  dispatch_semaphore_signal(*(a1 + 40));
}

id sub_100001B20(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100001BD4;
  v8[3] = &unk_100004248;
  v9 = v3;
  v5 = v3;
  v6 = [v4 thenWithBlock:v8];

  return v6;
}

id sub_100001BD4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setIncludeAccountMatchStatus:1];
  v4 = [AMSMetricsIdentifierKey keyWithName:@"userId" crossDeviceSync:1];
  v11 = v4;
  v5 = [NSArray arrayWithObjects:&v11 count:1];
  v6 = [v3 generateEventFieldsForKeys:v5];

  v7 = [v6 mutableCopy];
  v8 = *(a1 + 32);
  if (v8)
  {
    [v7 setObject:v8 forKeyedSubscript:@"clientId"];
  }

  v9 = [AMSPromise promiseWithResult:v7];

  return v9;
}