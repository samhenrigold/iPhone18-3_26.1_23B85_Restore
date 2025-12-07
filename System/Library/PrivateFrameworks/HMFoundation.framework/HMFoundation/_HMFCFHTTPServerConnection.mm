@interface _HMFCFHTTPServerConnection
+ (id)logCategory;
- (BOOL)isEqual:(id)equal;
- (BOOL)open;
- (_HMFCFHTTPServerConnection)init;
- (_HMFCFHTTPServerConnection)initWithConnectionRef:(_CFHTTPServerConnection *)ref;
- (_HMFCFHTTPServerConnectionDelegate)delegate;
- (id)logIdentifier;
- (unint64_t)hash;
- (void)_handleCompletedReceivedRequest:(id)request error:(id)error;
- (void)_handleCompletedResponse:(_CFHTTPServerResponse *)response error:(id)error;
- (void)_handleReceivedRequestRef:(_CFHTTPServerRequest *)ref;
- (void)_sendStatusCode:(int64_t)code forRequest:(id)request bodyData:(id)data;
- (void)_stopReadBody:(id)body;
- (void)dealloc;
- (void)handleRequest:(id)request bodyReadStream:(__CFReadStream *)stream eventType:(unint64_t)type;
- (void)invalidate;
- (void)sendResponse:(id)response;
@end

@implementation _HMFCFHTTPServerConnection

- (_HMFCFHTTPServerConnection)init
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

