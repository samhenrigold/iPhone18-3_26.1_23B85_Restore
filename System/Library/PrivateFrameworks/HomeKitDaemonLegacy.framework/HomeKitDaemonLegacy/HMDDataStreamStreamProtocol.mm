@interface HMDDataStreamStreamProtocol
- (BOOL)isActive;
- (HMDDataStreamProtocolDelegate)dataStream;
- (HMDDataStreamStreamProtocol)initWithDataStream:(id)stream;
- (void)_closeAllSocketsWithError:(id)error;
- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value;
- (void)_reevaluateTrafficClassForDataStream;
- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload;
- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload;
- (void)dataStreamInitiatedClose:(id)close;
- (void)registerSocket:(id)socket;
- (void)sendData:(id)data socket:(id)socket completion:(id)completion;
- (void)unregisterSocket:(id)socket;
@end

@implementation HMDDataStreamStreamProtocol

- (HMDDataStreamProtocolDelegate)dataStream
{
  WeakRetained = objc_loadWeakRetained(&self->_dataStream);

  return WeakRetained;
}

- (void)_closeAllSocketsWithError:(id)error
{
  v18 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  objectEnumerator = [sockets objectEnumerator];

  v7 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if (v11)
        {
          [v11 closeWithError:errorCopy];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [objectEnumerator countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  sockets2 = [(HMDDataStreamStreamProtocol *)self sockets];
  [sockets2 removeAllObjects];
}

- (void)dataStream:(id)stream didReceiveResponse:(id)response header:(id)header payload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  responseCopy = response;
  headerCopy = header;
  payloadCopy = payload;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v18 = 138544130;
    v19 = v17;
    v20 = 2112;
    v21 = responseCopy;
    v22 = 2112;
    v23 = headerCopy;
    v24 = 2112;
    v25 = payloadCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support response message with topic=%@, header=%@, payload=%@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
}

- (void)dataStream:(id)stream didReceiveRequest:(id)request header:(id)header payload:(id)payload
{
  v26 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  requestCopy = request;
  headerCopy = header;
  payloadCopy = payload;
  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    v18 = 138544130;
    v19 = v17;
    v20 = 2112;
    v21 = requestCopy;
    v22 = 2112;
    v23 = headerCopy;
    v24 = 2112;
    v25 = payloadCopy;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@Stream protocol does not support request message with topic=%@, header=%@, payload=%@", &v18, 0x2Au);
  }

  objc_autoreleasePoolPop(v14);
}

- (void)dataStream:(id)stream didReceiveEvent:(id)event header:(id)header payload:(id)payload
{
  v31 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  eventCopy = event;
  headerCopy = header;
  payloadCopy = payload;
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  v15 = [sockets objectForKey:eventCopy];

  if (!v15)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = eventCopy;
      v29 = 2112;
      v30 = payloadCopy;
      v22 = "%{public}@No active socket, dropping packet with topic=%@ payload=%@";
      v23 = v20;
      v24 = OS_LOG_TYPE_DEBUG;
LABEL_8:
      _os_log_impl(&dword_2531F8000, v23, v24, v22, &v25, 0x20u);
    }

LABEL_9:

    objc_autoreleasePoolPop(v18);
    goto LABEL_10;
  }

  v16 = [payloadCopy objectForKeyedSubscript:@"data"];

  if (!v16)
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      v25 = 138543874;
      v26 = v21;
      v27 = 2112;
      v28 = eventCopy;
      v29 = 2112;
      v30 = payloadCopy;
      v22 = "%{public}@No data field in payload, dropping packet with topic=%@ payload=%@";
      v23 = v20;
      v24 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  v17 = [payloadCopy objectForKeyedSubscript:@"data"];
  [v15 handleIncomingData:v17];

LABEL_10:
}

