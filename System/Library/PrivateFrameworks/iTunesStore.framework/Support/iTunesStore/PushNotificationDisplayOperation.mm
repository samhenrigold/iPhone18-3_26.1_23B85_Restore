@interface PushNotificationDisplayOperation
+ (BOOL)_shouldUseBulletinBoardForNotification:(id)notification;
- (BOOL)_URLHandlerExists;
- (BOOL)_clientExistsWithIdentifier:(id)identifier;
- (PushNotificationDisplayOperation)initWithNotificationUserInfo:(id)info;
- (id)_clientIdentifierForDownloadKinds:(id)kinds;
- (int64_t)_notificationClass;
- (void)_displayAlert;
- (void)_displayBadge;
- (void)_loadNotificationDownloadManifest;
- (void)_openNotificationURL;
- (void)_performNotificationAction:(BOOL)action;
- (void)run;
@end

@implementation PushNotificationDisplayOperation

- (PushNotificationDisplayOperation)initWithNotificationUserInfo:(id)info
{
  infoCopy = info;
  if (!infoCopy)
  {
    sub_1002722A4(a2, self);
  }

  v10.receiver = self;
  v10.super_class = PushNotificationDisplayOperation;
  v6 = [(PushNotificationDisplayOperation *)&v10 init];
  if (v6)
  {
    v7 = [[SSRemoteNotification alloc] initWithNotificationUserInfo:infoCopy];
    notification = v6->_notification;
    v6->_notification = v7;
  }

  return v6;
}

- (void)run
{
  v3 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyClientIdentifier];
  if (v3)
  {
    v4 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAlertType];
    v5 = [v4 integerValue] == 1;

    if (![(PushNotificationDisplayOperation *)self _clientExistsWithIdentifier:v3])
    {
      alertBodyString = +[SSLogConfig sharedDaemonConfig];
      if (!alertBodyString)
      {
        alertBodyString = +[SSLogConfig sharedConfig];
      }

      shouldLog = [alertBodyString shouldLog];
      if ([alertBodyString shouldLogToDisk])
      {
        LODWORD(v8) = shouldLog | 2;
      }

      else
      {
        LODWORD(v8) = shouldLog;
      }

      oSLogObject = [alertBodyString OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v8;
      }

      else
      {
        v8 &= 2u;
      }

      if (!v8)
      {
        goto LABEL_48;
      }

      *v30 = 138412546;
      *&v30[4] = objc_opt_class();
      *&v30[12] = 2112;
      *&v30[14] = v3;
      v10 = *&v30[4];
      v11 = _os_log_send_and_compose_impl(v8, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Ignoring notification: no matching client: %@", v30, 22, *v30, *&v30[8]);
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0;
  }

  if ([(PushNotificationDisplayOperation *)self _URLHandlerExists])
  {
    if (![(PushNotificationDisplayOperation *)self requiresClientIdentifier]|| [(PushNotificationDisplayOperation *)self _notificationClass]!= 1)
    {
      [(PushNotificationDisplayOperation *)self _displayBadge];
LABEL_50:
      alertBodyString = [(SSRemoteNotification *)self->_notification alertBodyString];
      if (-[SSRemoteNotification actionType](self->_notification, "actionType") == 12 || ![alertBodyString length])
      {
        [(PushNotificationDisplayOperation *)self _performNotificationAction:0];
      }

      else
      {
        [(PushNotificationDisplayOperation *)self _displayAlert];
      }

      goto LABEL_54;
    }

    if (!v3)
    {
      alertBodyString = +[SSLogConfig sharedDaemonConfig];
      if (!alertBodyString)
      {
        alertBodyString = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [alertBodyString shouldLog];
      if ([alertBodyString shouldLogToDisk])
      {
        LODWORD(v28) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v28) = shouldLog2;
      }

      oSLogObject = [alertBodyString OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v28 = v28;
      }

      else
      {
        v28 &= 2u;
      }

      if (!v28)
      {
        goto LABEL_48;
      }

      *v30 = 138412290;
      *&v30[4] = objc_opt_class();
      v10 = *&v30[4];
      v11 = _os_log_send_and_compose_impl(v28, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Ignoring notification: invalid client ID", v30, 12, *v30, *&v30[8]);
LABEL_13:
      v12 = v11;

      goto LABEL_46;
    }

    if (v5)
    {
      v13 = 4;
    }

    else
    {
      v13 = 0;
    }

    v14 = +[SSLogConfig sharedDaemonConfig];
    if (!v14)
    {
      v14 = +[SSLogConfig sharedConfig];
    }

    shouldLog3 = [v14 shouldLog];
    if ([v14 shouldLogToDisk])
    {
      LODWORD(v16) = shouldLog3 | 2;
    }

    else
    {
      LODWORD(v16) = shouldLog3;
    }

    oSLogObject2 = [v14 OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v16;
    }

    else
    {
      v16 &= 2u;
    }

    if (v16)
    {
      *v30 = 138412802;
      *&v30[4] = objc_opt_class();
      *&v30[12] = 2112;
      *&v30[14] = v3;
      *&v30[22] = 2048;
      v31 = v13;
      v18 = *&v30[4];
      v19 = _os_log_send_and_compose_impl(v16, 0, 0, 0, &_mh_execute_header, oSLogObject2, 0, "[%@]: Display notification with enabled types: %@ => %ld", v30, 32);

      if (!v19)
      {
        goto LABEL_34;
      }

      oSLogObject2 = [NSString stringWithCString:v19 encoding:4];
      free(v19);
      v29 = oSLogObject2;
      SSFileLog();
    }

LABEL_34:
    if (!v5)
    {
      goto LABEL_55;
    }

    goto LABEL_50;
  }

  alertBodyString = +[SSLogConfig sharedDaemonConfig];
  if (!alertBodyString)
  {
    alertBodyString = +[SSLogConfig sharedConfig];
  }

  shouldLog4 = [alertBodyString shouldLog];
  if ([alertBodyString shouldLogToDisk])
  {
    LODWORD(v21) = shouldLog4 | 2;
  }

  else
  {
    LODWORD(v21) = shouldLog4;
  }

  oSLogObject = [alertBodyString OSLogObject];
  if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v21 = v21;
  }

  else
  {
    v21 &= 2u;
  }

  if (!v21)
  {
    goto LABEL_48;
  }

  v22 = objc_opt_class();
  notification = self->_notification;
  v24 = SSRemoteNotificationKeyURLString;
  v25 = v22;
  v26 = [(SSRemoteNotification *)notification valueForKey:v24];
  *v30 = 138412546;
  *&v30[4] = v22;
  *&v30[12] = 2112;
  *&v30[14] = v26;
  v12 = _os_log_send_and_compose_impl(v21, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "[%@]: Ignoring notification: no handler for URL: %@", v30, 22);

LABEL_46:
  if (v12)
  {
    oSLogObject = [NSString stringWithCString:v12 encoding:4];
    free(v12);
    SSFileLog();
LABEL_48:
  }

LABEL_54:

LABEL_55:
}

