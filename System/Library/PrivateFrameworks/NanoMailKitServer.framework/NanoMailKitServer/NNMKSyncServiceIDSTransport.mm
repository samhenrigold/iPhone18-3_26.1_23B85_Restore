@interface NNMKSyncServiceIDSTransport
- (NNMKSyncServiceIDSTransport)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate;
- (NNMKSyncServiceTransportDelegate)delegate;
- (double)_timeIntervalFromTimeoutCategory:(unint64_t)category;
- (id)sendProtobufData:(id)data type:(unint64_t)type priority:(unint64_t)priority timeout:(double)timeout allowCloudDelivery:(BOOL)delivery;
- (id)sendProtobufData:(id)data type:(unint64_t)type priority:(unint64_t)priority timeoutCategory:(unint64_t)category allowCloudDelivery:(BOOL)delivery;
- (id)sendResourceAtURL:(id)l metadata:(id)metadata priority:(unint64_t)priority timeoutCategory:(unint64_t)category;
- (unint64_t)_connectivityState;
- (void)_handleConnectivityChange;
- (void)dealloc;
- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error;
- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context;
- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context;
- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context;
- (void)serviceSpaceDidBecomeAvailable:(id)available;
@end

@implementation NNMKSyncServiceIDSTransport

- (NNMKSyncServiceIDSTransport)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate
{
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v17.receiver = self;
  v17.super_class = NNMKSyncServiceIDSTransport;
  v12 = [(NNMKSyncServiceIDSTransport *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeWeak(&v12->_delegate, delegateCopy);
    objc_storeStrong(&v13->_serviceName, name);
    v14 = [objc_alloc(MEMORY[0x277D18778]) initWithService:nameCopy];
    idsService = v13->_idsService;
    v13->_idsService = v14;

    [(IDSService *)v13->_idsService addDelegate:v13 queue:queueCopy];
    v13->_connectivityState = [(NNMKSyncServiceIDSTransport *)v13 _connectivityState];
  }

  return v13;
}

- (void)dealloc
{
  [(IDSService *)self->_idsService removeDelegate:self];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = NNMKSyncServiceIDSTransport;
  [(NNMKSyncServiceIDSTransport *)&v4 dealloc];
}

- (id)sendProtobufData:(id)data type:(unint64_t)type priority:(unint64_t)priority timeoutCategory:(unint64_t)category allowCloudDelivery:(BOOL)delivery
{
  deliveryCopy = delivery;
  dataCopy = data;
  [(NNMKSyncServiceIDSTransport *)self _timeIntervalFromTimeoutCategory:category];
  v13 = [(NNMKSyncServiceIDSTransport *)self sendProtobufData:dataCopy type:type priority:priority timeout:deliveryCopy allowCloudDelivery:?];

  return v13;
}

- (id)sendProtobufData:(id)data type:(unint64_t)type priority:(unint64_t)priority timeout:(double)timeout allowCloudDelivery:(BOOL)delivery
{
  deliveryCopy = delivery;
  v39[3] = *MEMORY[0x277D85DE8];
  v12 = MEMORY[0x277D189F0];
  dataCopy = data;
  v14 = [[v12 alloc] initWithProtobufData:dataCopy type:type isResponse:0];

  v15 = 200;
  if (priority == 100)
  {
    v15 = 100;
  }

  if (priority == 300)
  {
    v16 = 300;
  }

  else
  {
    v16 = v15;
  }

  idsService = self->_idsService;
  v18 = [MEMORY[0x277CBEB98] setWithObject:*MEMORY[0x277D187E8]];
  v19 = *MEMORY[0x277D18678];
  v39[0] = MEMORY[0x277CBEC38];
  v20 = *MEMORY[0x277D18650];
  v38[0] = v19;
  v38[1] = v20;
  v21 = [MEMORY[0x277CCABB0] numberWithDouble:timeout];
  v39[1] = v21;
  v38[2] = *MEMORY[0x277D18568];
  v22 = [MEMORY[0x277CCABB0] numberWithBool:deliveryCopy];
  v39[2] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  v30 = 0;
  v31 = 0;
  [(IDSService *)idsService sendProtobuf:v14 toDestinations:v18 priority:v16 options:v23 identifier:&v31 error:&v30];
  v24 = v31;
  v25 = v30;

  v26 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543874;
    v33 = v24;
    v34 = 2048;
    typeCopy = type;
    v36 = 2114;
    v37 = serviceName;
    _os_log_impl(&dword_25B19F000, v26, OS_LOG_TYPE_DEFAULT, "#IDS sent message. (IDS Identifier: %{public}@, Type: %lu, Service: %{public}@)", buf, 0x20u);
  }

  v28 = v24;

  return v24;
}

