@interface HAPHTTPClient
+ (id)dnsNameForHTTPHeaderFromDNSNames:(id)names;
+ (id)logCategory;
- (BOOL)_debugDelegateRespondsToSelector:(SEL)selector;
- (BOOL)_delegateRespondsToSelector:(SEL)selector;
- (BOOL)_supportsWoL;
- (BOOL)enableUAPSessionSecurityWithReadKey:(unsigned __int8)key[32] writeKey:(unsigned __int8)writeKey[32] error:(id *)error;
- (HAPHTTPClient)initWithDNSName:(id)name port:(int64_t)port eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address;
- (HAPHTTPClient)initWithDNSName:(id)name port:(int64_t)port eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address dependencyFactory:(id)factory;
- (HAPHTTPClient)initWithSocketInfo:(id)info dnsName:(id)name eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address;
- (HAPHTTPClient)initWithSocketInfo:(id)info dnsName:(id)name eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address dependencyFactory:(id)factory;
- (HAPHTTPClientDebugDelegate)debugDelegate;
- (HAPHTTPClientDelegate)delegate;
- (HAPSocketInfo)peerSocketInfo;
- (HMFNetAddress)peerAddressEx;
- (NSString)peerEndpointDescription;
- (OS_dispatch_queue)debugDelegateQueue;
- (OS_dispatch_queue)delegateQueue;
- (id)_connectionDestination;
- (id)_deserializeUAPJSONData:(id)data error:(id *)error;
- (id)_serializeUAPJSONObject:(id)object error:(id *)error;
- (id)clientRequestIdentifier;
- (id)logIdentifier;
- (int)_initializeCoreUtilsHTTPClientWithPort:(int64_t)port withEventsEnabled:(BOOL)enabled factory:(id)factory;
- (int)getHttpClientPeerAddress:(sockaddr_storage *)address;
- (unsigned)clientID;
- (void)_handleHTTPResponseForMessage:(HTTPMessagePrivate *)message completionHandler:(id)handler;
- (void)_sendHTTPRequestToURL:(id)l withMethod:(int)method requestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout activity:(id)activity completionHandler:(id)handler;
- (void)dealloc;
- (void)httpClient:(id)client didReceiveHTTPMessageWithHeaders:(id)headers body:(id)body;
- (void)httpClient:(id)client willSendHTTPMessageWithHeaders:(id)headers body:(id)body;
- (void)invalidateWithError:(id)error;
- (void)sendDELETERequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler;
- (void)sendGETRequestToURL:(id)l timeout:(double)timeout completionHandler:(id)handler;
- (void)sendPOSTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler;
- (void)sendPUTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout completionHandler:(id)handler;
- (void)setDebugDelegate:(id)delegate queue:(id)queue;
- (void)setDelegate:(id)delegate queue:(id)queue;
@end

@implementation HAPHTTPClient

- (OS_dispatch_queue)debugDelegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_debugDelegateQueue);

  return WeakRetained;
}

- (HAPHTTPClientDebugDelegate)debugDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_debugDelegate);

  return WeakRetained;
}

- (OS_dispatch_queue)delegateQueue
{
  WeakRetained = objc_loadWeakRetained(&self->_delegateQueue);

  return WeakRetained;
}

- (HAPHTTPClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)clientRequestIdentifier
{
  v3 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04lX", -[HAPHTTPClient requestCounter](self, "requestCounter")];
  v4 = MEMORY[0x277CCACA8];
  uniqueClientIdentifier = [(HAPHTTPClient *)self uniqueClientIdentifier];
  v6 = uniqueClientIdentifier;
  v7 = @"0000";
  if (uniqueClientIdentifier)
  {
    v7 = uniqueClientIdentifier;
  }

  v8 = [v4 stringWithFormat:@"0x%@%@", v7, v3];

  return v8;
}

- (id)logIdentifier
{
  dnsName = [(HAPHTTPClient *)self dnsName];

  v4 = MEMORY[0x277CCACA8];
  if (dnsName)
  {
    dnsName2 = [(HAPHTTPClient *)self dnsName];
    port = [(HAPHTTPClient *)self port];
    delegate = [(HAPHTTPClient *)self delegate];
    identifier = [delegate identifier];
    v9 = [v4 stringWithFormat:@"dns:%@(%tu)%@", dnsName2, port, identifier];
  }

  else
  {
    dnsName2 = [(HAPHTTPClient *)self pendingConnectionSocketInfo];
    delegate = [dnsName2 ipAddressString];
    port2 = [(HAPHTTPClient *)self port];
    identifier = [(HAPHTTPClient *)self delegate];
    v8Identifier = [identifier identifier];
    v9 = [v4 stringWithFormat:@"ip:%@(%tu)%@", delegate, port2, v8Identifier];
  }

  return v9;
}

