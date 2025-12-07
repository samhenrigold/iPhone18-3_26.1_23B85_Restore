@interface ULTimerFactory(queueSetter)
@end

@implementation ULTimerFactory(queueSetter)

+ (void)setPrimaryQueue:()queueSetter .cold.1(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:#ULTimerFactory, Trying to set a global queue while a different global queue is already set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "#ULTimerFactory, Trying to set a global queue while a different global queue is already set", "{msg%{public}.0s:#ULTimerFactory, Trying to set a global queue while a different global queue is already set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:#ULTimerFactory, Trying to set a global queue while a different global queue is already set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/Utilities/ULTimerFactory.m", 57, "+[ULTimerFactory(queueSetter) setPrimaryQueue:]");
  __124__ULClientProcessConnection_initWithXPCConnection_delegate_serviceHandling_legacyServiceHandling_diagnosticsHandling_queue___block_invoke_cold_1();
}

@end