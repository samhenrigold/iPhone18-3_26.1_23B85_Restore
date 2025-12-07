@interface ViewfinderErrorReporter
+ (void)_logError:(id)error;
+ (void)report:(int64_t)report status:(int)status;
@end

@implementation ViewfinderErrorReporter

+ (void)report:(int64_t)report status:(int)status
{
  v4 = *&status;
  v7 = [ViewfinderErrorReport alloc];
  v8 = +[NSDate now];
  v9 = [(ViewfinderErrorReport *)v7 initWithCode:report status:v4 date:v8];

  [self _logError:v9];
  v10 = dispatch_get_global_queue(17, 0);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100017F18;
  block[3] = &unk_100034F38;
  block[4] = report;
  v14 = v4;
  dispatch_async(v10, block);

  v11 = +[NSNotificationCenter defaultCenter];
  v15 = @"ErrorReport";
  v16 = v9;
  v12 = [NSDictionary dictionaryWithObjects:&v16 forKeys:&v15 count:1];
  [v11 postNotificationName:@"ViewfinderErrorReporterDidReportErrorNotification" object:0 userInfo:v12];
}

+ (void)_logError:(id)error
{
  errorCopy = error;
  if (qword_10003F320 != -1)
  {
    sub_100025080();
  }

  v4 = qword_10003F318;
  if (os_log_type_enabled(qword_10003F318, OS_LOG_TYPE_ERROR))
  {
    sub_100025094(v4, errorCopy);
  }
}

@end