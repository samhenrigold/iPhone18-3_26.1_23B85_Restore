@interface ApplicationWorkspaceState
+ (BOOL)_completeNotification:(id)notification bundleIdentifier:(id)identifier;
+ (BOOL)_incompleteNotification:(id)notification forDownload:(int64_t)download bundleIdentifier:(id)identifier;
@end

@implementation ApplicationWorkspaceState

+ (BOOL)_completeNotification:(id)notification bundleIdentifier:(id)identifier
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
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
  {
    v7 = v7;
  }

  else
  {
    v7 &= 2u;
  }

  if (v7)
  {
    v12 = 138412546;
    v13 = objc_opt_class();
    v14 = 2112;
    identifierCopy = identifier;
    v9 = _os_log_send_and_compose_impl(v7, 0, 0, 0, &_mh_execute_header, oSLogObject, 16, "[%@] Ignoring complete notification for %@ because appstored is enabled", &v12, 22);
    if (v9)
    {
      v10 = v9;
      [NSString stringWithCString:v9 encoding:4];
      free(v10);
      SSFileLog();
    }
  }

  return 0;
}

+ (BOOL)_incompleteNotification:(id)notification forDownload:(int64_t)download bundleIdentifier:(id)identifier
{
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  if (SSDebugShouldUseAppstored())
  {
    v8 = +[SSLogConfig sharedDaemonConfig];
    if (!v8)
    {
      v8 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v9) = [v8 shouldLog];
    shouldLogToDisk = [v8 shouldLogToDisk];
    oSLogObject = [v8 OSLogObject];
    v12 = oSLogObject;
    if (shouldLogToDisk)
    {
      LODWORD(v9) = v9 | 2;
    }

    if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
    {
      v9 = v9;
    }

    else
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v13 = objc_opt_class();
      v14 = +[SSStackShot generateSymbolicatedStackShot];
      v33 = 138412802;
      v34 = v13;
      v35 = 2048;
      notificationCopy = download;
      v37 = 2112;
      identifierCopy = v14;
      v15 = _os_log_send_and_compose_impl(v9, 0, 0, 0, &_mh_execute_header, v12, 16, "[%@] Ignoring incomplete notification for %lld because appstored is enabled: %@", &v33, 32);
      if (v15)
      {
        v16 = v15;
        [NSString stringWithCString:v15 encoding:4];
        free(v16);
        SSFileLog();
      }
    }
  }

  else
  {
    v17 = +[SSLogConfig sharedDaemonConfig];
    if (!v17)
    {
      v17 = +[SSLogConfig sharedConfig];
    }

    LODWORD(v18) = [v17 shouldLog];
    shouldLogToDisk2 = [v17 shouldLogToDisk];
    oSLogObject2 = [v17 OSLogObject];
    v21 = oSLogObject2;
    if (shouldLogToDisk2)
    {
      LODWORD(v18) = v18 | 2;
    }

    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_INFO))
    {
      v18 = v18;
    }

    else
    {
      v18 &= 2u;
    }

    if (v18)
    {
      v22 = objc_opt_class();
      v33 = 138412802;
      v34 = v22;
      v35 = 2112;
      notificationCopy = notification;
      v37 = 2112;
      identifierCopy = identifier;
      v23 = _os_log_send_and_compose_impl(v18, 0, 0, 0, &_mh_execute_header, v21, 1, "[%@] Requesting [%@] Notification: [%@]", &v33, 32);
      if (v23)
      {
        v24 = v23;
        [NSString stringWithCString:v23 encoding:4];
        free(v24);
        SSFileLog();
      }
    }

    v25 = objc_autoreleasePoolPush();
    if ([identifier length])
    {
      v28[0] = _NSConcreteStackBlock;
      v28[1] = 3221225472;
      v28[2] = sub_1000CDDB4;
      v28[3] = &unk_100328120;
      v28[4] = identifier;
      v28[5] = notification;
      v28[6] = &v29;
      v28[7] = download;
      [+[DownloadsDatabase downloadsDatabase](DownloadsDatabase "downloadsDatabase")];
    }

    objc_autoreleasePoolPop(v25);
  }

  v26 = *(v30 + 24);
  _Block_object_dispose(&v29, 8);
  return v26;
}

@end