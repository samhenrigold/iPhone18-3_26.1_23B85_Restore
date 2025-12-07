@interface _RWITCPConnection
+ (_RWITCPConnection)TCPConnectionWithLockdownConnection:(_lockdown_connection *)connection;
+ (_RWITCPConnection)TCPConnectionWithSocketPath:(id)path;
- (_RWITCPConnection)initWithServer:(id)server lockdownConnection:(_lockdown_connection *)connection;
- (_RWITCPConnection)initWithServer:(id)server socket:(int)socket;
- (_RWITCPConnectionDelegate)delegate;
- (void)_closeInputStream;
- (void)_closeOutputStream;
- (void)_commonInitializationWithServer:(id)server socket:(int)socket type:(int64_t)type;
- (void)_createInputSource;
- (void)_createOutputSource;
- (void)_dispatchSourceCancelled;
- (void)_handleInput;
- (void)_handleOutput;
- (void)_processIncomingBytes:(const char *)bytes length:(int64_t)length;
- (void)_setOutputSourceSuspended:(BOOL)suspended;
- (void)_shutdown;
- (void)dealloc;
- (void)sendMessage:(id)message;
@end

@implementation _RWITCPConnection

+ (_RWITCPConnection)TCPConnectionWithSocketPath:(id)path
{
  v26 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v6 = [defaultManager fileExistsAtPath:pathCopy];

  if ((v6 & 1) == 0)
  {
    v11 = RWIDefaultLog(v7);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPConnection *)pathCopy TCPConnectionWithSocketPath:v11];
    }

    goto LABEL_9;
  }

  v8 = [pathCopy lengthOfBytesUsingEncoding:4];
  v9 = v8;
  if (v8 >= 0x68)
  {
    v10 = RWIDefaultLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPConnection *)pathCopy TCPConnectionWithSocketPath:v9, v10];
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  v14 = socket(1, 1, 0);
  v15 = v14;
  if (v14 == -1)
  {
    v18 = RWIDefaultLog(v14);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v19 = __error();
      v20 = strerror(*v19);
      [(_RWITCPConnection *)v20 TCPConnectionWithSocketPath:pathCopy];
    }

    goto LABEL_9;
  }

  v25.sa_family = 1;
  strlcpy(v25.sa_data, [pathCopy UTF8String], 0x68uLL);
  v16 = strlen(v25.sa_data);
  v17 = connect(v15, &v25, v16 + 2);
  if (v17 == -1)
  {
    v21 = RWIDefaultLog(v17);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = __error();
      v23 = strerror(*v22);
      [(_RWITCPConnection *)v23 TCPConnectionWithSocketPath:pathCopy];
    }

    close(v15);
    goto LABEL_9;
  }

  v12 = [[self alloc] initWithServer:0 socket:v15];
LABEL_10:

  return v12;
}

- (_RWITCPConnection)initWithServer:(id)server socket:(int)socket
{
  v4 = *&socket;
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = _RWITCPConnection;
  v7 = [(_RWITCPConnection *)&v11 init];
  v8 = v7;
  if (v7)
  {
    [(_RWITCPConnection *)v7 _commonInitializationWithServer:serverCopy socket:v4 type:0];
    v9 = v8;
  }

  return v8;
}

+ (_RWITCPConnection)TCPConnectionWithLockdownConnection:(_lockdown_connection *)connection
{
  socket = lockdown_get_socket();
  if (socket == -1)
  {
    v7 = RWIDefaultLog(socket);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPConnection TCPConnectionWithLockdownConnection:v7];
    }

    v6 = 0;
  }

  else
  {
    v6 = [[self alloc] initWithServer:0 lockdownConnection:connection];
  }

  return v6;
}

- (_RWITCPConnection)initWithServer:(id)server lockdownConnection:(_lockdown_connection *)connection
{
  serverCopy = server;
  v11.receiver = self;
  v11.super_class = _RWITCPConnection;
  v7 = [(_RWITCPConnection *)&v11 init];
  if (v7)
  {
    socket = lockdown_get_socket();
    v7->_connection = connection;
    [(_RWITCPConnection *)v7 _commonInitializationWithServer:serverCopy socket:socket type:1];
    v9 = v7;
  }

  return v7;
}

