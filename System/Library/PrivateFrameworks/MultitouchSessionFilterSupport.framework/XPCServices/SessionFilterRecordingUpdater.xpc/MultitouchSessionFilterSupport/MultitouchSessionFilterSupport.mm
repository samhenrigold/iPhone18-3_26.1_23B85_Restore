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

id MTLoggingContinuousRecordingFilterManager(uint64_t a1)
{
  if (MTLoggingContinuousRecordingFilterManager(void)::onceToken != -1)
  {
    MTLoggingContinuousRecordingFilterManager();
  }

  v2 = MTLoggingContinuousRecordingFilterManager(void)::__logObj;

  return v2;
}

void ___Z41MTLoggingContinuousRecordingFilterManagerv_block_invoke(id a1)
{
  MTLoggingContinuousRecordingFilterManager(void)::__logObj = os_log_create("com.apple.Multitouch.SessionFilter", "ContinuousRecordingFilterManager");

  _objc_release_x1();
}

void OUTLINED_FUNCTION_1(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = objc_opt_new();
  v4 = +[NSXPCListener serviceListener];
  [v4 setDelegate:v3];
  [v4 resume];

  return 0;
}