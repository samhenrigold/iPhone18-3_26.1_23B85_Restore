@interface DIIOClientDelegate
- (BOOL)setupNewConnection:(id)connection;
- (DIIOClientDelegate)initWithIODaemon:(id)daemon;
- (DIIODaemonDelegate)weakDaemon;
- (NSXPCListenerEndpoint)xpcEndpoint;
- (void)addToRefCountWithReply:(id)reply;
- (void)createListener;
@end

@implementation DIIOClientDelegate

- (DIIOClientDelegate)initWithIODaemon:(id)daemon
{
  daemonCopy = daemon;
  v8.receiver = self;
  v8.super_class = DIIOClientDelegate;
  v5 = [(DIBaseServiceDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_weakDaemon, daemonCopy);
  }

  return v6;
}

- (void)addToRefCountWithReply:(id)reply
{
  replyCopy = reply;
  v4 = *__error();
  v5 = sub_1000E95F0();
  if (v5)
  {
    v12 = 0;
    v7 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 3;
    }

    else
    {
      v8 = 2;
    }

    *buf = 68157954;
    v14 = 45;
    v15 = 2080;
    v16 = "[DIIOClientDelegate addToRefCountWithReply:]";
    LODWORD(v11) = 18;
    v9 = _os_log_send_and_compose_impl(v8, &v12, 0, 0, &_mh_execute_header, v7, 0, "%.*s: Reached, keeping connection alive", buf, v11);

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C(v5, v6);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v14 = 45;
      v15 = 2080;
      v16 = "[DIIOClientDelegate addToRefCountWithReply:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Reached, keeping connection alive", buf, 0x12u);
    }
  }

  *__error() = v4;
  replyCopy[2](replyCopy, 0);
}

- (BOOL)setupNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = *__error();
  v6 = sub_1000E95F0();
  if (v6)
  {
    location = 0;
    v8 = sub_1000E957C(v6, v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 3;
    }

    else
    {
      v9 = 2;
    }

    *buf = 68157954;
    v41 = 41;
    v42 = 2080;
    v43 = "[DIIOClientDelegate setupNewConnection:]";
    LODWORD(v29) = 18;
    v10 = _os_log_send_and_compose_impl(v9, &location, 0, 0, &_mh_execute_header, v8, 0, "%.*s: A new client has connected to the clients listener", buf, v29);

    if (v10)
    {
      fprintf(__stderrp, "%s\n", v10);
      free(v10);
    }
  }

  else
  {
    v11 = sub_1000E957C(v6, v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v41 = 41;
      v42 = 2080;
      v43 = "[DIIOClientDelegate setupNewConnection:]";
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%.*s: A new client has connected to the clients listener", buf, 0x12u);
    }
  }

  *__error() = v5;
  v12 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DIIOClientProtocol];
  [connectionCopy setExportedInterface:v12];

  [connectionCopy setExportedObject:self];
  objc_initWeak(&location, self);
  objc_initWeak(&from, connectionCopy);
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_100006398;
  v35[3] = &unk_1001F5760;
  objc_copyWeak(&v36, &location);
  objc_copyWeak(&v37, &from);
  [connectionCopy setInvalidationHandler:v35];
  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_100006568;
  v32[3] = &unk_1001F5760;
  objc_copyWeak(&v33, &location);
  objc_copyWeak(&v34, &from);
  [connectionCopy setInterruptionHandler:v32];
  weakDaemon = [(DIIOClientDelegate *)self weakDaemon];
  v14 = weakDaemon;
  if (weakDaemon)
  {
    v15 = weakDaemon;
    objc_sync_enter(v15);
    activeConnections = [v15 activeConnections];
    [activeConnections addObject:connectionCopy];

    v17 = *__error();
    v18 = sub_1000E95F0();
    if (v18)
    {
      v31 = 0;
      v20 = sub_1000E957C(v18, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 3;
      }

      else
      {
        v21 = 2;
      }

      activeConnections2 = [v15 activeConnections];
      v23 = [activeConnections2 count];
      *buf = 68158210;
      v41 = 41;
      v42 = 2080;
      v43 = "[DIIOClientDelegate setupNewConnection:]";
      v44 = 2048;
      v45 = v23;
      LODWORD(v29) = 28;
      v24 = _os_log_send_and_compose_impl(v21, &v31, 0, 0, &_mh_execute_header, v20, 0, "%.*s: # of active connections: %lu", buf, v29, v30);

      if (v24)
      {
        fprintf(__stderrp, "%s\n", v24);
        free(v24);
      }
    }

    else
    {
      v25 = sub_1000E957C(v18, v19);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        activeConnections3 = [v15 activeConnections];
        v27 = [activeConnections3 count];
        *buf = 68158210;
        v41 = 41;
        v42 = 2080;
        v43 = "[DIIOClientDelegate setupNewConnection:]";
        v44 = 2048;
        v45 = v27;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "%.*s: # of active connections: %lu", buf, 0x1Cu);
      }
    }

    *__error() = v17;
    objc_sync_exit(v15);
  }

  objc_destroyWeak(&v34);
  objc_destroyWeak(&v33);
  objc_destroyWeak(&v37);
  objc_destroyWeak(&v36);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);

  return 1;
}

- (void)createListener
{
  v3 = +[NSXPCListener anonymousListener];
  [(DIBaseServiceDelegate *)self setListener:v3];
}

- (NSXPCListenerEndpoint)xpcEndpoint
{
  listener = [(DIBaseServiceDelegate *)self listener];
  endpoint = [listener endpoint];

  return endpoint;
}

- (DIIODaemonDelegate)weakDaemon
{
  WeakRetained = objc_loadWeakRetained(&self->_weakDaemon);

  return WeakRetained;
}

@end