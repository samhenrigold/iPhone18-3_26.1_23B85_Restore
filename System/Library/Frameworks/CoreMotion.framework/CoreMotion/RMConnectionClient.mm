@interface RMConnectionClient
- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block;
- (void)endpoint:(id)endpoint didReceiveStreamedData:(id)data;
- (void)endpointWasInterrupted:(id)interrupted;
- (void)endpointWasInvalidated:(id)invalidated;
@end

@implementation RMConnectionClient

- (void)endpointWasInterrupted:(id)interrupted
{
  v16 = *MEMORY[0x1E69E9840];
  interruptedCopy = interrupted;
  if (!self)
  {
    goto LABEL_14;
  }

  dispatch_assert_queue_V2(self->_queue);
  for (i = self->_endpoint; i != interruptedCopy; i = 0)
  {
    v5 = sub_19B60A530();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "endpoint == self.endpoint";
      _os_log_impl(&dword_19B41C000, v5, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received interruption event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v6 = sub_19B60A530();
    if (os_signpost_enabled(v6))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "endpoint == self.endpoint";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v6, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received interruption event for an unmanaged endpoint", "{msg%{public}.0s:Received interruption event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    self = sub_19B60A530();
    if (os_log_type_enabled(&self->super, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v9 = 0;
      v10 = 2082;
      v11 = "";
      v12 = 2082;
      v13 = "assert";
      v14 = 2081;
      v15 = "endpoint == self.endpoint";
      _os_log_impl(&dword_19B41C000, &self->super, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received interruption event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionClient.m", 256, "[RMConnectionClient endpointWasInterrupted:]");
LABEL_14:
    dispatch_assert_queue_V2(0);
  }

  sub_19B60ABA4(self);
  sub_19B60A280(self);
}

- (void)endpointWasInvalidated:(id)invalidated
{
  v24 = *MEMORY[0x1E69E9840];
  invalidatedCopy = invalidated;
  if (self)
  {
    dispatch_assert_queue_V2(self->_queue);
    endpoint = self->_endpoint;
  }

  else
  {
    dispatch_assert_queue_V2(0);
    endpoint = 0;
  }

  if (endpoint != invalidatedCopy)
  {
    v13 = sub_19B60A530();
    self = "endpoint == self.endpoint";
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "endpoint == self.endpoint";
      _os_log_impl(&dword_19B41C000, v13, OS_LOG_TYPE_FAULT, "{msg%{public}.0s:Received invalidation event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    v14 = sub_19B60A530();
    if (os_signpost_enabled(v14))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "endpoint == self.endpoint";
      _os_signpost_emit_with_name_impl(&dword_19B41C000, v14, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "Received invalidation event for an unmanaged endpoint", "{msg%{public}.0s:Received invalidation event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    invalidatedCopy = sub_19B60A530();
    if (os_log_type_enabled(invalidatedCopy, OS_LOG_TYPE_INFO))
    {
      *buf = 68289539;
      v17 = 0;
      v18 = 2082;
      v19 = "";
      v20 = 2082;
      v21 = "assert";
      v22 = 2081;
      v23 = "endpoint == self.endpoint";
      _os_log_impl(&dword_19B41C000, invalidatedCopy, OS_LOG_TYPE_INFO, "{msg%{public}.0s:Received invalidation event for an unmanaged endpoint, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", buf, 0x26u);
    }

    abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/CoreLocationFramework/Framework/CoreMotion/RMConnection/RMConnectionClient.m", 263, "[RMConnectionClient endpointWasInvalidated:]");
    goto LABEL_21;
  }

  sub_19B60ABA4(self);
  if (invalidatedCopy)
  {
    objc_storeWeak(&invalidatedCopy[3].isa, 0);
    objc_storeWeak(&invalidatedCopy[2].isa, 0);
  }

  if (self)
  {
    objc_storeStrong(&self->_endpoint, 0);
    if (self->_valid && !self->_connectionTimer)
    {
      if (qword_1EAFE2ED8 == -1)
      {
LABEL_10:
        v6 = qword_1EAFE2EE0;
        if (os_log_type_enabled(qword_1EAFE2EE0, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_impl(&dword_19B41C000, v6, OS_LOG_TYPE_DEBUG, "Connection invalidated, setting up the reconnection timer", buf, 2u);
        }

        v7 = self->_queue;
        v8 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, v7);
        connectionTimer = self->_connectionTimer;
        self->_connectionTimer = v8;

        self->_connectionTimerDelay = 4;
        v10 = self->_connectionTimer;
        v11 = dispatch_time(0, 4000000000);
        dispatch_source_set_timer(v10, v11, 0xFFFFFFFFFFFFFFFFLL, 0);

        v12 = self->_connectionTimer;
        handler[0] = MEMORY[0x1E69E9820];
        handler[1] = 3221225472;
        handler[2] = sub_19B60B668;
        handler[3] = &unk_1E75332E0;
        handler[4] = self;
        dispatch_source_set_event_handler(v12, handler);
        dispatch_resume(self->_connectionTimer);
        goto LABEL_13;
      }

LABEL_21:
      dispatch_once(&qword_1EAFE2ED8, &unk_1F0E290C0);
      goto LABEL_10;
    }
  }

LABEL_13:
}

- (void)endpoint:(id)endpoint didReceiveStreamedData:(id)data
{
  streamingDataCallback = data;
  v6 = streamingDataCallback;
  if (self)
  {
    streamingDataCallback = self->_streamingDataCallback;
    if (streamingDataCallback)
    {
      v7 = v6;
      streamingDataCallback = streamingDataCallback[2]();
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](streamingDataCallback, v6);
}

- (void)endpoint:(id)endpoint didReceiveMessage:(id)message withData:(id)data replyBlock:(id)block
{
  messageCopy = message;
  dataCopy = data;
  blockCopy = block;
  if (self)
  {
    messageHandler = self->_messageHandler;
    if (messageHandler)
    {
      messageHandler[2](messageHandler, messageCopy, dataCopy, blockCopy);
    }
  }
}

@end