- (BOOL)_clientExistsWithIdentifier:(id)identifier
{
  v3 = [LSApplicationProxy applicationProxyForIdentifier:identifier placeholder:0];
  foundBackingBundle = [v3 foundBackingBundle];

  return foundBackingBundle;
}

- (id)_clientIdentifierForDownloadKinds:(id)kinds
{
  kindsCopy = kinds;
  if ([kindsCopy containsObject:SSDownloadKindSoftwareApplication])
  {
    v4 = @"com.apple.AppStore";
  }

  else if ([kindsCopy containsObject:SSDownloadKindEBook])
  {
    v4 = @"com.apple.iBooks";
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = kindsCopy;
    v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if (SSDownloadKindIsMediaKind() & 1) != 0 || (SSDownloadKindIsToneKind())
          {
            v4 = @"com.apple.MobileStore";
            goto LABEL_17;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v4 = 0;
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v4 = 0;
    }

LABEL_17:
  }

  return v4;
}

- (void)_displayAlert
{
  alertBodyString = [(SSRemoteNotification *)self->_notification alertBodyString];
  if ([alertBodyString length])
  {
    alertTitleString = [(SSRemoteNotification *)self->_notification alertTitleString];
    v5 = [objc_opt_class() _shouldUseBulletinBoardForNotification:self->_notification];
    notification = self->_notification;
    if (v5)
    {
      alertCancelString = [(SSRemoteNotification *)notification valueForKey:SSRemoteNotificationKeyURLString];
      if ([alertCancelString length])
      {
        alertOKString2 = [NSURL URLWithString:alertCancelString];
      }

      else
      {
        alertOKString2 = 0;
      }

      v9 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyClientIdentifier];
      alertOKString = [(SSRemoteNotification *)self->_notification alertOKString];
      lowercaseString = [v9 lowercaseString];
      v21 = [lowercaseString isEqualToString:@"com.apple.appstore"];

      if (v21)
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100119C48;
        v26[3] = &unk_100327538;
        v26[4] = self;
        [AppStoreUtility postBulletinWithTitle:alertTitleString message:alertBodyString destinations:12 actionButtonTitle:alertOKString actionButtonURL:alertOKString2 launchURL:alertOKString2 completionBlock:v26];
      }
    }

    else
    {
      v24 = alertTitleString;
      alertCancelString = [(SSRemoteNotification *)notification alertCancelString];
      alertOKString2 = [(SSRemoteNotification *)self->_notification alertOKString];
      v9 = objc_alloc_init(ISDialog);
      v10 = [NSArray alloc];
      v11 = ISDialogButton;
      v12 = alertCancelString;
      if (!alertCancelString)
      {
        v23 = [NSBundle bundleForClass:objc_opt_class()];
        v12 = [v23 localizedStringForKey:@"CANCEL" value:&stru_10033CC30 table:0];
      }

      v22 = v12;
      v13 = [ISDialogButton buttonWithTitle:v12];
      v14 = alertOKString2;
      if (!alertOKString2)
      {
        v11 = [NSBundle bundleForClass:objc_opt_class()];
        v14 = [v11 localizedStringForKey:@"OK" value:&stru_10033CC30 table:0];
      }

      v15 = [ISDialogButton buttonWithTitle:v14];
      alertOKString = [v10 initWithObjects:{v13, v15, 0}];

      if (!alertOKString2)
      {
      }

      if (!alertCancelString)
      {
      }

      [v9 setButtons:alertOKString];
      [v9 setDismissOnLock:1];
      [v9 setMessage:alertBodyString];
      [v9 setShouldDismissAfterUnlock:1];
      [v9 setShouldDisplayAsTopMost:1];
      alertTitleString = v24;
      [v9 setTitle:v24];
      [v9 setUnlockActionButtonIndex:1];
      copyUserNotification = [v9 copyUserNotification];
      v18 = +[UserNotificationCenter defaultCenter];
      v25[0] = _NSConcreteStackBlock;
      v25[1] = 3221225472;
      v25[2] = sub_100119DF0;
      v25[3] = &unk_100328FC0;
      v25[4] = self;
      v19 = [v18 showUserNotification:copyUserNotification withCompletionBlock:v25];
    }
  }
}

