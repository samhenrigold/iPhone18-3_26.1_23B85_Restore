@interface RestoreBackupOperation
+ (BOOL)cancelApplicationRestoreWithBundleID:(id)d error:(id *)error;
+ (BOOL)cancelApplicationRestoresWithBundleIDs:(id)ds;
+ (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size;
- (NSString)bundleIdentifier;
- (RestoreBackupOperation)initWithBundleIdentifier:(id)identifier withPriority:(int64_t)priority isFailed:(BOOL)failed;
- (void)cancel;
- (void)dealloc;
- (void)manager:(id)manager didFailBackupWithError:(id)error;
- (void)manager:(id)manager didFailRestoreWithError:(id)error;
- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining;
- (void)managerDidFinishBackup:(id)backup;
- (void)managerDidFinishRestore:(id)restore;
- (void)managerDidLoseConnectionToService:(id)service;
- (void)run;
@end

@implementation RestoreBackupOperation

- (RestoreBackupOperation)initWithBundleIdentifier:(id)identifier withPriority:(int64_t)priority isFailed:(BOOL)failed
{
  v10.receiver = self;
  v10.super_class = RestoreBackupOperation;
  v8 = [(RestoreBackupOperation *)&v10 init];
  if (v8)
  {
    v8->_bundleID = [identifier copy];
    v8->_priority = priority;
    v8->_isFailed = failed;
    v8->_semaphore = dispatch_semaphore_create(0);
  }

  return v8;
}

- (void)dealloc
{
  semaphore = self->_semaphore;
  if (semaphore)
  {
    dispatch_release(semaphore);
  }

  v4.receiver = self;
  v4.super_class = RestoreBackupOperation;
  [(RestoreBackupOperation *)&v4 dealloc];
}

+ (BOOL)cancelApplicationRestoreWithBundleID:(id)d error:(id *)error
{
  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 cancelApplicationRestoreWithBundleID:d error:error];

  return v7;
}

+ (BOOL)cancelApplicationRestoresWithBundleIDs:(id)ds
{
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v3 = [ds countByEnumeratingWithState:&v39 objects:v49 count:16];
  if (!v3)
  {
    return 1;
  }

  v4 = v3;
  v5 = *v40;
  v6 = 1;
  while (2)
  {
    for (i = 0; i != v4; i = i + 1)
    {
      if (*v40 != v5)
      {
        objc_enumerationMutation(ds);
      }

      v8 = *(*(&v39 + 1) + 8 * i);
      v9 = [ApplicationWorkspace keepSafeHarborDataForBundleID:v8, v34];
      v10 = +[SSLogConfig sharedDaemonConfig];
      v11 = v10;
      if (v9)
      {
        if (!v10)
        {
          v11 = +[SSLogConfig sharedConfig];
        }

        shouldLog = [v11 shouldLog];
        if ([v11 shouldLogToDisk])
        {
          LODWORD(v28) = shouldLog | 2;
        }

        else
        {
          LODWORD(v28) = shouldLog;
        }

        oSLogObject = [v11 OSLogObject];
        if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v28 = v28;
        }

        else
        {
          v28 &= 2u;
        }

        if (v28)
        {
          v30 = objc_opt_class();
          v43 = 138412546;
          v44 = v30;
          v45 = 2112;
          v46 = v8;
          LODWORD(v36) = 22;
          v31 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Could not cancel application restore with bundle ID: %@ because it is a MID based restore to save for later.", &v43, v36);
          if (v31)
          {
            v32 = v31;
            [NSString stringWithCString:v31 encoding:4];
            free(v32);
            SSFileLog();
          }
        }

        return 0;
      }

      if (!v10)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v12) = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        LODWORD(v12) = v12 | 2;
      }

      oSLogObject2 = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v12 = v12;
      }

      else
      {
        v12 &= 2u;
      }

      if (v12)
      {
        v14 = objc_opt_class();
        v43 = 138412546;
        v44 = v14;
        v45 = 2112;
        v46 = v8;
        LODWORD(v36) = 22;
        v15 = _os_log_send_and_compose_impl(v12, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Cancel application restore: %@", &v43, v36);
        if (v15)
        {
          v16 = v15;
          v17 = [NSString stringWithCString:v15 encoding:4];
          free(v16);
          v35 = v17;
          SSFileLog();
        }
      }

      v38 = 0;
      if (![RestoreBackupOperation cancelApplicationRestoreWithBundleID:v8 error:&v38, v35])
      {
        v18 = +[SSLogConfig sharedDaemonConfig];
        if (!v18)
        {
          v18 = +[SSLogConfig sharedConfig];
        }

        shouldLog2 = [v18 shouldLog];
        if ([v18 shouldLogToDisk])
        {
          v20 = shouldLog2 | 2;
        }

        else
        {
          v20 = shouldLog2;
        }

        oSLogObject3 = [v18 OSLogObject];
        if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT))
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
          v43 = 138412802;
          v44 = v23;
          v45 = 2112;
          v46 = v8;
          v47 = 2112;
          v48 = v38;
          LODWORD(v36) = 32;
          v24 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "%@: Could not cancel application restore for bundle ID: %@ error: %@", &v43, v36);
          if (v24)
          {
            v25 = v24;
            v26 = [NSString stringWithCString:v24 encoding:4];
            free(v25);
            v34 = v26;
            SSFileLog();
          }
        }

        v6 = 0;
      }
    }

    v4 = [ds countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v4)
    {
      continue;
    }

    break;
  }

  return v6;
}