- (id)sendResourceAtURL:(id)l metadata:(id)metadata priority:(unint64_t)priority timeoutCategory:(unint64_t)category
{
  v36[2] = *MEMORY[0x277D85DE8];
  lCopy = l;
  v11 = 200;
  if (priority == 100)
  {
    v11 = 100;
  }

  if (priority == 300)
  {
    v12 = 300;
  }

  else
  {
    v12 = v11;
  }

  idsService = self->_idsService;
  v14 = MEMORY[0x277CBEB98];
  v15 = *MEMORY[0x277D187E8];
  metadataCopy = metadata;
  v17 = [v14 setWithObject:v15];
  v18 = *MEMORY[0x277D18650];
  v35[0] = *MEMORY[0x277D18678];
  v35[1] = v18;
  v36[0] = MEMORY[0x277CBEC38];
  v19 = MEMORY[0x277CCABB0];
  [(NNMKSyncServiceIDSTransport *)self _timeIntervalFromTimeoutCategory:category];
  v20 = [v19 numberWithDouble:?];
  v36[1] = v20;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  v27 = 0;
  v28 = 0;
  [(IDSService *)idsService sendResourceAtURL:lCopy metadata:metadataCopy toDestinations:v17 priority:v12 options:v21 identifier:&v28 error:&v27];

  v22 = v28;
  v23 = v27;

  v24 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    serviceName = self->_serviceName;
    *buf = 138543874;
    v30 = v22;
    v31 = 2114;
    v32 = lCopy;
    v33 = 2114;
    v34 = serviceName;
    _os_log_impl(&dword_25B19F000, v24, OS_LOG_TYPE_DEFAULT, "#IDS sent resource. (IDS Identifier: %{public}@, URL: %{public}@, Service: %{public}@)", buf, 0x20u);
  }

  return v22;
}

- (void)service:(id)service account:(id)account incomingUnhandledProtobuf:(id)protobuf fromID:(id)d context:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  protobufCopy = protobuf;
  v10 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v11 = v10;
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    type = [protobufCopy type];
    serviceName = self->_serviceName;
    v17 = 138543874;
    v18 = outgoingResponseIdentifier;
    v19 = 1024;
    v20 = type;
    v21 = 2114;
    v22 = serviceName;
    _os_log_impl(&dword_25B19F000, v11, OS_LOG_TYPE_DEFAULT, "#IDS received message. (IDS Identifier: %{public}@, Type: %d, Service: %{public}@)", &v17, 0x1Cu);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  data = [protobufCopy data];
  [WeakRetained syncServiceTransport:self didReadProtobufData:data type:{objc_msgSend(protobufCopy, "type")}];
}

