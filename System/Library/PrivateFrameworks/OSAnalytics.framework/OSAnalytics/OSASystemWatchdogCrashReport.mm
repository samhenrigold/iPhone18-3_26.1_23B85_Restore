@interface OSASystemWatchdogCrashReport
- (OSASystemWatchdogCrashReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason;
@end

@implementation OSASystemWatchdogCrashReport

- (OSASystemWatchdogCrashReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason
{
  v8.receiver = self;
  v8.super_class = OSASystemWatchdogCrashReport;
  return [(OSACrackShotReport *)&v8 initWithPid:*&pid procName:name bundleID:d exitSnapshot:snapshot reason:reason];
}

@end