+ (BOOL)restoreDataExistsForApplicationWithBundleID:(id)d size:(unint64_t *)size
{
  v6 = objc_alloc_init(ISWeakLinkedClassForString());
  v7 = [v6 restoreDataExistsForApplicationWithBundleID:d size:size];

  return v7;
}

- (NSString)bundleIdentifier
{
  v2 = self->_bundleID;

  return v2;
}

- (void)cancel
{
  v3.receiver = self;
  v3.super_class = RestoreBackupOperation;
  [(RestoreBackupOperation *)&v3 cancel];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)run
{
  [(RestoreBackupOperation *)self lock];
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setMaxValue:10000];
  [(RestoreBackupOperation *)self unlock];
  [(RestoreBackupOperation *)self sendProgressToDelegate];
  if ([objc_opt_class() restoreDataExistsForApplicationWithBundleID:self->_bundleID size:0])
  {
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
      v7 = objc_opt_class();
      bundleID = self->_bundleID;
      isFailed = self->_isFailed;
      v83 = 138412802;
      v84 = v7;
      v85 = 2112;
      v86 = bundleID;
      v87 = 1024;
      LODWORD(v88) = isFailed;
      v10 = _os_log_send_and_compose_impl(v5, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Restore data does not exist for bundleIdentifier: %@ after failure: %d", &v83, 28);
      if (v10)
      {
        v11 = v10;
        v12 = [NSString stringWithCString:v10 encoding:4];
        free(v11);
        v76 = v12;
        SSFileLog();
      }
    }

    v13 = 0;
    do
    {
      v14 = +[SSLogConfig sharedDaemonConfig];
      if (!v14)
      {
        v14 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v14 shouldLog];
      if ([v14 shouldLogToDisk])
      {
        shouldLog2 |= 2u;
      }

      oSLogObject2 = [v14 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
      {
        v17 = shouldLog2;
      }

      else
      {
        v17 = shouldLog2 & 2;
      }

      if (v17)
      {
        v18 = objc_opt_class();
        v19 = self->_bundleID;
        v20 = self->_isFailed;
        v83 = 138413058;
        v84 = v18;
        v85 = 2048;
        v86 = v13;
        v87 = 2112;
        v88 = v19;
        v89 = 1024;
        v90 = v20;
        LODWORD(v81) = 38;
        v21 = _os_log_send_and_compose_impl(v17, 0, 0, 0, &_mh_execute_header, oSLogObject2, 1, "%@: Starting data restore attempt: %ld for: %@ after failure: %d", &v83, v81);
        if (v21)
        {
          v22 = v21;
          v23 = [NSString stringWithCString:v21 encoding:4];
          free(v22);
          v77 = v23;
          SSFileLog();
        }
      }

      v24 = [objc_alloc(ISWeakLinkedClassForString()) initWithDelegate:self];
      v82 = 0;
      v25 = +[SSLogConfig sharedDaemonConfig];
      if (!v25)
      {
        v25 = +[SSLogConfig sharedConfig];
      }

      LODWORD(v26) = [v25 shouldLog];
      shouldLogToDisk = [v25 shouldLogToDisk];
      oSLogObject3 = [v25 OSLogObject];
      v29 = oSLogObject3;
      if (shouldLogToDisk)
      {
        LODWORD(v26) = v26 | 2;
      }

      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_INFO))
      {
        v26 = v26;
      }

      else
      {
        v26 &= 2u;
      }

      if (v26)
      {
        v30 = objc_opt_class();
        priority = self->_priority;
        v83 = 138412546;
        v84 = v30;
        v85 = 2048;
        v86 = priority;
        LODWORD(v81) = 22;
        v32 = _os_log_send_and_compose_impl(v26, 0, 0, 0, &_mh_execute_header, v29, 1, "%@: Starting restore with priority = %ld", &v83, v81);
        if (v32)
        {
          v33 = v32;
          v34 = [NSString stringWithCString:v32 encoding:4];
          free(v33);
          v78 = v34;
          SSFileLog();
        }
      }

      if (self->_priority == 1)
      {
        v35 = +[SSLogConfig sharedDaemonConfig];
        if (!v35)
        {
          v35 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v36) = [v35 shouldLog];
        shouldLogToDisk2 = [v35 shouldLogToDisk];
        oSLogObject4 = [v35 OSLogObject];
        v39 = oSLogObject4;
        if (shouldLogToDisk2)
        {
          LODWORD(v36) = v36 | 2;
        }

        if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_INFO))
        {
          v36 = v36;
        }

        else
        {
          v36 &= 2u;
        }

        if (v36)
        {
          v40 = objc_opt_class();
          v41 = self->_priority;
          v83 = 138412546;
          v84 = v40;
          v85 = 2048;
          v86 = v41;
          LODWORD(v81) = 22;
          v42 = _os_log_send_and_compose_impl(v36, 0, 0, 0, &_mh_execute_header, v39, 1, "%@:Starting Restore User Initiated, Priority = %ld", &v83, v81);
          if (v42)
          {
            v43 = v42;
            v44 = [NSString stringWithCString:v42 encoding:4];
            free(v43);
            v79 = v44;
            SSFileLog();
          }
        }

        v45 = [v24 restoreApplicationWithBundleID:self->_bundleID failed:self->_isFailed withQOS:25 context:0 error:{&v82, v79}];
      }

      else
      {
        v46 = +[SSLogConfig sharedDaemonConfig];
        if (!v46)
        {
          v46 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v47) = [v46 shouldLog];
        shouldLogToDisk3 = [v46 shouldLogToDisk];
        oSLogObject5 = [v46 OSLogObject];
        v50 = oSLogObject5;
        if (shouldLogToDisk3)
        {
          LODWORD(v47) = v47 | 2;
        }

        if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_INFO))
        {
          v47 = v47;
        }

        else
        {
          v47 &= 2u;
        }

        if (v47)
        {
          v51 = objc_opt_class();
          v52 = self->_priority;
          v83 = 138412546;
          v84 = v51;
          v85 = 2048;
          v86 = v52;
          LODWORD(v81) = 22;
          v53 = _os_log_send_and_compose_impl(v47, 0, 0, 0, &_mh_execute_header, v50, 1, "%@: Starting Restore Discretionary, Priority = %ld", &v83, v81);
          if (v53)
          {
            v54 = v53;
            v55 = [NSString stringWithCString:v53 encoding:4];
            free(v54);
            v80 = v55;
            SSFileLog();
          }
        }

        v45 = [v24 restoreApplicationWithBundleID:self->_bundleID failed:self->_isFailed error:{&v82, v80}];
      }

      if (v45)
      {
        dispatch_semaphore_wait(self->_semaphore, 0xFFFFFFFFFFFFFFFFLL);
        if ([(RestoreBackupOperation *)self isCancelled])
        {
          [v24 cancel];
        }
      }

      else
      {
        v56 = +[SSLogConfig sharedDaemonConfig];
        if (!v56)
        {
          v56 = +[SSLogConfig sharedConfig];
        }

        LODWORD(v57) = [v56 shouldLog];
        shouldLogToDisk4 = [v56 shouldLogToDisk];
        oSLogObject6 = [v56 OSLogObject];
        v60 = oSLogObject6;
        if (shouldLogToDisk4)
        {
          LODWORD(v57) = v57 | 2;
        }

        if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_DEFAULT))
        {
          v57 = v57;
        }

        else
        {
          v57 &= 2u;
        }

        if (v57)
        {
          v61 = objc_opt_class();
          v83 = 138412546;
          v84 = v61;
          v85 = 2112;
          v86 = v82;
          LODWORD(v81) = 22;
          v62 = _os_log_send_and_compose_impl(v57, 0, 0, 0, &_mh_execute_header, v60, 0, "%@: Could not begin restore: %@", &v83, v81);
          if (v62)
          {
            v63 = v62;
            v64 = [NSString stringWithCString:v62 encoding:4];
            free(v63);
            v76 = v64;
            SSFileLog();
          }
        }

        [(RestoreBackupOperation *)self setSuccess:0, v76];
        if (!v82)
        {
          SSError();
        }

        [(RestoreBackupOperation *)self setError:?];
      }

      [v24 setDelegate:0];

      if (([(RestoreBackupOperation *)self success]& 1) != 0 || [(RestoreBackupOperation *)self error])
      {
        break;
      }

      isCancelled = [(RestoreBackupOperation *)self isCancelled];
      v66 = v13++ > 3 ? 1 : isCancelled;
    }

    while ((v66 & 1) == 0);
  }

  else
  {
    [(RestoreBackupOperation *)self setSuccess:1];
    v67 = +[SSLogConfig sharedDaemonConfig];
    if (!v67)
    {
      v67 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v67 shouldLog];
    if ([v67 shouldLogToDisk])
    {
      LODWORD(v69) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v69) = shouldLog3;
    }

    oSLogObject7 = [v67 OSLogObject];
    if (os_log_type_enabled(oSLogObject7, OS_LOG_TYPE_INFO))
    {
      v69 = v69;
    }

    else
    {
      v69 &= 2u;
    }

    if (v69)
    {
      v71 = objc_opt_class();
      v72 = self->_bundleID;
      v73 = self->_isFailed;
      v83 = 138412802;
      v84 = v71;
      v85 = 2112;
      v86 = v72;
      v87 = 1024;
      LODWORD(v88) = v73;
      v74 = _os_log_send_and_compose_impl(v69, 0, 0, 0, &_mh_execute_header, oSLogObject7, 1, "%@: Restore data exists for bundleIdentifier: %@ after failure: %d", &v83, 28);
      if (v74)
      {
        v75 = v74;
        [NSString stringWithCString:v74 encoding:4];
        free(v75);
        SSFileLog();
      }
    }
  }
}