- (_HMFCFHTTPServerConnection)initWithConnectionRef:(_CFHTTPServerConnection *)ref
{
  v27 = *MEMORY[0x277D85DE8];
  v24.receiver = self;
  v24.super_class = _HMFCFHTTPServerConnection;
  v4 = [(_HMFCFHTTPServerConnection *)&v24 init];
  if (!v4)
  {
LABEL_12:
    v21 = v4;
    goto LABEL_13;
  }

  v4->_internal = CFRetain(ref);
  v5 = HMFDispatchQueueName(v4, 0);
  v6 = dispatch_queue_create(v5, 0);
  clientQueue = v4->_clientQueue;
  v4->_clientQueue = v6;

  array = [MEMORY[0x277CBEB18] array];
  pendingRequests = v4->_pendingRequests;
  v4->_pendingRequests = array;

  array2 = [MEMORY[0x277CBEB18] array];
  pendingRespones = v4->_pendingRespones;
  v4->_pendingRespones = array2;

  v12 = [[HMFWeakObject alloc] initWithWeakObject:v4];
  [(_HMFCFHTTPServerConnection *)v4 internal:1];
  _CFHTTPServerConnectionSetClient();
  if ([(_HMFCFHTTPServerConnection *)v4 internal]&& [(_HMFCFHTTPServerConnection *)v4 isValid])
  {
    if (ref && (v13 = _CFHTTPServerConnectionCopyProperty()) != 0)
    {
      v14 = v13;
      v15 = -[HMFNetAddress initWithSocketAddress:]([HMFNetAddress alloc], "initWithSocketAddress:", [v13 bytes]);
    }

    else
    {
      v15 = 0;
    }

    address = v4->_address;
    v4->_address = v15;

    goto LABEL_12;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = v4;
  v19 = HMFGetOSLogHandle(v17, v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier(v17);
    *buf = 138543362;
    v26 = v20;
    _os_log_impl(&dword_22ADEC000, v19, OS_LOG_TYPE_ERROR, "%{public}@Failed to create connection, connection is invalid", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v21 = 0;
LABEL_13:

  return v21;
}

- (void)dealloc
{
  if (self->_internal)
  {
    if (_CFHTTPServerConnectionIsValid())
    {
      _CFHTTPServerConnectionInvalidate();
    }

    CFRelease(self->_internal);
    self->_internal = 0;
  }

  v3.receiver = self;
  v3.super_class = _HMFCFHTTPServerConnection;
  [(_HMFCFHTTPServerConnection *)&v3 dealloc];
}

- (unint64_t)hash
{
  internal = [(_HMFCFHTTPServerConnection *)self internal];

  return CFHash(internal);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v7 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
    if (v6)
    {
      v7 = CFEqual([(_HMFCFHTTPServerConnection *)self internal], [(_HMFCFHTTPServerConnection *)v6 internal]) != 0;
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  if ([(_HMFCFHTTPServerConnection *)self isValid])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle(selfCopy, v5);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(selfCopy);
      v8 = 138543362;
      v9 = v7;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Closed", &v8, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(_HMFCFHTTPServerConnection *)selfCopy internal];
    _CFHTTPServerConnectionInvalidate();
  }
}

- (BOOL)open
{
  v13 = *MEMORY[0x277D85DE8];
  isValid = [(_HMFCFHTTPServerConnection *)self isValid];
  if (isValid)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle(selfCopy, v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier(selfCopy);
      v11 = 138543362;
      v12 = v8;
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_INFO, "%{public}@Opened", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
    [(_HMFCFHTTPServerConnection *)selfCopy internal];
    clientQueue = [(_HMFCFHTTPServerConnection *)selfCopy clientQueue];
    _CFHTTPServerConnectionSetDispatchQueue();
  }

  return isValid;
}

- (void)_handleReceivedRequestRef:(_CFHTTPServerRequest *)ref
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    LODWORD(buf.version) = 138543618;
    *(&buf.version + 4) = v9;
    WORD2(buf.info) = 2112;
    *(&buf.info + 6) = ref;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Received request: %@", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  v10 = [[_HMFCFHTTPServerRequest alloc] initWithConnection:selfCopy requestRef:ref];
  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = selfCopy;
    v14 = HMFGetOSLogHandle(v12, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier(v12);
      LODWORD(buf.version) = 138543618;
      *(&buf.version + 4) = v15;
      WORD2(buf.info) = 2112;
      *(&buf.info + 6) = v10;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_INFO, "%{public}@Received request: %@", &buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    [v12[4] addObject:v10];
    bodyStream = [(_HMFCFHTTPServerRequest *)v10 bodyStream];
    v17 = objc_autoreleasePoolPush();
    v18 = v12;
    v20 = HMFGetOSLogHandle(v18, v19);
    v21 = os_log_type_enabled(v20, OS_LOG_TYPE_INFO);
    if (bodyStream)
    {
      if (v21)
      {
        v22 = HMFGetLogIdentifier(v18);
        LODWORD(buf.version) = 138543618;
        *(&buf.version + 4) = v22;
        WORD2(buf.info) = 2112;
        *(&buf.info + 6) = v10;
        _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Opening body stream for request: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      activity = [(HMFHTTPRequestInternal *)v10 activity];
      [activity markWithReason:@"Opening body stream"];

      memset(&buf, 0, sizeof(buf));
      v24 = [[HMFWeakObject alloc] initWithWeakObject:v10];
      buf.info = v24;
      buf.retain = _retainInfo;
      buf.release = _releaseInfo;
      CFReadStreamSetClient(bodyStream, 0x1AuLL, readStreamCallBack, &buf);
      clientQueue = [v18 clientQueue];
      MEMORY[0x231886930](bodyStream, clientQueue);

      if (!CFReadStreamOpen(bodyStream))
      {
        v26 = objc_autoreleasePoolPush();
        v27 = v18;
        v29 = HMFGetOSLogHandle(v27, v28);
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          v30 = HMFGetLogIdentifier(v27);
          v33 = 138543618;
          v34 = v30;
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_22ADEC000, v29, OS_LOG_TYPE_ERROR, "%{public}@Failed to open request body stream for request %@", &v33, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
        v31 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
        [v27 _handleCompletedReceivedRequest:v10 error:v31];
      }
    }

    else
    {
      if (v21)
      {
        v32 = HMFGetLogIdentifier(v18);
        LODWORD(buf.version) = 138543618;
        *(&buf.version + 4) = v32;
        WORD2(buf.info) = 2112;
        *(&buf.info + 6) = v10;
        _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@No body stream for request: %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      [v18 _handleCompletedReceivedRequest:v10 error:0];
    }
  }
}

- (void)_handleCompletedReceivedRequest:(id)request error:(id)error
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  errorCopy = error;
  if (requestCopy)
  {
    [(_HMFCFHTTPServerConnection *)self _stopReadBody:requestCopy];
    delegate = [(_HMFCFHTTPServerConnection *)self delegate];
    if (errorCopy)
    {
      v9 = objc_autoreleasePoolPush();
      selfCopy = self;
      v12 = HMFGetOSLogHandle(selfCopy, v11);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = HMFGetLogIdentifier(selfCopy);
        v24 = 138543618;
        v25 = v13;
        v26 = 2112;
        v27 = requestCopy;
        _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Sending a 500 (Internal Server Error) for the request: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      v14 = selfCopy;
      v15 = 500;
    }

    else
    {
      v16 = objc_opt_respondsToSelector();
      v17 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v20 = HMFGetOSLogHandle(selfCopy2, v19);
      v21 = v20;
      if (v16)
      {
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v22 = HMFGetLogIdentifier(selfCopy2);
          v24 = 138543618;
          v25 = v22;
          v26 = 2112;
          v27 = requestCopy;
          _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_INFO, "%{public}@Received complete request: %@", &v24, 0x16u);
        }

        objc_autoreleasePoolPop(v17);
        [delegate connection:selfCopy2 didReceiveRequest:requestCopy];
        goto LABEL_14;
      }

      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v23 = HMFGetLogIdentifier(selfCopy2);
        v24 = 138543618;
        v25 = v23;
        v26 = 2112;
        v27 = requestCopy;
        _os_log_impl(&dword_22ADEC000, v21, OS_LOG_TYPE_DEFAULT, "%{public}@Sending a 501 (Not Implemented) for the request: %@", &v24, 0x16u);
      }

      objc_autoreleasePoolPop(v17);
      v14 = selfCopy2;
      v15 = 501;
    }

    [(_HMFCFHTTPServerConnection *)v14 _sendStatusCode:v15 forRequest:requestCopy];
LABEL_14:
    [(NSMutableArray *)self->_pendingRequests removeObject:requestCopy];
  }
}

