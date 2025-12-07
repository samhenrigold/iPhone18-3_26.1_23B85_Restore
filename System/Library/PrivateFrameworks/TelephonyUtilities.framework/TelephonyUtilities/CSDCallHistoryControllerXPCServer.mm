@interface CSDCallHistoryControllerXPCServer
- (CSDCallHistoryControllerXPCServer)initWithCallHistoryController:(id)controller;
- (void)allCallHistoryDeleted;
- (void)dealloc;
- (void)invalidate;
- (void)notifyClientsToConnectIfNecessary;
- (void)recentCallsDeleted:(id)deleted;
- (void)registerClient:(id)client;
- (void)unregisterClient:(id)client;
@end

@implementation CSDCallHistoryControllerXPCServer

- (CSDCallHistoryControllerXPCServer)initWithCallHistoryController:(id)controller
{
  controllerCopy = controller;
  v22.receiver = self;
  v22.super_class = CSDCallHistoryControllerXPCServer;
  v6 = [(CSDCallHistoryControllerXPCServer *)&v22 init];
  v7 = v6;
  if (v6)
  {
    v8 = sub_100004778(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Creating CSDCallHistoryControllerXPCServer", buf, 2u);
    }

    v9 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.callhistorycontrollerxpcserver", 0);
    queue = v7->_queue;
    v7->_queue = v9;

    objc_storeStrong(&v7->_callHistoryController, controller);
    v11 = [[CSDClientManager alloc] initWithSerialQueue:v7->_queue];
    clientManager = v7->_clientManager;
    v7->_clientManager = v11;

    v13 = v7->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10008480C;
    block[3] = &unk_100619D38;
    v14 = v7;
    v20 = v14;
    dispatch_sync(v13, block);
    queue = [(CSDCallHistoryControllerXPCServer *)v14 queue];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100084A9C;
    v17[3] = &unk_100619D38;
    v18 = v14;
    dispatch_async(queue, v17);
  }

  return v7;
}

- (void)dealloc
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "deallocing CallHistoryControllerXPCServer", buf, 2u);
  }

  notify_cancel(self->_clientsShouldConnectToken);
  v4.receiver = self;
  v4.super_class = CSDCallHistoryControllerXPCServer;
  [(CSDCallHistoryControllerXPCServer *)&v4 dealloc];
}

- (void)invalidate
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "invalidating CallHistoryControllerXPCServer", buf, 2u);
  }

  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100084C74;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)notifyClientsToConnectIfNecessary
{
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "NOTIFYING CLIENTS TO CONNECT", v6, 2u);
  }

  notify_set_state(self->_clientsShouldConnectToken, 1uLL);
  notify_post("CSDCallHistoryControllerClientsShouldConnectNotification");
}

- (void)registerClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084E04;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)unregisterClient:(id)client
{
  clientCopy = client;
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100084F0C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = clientCopy;
  v6 = clientCopy;
  dispatch_async(queue, v7);
}

- (void)recentCallsDeleted:(id)deleted
{
  deletedCopy = deleted;
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100085014;
  v7[3] = &unk_100619D88;
  v8 = deletedCopy;
  selfCopy = self;
  v6 = deletedCopy;
  dispatch_async(queue, v7);
}

- (void)allCallHistoryDeleted
{
  queue = [(CSDCallHistoryControllerXPCServer *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100085160;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

@end