- (unsigned)clientID
{
  httpClient = self->_httpClient;
  if (httpClient)
  {
    LODWORD(httpClient) = [(HAPCoreUtilsHTTPClient *)httpClient getClientID];
  }

  return httpClient;
}

- (void)httpClient:(id)client willSendHTTPMessageWithHeaders:(id)headers body:(id)body
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  headersCopy = headers;
  bodyCopy = body;
  if ([headersCopy length])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = headersCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Sending headers: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  if ([bodyCopy length])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v18;
      v21 = 2112;
      v22 = bodyCopy;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Sending body: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)httpClient:(id)client didReceiveHTTPMessageWithHeaders:(id)headers body:(id)body
{
  v23 = *MEMORY[0x277D85DE8];
  clientCopy = client;
  headersCopy = headers;
  bodyCopy = body;
  if ([headersCopy length])
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v14;
      v21 = 2112;
      v22 = headersCopy;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Received headers: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
  }

  if ([bodyCopy length])
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543618;
      v20 = v18;
      v21 = 2112;
      v22 = bodyCopy;
      _os_log_impl(&dword_22AADC000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Received body: %@", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (BOOL)_debugDelegateRespondsToSelector:(SEL)selector
{
  debugDelegate = [(HAPHTTPClient *)self debugDelegate];
  if (debugDelegate)
  {
    debugDelegateQueue = [(HAPHTTPClient *)self debugDelegateQueue];
    if (debugDelegateQueue)
    {
      debugDelegate2 = [(HAPHTTPClient *)self debugDelegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (BOOL)_delegateRespondsToSelector:(SEL)selector
{
  delegate = [(HAPHTTPClient *)self delegate];
  if (delegate)
  {
    delegateQueue = [(HAPHTTPClient *)self delegateQueue];
    if (delegateQueue)
    {
      delegate2 = [(HAPHTTPClient *)self delegate];
      v7 = objc_opt_respondsToSelector();
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

- (id)_deserializeUAPJSONData:(id)data error:(id *)error
{
  v24 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v19 = 0;
  v6 = [MEMORY[0x277CCAAA0] JSONObjectWithData:dataCopy options:0 error:&v19];
  v7 = v19;
  if (v7)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v11;
      v22 = 2112;
      v23 = v8;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_ERROR, "%{public}@Failed to parse JSON response with error: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    goto LABEL_11;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = objc_opt_class();
      *buf = 138543618;
      v21 = v14;
      v22 = 2112;
      v23 = v15;
      v16 = v15;
      _os_log_impl(&dword_22AADC000, v13, OS_LOG_TYPE_ERROR, "%{public}@Request did not return a dictionary and instead returned a %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v12);
    v8 = HMErrorFromOSStatus(4294960540);
LABEL_11:

    v6 = 0;
    if (!error)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v8 = 0;
  if (error)
  {
LABEL_12:
    v17 = v8;
    *error = v8;
  }

LABEL_13:

  return v6;
}

- (id)_serializeUAPJSONObject:(id)object error:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_8;
  }

  if (![MEMORY[0x277CCAAA0] isValidJSONObject:objectCopy])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      *buf = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = objectCopy;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Object is not valid JSON: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
LABEL_8:
    v7 = HMErrorFromOSStatus(4294960540);
    v6 = 0;
    if (!error)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v15 = 0;
  v6 = [MEMORY[0x277CCAAA0] dataWithJSONObject:objectCopy options:0 error:&v15];
  v7 = v15;
  if (error)
  {
LABEL_9:
    v11 = v7;
    *error = v7;
  }

LABEL_10:
  if (v7)
  {
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  v13 = v12;

  return v12;
}

- (void)_handleHTTPResponseForMessage:(HTTPMessagePrivate *)message completionHandler:(id)handler
{
  handlerCopy = handler;
  currentActivity = [MEMORY[0x277D0F770] currentActivity];
  [currentActivity markWithReason:@"Received response"];
  delegate = [(HAPHTTPClient *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = delegate;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [v10 incrementHAPIPHTTPResponsesCount];
  }

  var21 = message->var21;
  if (var21)
  {
    v12 = 0;
    var12 = 1000;
  }

  else
  {
    var12 = message->var2.var12;
    if ((var12 - 300) <= 0xFFFFFF9B)
    {
      v12 = 0;
      var21 = (var12 + 200000);
    }

    else if (message->var7)
    {
      if (message->var6)
      {
        v12 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
        v19 = HTTPGetHeaderField();
        if (v19)
        {
          var21 = v19;
        }

        else
        {
          var21 = 4294960569;
        }
      }

      else
      {
        v12 = 0;
        var21 = 4294960559;
      }
    }

    else
    {
      v12 = 0;
      var21 = 0;
    }
  }

  CFRelease(message);
  v14 = HMErrorFromOSStatus(var21);
  [currentActivity markWithReason:{@"Completed request", v20}];
  if ([(HAPHTTPClient *)self _supportsWoL])
  {
    [v14 domain];

    [v14 code];
    v15 = [HAPMetricsPowerManagementLogEvent alloc];
    primaryAccessory = [v10 primaryAccessory];
    v17 = [(HAPMetricsPowerManagementLogEvent *)v15 initForHAPAccessory:primaryAccessory withLogType:1];

    v18 = +[HAPMetricsDispatcher sharedInstance];
    [v18 submitLogEvent:v17 error:v14];
  }

  handlerCopy[2](handlerCopy, 0, 4, var12, v14);
}

- (void)_sendHTTPRequestToURL:(id)l withMethod:(int)method requestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout activity:(id)activity completionHandler:(id)handler
{
  v74 = *MEMORY[0x277D85DE8];
  lCopy = l;
  objectCopy = object;
  activityCopy = activity;
  handlerCopy = handler;
  v67 = 0;
  delegate = [(HAPHTTPClient *)self delegate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v20 = delegate;
  }

  else
  {
    v20 = 0;
  }

  v55 = v20;

  [(HAPHTTPClient *)self setRequestCounter:[(HAPHTTPClient *)self requestCounter]+ 1];
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x2020000000;
  v66[3] = 0;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __117__HAPHTTPClient__sendHTTPRequestToURL_withMethod_requestObject_serializationType_timeout_activity_completionHandler___block_invoke;
  block[3] = &unk_2786D4CB0;
  v21 = activityCopy;
  v62 = v21;
  selfCopy = self;
  v65 = v66;
  v22 = handlerCopy;
  v64 = v22;
  v23 = dispatch_block_create(DISPATCH_BLOCK_ASSIGN_CURRENT, block);
  v58[0] = MEMORY[0x277D85DD0];
  v58[1] = 3221225472;
  v58[2] = __117__HAPHTTPClient__sendHTTPRequestToURL_withMethod_requestObject_serializationType_timeout_activity_completionHandler___block_invoke_2;
  v58[3] = &unk_2786D4CD8;
  v60 = v66;
  v52 = v23;
  v59 = v52;
  v53 = MEMORY[0x231885210](v58);
  v24 = 0;
  inited = 4294960591;
  v26 = 0;
  if (!lCopy || !v22)
  {
    goto LABEL_26;
  }

  inited = HTTPMessageCreate();
  if (inited)
  {
    goto LABEL_25;
  }

  HTTPMessageSetCompletionBlock();
  v27 = v67;
  *(v67 + 9640) = 15;
  timeoutCopy = 30.0;
  if (timeout > 0.0)
  {
    timeoutCopy = timeout;
  }

  *(v27 + 9644) = timeoutCopy;
  if (method <= 2)
  {
    if (method != 1)
    {
      if (method == 2)
      {
        *(v57 + 3) = 84;
        v29 = 1414745936;
        goto LABEL_24;
      }

LABEL_16:
      v30 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v32 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        v33 = HMFGetLogIdentifier();
        *buf = 138543618;
        v69 = v33;
        v70 = 1024;
        LODWORD(v71) = method;
        _os_log_impl(&dword_22AADC000, v32, OS_LOG_TYPE_ERROR, "%{public}@Invalid HTTP Request Method: %ud", buf, 0x12u);
      }

      objc_autoreleasePoolPop(v30);
      v24 = 0;
      goto LABEL_19;
    }

    *(v57 + 3) = 0;
    v34 = 17735;
    goto LABEL_23;
  }

  if (method == 3)
  {
    *(v57 + 3) = 0;
    v34 = 21840;
LABEL_23:
    v29 = v34 | 0x540000;
    goto LABEL_24;
  }

  if (method != 4)
  {
    goto LABEL_16;
  }

  strcpy(v57 + 3, "ETE");
  v29 = 1162626372;
LABEL_24:
  v57[0] = v29;
  v35 = lCopy;
  [lCopy UTF8String];
  inited = HTTPHeader_InitRequest();
  if (inited)
  {
LABEL_25:
    v24 = 0;
    v26 = 0;
    goto LABEL_26;
  }

  dnsName = [(HAPHTTPClient *)self dnsName];
  v24 = [HAPHTTPClient dnsNameForHTTPHeaderFromDNSNames:dnsName];

  v47 = v67;
  v48 = v24;
  HTTPHeader_SetField(v47 + 24, "Host", "%s", [v24 UTF8String]);
  if (!objectCopy || type != 1)
  {
    if (objectCopy && type == 2)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
LABEL_45:
        v51 = objectCopy;
        [objectCopy bytes];
        [objectCopy length];
        inited = HTTPMessageSetBody();
        v26 = 0;
        if (inited)
        {
          goto LABEL_26;
        }

LABEL_48:
        [v21 markWithReason:@"Sending request"];
        inited = [(HAPCoreUtilsHTTPClient *)self->_httpClient sendMessage:v67];
        if (!inited)
        {
          [v55 incrementHAPIPHTTPRequestsCount];
          v37 = 0;
          goto LABEL_32;
        }

        goto LABEL_26;
      }
    }

    else
    {
      if (!objectCopy || type != 3)
      {
        v26 = 0;
        if (!objectCopy)
        {
          goto LABEL_48;
        }

LABEL_20:
        inited = 4294960591;
        goto LABEL_26;
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        goto LABEL_45;
      }
    }

LABEL_19:
    v26 = 0;
    goto LABEL_20;
  }

  v56 = 0;
  v26 = [(HAPHTTPClient *)self _serializeUAPJSONObject:objectCopy error:&v56];
  v49 = v56;
  if (v49)
  {
    v36 = v49;
    v37 = v36;
    goto LABEL_27;
  }

  v50 = v26;
  [v26 bytes];
  [v26 length];
  inited = HTTPMessageSetBody();
  if (!inited)
  {
    goto LABEL_48;
  }

LABEL_26:
  v36 = HMErrorFromOSStatus(inited);
  v37 = 0;
LABEL_27:
  if ([(HAPHTTPClient *)self _supportsWoL])
  {
    v38 = v21;
    [v36 domain];

    [v36 code];
    v39 = [HAPMetricsPowerManagementLogEvent alloc];
    primaryAccessory = [v55 primaryAccessory];
    v41 = [(HAPMetricsPowerManagementLogEvent *)v39 initForHAPAccessory:primaryAccessory withLogType:0];

    v42 = +[HAPMetricsDispatcher sharedInstance];
    [v42 submitLogEvent:v41 error:v36];
  }

  v43 = objc_autoreleasePoolPush();
  v44 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
  {
    v45 = HMFGetLogIdentifier();
    *buf = 138543874;
    v69 = v45;
    v70 = 2112;
    v71 = v36;
    v72 = 2112;
    v73 = lCopy;
    _os_log_impl(&dword_22AADC000, v44, OS_LOG_TYPE_ERROR, "%{public}@[HAP HTTP Client] Encountered error %@ for sending HTTP request to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v43);
  (*(v22 + 2))(v22, 0, 4, 1000, v36);
  [v21 end];
  [v21 invalidate];

LABEL_32:
  _Block_object_dispose(v66, 8);
}

uint64_t __117__HAPHTTPClient__sendHTTPRequestToURL_withMethod_requestObject_serializationType_timeout_activity_completionHandler___block_invoke(uint64_t a1)
{
  [*(a1 + 32) begin];
  [*(a1 + 40) _handleHTTPResponseForMessage:*(*(*(a1 + 56) + 8) + 24) completionHandler:*(a1 + 48)];
  [*(a1 + 32) end];
  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)sendDELETERequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler
{
  lCopy = l;
  objectCopy = object;
  handlerCopy = handler;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x231884350](self, a2);
  v17 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 520];
  v18 = [v14 initWithName:v17];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:4 requestObject:objectCopy serializationType:type timeout:v18 activity:handlerCopy completionHandler:0.0];
  __HMFActivityScopeLeave();
}

- (void)sendPOSTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type completionHandler:(id)handler
{
  lCopy = l;
  objectCopy = object;
  handlerCopy = handler;
  v14 = objc_alloc(MEMORY[0x277D0F770]);
  v15 = MEMORY[0x277CCACA8];
  v16 = MEMORY[0x231884350](self, a2);
  v17 = [v15 stringWithFormat:@"%@, %s:%ld", v16, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 500];
  v18 = [v14 initWithName:v17];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:2 requestObject:objectCopy serializationType:type timeout:v18 activity:handlerCopy completionHandler:0.0];
  __HMFActivityScopeLeave();
}

- (void)sendPUTRequestToURL:(id)l withRequestObject:(id)object serializationType:(unint64_t)type timeout:(double)timeout completionHandler:(id)handler
{
  lCopy = l;
  objectCopy = object;
  handlerCopy = handler;
  v16 = objc_alloc(MEMORY[0x277D0F770]);
  v17 = MEMORY[0x277CCACA8];
  v18 = MEMORY[0x231884350](self, a2);
  v19 = [v17 stringWithFormat:@"%@, %s:%ld", v18, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 480];
  v20 = [v16 initWithName:v19];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:3 requestObject:objectCopy serializationType:type timeout:v20 activity:handlerCopy completionHandler:timeout];
  __HMFActivityScopeLeave();
}

- (void)sendGETRequestToURL:(id)l timeout:(double)timeout completionHandler:(id)handler
{
  lCopy = l;
  handlerCopy = handler;
  v11 = objc_alloc(MEMORY[0x277D0F770]);
  v12 = MEMORY[0x277CCACA8];
  v13 = MEMORY[0x231884350](self, a2);
  v14 = [v12 stringWithFormat:@"%@, %s:%ld", v13, "/Library/Caches/com.apple.xbs/Sources/HomeKit/Sources/CoreHAP/HAPHTTPClient.m", 459];
  v15 = [v11 initWithName:v14];

  [(HAPHTTPClient *)self _sendHTTPRequestToURL:lCopy withMethod:1 requestObject:0 serializationType:0 timeout:v15 activity:handlerCopy completionHandler:timeout];
  __HMFActivityScopeLeave();
}

- (void)invalidateWithError:(id)error
{
  errorCopy = error;
  [(HAPHTTPClient *)self setInvalidateRequested:1];
  [(HAPHTTPClient *)self setInvalidateReason:errorCopy];

  [(HAPCoreUtilsHTTPClient *)self->_httpClient invalidate];
  httpClient = self->_httpClient;
  self->_httpClient = 0;
}

- (BOOL)enableUAPSessionSecurityWithReadKey:(unsigned __int8)key[32] writeKey:(unsigned __int8)writeKey[32] error:(id *)error
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = NetTransportChaCha20Poly1305Configure();
  if (!v7)
  {
    [(HAPCoreUtilsHTTPClient *)self->_httpClient setTransportDelegate:v9];
  }

  if (error)
  {
    *error = HMErrorFromOSStatus(v7);
  }

  return v7 == 0;
}

- (BOOL)_supportsWoL
{
  wakeAddress = [(HAPHTTPClient *)self wakeAddress];
  v3 = wakeAddress != 0;

  return v3;
}

- (id)_connectionDestination
{
  v26 = *MEMORY[0x277D85DE8];
  dnsName = [(HAPHTTPClient *)self dnsName];
  wakeAddress = [(HAPHTTPClient *)self wakeAddress];
  if (wakeAddress)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"wake://%@%s%@", wakeAddress, "\x1E", dnsName];
    goto LABEL_14;
  }

  pendingConnectionSocketInfo = [(HAPHTTPClient *)self pendingConnectionSocketInfo];
  ipAddressStringWithScope = [pendingConnectionSocketInfo ipAddressStringWithScope];

  if (ipAddressStringWithScope)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v11;
      v20 = 2112;
      v21 = ipAddressStringWithScope;
      _os_log_impl(&dword_22AADC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Creating socket connection using address with scope %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    if (+[HAPAccessoryServerIP useDeferredResolutionStrategy])
    {
      v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@\x1E%@", dnsName, ipAddressStringWithScope];
      v12 = objc_autoreleasePoolPush();
      v13 = selfCopy;
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = HMFGetLogIdentifier();
        *buf = 138544130;
        v19 = v15;
        v20 = 2112;
        v21 = ipAddressStringWithScope;
        v22 = 2112;
        v23 = dnsName;
        v24 = 2112;
        v25 = v5;
        _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_DEFAULT, "%{public}@Creating socket connection using both IP and DNS Name: %@ ... %@ with output string: %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_13;
    }

    v16 = ipAddressStringWithScope;
  }

  else
  {
    v16 = dnsName;
  }

  v5 = v16;
LABEL_13:

LABEL_14:

  return v5;
}

