int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

id OS_LOG_XPCAPPREMOVAL(uint64_t a1)
{
  if (qword_1000088D0 != -1)
  {
    sub_10000104C();
  }

  v2 = qword_1000088C8;

  return v2;
}

void sub_100000D00(id a1)
{
  qword_1000088C8 = os_log_create([@"com.apple.MobileStore" UTF8String], "XPCAppRemovalService");

  _objc_release_x1();
}

void sub_100001030(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

void sub_100001060(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"com.apple.MobileStore";
  sub_100001030(&_mh_execute_header, a1, a3, "Removing User Defaults for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_1000010D8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = a1;
  sub_100001030(&_mh_execute_header, a2, a3, "Error: %@", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100001144(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138412290;
  *(&v8 + 4) = @"com.apple.MobileStore";
  sub_100001030(&_mh_execute_header, a1, a3, "Successfully completed AppRemoval for %@", a5, a6, a7, a8, v8, DWORD2(v8));
}