- (void)_stopReadBody:(id)body
{
  v17 = *MEMORY[0x277D85DE8];
  bodyCopy = body;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle(selfCopy, v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    v13 = 138543618;
    v14 = v9;
    v15 = 2112;
    v16 = bodyCopy;
    _os_log_impl(&dword_22ADEC000, v8, OS_LOG_TYPE_DEBUG, "%{public}@Closing body stream for request: %@", &v13, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  bodyStream = [bodyCopy bodyStream];
  if (bodyStream)
  {
    v11 = bodyStream;
    activity = [bodyCopy activity];
    [activity markWithReason:@"Closing body stream"];

    CFReadStreamSetClient(v11, 0, 0, 0);
    MEMORY[0x231886930](v11, 0);
    CFReadStreamClose(v11);
  }
}

- (void)handleRequest:(id)request bodyReadStream:(__CFReadStream *)stream eventType:(unint64_t)type
{
  v50 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  if (type == 16)
  {
    goto LABEL_17;
  }

  if (type == 8)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle(selfCopy2, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier(selfCopy2);
      *buffer = 138543618;
      v45 = v21;
      v46 = 2112;
      typeCopy = requestCopy;
      _os_log_impl(&dword_22ADEC000, v20, OS_LOG_TYPE_INFO, "%{public}@Received body stream error for request: %@", buffer, 0x16u);
    }

    goto LABEL_14;
  }

  if (type != 2)
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v23 = HMFGetOSLogHandle(selfCopy2, v22);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = HMFGetLogIdentifier(selfCopy2);
      *buffer = 138543874;
      v45 = v24;
      v46 = 2048;
      typeCopy = type;
      v48 = 2112;
      v49 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v23, OS_LOG_TYPE_ERROR, "%{public}@Received unknown event: %ld, for request: %@", buffer, 0x20u);
    }

LABEL_14:
    objc_autoreleasePoolPop(v17);
    [(_HMFCFHTTPServerConnection *)selfCopy2 _sendStatusCode:500 forRequest:requestCopy];
    goto LABEL_18;
  }

  v9 = CFReadStreamRead(stream, buffer, 1024);
  v10 = v9;
  if (v9 >= 1)
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v14 = HMFGetOSLogHandle(selfCopy3, v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier(selfCopy3);
      v38 = 138543874;
      v39 = v15;
      v40 = 2048;
      v41 = v10;
      v42 = 2112;
      v43 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Reading %ld bytes for request: %@", &v38, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [MEMORY[0x277CBEA90] dataWithBytes:buffer length:v10];
    [requestCopy appendBodyData:v16];

    goto LABEL_18;
  }

  if (v9 < 0)
  {
    v27 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v30 = HMFGetOSLogHandle(selfCopy4, v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = HMFGetLogIdentifier(selfCopy4);
      v38 = 138543618;
      v39 = v31;
      v40 = 2112;
      v41 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v30, OS_LOG_TYPE_INFO, "%{public}@Failed to read available data for request: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v27);
    v32 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:11];
    [(_HMFCFHTTPServerConnection *)selfCopy4 _handleCompletedReceivedRequest:requestCopy error:v32];
  }

  else
  {
    body = [requestCopy body];
    v26 = [body length];

    if (v26)
    {
LABEL_17:
      [(_HMFCFHTTPServerConnection *)self _handleCompletedReceivedRequest:requestCopy error:0];
      goto LABEL_18;
    }

    v33 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v36 = HMFGetOSLogHandle(selfCopy5, v35);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = HMFGetLogIdentifier(selfCopy5);
      v38 = 138543618;
      v39 = v37;
      v40 = 2112;
      v41 = requestCopy;
      _os_log_impl(&dword_22ADEC000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@Got zero bytes read and no accumulated read bytes for request: %@", &v38, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

LABEL_18:
}

- (void)_sendStatusCode:(int64_t)code forRequest:(id)request bodyData:(id)data
{
  requestCopy = request;
  dataCopy = data;
  [(_HMFCFHTTPServerConnection *)self _stopReadBody:requestCopy];
  [(NSMutableArray *)self->_pendingRequests removeObject:requestCopy];
  v10 = [[_HMFCFHTTPServerResponse alloc] initWithRequest:requestCopy statusCode:code];
  [(_HMFCFHTTPServerResponse *)v10 setBody:dataCopy];
  objc_initWeak(&location, self);
  objc_initWeak(&from, v10);
  v11 = MEMORY[0x277D85DD0];
  v12 = 3221225472;
  v13 = __66___HMFCFHTTPServerConnection__sendStatusCode_forRequest_bodyData___block_invoke;
  v14 = &unk_2786E75F8;
  objc_copyWeak(&v15, &location);
  objc_copyWeak(&v16, &from);
  [(_HMFCFHTTPServerResponse *)v10 setCompletionHandler:&v11];
  [(_HMFCFHTTPServerConnection *)self sendResponse:v10, v11, v12, v13, v14];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&v15);
  objc_destroyWeak(&from);
  objc_destroyWeak(&location);
}

