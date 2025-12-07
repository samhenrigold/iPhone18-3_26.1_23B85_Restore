@interface DIController2IO_XPCHandlerBase
- (DIController2IO_XPCHandlerBase)initWithParams:(id)params;
- (id)serviceName;
- (void)setConnectionMode;
@end

@implementation DIController2IO_XPCHandlerBase

- (DIController2IO_XPCHandlerBase)initWithParams:(id)params
{
  paramsCopy = params;
  v9.receiver = self;
  v9.super_class = DIController2IO_XPCHandlerBase;
  v6 = [(DIBaseXPCHandler *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_params, params);
    [(DIBaseXPCHandler *)v7 setIsPrivileged:1];
  }

  return v7;
}

- (id)serviceName
{
  params = [(DIController2IO_XPCHandlerBase *)self params];
  requiresRootDaemon = [params requiresRootDaemon];

  if (requiresRootDaemon)
  {
    return @"com.apple.diskimagesiod.spb";
  }

  params2 = [(DIController2IO_XPCHandlerBase *)self params];
  rAMdisk = [params2 RAMdisk];

  if (rAMdisk)
  {
    return @"com.apple.diskimagesiod.ram";
  }

  else
  {
    return @"com.apple.diskimagesiod";
  }
}

- (void)setConnectionMode
{
  v3 = *__error();
  v4 = sub_1000E044C();
  if (v4)
  {
    v15 = 0;
    v6 = sub_1000E03D8(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    *buf = 68157954;
    *&buf[4] = 51;
    LOWORD(v17[0]) = 2080;
    *(v17 + 2) = "[DIController2IO_XPCHandlerBase setConnectionMode]";
    LODWORD(v14) = 18;
    v8 = _os_log_send_and_compose_impl(v7, &v15, 0, 0, &_mh_execute_header, v6, 0, "%.*s: Setting oneshot XPC instance", buf, v14);

    if (v8)
    {
      fprintf(__stderrp, "%s\n", v8);
      free(v8);
    }
  }

  else
  {
    v9 = sub_1000E03D8(v4, v5);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      *&buf[4] = 51;
      LOWORD(v17[0]) = 2080;
      *(v17 + 2) = "[DIController2IO_XPCHandlerBase setConnectionMode]";
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%.*s: Setting oneshot XPC instance", buf, 0x12u);
    }
  }

  *__error() = v3;
  connection = [(DIBaseXPCHandler *)self connection];
  _xpcConnection = [connection _xpcConnection];

  *buf = 0;
  v17[0] = 0;
  params = [(DIController2IO_XPCHandlerBase *)self params];
  instanceID = [params instanceID];
  [instanceID getUUIDBytes:buf];

  xpc_connection_set_oneshot_instance();
}

@end