- (int)_initializeCoreUtilsHTTPClientWithPort:(int64_t)port withEventsEnabled:(BOOL)enabled factory:(id)factory
{
  enabledCopy = enabled;
  v36 = *MEMORY[0x277D85DE8];
  factoryCopy = factory;
  _connectionDestination = [(HAPHTTPClient *)self _connectionDestination];
  if (!_connectionDestination)
  {
    goto LABEL_15;
  }

  if (self->_httpClient)
  {
LABEL_13:
    v22 = 0;
    goto LABEL_14;
  }

  queue = [(HAPHTTPClient *)self queue];
  v11 = [factoryCopy createHTTPClientWithQueue:queue];
  httpClient = self->_httpClient;
  self->_httpClient = v11;

  v13 = self->_httpClient;
  if (!v13)
  {
LABEL_15:
    v22 = -6718;
    goto LABEL_14;
  }

  getClientID = [(HAPCoreUtilsHTTPClient *)v13 getClientID];
  v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%04X", HIWORD(getClientID)];
  [(HAPHTTPClient *)self setUniqueClientIdentifier:v15];

  [(HAPCoreUtilsHTTPClient *)self->_httpClient setConnectionProgressHandler:_HandleConnectionProgress context:self];
  [(HAPCoreUtilsHTTPClient *)self->_httpClient setProperty:@"ipv6DelayNanos" value:&unk_283EA97E8];
  if (enabledCopy)
  {
    v16 = 126992;
  }

  else
  {
    v16 = 126976;
  }

  [(HAPCoreUtilsHTTPClient *)self->_httpClient setFlags:v16 mask:v16];
  [(HAPCoreUtilsHTTPClient *)self->_httpClient setTimeoutInSeconds:30];
  v17 = objc_autoreleasePoolPush();
  selfCopy = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    v20 = HMFGetLogIdentifier();
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:port];
    *buf = 138544130;
    v29 = v20;
    v30 = 2112;
    v31 = _connectionDestination;
    v32 = 2112;
    v33 = v21;
    v34 = 1024;
    clientID = [(HAPHTTPClient *)selfCopy clientID];
    _os_log_impl(&dword_22AADC000, v19, OS_LOG_TYPE_DEFAULT, "%{public}@[HAP HTTP Client] Setting destination to %@:%@ with CID 0x%X", buf, 0x26u);
  }

  objc_autoreleasePoolPop(v17);
  v22 = -[HAPCoreUtilsHTTPClient setDestination:port:](self->_httpClient, "setDestination:port:", [_connectionDestination UTF8String], port);
  if (!v22)
  {
    v27[2] = 0;
    systemInfo = [MEMORY[0x277D0F910] systemInfo];
    productVariant = [systemInfo productVariant];

    if (productVariant == 3)
    {
      [(HAPHTTPClient *)selfCopy setDebugDelegate:selfCopy queue:selfCopy->_queue];
    }

    v25 = selfCopy;
    v27[3] = _HandleEvent_f;
    v27[0] = v25;
    v27[1] = _Invalidated_f;
    v27[4] = _HandleSocketEvent_f;
    [(HAPCoreUtilsHTTPClient *)self->_httpClient setDelegate:v27];
    [(HAPCoreUtilsHTTPClient *)self->_httpClient setContext:v25];
    goto LABEL_13;
  }

