@interface ApplicationWorkspaceClearProgressOperation
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceClearProgressOperation

- (void)runWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[LSApplicationWorkspace defaultWorkspace];
  applicationHandle = [(ApplicationWorkspaceOperation *)self applicationHandle];
  bundleID = [applicationHandle bundleID];
  v8 = [(ApplicationWorkspaceOperation *)self applicationIsInstalled:bundleID];

  if (v8)
  {
    v9 = [LSApplicationProxy applicationProxyForIdentifier:self->_bundleID placeholder:1];
    if (![v9 foundBackingBundle])
    {
      goto LABEL_40;
    }

    v10 = [v5 installProgressForApplication:v9 withPhase:0];
    oSLogObject2 = v10;
    if (v10)
    {
      [v10 cancel];
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        LODWORD(v14) = shouldLog | 2;
      }

      else
      {
        LODWORD(v14) = shouldLog;
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v14;
      }

      else
      {
        v14 &= 2u;
      }

      if (!v14)
      {
        goto LABEL_37;
      }

      applicationHandle2 = [(ApplicationWorkspaceOperation *)self applicationHandle];
      *v25 = 138412546;
      *&v25[4] = applicationHandle2;
      *&v25[12] = 2112;
      *&v25[14] = oSLogObject2;
      v17 = _os_log_send_and_compose_impl(v14, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[ApplicationWorkspace]: Cancelled progress for %@ progress: %@", v25, 22, *v25, *&v25[8]);
    }

    else
    {
      v12 = +[SSLogConfig sharedDaemonConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        LODWORD(v23) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v23) = shouldLog2;
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v23;
      }

      else
      {
        v23 &= 2u;
      }

      if (!v23)
      {
        goto LABEL_37;
      }

      applicationHandle2 = [(ApplicationWorkspaceOperation *)self applicationHandle];
      *v25 = 138412546;
      *&v25[4] = applicationHandle2;
      *&v25[12] = 2112;
      *&v25[14] = 0;
      v17 = _os_log_send_and_compose_impl(v23, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[ApplicationWorkspace]: Could not find progress to cancel for %@ progress: %@", v25, 22, *v25, *&v25[8]);
    }

    v24 = v17;

    if (!v24)
    {
LABEL_38:

      goto LABEL_39;
    }

    oSLogObject = [NSString stringWithCString:v24 encoding:4];
    free(v24);
    SSFileLog();
LABEL_37:

    goto LABEL_38;
  }

  v9 = +[SSLogConfig sharedDaemonConfig];
  if (!v9)
  {
    v9 = +[SSLogConfig sharedConfig];
  }

  shouldLog3 = [v9 shouldLog];
  if ([v9 shouldLogToDisk])
  {
    LODWORD(v19) = shouldLog3 | 2;
  }

  else
  {
    LODWORD(v19) = shouldLog3;
  }

  oSLogObject2 = [v9 OSLogObject];
  if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
  {
    v19 = v19;
  }

  else
  {
    v19 &= 2u;
  }

  if (v19)
  {
    applicationHandle3 = [(ApplicationWorkspaceOperation *)self applicationHandle];
    *v25 = 138412290;
    *&v25[4] = applicationHandle3;
    v21 = _os_log_send_and_compose_impl(v19, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[ApplicationWorkspace]: No placeholder with progress to cancel, skipping uninstall: %@", v25, 12);

    if (!v21)
    {
      goto LABEL_40;
    }

    oSLogObject2 = [NSString stringWithCString:v21 encoding:4];
    free(v21);
    SSFileLog();
  }

LABEL_39:

LABEL_40:
  if (blockCopy)
  {
    (*(blockCopy + 2))(blockCopy, v8 ^ 1, 0, 0);
  }
}

@end