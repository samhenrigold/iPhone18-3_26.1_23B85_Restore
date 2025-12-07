@interface CSDCrashReporter
+ (void)simulateCrashReportFromPID:(int)d withKillCode:(unsigned int)code usingReasonWithFormat:(id)format;
+ (void)simulateCrashReportWithFormat:(id)format;
+ (void)simulateCrashReportWithReason:(id)reason pid:(int)pid code:(unsigned int)code;
@end

@implementation CSDCrashReporter

+ (void)simulateCrashReportWithReason:(id)reason pid:(int)pid code:(unsigned int)code
{
  v6 = *&pid;
  reasonCopy = reason;
  if (qword_1006ACAC8 != -1)
  {
    sub_1004710E8();
  }

  v8 = off_1006ACAC0(v6, code, reasonCopy);
  v9 = v8;
  v10 = sub_100004778(v8);
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_100471174(reasonCopy, v11);
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
  {
    sub_1004710FC(reasonCopy, v11);
  }
}

+ (void)simulateCrashReportFromPID:(int)d withKillCode:(unsigned int)code usingReasonWithFormat:(id)format
{
  v5 = *&code;
  v6 = *&d;
  formatCopy = format;
  v9 = [[NSString alloc] initWithFormat:formatCopy arguments:&v10];

  [self simulateCrashReportWithReason:v9 pid:v6 code:v5];
}

+ (void)simulateCrashReportWithFormat:(id)format
{
  formatCopy = format;
  v5 = [[NSString alloc] initWithFormat:formatCopy arguments:&v6];

  [self simulateCrashReportWithReason:v5 pid:getpid() code:14593455];
}

@end