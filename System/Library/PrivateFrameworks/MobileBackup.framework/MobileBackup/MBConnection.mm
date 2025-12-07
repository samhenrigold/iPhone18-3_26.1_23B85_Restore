@interface MBConnection
- (MBConnection)initWithServiceName:(id)name delegate:(id)delegate delegateQueue:(id)queue;
- (MBConnection)initWithXPCConnection:(id)connection delegate:(id)delegate delegateQueue:(id)queue;
- (MBConnectionDelegate)delegate;
- (id)description;
- (id)sendMessageWithReplyAndSync:(id)sync error:(id *)error;
- (void)_handleXPCError:(id)error;
- (void)_handleXPCEvent:(id)event;
- (void)_refreshProcessInfoWithXPCConnection:(id)connection;
- (void)_setEventHandlerForXPCConnection:(id)connection;
- (void)cancel;
- (void)sendMessage:(id)message;
- (void)sendMessage:(id)message barrierBlock:(id)block;
@end

@implementation MBConnection

- (MBConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)description
{
  v3 = atomic_load(&self->_pid);
  if (v3)
  {
    processName = [(MBConnection *)self processName];
    v5 = MEMORY[0x1E696AEC0];
    v6 = objc_opt_class();
    if (processName)
    {
      [v5 stringWithFormat:@"<%@: %p; %@(%d)>", v6, self, processName, v3];
    }

    else
    {
      [v5 stringWithFormat:@"<%@: %p; %d>", v6, self, v3, v9];
    }
    v7 = ;
  }

  else
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<%@: %p>", objc_opt_class(), self];
  }

  return v7;
}

- (MBConnection)initWithXPCConnection:(id)connection delegate:(id)delegate delegateQueue:(id)queue
{
  connectionCopy = connection;
  delegateCopy = delegate;
  queueCopy = queue;
  if (!connectionCopy)
  {
    [MBConnection initWithXPCConnection:delegate:delegateQueue:];
  }

  v12 = queueCopy;
  if (!queueCopy)
  {
    [MBConnection initWithXPCConnection:delegate:delegateQueue:];
  }

  v19.receiver = self;
  v19.super_class = MBConnection;
  v13 = [(MBConnection *)&v19 init];
  v14 = v13;
  if (v13)
  {
    objc_storeWeak(&v13->_delegate, delegateCopy);
    objc_storeStrong(&v14->_queue, queue);
    xpc_connection_set_target_queue(connectionCopy, v12);
    [(MBConnection *)v14 _setEventHandlerForXPCConnection:connectionCopy];
    [(MBConnection *)v14 _refreshProcessInfoWithXPCConnection:connectionCopy];
    objc_storeStrong(&v14->_xpcConnection, connection);
    currentPersona = [MEMORY[0x1E69DF078] currentPersona];
    userPersonaUniqueString = [currentPersona userPersonaUniqueString];
    personaIdentifier = v14->_personaIdentifier;
    v14->_personaIdentifier = userPersonaUniqueString;
  }

  return v14;
}

- (MBConnection)initWithServiceName:(id)name delegate:(id)delegate delegateQueue:(id)queue
{
  nameCopy = name;
  delegateCopy = delegate;
  queueCopy = queue;
  v26.receiver = self;
  v26.super_class = MBConnection;
  v11 = [(MBConnection *)&v26 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_delegate, delegateCopy);
    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = objc_opt_class();
    v15 = [v13 initWithFormat:@"%s.%p", class_getName(v14), v12];
    v16 = v15;
    if (!queueCopy)
    {
      uTF8String = [v15 UTF8String];
      v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      queueCopy = dispatch_queue_create(uTF8String, v18);
    }

    objc_storeStrong(&v12->_queue, queueCopy);
    v19 = objc_opt_class();
    Name = class_getName(v19);
    v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v22 = dispatch_queue_create(Name, v21);

    mach_service = xpc_connection_create_mach_service([nameCopy UTF8String], v22, 0);
    [(MBConnection *)v12 _setEventHandlerForXPCConnection:mach_service];
    atomic_store(0, &v12->_pid);
    xpcConnection = v12->_xpcConnection;
    v12->_xpcConnection = mach_service;
  }

  return v12;
}

