void sub_100000800(uint64_t a1)
{
  bzero(v11, 0x400uLL);
  pw_dir = getenv("HOME");
  if (!pw_dir)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      sub_100000A9C();
    }

    v2 = getuid();
    v3 = getpwuid(v2);
    if (!v3)
    {
      if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
      {
        sub_100000DC0();
      }

LABEL_28:
      exit(1);
    }

    pw_dir = v3->pw_dir;
  }

  v4 = realpath_DARWIN_EXTSN(pw_dir, 0);
  if (!v4)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000D48();
    }

    goto LABEL_28;
  }

  v5 = v4;
  if (!_set_user_dir_suffix() || !confstr(65537, v11, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000CD0();
    }

    goto LABEL_28;
  }

  v6 = realpath_DARWIN_EXTSN(v11, 0);
  if (!v6)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000C58();
    }

    goto LABEL_28;
  }

  v7 = v6;
  if (!confstr(65538, v11, 0x400uLL))
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000BE0();
    }

    goto LABEL_28;
  }

  v8 = realpath_DARWIN_EXTSN(v11, 0);
  if (!v8)
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000B68();
    }

    goto LABEL_28;
  }

  v9 = v8;
  v10[1] = "HOME";
  v10[2] = v5;
  v10[3] = "TMPDIR";
  v10[4] = v7;
  v10[5] = "DARWIN_CACHE_DIR";
  v10[6] = v8;
  v10[7] = 0;
  v10[0] = 0;
  if (sandbox_init_with_parameters())
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_100000AE4(v10);
    }

    goto LABEL_28;
  }

  free(v5);
  free(v7);
  free(v9);
}

void sub_100000A40(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void start()
{
  v0 = objc_autoreleasePoolPush();
  v1 = +[SDBetaEnrollmentService sharedInstance];
  [v1 start];

  dispatch_main();
}

void sub_100000AE4(uint64_t *a1)
{
  v1 = *a1;
  v2 = 136446210;
  v3 = v1;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Failed to enter sandbox: %{public}s", &v2, 0xCu);
}

void sub_100000B68()
{
  __error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v0, "failed to resolve cache directory: %{darwin.errno}d", v1, v2, v3, v4);
}

void sub_100000BE0()
{
  __error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v0, "failed to initialize cache directory: %{darwin.errno}d", v1, v2, v3, v4);
}

void sub_100000C58()
{
  __error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v0, "failed to resolve temporary directory: %{darwin.errno}d", v1, v2, v3, v4);
}

void sub_100000CD0()
{
  __error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v0, "failed to initialize temporary directory: %{darwin.errno}d", v1, v2, v3, v4);
}

void sub_100000D48()
{
  __error();
  sub_100000A5C();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v0, "failed to resolve user's home directory: %{darwin.errno}d", v1, v2, v3, v4);
}

void sub_100000DC0()
{
  LODWORD(v5) = 67109120;
  HIDWORD(v5) = getuid();
  sub_100000A40(&_mh_execute_header, &_os_log_default, v0, "failed to get passwd entry for uid %u", v1, v2, v3, v4, v5);
}