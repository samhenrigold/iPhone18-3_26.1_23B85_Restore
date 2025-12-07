@interface SUAskPermissionRequestExtension
- (void)checkDownloadQueue;
- (void)requestUpdatedWithResult:(id)result completion:(id)completion;
@end

@implementation SUAskPermissionRequestExtension

- (void)checkDownloadQueue
{
  v2 = +[SSLogConfig sharedConfig];
  shouldLog = [v2 shouldLog];
  if ([v2 shouldLogToDisk])
  {
    LODWORD(v4) = shouldLog | 2;
  }

  else
  {
    LODWORD(v4) = shouldLog;
  }

  oSLogObject = [v2 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v4;
  }

  else
  {
    v4 &= 2u;
  }

  if (!v4)
  {
    goto LABEL_10;
  }

  v14 = 138543362;
  v15 = objc_opt_class();
  v6 = _os_log_send_and_compose_impl(v4, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%{public}@] Checking download queue", &v14, 12);

  if (v6)
  {
    oSLogObject = [NSString stringWithCString:v6 encoding:4];
    free(v6);
    SSFileLog();
LABEL_10:
  }

  v7 = objc_alloc_init(SSDownloadManagerOptions);
  v8 = +[SSDownloadManager allStoreDownloadKinds];
  [v7 setDownloadKinds:v8];

  v13 = SSDownloadExternalPropertyPercentComplete;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  [v7 setPrefetchedDownloadExternalProperties:v9];

  v12[0] = SSDownloadPropertyStoreItemIdentifier;
  v12[1] = SSDownloadPropertyDownloadPhase;
  v12[2] = SSDownloadPropertyIsHighDefinition;
  v12[3] = SSDownloadPropertyIsRental;
  v12[4] = SSDownloadPropertyIsSample;
  v10 = [NSArray arrayWithObjects:v12 count:5];
  [v7 setPrefetchedDownloadProperties:v10];

  v11 = [[SSDownloadManager alloc] initWithManagerOptions:v7];
  [v11 reloadFromServer];
}

- (void)requestUpdatedWithResult:(id)result completion:(id)completion
{
  resultCopy = result;
  completionCopy = completion;
  v7 = +[SSLogConfig sharedConfig];
  shouldLog = [v7 shouldLog];
  if ([v7 shouldLogToDisk])
  {
    LODWORD(v9) = shouldLog | 2;
  }

  else
  {
    LODWORD(v9) = shouldLog;
  }

  oSLogObject = [v7 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (!v9)
  {
    goto LABEL_10;
  }

  v11 = objc_opt_class();
  compile = [resultCopy compile];
  v20 = 138543618;
  v21 = v11;
  v22 = 2114;
  v23 = compile;
  v13 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%{public}@] Request updated with result %{public}@", &v20, 22);

  if (v13)
  {
    oSLogObject = [NSString stringWithCString:v13 encoding:4];
    free(v13);
    SSFileLog();
LABEL_10:
  }

  buyParams = [resultCopy buyParams];
  v15 = [SSPurchase purchaseWithBuyParameters:buyParams];

  [v15 setCreatesDownloads:1];
  v16 = [SSPurchaseRequest alloc];
  v19 = v15;
  v17 = [NSArray arrayWithObjects:&v19 count:1];
  v18 = [v16 initWithPurchases:v17];

  [v18 start];
  completionCopy[2](completionCopy);
}

@end