LABEL_14:

  return v22;
}

- (void)setDebugDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  [(HAPHTTPClient *)self setDebugDelegate:delegate];
  [(HAPHTTPClient *)self setDebugDelegateQueue:queueCopy];

  v7[2] = _HandleDidReceiveMessage_f;
  v7[0] = self;
  v7[1] = _HandleWillSendMessage_f;
  [(HAPCoreUtilsHTTPClient *)self->_httpClient setDebugDelegate:v7];
}

- (void)setDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  [(HAPHTTPClient *)self setDelegate:delegate];
  [(HAPHTTPClient *)self setDelegateQueue:queueCopy];
}

- (NSString)peerEndpointDescription
{
  v8 = *MEMORY[0x277D85DE8];
  memset(v5, 0, sizeof(v5));
  v6 = 0;
  v2 = [(HAPCoreUtilsHTTPClient *)self->_httpClient getPeerAddress:v5 maxLength:28 outLength:0];
  v3 = 0;
  if (!v2)
  {
    if (SockAddrToString())
    {
      v3 = 0;
    }

    else
    {
      v3 = [MEMORY[0x277CCACA8] stringWithCString:v7 encoding:1];
    }
  }

  return v3;
}

- (HAPSocketInfo)peerSocketInfo
{
  v5 = *MEMORY[0x277D85DE8];
  memset(v4, 0, sizeof(v4));
  if ([(HAPHTTPClient *)self getHttpClientPeerAddress:v4])
  {
    v2 = 0;
  }

  else
  {
    v2 = [[HAPSocketInfo alloc] initWithSocket:v4];
  }

  return v2;
}

