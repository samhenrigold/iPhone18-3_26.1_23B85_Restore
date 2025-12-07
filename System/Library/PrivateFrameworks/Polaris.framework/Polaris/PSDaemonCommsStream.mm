@interface PSDaemonCommsStream
- (BOOL)isAck:(id *)ack;
- (BOOL)sendMessageWithType:(int)type;
- (PSDaemonCommsStream)initWithKey:(id)key;
- (uint64_t)start;
- (uint64_t)stop;
- (void)dealloc;
- (void)start;
- (void)stop;
@end

@implementation PSDaemonCommsStream

- (PSDaemonCommsStream)initWithKey:(id)key
{
  keyCopy = key;
  v12.receiver = self;
  v12.super_class = PSDaemonCommsStream;
  v6 = [(PSDaemonCommsStream *)&v12 init];
  v7 = v6;
  if (v6 && (objc_storeStrong(&v6->_key, key), v7->_comms = ps_create_comms_client(), ![(PSDaemonCommsStream *)v7 sendMessageWithType:0]))
  {
    v9 = [(PSDaemonCommsStream *)&v11 initWithKey:?];
    [(PSDaemonCommsStream *)v9 start];
  }

  else
  {

    return v7;
  }

  return result;
}

- (void)start
{
  if (![(PSDaemonCommsStream *)self sendMessageWithType:2])
  {
    start = [(PSDaemonCommsStream *)&v5 start];
    [(PSDaemonCommsStream *)start stop];
  }
}

- (void)stop
{
  v5 = OUTLINED_FUNCTION_3_2(self, a2, *MEMORY[0x277D85DE8]);
  v6 = asprintf(self, "Could not close source node for key (%s). Check polarisd logs for more info", v5);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    [*(a2 + 8) UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not close source node for key (%s). Check polarisd logs for more info", v10, v11, v12, v13, v23, v24);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  [PSDaemonCommsStream isAck:v22];
}

- (BOOL)isAck:(id *)ack
{
  v4 = MEMORY[0x25F8C8EC0](ack, a2);
  if (v4)
  {
    var5 = ack->var0.var0.var2.var1.var5;
    if (var5 != 1)
    {
      v6 = __PLSLogSharedInstance(v4);
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        *v11 = 0;
        _os_log_impl(&dword_25EA3A000, v6, OS_LOG_TYPE_ERROR, "Could not create shared source node.", v11, 2u);
      }
    }

    return var5 == 1;
  }

  else
  {
    [PSDaemonCommsStream isAck:?];
    return [(PSDaemonCommsStream *)v8 sendMessageWithType:v9, v10];
  }
}

- (BOOL)sendMessageWithType:(int)type
{
  v9 = *MEMORY[0x277D85DE8];
  bzero(v7, 0x430uLL);
  [(NSString *)self->_key cStringUsingEncoding:4, 0, 0, 0, 0, 0, 0, 0];
  __strlcpy_chk();
  typeCopy = type;
  MEMORY[0x25F8C8EE0](self->_comms, v7, 1072, &v6, 56, 2);
  return [(PSDaemonCommsStream *)self isAck:&v6];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = __PLSLogSharedInstance(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    key = self->_key;
    *buf = 138412290;
    v8 = key;
    _os_log_impl(&dword_25EA3A000, v3, OS_LOG_TYPE_DEBUG, "PSDaemonCommsStream dealloc for key (%@)", buf, 0xCu);
  }

  if (self->_comms)
  {
    ps_delete_comms_client();
  }

  v5 = self->_key;
  self->_key = 0;

  v6.receiver = self;
  v6.super_class = PSDaemonCommsStream;
  [(PSDaemonCommsStream *)&v6 dealloc];
}

- (uint64_t)initWithKey:(char *)a1 .cold.1(char **a1, id *a2)
{
  *a1 = 0;
  v4 = asprintf(a1, "Could not create stream for key %s. Check polarisd logs for more info.", [*a2 UTF8String]);
  v5 = __PLSLogSharedInstance(v4);
  if (OUTLINED_FUNCTION_5(v5))
  {
    [*a2 UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v6, v7, "%s:%d Could not create stream for key %s. Check polarisd logs for more info.", v8, v9, v10, v11, v23, v24);
  }

  v12 = OSLogFlushBuffers();
  if (v12)
  {
    v13 = __PLSLogSharedInstance(v12);
    if (OUTLINED_FUNCTION_6(v13))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v14, v15, "%s() failed to flush buffers with error code: %d", v16, v17, v18, v19, v23, v24);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v20 = OUTLINED_FUNCTION_0();
  return [(PSDaemonCommsStream *)v20 start];
}

- (uint64_t)start
{
  v5 = OUTLINED_FUNCTION_3_2(self, a2, *MEMORY[0x277D85DE8]);
  v6 = asprintf(self, "Could not start source node for key (%s). Check polarisd logs for more info", v5);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    [*(a2 + 8) UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not start source node for key (%s). Check polarisd logs for more info", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSDaemonCommsStream *)v22 stop];
}

- (uint64_t)stop
{
  v5 = OUTLINED_FUNCTION_3_2(self, a2, *MEMORY[0x277D85DE8]);
  v6 = asprintf(self, "Could not stop source node for key (%s). Check polarisd logs for more info", v5);
  v7 = __PLSLogSharedInstance(v6);
  if (OUTLINED_FUNCTION_5(v7))
  {
    [*(a2 + 8) UTF8String];
    OUTLINED_FUNCTION_4_0(&dword_25EA3A000, v8, v9, "%s:%d Could not stop source node for key (%s). Check polarisd logs for more info", v10, v11, v12, v13, v25, v26);
  }

  v14 = OSLogFlushBuffers();
  if (v14)
  {
    v15 = __PLSLogSharedInstance(v14);
    if (OUTLINED_FUNCTION_6(v15))
    {
      OUTLINED_FUNCTION_4();
      OUTLINED_FUNCTION_2(&dword_25EA3A000, v16, v17, "%s() failed to flush buffers with error code: %d", v18, v19, v20, v21, v25, v26);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v22 = OUTLINED_FUNCTION_0();
  return [(PSDaemonCommsStream *)v22 stop];
}

- (void)isAck:(char *)a1 .cold.1(char **a1)
{
  v12 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  v2 = asprintf(a1, "Invalid message received. Received a complex message when expecting a simple message");
  v3 = __PLSLogSharedInstance(v2);
  if (OUTLINED_FUNCTION_5(v3))
  {
    v8 = 136315394;
    v9 = "[PSDaemonCommsStream isAck:]";
    v10 = 1024;
    v11 = 56;
    _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_FAULT, "%s:%d Invalid message received. Received a complex message when expecting a simple message", &v8, 0x12u);
  }

  v4 = OSLogFlushBuffers();
  if (v4)
  {
    v5 = v4;
    v6 = __PLSLogSharedInstance(v4);
    if (OUTLINED_FUNCTION_6(v6))
    {
      v8 = 136315394;
      v9 = "[PSDaemonCommsStream isAck:]";
      v10 = 1024;
      v11 = v5;
      _os_log_impl(&dword_25EA3A000, v1, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v8, 0x12u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7();
  }

  v7 = OUTLINED_FUNCTION_0();
  [PSHIDStream initWithKey:v7 rate:? queue:? writerInstance:? execSessionName:?];
}

@end