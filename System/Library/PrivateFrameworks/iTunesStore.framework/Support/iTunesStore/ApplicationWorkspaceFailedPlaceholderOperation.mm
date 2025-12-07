@interface ApplicationWorkspaceFailedPlaceholderOperation
- (void)runWithCompletionBlock:(id)block;
@end

@implementation ApplicationWorkspaceFailedPlaceholderOperation

- (void)runWithCompletionBlock:(id)block
{
  v5 = +[SSLogConfig sharedDaemonConfig];
  if (!v5)
  {
    v5 = +[SSLogConfig sharedConfig];
  }

  shouldLog = [v5 shouldLog];
  if ([v5 shouldLogToDisk])
  {
    LODWORD(v7) = shouldLog | 2;
  }

  else
  {
    LODWORD(v7) = shouldLog;
  }

  oSLogObject = [v5 OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v20 = 138412546;
    v21 = objc_opt_class();
    v22 = 2112;
    applicationHandle = [(ApplicationWorkspaceOperation *)self applicationHandle];
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 1, "[%@]: Failed Placeholder for %@", &v20, 22);
    if (v9)
    {
      v10 = v9;
      v11 = [NSString stringWithCString:v9 encoding:4];
      free(v10);
      v19 = v11;
      SSFileLog();
    }
  }

  bundleID = [(ApplicationHandle *)[(ApplicationWorkspaceOperation *)self applicationHandle] bundleID];
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  if (![(ApplicationWorkspaceOperation *)self applicationIsInstalled:bundleID])
  {
    goto LABEL_20;
  }

  v14 = [LSApplicationProxy applicationProxyForIdentifier:bundleID placeholder:1];
  if (!v14)
  {
    goto LABEL_23;
  }

  v15 = v14;
  v16 = [v13 installProgressForApplication:v14 withPhase:0];
  if ([v16 installState] != 4)
  {
    [v16 setInstallState:4];
  }

  if ([v13 installPhaseFinishedForProgress:v16])
  {
    goto LABEL_20;
  }

  v17 = [v13 installProgressForApplication:v15 withPhase:0];
  if ([v17 installState] != 4)
  {
    [v17 setInstallState:4];
  }

  if ([v13 installPhaseFinishedForProgress:v17])
  {
LABEL_20:
    [ApplicationWorkspaceState completeNotificationForFailedBundleIdentifier:bundleID];
    v18 = 1;
    if (!block)
    {
      return;
    }
  }

  else
  {
LABEL_23:
    v18 = 0;
    if (!block)
    {
      return;
    }
  }

  (*(block + 2))(block, v18, 0, 0);
}

@end