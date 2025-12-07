@interface RestoreDownloadDataOperation
- (BOOL)_isFatalRestoreError:(id)error;
- (BOOL)_restoreDataForBundleID:(id)d restoreState:(int64_t)state error:(id *)error;
- (void)operation:(id)operation updatedProgress:(id)progress;
- (void)run;
@end

@implementation RestoreDownloadDataOperation

- (void)run
{
  v3 = objc_alloc_init(FinishDownloadResponse);
  [(FinishDownloadResponse *)v3 setResult:4];
  selfCopy = self;
  download = [(FinishDownloadStepOperation *)self download];
  -[FinishDownloadResponse setDownloadIdentifier:](v3, "setDownloadIdentifier:", [download databaseID]);
  v52 = -[DownloadHandle initWithTransactionIdentifier:downloadIdentifier:]([DownloadHandle alloc], "initWithTransactionIdentifier:downloadIdentifier:", [download transactionID], objc_msgSend(download, "databaseID"));
  [(FinishDownloadResponse *)v3 setDownloadHandle:?];
  mediaAsset = [download mediaAsset];
  -[FinishDownloadResponse setMediaAssetIdentifier:](v3, "setMediaAssetIdentifier:", [mediaAsset databaseID]);
  restoreState = [download restoreState];
  bundleIdentifier = [download bundleIdentifier];
  v7 = [ApplicationWorkspace keepSafeHarborDataForBundleID:bundleIdentifier];

  v8 = &CFDictionaryGetValue_ptr;
  if (v7)
  {
    v9 = +[SSLogConfig sharedDaemonConfig];
    if (!v9)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      v11 = shouldLog | 2;
    }

    else
    {
      v11 = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v13 = v11;
    }

    else
    {
      v13 = v11 & 2;
    }

    if (v13)
    {
      v14 = objc_opt_class();
      v53 = v14;
      databaseID = [download databaseID];
      bundleIdentifier2 = [download bundleIdentifier];
      v57 = 138412802;
      v58 = v14;
      v59 = 2048;
      v60 = databaseID;
      v61 = 2112;
      v62 = bundleIdentifier2;
      v17 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Restoring mid based download: %lld bundleIdentifier: %@", &v57, 32);

      v8 = &CFDictionaryGetValue_ptr;
      if (v17)
      {
        v18 = [NSString stringWithCString:v17 encoding:4];
        free(v17);
        v45 = v18;
        SSFileLog();
      }
    }

    else
    {
    }
  }

  bundleIdentifier3 = [download bundleIdentifier];
  v56 = 0;
  v20 = selfCopy;
  v21 = [(RestoreDownloadDataOperation *)selfCopy _restoreDataForBundleID:bundleIdentifier3 restoreState:restoreState error:&v56];
  v22 = v56;

  v54 = v3;
  if ((v21 & 1) == 0)
  {
    [(FinishDownloadResponse *)v3 setError:v22];
    v33 = 0;
    goto LABEL_31;
  }

  if (restoreState != 1)
  {
    goto LABEL_32;
  }

  if (!v7)
  {
    v33 = 3;
    goto LABEL_31;
  }

  sharedDaemonConfig = [v8[412] sharedDaemonConfig];
  if (!sharedDaemonConfig)
  {
    sharedDaemonConfig = [v8[412] sharedConfig];
  }

  shouldLog2 = [sharedDaemonConfig shouldLog];
  if ([sharedDaemonConfig shouldLogToDisk])
  {
    shouldLog2 |= 2u;
  }

  oSLogObject2 = [sharedDaemonConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v26 = shouldLog2;
  }

  else
  {
    v26 = shouldLog2 & 2;
  }

  if (!v26)
  {
    goto LABEL_28;
  }

  v27 = objc_opt_class();
  v49 = v27;
  result = [(FinishDownloadResponse *)v3 result];
  v28 = v8;
  databaseID2 = [download databaseID];
  [download bundleIdentifier];
  v31 = v30 = v22;
  v57 = 138413058;
  v58 = v27;
  v59 = 2048;
  v60 = result;
  v61 = 2048;
  v62 = databaseID2;
  v8 = v28;
  v63 = 2112;
  v64 = v31;
  LODWORD(v47) = 42;
  v32 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "%@: Restoring MID hard failed with state: %ld download: %lld bundleIdentifier: %@", &v57, v47);

  v22 = v30;
  v3 = v54;

  if (v32)
  {
    oSLogObject2 = [NSString stringWithCString:v32 encoding:4];
    free(v32);
    v46 = oSLogObject2;
    SSFileLog();
LABEL_28:
  }

  v33 = 7;
