@interface IMDRelayServiceReachabilityRequest
+ (id)requestFromData:(id)data error:(id *)error;
- (IMDRelayServiceReachabilityRequest)initWithHandles:(id)handles serviceName:(id)name context:(id)context;
- (id)createDictionary;
@end

@implementation IMDRelayServiceReachabilityRequest

- (IMDRelayServiceReachabilityRequest)initWithHandles:(id)handles serviceName:(id)name context:(id)context
{
  handlesCopy = handles;
  nameCopy = name;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = IMDRelayServiceReachabilityRequest;
  v12 = [(IMDRelayServiceReachabilityRequest *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_handles, handles);
    objc_storeStrong(&v13->_serviceName, name);
    objc_storeStrong(&v13->_context, context);
  }

  return v13;
}

+ (id)requestFromData:(id)data error:(id *)error
{
  v4 = [IMBlastdoor sendRelayReachabilityRequest:data error:error];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x277D1AB98]);
    context = [v4 context];
    v7 = [v5 initWithBlastDoorContext:context];

    v8 = [IMDRelayServiceReachabilityRequest alloc];
    handles = [v4 handles];
    serviceName = [v4 serviceName];
    v11 = [(IMDRelayServiceReachabilityRequest *)v8 initWithHandles:handles serviceName:serviceName context:v7];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)createDictionary
{
  v10[3] = *MEMORY[0x277D85DE8];
  v9[0] = @"h";
  handles = [(IMDRelayServiceReachabilityRequest *)self handles];
  v10[0] = handles;
  v9[1] = @"s";
  serviceName = [(IMDRelayServiceReachabilityRequest *)self serviceName];
  v10[1] = serviceName;
  v9[2] = @"c";
  context = [(IMDRelayServiceReachabilityRequest *)self context];
  createDictionary = [context createDictionary];
  v10[2] = createDictionary;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];

  return v7;
}

@end