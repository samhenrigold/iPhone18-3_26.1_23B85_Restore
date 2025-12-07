@interface IMBackgroundMessagingAPIConnection
- (IMBackgroundMessagingAPIConnection)init;
- (id)_backgroundMessagingAPIServiceWithErrorHandler:(id)handler;
- (id)_currentConnection;
- (void)_clearConnection;
- (void)checkAuthorizationStatusForRecipients:(id)recipients completion:(id)completion;
- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)recipients completion:(id)completion;
- (void)sendBackgroundMessage:(id)message toRecipient:(id)recipient completion:(id)completion;
@end

@implementation IMBackgroundMessagingAPIConnection

- (IMBackgroundMessagingAPIConnection)init
{
  v6.receiver = self;
  v6.super_class = IMBackgroundMessagingAPIConnection;
  v2 = [(IMBackgroundMessagingAPIConnection *)&v6 init];
  v3 = dispatch_queue_create("IMBackgroundMessagingAPIConnectionQueue", 0);
  queue = v2->_queue;
  v2->_queue = v3;

  return v2;
}

- (id)_currentConnection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.messages.critical-messaging" options:0];
    v5 = self->_connection;
    self->_connection = v4;

    [(NSXPCConnection *)self->_connection _setQueue:self->_queue];
    objc_initWeak(&location, self);
    v6 = self->_connection;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = sub_1A831359C;
    v13[3] = &unk_1E780FDC8;
    objc_copyWeak(&v14, &location);
    [(NSXPCConnection *)v6 setInvalidationHandler:v13];
    v7 = self->_connection;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = sub_1A8313644;
    v11[3] = &unk_1E780FDC8;
    objc_copyWeak(&v12, &location);
    [(NSXPCConnection *)v7 setInterruptionHandler:v11];
    v8 = self->_connection;
    v9 = IMDaemonBackgroundMessagingProtocolXPCInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    [(NSXPCConnection *)self->_connection resume];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
    connection = self->_connection;
  }

  return connection;
}

- (void)_clearConnection
{
  [(NSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (id)_backgroundMessagingAPIServiceWithErrorHandler:(id)handler
{
  handlerCopy = handler;
  _currentConnection = [(IMBackgroundMessagingAPIConnection *)self _currentConnection];
  v6 = [_currentConnection remoteObjectProxyWithErrorHandler:handlerCopy];

  return v6;
}

- (void)requestBackgroundMessagingAuthorizationForRecipients:(id)recipients completion:(id)completion
{
  recipientsCopy = recipients;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "requestBackgroundMessagingAuthorizationForRecipients", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A83138CC;
  block[3] = &unk_1E7812328;
  v13 = recipientsCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = recipientsCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

- (void)checkAuthorizationStatusForRecipients:(id)recipients completion:(id)completion
{
  recipientsCopy = recipients;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v8, OS_LOG_TYPE_INFO, "checkAuthorizationStatusForRecipients", buf, 2u);
    }
  }

  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A8313B68;
  block[3] = &unk_1E7812328;
  v13 = recipientsCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = recipientsCopy;
  v11 = completionCopy;
  dispatch_async(queue, block);
}

- (void)sendBackgroundMessage:(id)message toRecipient:(id)recipient completion:(id)completion
{
  messageCopy = message;
  recipientCopy = recipient;
  completionCopy = completion;
  if (IMOSLoggingEnabled())
  {
    v11 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_1A823F000, v11, OS_LOG_TYPE_INFO, "sendBackgroundMessage", buf, 2u);
    }
  }

  queue = self->_queue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_1A8313E2C;
  v16[3] = &unk_1E7812350;
  v16[4] = self;
  v17 = messageCopy;
  v18 = recipientCopy;
  v19 = completionCopy;
  v13 = recipientCopy;
  v14 = messageCopy;
  v15 = completionCopy;
  dispatch_async(queue, v16);
}

@end