- (void)_displayBadge
{
  v3 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyClientIdentifier];
  if (v3)
  {
    v6 = v3;
    v4 = +[SpringBoardUtility sharedInstance];
    badgeValue = [(SSRemoteNotification *)self->_notification badgeValue];
    [v4 setBadgeValue:badgeValue forIdentifier:v6];

    v3 = v6;
  }
}

- (void)_loadNotificationDownloadManifest
{
  v9 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyURLString];
  if (v9)
  {
    v2 = [[NSURL alloc] initWithString:v9];
    if (v2)
    {
      v3 = v2;
      v4 = [SSDownloadManifestRequest alloc];
      v5 = [NSURLRequest requestWithURL:v3];
      v6 = [v4 initWithURLRequest:v5];

      [v6 setManifestFormat:1];
      v7 = [[LoadExternalDownloadManifestOperation alloc] initWithRequest:v6];
      v8 = +[ISOperationQueue mainQueue];
      [v8 addOperation:v7];
    }
  }
}

- (int64_t)_notificationClass
{
  v2 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyNotificationClass];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)_openNotificationURL
{
  v7 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyURLString];
  if (v7)
  {
    v2 = [[NSURL alloc] initWithString:v7];
    if (v2)
    {
      v3 = v2;
      v4 = [[ISOpenURLRequest alloc] initWithURL:v2];
      [v4 setITunesStoreURL:0];
      v5 = [[ISOpenURLOperation alloc] initWithOpenURLRequest:v4];
      v6 = +[ISOperationQueue mainQueue];
      [v6 addOperation:v5];
    }
  }
}

