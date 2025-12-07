void sub_100000F44(id a1, BOOL a2, NSError *a3)
{
  v4 = a3;
  v5 = v4;
  if (!a2)
  {
    v6 = sub_100001738(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_10000189C();
    }
  }
}

void sub_100001710(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0xCu);
}

id sub_100001738(uint64_t a1)
{
  if (qword_100008828 != -1)
  {
    sub_1000019D4();
  }

  v2 = qword_100008820;

  return v2;
}

void sub_10000177C(id a1)
{
  qword_100008820 = os_log_create("com.apple.calls.FaceTimeLinkTrampoline", "Default");

  _objc_release_x1();
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