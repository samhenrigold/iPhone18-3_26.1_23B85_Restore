@interface CDSystemWatchdogStackshotReport
- (CDSystemWatchdogStackshotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason;
- (void)launchDiagnosticsReporter;
@end

@implementation CDSystemWatchdogStackshotReport

- (CDSystemWatchdogStackshotReport)initWithPid:(int)pid procName:(id)name bundleID:(id)d exitSnapshot:(exit_reason_snapshot *)snapshot reason:(id)reason
{
  v8.receiver = self;
  v8.super_class = CDSystemWatchdogStackshotReport;
  return [(CDTerminatingStackshotReport *)&v8 initWithPid:*&pid procName:name bundleID:d exitSnapshot:snapshot reason:reason];
}

- (void)launchDiagnosticsReporter
{
  logfile = [(OSAReport *)self logfile];
  handleDiagnosticLog(3, logfile);
}

@end