@interface CalCrashReporter
+ (void)simulateCrashWithMessage:(id)message;
@end

@implementation CalCrashReporter

+ (void)simulateCrashWithMessage:(id)message
{
  messageCopy = message;
  v4 = EKWeakLinkSymbol("SimulateCrash", 0xCuLL);
  v5 = +[CalFoundationLogSubsystem defaultCategory];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      [(CalCrashReporter *)messageCopy simulateCrashWithMessage:v6];
    }

    v7 = getpid();
    v4(v7, 516869835, messageCopy);
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(CalCrashReporter *)messageCopy simulateCrashWithMessage:v6];
    }
  }
}

+ (void)simulateCrashWithMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&dword_1B990D000, a2, OS_LOG_TYPE_DEBUG, "Simulating crash report with message: [%@]", &v2, 0xCu);
}

+ (void)simulateCrashWithMessage:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136315394;
  v3 = "SimulateCrash";
  v4 = 2112;
  v5 = a1;
  _os_log_error_impl(&dword_1B990D000, a2, OS_LOG_TYPE_ERROR, "Will not simulate crash report because the [%s] function couldn't be loaded.  Given crash report message: [%@]", &v2, 0x16u);
}

@end