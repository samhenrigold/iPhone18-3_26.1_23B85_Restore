@interface _LSDAppProtectionClient
+ (id)hiddenApplicationsForLSDUseOnly;
+ (id)lockedApplicationsForLSDUseOnly;
+ (void)cleanupDeletedApplication:(id)application;
- (_LSDAppProtectionClient)initWithXPCConnection:(id)connection;
- (void)getHiddenApplicationsWithCompletion:(id)completion;
- (void)getLockedApplicationsWithCompletion:(id)completion;
- (void)sendPluginNotificationsFor:(id)for notification:(id)notification;
- (void)setHiddenApplications:(id)applications completion:(id)completion;
- (void)setLockedApplications:(id)applications completion:(id)completion;
@end

@implementation _LSDAppProtectionClient

- (_LSDAppProtectionClient)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v5 = getAppProtectionServiceQueue(connectionCopy);
  [connectionCopy _setQueue:v5];

  v8.receiver = self;
  v8.super_class = _LSDAppProtectionClient;
  v6 = [(_LSDClient *)&v8 initWithXPCConnection:connectionCopy];

  return v6;
}

- (void)setHiddenApplications:(id)applications completion:(id)completion
{
  v28 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  completionCopy = completion;
  _LSAssertRunningInServer("[_LSDAppProtectionClient setHiddenApplications:completion:]", v8);
  v9 = MEMORY[0x1E695DF90];
  v10 = +[_LSDAppProtectionAccessManager sharedInstance];
  v26 = 0;
  v11 = [v10 readFromDBWithError:&v26];
  v12 = v26;
  v13 = [v9 dictionaryWithDictionary:v11];

  if (v12)
  {
    v15 = _LSAppProtectionLog(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [_LSDAppProtectionClient setHiddenApplications:completion:];
    }

    completionCopy[2](completionCopy, v12);
  }

  else
  {
    v16 = [v13 objectForKey:@"hiddenBundleIDs"];
    v24 = 0;
    v25 = 0;
    computeAddedAndRemovedBundleIDs(&v25, &v24, v16, applicationsCopy);
    v17 = v25;
    v18 = v24;
    v19 = _LSAppProtectionLog(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      -[_LSDAppProtectionClient setHiddenApplications:completion:].cold.2(v27, [v17 count], objc_msgSend(v18, "count"));
    }

    [v13 setObject:applicationsCopy forKey:@"hiddenBundleIDs"];
    v20 = +[_LSDAppProtectionAccessManager sharedInstance];
    v12 = [v20 writeToDB:v13];

    if (v12)
    {
      v22 = _LSAppProtectionLog(v21);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [_LSDAppProtectionClient setHiddenApplications:completion:];
      }

      completionCopy[2](completionCopy, v12);
    }

    else
    {
      v23 = 0;
      notifyLSObservers(v17, v18, 1, &v23);
      v12 = v23;
      [(_LSDAppProtectionClient *)self sendPluginNotificationsFor:v17 notification:@"com.apple.LaunchServices.pluginsunregistered"];
      [(_LSDAppProtectionClient *)self sendPluginNotificationsFor:v18 notification:@"com.apple.LaunchServices.pluginsregistered"];
      completionCopy[2](completionCopy, v12);
    }
  }
}

- (void)setLockedApplications:(id)applications completion:(id)completion
{
  v27 = *MEMORY[0x1E69E9840];
  applicationsCopy = applications;
  completionCopy = completion;
  _LSAssertRunningInServer("[_LSDAppProtectionClient setLockedApplications:completion:]", v7);
  v8 = MEMORY[0x1E695DF90];
  v9 = +[_LSDAppProtectionAccessManager sharedInstance];
  v25 = 0;
  v10 = [v9 readFromDBWithError:&v25];
  v11 = v25;
  v12 = [v8 dictionaryWithDictionary:v10];

  if (v11)
  {
    v14 = _LSAppProtectionLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_LSDAppProtectionClient setHiddenApplications:completion:];
    }

    completionCopy[2](completionCopy, v11);
  }

  else
  {
    v15 = [v12 objectForKey:@"lockedBundleIDs"];
    v23 = 0;
    v24 = 0;
    computeAddedAndRemovedBundleIDs(&v24, &v23, v15, applicationsCopy);
    v16 = v24;
    v17 = v23;
    v18 = _LSAppProtectionLog(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      -[_LSDAppProtectionClient setLockedApplications:completion:].cold.2(v26, [v16 count], objc_msgSend(v17, "count"));
    }

    [v12 setObject:applicationsCopy forKey:@"lockedBundleIDs"];
    v19 = +[_LSDAppProtectionAccessManager sharedInstance];
    v11 = [v19 writeToDB:v12];

    if (v11)
    {
      v21 = _LSAppProtectionLog(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [_LSDAppProtectionClient setHiddenApplications:completion:];
      }

      completionCopy[2](completionCopy, v11);
    }

    else
    {
      v22 = 0;
      notifyLSObservers(v16, v17, 0, &v22);
      v11 = v22;
      completionCopy[2](completionCopy, v11);
    }
  }
}