- (void)sendResponse:(id)response
{
  responseCopy = response;
  if (responseCopy)
  {
    clientQueue = [(_HMFCFHTTPServerConnection *)self clientQueue];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __43___HMFCFHTTPServerConnection_sendResponse___block_invoke;
    v6[3] = &unk_2786E6D18;
    v7 = responseCopy;
    selfCopy = self;
    dispatch_async(clientQueue, v6);
  }
}

- (void)_handleCompletedResponse:(_CFHTTPServerResponse *)response error:(id)error
{
  v47 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle(selfCopy, v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543874;
    v42 = v11;
    v43 = 2112;
    responseCopy = response;
    v45 = 2112;
    v46 = errorCopy;
    _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Completed sending response, %@, with error: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  pendingRespones = [(_HMFCFHTTPServerConnection *)selfCopy pendingRespones];
  v13 = [pendingRespones copy];

  v14 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (!v14)
  {
    goto LABEL_20;
  }

  v15 = v14;
  v16 = *v37;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v37 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v18 = *(*(&v36 + 1) + 8 * i);
      if ([v18 responseRef] == response)
      {
        activity = [v18 activity];
        [activity invalidate];

        request = [v18 request];
        activity2 = [request activity];
        [activity2 invalidate];

        v22 = objc_autoreleasePoolPush();
        v23 = selfCopy;
        v25 = HMFGetOSLogHandle(v23, v24);
        v26 = v25;
        if (errorCopy)
        {
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_18;
          }

          v27 = HMFGetLogIdentifier(v23);
          shortDescription = [v18 shortDescription];
          *buf = 138543874;
          v42 = v27;
          v43 = 2112;
          responseCopy = shortDescription;
          v45 = 2112;
          v46 = errorCopy;
          v29 = "%{public}@Failed to send response, %@, with error: %@";
          v30 = v26;
          v31 = OS_LOG_TYPE_DEFAULT;
          v32 = 32;
        }

        else
        {
          if (!os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            goto LABEL_18;
          }

          v27 = HMFGetLogIdentifier(v23);
          shortDescription = [v18 shortDescription];
          *buf = 138543618;
          v42 = v27;
          v43 = 2112;
          responseCopy = shortDescription;
          v29 = "%{public}@Successfully sent response: %@";
          v30 = v26;
          v31 = OS_LOG_TYPE_INFO;
          v32 = 22;
        }

        _os_log_impl(&dword_22ADEC000, v30, v31, v29, buf, v32);

LABEL_18:
        objc_autoreleasePoolPop(v22);
        pendingRespones2 = [(_HMFCFHTTPServerConnection *)v23 pendingRespones];
        [pendingRespones2 removeObject:v18];

        completionHandler = [v18 completionHandler];

        if (completionHandler)
        {
          completionHandler2 = [v18 completionHandler];
          (completionHandler2)[2](completionHandler2, errorCopy);

          [v18 setCompletionHandler:0];
        }

        goto LABEL_20;
      }
    }

    v15 = [v13 countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_20:
}

+ (id)logCategory
{
  if (_MergedGlobals_3_7 != -1)
  {
    dispatch_once(&_MergedGlobals_3_7, &__block_literal_global_23);
  }

  v3 = qword_280AFC360;

  return v3;
}

- (id)logIdentifier
{
  address = [(_HMFCFHTTPServerConnection *)self address];
  addressString = [address addressString];

  return addressString;
}

- (_HMFCFHTTPServerConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end