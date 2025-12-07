@interface SDSubCredentialAgent
+ (id)sharedAgent;
- (NSString)description;
- (SDSubCredentialAgent)init;
- (void)_activate;
- (void)_invalidate;
- (void)_uiPresentWithParams:(id)params completion:(id)completion;
- (void)activate;
- (void)invalidate;
- (void)prefsChanged;
- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error;
- (void)remoteAlertHandleDidActivate:(id)activate;
- (void)remoteAlertHandleDidDeactivate:(id)deactivate;
- (void)uiPresentWithParams:(id)params completion:(id)completion;
@end

@implementation SDSubCredentialAgent

+ (id)sharedAgent
{
  if (qword_10098A238 != -1)
  {
    sub_1001F9680();
  }

  v3 = qword_10098A240;

  return v3;
}

- (SDSubCredentialAgent)init
{
  v7.receiver = self;
  v7.super_class = SDSubCredentialAgent;
  v2 = [(SDSubCredentialAgent *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    [(SDSubCredentialAgent *)v2 setDispatchQueue:v3];

    v4 = +[SDStatusMonitor sharedMonitor];
    statusMonitor = v2->_statusMonitor;
    v2->_statusMonitor = v4;
  }

  return v2;
}

- (NSString)description
{
  v2 = objc_alloc_init(NSMutableString);
  [v2 appendFormat:@"-- SDSubCredentialAgent --"];

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F8730;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972A88 <= 50)
  {
    if (dword_100972A88 != -1 || (v3 = _LogCategory_Initialize(), v3))
    {
      sub_1001F9694(v3, v4, v5);
    }
  }

  [(SDSubCredentialAgent *)self prefsChanged];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F881C;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_100972A88 <= 50)
  {
    if (dword_100972A88 != -1 || (v2 = _LogCategory_Initialize(), v2))
    {
      sub_1001F96B0(v2, v3, v4);
    }
  }
}

- (void)prefsChanged
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  Int64 = CFPrefs_GetInt64();
  v4 = Int64 != 0;
  if (self->_prefAppInfoDownload != v4)
  {
    if (dword_100972A88 <= 40)
    {
      v5 = Int64;
      if (dword_100972A88 != -1 || _LogCategory_Initialize())
      {
        sub_1001F96CC(v5 != 0);
      }
    }

    self->_prefAppInfoDownload = v4;
  }

  CFStringGetTypeID();
  v6 = CFPrefs_CopyTypedValue();
  if (v6)
  {
    if (dword_100972A88 <= 50 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100972A88, "[SDSubCredentialAgent prefsChanged]", 50, "App Store URL updated: %@ -> %@\n", self->_prefAppStoreURL, v6);
    }

    objc_storeStrong(&self->_prefAppStoreURL, v6);
  }

  CFStringGetTypeID();
  v7 = CFPrefs_CopyTypedValue();

  if (v7)
  {
    if (dword_100972A88 <= 50 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&dword_100972A88, "[SDSubCredentialAgent prefsChanged]", 50, "Launch URL updated: %@ -> %@\n", self->_prefWalletLaunchURL, v7);
    }

    objc_storeStrong(&self->_prefWalletLaunchURL, v7);
  }
}