LABEL_31:
  [(FinishDownloadResponse *)v3 setResult:v33, v46];
LABEL_32:
  sharedDaemonConfig2 = [v8[412] sharedDaemonConfig];
  if (!sharedDaemonConfig2)
  {
    sharedDaemonConfig2 = [v8[412] sharedConfig];
  }

  shouldLog3 = [sharedDaemonConfig2 shouldLog];
  if ([sharedDaemonConfig2 shouldLogToDisk])
  {
    shouldLog3 |= 2u;
  }

  oSLogObject3 = [sharedDaemonConfig2 OSLogObject];
  if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
  {
    v37 = shouldLog3;
  }

  else
  {
    v37 = shouldLog3 & 2;
  }

  if (!v37)
  {
    v40 = v54;
    goto LABEL_43;
  }

  v38 = objc_opt_class();
  v50 = v22;
  v39 = v38;
  v40 = v54;
  result2 = [(FinishDownloadResponse *)v54 result];
  databaseID3 = [download databaseID];
  bundleIdentifier4 = [download bundleIdentifier];
  v57 = 138413058;
  v58 = v38;
  v59 = 2048;
  v60 = result2;
  v61 = 2048;
  v62 = databaseID3;
  v63 = 2112;
  v64 = bundleIdentifier4;
  LODWORD(v47) = 42;
  v44 = _os_log_send_and_compose_impl(v37, 0, 0, 0, &_mh_execute_header, oSLogObject3, 1, "%@: Restoring data done with state: %ld download: %lld bundleIdentifier: %@", &v57, v47);

  v20 = selfCopy;
  v22 = v50;

  if (v44)
  {
    oSLogObject3 = [NSString stringWithCString:v44 encoding:4];
    free(v44);
    SSFileLog();
LABEL_43:
  }

  [(FinishDownloadStepOperation *)v20 finishWithDownloadResponse:v40];
}

- (void)operation:(id)operation updatedProgress:(id)progress
{
  v4 = OBJC_IVAR___ISOperation__progress;
  if (*&self->super.ISOperation_opaque[OBJC_IVAR___ISOperation__progress])
  {
    v6 = [progress copy];
    v7 = *&self->super.ISOperation_opaque[v4];
    *&self->super.ISOperation_opaque[v4] = v6;

    delegate = [(RestoreDownloadDataOperation *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate operation:self updatedProgress:*&self->super.ISOperation_opaque[v4]];
    }
  }
}