+ (void)cleanupDeletedApplication:(id)application
{
  applicationCopy = application;
  _LSAssertRunningInServer("+[_LSDAppProtectionClient cleanupDeletedApplication:]", v4);
  v5 = MEMORY[0x1E695DF90];
  v6 = +[_LSDAppProtectionAccessManager sharedInstance];
  v21 = 0;
  v7 = [v6 readFromDBWithError:&v21];
  v8 = v21;
  v9 = [v5 dictionaryWithDictionary:v7];

  if (!v8)
  {
    v11 = [v9 objectForKey:@"lockedBundleIDs"];
    v12 = [v11 ls_caseInsensitiveContainsString:applicationCopy];
    if (v12)
    {
      applicationCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF !=[c] %@", applicationCopy];
      v14 = [v11 filteredArrayUsingPredicate:applicationCopy];
      [v9 setObject:v14 forKey:@"lockedBundleIDs"];
    }

    v15 = [v9 objectForKey:@"hiddenBundleIDs"];
    if ([v15 ls_caseInsensitiveContainsString:applicationCopy])
    {
      applicationCopy2 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF !=[c] %@", applicationCopy];
      v17 = [v15 filteredArrayUsingPredicate:applicationCopy2];
      [v9 setObject:v17 forKey:@"hiddenBundleIDs"];
    }

    else if (!v12)
    {
      v8 = 0;
LABEL_14:

      goto LABEL_15;
    }

    v18 = +[_LSDAppProtectionAccessManager sharedInstance];
    v8 = [v18 writeToDB:v9];

    if (v8)
    {
      v20 = _LSAppProtectionLog(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        +[_LSDAppProtectionClient cleanupDeletedApplication:];
      }
    }

    goto LABEL_14;
  }

  v11 = _LSAppProtectionLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    +[_LSDAppProtectionClient cleanupDeletedApplication:];
  }

LABEL_15:
}

+ (id)hiddenApplicationsForLSDUseOnly
{
  _LSAssertRunningInServer("+[_LSDAppProtectionClient hiddenApplicationsForLSDUseOnly]", a2);
  v2 = +[_LSDAppProtectionAccessManager sharedInstance];
  v3 = [v2 readFromDBWithError:0];
  v4 = [v3 objectForKey:@"hiddenBundleIDs"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

+ (id)lockedApplicationsForLSDUseOnly
{
  _LSAssertRunningInServer("+[_LSDAppProtectionClient lockedApplicationsForLSDUseOnly]", a2);
  v2 = +[_LSDAppProtectionAccessManager sharedInstance];
  v3 = [v2 readFromDBWithError:0];
  v4 = [v3 objectForKey:@"lockedBundleIDs"];

  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

- (void)getHiddenApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  _LSAssertRunningInServer("[_LSDAppProtectionClient getHiddenApplicationsWithCompletion:]", v3);
  v4 = +[_LSDAppProtectionClient hiddenApplicationsForLSDUseOnly];
  completionCopy[2](completionCopy, v4);
}

- (void)getLockedApplicationsWithCompletion:(id)completion
{
  completionCopy = completion;
  _LSAssertRunningInServer("[_LSDAppProtectionClient getLockedApplicationsWithCompletion:]", v3);
  v4 = +[_LSDAppProtectionClient lockedApplicationsForLSDUseOnly];
  completionCopy[2](completionCopy, v4);
}

- (void)sendPluginNotificationsFor:(id)for notification:(id)notification
{
  forCopy = for;
  notificationCopy = notification;
  if ([forCopy count])
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = +[LSDBExecutionContext sharedServerInstance];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __67___LSDAppProtectionClient_sendPluginNotificationsFor_notification___block_invoke;
    v10[3] = &unk_1E6A1B910;
    v11 = forCopy;
    v9 = v7;
    v12 = v9;
    v13 = notificationCopy;
    [(LSDBExecutionContext *)v8 performAsyncRead:v10];
  }
}

@end