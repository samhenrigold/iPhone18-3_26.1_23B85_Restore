@interface SOUIDaemonConnection
+ (id)_queue;
- (BOOL)_connectToDaemon;
- (SOUIDaemonConnection)initWithViewController:(id)controller;
- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion;
@end

@implementation SOUIDaemonConnection

+ (id)_queue
{
  if (qword_1000117A8 != -1)
  {
    sub_100004AA8();
  }

  v3 = qword_1000117A0;

  return v3;
}

- (SOUIDaemonConnection)initWithViewController:(id)controller
{
  controllerCopy = controller;
  v12.receiver = self;
  v12.super_class = SOUIDaemonConnection;
  v6 = [(SOUIDaemonConnection *)&v12 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  xpcDaemonEndpoint = [controllerCopy xpcDaemonEndpoint];

  if (xpcDaemonEndpoint)
  {
    objc_storeStrong(&v6->_viewController, controller);
    [(SOUIDaemonConnection *)v6 _connectToDaemon];
LABEL_4:
    v9 = v6;
    goto LABEL_8;
  }

  v10 = sub_100001178(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
  {
    sub_100004ABC();
  }

  v9 = 0;
LABEL_8:

  return v9;
}

- (BOOL)_connectToDaemon
{
  xpcConnection = [(SOUIDaemonConnection *)self xpcConnection];

  if (xpcConnection)
  {
    v5 = sub_100001178(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      sub_100004B10();
    }

LABEL_8:
    v23 = 1;
    goto LABEL_9;
  }

  v5 = objc_opt_new();
  xpcDaemonEndpoint = [(SOUIServiceViewController *)self->_viewController xpcDaemonEndpoint];
  [v5 _setEndpoint:xpcDaemonEndpoint];

  v7 = [[NSXPCConnection alloc] initWithListenerEndpoint:v5];
  [(SOUIDaemonConnection *)self setXpcConnection:v7];

  xpcConnection2 = [(SOUIDaemonConnection *)self xpcConnection];

  if (xpcConnection2)
  {
    v10 = [sub_100001564() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SOUIServiceProtocol];
    xpcConnection3 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection3 setExportedInterface:v10];

    viewController = self->_viewController;
    xpcConnection4 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection4 setExportedObject:viewController];

    v14 = [sub_100001564() interfaceWithInternalProtocol:&OBJC_PROTOCOL___SODaemonUIProtocol];
    xpcConnection5 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection5 setRemoteObjectInterface:v14];

    objc_initWeak(&location, self);
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100001644;
    v28[3] = &unk_10000C2C8;
    objc_copyWeak(&v29, &location);
    xpcConnection6 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection6 setInvalidationHandler:v28];

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000016AC;
    v26[3] = &unk_10000C2C8;
    objc_copyWeak(&v27, &location);
    xpcConnection7 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection7 setInterruptionHandler:v26];

    xpcConnection8 = [(SOUIDaemonConnection *)self xpcConnection];
    v19 = +[SOUIDaemonConnection _queue];
    [xpcConnection8 _setQueue:v19];

    xpcConnection9 = [(SOUIDaemonConnection *)self xpcConnection];
    [xpcConnection9 resume];

    v22 = sub_100001178(v21);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "%{public}@: new XPC connection", buf, 0xCu);
    }

    objc_destroyWeak(&v27);
    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
    goto LABEL_8;
  }

  v25 = sub_100001178(v9);
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    sub_100004B78();
  }

  v23 = 0;
LABEL_9:

  return v23;
}

- (void)authorizationDidCompleteWithCredential:(id)credential error:(id)error completion:(id)completion
{
  credentialCopy = credential;
  errorCopy = error;
  completionCopy = completion;
  _connectToDaemon = [(SOUIDaemonConnection *)self _connectToDaemon];
  if (_connectToDaemon)
  {
    xpcConnection = [(SOUIDaemonConnection *)self xpcConnection];
    v13 = [xpcConnection synchronousRemoteObjectProxyWithErrorHandler:&stru_10000C308];
    [v13 authorizationDidCompleteWithCredential:credentialCopy error:errorCopy completion:completionCopy];

LABEL_9:
    goto LABEL_10;
  }

  v14 = sub_100001178(_connectToDaemon);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    sub_100004CB8();
  }

  if (completionCopy)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2050000000;
    v15 = qword_1000117D0;
    v21 = qword_1000117D0;
    if (!qword_1000117D0)
    {
      v17[0] = _NSConcreteStackBlock;
      v17[1] = 3221225472;
      v17[2] = sub_100001B74;
      v17[3] = &unk_10000C350;
      v17[4] = &v18;
      sub_100001B74(v17);
      v15 = v19[3];
    }

    v16 = v15;
    _Block_object_dispose(&v18, 8);
    xpcConnection = [v15 internalErrorWithMessage:@"Failed to connect to AppSSO daemon"];
    completionCopy[2](completionCopy, 0, xpcConnection);
    goto LABEL_9;
  }

LABEL_10:
}

@end