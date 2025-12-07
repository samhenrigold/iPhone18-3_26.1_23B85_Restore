uint64_t sub_100000E28(NSObject *a1, const char *a2)
{
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = &_os_log_default;
  }

  bzero(v4, 0x400uLL);
  if ((_set_user_dir_suffix() & 1) == 0)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000014AC();
    }

    return 1;
  }

  if (!confstr(65537, v4, 0x400uLL))
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_10000152C();
    }

    return 1;
  }

  return 0;
}

void sub_100000F14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

uint64_t start()
{
  v0 = objc_autoreleasePoolPush();
  FudLog();
  FudLogSetMode();
  if (sub_100000F10(0, "com.apple.auearlyboot") || (v2 = objc_alloc_init(FudEarlyBoot)) == 0)
  {
    FudLog();
    v1 = 1;
  }

  else
  {
    v3 = v2;
    v1 = [(FudEarlyBoot *)v2 doFUDEarlyBoot:0];

    FudLog();
  }

  objc_autoreleasePoolPop(v0);
  return v1;
}

void sub_1000014AC()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_100000F14(&_mh_execute_header, v0, v1, "failed to set temporary directory suffix: %d", v2, v3, v4, v5, v6);
}

void sub_10000152C()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_100000F14(&_mh_execute_header, v0, v1, "failed to initialize temporary directory: %d", v2, v3, v4, v5, v6);
}