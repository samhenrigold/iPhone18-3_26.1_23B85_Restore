@interface IPXPCEventStateUpdateStreamSink
- (IPXPCEventStateUpdateStreamSink)initWithQueue:(id)queue streamName:(id)name;
- (void)_queue_processPublisherEventAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor;
- (void)resume;
- (void)sendUpdateMessage:(id)message;
- (void)subscriber:(id)subscriber firePayload:(id)payload;
- (void)subscriber:(id)subscriber firePayload:(id)payload withReply:(id)reply;
- (void)subscriberFailedHandshake:(id)handshake;
@end

@implementation IPXPCEventStateUpdateStreamSink

- (IPXPCEventStateUpdateStreamSink)initWithQueue:(id)queue streamName:(id)name
{
  queueCopy = queue;
  nameCopy = name;
  v19.receiver = self;
  v19.super_class = IPXPCEventStateUpdateStreamSink;
  v9 = [(IPXPCEventStateUpdateStreamSink *)&v19 init];
  if (v9)
  {
    v10 = [nameCopy copy];
    streamName = v9->_streamName;
    v9->_streamName = v10;

    objc_storeStrong(&v9->_queue, queue);
    [nameCopy UTF8String];
    v12 = xpc_event_publisher_create();
    publisher = v9->_publisher;
    v9->_publisher = v12;

    objc_initWeak(&location, v9);
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    subscribers = v9->_subscribers;
    v9->_subscribers = v14;

    objc_copyWeak(&v17, &location);
    xpc_event_publisher_set_handler();
    xpc_event_publisher_set_error_handler();
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v9;
}

void __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _queue_processPublisherEventAction:a2 token:a3 descriptor:v7];
}

void __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = _IPServerLog(a1);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke_2_cold_1(v2, v3);
  }
}

- (void)_queue_processPublisherEventAction:(unsigned int)action token:(unint64_t)token descriptor:(id)descriptor
{
  v28 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  v9 = _IPServerLog(descriptorCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = IPXPCCopyDescription(descriptorCopy);
    v22 = 134218498;
    actionCopy = action;
    v24 = 2048;
    tokenCopy = token;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_254C69000, v9, OS_LOG_TYPE_DEFAULT, "event action: %lld token: %llu descriptor: %@", &v22, 0x20u);
  }

  if (action == 1)
  {
    subscribers = self->_subscribers;
    v18 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)subscribers setObject:0 forKeyedSubscript:v18];
LABEL_11:

    goto LABEL_12;
  }

  if (!action)
  {
    v11 = self->_subscribers;
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
    v13 = [(NSMutableDictionary *)v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v15 = _IPServerLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        [IPXPCEventStateUpdateStreamSink _queue_processPublisherEventAction:token token:v15 descriptor:?];
      }

      v16 = self->_subscribers;
      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
      [(NSMutableDictionary *)v16 setObject:0 forKeyedSubscript:v17];
    }

    v18 = [[IPXPCEventStateUpdateStreamSubscriber alloc] initWithToken:token];
    [(IPXPCEventStateUpdateStreamSubscriber *)v18 setDelegate:self];
    v19 = self->_subscribers;
    v20 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:token];
    [(NSMutableDictionary *)v19 setObject:v18 forKeyedSubscript:v20];

    [(IPXPCEventStateUpdateStreamSubscriber *)v18 beginHandshake];
    goto LABEL_11;
  }

LABEL_12:
}

- (void)resume
{
  v7 = *MEMORY[0x277D85DE8];
  self->_resumed = 1;
  v3 = _IPServerLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    streamName = self->_streamName;
    v5 = 138412290;
    v6 = streamName;
    _os_log_impl(&dword_254C69000, v3, OS_LOG_TYPE_DEFAULT, "Activating publisher for %@", &v5, 0xCu);
  }

  xpc_event_publisher_activate();
}

- (void)sendUpdateMessage:(id)message
{
  messageCopy = message;
  queue = self->_queue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__IPXPCEventStateUpdateStreamSink_sendUpdateMessage___block_invoke;
  v7[3] = &unk_2797B1E00;
  v7[4] = self;
  v8 = messageCopy;
  v6 = messageCopy;
  dispatch_async(queue, v7);
}

void __53__IPXPCEventStateUpdateStreamSink_sendUpdateMessage___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v2 = [*(*(a1 + 32) + 40) allValues];
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) sendOrEnqueueUpdateMessage:*(a1 + 40)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)subscriber:(id)subscriber firePayload:(id)payload withReply:(id)reply
{
  replyCopy = reply;
  payloadCopy = payload;
  [subscriber token];
  xpc_event_publisher_fire_with_reply();
}

- (void)subscriber:(id)subscriber firePayload:(id)payload
{
  payloadCopy = payload;
  [subscriber token];
  xpc_event_publisher_fire();
}

- (void)subscriberFailedHandshake:(id)handshake
{
  v10 = *MEMORY[0x277D85DE8];
  handshakeCopy = handshake;
  v5 = _IPServerLog(handshakeCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    token = [handshakeCopy token];
    _os_log_impl(&dword_254C69000, v5, OS_LOG_TYPE_DEFAULT, "Subscriber for token %llu failed handshake! Removing tracking.", &v8, 0xCu);
  }

  subscribers = self->_subscribers;
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(handshakeCopy, "token")}];
  [(NSMutableDictionary *)subscribers setObject:0 forKeyedSubscript:v7];
}

void __60__IPXPCEventStateUpdateStreamSink_initWithQueue_streamName___block_invoke_2_cold_1(int a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1;
  _os_log_fault_impl(&dword_254C69000, a2, OS_LOG_TYPE_FAULT, "Error on XPC event publisher! %{darwin.errno}d", v2, 8u);
}

- (void)_queue_processPublisherEventAction:(uint64_t)a1 token:(NSObject *)a2 descriptor:.cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_fault_impl(&dword_254C69000, a2, OS_LOG_TYPE_FAULT, "already have a client with token %llu!", &v2, 0xCu);
}

@end