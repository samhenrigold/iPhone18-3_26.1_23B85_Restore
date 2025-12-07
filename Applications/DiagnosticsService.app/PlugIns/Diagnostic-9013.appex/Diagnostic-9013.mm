id handleForCategory(unint64_t a1)
{
  if (qword_100008808 != -1)
  {
    sub_1000024C0();
  }

  v2 = &_os_log_disabled;
  v3 = &_os_log_disabled;
  if (a1 <= 2)
  {
    v2 = qword_1000087F0[a1];
  }

  return v2;
}

void sub_100000E88(id a1)
{
  v1 = os_log_create("com.apple.corerepair", "device");
  v2 = qword_1000087F0[0];
  qword_1000087F0[0] = v1;

  v3 = os_log_create("com.apple.corerepair", "device-error");
  v4 = qword_1000087F8;
  qword_1000087F8 = v3;

  qword_100008800 = os_log_create("com.apple.corerepair", "signpost");

  _objc_release_x1();
}

void sub_100002298(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_1000024D4(void *a1)
{
  v1 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1 code]);
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = v1;
  sub_100002298(&_mh_execute_header, v2, v3, "Failed to probe gasgauge status, error: %@", v4, v5, v6, v7, v8, DWORD2(v8));
}

void sub_100002570(void *a1)
{
  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [a1 code]);
  v8 = v7;
  if (!v7)
  {
    v8 = +[NSNull null];
  }

  LODWORD(v9) = 138412290;
  HIDWORD(v9) = v8;
  sub_100002298(&_mh_execute_header, v1, v2, "Failed to open SMC port, error: %@", v3, v4, v5, v6, v9, HIDWORD(v8));
  if (!v7)
  {
  }
}

void sub_100002638()
{
  sub_100002284();
  sub_1000022B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}

void sub_1000026B4()
{
  sub_100002284();
  sub_1000022B8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
}