- (void)uiPresentWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F8B90;
  block[3] = &unk_1008CE730;
  block[4] = self;
  v12 = paramsCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = paramsCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_uiPresentWithParams:(id)params completion:(id)completion
{
  paramsCopy = params;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  adamIDs = [paramsCopy adamIDs];
  if (adamIDs)
  {
    v9 = adamIDs;
    goto LABEL_4;
  }

  adamID = [paramsCopy adamID];
  v32 = adamID;
  v9 = [NSArray arrayWithObjects:&v32 count:1];

  if (v9)
  {
LABEL_4:
    title = [paramsCopy title];
    if (!title)
    {
      if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F98B4();
      }

      subtitle = NSErrorWithOSStatusF(4294960591, "Title missing.");
      if (completionCopy)
      {
        completionCopy[2](completionCopy, subtitle);
      }

      goto LABEL_43;
    }

    subtitle = [paramsCopy subtitle];
    if (subtitle)
    {
      issuerID = [paramsCopy issuerID];
      if (issuerID || ([paramsCopy adamID], (issuerID = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v14 = issuerID;
        if (gSDProxCardsSuppressed == 1)
        {
          if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F9818();
          }

          NSErrorWithOSStatusF(4294960561, "Prox cards currently suppressed.");
        }

        else if ([(SDSubCredentialAgent *)self _uiShowing])
        {
          if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F97E4();
          }

          NSErrorWithOSStatusF(4294960575, "Prox card already visible.");
        }

        else
        {
          v15 = +[SDStatusMonitor sharedMonitor];
          systemUIFlags = [v15 systemUIFlags];

          v16 = +[SDStatusMonitor sharedMonitor];
          v17 = [v16 systemUIFlags] & 0x5C808;

          if (!v17)
          {
            if (dword_100972A88 <= 30 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
            {
              sub_1001F9770(v9);
            }

            v19 = objc_alloc_init(NSMutableDictionary);
            [v19 setObject:v9 forKeyedSubscript:@"adamIDs"];
            [v19 setObject:title forKeyedSubscript:@"title"];
            [v19 setObject:subtitle forKeyedSubscript:@"subtitle"];
            [v19 setObject:v14 forKeyedSubscript:@"issuerID"];
            v20 = [NSNumber numberWithBool:self->_prefAppInfoDownload];
            [v19 setObject:v20 forKeyedSubscript:@"appInfoDownload"];

            prefAppStoreURL = self->_prefAppStoreURL;
            if (prefAppStoreURL)
            {
              [v19 setObject:prefAppStoreURL forKeyedSubscript:@"appStoreURL"];
            }

            prefWalletLaunchURL = self->_prefWalletLaunchURL;
            if (prefWalletLaunchURL)
            {
              [v19 setObject:prefWalletLaunchURL forKeyedSubscript:@"launchURL"];
            }

            v31 = [[SBSRemoteAlertDefinition alloc] initWithServiceName:@"com.apple.SharingViewService" viewControllerClassName:@"SubCredentialActivationMainController"];
            v23 = objc_opt_new();
            [v23 setUserInfo:v19];
            alertHandle = self->_alertHandle;
            if (alertHandle)
            {
              [(SBSRemoteAlertHandle *)alertHandle removeObserver:self];
              [(SBSRemoteAlertHandle *)self->_alertHandle invalidate];
              v25 = self->_alertHandle;
              self->_alertHandle = 0;
            }

            v26 = [SBSRemoteAlertHandle newHandleWithDefinition:v31 configurationContext:v23];
            v27 = self->_alertHandle;
            self->_alertHandle = v26;

            v28 = self->_alertHandle;
            if (!v28)
            {
              if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
              {
                sub_1001F97B0();
              }

              v29 = NSErrorWithOSStatusF(4294960556, "Alert creation failed.");
              if (completionCopy)
              {
                completionCopy[2](completionCopy, v29);
              }

              v28 = self->_alertHandle;
            }

            [(SBSRemoteAlertHandle *)v28 addObserver:self];
            [(SBSRemoteAlertHandle *)self->_alertHandle activateWithContext:0];
            if (completionCopy)
            {
              completionCopy[2](completionCopy, 0);
            }

            goto LABEL_42;
          }

          if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
          {
            sub_1001F9728(systemUIFlags);
          }

          NSErrorWithOSStatusF(4294960587, "Card not supported over current UI.");
        }
        v18 = ;
        if (completionCopy)
        {
          completionCopy[2](completionCopy, v18);
        }

LABEL_42:
LABEL_43:

        goto LABEL_44;
      }

      if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F984C();
      }

      NSErrorWithOSStatusF(4294960591, "Issuer ID missing.");
    }

    else
    {
      if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F9880();
      }

      NSErrorWithOSStatusF(4294960591, "Subtitle missing.");
    }
    v14 = ;
    if (completionCopy)
    {
      completionCopy[2](completionCopy, v14);
    }

    goto LABEL_42;
  }

  if (dword_100972A88 <= 90 && (dword_100972A88 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F98E8();
  }

  v9 = NSErrorWithOSStatusF(4294960591, "Adam IDs missing.");
  if (completionCopy)
  {
    completionCopy[2](completionCopy, v9);
  }

LABEL_44:
}

- (void)remoteAlertHandleDidActivate:(id)activate
{
  activateCopy = activate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F9268;
  v7[3] = &unk_1008CE028;
  v8 = activateCopy;
  selfCopy = self;
  v6 = activateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandleDidDeactivate:(id)deactivate
{
  deactivateCopy = deactivate;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001F93C0;
  v7[3] = &unk_1008CE028;
  v8 = deactivateCopy;
  selfCopy = self;
  v6 = deactivateCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)remoteAlertHandle:(id)handle didInvalidateWithError:(id)error
{
  handleCopy = handle;
  errorCopy = error;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001F9544;
  block[3] = &unk_1008CE900;
  v12 = handleCopy;
  selfCopy = self;
  v14 = errorCopy;
  v9 = errorCopy;
  v10 = handleCopy;
  dispatch_async(dispatchQueue, block);
}

@end