- (void)manager:(id)manager didFailBackupWithError:(id)error
{
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    bundleID = self->_bundleID;
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = bundleID;
    v20 = 2112;
    errorCopy = error;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Data backup failed: %@: %@", &v16, 32);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v15 = v14;
      SSFileLog();
    }
  }

  if (!error)
  {
    error = SSError();
  }

  [(RestoreBackupOperation *)self setError:error, v15];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)manager:(id)manager didFailRestoreWithError:(id)error
{
  v6 = +[SSLogConfig sharedDaemonConfig];
  if (!v6)
  {
    v6 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v6 shouldLog];
  if ([v6 shouldLogToDisk])
  {
    LODWORD(v8) = shouldLog | 2;
  }

  else
  {
    LODWORD(v8) = shouldLog;
  }

  oSLogObject = [v6 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v8;
  }

  else
  {
    v8 &= 2u;
  }

  if (v8)
  {
    v10 = objc_opt_class();
    bundleID = self->_bundleID;
    v16 = 138412802;
    v17 = v10;
    v18 = 2112;
    v19 = bundleID;
    v20 = 2112;
    errorCopy = error;
    v12 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Data restore failed: %@: %@", &v16, 32);
    if (v12)
    {
      v13 = v12;
      v14 = [NSString stringWithCString:v12 encoding:4];
      free(v13);
      v15 = v14;
      SSFileLog();
    }
  }

  if (!error)
  {
    error = SSError();
  }

  [(RestoreBackupOperation *)self setError:error, v15];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)manager:(id)manager didUpdateProgress:(float)progress estimatedTimeRemaining:(unint64_t)remaining
{
  v7 = [SSLogConfig sharedDaemonConfig:manager];
  if (!v7)
  {
    v7 = +[SSLogConfig sharedConfig];
  }

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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEBUG))
  {
    v9 = v9;
  }

  else
  {
    v9 &= 2u;
  }

  if (v9)
  {
    v16 = 138412546;
    v17 = objc_opt_class();
    v18 = 2048;
    progressCopy = progress;
    v11 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, oSLogObject, 2, "%@: Data restore did update progress: %.2f", &v16, 22);
    if (v11)
    {
      v12 = v11;
      v13 = [NSString stringWithCString:v11 encoding:4];
      free(v12);
      v15 = v13;
      SSFileLog();
    }
  }

  [(RestoreBackupOperation *)self lock];
  v14 = OBJC_IVAR___ISOperation__progress;
  [*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress] setCurrentValue:{(objc_msgSend(*&self->ISOperation_opaque[OBJC_IVAR___ISOperation__progress], "maxValue") * progress)}];
  [*&self->ISOperation_opaque[v14] snapshot];
  [(RestoreBackupOperation *)self unlock];
  [(RestoreBackupOperation *)self sendProgressToDelegate];
}