- (BOOL)_isFatalRestoreError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  v5 = [domain isEqualToString:@"MBErrorDomain"];

  if (v5 && (v6 = [errorCopy code], (v7 = ISWeakLinkedSymbolForString()) != 0))
  {
    v8 = v7(v6);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)_restoreDataForBundleID:(id)d restoreState:(int64_t)state error:(id *)error
{
  dCopy = d;
  download = [(FinishDownloadStepOperation *)self download];
  databaseID = [download databaseID];

  v7 = 0;
  v8 = 1;
  for (i = &CFDictionaryGetValue_ptr; ; i = &CFDictionaryGetValue_ptr)
  {
    context = objc_autoreleasePoolPush();
    sharedDaemonConfig = [i[412] sharedDaemonConfig];
    if (!sharedDaemonConfig)
    {
      sharedDaemonConfig = [i[412] sharedConfig];
    }

    shouldLog = [sharedDaemonConfig shouldLog];
    if ([sharedDaemonConfig shouldLogToDisk])
    {
      v12 = shouldLog | 2;
    }

    else
    {
      v12 = shouldLog;
    }

    oSLogObject = [sharedDaemonConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v14 = v12;
    }

    else
    {
      v14 = v12 & 2;
    }

    if (v14)
    {
      v15 = objc_opt_class();
      v82 = 138413058;
      v83 = v15;
      v84 = 2048;
      *v85 = v8;
      *&v85[8] = 2048;
      *&v85[10] = databaseID;
      *&v85[18] = 2112;
      *&v85[20] = dCopy;
      v16 = v15;
      LODWORD(v75) = 42;
      v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Restoring data (attempt %ld) for software download: %lld / %@", &v82, v75);

      if (!v17)
      {
        goto LABEL_14;
      }

      oSLogObject = [NSString stringWithCString:v17 encoding:4];
      free(v17);
      v73 = oSLogObject;
      SSFileLog();
    }

LABEL_14:
    sharedDaemonConfig2 = [i[412] sharedDaemonConfig];
    if (!sharedDaemonConfig2)
    {
      sharedDaemonConfig2 = [i[412] sharedConfig];
    }

    shouldLog2 = [sharedDaemonConfig2 shouldLog];
    if ([sharedDaemonConfig2 shouldLogToDisk])
    {
      v20 = shouldLog2 | 2;
    }

    else
    {
      v20 = shouldLog2;
    }

    oSLogObject2 = [sharedDaemonConfig2 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v22 = v20;
    }

    else
    {
      v22 = v20 & 2;
    }

    if (v22)
    {
      v23 = objc_opt_class();
      v24 = v23;
      download2 = [(FinishDownloadStepOperation *)self download];
      priority = [download2 priority];
      v82 = 138412546;
      v83 = v23;
      v84 = 2048;
      *v85 = priority;
      LODWORD(v75) = 22;
      v27 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Restoring data with priority = %ld", &v82, v75);

      i = &CFDictionaryGetValue_ptr;
      if (!v27)
      {
        goto LABEL_26;
      }

      oSLogObject2 = [NSString stringWithCString:v27 encoding:4];
      free(v27);
      v74 = oSLogObject2;
      SSFileLog();
    }

LABEL_26:
    v28 = [RestoreBackupOperation alloc];
    download3 = [(FinishDownloadStepOperation *)self download];
    v30 = -[RestoreBackupOperation initWithBundleIdentifier:withPriority:isFailed:](v28, "initWithBundleIdentifier:withPriority:isFailed:", dCopy, [download3 priority], state == 1);

    [(RestoreBackupOperation *)v30 setDelegate:self];
    v81 = v7;
    v31 = [(RestoreDownloadDataOperation *)self runSubOperation:v30 returningError:&v81];
    v32 = v81;

    [(RestoreBackupOperation *)v30 setDelegate:0];
    if (v31)
    {
      goto LABEL_56;
    }

    if ([(RestoreDownloadDataOperation *)self _isFatalRestoreError:v32])
    {
      sharedDaemonConfig3 = [i[412] sharedDaemonConfig];
      if (!sharedDaemonConfig3)
      {
        sharedDaemonConfig3 = [i[412] sharedConfig];
      }

      shouldLog3 = [sharedDaemonConfig3 shouldLog];
      if ([sharedDaemonConfig3 shouldLogToDisk])
      {
        shouldLog3 |= 2u;
      }

      oSLogObject3 = [sharedDaemonConfig3 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
      {
        v46 = shouldLog3;
      }

      else
      {
        v46 = shouldLog3 & 2;
      }

      if (v46)
      {
        v47 = objc_opt_class();
        v82 = 138412802;
        v83 = v47;
        v84 = 2048;
        *v85 = databaseID;
        *&v85[8] = 2112;
        *&v85[10] = v32;
        v48 = v47;
        LODWORD(v75) = 32;
        v49 = _os_log_send_and_compose_impl(v46, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Skipping data restore after fatal error: %lld / %@", &v82, v75);

        if (v49)
        {
          oSLogObject3 = [NSString stringWithCString:v49 encoding:4];
          free(v49);
          SSFileLog();
          goto LABEL_54;
        }
      }

      else
      {
LABEL_54:
      }

LABEL_56:
      objc_autoreleasePoolPop(context);
      v50 = 1;
      goto LABEL_92;
    }

    if (sub_1000EA66C(v32))
    {
      sharedDaemonConfig4 = [i[412] sharedDaemonConfig];
      v52 = i;
      sharedConfig = sharedDaemonConfig4;
      if (!sharedDaemonConfig4)
      {
        sharedConfig = [v52[412] sharedConfig];
      }

      shouldLog4 = [sharedConfig shouldLog];
      if ([sharedConfig shouldLogToDisk])
      {
        shouldLog4 |= 2u;
      }

      oSLogObject4 = [sharedConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v55 = shouldLog4;
      }

      else
      {
        v55 = shouldLog4 & 2;
      }

      if (v55)
      {
        v56 = objc_opt_class();
        v82 = 138412802;
        v83 = v56;
        v84 = 2048;
        *v85 = databaseID;
        *&v85[8] = 2112;
        *&v85[10] = v32;
        v57 = v56;
        LODWORD(v75) = 32;
        v58 = _os_log_send_and_compose_impl(v55, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Giving up after transient error: %lld / %@", &v82, v75);
        goto LABEL_84;
      }

LABEL_86:
      v68 = context;
      errorCopy3 = error;
LABEL_87:

      goto LABEL_89;
    }

    if (v8 >= 3)
    {
      break;
    }

    isCancelled = [(RestoreDownloadDataOperation *)self isCancelled];
    sharedDaemonConfig5 = [i[412] sharedDaemonConfig];
    sharedConfig = sharedDaemonConfig5;
    if (isCancelled)
    {
      if (!sharedDaemonConfig5)
      {
        sharedConfig = +[SSLogConfig sharedConfig];
      }

      shouldLog5 = [sharedConfig shouldLog];
      if ([sharedConfig shouldLogToDisk])
      {
        shouldLog5 |= 2u;
      }

      oSLogObject4 = [sharedConfig OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
      {
        v65 = shouldLog5;
      }

      else
      {
        v65 = shouldLog5 & 2;
      }

      if (!v65)
      {
        goto LABEL_86;
      }

      v66 = objc_opt_class();
      v82 = 138413058;
      v83 = v66;
      v84 = 2048;
      *v85 = v8;
      *&v85[8] = 2048;
      *&v85[10] = databaseID;
      *&v85[18] = 2112;
      *&v85[20] = dCopy;
      v57 = v66;
      LODWORD(v75) = 42;
      v58 = _os_log_send_and_compose_impl(v65, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Cancelled after %ld attempts for download: %lld / %@", &v82, v75);
      goto LABEL_84;
    }

    if (!sharedDaemonConfig5)
    {
      sharedConfig = +[SSLogConfig sharedConfig];
    }

    shouldLog6 = [sharedConfig shouldLog];
    if ([sharedConfig shouldLogToDisk])
    {
      shouldLog6 |= 2u;
    }

    oSLogObject5 = [sharedConfig OSLogObject];
    if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
    {
      v38 = shouldLog6;
    }

    else
    {
      v38 = shouldLog6 & 2;
    }

    if (v38)
    {
      v39 = objc_opt_class();
      v82 = 138412802;
      v83 = v39;
      v84 = 2048;
      *v85 = databaseID;
      *&v85[8] = 2112;
      *&v85[10] = v32;
      v40 = v39;
      LODWORD(v75) = 32;
      v41 = _os_log_send_and_compose_impl(v38, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%@: Waiting a bit before retrying after error: %lld / %@", &v82, v75);

      v42 = context;
      if (!v41)
      {
        goto LABEL_43;
      }

      oSLogObject5 = [NSString stringWithCString:v41 encoding:4];
      free(v41);
      v72 = oSLogObject5;
      SSFileLog();
    }

    else
    {
      v42 = context;
    }

LABEL_43:
    [NSThread sleepForTimeInterval:v8++ * 10.0];

    objc_autoreleasePoolPop(v42);
    v7 = v32;
  }

  sharedDaemonConfig6 = [i[412] sharedDaemonConfig];
  v60 = i;
  sharedConfig = sharedDaemonConfig6;
  if (!sharedDaemonConfig6)
  {
    sharedConfig = [v60[412] sharedConfig];
  }

  shouldLog7 = [sharedConfig shouldLog];
  if ([sharedConfig shouldLogToDisk])
  {
    shouldLog7 |= 2u;
  }

  oSLogObject4 = [sharedConfig OSLogObject];
  if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
  {
    v62 = shouldLog7;
  }

  else
  {
    v62 = shouldLog7 & 2;
  }

  if (!v62)
  {
    goto LABEL_86;
  }

  v63 = objc_opt_class();
  v82 = 138413058;
  v83 = v63;
  v84 = 1024;
  *v85 = 3;
  *&v85[4] = 2048;
  *&v85[6] = databaseID;
  *&v85[14] = 2112;
  *&v85[16] = v32;
  v57 = v63;
  LODWORD(v75) = 38;
  v58 = _os_log_send_and_compose_impl(v62, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "%@: Giving up after %d attempts for download: %lld / %@", &v82, v75);
LABEL_84:
  v67 = v58;

  if (v67)
  {
    v68 = context;
    errorCopy3 = error;
    oSLogObject4 = [NSString stringWithCString:v67 encoding:4];
    free(v67);
    SSFileLog();
    goto LABEL_87;
  }

  v68 = context;
  errorCopy3 = error;
LABEL_89:

  objc_autoreleasePoolPop(v68);
  if (errorCopy3)
  {
    v70 = v32;
    v50 = 0;
    *errorCopy3 = v32;
  }

  else
  {
    v50 = 0;
  }

LABEL_92:

  return v50;
}

@end