- (void)service:(id)service account:(id)account incomingResourceAtURL:(id)l metadata:(id)metadata fromID:(id)d context:(id)context
{
  v24 = *MEMORY[0x277D85DE8];
  lCopy = l;
  metadataCopy = metadata;
  v13 = qword_28144D620;
  if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
  {
    v14 = v13;
    outgoingResponseIdentifier = [context outgoingResponseIdentifier];
    serviceName = self->_serviceName;
    v18 = 138543874;
    v19 = outgoingResponseIdentifier;
    v20 = 2112;
    v21 = lCopy;
    v22 = 2114;
    v23 = serviceName;
    _os_log_impl(&dword_25B19F000, v14, OS_LOG_TYPE_DEFAULT, "#IDS received resource. (IDS Identifier: %{public}@, URL: %@, Service: %{public}@)", &v18, 0x20u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransport:self didRecieveDataAtURL:lCopy metadata:metadataCopy];
}

- (void)service:(id)service account:(id)account identifier:(id)identifier didSendWithSuccess:(BOOL)success error:(id)error
{
  if (!success)
  {
    errorCopy = error;
    identifierCopy = identifier;
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    code = [errorCopy code];

    [WeakRetained syncServiceTransport:self didFailSendingProtobufWithIdentifier:identifierCopy errorCode:code];
  }
}

- (void)service:(id)service account:(id)account identifier:(id)identifier hasBeenDeliveredWithContext:(id)context
{
  identifierCopy = identifier;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransport:self didSendProtobufSuccessfullyWithIdentifier:identifierCopy];
}

- (void)serviceSpaceDidBecomeAvailable:(id)available
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained syncServiceTransportDidReportSpaceBecameAvailable:self];
}

- (void)_handleConnectivityChange
{
  _connectivityState = [(NNMKSyncServiceIDSTransport *)self _connectivityState];
  if (_connectivityState != self->_connectivityState)
  {
    self->_connectivityState = _connectivityState;
    delegate = [(NNMKSyncServiceIDSTransport *)self delegate];
    [delegate syncServiceTransportDidChangeConnectivity:self];
  }
}

- (unint64_t)_connectivityState
{
  v31 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  devices = [(IDSService *)self->_idsService devices];
  v3 = [devices countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(devices);
        }

        v7 = *(*(&v20 + 1) + 8 * i);
        if ([v7 isDefaultPairedDevice])
        {
          v9 = __connected;
          if (v9 != [v7 isConnected] || (v10 = __nearby, v10 != objc_msgSend(v7, "isNearby")) || (v11 = __cloudConnected, v11 != objc_msgSend(v7, "isCloudConnected")))
          {
            __connected = [v7 isConnected];
            __nearby = [v7 isNearby];
            __cloudConnected = [v7 isCloudConnected];
            v12 = qword_28144D620;
            if (os_log_type_enabled(qword_28144D620, OS_LOG_TYPE_DEFAULT))
            {
              v13 = v12;
              isConnected = [v7 isConnected];
              isNearby = [v7 isNearby];
              isCloudConnected = [v7 isCloudConnected];
              *buf = 134218496;
              v25 = isConnected;
              v26 = 2048;
              v27 = isNearby;
              v28 = 2048;
              v29 = isCloudConnected;
              _os_log_impl(&dword_25B19F000, v13, OS_LOG_TYPE_DEFAULT, "#Connectivity IDS connectivity state. Connected: %lu, Nearby: %lu, Cloud Connected: %lu", buf, 0x20u);
            }
          }

          isConnected2 = [v7 isConnected];
          isNearby2 = [v7 isNearby];
          if (isConnected2)
          {
            if (isNearby2)
            {
              v8 = 2;
            }

            else if ([v7 isCloudConnected])
            {
              v8 = 4;
            }

            else
            {
              v8 = 3;
            }
          }

          else
          {
            v8 = isNearby2;
          }

          goto LABEL_22;
        }
      }

      v4 = [devices countByEnumeratingWithState:&v20 objects:v30 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v8 = 0;
LABEL_22:

  return v8;
}

- (double)_timeIntervalFromTimeoutCategory:(unint64_t)category
{
  result = 60.0;
  if (category == 1)
  {
    result = 1800.0;
  }

  if (category == 2)
  {
    return 3600.0;
  }

  return result;
}

- (NNMKSyncServiceTransportDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end