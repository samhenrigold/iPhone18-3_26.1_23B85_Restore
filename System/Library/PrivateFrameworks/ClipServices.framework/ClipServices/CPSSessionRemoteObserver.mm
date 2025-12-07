@interface CPSSessionRemoteObserver
+ (id)observerWithXPCProxy:(id)proxy;
- (CPSSessionRemoteObserver)initWithXPCProxy:(id)proxy;
@end

@implementation CPSSessionRemoteObserver

+ (id)observerWithXPCProxy:(id)proxy
{
  proxyCopy = proxy;
  v4 = [[CPSSessionRemoteObserver alloc] initWithXPCProxy:proxyCopy];

  return v4;
}

- (CPSSessionRemoteObserver)initWithXPCProxy:(id)proxy
{
  proxyCopy = proxy;
  v10.receiver = self;
  v10.super_class = CPSSessionRemoteObserver;
  v6 = [(CPSSessionRemoteObserver *)&v10 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcProxy, proxy);
    v8 = v7;
  }

  return v7;
}

void __56__CPSSessionRemoteObserver_forwardingTargetForSelector___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v4 = CPS_LOG_CHANNEL_PREFIXClipServices(v2, v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __56__CPSSessionRemoteObserver_forwardingTargetForSelector___block_invoke_cold_1(v2, v4);
  }
}

void __56__CPSSessionRemoteObserver_forwardingTargetForSelector___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_2436ED000, a2, OS_LOG_TYPE_ERROR, "An error occurred when requesting remote proxy object for session proxy: %@", &v2, 0xCu);
}

@end