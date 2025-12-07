@interface ApplicationWorkspaceFinishOperation
- (ApplicationWorkspaceFinishOperation)initWithApplicationHandle:(id)handle isPlaceholderRestore:(BOOL)restore;
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceFinishOperation

- (ApplicationWorkspaceFinishOperation)initWithApplicationHandle:(id)handle isPlaceholderRestore:(BOOL)restore
{
  v6.receiver = self;
  v6.super_class = ApplicationWorkspaceFinishOperation;
  result = [(ApplicationWorkspaceOperation *)&v6 initWithApplicationHandle:handle];
  if (result)
  {
    result->_isPlaceholderRestore = restore;
  }

  return result;
}

- (void)runWithCompletionBlock:(id)block
{
  bundleID = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  v6 = +[LSApplicationWorkspace defaultWorkspace];
  isPlaceholderRestore = self->_isPlaceholderRestore;
  v8 = +[SSLogConfig sharedDaemonConfig];
  v9 = v8;
  if (isPlaceholderRestore)
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v11) = shouldLog | 2;
    }

    else
    {
      LODWORD(v11) = shouldLog;
    }

    oSLogObject = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v11;
    }

    else
    {
      v11 &= 2u;
    }

    if (v11)
    {
      *v37 = 138412290;
      *&v37[4] = [(ApplicationWorkspaceOperation *)self applicationHandle];
      v13 = _os_log_send_and_compose_impl(v11, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[ApplicationWorkspace]: Restoring placeholder for %@", v37, 12, *v37, *&v37[8]);
      goto LABEL_22;
    }
  }

  else
  {
    if (!v8)
    {
      v9 = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [v9 shouldLog];
    if ([v9 shouldLogToDisk])
    {
      LODWORD(v15) = shouldLog2 | 2;
    }

    else
    {
      LODWORD(v15) = shouldLog2;
    }

    oSLogObject2 = [v9 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v15 = v15;
    }

    else
    {
      v15 &= 2u;
    }

    if (v15)
    {
      *v37 = 138412290;
      *&v37[4] = [(ApplicationWorkspaceOperation *)self applicationHandle];
      v13 = _os_log_send_and_compose_impl(v15, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[ApplicationWorkspace]: Updating placeholder for %@", v37, 12, *v37, *&v37[8]);
LABEL_22:
      if (v13)
      {
        v17 = v13;
        v18 = [NSString stringWithCString:v13 encoding:4];
        free(v17);
        v35 = v18;
        SSFileLog();
      }
    }
  }

  if ([(ApplicationWorkspaceOperation *)self applicationIsInstalled:bundleID, v35])
  {
    v19 = [LSApplicationProxy applicationProxyForIdentifier:bundleID placeholder:1];
    if (v19)
    {
      v20 = [v6 installProgressForApplication:v19 withPhase:0];
      if ([v20 installState] != 5)
      {
        [v20 setCompletedUnitCount:1];
        [v20 setInstallState:5];
        [v20 setTotalUnitCount:1];
      }

      if ([v6 installPhaseFinishedForProgress:v20])
      {
        v19 = 1;
      }

      else
      {
        v27 = [v6 installProgressForApplication:v19 withPhase:0];
        if ([v27 installState] != 5)
        {
          [v27 setCompletedUnitCount:1];
          [v27 setInstallState:5];
          [v27 setTotalUnitCount:1];
        }

        v19 = [v6 installPhaseFinishedForProgress:v27];
      }

      v28 = +[SSLogConfig sharedDaemonConfig];
      if (!v28)
      {
        v28 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v28 shouldLog];
      LODWORD(v30) = [v28 shouldLogToDisk] ? shouldLog3 | 2 : shouldLog3;
      oSLogObject3 = [v28 OSLogObject];
      v30 = os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_DEFAULT) ? v30 : v30 & 2u;
      if (v30)
      {
        v32 = self->_isPlaceholderRestore ? @"restored" : @"updated";
        applicationHandle = [(ApplicationWorkspaceOperation *)self applicationHandle];
        *v37 = 138412802;
        *&v37[4] = v32;
        *&v37[12] = 2112;
        *&v37[14] = applicationHandle;
        v38 = 1024;
        v39 = v19;
        LODWORD(v36) = 28;
        v26 = _os_log_send_and_compose_impl(v30, 0, 0, 0, &_mh_execute_header, oSLogObject3, 0, "[ApplicationWorkspace]: Placeholder %@ for %@ success: %d", v37, v36);
        if (v26)
        {
LABEL_58:
          v34 = v26;
          [NSString stringWithCString:v26 encoding:4];
          free(v34);
          SSFileLog();
        }
      }
    }
  }

  else
  {
    v21 = +[SSLogConfig sharedDaemonConfig];
    if (!v21)
    {
      v21 = +[SSLogConfig sharedConfig];
    }

    shouldLog4 = [v21 shouldLog];
    if ([v21 shouldLogToDisk])
    {
      LODWORD(v23) = shouldLog4 | 2;
    }

    else
    {
      LODWORD(v23) = shouldLog4;
    }

    oSLogObject4 = [v21 OSLogObject];
    if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v23;
    }

    else
    {
      v23 &= 2u;
    }

    if (!v23)
    {
      v19 = 0;
      goto LABEL_59;
    }

    applicationHandle2 = [(ApplicationWorkspaceOperation *)self applicationHandle];
    *v37 = 138412290;
    *&v37[4] = applicationHandle2;
    LODWORD(v36) = 12;
    v26 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject4, 0, "[ApplicationWorkspace]: Placeholder not installed for %@ because application not installed", v37, v36);
    v19 = 0;
    if (v26)
    {
      goto LABEL_58;
    }
  }

LABEL_59:
  if (block)
  {
    (*(block + 2))(block, v19, 0, 0);
  }
}

@end