int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_autoreleasePoolPush();
  v4 = sub_100000ACC(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v10 = 136446722;
    *&v10[4] = "main";
    v11 = 2080;
    v12 = "Oct 11 2025";
    v13 = 2080;
    v14 = "01:51:13";
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}s: DeviceRecoveryBuiltinBrain-xpcservice started (built at %s %s)", v10, 0x20u);
  }

  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    v7 = [v5 startService:@"com.apple.DeviceRecoveryBuiltinBrain"];
    if (!v7)
    {
      dispatch_main();
    }

    v8 = v7;
    sub_100000BDC(v7);
  }

  else
  {
    sub_100000D30(v10);
    v8 = *v10;
  }

  objc_autoreleasePoolPop(v3);
  return -1;
}

id sub_100000ACC(uint64_t a1)
{
  if (qword_100008018 != -1)
  {
    sub_100000E24();
  }

  v2 = off_100008008;

  return v2;
}

void sub_100000B10(id a1)
{
  v1 = DRGetLoggingCategory();
  off_100008008 = os_log_create("com.apple.DeviceRecovery", v1);

  _objc_release_x1();
}

id sub_100000B54(uint64_t a1)
{
  if (qword_100008020 != -1)
  {
    sub_100000E38();
  }

  v2 = off_100008010;

  return v2;
}

void sub_100000B98(id a1)
{
  v1 = DRGetLoggingCategory();
  off_100008010 = os_log_create("com.apple.DeviceRecovery.signposts", v1);

  _objc_release_x1();
}

void sub_100000BDC(uint64_t a1)
{
  v1 = sub_100000ACC(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    sub_100000ABC();
    _os_log_error_impl(v4, v5, v6, v7, v8, 0x3Au);
  }

  v3 = sub_100000ACC(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    sub_100000ABC();
    _os_log_error_impl(v9, v10, v11, v12, v13, 0x16u);
  }
}

void sub_100000D30(NSObject **a1)
{
  v2 = sub_100000ACC(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_100000ABC();
    _os_log_error_impl(v3, v4, v5, v6, v7, 0x3Au);
  }

  *a1 = v2;
}