- (HMFNetAddress)peerAddressEx
{
  v19 = *MEMORY[0x277D85DE8];
  memset(v18, 0, sizeof(v18));
  v3 = [(HAPHTTPClient *)self getHttpClientPeerAddress:v18];
  if (v3)
  {
    v4 = v3;
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      httpClient = selfCopy->_httpClient;
      v12 = 138543874;
      v13 = v8;
      v14 = 1024;
      v15 = v4;
      v16 = 2048;
      v17 = httpClient;
      _os_log_impl(&dword_22AADC000, v7, OS_LOG_TYPE_ERROR, "%{public}@[IP Accessory Server HTTP Client] Failed to get peer address %d client ref %p", &v12, 0x1Cu);
    }

    objc_autoreleasePoolPop(v5);
    v10 = 0;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D0F858]) initWithSocketAddress:v18];
  }

  return v10;
}

- (int)getHttpClientPeerAddress:(sockaddr_storage *)address
{
  *&v3 = 0xDEDEDEDEDEDEDEDELL;
  *(&v3 + 1) = 0xDEDEDEDEDEDEDEDELL;
  *&address->__ss_pad2[80] = v3;
  *&address->__ss_pad2[96] = v3;
  *&address->__ss_pad2[48] = v3;
  *&address->__ss_pad2[64] = v3;
  *&address->__ss_pad2[16] = v3;
  *&address->__ss_pad2[32] = v3;
  *&address->ss_len = v3;
  *address->__ss_pad2 = v3;
  return [HAPCoreUtilsHTTPClient getPeerAddress:"getPeerAddress:maxLength:outLength:" maxLength:? outLength:?];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_httpClient)
  {
    v3 = objc_autoreleasePoolPush();
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      dnsName = self->_dnsName;
      *buf = 138543618;
      v9 = v5;
      v10 = 2112;
      v11 = dnsName;
      _os_log_impl(&dword_22AADC000, v4, OS_LOG_TYPE_INFO, "%{public}@[IP Accessory Server HTTP Client %@] HTTPClient not invalidated - invalidating....", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v3);
    [(HAPHTTPClient *)self invalidate];
  }

  v7.receiver = self;
  v7.super_class = HAPHTTPClient;
  [(HAPHTTPClient *)&v7 dealloc];
}

