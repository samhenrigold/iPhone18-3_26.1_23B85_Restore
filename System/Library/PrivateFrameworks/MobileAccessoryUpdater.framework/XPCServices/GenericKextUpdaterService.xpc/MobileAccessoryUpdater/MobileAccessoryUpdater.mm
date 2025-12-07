uint64_t AUSandboxPlatformInitWithBundleIdentifierHomeDirectory(void *a1, const char *a2)
{
  v2 = a1;
  if (!v2)
  {
    v2 = &_os_log_default;
    v3 = &_os_log_default;
  }

  v4 = v2;
  bzero(v8, 0x400uLL);
  v5 = v4;
  if (_set_user_dir_suffix())
  {
    if (confstr(65537, v8, 0x400uLL))
    {
      v6 = 0;
      goto LABEL_11;
    }

    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      sub_100001838();
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_1000017B8();
  }

  v6 = 1;
LABEL_11:

  return v6;
}

void sub_100001774(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 8u);
}

void sub_1000017B8()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_100001774(&_mh_execute_header, v0, v1, "failed to set temporary directory suffix: %d", v2, v3, v4, v5, v6);
}

void sub_100001838()
{
  LODWORD(v6) = 67109120;
  HIDWORD(v6) = *__error();
  sub_100001774(&_mh_execute_header, v0, v1, "failed to initialize temporary directory: %d", v2, v3, v4, v5, v6);
}