- (void)dataStreamInitiatedClose:(id)close
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(HMDDataStreamStreamProtocol *)self sockets:close];
  objectEnumerator = [v3 objectEnumerator];

  v5 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        [*(*(&v9 + 1) + 8 * v8++) closeInitiated];
      }

      while (v6 != v8);
      v6 = [objectEnumerator countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (BOOL)isActive
{
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  v3 = [sockets count] != 0;

  return v3;
}

- (void)sendData:(id)data socket:(id)socket completion:(id)completion
{
  v18[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  socketCopy = socket;
  dataCopy = data;
  dataStream = [(HMDDataStreamStreamProtocol *)self dataStream];
  applicationProtocolName = [socketCopy applicationProtocolName];

  v17 = @"data";
  v18[0] = dataCopy;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __58__HMDDataStreamStreamProtocol_sendData_socket_completion___block_invoke;
  v15[3] = &unk_279735558;
  v16 = completionCopy;
  v14 = completionCopy;
  [dataStream sendEventForProtocol:@"stream" topic:applicationProtocolName payload:v13 completion:v15];
}

uint64_t __58__HMDDataStreamStreamProtocol_sendData_socket_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)_notifyActiveStatusChangedFromPreviousValue:(BOOL)value
{
  v14 = *MEMORY[0x277D85DE8];
  if ([(HMDDataStreamStreamProtocol *)self isActive]!= value)
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      [(HMDDataStreamStreamProtocol *)selfCopy isActive];
      v8 = HMFBooleanToString();
      v10 = 138543618;
      v11 = v7;
      v12 = 2112;
      v13 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Stream protocol changes active to %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
    dataStream = [(HMDDataStreamStreamProtocol *)selfCopy dataStream];
    [dataStream protocolDidUpdateActiveStatus:selfCopy];
  }
}

- (void)_reevaluateTrafficClassForDataStream
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  objectEnumerator = [(NSMapTable *)self->_sockets objectEnumerator];
  v4 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v22;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        trafficClass = [v10 trafficClass];
        if (trafficClass > v7)
        {
          v12 = trafficClass;
          applicationProtocolName = [v10 applicationProtocolName];

          v6 = applicationProtocolName;
          v7 = v12;
        }
      }

      v5 = [objectEnumerator countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v5);

    if (v6)
    {
      v14 = objc_autoreleasePoolPush();
      selfCopy = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = HMFGetLogIdentifier();
        *buf = 138543874;
        v26 = v17;
        v27 = 2048;
        v28 = v7;
        v29 = 2112;
        v30 = v6;
        _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (requested by: '%@')", buf, 0x20u);
      }

      goto LABEL_17;
    }
  }

  else
  {

    v7 = 0;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v19;
    v27 = 2048;
    v28 = v7;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Setting data stream's traffic class to %lu (reset)", buf, 0x16u);
  }

  v6 = 0;
LABEL_17:

  objc_autoreleasePoolPop(v14);
  dataStream = [(HMDDataStreamStreamProtocol *)self dataStream];
  [dataStream setTrafficClass:v7];
}

- (void)unregisterSocket:(id)socket
{
  socketCopy = socket;
  isActive = [(HMDDataStreamStreamProtocol *)self isActive];
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  applicationProtocolName = [socketCopy applicationProtocolName];
  v7 = [sockets objectForKey:applicationProtocolName];

  if (v7 == socketCopy)
  {
    sockets2 = [(HMDDataStreamStreamProtocol *)self sockets];
    applicationProtocolName2 = [socketCopy applicationProtocolName];
    [sockets2 removeObjectForKey:applicationProtocolName2];

    [(HMDDataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
    [(HMDDataStreamStreamProtocol *)self _reevaluateTrafficClassForDataStream];
  }
}

- (void)registerSocket:(id)socket
{
  socketCopy = socket;
  isActive = [(HMDDataStreamStreamProtocol *)self isActive];
  sockets = [(HMDDataStreamStreamProtocol *)self sockets];
  applicationProtocolName = [socketCopy applicationProtocolName];
  v11 = [sockets objectForKey:applicationProtocolName];

  v8 = [MEMORY[0x277CCA9B8] hmfErrorWithCode:12];
  [v11 closeWithError:v8];

  sockets2 = [(HMDDataStreamStreamProtocol *)self sockets];
  applicationProtocolName2 = [socketCopy applicationProtocolName];
  [sockets2 setObject:socketCopy forKey:applicationProtocolName2];

  [(HMDDataStreamStreamProtocol *)self _notifyActiveStatusChangedFromPreviousValue:isActive];
}

- (HMDDataStreamStreamProtocol)initWithDataStream:(id)stream
{
  streamCopy = stream;
  v9.receiver = self;
  v9.super_class = HMDDataStreamStreamProtocol;
  v5 = [(HMDDataStreamStreamProtocol *)&v9 init];
  if (v5)
  {
    strongToWeakObjectsMapTable = [MEMORY[0x277CCAB00] strongToWeakObjectsMapTable];
    sockets = v5->_sockets;
    v5->_sockets = strongToWeakObjectsMapTable;

    objc_storeWeak(&v5->_dataStream, streamCopy);
  }

  return v5;
}

@end