- (void)_performNotificationAction:(BOOL)action
{
  actionCopy = action;
  switch([(SSRemoteNotification *)self->_notification actionType])
  {
    case 1uLL:
    case 4uLL:
      if (actionCopy)
      {

        [(PushNotificationDisplayOperation *)self _openNotificationURL];
      }

      return;
    case 2uLL:
      notificationUserInfo = +[StoreDownloadQueue sharedDownloadQueue];
      [notificationUserInfo checkAutomaticDownloadQueue];
      goto LABEL_129;
    case 3uLL:
      if (!actionCopy)
      {
        return;
      }

      notificationUserInfo = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyDownloadKinds];
      v28 = [SetAutomaticDownloadKindsOperation alloc];
      v29 = v28;
      if (notificationUserInfo)
      {
        v30 = [NSSet setWithArray:?];
        v31 = [v29 initWithDownloadKinds:v30];

        v29 = v30;
      }

      else
      {
        v31 = [(SetAutomaticDownloadKindsOperation *)v28 initWithDownloadKinds:?];
      }

      v68 = +[ISOperationQueue mainQueue];
      [v68 addOperation:v31];

      goto LABEL_129;
    case 5uLL:

      [(PushNotificationDisplayOperation *)self _loadNotificationDownloadManifest];
      return;
    case 6uLL:
      v8 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAccountIdentifier];
      v17 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAccountCredit];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_50;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_50;
      }

      v18 = +[SSAccountStore defaultStore];
      v19 = [v18 accountWithUniqueIdentifier:v8];
      if (!v19)
      {
        goto LABEL_49;
      }

      v20 = +[SSLogConfig sharedAccountsConfig];
      if (!v20)
      {
        v20 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v20 shouldLog];
      if ([v20 shouldLogToDisk])
      {
        LODWORD(v22) = shouldLog | 2;
      }

      else
      {
        LODWORD(v22) = shouldLog;
      }

      oSLogObject = [v20 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v22;
      }

      else
      {
        v22 &= 2u;
      }

      if (!v22)
      {
        goto LABEL_47;
      }

      v24 = objc_opt_class();
      v73 = v24;
      accountName = [v19 accountName];
      v26 = SSHashIfNeeded();
      v75 = 138543618;
      v76 = v24;
      v77 = 2114;
      v78 = v26;
      v27 = _os_log_send_and_compose_impl(v22, 0, 0, 0, &_mh_execute_header, oSLogObject, 0, "%{public}@: Setting account credits. Saving %{public}@.", &v75, 22);

      if (v27)
      {
        oSLogObject = [NSString stringWithCString:v27 encoding:4];
        free(v27);
        SSFileLog();
LABEL_47:
      }

      [v19 setCreditsString:v17];
      [v18 saveAccount:v19 verifyCredentials:0 completion:0];
LABEL_49:

LABEL_50:
      goto LABEL_125;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
      v5 = ISWeakLinkedClassForString();
      notificationUserInfo = [(SSRemoteNotification *)self->_notification notificationUserInfo];
      [v5 didReceiveStorePushNotificationWithPayload:?];
      goto LABEL_129;
    case 0xBuLL:
      v34 = +[SSAccountStore defaultStore];
      activeAccount = [v34 activeAccount];
      notificationUserInfo = [activeAccount uniqueIdentifier];

      notificationUserInfo3 = +[StoreDownloadQueue sharedDownloadQueue];
      [notificationUserInfo3 checkQueuesWithReason:@"trigger-download" accountID:notificationUserInfo];
      goto LABEL_62;
    case 0xCuLL:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v7 = @"com.apple.itunesstored.PlaybackLeaseDidEnd";
      goto LABEL_9;
    case 0xDuLL:
      v8 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyDelayedGotoIdentifier];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_125;
      }

      v11 = +[SSLogConfig sharedDaemonConfig];
      if (!v11)
      {
        v11 = +[SSLogConfig sharedConfig];
      }

      shouldLog2 = [v11 shouldLog];
      if ([v11 shouldLogToDisk])
      {
        LODWORD(v13) = shouldLog2 | 2;
      }

      else
      {
        LODWORD(v13) = shouldLog2;
      }

      oSLogObject2 = [v11 OSLogObject];
      if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_DEBUG))
      {
        v13 = v13;
      }

      else
      {
        v13 &= 2u;
      }

      if (!v13)
      {
        goto LABEL_31;
      }

      v75 = 138412546;
      v76 = objc_opt_class();
      v77 = 2112;
      v78 = v8;
      v15 = v76;
      v16 = _os_log_send_and_compose_impl(v13, 0, 0, 0, &_mh_execute_header, oSLogObject2, 2, "[%@]: Finish delayed goto for identifier: %@", &v75, 22);

      if (v16)
      {
        oSLogObject2 = [NSString stringWithCString:v16 encoding:4];
        free(v16);
        SSFileLog();
LABEL_31:
      }

      [DelayedGotoSemaphore signalSemaphoreForPushToken:v8];
      goto LABEL_125;
    case 0xEuLL:
      v8 = objc_alloc_init(SubscriptionStatusOperation);
      [(SubscriptionStatusOperation *)v8 setCarrierBundleProvisioningStyle:1];
      notificationUserInfo2 = [(SSRemoteNotification *)self->_notification notificationUserInfo];

      if (notificationUserInfo2)
      {
        v74[0] = _NSConcreteStackBlock;
        v74[1] = 3221225472;
        v74[2] = sub_10011AF20;
        v74[3] = &unk_100328FE8;
        v74[4] = self;
        [(SubscriptionStatusOperation *)v8 setStatusBlock:v74];
      }

      v10 = +[ISOperationQueue mainQueue];
      [v10 addOperation:v8];

      goto LABEL_125;
    case 0xFuLL:
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      v7 = @"com.apple.itunesstored.mediacontenttastechangednotification";
LABEL_9:

      CFNotificationCenterPostNotification(DarwinNotifyCenter, v7, 0, 0, 1u);
      return;
    case 0x11uLL:

      +[SSVSubscriptionEntitlementsCoordinator markCachedSubscriptionEntitlementsAsExpired];
      return;
    case 0x1DuLL:
      v32 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyAccountIdentifier];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = v32;
