@interface CWFSCNetworkReachability
- (BOOL)isMonitoringEvents;
- (CWFSCNetworkReachability)init;
- (unsigned)flags;
- (void)dealloc;
- (void)startEventMonitoring;
- (void)stopEventMonitoring;
@end

@implementation CWFSCNetworkReachability

- (CWFSCNetworkReachability)init
{
  v14 = *MEMORY[0x1E69E9840];
  v12.receiver = self;
  v12.super_class = CWFSCNetworkReachability;
  v2 = [(CWFSCNetworkReachability *)&v12 init];
  if (v2 && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v3 = objc_claimAutoreleasedReturnValue(), v4 = dispatch_queue_create("com.apple.corewifi.SC-reach-mutex", v3), mutexQueue = v2->_mutexQueue, v2->_mutexQueue = v4, mutexQueue, v3, v2->_mutexQueue) && (dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM), v6 = objc_claimAutoreleasedReturnValue(), v7 = dispatch_queue_create("com.apple.corewifi.SC-reach-event", v6), eventQueue = v2->_eventQueue, v2->_eventQueue = v7, eventQueue, v6, v2->_eventQueue) && (address = xmmword_1E0D81800, v9 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x1E695E480], &address), (v2->_reachabilityRef = v9) != 0))
  {
    v11.version = 0;
    memset(&v11.retain, 0, 24);
    v11.info = v2;
    SCNetworkReachabilitySetCallback(v9, sub_1E0BF3464, &v11);
  }

  else
  {

    return 0;
  }

  return v2;
}

- (void)dealloc
{
  reachabilityRef = self->_reachabilityRef;
  if (reachabilityRef)
  {
    CFRelease(reachabilityRef);
  }

  v4.receiver = self;
  v4.super_class = CWFSCNetworkReachability;
  [(CWFSCNetworkReachability *)&v4 dealloc];
}

- (void)startEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF3678;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (void)stopEventMonitoring
{
  mutexQueue = self->_mutexQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1E0BF3748;
  block[3] = &unk_1E86E6010;
  block[4] = self;
  dispatch_sync(mutexQueue, block);
}

- (BOOL)isMonitoringEvents
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  mutexQueue = self->_mutexQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1E0BF3854;
  v5[3] = &unk_1E86E6038;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(mutexQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (unsigned)flags
{
  flags = 0;
  SCNetworkReachabilityGetFlags(self->_reachabilityRef, &flags);
  return flags;
}

@end