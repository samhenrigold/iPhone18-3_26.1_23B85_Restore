@interface DIBaseAgentXPCHandler
- (void)createConnection;
@end

@implementation DIBaseAgentXPCHandler

- (void)createConnection
{
  isPrivileged = [(DIBaseXPCHandler *)self isPrivileged];
  serviceName = [(DIBaseXPCHandler *)self serviceName];
  v5 = [serviceName stringByAppendingString:@".xpc"];

  v6 = *__error();
  v7 = sub_1000E95F0();
  if (v7)
  {
    v17 = 0;
    v9 = sub_1000E957C(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *buf = 68158210;
    v19 = 41;
    v20 = 2080;
    v21 = "[DIBaseAgentXPCHandler createConnection]";
    v22 = 2114;
    v23 = v5;
    v11 = _os_log_send_and_compose_impl(v10, &v17, 0, 0, &_mh_execute_header, v9, 0, "%.*s: Creating connection to %{public}@", buf, 28);

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E957C(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158210;
      v19 = 41;
      v20 = 2080;
      v21 = "[DIBaseAgentXPCHandler createConnection]";
      v22 = 2114;
      v23 = v5;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection to %{public}@", buf, 0x1Cu);
    }
  }

  if (isPrivileged)
  {
    v13 = 4096;
  }

  else
  {
    v13 = 0;
  }

  *__error() = v6;
  v14 = [[NSXPCConnection alloc] initWithMachServiceName:v5 options:v13];
  [(DIBaseXPCHandler *)self setConnection:v14];

  [(DIBaseAgentXPCHandler *)self setConnectionMode];
  remoteObjectInterface = [(DIBaseXPCHandler *)self remoteObjectInterface];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setRemoteObjectInterface:remoteObjectInterface];
}

@end