LABEL_65:
        v8 = v33;
        goto LABEL_79;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v33 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v32 longLongValue]);
        goto LABEL_65;
      }

      v37 = +[SSLogConfig sharedDaemonConfig];
      if (!v37)
      {
        v37 = +[SSLogConfig sharedConfig];
      }

      shouldLog3 = [v37 shouldLog];
      if ([v37 shouldLogToDisk])
      {
        LODWORD(v39) = shouldLog3 | 2;
      }

      else
      {
        LODWORD(v39) = shouldLog3;
      }

      oSLogObject3 = [v37 OSLogObject];
      if (os_log_type_enabled(oSLogObject3, OS_LOG_TYPE_ERROR))
      {
        v39 = v39;
      }

      else
      {
        v39 &= 2u;
      }

      if (!v39)
      {
        goto LABEL_77;
      }

      v75 = 138543362;
      v76 = objc_opt_class();
      v41 = v76;
      v42 = _os_log_send_and_compose_impl(v39, 0, 0, 0, &_mh_execute_header, oSLogObject3, 16, "%{public}@: Resume buy failed to parse accountIdentifier", &v75, 12);

      if (v42)
      {
        oSLogObject3 = [NSString stringWithCString:v42 encoding:4];
        free(v42);
        v69 = oSLogObject3;
        SSFileLog();
LABEL_77:
      }

      v8 = 0;
LABEL_79:
      v43 = [(SSRemoteNotification *)self->_notification valueForKey:SSRemoteNotificationKeyBuyParams, v69];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = [NSURL queryStringForDictionary:v43 escapedValues:1];
LABEL_83:
        v45 = v44;
        goto LABEL_97;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v44 = v43;
        goto LABEL_83;
      }

      v46 = +[SSLogConfig sharedDaemonConfig];
      if (!v46)
      {
        v46 = +[SSLogConfig sharedConfig];
      }

      shouldLog4 = [v46 shouldLog];
      if ([v46 shouldLogToDisk])
      {
        LODWORD(v48) = shouldLog4 | 2;
      }

      else
      {
        LODWORD(v48) = shouldLog4;
      }

      oSLogObject4 = [v46 OSLogObject];
      if (os_log_type_enabled(oSLogObject4, OS_LOG_TYPE_ERROR))
      {
        v48 = v48;
      }

      else
      {
        v48 &= 2u;
      }

      if (!v48)
      {
        goto LABEL_95;
      }

      v50 = objc_opt_class();
      v75 = 138543362;
      v76 = v50;
      v51 = v50;
      LODWORD(v71) = 12;
      v52 = _os_log_send_and_compose_impl(v48, 0, 0, 0, &_mh_execute_header, oSLogObject4, 16, "%{public}@: Resume buy failed to parse buyParams", &v75, v71);

      if (v52)
      {
        oSLogObject4 = [NSString stringWithCString:v52 encoding:4];
        free(v52);
        v70 = oSLogObject4;
        SSFileLog();
LABEL_95:
      }

      v45 = 0;
