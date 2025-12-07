int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}

void sub_100001978(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  sub_10000199C(va);
  _Unwind_Resume(a1);
}

void sub_10000199C(uint64_t a1)
{
  v2 = *(a1 + 16);
}

void sub_100001A4C(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_fault_impl(a1, a2, OS_LOG_TYPE_FAULT, a4, va, 2u);
}

id sub_100001A74(uint64_t a1)
{
  if (qword_1000087A0 != -1)
  {
    sub_100001B98();
  }

  v2 = qword_1000087A8;

  return v2;
}

void sub_100001AB8(id a1)
{
  qword_1000087A8 = os_log_create("com.apple.HealthAlgorithms", "day_stream_processor_service");

  _objc_release_x1();
}