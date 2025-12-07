@interface ULTimerFactory
+ (id)_instance;
+ (id)timerOnPrimaryQueueWithInterval:(id)interval repeats:(id)repeats block:(id)block;
+ (void)setPrimaryQueue:(id)queue;
@end

@implementation ULTimerFactory

+ (id)_instance
{
  if (_instance_onceToken != -1)
  {
    +[ULTimerFactory _instance];
  }

  v3 = _instance_instance;

  return v3;
}

void __27__ULTimerFactory__instance__block_invoke()
{
  v0 = objc_alloc_init(ULTimerFactory);
  v1 = _instance_instance;
  _instance_instance = v0;
}

+ (id)timerOnPrimaryQueueWithInterval:(id)interval repeats:(id)repeats block:(id)block
{
  intervalCopy = interval;
  repeatsCopy = repeats;
  blockCopy = block;
  v10 = +[ULTimerFactory _instance];
  primaryQueue = [v10 primaryQueue];

  isRunningInXCTestEnvironment = [MEMORY[0x277D28868] isRunningInXCTestEnvironment];
  if (isRunningInXCTestEnvironment)
  {
    v13 = primaryQueue == 0;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    if (primaryQueue)
    {
      goto LABEL_8;
    }

    [ULTimerFactory timerOnPrimaryQueueWithInterval:isRunningInXCTestEnvironment repeats:? block:?];
  }

  primaryQueue = MEMORY[0x277D85CD0];
  v14 = MEMORY[0x277D85CD0];
LABEL_8:
  v15 = [ULTimer alloc];
  [intervalCopy doubleValue];
  v17 = -[ULTimer initWithInterval:repeats:queue:block:](v15, "initWithInterval:repeats:queue:block:", [repeatsCopy BOOLValue], primaryQueue, blockCopy, v16);

  return v17;
}

+ (void)setPrimaryQueue:(id)queue
{
  queueCopy = queue;
  v3 = +[ULTimerFactory _instance];
  primaryQueue = [v3 primaryQueue];

  if (([MEMORY[0x277D28868] isRunningInXCTestEnvironment] & 1) != 0 || (primaryQueue ? (v5 = primaryQueue == queueCopy) : (v5 = 1), v5))
  {
    v6 = +[ULTimerFactory _instance];
    [v6 setPrimaryQueue:queueCopy];
  }

  else
  {
    [ULTimerFactory(queueSetter) setPrimaryQueue:queueCopy];
    ___CLLogObjectForCategory_MicroLocation_Default_block_invoke_17();
  }
}

+ (void)timerOnPrimaryQueueWithInterval:(uint64_t)a1 repeats:block:.cold.1(uint64_t a1)
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_4(&dword_258FE9000, v2, v3, "{msg%{public}.0s:#ULTimerFactory, Trying to create a timer on global queue without queue being set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_2(&dword_258FE9000, v10, v11, v12, "#ULTimerFactory, Trying to create a timer on global queue without queue being set", "{msg%{public}.0s:#ULTimerFactory, Trying to create a timer on global queue without queue being set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_3(&dword_258FE9000, v17, v18, "{msg%{public}.0s:#ULTimerFactory, Trying to create a timer on global queue without queue being set, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationDaemon/Utilities/ULTimerFactory.m", 45, "+[ULTimerFactory timerOnPrimaryQueueWithInterval:repeats:block:]");
  _CLLogObjectForCategory_MicroLocation_Default_cold_1();
}

@end