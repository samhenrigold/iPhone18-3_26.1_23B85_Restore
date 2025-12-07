id MTLoggingCrownFilterManager(uint64_t a1)
{
  if (MTLoggingCrownFilterManager_onceToken != -1)
  {
    MTLoggingCrownFilterManager_cold_1();
  }

  v2 = MTLoggingCrownFilterManager___logObj;

  return v2;
}

id MTLoggingRemoteFilterManager(uint64_t a1)
{
  if (MTLoggingRemoteFilterManager_onceToken != -1)
  {
    MTLoggingRemoteFilterManager_cold_1();
  }

  v2 = MTLoggingRemoteFilterManager___logObj;

  return v2;
}

id MTLoggingAnalyticsFilterManager(uint64_t a1)
{
  if (MTLoggingAnalyticsFilterManager_onceToken != -1)
  {
    MTLoggingAnalyticsFilterManager_cold_1();
  }

  v2 = MTLoggingAnalyticsFilterManager___logObj;

  return v2;
}

void sub_1C58(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, va, 2u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x20u);
}

void OUTLINED_FUNCTION_5(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_debug_impl(a1, v8, OS_LOG_TYPE_DEBUG, a4, va, 0x1Au);
}