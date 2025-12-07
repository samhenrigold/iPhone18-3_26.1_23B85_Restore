@interface CSCPUMonitorHelper
+ (int)clearMonitorForPID:(int)d;
+ (int)setThreshold:(float)threshold overTimeWindow:(float)window forPID:(int)d withFatalEffect:(BOOL)effect;
@end

@implementation CSCPUMonitorHelper

+ (int)setThreshold:(float)threshold overTimeWindow:(float)window forPID:(int)d withFatalEffect:(BOOL)effect
{
  v6 = *&d;
  *__error() = 0;
  if ([self clearMonitorForPID:v6])
  {
    v8 = +[CSLogger defaultCategory];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [CSCPUMonitorHelper setThreshold:v8 overTimeWindow:? forPID:? withFatalEffect:?];
    }
  }

  result = proc_set_cpumon_params();
  if (result)
  {
    v10 = +[CSLogger defaultCategory];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CSCPUMonitorHelper setThreshold:v10 overTimeWindow:? forPID:? withFatalEffect:?];
    }

    return *__error();
  }

  return result;
}

+ (int)clearMonitorForPID:(int)d
{
  *__error() = 0;
  result = proc_disable_cpumon();
  if (result)
  {
    v5 = +[CSLogger defaultCategory];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CSCPUMonitorHelper *)d clearMonitorForPID:v5];
    }

    return *__error();
  }

  return result;
}

+ (void)setThreshold:(NSObject *)a1 overTimeWindow:forPID:withFatalEffect:.cold.2(NSObject *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v5[0] = 67109378;
  v5[1] = v2;
  v6 = 2080;
  v7 = v4;
  _os_log_error_impl(&dword_243DC3000, a1, OS_LOG_TYPE_ERROR, "Error enabling CPU monitoring: %d (%s)", v5, 0x12u);
}

+ (void)clearMonitorForPID:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = *__error();
  v5 = __error();
  v6 = strerror(*v5);
  v7[0] = 67109634;
  v7[1] = v4;
  v8 = 2080;
  v9 = v6;
  v10 = 1024;
  v11 = a1;
  _os_log_error_impl(&dword_243DC3000, a2, OS_LOG_TYPE_ERROR, "clearMonitorForPID: Error disabling CPU monitoring: %d (%s) for pid %d", v7, 0x18u);
}

@end