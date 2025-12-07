@interface WipeAction
- (FMDServiceProvider)provider;
- (WipeAction)initWithProvider:(id)provider;
- (void)_abortWipe;
- (void)_ackWipeCommand:(id)command withStatus:(int64_t)status;
- (void)_sendWipeAck;
- (void)_wipeNow;
- (void)performWipe;
- (void)runWithCompletion:(id)completion;
@end

@implementation WipeAction

- (WipeAction)initWithProvider:(id)provider
{
  providerCopy = provider;
  v8.receiver = self;
  v8.super_class = WipeAction;
  v5 = [(WipeAction *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(WipeAction *)v5 setProvider:providerCopy];
  }

  return v6;
}

- (void)runWithCompletion:(id)completion
{
  v4 = +[FMDPreferencesMgr wipeState];
  v5 = +[FMDPreferencesMgr wipeInfo];
  v6 = [v5 objectForKeyedSubscript:@"authId"];

  provider = [(WipeAction *)self provider];
  account = [provider account];

  if (account && ([account authId], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqualToString:", v6), v10, (v11 & 1) != 0))
  {
    v12 = [account setActivityState:2];
    if (v4 == 2)
    {
      v19 = sub_100002880(v12);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Wiping the device now...", v20, 2u);
      }

      [(WipeAction *)self _wipeNow];
    }

    else if (v4 == 1)
    {
      authToken = [account authToken];
      v14 = [authToken length];

      v16 = sub_100002880(v15);
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v14)
      {
        if (v17)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Sending wipe ack...", buf, 2u);
        }

        [(WipeAction *)self _sendWipeAck];
      }

      else
      {
        if (v17)
        {
          *v21 = 0;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Aborting wipe because ack was pending & no authToken available anymore", v21, 2u);
        }

        [(WipeAction *)self _abortWipe];
      }
    }
  }

  else
  {
    v18 = sub_100002880(v9);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Deleting old wipe state since the account info has changed", v23, 2u);
    }

    [FMDPreferencesMgr setWipeState:0];
    [FMDPreferencesMgr setWipeInfo:0];
  }
}

- (void)_sendWipeAck
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Sending wipe ack...", v6, 2u);
  }

  v4 = +[FMDPreferencesMgr wipeInfo];
  v5 = [v4 objectForKeyedSubscript:@"commandParams"];
  [(WipeAction *)self _ackWipeCommand:v5 withStatus:200];
}

- (void)_ackWipeCommand:(id)command withStatus:(int64_t)status
{
  commandCopy = command;
  v7 = [commandCopy objectForKeyedSubscript:@"ackURL"];
  provider = [(WipeAction *)self provider];
  v9 = provider;
  if (v7)
  {
    v10 = [NSURL URLWithString:v7];
    v11 = [[FMDRequestAckWipe alloc] initWithProvider:v9 wipeCommand:commandCopy cmdStatusCode:status ackURL:v10];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1001C97D4;
    v13[3] = &unk_1002D1008;
    v13[4] = self;
    [(FMDRequest *)v11 setCompletionHandler:v13];
    [v9 enqueueRequest:v11];
  }

  else
  {
    v10 = sub_100002880(provider);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not acking the wipe command because there is no ack URL", v12, 2u);
    }
  }
}

- (void)_abortWipe
{
  v3 = sub_100002880(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Aborting wipe...", v6, 2u);
  }

  [FMDPreferencesMgr setWipeInfo:0];
  [FMDPreferencesMgr setWipeState:0];
  provider = [(WipeAction *)self provider];
  account = [provider account];
  [account setActivityState:0];
  [provider reinitializeProviderWithAccount:account];
}

- (void)_wipeNow
{
  v3 = +[FMDPowerMgr sharedInstance];
  [v3 powerAssertionEnableWithReason:@"Wiping" type:@"PreventSystemSleep" timeout:300 appliesOnLidClose:1];

  v5 = sub_100002880(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Initiating Remote Wipe now...", buf, 2u);
  }

  v6 = +[FMDPreferencesMgr wipeInfo];
  v7 = [v6 objectForKeyedSubscript:@"wipeMode"];
  v8 = +[FMDPreferencesMgr simulateWipe];
  if ((v8 & 1) != 0 || (v8 = [v7 isEqualToString:@"fake"], v8))
  {
    v9 = sub_100002880(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initiating Simulated Remote Wipe now...", buf, 2u);
    }

    v10 = objc_alloc_init(FMAlert);
    [v10 setMsgText:@"Simulated Wipe: Your device would have been wiped now."];
    [v10 setMsgTitle:@"iCloud Remote Wipe"];
    [v10 setShowMsgInLockScreen:1];
    [v10 setDismissMsgOnUnlock:0];
    [v10 setDismissMsgOnLock:0];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1001C9CA8;
    v12[3] = &unk_1002CD4C8;
    v12[4] = self;
    [v10 setDefaultButtonAction:v12];
    v11 = +[FMAlertManager sharedInstance];
    [v11 activateAlert:v10];
  }

  else
  {
    [(WipeAction *)self performWipe];
  }
}

- (void)performWipe
{
  v9 = objc_opt_new();
  v3 = objc_opt_new();
  [(WipeAction *)self maxDelayInterval];
  [v3 setMaxDelayInterval:?];
  v4 = +[FMSystemInfo sharedInstance];
  isInternalBuild = [v4 isInternalBuild];

  if (isInternalBuild)
  {
    v6 = [FMPreferencesUtil integerForKey:@"wipeDelay" inDomain:kFMDPrefDomain];
    if (v6 >= 1)
    {
      [v3 setCustomDelay:v6];
    }
  }

  v7 = +[FMSystemInfo sharedInstance];
  isInternalBuild2 = [v7 isInternalBuild];

  if (isInternalBuild2)
  {
    [v3 setBrickDevice:{+[FMPreferencesUtil BOOLForKey:inDomain:](FMPreferencesUtil, "BOOLForKey:inDomain:", @"EnableRemoteBrickWithWipe", kFMDPrefDomain)}];
  }

  [v9 eraseDeviceWithOptions:v3 completion:&stru_1002D1028];
}

- (FMDServiceProvider)provider
{
  WeakRetained = objc_loadWeakRetained(&self->_provider);

  return WeakRetained;
}

@end