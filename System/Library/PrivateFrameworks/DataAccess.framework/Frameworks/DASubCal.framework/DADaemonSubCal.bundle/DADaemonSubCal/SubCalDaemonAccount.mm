@interface SubCalDaemonAccount
+ (BOOL)isBadPasswordError:(id)error;
- (BOOL)_calendarExistsOnParent;
- (BOOL)monitorFoldersWithIDs:(id)ds;
- (BOOL)shouldRefreshSubCalForCalendar:(id)calendar;
- (SubCalDaemonAccountDelegate)delegate;
- (id)changeTrackingID;
- (id)sourceExternalId;
- (void)_refresh:(BOOL)_refresh;
- (void)refreshAllCalendars:(BOOL)calendars;
- (void)stopMonitoringFolders;
- (void)subCalRefreshTask:(id)task didRedirectToURL:(id)l;
- (void)subCalRefreshTask:(id)task finishedWithError:(id)error;
- (void)subCalRefreshTask:(id)task needsUsernamePasswordForHost:(id)host continuation:(id)continuation;
@end

@implementation SubCalDaemonAccount

- (id)changeTrackingID
{
  backingAccountInfo = [(SubCalDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (parentAccount)
  {
    backingAccountInfo2 = [(SubCalDaemonAccount *)self backingAccountInfo];
    parentAccount2 = [backingAccountInfo2 parentAccount];
    identifier = [parentAccount2 identifier];
    changeTrackingID = [NSString stringWithFormat:@"com.apple.dataaccessd-%@", identifier];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = SubCalDaemonAccount;
    changeTrackingID = [(SubCalDaemonAccount *)&v10 changeTrackingID];
  }

  return changeTrackingID;
}

- (id)sourceExternalId
{
  backingAccountInfo = [(SubCalDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (parentAccount)
  {
    backingAccountInfo2 = [(SubCalDaemonAccount *)self backingAccountInfo];
    parentAccount2 = [backingAccountInfo2 parentAccount];
    identifier = [parentAccount2 identifier];
  }

  else
  {
    identifier = kSubCalCalendarStoreExternalId;
  }

  return identifier;
}

- (BOOL)_calendarExistsOnParent
{
  backingAccountInfo = [(SubCalDaemonAccount *)self backingAccountInfo];
  parentAccount = [backingAccountInfo parentAccount];

  if (!parentAccount)
  {
    return 1;
  }

  backingAccountInfo2 = [(SubCalDaemonAccount *)self backingAccountInfo];
  parentAccount2 = [backingAccountInfo2 parentAccount];
  v7 = +[DASharedAccountProperties CalDAVSubscribedCalendarsKey];
  v8 = [parentAccount2 objectForKeyedSubscript:v7];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  allKeys = [v8 allKeys];
  v10 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    while (2)
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(allKeys);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        calDAVURLPath = [(SubCalDaemonAccount *)self calDAVURLPath];
        LOBYTE(v14) = [v14 isEqualToString:calDAVURLPath];

        if (v14)
        {
          v16 = 1;
          goto LABEL_12;
        }
      }

      v11 = [allKeys countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

- (BOOL)shouldRefreshSubCalForCalendar:(id)calendar
{
  calendarCopy = calendar;
  subcalURL = [calendarCopy subcalURL];
  lowercaseString = [subcalURL lowercaseString];
  v6 = [lowercaseString containsString:@".icloud.com/holidays/cn_zh.ics"];

  LODWORD(subcalURL) = [calendarCopy migrationVersion];
  if (subcalURL < 2)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

- (void)_refresh:(BOOL)_refresh
{
  if (([(SubCalDaemonAccount *)self isManagedCalendar]& 1) == 0)
  {
    taskManager = [(SubCalDaemonAccount *)self taskManager];
    allTasks = [taskManager allTasks];
    v6 = [allTasks count];

    if (v6)
    {
      v7 = DALoggingwithCategory();
      v8 = _CPLog_to_os_log_type[6];
      if (os_log_type_enabled(v7, v8))
      {
        accountID = [(SubCalDaemonAccount *)self accountID];
        *buf = 138543362;
        v54 = accountID;
        _os_log_impl(&dword_0, v7, v8, "Ignoring request, already refreshing account with ID %{public}@", buf, 0xCu);
      }

LABEL_33:

      return;
    }

    taskManager2 = [(SubCalDaemonAccount *)self taskManager];
    isShutdown = [taskManager2 isShutdown];

    if (isShutdown)
    {
      return;
    }

    _calendarExistsOnParent = [(SubCalDaemonAccount *)self _calendarExistsOnParent];
    v13 = DALoggingwithCategory();
    v7 = v13;
    if ((_calendarExistsOnParent & 1) == 0)
    {
      v26 = _CPLog_to_os_log_type[4];
      if (os_log_type_enabled(v13, v26))
      {
        calDAVURLPath = [(SubCalDaemonAccount *)self calDAVURLPath];
        accountID2 = [(SubCalDaemonAccount *)self accountID];
        *buf = 138412546;
        v54 = calDAVURLPath;
        v55 = 2114;
        v56 = accountID2;
        _os_log_impl(&dword_0, v7, v26, "The parent account doesn't know about the subscribed calendar at %@ (account %{public}@). Skipping refresh.", buf, 0x16u);
      }

      goto LABEL_33;
    }

    v14 = _CPLog_to_os_log_type[5];
    if (os_log_type_enabled(v13, v14))
    {
      accountID3 = [(SubCalDaemonAccount *)self accountID];
      *buf = 138543362;
      v54 = accountID3;
      _os_log_impl(&dword_0, v7, v14, "Refreshing Subscribed Calendar account with ID %{public}@", buf, 0xCu);
    }

    changeTrackingID = [(SubCalDaemonAccount *)self changeTrackingID];
    v7 = [SubCalLocalDBHelper eventStoreWithClientId:changeTrackingID];

    calendarExternalId = [(SubCalDaemonAccount *)self calendarExternalId];
    v18 = [v7 calendarWithExternalID:calendarExternalId];

    if (!v18 || ![(SubCalDaemonAccount *)self shouldRefreshSubCalForCalendar:v18])
    {
LABEL_23:
      subscriptionURL = [(SubCalDaemonAccount *)self subscriptionURL];
      v31 = objc_opt_new();
      statusReport = [(SubCalDaemonAccount *)self statusReport];
      [v31 setStatusReport:statusReport];

      [v31 setDelegate:self];
      [v31 setSubscriptionURL:subscriptionURL];
      sourceExternalId = [(SubCalDaemonAccount *)self sourceExternalId];
      [v31 setSourceExternalId:sourceExternalId];

      calendarExternalId2 = [(SubCalDaemonAccount *)self calendarExternalId];
      [v31 setCalendarExternalId:calendarExternalId2];

      changeTrackingID2 = [(SubCalDaemonAccount *)self changeTrackingID];
      [v31 setChangeTrackingId:changeTrackingID2];

      accountDescription = [(SubCalDaemonAccount *)self accountDescription];
      [v31 setCalendarName:accountDescription];

      username = [(SubCalDaemonAccount *)self username];
      [v31 setUsername:username];

      password = [(SubCalDaemonAccount *)self password];
      [v31 setPassword:password];

      [v31 setRemoveAlarms:{-[SubCalDaemonAccount shouldRemoveAlarms](self, "shouldRemoveAlarms")}];
      [v31 setRemoveAttachments:{-[SubCalDaemonAccount shouldRemoveAttachments](self, "shouldRemoveAttachments")}];
      accountID4 = [(SubCalDaemonAccount *)self accountID];
      [v31 setAccountId:accountID4];

      [v31 setIsSyncedHolidayCalendar:{-[SubCalDaemonAccount isSyncedHolidayCalendar](self, "isSyncedHolidayCalendar")}];
      [v31 setIsHolidaySubscribedCalendar:{-[SubCalDaemonAccount isHolidaySubscribedCalendar](self, "isHolidaySubscribedCalendar")}];
      [v31 setIsChinaHolidayCalendar:{-[SubCalDaemonAccount isChinaHolidayCalendar](self, "isChinaHolidayCalendar")}];
      backingAccountInfo = [(SubCalDaemonAccount *)self backingAccountInfo];
      parentAccount = [backingAccountInfo parentAccount];
      [v31 setClearChanges:parentAccount == 0];

      [v31 setAllowInsecureConnection:{-[SubCalDaemonAccount allowInsecureConnection](self, "allowInsecureConnection")}];
      if (subscriptionURL)
      {
        if (([(SubCalDaemonAccount *)self allowInsecureConnection]& 1) == 0 && ([(SubCalDaemonAccount *)self useSSL]& 1) == 0)
        {
          calDAVURLPath2 = [(SubCalDaemonAccount *)self calDAVURLPath];
          v43 = [calDAVURLPath2 length];

          if (!v43)
          {
            v44 = [NSURLComponents componentsWithURL:subscriptionURL resolvingAgainstBaseURL:0];
            [v44 setScheme:@"https"];
            v45 = [v44 URL];
            absoluteString = [v45 absoluteString];
            [v31 setMigrateCalendarExternalID:absoluteString];
          }
        }
      }

      backingAccountInfo2 = [(SubCalDaemonAccount *)self backingAccountInfo];
      parentAccount2 = [backingAccountInfo2 parentAccount];

      if (parentAccount2)
      {
        [v31 setUpdateCalendarProperties:0];
      }

      tmpICSData = [(SubCalDaemonAccount *)self tmpICSData];
      if (tmpICSData)
      {
        [v31 setTmpICSData:tmpICSData];
        [(SubCalDaemonAccount *)self clearTmpICSData];
      }

      taskManager3 = [(SubCalDaemonAccount *)self taskManager];
      [taskManager3 submitQueuedTask:v31];

      goto LABEL_33;
    }

    v19 = DALoggingwithCategory();
    if (os_log_type_enabled(v19, v14))
    {
      colorString = [v18 colorString];
      *buf = 138412546;
      v54 = v18;
      v55 = 2114;
      v56 = colorString;
      _os_log_impl(&dword_0, v19, v14, "Should Refresh SubCal For Calendar: %@, color: %{public}@", buf, 0x16u);
    }

    v52 = 0;
    [v18 removeServerRefreshRelatedPropertiesForSelfAndAllEventsSaveAndCommitWithError:&v52];
    v21 = v52;
    if (v21)
    {
      v22 = v21;
      v23 = DALoggingwithCategory();
      v24 = _CPLog_to_os_log_type[3];
      if (!os_log_type_enabled(v23, v24))
      {
LABEL_22:

        goto LABEL_23;
      }

      *buf = 138543362;
      v54 = v22;
      v25 = "Error: Could not save calendar when removing externalModificationTag and related properties. Error: %{public}@";
    }

    else
    {
      [v18 setMigrationVersion:2];
      v51 = 0;
      [v7 saveCalendar:v18 commit:1 error:&v51];
      v29 = v51;
      if (!v29)
      {
        goto LABEL_23;
      }

      v22 = v29;
      v23 = DALoggingwithCategory();
      v24 = _CPLog_to_os_log_type[3];
      if (!os_log_type_enabled(v23, v24))
      {
        goto LABEL_22;
      }

      *buf = 138543362;
      v54 = v22;
      v25 = "Error: Could not save calendar when setting migrationVersion. Error: %{public}@";
    }

    _os_log_impl(&dword_0, v23, v24, v25, buf, 0xCu);
    goto LABEL_22;
  }
}

- (void)subCalRefreshTask:(id)task finishedWithError:(id)error
{
  taskCopy = task;
  errorCopy = error;
  v8 = DALoggingwithCategory();
  v9 = v8;
  if (errorCopy)
  {
    v10 = _CPLog_to_os_log_type[4];
    if (os_log_type_enabled(v8, v10))
    {
      accountID = [(SubCalDaemonAccount *)self accountID];
      v40 = 138543618;
      v41 = accountID;
      v42 = 2112;
      v43 = errorCopy;
      _os_log_impl(&dword_0, v9, v10, "Refresh completed for account with ID %{public}@ with error %@", &v40, 0x16u);
    }

    domain = [errorCopy domain];
    if ([domain isEqualToString:kSubCalURLRequestErrorDomain])
    {
      code = [errorCopy code];

      if (code == &stru_158.flags + 2)
      {
        backingAccountInfo = [(SubCalDaemonAccount *)self backingAccountInfo];
        parentAccount = [backingAccountInfo parentAccount];

        if (parentAccount)
        {
          goto LABEL_31;
        }

        v16 = DALoggingwithCategory();
        v17 = _CPLog_to_os_log_type[3];
        if (os_log_type_enabled(v16, _CPLog_to_os_log_type[3]))
        {
          accountDescription = [(SubCalDaemonAccount *)self accountDescription];
          publicDescription = [(SubCalDaemonAccount *)self publicDescription];
          v40 = 138412546;
          v41 = accountDescription;
          v42 = 2114;
          v43 = publicDescription;
          _os_log_impl(&dword_0, v16, v17, "The server for account %@ (%{public}@) returned a 410 status code, which means this calendar is gone gone gone. Disabling calendars for this account.", &v40, 0x16u);
        }

        [(SubCalDaemonAccount *)self setEnabled:0 forDADataclass:4];
        [(SubCalDaemonAccount *)self setEnabled:0 forDADataclass:16];
        goto LABEL_30;
      }
    }

    else
    {
    }

    if (![SubCalDaemonAccount isBadPasswordError:errorCopy])
    {
      goto LABEL_31;
    }

    v23 = DALoggingwithCategory();
    v24 = _CPLog_to_os_log_type[3];
    if (os_log_type_enabled(v23, v24))
    {
      accountDescription2 = [(SubCalDaemonAccount *)self accountDescription];
      publicDescription2 = [(SubCalDaemonAccount *)self publicDescription];
      v40 = 138412546;
      v41 = accountDescription2;
      v42 = 2114;
      v43 = publicDescription2;
      _os_log_impl(&dword_0, v23, v24, "Got a bad password error; marking account ad unauthenticated: %@ (%{public}@)", &v40, 0x16u);
    }

    backingAccountInfo2 = [(SubCalDaemonAccount *)self backingAccountInfo];
    v28 = backingAccountInfo2;
    v29 = 0;
    goto LABEL_29;
  }

  v20 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v8, v20))
  {
    accountID2 = [(SubCalDaemonAccount *)self accountID];
    v40 = 138543362;
    v41 = accountID2;
    _os_log_impl(&dword_0, v9, v20, "Refresh completed for account with ID %{public}@", &v40, 0xCu);
  }

  if (([(SubCalDaemonAccount *)self useSSL]& 1) != 0 || ([(SubCalDaemonAccount *)self allowInsecureConnection]& 1) != 0)
  {
    v22 = 0;
  }

  else
  {
    v30 = DALoggingwithCategory();
    if (os_log_type_enabled(v30, v20))
    {
      accountDescription3 = [(SubCalDaemonAccount *)self accountDescription];
      publicDescription3 = [(SubCalDaemonAccount *)self publicDescription];
      v40 = 138412546;
      v41 = accountDescription3;
      v42 = 2114;
      v43 = publicDescription3;
      _os_log_impl(&dword_0, v30, v20, "Account %@ (%{public}@) successfully refreshed using https; updating the account", &v40, 0x16u);
    }

    v22 = 1;
    [(SubCalDaemonAccount *)self setUseSSL:1];
  }

  backingAccountInfo3 = [(SubCalDaemonAccount *)self backingAccountInfo];
  isAuthenticated = [backingAccountInfo3 isAuthenticated];

  if ((isAuthenticated & 1) == 0)
  {
    v35 = DALoggingwithCategory();
    if (os_log_type_enabled(v35, v20))
    {
      accountDescription4 = [(SubCalDaemonAccount *)self accountDescription];
      publicDescription4 = [(SubCalDaemonAccount *)self publicDescription];
      v40 = 138412546;
      v41 = accountDescription4;
      v42 = 2114;
      v43 = publicDescription4;
      _os_log_impl(&dword_0, v35, v20, "Account %@ (%{public}@) was marked as unauthenticated but refreshed successfully. Marking it as authenticated.", &v40, 0x16u);
    }

    backingAccountInfo2 = [(SubCalDaemonAccount *)self backingAccountInfo];
    v28 = backingAccountInfo2;
    v29 = 1;
LABEL_29:
    [backingAccountInfo2 setAuthenticated:v29];

    goto LABEL_30;
  }

  if (v22)
  {
LABEL_30:
    [(SubCalDaemonAccount *)self saveAccountProperties];
  }

LABEL_31:
  delegate = [(SubCalDaemonAccount *)self delegate];

  if (delegate)
  {
    delegate2 = [(SubCalDaemonAccount *)self delegate];
    [delegate2 accountDidCompleteRefresh:self withError:errorCopy];
  }
}

+ (BOOL)isBadPasswordError:(id)error
{
  errorCopy = error;
  domain = [errorCopy domain];
  if ([domain isEqualToString:kSubCalURLRequestErrorDomain])
  {
    v5 = [errorCopy code] == &dword_4 + 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)subCalRefreshTask:(id)task didRedirectToURL:(id)l
{
  lCopy = l;
  v6 = DALoggingwithCategory();
  v7 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v6, v7))
  {
    accountDescription = [(SubCalDaemonAccount *)self accountDescription];
    publicDescription = [(SubCalDaemonAccount *)self publicDescription];
    v11 = 138412802;
    v12 = accountDescription;
    v13 = 2114;
    v14 = publicDescription;
    v15 = 2112;
    v16 = lCopy;
    _os_log_impl(&dword_0, v6, v7, "Account %@ (%{public}@) was redirected to %@", &v11, 0x20u);
  }

  absoluteString = [lCopy absoluteString];
  [(SubCalDaemonAccount *)self setHost:absoluteString];

  [(SubCalDaemonAccount *)self saveAccountProperties];
}

- (void)refreshAllCalendars:(BOOL)calendars
{
  calendarsCopy = calendars;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v5, v6))
  {
    *v7 = 0;
    _os_log_impl(&dword_0, v5, v6, "Refreshing all calendars", v7, 2u);
  }

  [(SubCalDaemonAccount *)self _refresh:calendarsCopy];
}

- (BOOL)monitorFoldersWithIDs:(id)ds
{
  dsCopy = ds;
  v5 = DALoggingwithCategory();
  v6 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v5, v6))
  {
    v9 = 138412546;
    v10 = objc_opt_class();
    v11 = 2112;
    v12 = dsCopy;
    v7 = v10;
    _os_log_impl(&dword_0, v5, v6, "%@ asked to monitor these folders: %@", &v9, 0x16u);
  }

  [(SubCalDaemonAccount *)self _refresh:0];
  return 1;
}

- (void)stopMonitoringFolders
{
  v3 = DALoggingwithCategory();
  v4 = _CPLog_to_os_log_type[5];
  if (os_log_type_enabled(v3, v4))
  {
    v7 = 138412290;
    v8 = objc_opt_class();
    v5 = v8;
    _os_log_impl(&dword_0, v3, v4, "%@ asked to stop monitoring folders", &v7, 0xCu);
  }

  taskManager = [(SubCalDaemonAccount *)self taskManager];
  [taskManager cancelAllTasks];
}

- (void)subCalRefreshTask:(id)task needsUsernamePasswordForHost:(id)host continuation:(id)continuation
{
  continuationCopy = continuation;
  v7 = dataaccess_get_global_queue();
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_5EB4;
  v9[3] = &unk_1C530;
  v9[4] = self;
  v10 = continuationCopy;
  v8 = continuationCopy;
  [(SubCalDaemonAccount *)self dropAssertionsAndRenewCredentialsInQueue:v7 withHandler:v9];
}

- (SubCalDaemonAccountDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end