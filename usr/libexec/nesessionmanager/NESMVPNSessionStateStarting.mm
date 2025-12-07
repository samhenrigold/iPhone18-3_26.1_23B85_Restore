@interface NESMVPNSessionStateStarting
- (BOOL)handleSetConfiguration;
- (NESMVPNSessionStateStarting)init;
- (void)enterWithSession:(id)session;
- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error;
- (void)handlePluginStatusDidChangeToConnected:(id)connected;
- (void)handleSetConfigurationResult:(BOOL)result;
- (void)handleTimeout;
@end

@implementation NESMVPNSessionStateStarting

- (void)handleTimeout
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v6 handleTimeout];
  if (self)
  {
    [objc_getProperty(self v3];
    Property = objc_getProperty(self, v4, 16, 1);
  }

  else
  {
    [0 setLastStopReason:12];
    Property = 0;
  }

  [Property setState:5];
}

- (void)handleSetConfigurationResult:(BOOL)result
{
  v8.receiver = self;
  v8.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v8 handleSetConfigurationResult:result];
  kdebug_trace();
  if (self)
  {
    self->_tunnelConfigurationInstallState = 3;
    v5 = [objc_getProperty(self v4];
    if (v5)
    {
      v6 = v5[16];

      if (v6 == 4)
      {
        [objc_getProperty(self v7];
      }
    }
  }
}

- (BOOL)handleSetConfiguration
{
  kdebug_trace();
  if (self)
  {
    self->_tunnelConfigurationInstallState = 2;
  }

  v4.receiver = self;
  v4.super_class = NESMVPNSessionStateStarting;
  return [(NESMVPNSessionState *)&v4 handleSetConfiguration];
}

- (void)handlePluginStatusDidChangeToConnected:(id)connected
{
  v6.receiver = self;
  v6.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v6 handlePluginStatusDidChangeToConnected:connected];
  if (self)
  {
    tunnelConfigurationInstallState = self->_tunnelConfigurationInstallState;
    if (tunnelConfigurationInstallState == 3)
    {
      [objc_getProperty(self v4];
    }

    else if (tunnelConfigurationInstallState == 1)
    {
      [objc_getProperty(self v4];
    }
  }
}

- (void)handlePlugin:(id)plugin didStartWithPID:(int)d error:(id)error
{
  v6 = *&d;
  pluginCopy = plugin;
  errorCopy = error;
  kdebug_trace();
  v32.receiver = self;
  v32.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v32 handlePlugin:pluginCopy didStartWithPID:v6 error:errorCopy];
  if (v6 < 1)
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
            Property = objc_getProperty(self, v10, 16, 1);
          }

          else
          {
            Property = 0;
          }

          v29 = 6;
LABEL_27:
          [Property setLastStopReason:v29];
          if (self)
          {
            v31 = objc_getProperty(self, v30, 16, 1);
          }

          else
          {
            v31 = 0;
          }

          [v31 setState:5];
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    if (self)
    {
      Property = objc_getProperty(self, v10, 16, 1);
    }

    else
    {
      Property = 0;
    }

    v29 = 7;
    goto LABEL_27;
  }

  if (self)
  {
    v11 = objc_getProperty(self, v10, 16, 1);
  }

  else
  {
    v11 = 0;
  }

  if ([v11 shouldSendIPCAttachForPlugin:pluginCopy])
  {
    v12 = ne_log_obj();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      if (self)
      {
        v14 = objc_getProperty(self, v13, 16, 1);
      }

      else
      {
        v14 = 0;
      }

      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412546;
      v34 = v14;
      v35 = 2112;
      v36 = v16;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ in state %@: attaching IPC", buf, 0x16u);
    }

    sub_10001A5E8(pluginCopy);
  }

  kdebug_trace();
  if (self)
  {
    v18 = objc_getProperty(self, v17, 16, 1);
  }

  else
  {
    v18 = 0;
  }

  primaryTunnelPlugin = [v18 primaryTunnelPlugin];
  if (self)
  {
    v21 = objc_getProperty(self, v19, 16, 1);
  }

  else
  {
    v21 = 0;
  }

  connectParameters = [v21 connectParameters];
  v23 = connectParameters;
  if (primaryTunnelPlugin)
  {
    primaryTunnelPlugin[16] = 1;
    v24 = connectParameters;
    remotePluginObject = [primaryTunnelPlugin remotePluginObject];
    [remotePluginObject connectWithParameters:v24];
  }

LABEL_30:
}

- (void)enterWithSession:(id)session
{
  sessionCopy = session;
  kdebug_trace();
  v16.receiver = self;
  v16.super_class = NESMVPNSessionStateStarting;
  [(NESMVPNSessionState *)&v16 enterWithSession:sessionCopy];

  if (self)
  {
    self->_tunnelConfigurationInstallState = 1;
    if (![objc_getProperty(self v5])
    {
LABEL_8:
      [objc_getProperty(self v6];
      Property = objc_getProperty(self, v13, 16, 1);
LABEL_9:
      [Property setState:5];
      return;
    }

    v7 = objc_getProperty(self, v6, 16, 1);
  }

  else
  {
    prepareConfigurationForStart = [0 prepareConfigurationForStart];
    v7 = 0;
    if ((prepareConfigurationForStart & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  primaryTunnelPlugin = [v7 primaryTunnelPlugin];
  if (self)
  {
    v10 = objc_getProperty(self, v8, 16, 1);
  }

  else
  {
    v10 = 0;
  }

  configuration = [v10 configuration];
  v12 = sub_1000187A4(primaryTunnelPlugin, configuration);

  if (!v12)
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

- (NESMVPNSessionStateStarting)init
{
  v3.receiver = self;
  v3.super_class = NESMVPNSessionStateStarting;
  return [(NESMVPNSessionState *)&v3 initWithType:3 andTimeout:0];
}

@end