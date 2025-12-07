@interface DIBaseServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (DIBaseServiceDelegate)init;
- (void)createListener;
- (void)startXPClistener;
@end

@implementation DIBaseServiceDelegate

- (DIBaseServiceDelegate)init
{
  v16.receiver = self;
  v16.super_class = DIBaseServiceDelegate;
  v2 = [(DIBaseServiceDelegate *)&v16 init];
  if (v2 && (v3 = dispatch_queue_create(0, &_dispatch_queue_attr_concurrent), dispatchQueue = v2->_dispatchQueue, v2->_dispatchQueue = v3, dispatchQueue, !v2->_dispatchQueue))
  {
    v6 = *__error();
    v7 = sub_1000E044C();
    if (v7)
    {
      v15 = 0;
      v9 = sub_1000E03D8(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      *buf = 68157954;
      v18 = 29;
      v19 = 2080;
      v20 = "[DIBaseServiceDelegate init]";
      LODWORD(v14) = 18;
      v11 = _os_log_send_and_compose_impl(v10, &v15, 0, 0, &_mh_execute_header, v9, 16, "%.*s: Failed creating queue", buf, v14);

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E03D8(v7, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v18 = 29;
        v19 = 2080;
        v20 = "[DIBaseServiceDelegate init]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: Failed creating queue", buf, 0x12u);
      }
    }

    v5 = 0;
    *__error() = v6;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = *__error();
  v7 = sub_1000E044C();
  if (v7)
  {
    v17 = 0;
    v9 = sub_1000E03D8(v7, v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    *buf = 68158722;
    v19 = 60;
    v20 = 2080;
    v21 = "[DIBaseServiceDelegate listener:shouldAcceptNewConnection:]";
    v22 = 1024;
    processIdentifier = [connectionCopy processIdentifier];
    v24 = 1024;
    effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
    v26 = 1024;
    v27 = geteuid();
    LODWORD(v15) = 36;
    v11 = _os_log_send_and_compose_impl(v10, &v17, 0, 0, &_mh_execute_header, v9, 0, "%.*s: Received connection from pid %d with euid %d. Our euid is %d", buf, v15, v16);

    if (v11)
    {
      fprintf(__stderrp, "%s\n", v11);
      free(v11);
    }
  }

  else
  {
    v12 = sub_1000E03D8(v7, v8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68158722;
      v19 = 60;
      v20 = 2080;
      v21 = "[DIBaseServiceDelegate listener:shouldAcceptNewConnection:]";
      v22 = 1024;
      processIdentifier = [connectionCopy processIdentifier];
      v24 = 1024;
      effectiveUserIdentifier = [connectionCopy effectiveUserIdentifier];
      v26 = 1024;
      v27 = geteuid();
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%.*s: Received connection from pid %d with euid %d. Our euid is %d", buf, 0x24u);
    }
  }

  *__error() = v6;
  v13 = [(DIBaseServiceDelegate *)self setupNewConnection:connectionCopy];
  [connectionCopy resume];
  [(DIBaseServiceDelegate *)self validateConnection];

  return v13;
}

- (void)createListener
{
  v3 = +[NSXPCListener serviceListener];
  [(DIBaseServiceDelegate *)self setListener:v3];
}

- (void)startXPClistener
{
  [(DIBaseServiceDelegate *)self createListener];
  listener = [(DIBaseServiceDelegate *)self listener];
  [listener setDelegate:self];

  listener2 = [(DIBaseServiceDelegate *)self listener];
  [listener2 resume];
}

@end