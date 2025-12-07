void sub_100000EAC(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

uint64_t start(int a1, char **a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  objc_autoreleasePoolPop(v4);
  v7 = UIApplicationMain(a1, a2, 0, v6);

  return v7;
}

void sub_100000F3C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[AppDelegate handleUniversalLinkInUserActivity:]";
  sub_100000EAC(&_mh_execute_header, a1, a3, "%{public}s: failed: not a browsing web type", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_100000FB4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[AppDelegate handleUniversalLinkInUserActivity:]";
  sub_100000EAC(&_mh_execute_header, a1, a3, "%{public}s: failed: Did not convert url", a5, a6, a7, a8, v8, DWORD2(v8));
}

void sub_10000102C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[AppDelegate handleUniversalLinkInUserActivity:]";
  sub_100000EAC(&_mh_execute_header, a1, a3, "%{public}s: failed: No url found", a5, a6, a7, a8, v8, DWORD2(v8));
}