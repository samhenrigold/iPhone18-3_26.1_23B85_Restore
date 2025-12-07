@interface HMDModernMessagingHandlerContext
- (HMDModernMessagingHandlerContext)initWithTransport:(id)transport messageDispatcher:(id)dispatcher;
- (id)initForRequestID:(id)d accountRegistry:(id)registry;
@end

@implementation HMDModernMessagingHandlerContext

- (id)initForRequestID:(id)d accountRegistry:(id)registry
{
  registryCopy = registry;
  dCopy = d;
  v8 = [[HMDModernRemoteMessageTransport alloc] initWithAccountRegistry:registryCopy requestID:dCopy];

  v9 = [objc_alloc(MEMORY[0x277D0F828]) initWithTransport:v8];
  v10 = [(HMDModernMessagingHandlerContext *)self initWithTransport:v8 messageDispatcher:v9];

  return v10;
}

- (HMDModernMessagingHandlerContext)initWithTransport:(id)transport messageDispatcher:(id)dispatcher
{
  v17[2] = *MEMORY[0x277D85DE8];
  transportCopy = transport;
  dispatcherCopy = dispatcher;
  v16.receiver = self;
  v16.super_class = HMDModernMessagingHandlerContext;
  v9 = [(HMDModernMessagingHandlerContext *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_modernTransport, transport);
    objc_storeStrong(&v10->_messageDispatcher, dispatcher);
    v11 = MEMORY[0x277CBEB98];
    v17[0] = objc_opt_class();
    v17[1] = objc_opt_class();
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
    v13 = [v11 setWithArray:v12];
    [(HMFMessageDispatcher *)v10->_messageDispatcher setFilterClasses:v13];

    [(HMFMessageTransport *)v10->_modernTransport setDelegate:v10->_messageDispatcher];
    start = [(HMDRemoteMessageTransport *)v10->_modernTransport start];
  }

  return v10;
}

@end