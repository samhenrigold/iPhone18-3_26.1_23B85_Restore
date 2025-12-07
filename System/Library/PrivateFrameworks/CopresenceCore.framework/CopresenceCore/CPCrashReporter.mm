@interface CPCrashReporter
+ (void)simulateCrashReportFromPID:(int)d withKillCode:(unsigned int)code usingReasonWithFormat:(id)format;
+ (void)simulateCrashReportWithFormat:(id)format;
+ (void)simulateCrashReportWithReason:(id)reason pid:(int)pid code:(unsigned int)code;
@end

@implementation CPCrashReporter

+ (void)simulateCrashReportWithReason:(id)reason pid:(int)pid code:(unsigned int)code
{
  v6 = *&pid;
  reasonCopy = reason;
  if (simulateCrashReportWithReason_pid_code___pred_SimulateCrashCrashReporterSupport[0] != -1)
  {
    +[CPCrashReporter simulateCrashReportWithReason:pid:code:];
  }

  v8 = simulateCrashReportWithReason_pid_code___SimulateCrash(v6, code, reasonCopy);
  v9 = v8;
  v10 = CPDefaultLog(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[CPCrashReporter simulateCrashReportWithReason:pid:code:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    +[CPCrashReporter simulateCrashReportWithReason:pid:code:];
  }
}

uint64_t (*__58__CPCrashReporter_simulateCrashReportWithReason_pid_code___block_invoke())(void, void, void)
{
  result = CUTWeakLinkSymbol();
  simulateCrashReportWithReason_pid_code___SimulateCrash = result;
  return result;
}

+ (void)simulateCrashReportFromPID:(int)d withKillCode:(unsigned int)code usingReasonWithFormat:(id)format
{
  v5 = *&code;
  v6 = *&d;
  v8 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v10 = [[v8 alloc] initWithFormat:formatCopy arguments:&v11];

  [self simulateCrashReportWithReason:v10 pid:v6 code:v5];
}

+ (void)simulateCrashReportWithFormat:(id)format
{
  v4 = MEMORY[0x1E696AEC0];
  formatCopy = format;
  v6 = [[v4 alloc] initWithFormat:formatCopy arguments:&v7];

  [self simulateCrashReportWithReason:v6 pid:getpid() code:14593455];
}

+ (void)simulateCrashReportWithReason:pid:code:.cold.2()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_fault_impl(&dword_1AEB26000, v0, OS_LOG_TYPE_FAULT, "%s Wanted to file a simulated crash report for reason: %@", v1, 0x16u);
}

+ (void)simulateCrashReportWithReason:pid:code:.cold.3()
{
  v2 = *MEMORY[0x1E69E9840];
  v1[0] = 136315394;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_1AEB26000, v0, OS_LOG_TYPE_ERROR, "%s Simulated a crash report for reason: %@", v1, 0x16u);
}

@end