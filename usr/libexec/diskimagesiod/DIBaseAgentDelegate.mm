@interface DIBaseAgentDelegate
- (void)createListener;
@end

@implementation DIBaseAgentDelegate

- (void)createListener
{
  serviceName = [(DIBaseServiceDelegate *)self serviceName];
  v4 = [serviceName stringByAppendingString:@".xpc"];

  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    v15 = 0;
    v8 = sub_1000E957C(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    serviceName2 = [(DIBaseServiceDelegate *)self serviceName];
    *buf = 68158210;
    v17 = 37;
    v18 = 2080;
    v19 = "[DIBaseAgentDelegate createListener]";
    v20 = 2114;
    v21 = serviceName2;
    v11 = _os_log_send_and_compose_impl(v9, &v15, 0, 0, &_mh_execute_header, v8, 0, "%.*s: Creating NSXPC listener on %{public}@", buf, 28);

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E957C(v6, v7);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      serviceName3 = [(DIBaseServiceDelegate *)self serviceName];
      *buf = 68158210;
      v17 = 37;
      v18 = 2080;
      v19 = "[DIBaseAgentDelegate createListener]";
      v20 = 2114;
      v21 = serviceName3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Creating NSXPC listener on %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v5;
  v14 = [[NSXPCListener alloc] initWithMachServiceName:v4];
  [(DIBaseServiceDelegate *)self setListener:v14];
}

@end