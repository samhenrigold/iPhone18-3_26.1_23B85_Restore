@interface _HMFCFHTTPServer
+ (id)logCategory;
- (_HMFCFHTTPServer)init;
- (_HMFCFHTTPServer)initWithPort:(unint64_t)port options:(unint64_t)options;
- (_HMFCFHTTPServerDelegate)delegate;
- (double)connectionIdleTimeout;
- (double)watchdogTimeout;
- (void)dealloc;
- (void)invalidate;
- (void)setConnectionIdleTimeout:(double)timeout;
- (void)setWatchdogTimeout:(double)timeout;
@end

@implementation _HMFCFHTTPServer

- (_HMFCFHTTPServer)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (_HMFCFHTTPServer)initWithPort:(unint64_t)port options:(unint64_t)options
{
  v40 = *MEMORY[0x277D85DE8];
  if (port >= 0x10000)
  {
    _HMFPreconditionFailure(@"port <= UINT16_MAX");
  }

  optionsCopy = options;
  v35.receiver = self;
  v35.super_class = _HMFCFHTTPServer;
  v6 = [(_HMFCFHTTPServer *)&v35 init];
  v7 = v6;
  if (!v6)
  {
    goto LABEL_11;
  }

  v8 = HMFDispatchQueueName(v6, 0);
  v9 = dispatch_queue_create(v8, 0);
  clientQueue = v7->_clientQueue;
  v7->_clientQueue = v9;

  array = [MEMORY[0x277CBEB18] array];
  connections = v7->_connections;
  v7->_connections = array;

  v13 = [[HMFWeakObject alloc] initWithWeakObject:v7];
  v7->_internal = _CFHTTPServerCreateService();
  if (![(_HMFCFHTTPServer *)v7 isValid])
  {
    v23 = objc_autoreleasePoolPush();
    v24 = v7;
    v26 = HMFGetOSLogHandle(v24, v25);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = HMFGetLogIdentifier(v24);
      *buf = 138543362;
      v39 = v27;
      _os_log_impl(&dword_22ADEC000, v26, OS_LOG_TYPE_ERROR, "%{public}@Failed to create server, server is invalid", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v23);
    goto LABEL_21;
  }

  if ((optionsCopy & 2) != 0)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = v7;
    v17 = HMFGetOSLogHandle(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier(v15);
      *buf = 138543362;
      v39 = v18;
      _os_log_impl(&dword_22ADEC000, v17, OS_LOG_TYPE_INFO, "%{public}@Requiring TLS in anonymous mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    v19 = *MEMORY[0x277CBAC48];
    v36[0] = *MEMORY[0x277CBABE0];
    v36[1] = v19;
    v37[0] = MEMORY[0x277CBEC38];
    v37[1] = MEMORY[0x277CBEC28];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [(_HMFCFHTTPServer *)v15 internal];
    _CFHTTPServerSetProperty();
  }

  [(_HMFCFHTTPServer *)v7 internal];
  clientQueue = [(_HMFCFHTTPServer *)v7 clientQueue];
  _CFHTTPServerSetDispatchQueue();

  if (!port)
  {
    [(_HMFCFHTTPServer *)v7 internal];
    v28 = _CFHTTPServerCopyProperty();
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v28 integerValue])
    {
      v7->_port = [v28 unsignedIntegerValue];

      goto LABEL_10;
    }

    v29 = objc_autoreleasePoolPush();
    v30 = v7;
    v32 = HMFGetOSLogHandle(v30, v31);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v33 = HMFGetLogIdentifier(v30);
      *buf = 138543362;
      v39 = v33;
      _os_log_impl(&dword_22ADEC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Failed to bind server", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v29);
    [(_HMFCFHTTPServer *)v30 invalidate];

LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  v7->_port = port;
LABEL_10:

LABEL_11:
  v22 = v7;
LABEL_22:

  return v22;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_connections;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) invalidate];
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if (self->_internal)
  {
    if (_CFHTTPServerIsValid())
    {
      _CFHTTPServerInvalidate();
    }

    CFRelease(self->_internal);
    self->_internal = 0;
  }

  v8.receiver = self;
  v8.super_class = _HMFCFHTTPServer;
  [(_HMFCFHTTPServer *)&v8 dealloc];
}

- (double)connectionIdleTimeout
{
  [(_HMFCFHTTPServer *)self internal];
  v2 = _CFHTTPServerCopyProperty();
  TypeID = CFNumberGetTypeID();
  objc_opt_class();
  if (v2 && CFGetTypeID(v2) != TypeID)
  {
    CFRelease(v2);
    v2 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 15.0;
  }

  return v7;
}

- (void)setConnectionIdleTimeout:(double)timeout
{
  [(_HMFCFHTTPServer *)self internal];
  [MEMORY[0x277CCABB0] numberWithDouble:timeout];

  _CFHTTPServerSetProperty();
}

- (double)watchdogTimeout
{
  [(_HMFCFHTTPServer *)self internal];
  v2 = _CFHTTPServerCopyProperty();
  TypeID = CFNumberGetTypeID();
  objc_opt_class();
  if (v2 && CFGetTypeID(v2) != TypeID)
  {
    CFRelease(v2);
    v2 = 0;
  }

  if (objc_opt_isKindOfClass())
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (v5)
  {
    [v5 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 15.0;
  }

  return v7;
}

- (void)setWatchdogTimeout:(double)timeout
{
  [(_HMFCFHTTPServer *)self internal];
  [MEMORY[0x277CCABB0] numberWithDouble:timeout];

  _CFHTTPServerSetProperty();
}

- (void)invalidate
{
  if ([(_HMFCFHTTPServer *)self isValid])
  {
    [(_HMFCFHTTPServer *)self internal];

    _CFHTTPServerInvalidate();
  }
}

+ (id)logCategory
{
  if (_MergedGlobals_5_0 != -1)
  {
    dispatch_once(&_MergedGlobals_5_0, &__block_literal_global_18);
  }

  v3 = qword_280AFC238;

  return v3;
}

- (_HMFCFHTTPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end