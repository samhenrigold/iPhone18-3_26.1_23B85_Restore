@interface SubCalAgent
- (NSString)onBehalfOfBundleIdentifier;
- (NSString)scheduleIdentifier;
- (void)accountDidCompleteRefresh:(id)refresh withError:(id)error;
- (void)refreshCollections:(id)collections withReason:(int)reason;
- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block;
- (void)startMonitoring;
- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested;
@end

@implementation SubCalAgent

- (void)startMonitoring
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v3, v4))
  {
    v9 = 138412290;
    v10 = objc_opt_class();
    v5 = v10;
    _os_log_impl(&dword_0, v3, v4, "%@ asked to start monitoring", &v9, 0xCu);
  }

  [(SubCalAgent *)self setIsMonitoring:1];
  account = [(SubCalAgent *)self account];
  [account setDelegate:self];

  account2 = [(SubCalAgent *)self account];
  [account2 monitorFoldersWithIDs:0];

  v8 = +[DARefreshManager sharedManager];
  [v8 registerDelegate:self];
}

- (void)requestAgentStopMonitoringWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[6];
  if (os_log_type_enabled(v5, v6))
  {
    v10 = 138412290;
    v11 = objc_opt_class();
    v7 = v11;
    _os_log_impl(&dword_0, v5, v6, "%@ asked to stop monitoring", &v10, 0xCu);
  }

  account = [(SubCalAgent *)self account];
  [account stopMonitoringFolders];

  [(SubCalAgent *)self setIsMonitoring:0];
  [(SubCalAgent *)self stopObservingReachability];
  v9 = +[DARefreshManager sharedManager];
  [v9 unregisterDelegate:self];

  blockCopy[2](blockCopy, self);
}

- (void)syncFolderIDs:(id)ds forDataclasses:(int64_t)dataclasses isUserRequested:(BOOL)requested
{
  requestedCopy = requested;
  dataclassesCopy = dataclasses;
  if ([(SubCalAgent *)self isMonitoring])
  {
    account = [(SubCalAgent *)self account];
    isManagedCalendar = [account isManagedCalendar];

    if (isManagedCalendar)
    {
      v10 = DALoggingwithCategory();
      v11 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v10, v11))
      {
        account2 = [(SubCalAgent *)self account];
        subscriptionURL = [account2 subscriptionURL];
        *buf = 138412290;
        v23 = subscriptionURL;
        _os_log_impl(&dword_0, v10, v11, "Ignoring refresh for calendar %@ because it is managed by a CalDAV server", buf, 0xCu);
      }

LABEL_10:

      return;
    }

    if (requestedCopy)
    {
      account3 = [(SubCalAgent *)self account];
      [account3 setWasUserInitiated:1];
    }

    account4 = [(SubCalAgent *)self account];
    shouldFailAllTasks = [account4 shouldFailAllTasks];

    if (shouldFailAllTasks)
    {
      v10 = DALoggingwithCategory();
      v17 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v10, v17))
      {
        account5 = [(SubCalAgent *)self account];
        accountDescription = [account5 accountDescription];
        publicDescription = [(SubCalAgent *)self publicDescription];
        *buf = 138412546;
        v23 = accountDescription;
        v24 = 2114;
        v25 = publicDescription;
        _os_log_impl(&dword_0, v10, v17, "Account %@ (%{public}@) thinks it should fail all tasks.  Doing so", buf, 0x16u);
      }

      goto LABEL_10;
    }

    if ((dataclassesCopy & 4) != 0)
    {
      account6 = [(SubCalAgent *)self account];
      [account6 refreshAllCalendars:requestedCopy];
    }
  }
}

- (void)accountDidCompleteRefresh:(id)refresh withError:(id)error
{
  refreshCopy = refresh;
  errorCopy = error;
  if ([errorCopy isSubCalReachabilityError])
  {
    v8 = DALoggingwithCategory();
    v9 = _CPLog_to_os_log_type[6];
    if (os_log_type_enabled(v8, v9))
    {
      account = [(SubCalAgent *)self account];
      LODWORD(buf) = 138412290;
      *(&buf + 4) = account;
      _os_log_impl(&dword_0, v8, v9, "Account %@ couldn't reach the server. Monitoring for reachability.", &buf, 0xCu);
    }

    [(SubCalAgent *)self setSyncWhenReachable:1];
    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x3032000000;
    v15 = sub_489C;
    v16 = sub_48AC;
    selfCopy = self;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_48B4;
    v12[3] = &unk_1C508;
    v12[4] = &buf;
    [(SubCalAgent *)selfCopy observeReachabilityWithBlock:v12];
    _Block_object_dispose(&buf, 8);
  }

  else
  {
    [(SubCalAgent *)self setSyncWhenReachable:0];
  }

  v11 = +[DARefreshManager sharedManager];
  [v11 delegateDidCompleteRefresh:self];
}

- (void)refreshCollections:(id)collections withReason:(int)reason
{
  allObjects = [collections allObjects];
  [(SubCalAgent *)self syncFolderIDs:allObjects forDataclasses:4 isUserRequested:reason == 3];
}

- (NSString)scheduleIdentifier
{
  account = [(SubCalAgent *)self account];
  scheduleIdentifier = [account scheduleIdentifier];

  return scheduleIdentifier;
}

- (NSString)onBehalfOfBundleIdentifier
{
  account = [(SubCalAgent *)self account];
  onBehalfOfBundleIdentifier = [account onBehalfOfBundleIdentifier];

  return onBehalfOfBundleIdentifier;
}

@end