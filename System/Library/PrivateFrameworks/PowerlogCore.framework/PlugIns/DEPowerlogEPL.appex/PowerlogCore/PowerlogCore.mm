void sub_100001318(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_100001340(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100001358(uint64_t a1)
{
  v2 = [*(a1 + 32) backend];

  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = [v3 backend];
    [v4 runQuery];

    v5 = [*(a1 + 32) backend];
    [v5 queryResult];
  }

  else
  {
    v5 = [v3 functionName];
    PLBatteryUsageUIQuery();
  }
  v6 = ;
  v7 = *(*(a1 + 56) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  v9 = *(a1 + 48);

  return dispatch_semaphore_signal(v9);
}

void sub_1000015A0(id a1)
{
  qword_10000C6F0 = objc_alloc_init(BatteryUsageQueryModule);

  _objc_release_x1();
}

id PLLogDE(uint64_t a1)
{
  if (qword_10000C708 != -1)
  {
    sub_100002D5C();
  }

  v2 = qword_10000C700;

  return v2;
}

void sub_100001A40(id a1)
{
  qword_10000C700 = os_log_create("com.apple.DiagnosticExtensions", "PowerlogEPL");

  _objc_release_x1();
}

void sub_100002D14(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 0xCu);
}

void sub_100002D70()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002DE0()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002E50()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void sub_100002FA8()
{
  sub_100002D30();
  sub_100002D3C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}