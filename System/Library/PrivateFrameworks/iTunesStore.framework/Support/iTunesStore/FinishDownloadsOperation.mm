@interface FinishDownloadsOperation
- (FinishDownloadsOperation)initWithFinishedDownloadPredicate:(id)predicate;
- (SSSQLitePredicate)finishedDownloadPredicate;
- (void)dealloc;
- (void)run;
@end

@implementation FinishDownloadsOperation

- (FinishDownloadsOperation)initWithFinishedDownloadPredicate:(id)predicate
{
  v6.receiver = self;
  v6.super_class = FinishDownloadsOperation;
  v4 = [(FinishDownloadsOperation *)&v6 init];
  if (v4)
  {
    v4->_predicate = [predicate copy];
  }

  return v4;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FinishDownloadsOperation;
  [(FinishDownloadsOperation *)&v3 dealloc];
}

- (SSSQLitePredicate)finishedDownloadPredicate
{
  v2 = self->_predicate;

  return v2;
}

- (void)run
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = objc_alloc_init(NSMutableArray);
  v5 = +[DownloadsDatabase downloadsDatabase];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1001386C8;
  v21[3] = &unk_100329810;
  v21[4] = self;
  v21[5] = v4;
  v19 = v4;
  v21[6] = v3;
  [v5 readUsingTransactionBlock:v21];
  v6 = [v3 count];
  v7 = +[SSLogConfig sharedDaemonConfig];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    v9 = shouldLog | 2;
  }

  else
  {
    v9 = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 & 2;
  }

  if (v11)
  {
    v12 = objc_opt_class();
    *v22 = 138412546;
    *&v22[4] = v12;
    *&v22[12] = 2048;
    *&v22[14] = v6;
    v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Finishing %ld downloads", v22, 22);
    if (v13)
    {
      v14 = v13;
      v15 = [NSString stringWithCString:v13 encoding:4];
      free(v14);
      v18 = v15;
      SSFileLog();
    }
  }

  if (v6 < 1)
  {
    v17 = 1;
  }

  else
  {
    v16 = 0;
    v17 = 1;
    do
    {
      *v22 = 0;
      *&v22[8] = v22;
      *&v22[16] = 0x2020000000;
      v23 = -[FinishDownloadsOperation runSubOperation:returningError:](self, "runSubOperation:returningError:", [v3 objectAtIndex:{v16, v18}], 0);
      if (*(*&v22[8] + 24) == 1)
      {
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1001389B4;
        v20[3] = &unk_100329838;
        v20[5] = v22;
        v20[6] = v16;
        v20[4] = v19;
        [v5 modifyUsingTransactionBlock:v20];
      }

      if (v17)
      {
        v17 = *(*&v22[8] + 24);
      }

      else
      {
        v17 = 0;
      }

      _Block_object_dispose(v22, 8);
      ++v16;
    }

    while (v6 != v16);
  }

  [(FinishDownloadsOperation *)self setSuccess:v17 & 1, v18];
}

@end