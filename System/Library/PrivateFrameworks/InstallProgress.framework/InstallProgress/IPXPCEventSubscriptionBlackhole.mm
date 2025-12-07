@interface IPXPCEventSubscriptionBlackhole
- (IPXPCEventSubscriptionBlackhole)initWithStreamName:(id)name;
- (void)resume;
@end

@implementation IPXPCEventSubscriptionBlackhole

- (IPXPCEventSubscriptionBlackhole)initWithStreamName:(id)name
{
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = IPXPCEventSubscriptionBlackhole;
  v5 = [(IPXPCEventSubscriptionBlackhole *)&v12 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    streamName = v5->_streamName;
    v5->_streamName = v6;

    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.InstallProgress.IPXPCEventSubscriptionBlackhole", v8);
    queue = v5->_queue;
    v5->_queue = v9;
  }

  return v5;
}

- (void)resume
{
  v3 = self->_streamName;
  [(NSString *)v3 UTF8String];
  v4 = xpc_event_publisher_create();
  publisher = self->_publisher;
  self->_publisher = v4;

  v7 = v3;
  v6 = v3;
  xpc_event_publisher_set_handler();
  xpc_event_publisher_set_error_handler();
  xpc_event_publisher_activate();
}

void __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x277D85DE8];
  v7 = IPXPCCopyDescription(a4);
  v8 = _IPServerLog(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 32);
    v10 = 134218754;
    v11 = a2;
    v12 = 2048;
    v13 = a3;
    v14 = 2112;
    v15 = v7;
    v16 = 2112;
    v17 = v9;
    _os_log_impl(&dword_254C69000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring event %lu %llu %@ on %@", &v10, 0x2Au);
  }
}

void __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = _IPServerLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __41__IPXPCEventSubscriptionBlackhole_resume__block_invoke_2_cold_1();
  }
}

@end