- (void)_refreshProcessInfoWithXPCConnection:(id)connection
{
  v3 = MEMORY[0x1EEE9AC00](self, a2, connection);
  v11 = *MEMORY[0x1E69E9840];
  pid = xpc_connection_get_pid(v4);
  if (pid)
  {
    v6 = pid;
    atomic_store(pid, v3 + 2);
    if (MBIsRunningInDaemon())
    {
      v7 = proc_pidpath(v6, buffer, 0x1000u);
      if (v7 < 1)
      {
        lastPathComponent = 0;
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:buffer length:v7 encoding:4];
        lastPathComponent = [v8 lastPathComponent];
      }

      [v3 setProcessName:lastPathComponent];
    }
  }
}

- (void)_setEventHandlerForXPCConnection:(id)connection
{
  connectionCopy = connection;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __49__MBConnection__setEventHandlerForXPCConnection___block_invoke;
  v6[3] = &unk_1E8684850;
  v6[4] = self;
  v7 = connectionCopy;
  v5 = connectionCopy;
  xpc_connection_set_event_handler(v5, v6);
}

void __49__MBConnection__setEventHandlerForXPCConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __49__MBConnection__setEventHandlerForXPCConnection___block_invoke_2;
  block[3] = &unk_1E8684758;
  v5 = *(a1 + 40);
  block[4] = *(a1 + 32);
  v8 = v5;
  v9 = v3;
  v6 = v3;
  dispatch_async(v4, block);
}

void __49__MBConnection__setEventHandlerForXPCConnection___block_invoke_2(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!atomic_load((*(a1 + 32) + 8)))
  {
    [*(a1 + 32) _refreshProcessInfoWithXPCConnection:*(a1 + 40)];
  }

  v3 = MEMORY[0x1E12C5CD0](*(a1 + 48));
  if (v3 == MEMORY[0x1E69E9E80])
  {
    v9 = *(a1 + 32);
    v10 = *(a1 + 48);

    [v9 _handleXPCEvent:v10];
  }

  else if (v3 == MEMORY[0x1E69E9E98])
  {
    [*(a1 + 32) _handleXPCError:*(a1 + 48)];
    if (*(a1 + 48) == MEMORY[0x1E69E9E18] && atomic_exchange((*(a1 + 32) + 8), 0))
    {
      v11 = *(a1 + 32);

      [v11 setProcessName:0];
    }
  }

  else
  {
    v4 = MBGetDefaultLog(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = MBStringWithXPCObject();
      *buf = 138412546;
      v13 = v5;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_1DEB5D000, v4, OS_LOG_TYPE_ERROR, "%@ Received unexpected XPC message: %@", buf, 0x16u);

      v7 = *(a1 + 32);
      v8 = MBStringWithXPCObject();
      _MBLog(@"E ", "%@ Received unexpected XPC message: %@", v7, v8);
    }
  }
}

- (void)_handleXPCEvent:(id)event
{
  v14 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  queue = [(MBConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [[MBMessage alloc] _initWithXPCObject:eventCopy];
  v7 = MBIsRunningInDaemon();
  if ((v7 & 1) == 0)
  {
    v8 = MBGetDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy = self;
      v12 = 2114;
      v13 = v6;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_INFO, "%{public}@ received %{public}@", buf, 0x16u);
      _MBLog(@"I ", "%{public}@ received %{public}@", self, v6);
    }
  }

  delegate = [(MBConnection *)self delegate];
  [delegate connection:self didReceiveMessage:v6];
}

