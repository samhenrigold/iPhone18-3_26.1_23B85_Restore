@interface CATestReporter
- (CATestReporter)initWithNewReporterID;
@end

@implementation CATestReporter

- (CATestReporter)initWithNewReporterID
{
  v20 = *MEMORY[0x29EDCA608];
  if (_os_feature_enabled_impl())
  {
    v13.receiver = self;
    v13.super_class = CATestReporter;
    initWithNewReporterID = [(CAReporter *)&v13 initWithNewReporterID];
    initWithNewReporterID2 = initWithNewReporterID;
    if (initWithNewReporterID)
    {
      v12.receiver = initWithNewReporterID;
      v12.super_class = CATestReporter;
      [(CAReporter *)&v12 setServiceType:11];
    }
  }

  else
  {
    v5 = *AA_ClientCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v15 = "CAReportingClient.mm";
      v16 = 1024;
      v17 = 478;
      _os_log_impl(&dword_296C89000, v5, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CATestReporter initWithNewReporterID called", buf, 0x12u);
    }

    v11.receiver = self;
    v11.super_class = CATestReporter;
    initWithNewReporterID2 = [(CAReporter *)&v11 initWithNewReporterID];
    if (initWithNewReporterID2)
    {
      v6 = *AA_ClientCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        reporterID = [(CAReporter *)initWithNewReporterID2 reporterID];
        *buf = 136315650;
        v15 = "CAReportingClient.mm";
        v16 = 1024;
        v17 = 482;
        v18 = 2048;
        v19 = reporterID;
        _os_log_impl(&dword_296C89000, v6, OS_LOG_TYPE_DEFAULT, "%25s:%-5d CATestReporter initWithNewReporterID { careporter_id=%lli }", buf, 0x1Cu);
      }

      v8 = +[CAReportingClient sharedInstance];
      [v8 setServiceType:11 reporterID:{-[CAReporter reporterID](initWithNewReporterID2, "reporterID")}];
    }
  }

  v9 = initWithNewReporterID2;

  return v9;
}

@end