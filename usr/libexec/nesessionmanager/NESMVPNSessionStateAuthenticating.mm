@interface NESMVPNSessionStateAuthenticating
- (NESMVPNSessionStateAuthenticating)init;
- (void)enterWithSession:(id)session;
- (void)handlePlugin:(id)plugin authenticationCompleteWithResults:(id)results status:(int)status andError:(id)error;
- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStateAuthenticating

- (void)handleTimeout
{
  v11.receiver = self;
  v11.super_class = NESMVPNSessionStateAuthenticating;
  [(NESMVPNSessionState *)&v11 handleTimeout];
  if (self)
  {
    v4 = [objc_getProperty(self v3];
    sub_1000198A8(v4, v5);

    [objc_getProperty(self v6];
    Property = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    authenticationPlugin = [0 authenticationPlugin];
    sub_1000198A8(authenticationPlugin, v10);

    [0 setLastStopReason:11];
    Property = 0;
  }

  [Property setState:5];
}

- (void)handlePlugin:(id)plugin authenticationCompleteWithResults:(id)results status:(int)status andError:(id)error
{
  v7 = *&status;
  resultsCopy = results;
  v40.receiver = self;
  v40.super_class = NESMVPNSessionStateAuthenticating;
  pluginCopy = plugin;
  [(NESMVPNSessionState *)&v40 handlePlugin:pluginCopy authenticationCompleteWithResults:resultsCopy status:v7 andError:error];
  sub_1000198A8(pluginCopy, v12);

  if (v7 && !error)
  {
    if (!resultsCopy)
    {
      if (v7 == 2)
      {
        if (self)
        {
          Property = objc_getProperty(self, v13, 16, 1);
          [Property setLastStopReason:{8, v40.receiver, v40.super_class}];
          [objc_getProperty(self v27];
          v29 = objc_getProperty(self, v28, 16, 1);
        }

        else
        {
          [0 setLastStopReason:{8, v40.receiver, v40.super_class}];
          [0 setState:5];
          v29 = 0;
        }

        sub_10008FE40(v29, 2);
      }

      goto LABEL_27;
    }

    if (self)
    {
      v14 = objc_getProperty(self, v13, 16, 1);
    }

    else
    {
      v14 = 0;
    }

    extensibleSSOProvider = [v14 extensibleSSOProvider];

    if (extensibleSSOProvider)
    {
      v16 = [resultsCopy objectForKeyedSubscript:@"extensible-sso-credential-certificate"];
      v17 = isa_nsdata();

      if (!v17)
      {
LABEL_27:
        if (self)
        {
          v24 = objc_getProperty(self, v13, 16, 1);
        }

        else
        {
          v24 = 0;
        }

        v25 = 3;
        goto LABEL_30;
      }

      v19 = [resultsCopy objectForKeyedSubscript:@"extensible-sso-credential-certificate"];
      if (self)
      {
        v20 = objc_getProperty(self, v18, 16, 1);
      }

      else
      {
        v20 = 0;
      }

      protocol = [v20 protocol];
      [protocol setIdentityReferenceInternal:v19];
    }

    else
    {
      v30 = [resultsCopy objectForKeyedSubscript:@"AuthName"];
      v31 = isa_nsstring();

      if (v31)
      {
        v33 = [resultsCopy objectForKeyedSubscript:@"AuthName"];
        if (self)
        {
          v34 = objc_getProperty(self, v32, 16, 1);
        }

        else
        {
          v34 = 0;
        }

        connectParameters = [v34 connectParameters];
        [connectParameters setObject:v33 forKeyedSubscript:@"AccountName"];
      }

      v36 = [resultsCopy objectForKeyedSubscript:@"AuthCredentialPassword"];
      v37 = isa_nsstring();

      if (!v37)
      {
        goto LABEL_27;
      }

      v19 = [resultsCopy objectForKeyedSubscript:@"AuthCredentialPassword"];
      if (self)
      {
        v39 = objc_getProperty(self, v38, 16, 1);
      }

      else
      {
        v39 = 0;
      }

      protocol = [v39 connectParameters];
      [protocol setObject:v19 forKeyedSubscript:@"Password"];
    }

    goto LABEL_27;
  }

  if (self)
  {
    v22 = objc_getProperty(self, v13, 16, 1);
    [v22 setLastStopReason:{7, v40.receiver, v40.super_class}];
    v24 = objc_getProperty(self, v23, 16, 1);
  }

  else
  {
    [0 setLastStopReason:{7, v40.receiver, v40.super_class}];
    v24 = 0;
  }

  v25 = 5;
LABEL_30:
  [v24 setState:{v25, v40.receiver, v40.super_class}];
}

- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  v5 = *&d;
  errorCopy = error;
  v28.receiver = self;
  v28.super_class = NESMVPNSessionStateAuthenticating;
  pluginCopy = plugin;
  [(NESMVPNSessionState *)&v28 handlePlugin:pluginCopy didStartWithPID:v5 error:errorCopy];
  if (self)
  {
    Property = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    Property = 0;
  }

  authenticationPlugin = [Property authenticationPlugin];

  if (authenticationPlugin != pluginCopy)
  {
    goto LABEL_25;
  }

  if (v5 <= 0)
  {
    if (errorCopy)
    {
      domain = [errorCopy domain];
      if ([domain isEqualToString:@"NEAgentErrorDomain"])
      {
        code = [errorCopy code];

        if (code == 2)
        {
          if (self)
          {
            v16 = objc_getProperty(self, v13, 16, 1);
          }

          else
          {
            v16 = 0;
          }

          v17 = 6;
LABEL_15:
          [v16 setLastStopReason:v17];
          if (self)
          {
            v19 = objc_getProperty(self, v18, 16, 1);
          }

          else
          {
            v19 = 0;
          }

          [v19 setState:5];
          goto LABEL_18;
        }
      }

      else
      {
      }
    }

    if (self)
    {
      v16 = objc_getProperty(self, v13, 16, 1);
    }

    else
    {
      v16 = 0;
    }

    v17 = 7;
    goto LABEL_15;
  }

LABEL_18:
  if (self)
  {
    v20 = objc_getProperty(self, v13, 16, 1);
  }

  else
  {
    v20 = 0;
  }

  authenticationPlugin2 = [v20 authenticationPlugin];
  if (self)
  {
    v23 = objc_getProperty(self, v21, 16, 1);
  }

  else
  {
    v23 = 0;
  }

  connectParameters = [v23 connectParameters];
  v25 = connectParameters;
  if (authenticationPlugin2)
  {
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_10001A338;
    v30[3] = &unk_1000EB068;
    v30[4] = authenticationPlugin2;
    v26 = connectParameters;
    v27 = [authenticationPlugin2 remotePluginObjectWithErrorHandler:v30];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_10001A3F0;
    v29[3] = &unk_1000E99B0;
    v29[4] = authenticationPlugin2;
    [v27 authenticateWithParameters:v26 completionHandler:v29];
  }

LABEL_25:
}

- (void)enterWithSession:(id)session
{
  v15.receiver = self;
  v15.super_class = NESMVPNSessionStateAuthenticating;
  [(NESMVPNSessionState *)&v15 enterWithSession:session];
  if (self)
  {
    if (![objc_getProperty(self v4])
    {
LABEL_8:
      [objc_getProperty(self v5];
      Property = objc_getProperty(self, v12, 16, 1);
LABEL_9:
      [Property setState:5];
      return;
    }

    v6 = objc_getProperty(self, v5, 16, 1);
  }

  else
  {
    prepareConfigurationForStart = [0 prepareConfigurationForStart];
    v6 = 0;
    if ((prepareConfigurationForStart & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  authenticationPlugin = [v6 authenticationPlugin];
  if (self)
  {
    v9 = objc_getProperty(self, v7, 16, 1);
  }

  else
  {
    v9 = 0;
  }

  configuration = [v9 configuration];
  v11 = sub_1000187A4(authenticationPlugin, configuration);

  if (!v11)
  {
    if (self)
    {
      goto LABEL_8;
    }

LABEL_12:
    [0 setLastStopReason:7];
    Property = 0;
    goto LABEL_9;
  }
}

- (NESMVPNSessionStateAuthenticating)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateAuthenticating;
  return [(NESMVPNSessionState *)&v3 initWithType:7 andTimeout:120];
}

@end