- (void)_commonInitializationWithServer:(id)server socket:(int)socket type:(int64_t)type
{
  serverCopy = server;
  objc_storeStrong(&self->_server, server);
  self->_socket = socket;
  self->_type = type;
  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  outputMessageQueue = self->_outputMessageQueue;
  self->_outputMessageQueue = v9;

  v11 = objc_alloc_init(MEMORY[0x277CBEB28]);
  incomingData = self->_incomingData;
  self->_incomingData = v11;

  v13 = dispatch_queue_create("com.apple.webinspector.tcpconnection", 0);
  connectionQueue = self->_connectionQueue;
  self->_connectionQueue = v13;

  [(_RWITCPConnection *)self _createOutputSource];
  [(_RWITCPConnection *)self _createInputSource];
}

- (void)dealloc
{
  objc_storeWeak(&self->_delegate, 0);
  [(_RWITCPConnection *)self _shutdown];
  v3.receiver = self;
  v3.super_class = _RWITCPConnection;
  [(_RWITCPConnection *)&v3 dealloc];
}

- (void)_shutdown
{
  if (!self->_shutdown)
  {
    self->_shutdown = 1;
    [(_RWITCPConnection *)self _closeInputStream];
    [(_RWITCPConnection *)self _closeOutputStream];
    outputMessageQueue = self->_outputMessageQueue;
    self->_outputMessageQueue = 0;

    incomingData = self->_incomingData;
    self->_incomingData = 0;

    connectionQueue = self->_connectionQueue;
    self->_connectionQueue = 0;
  }
}

- (void)_dispatchSourceCancelled
{
  if (self->_inputSourceCancelled && self->_outputSourceCancelled)
  {
    type = self->_type;
    if (type == 1)
    {
      if (!self->_connection)
      {
        return;
      }

      lockdown_disconnect();
      self->_connection = 0;
      p_socket = &self->_socket;
      goto LABEL_9;
    }

    if (!type)
    {
      p_socket = &self->_socket;
      socket = self->_socket;
      if ((socket & 0x80000000) == 0)
      {
        close(socket);
LABEL_9:
        *p_socket = -1;
      }
    }
  }
}

- (void)sendMessage:(id)message
{
  messageCopy = message;
  v5 = messageCopy;
  connectionQueue = self->_connectionQueue;
  if (connectionQueue)
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __33___RWITCPConnection_sendMessage___block_invoke;
    v7[3] = &unk_279EAA478;
    v7[4] = self;
    v8 = messageCopy;
    dispatch_async(connectionQueue, v7);
  }
}

- (void)_createOutputSource
{
  v3 = dispatch_source_create(MEMORY[0x277D85D50], self->_socket, 0, self->_connectionQueue);
  outputSource = self->_outputSource;
  self->_outputSource = v3;

  v5 = self->_outputSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __40___RWITCPConnection__createOutputSource__block_invoke;
  handler[3] = &unk_279EAA4A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  v6 = self->_outputSource;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40___RWITCPConnection__createOutputSource__block_invoke_2;
  v7[3] = &unk_279EAA4A0;
  v7[4] = self;
  dispatch_source_set_cancel_handler(v6, v7);
  self->_outputSourceSuspended = 1;
}

- (void)_closeOutputStream
{
  outputSource = self->_outputSource;
  if (outputSource)
  {
    if (self->_outputSourceSuspended)
    {
      [(_RWITCPConnection *)self _setOutputSourceSuspended:0];
      outputSource = self->_outputSource;
    }

    dispatch_source_cancel(outputSource);
    v4 = self->_outputSource;
    self->_outputSource = 0;

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39___RWITCPConnection__closeOutputStream__block_invoke;
    block[3] = &unk_279EAA4A0;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
    server = self->_server;
    if (server)
    {
      [(_RWITCPServer *)server connectionClosed:self];
    }
  }
}

- (void)_setOutputSourceSuspended:(BOOL)suspended
{
  outputSource = self->_outputSource;
  if (suspended)
  {
    dispatch_suspend(outputSource);
    v5 = 1;
  }

  else
  {
    dispatch_resume(outputSource);
    v5 = 0;
  }

  self->_outputSourceSuspended = v5;
}

