@interface DIBaseXPCHandler
- (BOOL)completeCommandWithError:(id *)error;
- (BOOL)connectWithError:(id *)error;
- (BOOL)dupStderrWithError:(id *)error;
- (DIBaseXPCHandler)init;
- (void)closeConnection;
- (void)createConnection;
- (void)dealloc;
- (void)signalCommandCompletedWithXpcError:(id)error;
@end

@implementation DIBaseXPCHandler

- (DIBaseXPCHandler)init
{
  v16.receiver = self;
  v16.super_class = DIBaseXPCHandler;
  v2 = [(DIBaseXPCHandler *)&v16 init];
  if (v2 && (v3 = dispatch_semaphore_create(0), [(DIBaseXPCHandler *)v2 setSemaphore:v3], v3, [(DIBaseXPCHandler *)v2 semaphore], v4 = objc_claimAutoreleasedReturnValue(), v4, !v4))
  {
    v6 = *__error();
    v7 = sub_1000E95F0();
    if (v7)
    {
      v15 = 0;
      v9 = sub_1000E957C(v7, v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v10 = 3;
      }

      else
      {
        v10 = 2;
      }

      *buf = 68157954;
      v18 = 24;
      v19 = 2080;
      v20 = "[DIBaseXPCHandler init]";
      LODWORD(v14) = 18;
      v11 = _os_log_send_and_compose_impl(v10, &v15, 0, 0, &_mh_execute_header, v9, 16, "%.*s: Failed creating semaphore", buf, v14);

      if (v11)
      {
        fprintf(__stderrp, "%s\n", v11);
        free(v11);
      }
    }

    else
    {
      v12 = sub_1000E957C(v7, v8);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 68157954;
        v18 = 24;
        v19 = 2080;
        v20 = "[DIBaseXPCHandler init]";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%.*s: Failed creating semaphore", buf, 0x12u);
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

- (void)dealloc
{
  connection = self->_connection;
  if (connection)
  {
    [(NSXPCConnection *)connection invalidate];
  }

  v4.receiver = self;
  v4.super_class = DIBaseXPCHandler;
  [(DIBaseXPCHandler *)&v4 dealloc];
}

- (BOOL)connectWithError:(id *)error
{
  objc_initWeak(&location, self);
  [(DIBaseXPCHandler *)self createConnection];
  connection = [(DIBaseXPCHandler *)self connection];

  if (connection)
  {
    connection2 = [(DIBaseXPCHandler *)self connection];
    [connection2 resume];

    connection3 = [(DIBaseXPCHandler *)self connection];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_1000587E0;
    v14 = &unk_1001FCC58;
    objc_copyWeak(&v15, &location);
    v8 = [connection3 remoteObjectProxyWithErrorHandler:&v11];
    [(DIBaseXPCHandler *)self setRemoteProxy:v8, v11, v12, v13, v14];

    objc_destroyWeak(&v15);
    v9 = 1;
  }

  else
  {
    v9 = [DIError failWithEnumValue:151 verboseInfo:@"Failed to create XPC connection object" error:error];
  }

  objc_destroyWeak(&location);
  return v9;
}

- (void)signalCommandCompletedWithXpcError:(id)error
{
  [(DIBaseXPCHandler *)self setXpcError:error];
  semaphore = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_signal(semaphore);
}

- (BOOL)completeCommandWithError:(id *)error
{
  semaphore = [(DIBaseXPCHandler *)self semaphore];
  dispatch_semaphore_wait(semaphore, 0xFFFFFFFFFFFFFFFFLL);

  xpcError = [(DIBaseXPCHandler *)self xpcError];
  [(DIBaseXPCHandler *)self setXpcError:0];
  connection = [(DIBaseXPCHandler *)self connection];

  if (!connection)
  {
    v14 = [DIError failWithEnumValue:151 verboseInfo:@"XPC connection failed" error:error];
LABEL_15:
    v15 = v14;
    goto LABEL_16;
  }

  if (xpcError)
  {
    v8 = *__error();
    v9 = sub_1000E95F0();
    if (v9)
    {
      v18 = 0;
      v11 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 3;
      }

      else
      {
        v12 = 2;
      }

      *buf = 68158210;
      v20 = 45;
      v21 = 2080;
      v22 = "[DIBaseXPCHandler completeCommandWithError:]";
      v23 = 2114;
      v24 = xpcError;
      v13 = _os_log_send_and_compose_impl(v12, &v18, 0, 0, &_mh_execute_header, v11, 0, "%.*s: Got error from last XPC command: %{public}@", buf, 28);

      if (v13)
      {
        fprintf(__stderrp, "%s\n", v13);
        free(v13);
      }
    }

    else
    {
      v16 = sub_1000E957C(v9, v10);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68158210;
        v20 = 45;
        v21 = 2080;
        v22 = "[DIBaseXPCHandler completeCommandWithError:]";
        v23 = 2114;
        v24 = xpcError;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%.*s: Got error from last XPC command: %{public}@", buf, 0x1Cu);
      }
    }

    *__error() = v8;
    v14 = [DIError failWithInError:xpcError outError:error];
    goto LABEL_15;
  }

  v15 = 1;
LABEL_16:

  return v15;
}

- (void)closeConnection
{
  connection = [(DIBaseXPCHandler *)self connection];
  [connection invalidate];

  [(DIBaseXPCHandler *)self setConnection:0];
}

- (BOOL)dupStderrWithError:(id *)error
{
  objc_initWeak(&location, self);
  v5 = [NSFileHandle alloc];
  v6 = [v5 initWithFileDescriptor:fileno(__stderrp)];
  remoteProxy = [(DIBaseXPCHandler *)self remoteProxy];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_100058C68;
  v12 = &unk_1001FCC58;
  objc_copyWeak(&v13, &location);
  [remoteProxy dupWithStderrHandle:v6 reply:&v9];

  LOBYTE(error) = [(DIBaseXPCHandler *)self completeCommandWithError:error, v9, v10, v11, v12];
  objc_destroyWeak(&v13);

  objc_destroyWeak(&location);
  return error;
}

- (void)createConnection
{
  v3 = *__error();
  v4 = sub_1000E95F0();
  if (v4)
  {
    v17 = 0;
    v6 = sub_1000E957C(v4, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 3;
    }

    else
    {
      v7 = 2;
    }

    serviceName = [(DIBaseXPCHandler *)self serviceName];
    *buf = 68158210;
    v19 = 36;
    v20 = 2080;
    v21 = "[DIBaseXPCHandler createConnection]";
    v22 = 2114;
    v23 = serviceName;
    v9 = _os_log_send_and_compose_impl(v7, &v17, 0, 0, &_mh_execute_header, v6, 0, "%.*s: Creating connection with %{public}@", buf, 28);

    if (v9)
    {
      fprintf(__stderrp, "%s\n", v9);
      free(v9);
    }
  }

  else
  {
    v10 = sub_1000E957C(v4, v5);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      serviceName2 = [(DIBaseXPCHandler *)self serviceName];
      *buf = 68158210;
      v19 = 36;
      v20 = 2080;
      v21 = "[DIBaseXPCHandler createConnection]";
      v22 = 2114;
      v23 = serviceName2;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%.*s: Creating connection with %{public}@", buf, 0x1Cu);
    }
  }

  *__error() = v3;
  v12 = [NSXPCConnection alloc];
  serviceName3 = [(DIBaseXPCHandler *)self serviceName];
  v14 = [v12 initWithServiceName:serviceName3];
  [(DIBaseXPCHandler *)self setConnection:v14];

  remoteObjectInterface = [(DIBaseXPCHandler *)self remoteObjectInterface];
  connection = [(DIBaseXPCHandler *)self connection];
  [connection setRemoteObjectInterface:remoteObjectInterface];
}

@end