- (void)managerDidFinishBackup:(id)backup
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    bundleID = self->_bundleID;
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = bundleID;
    v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Data restore finished: %@", &v14, 22);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v13 = v12;
      SSFileLog();
    }
  }

  [(RestoreBackupOperation *)self setSuccess:1, v13];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)managerDidFinishRestore:(id)restore
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    bundleID = self->_bundleID;
    v14 = 138412546;
    v15 = v8;
    v16 = 2112;
    v17 = bundleID;
    v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "%@: Data restore finished: %@", &v14, 22);
    if (v10)
    {
      v11 = v10;
      v12 = [NSString stringWithCString:v10 encoding:4];
      free(v11);
      v13 = v12;
      SSFileLog();
    }
  }

  [(RestoreBackupOperation *)self setSuccess:1, v13];
  dispatch_semaphore_signal(self->_semaphore);
}

- (void)managerDidLoseConnectionToService:(id)service
{
  v4 = +[SSLogConfig sharedDaemonConfig];
  if (!v4)
  {
    v4 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v4 shouldLog];
  if ([v4 shouldLogToDisk])
  {
    LODWORD(v6) = shouldLog | 2;
  }

  else
  {
    LODWORD(v6) = shouldLog;
  }

  oSLogObject = [v4 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v6;
  }

  else
  {
    v6 &= 2u;
  }

  if (v6)
  {
    v8 = objc_opt_class();
    bundleID = self->_bundleID;
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = bundleID;
    v10 = _os_log_send_and_compose_impl(v6, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%@: Data restore lost connection: %@", &v12, 22);
    if (v10)
    {
      v11 = v10;
      [NSString stringWithCString:v10 encoding:4];
      free(v11);
      SSFileLog();
    }
  }

  dispatch_semaphore_signal(self->_semaphore);
}

@end