- (void)_handleXPCError:(id)error
{
  v14 = *MEMORY[0x1E69E9840];
  queue = [(MBConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(MBConnection *)self delegate];
  v7 = delegate;
  if (error == MEMORY[0x1E69E9E20])
  {
    v9 = MBGetDefaultLog(delegate);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v12 = 1024;
      v13 = v7 != 0;
      _os_log_impl(&dword_1DEB5D000, v9, OS_LOG_TYPE_INFO, "%{public}@ was invalidated (%d)", buf, 0x12u);
      _MBLog(@"I ", "%{public}@ was invalidated (%d)", self, v7 != 0);
    }

    [v7 connectionWasInvalidated:self];
  }

  else if (error == MEMORY[0x1E69E9E18])
  {
    v8 = MBGetDefaultLog(delegate);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 138543618;
      selfCopy2 = self;
      v12 = 1024;
      v13 = v7 != 0;
      _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_INFO, "%{public}@ was interrupted (%d)", buf, 0x12u);
      _MBLog(@"I ", "%{public}@ was interrupted (%d)", self, v7 != 0);
    }

    [v7 connectionWasInterrupted:self];
  }
}

- (void)sendMessage:(id)message
{
  v11 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v5 = MBGetDefaultLog(messageCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v9 = 2112;
    v10 = messageCopy;
    _os_log_impl(&dword_1DEB5D000, v5, OS_LOG_TYPE_DEBUG, "%{public}@ sending %@", buf, 0x16u);
    _MBLog(@"Db", "%{public}@ sending %@", self, messageCopy);
  }

  _xpcObject = [messageCopy _xpcObject];
  xpc_connection_send_message(self->_xpcConnection, _xpcObject);
}

- (void)sendMessage:(id)message barrierBlock:(id)block
{
  v14 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  blockCopy = block;
  v8 = MBGetDefaultLog(blockCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v12 = 2112;
    v13 = messageCopy;
    _os_log_impl(&dword_1DEB5D000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ sending (barrier) %@", buf, 0x16u);
    _MBLog(@"Df", "%{public}@ sending (barrier) %@", self, messageCopy);
  }

  _xpcObject = [messageCopy _xpcObject];
  xpc_connection_send_message(self->_xpcConnection, _xpcObject);
  xpc_connection_send_barrier(self->_xpcConnection, blockCopy);
}

- (id)sendMessageWithReplyAndSync:(id)sync error:(id *)error
{
  v26 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  name = [syncCopy name];

  if (!name)
  {
    [MBConnection sendMessageWithReplyAndSync:a2 error:self];
  }

  v10 = MBGetDefaultLog(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 2112;
    v25 = syncCopy;
    _os_log_impl(&dword_1DEB5D000, v10, OS_LOG_TYPE_DEBUG, "%{public}@ sending %@", buf, 0x16u);
    _MBLog(@"Db", "%{public}@ sending %@", self, syncCopy);
  }

  _xpcObject = [syncCopy _xpcObject];
  v12 = self->_xpcConnection;
  v13 = xpc_connection_send_message_with_reply_sync(v12, _xpcObject);
  if (MEMORY[0x1E12C5CD0]() == MEMORY[0x1E69E9E80])
  {
    v17 = [[MBMessage alloc] _initWithXPCObject:v13];
    v18 = 0;
  }

  else
  {
    v14 = v13;
    v15 = v14;
    if (v14 == MEMORY[0x1E69E9E20])
    {
      v16 = MBStringWithXPCObject();
      [MBError errorWithCode:20 format:@"%@", v16];
    }

    else if (v14 == MEMORY[0x1E69E9E18])
    {
      v16 = MBStringWithXPCObject();
      [MBError errorWithCode:19 format:@"%@", v16];
    }

    else
    {
      v16 = MBStringWithXPCObject();
      [MBError errorWithCode:18 format:@"%@", v16];
    }
    v18 = ;

    v17 = 0;
  }

  if (!atomic_load(&self->_pid))
  {
    [(MBConnection *)self _refreshProcessInfoWithXPCConnection:v12];
  }

  if (error && v18)
  {
    v20 = v18;
    *error = v18;
  }

  return v17;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = MBGetDefaultLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_1DEB5D000, v3, OS_LOG_TYPE_INFO, "Canceling %{public}@", buf, 0xCu);
    _MBLog(@"I ", "Canceling %{public}@", self);
  }

  [(MBConnection *)self setDelegate:0];
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
  }
}

- (void)sendMessageWithReplyAndSync:(uint64_t)a1 error:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MBConnection.m" lineNumber:170 description:@"message must have a name"];
}

@end