LABEL_97:
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v53 = objc_alloc_init(SSPurchase);
          [v53 setAccountIdentifier:v8];
          [v53 setBuyParameters:v45];
          v54 = +[SSLogConfig sharedDaemonConfig];
          if (!v54)
          {
            v54 = +[SSLogConfig sharedConfig];
          }

          shouldLog5 = [v54 shouldLog];
          if ([v54 shouldLogToDisk])
          {
            LODWORD(v56) = shouldLog5 | 2;
          }

          else
          {
            LODWORD(v56) = shouldLog5;
          }

          oSLogObject5 = [v54 OSLogObject];
          if (os_log_type_enabled(oSLogObject5, OS_LOG_TYPE_DEFAULT))
          {
            v56 = v56;
          }

          else
          {
            v56 &= 2u;
          }

          if (v56)
          {
            v58 = objc_opt_class();
            v75 = 138543362;
            v76 = v58;
            v59 = v58;
            LODWORD(v71) = 12;
            v60 = _os_log_send_and_compose_impl(v56, 0, 0, 0, &_mh_execute_header, oSLogObject5, 0, "%{public}@: Attempting to resume buy", &v75, v71);

            if (!v60)
            {
LABEL_111:

              oSLogObject6 = [[PurchaseOperation alloc] initWithPurchase:v53];
              v62 = +[ISOperationQueue mainQueue];
              [v62 addOperation:oSLogObject6];

              goto LABEL_123;
            }

            oSLogObject5 = [NSString stringWithCString:v60 encoding:4];
            free(v60);
            SSFileLog();
          }

          goto LABEL_111;
        }
      }

      v53 = +[SSLogConfig sharedDaemonConfig];
      if (!v53)
      {
        v53 = +[SSLogConfig sharedConfig];
      }

      shouldLog6 = [v53 shouldLog];
      if ([v53 shouldLogToDisk])
      {
        LODWORD(v64) = shouldLog6 | 2;
      }

      else
      {
        LODWORD(v64) = shouldLog6;
      }

      oSLogObject6 = [v53 OSLogObject];
      if (os_log_type_enabled(oSLogObject6, OS_LOG_TYPE_ERROR))
      {
        v64 = v64;
      }

      else
      {
        v64 &= 2u;
      }

      if (v64)
      {
        v65 = objc_opt_class();
        v75 = 138543362;
        v76 = v65;
        v66 = v65;
        LODWORD(v71) = 12;
        v67 = _os_log_send_and_compose_impl(v64, 0, 0, 0, &_mh_execute_header, oSLogObject6, 16, "%{public}@: Resume buy failed for invalid notification arguments", &v75, v71);

        if (!v67)
        {
          goto LABEL_124;
        }

        oSLogObject6 = [NSString stringWithCString:v67 encoding:4];
        free(v67);
        SSFileLog();
      }

LABEL_123:

LABEL_124:
LABEL_125:

      return;
    default:
      if (!actionCopy)
      {
        return;
      }

      notificationUserInfo = +[PushNotificationController sharedInstance];
      notificationUserInfo3 = [(SSRemoteNotification *)self->_notification notificationUserInfo];
      [notificationUserInfo postClientNotificationWithUserInfo:notificationUserInfo3];
LABEL_62:

LABEL_129:

      return;
  }
}

+ (BOOL)_shouldUseBulletinBoardForNotification:(id)notification
{
  notificationCopy = notification;
  v4 = [notificationCopy valueForKey:SSRemoteNotificationKeyClientIdentifier];
  if ([v4 length])
  {
    v5 = [notificationCopy valueForKey:SSRemoteNotificationKeyAlertType];
    integerValue = [v5 integerValue];

    if (integerValue == 1)
    {
      v7 = 1;
    }

    else
    {
      actionType = [notificationCopy actionType];
      if (actionType <= 0x16)
      {
        v7 = 0x440002u >> actionType;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_URLHandlerExists
{
  tapUrl = [(SSRemoteNotification *)self->_notification tapUrl];
  if (tapUrl)
  {
    v3 = [[NSURL alloc] initWithString:tapUrl];
    v4 = +[LSApplicationWorkspace defaultWorkspace];
    v5 = [v4 applicationsAvailableForOpeningURL:v3];

    v6 = [v5 count] != 0;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end