- (void)_handleOutput
{
  if ([(NSMutableArray *)self->_outputMessageQueue count])
  {
    while ([(NSMutableArray *)self->_outputMessageQueue count])
    {
      v3 = objc_autoreleasePoolPush();
      v4 = [(NSMutableArray *)self->_outputMessageQueue objectAtIndex:0];
      v5 = v4;
      type = self->_type;
      if (type == 1)
      {
        v4 = [v4 writeLockdown:self->_connection];
      }

      else
      {
        if (type)
        {
          goto LABEL_19;
        }

        v4 = [v4 write:self->_socket];
      }

      if (v4)
      {
        if (v4 == 2)
        {
          goto LABEL_22;
        }

        if (v4 == 3)
        {
LABEL_19:
          v8 = RWIDefaultLog(v4);
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            [(_RWITCPConnection *)v8 _handleOutput];
          }

          [(_RWITCPConnection *)self _shutdown];
LABEL_22:

          objc_autoreleasePoolPop(v3);
          return;
        }
      }

      else
      {
        [(NSMutableArray *)self->_outputMessageQueue removeObjectAtIndex:0];
      }

      objc_autoreleasePoolPop(v3);
    }

    [(_RWITCPConnection *)self _setOutputSourceSuspended:1];
  }

  else
  {
    v7 = RWIDefaultLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v9 = 0;
      _os_log_impl(&dword_273C9C000, v7, OS_LOG_TYPE_INFO, "_RWITCPConnection outputSource was resumed without anything to write. Why?", v9, 2u);
    }

    [(_RWITCPConnection *)self _setOutputSourceSuspended:1];
  }
}

- (void)_createInputSource
{
  v3 = dispatch_source_create(MEMORY[0x277D85D28], self->_socket, 0, self->_connectionQueue);
  inputSource = self->_inputSource;
  self->_inputSource = v3;

  v5 = self->_inputSource;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __39___RWITCPConnection__createInputSource__block_invoke;
  handler[3] = &unk_279EAA4A0;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  v6 = self->_inputSource;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39___RWITCPConnection__createInputSource__block_invoke_2;
  v7[3] = &unk_279EAA4A0;
  v7[4] = self;
  dispatch_source_set_cancel_handler(v6, v7);
}

- (void)_closeInputStream
{
  inputSource = self->_inputSource;
  if (inputSource)
  {
    dispatch_source_cancel(inputSource);
    v4 = self->_inputSource;
    self->_inputSource = 0;
  }
}

- (void)_handleInput
{
  *buf = 67240450;
  *(buf + 1) = a3;
  *(buf + 4) = 2082;
  *(buf + 10) = self;
  _os_log_error_impl(&dword_273C9C000, log, OS_LOG_TYPE_ERROR, "_RWITCPConnection read failed: %{public}d - %{public}s", buf, 0x12u);
}

- (void)_processIncomingBytes:(const char *)bytes length:(int64_t)length
{
  [(NSMutableData *)self->_incomingData appendBytes:bytes length:length];
  incomingData = self->_incomingData;
  v13 = 0;
  v6 = [_RWITCPRelayMessage TCPRelayMessageFromDataStream:incomingData error:&v13];
  v7 = v13;
  if (v7)
  {
LABEL_5:
    [(_RWITCPConnection *)self _shutdown];
  }

  else
  {
    v8 = MEMORY[0x277D85CD0];
    while (v6)
    {
      -[NSMutableData replaceBytesInRange:withBytes:length:](self->_incomingData, "replaceBytesInRange:withBytes:length:", 0, [v6 length], 0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __50___RWITCPConnection__processIncomingBytes_length___block_invoke;
      block[3] = &unk_279EAA478;
      block[4] = self;
      v12 = v6;
      v9 = v6;
      dispatch_async(v8, block);

      v10 = self->_incomingData;
      v13 = 0;
      v6 = [_RWITCPRelayMessage TCPRelayMessageFromDataStream:v10 error:&v13];
      v7 = v13;
      if (v7)
      {
        goto LABEL_5;
      }
    }
  }
}

- (_RWITCPConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)TCPConnectionWithSocketPath:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138477827;
  v3 = a1;
  _os_log_error_impl(&dword_273C9C000, a2, OS_LOG_TYPE_ERROR, "_RWITCPConnection: provided unix domain socket does not exist at path %{private}@", &v2, 0xCu);
}

+ (void)TCPConnectionWithSocketPath:(os_log_t)log .cold.4(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 138478339;
  v4 = a1;
  v5 = 2050;
  v6 = a2;
  v7 = 2050;
  v8 = 104;
  _os_log_error_impl(&dword_273C9C000, log, OS_LOG_TYPE_ERROR, "_RWITCPConnection: path to unix domain socket at '%{private}@' is too long: path is %{public}lu bytes, but must be less than %{public}lu bytes", &v3, 0x20u);
}

@end