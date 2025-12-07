@interface EnableAllAutomaticDownloadKindsOperation
- (void)run;
@end

@implementation EnableAllAutomaticDownloadKindsOperation

- (void)run
{
  v17 = 0;
  v3 = +[SSLogConfig sharedDaemonConfig];
  if (!v3)
  {
    v3 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v3 shouldLog];
  if ([v3 shouldLogToDisk])
  {
    LODWORD(v5) = shouldLog | 2;
  }

  else
  {
    LODWORD(v5) = shouldLog;
  }

  oSLogObject = [v3 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v5 = v5;
  }

  else
  {
    v5 &= 2u;
  }

  if (v5)
  {
    v18 = 138412290;
    v19 = objc_opt_class();
    v7 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Enabling all download kinds", &v18, 12);
    if (v7)
    {
      v8 = v7;
      v9 = [NSString stringWithCString:v7 encoding:4];
      free(v8);
      v16 = v9;
      SSFileLog();
    }
  }

  v10 = [SSURLBagContext contextWithBagType:0, v16];
  v11 = 0;
  if ([(EnableAllAutomaticDownloadKindsOperation *)self loadURLBagWithContext:v10 returningError:0])
  {
    v11 = [ISURLBag copyAllowedAutomaticDownloadKindsInBagContext:v10];
  }

  if ([v11 count])
  {
    v12 = objc_alloc_init(GetAutomaticDownloadKindsOperation);
    if ([(EnableAllAutomaticDownloadKindsOperation *)self runSubOperation:v12 returningError:&v17])
    {
      enabledDownloadKinds = [(GetAutomaticDownloadKindsOperation *)v12 enabledDownloadKinds];
      if ([(NSArray *)enabledDownloadKinds count])
      {
        [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue "sharedDownloadQueue")];
        v14 = 1;
      }

      else
      {
        v15 = [[SetAutomaticDownloadKindsOperation alloc] initWithDownloadKinds:v11];
        v14 = [(EnableAllAutomaticDownloadKindsOperation *)self runSubOperation:v15 returningError:&v17];
        if (v14)
        {
          [+[StoreDownloadQueue sharedDownloadQueue](StoreDownloadQueue "sharedDownloadQueue")];
        }
      }
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 1;
  }

  [(EnableAllAutomaticDownloadKindsOperation *)self setError:v17];
  [(EnableAllAutomaticDownloadKindsOperation *)self setSuccess:v14];
}

@end