@interface IPXPCEventStateUpdateStreamSource
- (IPStateUpdateStreamSourceDelegate)delegate;
- (IPXPCEventStateUpdateStreamSource)initWithQueue:(id)queue streamName:(id)name;
- (void)_queue_handleEvent:(id)event;
- (void)resume;
@end

@implementation IPXPCEventStateUpdateStreamSource

- (IPXPCEventStateUpdateStreamSource)initWithQueue:(id)queue streamName:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v13.receiver = self;
  v13.super_class = IPXPCEventStateUpdateStreamSource;
  v9 = [(IPXPCEventStateUpdateStreamSource *)&v13 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    streamName = v9->_streamName;
    v9->_streamName = v10;

    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

- (void)resume
{
  v12 = *MEMORY[0x277D85DE8];
  self->_resumed = 1;
  v3 = _IPServerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    streamName = self->_streamName;
    *buf = 138412290;
    v11 = streamName;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Resuming event source for %@, setting handlers", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v5 = xpc_dictionary_create(0, 0, 0);
  [(NSString *)self->_streamName UTF8String];
  xpc_set_event();
  uTF8String = [(NSString *)self->_streamName UTF8String];
  queue = self->_queue;
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __43__IPXPCEventStateUpdateStreamSource_resume__block_invoke;
  handler[3] = &unk_2797B2008;
  objc_copyWeak(&v9, buf);
  xpc_set_event_stream_handler(uTF8String, queue, handler);
  objc_destroyWeak(&v9);

  objc_destroyWeak(buf);
}

void __43__IPXPCEventStateUpdateStreamSource_resume__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_handleEvent:v3];
}

- (void)_queue_handleEvent:(id)event
{
  v18 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  dispatch_assert_queue_V2(self->_queue);
  v6 = _IPClientLog(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = IPXPCCopyDescription(eventCopy);
    *buf = 138412290;
    v17 = v7;
    _os_log_impl(&dword_254C69000, v6, OS_LOG_TYPE_DEFAULT, "event: %@", buf, 0xCu);
  }

  v8 = MEMORY[0x259C29850](eventCopy);
  if (v8 == MEMORY[0x277D86468])
  {
    if (xpc_dictionary_get_uint64(eventCopy, [@"type" UTF8String]) == -1)
    {
      reply = xpc_dictionary_create_reply(eventCopy);
      v13 = xpc_dictionary_send_reply();
      v14 = _IPClientLog(v13);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_254C69000, v14, OS_LOG_TYPE_DEFAULT, "Sent reply message to ping event.", buf, 2u);
      }
    }

    else
    {
      v15 = 0;
      v10 = [[IPStateUpdateMessage alloc] initWithXPCDictionaryRepresentation:eventCopy error:&v15];
      reply = v15;
      v11 = _IPClientLog(reply);
      WeakRetained = v11;
      if (v10)
      {
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v17 = v10;
          _os_log_impl(&dword_254C69000, WeakRetained, OS_LOG_TYPE_DEFAULT, "handling: %@", buf, 0xCu);
        }

        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained stateUpdateStreamSource:self updateMessageReceived:v10];
      }

      else if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [IPXPCEventStateUpdateStreamSource _queue_handleEvent:];
      }
    }
  }

  else
  {
    reply = _IPClientLog(v8);
    if (os_log_type_enabled(reply, OS_LOG_TYPE_ERROR))
    {
      [IPXPCEventStateUpdateStreamSource _queue_handleEvent:];
    }
  }
}

- (IPStateUpdateStreamSourceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end