- (HAPHTTPClient)initWithSocketInfo:(id)info dnsName:(id)name eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address
{
  enabledCopy = enabled;
  infoCopy = info;
  nameCopy = name;
  queueCopy = queue;
  addressCopy = address;
  v21.receiver = self;
  v21.super_class = HAPHTTPClient;
  v16 = [(HAPHTTPClient *)&v21 init];
  if (v16)
  {
    v17 = v16;
    v18 = objc_alloc_init(HAPHTTPClientDependencyFactory);
    v19 = [(HAPHTTPClient *)v17 initWithSocketInfo:infoCopy dnsName:nameCopy eventsEnabled:enabledCopy queue:queueCopy wakeAddress:addressCopy dependencyFactory:v18];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (HAPHTTPClient)initWithSocketInfo:(id)info dnsName:(id)name eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address dependencyFactory:(id)factory
{
  enabledCopy = enabled;
  infoCopy = info;
  nameCopy = name;
  queueCopy = queue;
  addressCopy = address;
  factoryCopy = factory;
  v20 = queueCopy;
  if (!queueCopy)
  {
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_create("com.apple.HAPHTTPClient", v8);
  }

  objc_storeStrong(&self->_queue, v20);
  if (!queueCopy)
  {
  }

  self->_invalidated = 0;
  port = [(HAPSocketInfo *)infoCopy port];
  self->_port = [port intValue];

  wakeAddress = self->_wakeAddress;
  self->_wakeAddress = addressCopy;
  v23 = addressCopy;

  invalidateReason = self->_invalidateReason;
  self->_invalidateReason = 0;

  self->_requestCounter = 1;
  pendingConnectionSocketInfo = self->_pendingConnectionSocketInfo;
  self->_pendingConnectionSocketInfo = infoCopy;
  v26 = infoCopy;

  dnsName = self->_dnsName;
  self->_dnsName = nameCopy;

  v28 = [(HAPHTTPClient *)self _initializeCoreUtilsHTTPClientWithPort:self->_port withEventsEnabled:enabledCopy factory:factoryCopy];
  selfCopy = 0;
  if (!v28)
  {
    selfCopy = self;
  }

  return selfCopy;
}

- (HAPHTTPClient)initWithDNSName:(id)name port:(int64_t)port eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address dependencyFactory:(id)factory
{
  enabledCopy = enabled;
  nameCopy = name;
  nameCopy2 = name;
  queueCopy = queue;
  addressCopy = address;
  factoryCopy = factory;
  v26.receiver = self;
  v26.super_class = HAPHTTPClient;
  v19 = [(HAPHTTPClient *)&v26 init];
  v20 = v19;
  if (!v19)
  {
    goto LABEL_7;
  }

  objc_storeStrong(&v19->_dnsName, nameCopy);
  v20->_port = port;
  v21 = queueCopy;
  if (!queueCopy)
  {
    nameCopy = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = dispatch_queue_create("com.apple.HAPHTTPClient", nameCopy);
  }

  objc_storeStrong(&v20->_queue, v21);
  if (!queueCopy)
  {
  }

  v20->_invalidated = 0;
  v20->_requestCounter = 1;
  objc_storeStrong(&v20->_wakeAddress, address);
  invalidateReason = v20->_invalidateReason;
  v20->_invalidateReason = 0;

  v23 = [(HAPHTTPClient *)v20 _initializeCoreUtilsHTTPClientWithPort:port withEventsEnabled:enabledCopy factory:factoryCopy];
  v24 = 0;
  if (!v23)
  {
LABEL_7:
    v24 = v20;
  }

  return v24;
}

- (HAPHTTPClient)initWithDNSName:(id)name port:(int64_t)port eventsEnabled:(BOOL)enabled queue:(id)queue wakeAddress:(id)address
{
  enabledCopy = enabled;
  addressCopy = address;
  queueCopy = queue;
  nameCopy = name;
  v15 = objc_alloc_init(HAPHTTPClientDependencyFactory);
  v16 = [(HAPHTTPClient *)self initWithDNSName:nameCopy port:port eventsEnabled:enabledCopy queue:queueCopy wakeAddress:addressCopy dependencyFactory:v15];

  return v16;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t25 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t25, &__block_literal_global_13338);
  }

  v3 = logCategory__hmf_once_v26;

  return v3;
}

uint64_t __28__HAPHTTPClient_logCategory__block_invoke()
{
  logCategory__hmf_once_v26 = HMFCreateOSLogHandle();

  return MEMORY[0x2821F96F8]();
}

+ (id)dnsNameForHTTPHeaderFromDNSNames:(id)names
{
  if (names)
  {
    v3 = MEMORY[0x277CCACA8];
    namesCopy = names;
    v5 = [v3 stringWithFormat:@"%c", 30];
    v6 = [namesCopy componentsSeparatedByString:v5];

    firstObject = [v6 firstObject];
    v8 = [firstObject rangeOfString:@".%" options:4];

    firstObject2 = [v6 firstObject];
    v10 = firstObject2;
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(__CFString *)firstObject2 substringWithRange:0, v8];

      v10 = v11;
    }
  }

  else
  {
    v10 = &stru_283E79C60;
  }

  return v10;
}

@end