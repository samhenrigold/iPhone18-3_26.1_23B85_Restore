@interface HMDRemoteEventRouterServer
+ (id)logCategory;
- (BOOL)isErrorHMENotAcceptingConnections:(id)connections;
- (BOOL)server:(id)server shouldProcessEventsForConnection:(id)connection shouldLogState:(BOOL)state;
- (BOOL)shouldAllowEvent:(id)event topic:(id)topic connection:(id)connection;
- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)d residentModeUUID:(id)iD queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 logCategory:(const char *)self2 logEventSubmitter:(id)self3 connectionServerFactory:(id)self4;
- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)d residentModeUUID:(id)iD queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 subscriptionProvider:(id)self2 registrationEventRouter:(id)self3 storeReadHandle:(id)self4;
- (NSString)description;
- (NSUUID)messageTargetUUID;
- (NSUUID)residentModeUUID;
- (OS_dispatch_queue)messageReceiveQueue;
- (double)diagnosticLastConnectTime;
- (double)serverDebounceTimeInterval:(id)interval;
- (id)_underlyingMessageDataFromFragmentMessageData:(id)data error:(id *)error;
- (id)diagnosticInfo;
- (id)dumpStateDescription;
- (id)logIdentifier;
- (id)messageTargetForMode:(int64_t)mode;
- (id)responseHandlerForSendMessageIdentifier:(id)identifier completion:(id)completion;
- (id)server:(id)server expandedTopicsForTopics:(id)topics;
- (id)server:(id)server forwardingTopicsForTopics:(id)topics;
- (id)server:(id)server upstreamTopicsForTopic:(id)topic;
- (id)serverTimerProvider:(id)provider;
- (uint64_t)isPrimaryResident;
- (unint64_t)serverFragmentEventsDataSize:(id)size;
- (void)_handleChangeRegistrationsRequest:(id)request originalMessage:(id)message;
- (void)_handleConnectRequest:(id)request originalMessage:(id)message connectionMode:(int64_t)mode;
- (void)_handleDisconnectRequest:(id)request originalMessage:(id)message;
- (void)_handleFetchEventsRequest:(id)request originalMessage:(id)message connectionMode:(int64_t)mode;
- (void)_handleKeepAliveRequest:(id)request originalMessage:(id)message;
- (void)_handleProtoRequest:(id)request originalMessage:(id)message connectionMode:(int64_t)mode;
- (void)_handleRequestMessage:(id)message connectionMode:(int64_t)mode;
- (void)_handleUserPrivilegeChange:(id)change;
- (void)_registerForAccessoryMessages:(id)messages;
- (void)_registerForMessages:(id)messages withHome:(id)home;
- (void)configureWithHome:(id)home isPrimaryResident:(BOOL)resident isResidentEventProviding:(BOOL)providing additionalPolicies:(id)policies;
- (void)handleHomeUserRemovedNotification:(id)notification;
- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)notification;
- (void)logMetricsForLiveEvents:(id)events cachedEvents:(id)cachedEvents destinationDevice:(id)device destinationDeviceIdentifier:(id)identifier responseMessageType:(unint64_t)type;
- (void)pendingEventCollectionDidComplete:(id)complete;
- (void)refreshConnections:(id)connections;
- (void)respondToMessage:(id)message underlyingResponseData:(id)data connection:(id)connection label:(id)label;
- (void)respondToMessage:(id)message underlyingResponseData:(id)data supportsFragmentMessage:(BOOL)fragmentMessage label:(id)label;
- (void)sendMessageWithPayloadMessage:(id)message destination:(id)destination messageType:(int64_t)type completion:(id)completion;
- (void)server:(id)server connectionDidConnect:(id)connect;
- (void)server:(id)server connectionDidExpire:(id)expire;
- (void)server:(id)server connectionDidFail:(id)fail;
- (void)server:(id)server logMetricsForMessageDatagramFragmentation:(BOOL)fragmentation isFragmented:(BOOL)fragmented;
- (void)server:(id)server sendEvents:(id)events cachedEvents:(id)cachedEvents connection:(id)connection completion:(id)completion;
- (void)submitLogEvent:(id)event;
- (void)submitLogEvent:(id)event error:(id)error;
@end

@implementation HMDRemoteEventRouterServer

- (void)pendingEventCollectionDidComplete:(id)complete
{
  completeCopy = complete;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke;
  v8[3] = &unk_2797359B0;
  v8[4] = self;
  v9 = completeCopy;
  v7 = completeCopy;
  dispatch_async(Property, v8);
}

void __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke(uint64_t a1, const char *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  Property = *(a1 + 32);
  if (Property)
  {
    Property = objc_getProperty(Property, a2, 128, 1);
  }

  v5 = [Property objectForKey:*(a1 + 40)];
  if (!v5)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v30 = *(a1 + 40);
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = v30;
      v31 = "%{public}@Fetch collection completed with no connection found for collection %@";
LABEL_15:
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, v31, buf, 0x16u);
    }

LABEL_16:

    objc_autoreleasePoolPop(v26);
    goto LABEL_21;
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    v6 = objc_getProperty(v6, v4, 128, 1);
  }

  [v6 removeObjectForKey:*(a1 + 40)];
  if (([*(a1 + 40) hasEventItem] & 1) == 0)
  {
    v26 = objc_autoreleasePoolPush();
    v27 = *(a1 + 32);
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      v32 = *(a1 + 40);
      *buf = 138543618;
      v40 = v29;
      v41 = 2112;
      v42 = v32;
      v31 = "%{public}@Fetch collection completed with no items. %@";
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v7 = *(v5 + 24);
  if (v7)
  {
    v8 = objc_alloc_init(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse);
    v9 = [*(a1 + 40) popEventItemsUpWithFragments:0 toSizeInBytes:0 usedBytes:0];
    v10 = [v9 na_map:&__block_literal_global_184_71206];
    v11 = [v10 mutableCopy];
    [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)v8 setChangedEvents:v11];

    v12 = objc_autoreleasePoolPush();
    v13 = *(a1 + 32);
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      HMFGetLogIdentifier();
      v37 = v10;
      v16 = v15 = v9;
      v17 = [(HMDRemoteEventRouterProtoMultiHopFetchEventsResponse *)v8 changedEvents];
      *buf = 138543618;
      v40 = v16;
      v41 = 2048;
      v42 = [v17 count];
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Fetch collection completed with %ld items.", buf, 0x16u);

      v9 = v15;
      v10 = v37;
    }

    objc_autoreleasePoolPop(v12);
    v18 = objc_alloc_init(HMDRemoteEventRouterProtoServerMessage);
    v19 = [MEMORY[0x277CCAD78] UUID];
    v20 = [v19 UUIDString];
    [(HMDRemoteEventRouterProtoServerMessage *)v18 setIdentifier:v20];

    [(HMDRemoteEventRouterProtoServerMessage *)v18 setMultiHopFetchEventsResponse:v8];
    v21 = [HMDRemoteDeviceMessageDestination alloc];
    v22 = [*(a1 + 32) messageTargetForMode:*(v5 + 40)];
    v23 = [(HMDRemoteDeviceMessageDestination *)v21 initWithTarget:v22 device:v7];

    v24 = *(a1 + 32);
    v25 = [(HMDRemoteEventRouterProtoServerMessage *)v18 data];
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke_185;
    v38[3] = &unk_2797359D8;
    v38[4] = *(a1 + 32);
    [v24 sendMessageWithPayloadMessage:v25 destination:v23 messageType:2 completion:v38];
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 32);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v36 = HMFGetLogIdentifier();
      *buf = 138543618;
      v40 = v36;
      v41 = 2112;
      v42 = v5;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "%{public}@Device no longer available %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v33);
  }

LABEL_21:
}

void __64__HMDRemoteEventRouterServer_pendingEventCollectionDidComplete___block_invoke_185(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = v7;
    v9 = @"error : ";
    if (!v3)
    {
      v9 = @"success";
    }

    v11 = 138543874;
    v12 = v7;
    v13 = 2112;
    v14 = v9;
    if (v3)
    {
      v10 = v3;
    }

    else
    {
      v10 = &stru_286509E58;
    }

    v15 = 2112;
    v16 = v10;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Fetch collection response completed with %@%@", &v11, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (id)diagnosticInfo
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CD1D48]);
  [v3 setVersion:1];
  [v3 setConnectionState:0];
  [v3 setMode:0];
  if (fabs([(HMDRemoteEventRouterServer *)self diagnosticLastConnectTime]) >= 2.22044605e-16)
  {
    [v3 setLastConnected:-[HMDRemoteEventRouterServer diagnosticLastConnectTime](self)];
  }

  currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
  v5 = [currentConnections count];

  if (v5)
  {
    [v3 setConnectionState:1];
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [v3 setConnectedClients:v6];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    currentConnections2 = [(HMDRemoteEventRouterServer *)self currentConnections];
    v8 = [currentConnections2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v22;
      do
      {
        v11 = 0;
        do
        {
          if (*v22 != v10)
          {
            objc_enumerationMutation(currentConnections2);
          }

          v12 = *(*(&v21 + 1) + 8 * v11);
          v13 = objc_alloc_init(MEMORY[0x277CD1D40]);
          if (v12)
          {
            v14 = *(v12 + 16);
          }

          else
          {
            v14 = 0;
          }

          v15 = v14;
          uUIDString = [v15 UUIDString];
          [v13 setConnectedClientIdentifierString:uUIDString];

          connectedClients = [v3 connectedClients];
          [connectedClients addObject:v13];

          ++v11;
        }

        while (v9 != v11);
        v18 = [currentConnections2 countByEnumeratingWithState:&v21 objects:v25 count:16];
        v9 = v18;
      }

      while (v18);
    }
  }

  else
  {
    [v3 setConnectionState:2];
  }

  if ([(HMDRemoteEventRouterServer *)self isPrimaryResident])
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  [v3 setMode:v19];

  return v3;
}

- (double)diagnosticLastConnectTime
{
  if (!self)
  {
    return 0.0;
  }

  os_unfair_lock_lock_with_options();
  v2 = *(self + 24);
  os_unfair_lock_unlock((self + 16));
  return v2;
}

- (uint64_t)isPrimaryResident
{
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 20);
    os_unfair_lock_unlock((self + 16));
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

- (id)dumpStateDescription
{
  v3 = MEMORY[0x277CCACA8];
  [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  v4 = HMFBooleanToString();
  v6 = HMFBooleanToString();
  if (self)
  {
    Property = objc_getProperty(self, v5, 104, 1);
  }

  else
  {
    Property = 0;
  }

  dumpStateDescription = [Property dumpStateDescription];
  v9 = [v3 stringWithFormat:@"[HMDRemoteEventRouterServer primary: %@, resident event providing: %@, \n\t server: %@]", v4, v6, dumpStateDescription];

  return v9;
}

- (void)configureWithHome:(id)home isPrimaryResident:(BOOL)resident isResidentEventProviding:(BOOL)providing additionalPolicies:(id)policies
{
  providingCopy = providing;
  residentCopy = resident;
  v21 = *MEMORY[0x277D85DE8];
  homeCopy = home;
  policiesCopy = policies;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v13 = MEMORY[0x277CCABB0];
    v14 = logger;
    v15 = [v13 numberWithBool:residentCopy];
    v16 = [MEMORY[0x277CCABB0] numberWithBool:providingCopy];
    v17 = 138412546;
    v18 = v15;
    v19 = 2112;
    v20 = v16;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_DEFAULT, "Configuring on device isPrimaryResident. %@ isResidentEventProviding: %@", &v17, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  self->_isPrimaryResident = residentCopy;
  os_unfair_lock_unlock(&self->_lock);
  self->_isResidentEventProviding = providingCopy;
  [(HMDRemoteEventRouterServer *)self _registerForMessages:policiesCopy withHome:homeCopy];
  [(HMDRemoteEventRouterServer *)self _registerForAccessoryMessages:policiesCopy];
}

- (NSUUID)residentModeUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return self;
}

- (BOOL)shouldAllowEvent:(id)event topic:(id)topic connection:(id)connection
{
  v35 = *MEMORY[0x277D85DE8];
  topicCopy = topic;
  connectionCopy = connection;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = connectionCopy;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v32 = v10;
    v33 = 2112;
    v34 = topicCopy;
    _os_log_debug_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEBUG, "Checking access control connection: %@, topic: %@", buf, 0x16u);
  }

  os_unfair_lock_lock_with_options();
  isPrimaryResident = self->_isPrimaryResident;
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    v14 = v10[3];
    v15 = v14;
    if (v14)
    {
      productInfo = [v14 productInfo];
      productPlatform = [productInfo productPlatform];

      v18 = 1;
      if (productPlatform != 4)
      {
        v18 = 2;
      }

      v30 = v18;
      v19 = v10[2];
      v20 = [WeakRetained isDeviceIdentifierPrimaryResident:v19];

      v21 = v10[4];
      v22 = [WeakRetained routerServerUserAccessControlProviderForIdentifier:v21];

      if (v22)
      {
        if ((isPrimaryResident & 1) == 0 && ((v20 ^ 1) & 1) == 0)
        {
          isPrimaryResident = [WeakRetained canTopicBeForwardedToPrimaryFromResident:topicCopy];
        }

        identifier = [v15 identifier];
        v24 = [WeakRetained shouldAllowTopic:topicCopy forDeviceWithMessageIdentifier:identifier];

        v25 = 0;
        if (isPrimaryResident && v24)
        {
          remoteEventAccessControlProvider = [WeakRetained remoteEventAccessControlProvider];
          v25 = [remoteEventAccessControlProvider remoteEventAllowedForTopic:topicCopy deviceType:v30 userType:{objc_msgSend(v22, "allowedRemoteEventAccessUserTypes")}];
        }

        goto LABEL_26;
      }

      v28 = self->_logger;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v10;
        _os_log_error_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "Could not find user ACL provider for %@", buf, 0xCu);
      }
    }

    else
    {
      v27 = self->_logger;
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412546;
        v32 = topicCopy;
        v33 = 2112;
        v34 = connectionCopy;
        _os_log_debug_impl(&dword_2531F8000, v27, OS_LOG_TYPE_DEBUG, "No device when attempting to check access control for %@ to %@", buf, 0x16u);
      }
    }

    v25 = 0;
LABEL_26:

    goto LABEL_27;
  }

  v25 = 0;
LABEL_27:

  return v25;
}

- (void)logMetricsForLiveEvents:(id)events cachedEvents:(id)cachedEvents destinationDevice:(id)device destinationDeviceIdentifier:(id)identifier responseMessageType:(unint64_t)type
{
  identifierCopy = identifier;
  deviceCopy = device;
  [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
    [(HMDRemoteEventRouterServer *)self isDeviceIdentifierPrimaryResident:identifierCopy];
    productInfo = [deviceCopy productInfo];
    [productInfo productPlatform];
  }

  else
  {
    [0 isDeviceIdentifierPrimaryResident:identifierCopy];
  }
}

- (void)server:(id)server logMetricsForMessageDatagramFragmentation:(BOOL)fragmentation isFragmented:(BOOL)fragmented
{
  if (fragmented)
  {
    v6 = [[HMDEventRouterMessageFragmentationLogEvent alloc] initWithIsCachedEventQueue:fragmentation isFragmented:1];
    if (self)
    {
      self = objc_loadWeakRetained(&self->_logEventSubmitter);
    }

    [(HMDRemoteEventRouterServer *)self submitLogEvent:v6];
  }
}

- (void)server:(id)server sendEvents:(id)events cachedEvents:(id)cachedEvents connection:(id)connection completion:(id)completion
{
  v48 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  cachedEventsCopy = cachedEvents;
  connectionCopy = connection;
  completionCopy = completion;
  v15 = objc_alloc_init(HMDRemoteEventRouterProtoServerMessage);
  uUID = [MEMORY[0x277CCAD78] UUID];
  uUIDString = [uUID UUIDString];
  [(HMDRemoteEventRouterProtoServerMessage *)v15 setIdentifier:uUIDString];

  v18 = objc_alloc_init(HMDRemoteEventRouterProtoEventsMessage);
  [(HMDRemoteEventRouterProtoServerMessage *)v15 setUpdatedEvents:v18];

  v19 = [eventsCopy na_map:&__block_literal_global_171_71237];
  v20 = [v19 mutableCopy];
  updatedEvents = [(HMDRemoteEventRouterProtoServerMessage *)v15 updatedEvents];
  [updatedEvents setEvents:v20];

  v22 = [cachedEventsCopy na_map:&__block_literal_global_173_71238];
  v23 = [v22 mutableCopy];
  updatedEvents2 = [(HMDRemoteEventRouterProtoServerMessage *)v15 updatedEvents];
  [updatedEvents2 setCachedEvents:v23];

  v25 = connectionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    v28 = v27[3];
    if (v28)
    {
      v29 = v28;
      v30 = [HMDRemoteDeviceMessageDestination alloc];
      v31 = [(HMDRemoteEventRouterServer *)self messageTargetForMode:v27[5]];
      v32 = [(HMDRemoteDeviceMessageDestination *)v30 initWithTarget:v31 device:v29];

      if (v32)
      {
        v33 = v27[2];
        [(HMDRemoteEventRouterServer *)self logMetricsForLiveEvents:eventsCopy cachedEvents:cachedEventsCopy destinationDevice:v29 destinationDeviceIdentifier:v33 responseMessageType:4];

        logger = self->_logger;
        v45 = eventsCopy;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
        {
          v35 = MEMORY[0x277CCABB0];
          v36 = logger;
          data = [(HMDRemoteEventRouterProtoServerMessage *)v15 data];
          v37 = [v35 numberWithUnsignedInteger:{objc_msgSend(data, "length")}];
          *buf = 138412290;
          v47 = v37;
          _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_DEFAULT, "Sending events of size: %@", buf, 0xCu);

          eventsCopy = v45;
          logger = self->_logger;
        }

        if (os_log_type_enabled(logger, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v47 = eventsCopy;
          _os_log_debug_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEBUG, "Sending events: %@", buf, 0xCu);
        }

        data2 = [(HMDRemoteEventRouterProtoServerMessage *)v15 data];
        [(HMDRemoteEventRouterServer *)self sendMessageWithPayloadMessage:data2 destination:v32 messageType:1 completion:completionCopy];

        eventsCopy = v45;
      }

      else
      {
        v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        completionCopy[2](completionCopy, v42);

        v43 = self->_logger;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "Could not create destination", buf, 2u);
        }
      }
    }

    else
    {
      v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      completionCopy[2](completionCopy, v40);

      v41 = self->_logger;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v47 = v25;
        _os_log_error_impl(&dword_2531F8000, v41, OS_LOG_TYPE_ERROR, "Device no longer available %@", buf, 0xCu);
      }

      v29 = 0;
    }
  }

  else
  {
    v39 = self->_logger;
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v47 = v25;
      _os_log_error_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "Could not find remote connection for connection %@", buf, 0xCu);
    }

    v29 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    completionCopy[2](completionCopy, v29);
  }
}

- (void)server:(id)server connectionDidFail:(id)fail
{
  v10 = *MEMORY[0x277D85DE8];
  failCopy = fail;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = failCopy;
    _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Removing connection on error %@", &v8, 0xCu);
  }

  currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
  [currentConnections removeObject:failCopy];
}

- (void)server:(id)server connectionDidExpire:(id)expire
{
  v10 = *MEMORY[0x277D85DE8];
  expireCopy = expire;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
  {
    v8 = 138412290;
    v9 = expireCopy;
    _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Removing connection on expiry %@", &v8, 0xCu);
  }

  currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
  [currentConnections removeObject:expireCopy];
}

- (void)server:(id)server connectionDidConnect:(id)connect
{
  v26 = *MEMORY[0x277D85DE8];
  connectCopy = connect;
  date = [MEMORY[0x277CBEAA8] date];
  [date timeIntervalSince1970];
  if (self)
  {
    v8 = v7;
    os_unfair_lock_lock_with_options();
    self->_diagnosticLastConnectTime = v8;
    os_unfair_lock_unlock(&self->_lock);
  }

  if ([(HMDRemoteEventRouterServer *)self isPrimaryResident])
  {
    v9 = connectCopy;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11)
    {
      v12 = v11[3];
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;

    deviceAddress = [v13 deviceAddress];
    idsIdentifier = [deviceAddress idsIdentifier];

    if (idsIdentifier)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v25 = idsIdentifier;
        _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Notifying on connecting to primary %@", buf, 0xCu);
      }

      Property = objc_getProperty(self, v17, 88, 1);
      v22 = @"idsIdentifier";
      v23 = idsIdentifier;
      v19 = MEMORY[0x277CBEAC0];
      v20 = Property;
      v21 = [v19 dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      [v20 postNotificationName:@"RemoteEventRouterServerDidReceiveConnectionToPrimary" object:self userInfo:{v21, v22, v23}];
    }
  }
}

- (unint64_t)serverFragmentEventsDataSize:(id)size
{
  if (_os_feature_enabled_impl())
  {
    return 0x80000;
  }

  else
  {
    return 0;
  }
}

- (id)serverTimerProvider:(id)provider
{
  if (self)
  {
    self = objc_getProperty(self, a2, 96, 1);
    v3 = vars8;
  }

  return self;
}

- (double)serverDebounceTimeInterval:(id)interval
{
  isPrimaryResident = [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  result = 0.5;
  if (isPrimaryResident)
  {
    return 5.0;
  }

  return result;
}

- (BOOL)server:(id)server shouldProcessEventsForConnection:(id)connection shouldLogState:(BOOL)state
{
  stateCopy = state;
  v42 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  connectionCopy = connection;
  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (!stateCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
    WeakRetained = 0;
    if (!stateCopy)
    {
      goto LABEL_5;
    }
  }

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v34 = 138412546;
    v35 = connectionCopy;
    v36 = 2112;
    v37 = WeakRetained;
    _os_log_impl(&dword_2531F8000, logger, OS_LOG_TYPE_DEFAULT, "Checking if server should process events for connection: %@, dataSource: %@", &v34, 0x16u);
  }

LABEL_5:
  v14 = connectionCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  if (!v16)
  {
    goto LABEL_14;
  }

  isa = v16[5].isa;
  if (isa == 1)
  {
    v20 = v16[3].isa;
    if (v20)
    {
      v22 = v16[2].isa;
      v23 = [(objc_class *)WeakRetained isDeviceIdentifierPrimaryResident:v22];

      if (![(HMDRemoteEventRouterServer *)self isPrimaryResident]|| !v23)
      {
        if (self)
        {
          isPrimaryResident = self->_isResidentEventProviding & v23;
          if (!stateCopy)
          {
            goto LABEL_30;
          }
        }

        else
        {
          isPrimaryResident = 0;
          if (!stateCopy)
          {
            goto LABEL_30;
          }
        }

        v29 = self->_logger;
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          v21 = v29;
          v30 = HMFBooleanToString();
          v31 = HMFBooleanToString();
          v32 = v16[2].isa;
          v34 = 138544130;
          v35 = v30;
          v36 = 2114;
          v37 = v31;
          v38 = 2112;
          v39 = v32;
          v40 = 2112;
          v41 = v20;
          _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "Allow connection: %{public}@, for resident connection mode. isReceiverPrimary: %{public}@, incoming device:%@, primary device: %@", &v34, 0x2Au);

          goto LABEL_29;
        }

LABEL_30:

        goto LABEL_31;
      }

      if (stateCopy)
      {
        v24 = self->_logger;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = v24;
          v26 = HMFBooleanToString();
          v27 = v16[2].isa;
          v34 = 138543874;
          v35 = v26;
          v36 = 2112;
          v37 = v27;
          v38 = 2112;
          v39 = v20;
          _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "Not allowing connection while both devices are known as primary, this should resolve shortly. isReceiverPrimary: %{public}@, incoming device:%@, primary device: %@", &v34, 0x20u);

LABEL_23:
        }
      }
    }

    else
    {
      v28 = self->_logger;
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v25 = v28;
        v26 = v16[2].isa;
        v34 = 138412290;
        v35 = v26;
        _os_log_error_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "Unexpectedly did not find device for resident. %@", &v34, 0xCu);
        goto LABEL_23;
      }
    }

    isPrimaryResident = 0;
    goto LABEL_30;
  }

  if (isa)
  {
LABEL_14:
    isPrimaryResident = 0;
    goto LABEL_31;
  }

  isPrimaryResident = [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  if (stateCopy)
  {
    v19 = self->_logger;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      v21 = HMFBooleanToString();
      v34 = 138543362;
      v35 = v21;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "Allow connection: %{public}@, for primary connection mode.", &v34, 0xCu);
LABEL_29:

      goto LABEL_30;
    }
  }

LABEL_31:

  return isPrimaryResident & 1;
}

- (id)server:(id)server forwardingTopicsForTopics:(id)topics
{
  topicsCopy = topics;
  if (self)
  {
    Property = objc_getProperty(self, v5, 40, 1);
  }

  else
  {
    Property = 0;
  }

  v8 = [HMDHomeEventsGenerated forwardingTopicsWithTopics:topicsCopy forHomeRouterWithUUID:Property];

  return v8;
}

- (id)server:(id)server expandedTopicsForTopics:(id)topics
{
  topicsCopy = topics;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_dataSource);
  }

  v6 = [(HMDRemoteEventRouterServer *)self expandedTopicsWithTopics:topicsCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = v8;

  return v8;
}

- (id)server:(id)server upstreamTopicsForTopic:(id)topic
{
  topicCopy = topic;
  if ([(HMDRemoteEventRouterServer *)self isPrimaryResident])
  {
    v7 = [HMDHomeEventsGenerated upstreamTopicsForTopic:topicCopy];
  }

  else
  {
    if (self)
    {
      v8 = objc_getProperty(self, v6, 40, 1);
      Property = objc_getProperty(self, v9, 48, 1);
    }

    else
    {
      v8 = 0;
      Property = 0;
    }

    v7 = [HMDHomeEventsGenerated upstreamHomeAndAccessoryTopicsForTopic:topicCopy homeUUID:v8 accessoryUUID:Property];
  }

  return v7;
}

- (id)responseHandlerForSendMessageIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke;
  v12[3] = &unk_279731AF8;
  objc_copyWeak(&v15, &location);
  v13 = identifierCopy;
  v14 = completionCopy;
  v8 = completionCopy;
  v9 = identifierCopy;
  v10 = _Block_copy(v12);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);

  return v10;
}

void __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v6 = WeakRetained;
  if (WeakRetained)
  {
    Property = objc_getProperty(WeakRetained, v5, 32, 1);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke_2;
    v8[3] = &unk_279734578;
    v9 = v3;
    v10 = v6;
    v11 = a1[4];
    v12 = a1[5];
    dispatch_async(Property, v8);
  }
}

uint64_t __81__HMDRemoteEventRouterServer_responseHandlerForSendMessageIdentifier_completion___block_invoke_2(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = *(a1[5] + 8);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v4 = a1[6];
      v7 = 138412546;
      v8 = v4;
      v9 = 2112;
      v10 = v2;
      _os_log_error_impl(&dword_2531F8000, v3, OS_LOG_TYPE_ERROR, "Failed to send message: %@ error: %@", &v7, 0x16u);
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[6];
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2531F8000, v3, OS_LOG_TYPE_DEFAULT, "Successfully sent message: %@", &v7, 0xCu);
  }

  result = a1[7];
  if (result)
  {
    return (*(result + 16))(result, a1[4]);
  }

  return result;
}

- (void)sendMessageWithPayloadMessage:(id)message destination:(id)destination messageType:(int64_t)type completion:(id)completion
{
  v27[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  completionCopy = completion;
  destinationCopy = destination;
  isPrimaryResident = [(HMDRemoteEventRouterServer *)self isPrimaryResident];
  if (type == 2)
  {
    if (self)
    {
      v15 = 72;
      goto LABEL_7;
    }

LABEL_17:
    Property = 0;
    goto LABEL_8;
  }

  if (type == 1)
  {
    if (self)
    {
      v15 = 64;
LABEL_7:
      Property = objc_getProperty(self, v13, v15, 1);
LABEL_8:
      v17 = Property;
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  v17 = 0;
LABEL_10:
  if (isPrimaryResident)
  {
    v18 = -1;
  }

  else
  {
    v18 = 8;
  }

  v26 = @"message.payload";
  v19 = objc_msgSend_copy(messageCopy);
  v27[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
  v21 = [HMDRemoteMessage secureMessageWithName:v17 qualityOfService:-1 destination:destinationCopy messagePayload:v20 timeout:v18 restriction:150.0];

  identifier = [v21 identifier];
  v23 = [(HMDRemoteEventRouterServer *)self responseHandlerForSendMessageIdentifier:identifier completion:completionCopy];

  [v21 setResponseHandler:v23];
  if (self)
  {
    v25 = objc_getProperty(self, v24, 80, 1);
  }

  else
  {
    v25 = 0;
  }

  [v25 sendMessage:v21];
}

- (void)submitLogEvent:(id)event
{
  eventCopy = event;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_logEventSubmitter);
  }

  [(HMDRemoteEventRouterServer *)self submitLogEvent:eventCopy];
}

- (void)submitLogEvent:(id)event error:(id)error
{
  eventCopy = event;
  errorCopy = error;
  if (self)
  {
    self = objc_loadWeakRetained(&self->_logEventSubmitter);
  }

  [(HMDRemoteEventRouterServer *)self submitLogEvent:eventCopy error:errorCopy];
}

- (void)_handleFetchEventsRequest:(id)request originalMessage:(id)message connectionMode:(int64_t)mode
{
  requestCopy = request;
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (requestCopy)
  {
    remoteSourceDevice = [messageCopy remoteSourceDevice];
    identifier = [remoteSourceDevice identifier];
    v14 = identifier;
    if (remoteSourceDevice && identifier)
    {
      if (self && self->_isResidentEventProviding)
      {
        WeakRetained = objc_loadWeakRetained(&self->_dataSource);
        v16 = [WeakRetained routerServerUserAccessControlProviderIdentifierForMessage:messageCopy];
        if (v16 && ([WeakRetained routerServerUserAccessControlProviderForIdentifier:v16], (v17 = objc_claimAutoreleasedReturnValue()) != 0))
        {
          v18 = v17;
          v49 = -[HMDRemoteEventRouterServerConnection initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:]([HMDRemoteEventRouterServerConnection alloc], "initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:", remoteSourceDevice, mode, [messageCopy BOOLForKey:@"isFragmented"], v16);
          topics = [requestCopy topics];
          v20 = [topics count];

          if (v20)
          {
            v47 = v18;
            topics2 = [requestCopy topics];
            v51[0] = MEMORY[0x277D85DD0];
            v51[1] = 3221225472;
            v51[2] = __87__HMDRemoteEventRouterServer__handleFetchEventsRequest_originalMessage_connectionMode___block_invoke;
            v51[3] = &unk_2797287A8;
            v51[4] = self;
            v22 = [topics2 na_map:v51];

            v23 = objc_alloc_init(MEMORY[0x277D174E8]);
            [v23 setDelegate:self];
            v25 = objc_getProperty(self, v24, 104, 1);
            v50 = 0;
            v48 = v22;
            LOBYTE(v22) = [v25 fetchCachedEventsForTopics:v22 isMultiHop:objc_msgSend(requestCopy connection:"fetchType") == 1 cachedEventCollection:v49 error:{v23, &v50}];

            v26 = v50;
            v27 = v26;
            if (v22)
            {
              v45 = v26;
              isFinishedAddingItems = [v23 isFinishedAddingItems];
              v46 = v23;
              v28 = [v23 popEventItemsUpWithFragments:0 toSizeInBytes:0 usedBytes:0];
              v29 = [v28 na_map:&__block_literal_global_157_71270];
              [(HMDRemoteEventRouterServer *)self logMetricsForLiveEvents:MEMORY[0x277CBEBF8] cachedEvents:v28 destinationDevice:remoteSourceDevice destinationDeviceIdentifier:v14 responseMessageType:1];
              v30 = objc_alloc_init(HMDRemoteEventRouterProtoFetchEventsResponse);
              v44 = v29;
              v31 = [v29 mutableCopy];
              [(HMDRemoteEventRouterProtoFetchEventsResponse *)v30 setChangedEvents:v31];

              data = [(HMDRemoteEventRouterProtoFetchEventsResponse *)v30 data];
              [(HMDRemoteEventRouterServer *)self respondToMessage:messageCopy underlyingResponseData:data supportsFragmentMessage:0 label:@"FetchEvents"];

              v34 = v49;
              if ((isFinishedAddingItems & 1) == 0)
              {
                [objc_getProperty(self v33];
              }

              v27 = v45;
              v23 = v46;
            }

            else
            {
              if (!v26)
              {
                v27 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
              }

              [messageCopy respondWithError:v27];
              v34 = v49;
            }

            v18 = v47;
          }

          else
          {
            v34 = v49;
            logger = self->_logger;
            if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Got a fetch request with no topics.", buf, 2u);
            }

            v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            [messageCopy respondWithError:v42];
          }
        }

        else
        {
          v40 = self->_logger;
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "Could not find user for incoming request.", buf, 2u);
          }

          v18 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          [messageCopy respondWithError:v18];
        }

        goto LABEL_37;
      }

      v39 = self->_logger;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v39, OS_LOG_TYPE_ERROR, "Could not process fetch as non-resident event providing device.", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = 48;
    }

    else
    {
      v36 = self->_logger;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v36, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v37 = MEMORY[0x277CCA9B8];
      v38 = 2;
    }

    WeakRetained = [v37 hmErrorWithCode:v38];
    [messageCopy respondWithError:WeakRetained];
LABEL_37:

    goto LABEL_38;
  }

  v35 = self->_logger;
  if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2531F8000, v35, OS_LOG_TYPE_ERROR, "Did not find fetch request in payload.", buf, 2u);
  }

  remoteSourceDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [messageCopy respondWithError:remoteSourceDevice];
LABEL_38:
}

id __87__HMDRemoteEventRouterServer__handleFetchEventsRequest_originalMessage_connectionMode___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 hasTopic] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v9 = 0;
      _os_log_error_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "No topic found!", v9, 2u);
    }
  }

  v5 = MEMORY[0x277D0F888];
  v6 = [v3 topic];
  v7 = [v5 hmf_cachedInstanceForString:v6];

  return v7;
}

- (void)_handleKeepAliveRequest:(id)request originalMessage:(id)message
{
  v31 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messageCopy = message;
  v8 = messageCopy;
  if (requestCopy)
  {
    remoteSourceDevice = [messageCopy remoteSourceDevice];
    identifier = [remoteSourceDevice identifier];
    v11 = identifier;
    if (remoteSourceDevice && identifier)
    {
      currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke;
      v25[3] = &unk_2797286A0;
      v13 = v11;
      v26 = v13;
      v14 = [currentConnections na_firstObjectPassingTest:v25];

      if (v14)
      {
        if (self)
        {
          self = objc_getProperty(self, v15, 104, 1);
        }

        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke_151;
        v23[3] = &unk_2797359D8;
        v24 = v8;
        [(HMDRemoteEventRouterServer *)self keepAliveConnection:v14 completion:v23];
        v16 = v24;
      }

      else
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          v21 = logger;
          currentConnections2 = [(HMDRemoteEventRouterServer *)self currentConnections];
          *buf = 138412546;
          v28 = currentConnections2;
          v29 = 2112;
          v30 = v13;
          _os_log_error_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "No connection was found for keep alive request in current connections: %@ device identifier: %@", buf, 0x16u);
        }

        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v8 respondWithError:v16];
      }

      v19 = v26;
    }

    else
    {
      v18 = self->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v8 respondWithError:v19];
    }
  }

  else
  {
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "Did not keep-alive request in payload.", buf, 2u);
    }

    remoteSourceDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v8 respondWithError:remoteSourceDevice];
  }
}

uint64_t __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

uint64_t __70__HMDRemoteEventRouterServer__handleKeepAliveRequest_originalMessage___block_invoke_151(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    return [v2 respondWithError:a2];
  }

  else
  {
    return [v2 respondWithSuccess];
  }
}

- (void)_handleChangeRegistrationsRequest:(id)request originalMessage:(id)message
{
  v42 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messageCopy = message;
  v8 = messageCopy;
  if (requestCopy)
  {
    remoteSourceDevice = [messageCopy remoteSourceDevice];
    identifier = [remoteSourceDevice identifier];
    v11 = identifier;
    if (remoteSourceDevice && identifier)
    {
      currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke;
      v36[3] = &unk_2797286A0;
      v13 = v11;
      v37 = v13;
      v14 = [currentConnections na_firstObjectPassingTest:v36];

      if (v14)
      {
        v29 = v13;
        if (self)
        {
          Property = objc_getProperty(self, v15, 104, 1);
        }

        else
        {
          Property = 0;
        }

        v17 = Property;
        topicFilterAdditions = [requestCopy topicFilterAdditions];
        v18 = [topicFilterAdditions na_map:&__block_literal_global_140_71286];
        topicFilterRemovals = [requestCopy topicFilterRemovals];
        v20 = [topicFilterRemovals na_map:&__block_literal_global_142];
        v30[0] = MEMORY[0x277D85DD0];
        v30[1] = 3221225472;
        v30[2] = __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke_3;
        v30[3] = &unk_279728780;
        v31 = v14;
        selfCopy = self;
        v33 = v8;
        v34 = remoteSourceDevice;
        v35 = v29;
        [v17 changeRegistrationsForConnection:v31 topicFilterAdditions:v18 topicFilterRemovals:v20 completion:v30];

        v21 = v31;
      }

      else
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          v26 = logger;
          currentConnections2 = [(HMDRemoteEventRouterServer *)self currentConnections];
          *buf = 138412546;
          v39 = currentConnections2;
          v40 = 2112;
          v41 = v13;
          _os_log_error_impl(&dword_2531F8000, v26, OS_LOG_TYPE_ERROR, "No connection was found during change registrations request in current connections: %@ device identifier: %@", buf, 0x16u);
        }

        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [v8 respondWithError:v21];
      }

      v24 = v37;
    }

    else
    {
      v23 = self->_logger;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [v8 respondWithError:v24];
    }
  }

  else
  {
    v22 = self->_logger;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v22, OS_LOG_TYPE_ERROR, "Did not change registrations request in payload.", buf, 2u);
    }

    remoteSourceDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [v8 respondWithError:remoteSourceDevice];
  }
}

uint64_t __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

void __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v8 = *(a1 + 32);
    if ((!v8 || !*(v8 + 40)) && [*(a1 + 40) isErrorHMENotAcceptingConnections:v7])
    {
      v9 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];

      v7 = v9;
    }

    [*(a1 + 48) respondWithError:v7];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = [v18 na_map:&__block_literal_global_144];
    v12 = [v11 na_map:&__block_literal_global_146_71287];
    [*(a1 + 40) logMetricsForLiveEvents:MEMORY[0x277CBEBF8] cachedEvents:v11 destinationDevice:*(a1 + 56) destinationDeviceIdentifier:*(a1 + 64) responseMessageType:3];
    v13 = objc_alloc_init(HMDRemoteEventRouterProtoChangeRegistrationsResponse);
    v14 = [v12 mutableCopy];
    [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v13 setCachedEvents:v14];

    v15 = *(a1 + 40);
    v16 = *(a1 + 48);
    v17 = [(HMDRemoteEventRouterProtoChangeRegistrationsResponse *)v13 data];
    [v15 respondToMessage:v16 underlyingResponseData:v17 connection:*(a1 + 32) label:@"ChangeRegistration"];

    objc_autoreleasePoolPop(v10);
  }
}

id __80__HMDRemoteEventRouterServer__handleChangeRegistrationsRequest_originalMessage___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  return v7;
}

- (void)_handleDisconnectRequest:(id)request originalMessage:(id)message
{
  requestCopy = request;
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v7, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  if (requestCopy)
  {
    remoteSourceDevice = [messageCopy remoteSourceDevice];
    identifier = [remoteSourceDevice identifier];
    v12 = identifier;
    if (remoteSourceDevice && identifier)
    {
      currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __71__HMDRemoteEventRouterServer__handleDisconnectRequest_originalMessage___block_invoke;
      v22[3] = &unk_2797286A0;
      v23 = v12;
      v14 = [currentConnections na_firstObjectPassingTest:v22];

      if (v14)
      {
        if (self)
        {
          v16 = objc_getProperty(self, v15, 104, 1);
        }

        else
        {
          v16 = 0;
        }

        [v16 disconnectConnection:v14];
        [messageCopy respondWithSuccess];
      }

      else
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "No connection was found to disconnect.", buf, 2u);
        }

        v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v21];
      }

      v19 = v23;
    }

    else
    {
      v18 = self->_logger;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
      }

      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      [messageCopy respondWithError:v19];
    }
  }

  else
  {
    v17 = self->_logger;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "Did not find disconnect request in payload.", buf, 2u);
    }

    remoteSourceDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:remoteSourceDevice];
  }
}

uint64_t __71__HMDRemoteEventRouterServer__handleDisconnectRequest_originalMessage___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

- (void)refreshConnections:(id)connections
{
  v20 = *MEMORY[0x277D85DE8];
  connectionsCopy = connections;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  dispatch_assert_queue_V2(Property);
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    v17 = v10;
    v18 = 2112;
    v19 = connectionsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Refresh connections for user:%@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  currentConnections = [(HMDRemoteEventRouterServer *)selfCopy currentConnections];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __49__HMDRemoteEventRouterServer_refreshConnections___block_invoke;
  v13[3] = &unk_279728758;
  v14 = connectionsCopy;
  v15 = selfCopy;
  v12 = connectionsCopy;
  [currentConnections na_each:v13];
}

void __49__HMDRemoteEventRouterServer_refreshConnections___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (v3)
  {
    v4 = v3[4];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  if (HMFEqualObjects())
  {
    Property = *(a1 + 40);
    if (Property)
    {
      Property = objc_getProperty(Property, v6, 104, 1);
    }

    [Property refreshConnection:v8];
  }
}

- (void)_handleConnectRequest:(id)request originalMessage:(id)message connectionMode:(int64_t)mode
{
  v62 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  messageCopy = message;
  if (self)
  {
    Property = objc_getProperty(self, v9, 32, 1);
    dispatch_assert_queue_V2(Property);
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
    if (requestCopy)
    {
LABEL_3:
      remoteSourceDevice = [messageCopy remoteSourceDevice];
      identifier = [remoteSourceDevice identifier];
      v15 = identifier;
      if (!remoteSourceDevice || !identifier)
      {
        logger = self->_logger;
        if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Could not find device of incoming request.", buf, 2u);
        }

        v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v16];
        goto LABEL_38;
      }

      v16 = [WeakRetained routerServerUserAccessControlProviderIdentifierForMessage:messageCopy];
      if (!v16)
      {
        v24 = self->_logger;
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "Could not find user for incoming request.", buf, 2u);
        }

        v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        [messageCopy respondWithError:v25];
        goto LABEL_37;
      }

      currentConnections = [(HMDRemoteEventRouterServer *)self currentConnections];
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke;
      v58[3] = &unk_2797286A0;
      v49 = v15;
      v59 = v49;
      v18 = [currentConnections na_firstObjectPassingTest:v58];

      v50 = v15;
      v51 = WeakRetained;
      if (v18)
      {
        if (v18->_connectionMode == mode)
        {
LABEL_26:
          if ([requestCopy hasConnectEvent])
          {
            v31 = MEMORY[0x277D174A8];
            connectEvent = [requestCopy connectEvent];
            v48 = [v31 fromProtobuff:connectEvent];
          }

          else
          {
            v48 = 0;
          }

          if ([requestCopy hasUnregisterEvent])
          {
            v33 = MEMORY[0x277D174A8];
            unregisterEvent = [requestCopy unregisterEvent];
            v46 = [v33 fromProtobuff:unregisterEvent];
          }

          else
          {
            v46 = 0;
          }

          array = [MEMORY[0x277CBEB18] array];
          topicFilterAdditions = [requestCopy topicFilterAdditions];
          v37 = [topicFilterAdditions count];

          if (v37)
          {
            topicFilterAdditions2 = [requestCopy topicFilterAdditions];
            v40 = [topicFilterAdditions2 na_map:&__block_literal_global_125];
            [array addObjectsFromArray:v40];
          }

          if (self)
          {
            v41 = objc_getProperty(self, v38, 104, 1);
          }

          else
          {
            v41 = 0;
          }

          v42 = v41;
          v43 = objc_msgSend_copy(array);
          v52[0] = MEMORY[0x277D85DD0];
          v52[1] = 3221225472;
          v52[2] = __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke_2;
          v52[3] = &unk_279728730;
          modeCopy = mode;
          v52[4] = self;
          v53 = messageCopy;
          v54 = remoteSourceDevice;
          v55 = v49;
          v56 = v18;
          v44 = v18;
          [v42 connectWithConnection:v44 connectEvent:v48 unregisterEvent:v47 topicFilterAdditions:v43 completion:v52];

          v25 = v59;
          v15 = v50;
          WeakRetained = v51;
LABEL_37:

LABEL_38:
          goto LABEL_43;
        }

        v19 = self->_logger;
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v61 = v18;
          _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_DEFAULT, "Connection mode is different remove existing %@", buf, 0xCu);
        }

        currentConnections2 = [(HMDRemoteEventRouterServer *)self currentConnections];
        [currentConnections2 removeObject:v18];
      }

      v18 = -[HMDRemoteEventRouterServerConnection initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:]([HMDRemoteEventRouterServerConnection alloc], "initWithDevice:connectionMode:supportsFragmentMessage:userAccessControlProviderUUID:", remoteSourceDevice, mode, [messageCopy BOOLForKey:@"isFragmented"], v16);
      if (mode == 1)
      {
        v21 = self->_logger;
        if (!os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_24;
        }

        *buf = 138412290;
        v61 = v18;
        v22 = "Created resident connection %@";
      }

      else
      {
        if (mode || (v21 = self->_logger, !os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT)))
        {
LABEL_24:
          currentConnections3 = [(HMDRemoteEventRouterServer *)self currentConnections];
          [currentConnections3 addObject:v18];

          v27 = self->_logger;
          if (os_signpost_enabled(v27))
          {
            v28 = MEMORY[0x277CCABB0];
            v29 = v27;
            v30 = [v28 numberWithInteger:mode];
            *buf = 138412290;
            v61 = v30;
            _os_signpost_emit_with_name_impl(&dword_2531F8000, v29, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "EventRouterServerConnectionCreated", "connectionMode=%{signpost.description:attribute}@ ", buf, 0xCu);
          }

          goto LABEL_26;
        }

        *buf = 138412290;
        v61 = v18;
        v22 = "Created primary client connection %@";
      }

      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      goto LABEL_24;
    }
  }

  else
  {
    dispatch_assert_queue_V2(0);
    WeakRetained = 0;
    if (requestCopy)
    {
      goto LABEL_3;
    }
  }

  v45 = self->_logger;
  if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2531F8000, v45, OS_LOG_TYPE_ERROR, "Did not find connect request in payload.", buf, 2u);
  }

  remoteSourceDevice = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  [messageCopy respondWithError:remoteSourceDevice];
LABEL_43:
}

uint64_t __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 16);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [v4 hmf_isEqualToUUID:*(a1 + 32)];

  return v5;
}

void __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    if (!*(a1 + 72) && [*(a1 + 32) isErrorHMENotAcceptingConnections:v7])
    {
      v8 = [MEMORY[0x277CCA9B8] hmInternalErrorWithCode:3202];

      v7 = v8;
    }

    [*(a1 + 40) respondWithError:v7];
  }

  else
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v17 na_map:&__block_literal_global_129];
    v11 = [v10 na_map:&__block_literal_global_132_71309];
    [*(a1 + 32) logMetricsForLiveEvents:MEMORY[0x277CBEBF8] cachedEvents:v10 destinationDevice:*(a1 + 48) destinationDeviceIdentifier:*(a1 + 56) responseMessageType:2];
    v12 = objc_alloc_init(HMDRemoteEventRouterProtoConnectResponse);
    v13 = [v11 mutableCopy];
    [(HMDRemoteEventRouterProtoConnectResponse *)v12 setCachedEvents:v13];

    v14 = *(a1 + 32);
    v15 = *(a1 + 40);
    v16 = [(HMDRemoteEventRouterProtoConnectResponse *)v12 data];
    [v14 respondToMessage:v15 underlyingResponseData:v16 connection:*(a1 + 64) label:@"ConnectResponse"];

    objc_autoreleasePoolPop(v9);
  }
}

id __83__HMDRemoteEventRouterServer__handleConnectRequest_originalMessage_connectionMode___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277D174A8];
  v5 = a3;
  v6 = a2;
  v7 = [[v4 alloc] initWithEvent:v5 topic:v6];

  return v7;
}

- (id)_underlyingMessageDataFromFragmentMessageData:(id)data error:(id *)error
{
  dataCopy = data;
  v7 = [[HMDRemoteEventRouterProtoFragmentedMessage alloc] initWithData:dataCopy];
  v8 = v7;
  if (v7)
  {
    if ([(HMDRemoteEventRouterProtoFragmentedMessage *)v7 fragmentNumber]|| [(HMDRemoteEventRouterProtoFragmentedMessage *)v8 totalFragments]!= 1)
    {
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Cannot decode fragmented data yet.", v13, 2u);
      }

      [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      *error = fragmentData = 0;
    }

    else
    {
      v9 = objc_autoreleasePoolPush();
      fragmentData = [(HMDRemoteEventRouterProtoFragmentedMessage *)v8 fragmentData];
      objc_autoreleasePoolPop(v9);
    }
  }

  else
  {
    fragmentData = 0;
  }

  return fragmentData;
}

- (void)_handleProtoRequest:(id)request originalMessage:(id)message connectionMode:(int64_t)mode
{
  requestCopy = request;
  messageCopy = message;
  request = [requestCopy request];
  if (request > 2)
  {
    if (request == 3)
    {
      keepAlive = [requestCopy keepAlive];
      [(HMDRemoteEventRouterServer *)self _handleKeepAliveRequest:keepAlive originalMessage:messageCopy];
      goto LABEL_21;
    }

    if (request == 4)
    {
      keepAlive = [requestCopy disconnect];
      [(HMDRemoteEventRouterServer *)self _handleDisconnectRequest:keepAlive originalMessage:messageCopy];
      goto LABEL_21;
    }

    if (request != 5)
    {
      goto LABEL_14;
    }

    fetchEvents = [requestCopy fetchEvents];
    [(HMDRemoteEventRouterServer *)self _handleFetchEventsRequest:fetchEvents originalMessage:messageCopy connectionMode:mode];
LABEL_19:

    goto LABEL_22;
  }

  switch(request)
  {
    case 0:
      logger = self->_logger;
      if (os_log_type_enabled(logger, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2531F8000, logger, OS_LOG_TYPE_ERROR, "Unable to find request type.", buf, 2u);
      }

      v14 = MEMORY[0x277CCA9B8];
      v15 = 3;
      goto LABEL_17;
    case 1:
      fetchEvents = [requestCopy connect];
      [(HMDRemoteEventRouterServer *)self _handleConnectRequest:fetchEvents originalMessage:messageCopy connectionMode:mode];
      goto LABEL_19;
    case 2:
      keepAlive = [requestCopy changeRegistrations];
      [(HMDRemoteEventRouterServer *)self _handleChangeRegistrationsRequest:keepAlive originalMessage:messageCopy];
LABEL_21:

      goto LABEL_22;
  }

LABEL_14:
  v16 = self->_logger;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v18 = 0;
    _os_log_error_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "Received an unrecognized request type.", v18, 2u);
  }

  v14 = MEMORY[0x277CCA9B8];
  v15 = -1;
LABEL_17:
  v17 = [v14 hmErrorWithCode:v15];
  [messageCopy respondWithError:v17];

LABEL_22:
}

- (void)_handleRequestMessage:(id)message connectionMode:(int64_t)mode
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_INFO))
  {
    v8 = logger;
    identifier = [messageCopy identifier];
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:mode];
    *buf = 138412546;
    v24 = identifier;
    v25 = 2112;
    v26 = v10;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "Handle request message: %@ connection mode: %@", buf, 0x16u);
  }

  v11 = [messageCopy BOOLForKey:@"isFragmented"];
  v12 = [messageCopy dataForKey:@"message.payload"];
  if (!v12)
  {
    v16 = self->_logger;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "Did not find message payload.", buf, 2u);
    }

    v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:27];
    goto LABEL_23;
  }

  v13 = v12;
  if (!v11)
  {
    v15 = v12;
    goto LABEL_11;
  }

  v22 = 0;
  v14 = [(HMDRemoteEventRouterServer *)self _underlyingMessageDataFromFragmentMessageData:v12 error:&v22];
  v15 = v22;

  if (!v14)
  {
    if (!v15)
    {
      v20 = self->_logger;
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_DEFAULT, "No payload from fragment message", buf, 2u);
      }

      v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    }

    v21 = self->_logger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v15;
      _os_log_error_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "Could not decode payload from fragment message %@", buf, 0xCu);
    }

LABEL_23:
    [messageCopy respondWithError:v15];
    goto LABEL_24;
  }

  v15 = v14;
LABEL_11:
  v17 = [[HMDRemoteEventRouterProtoMessage alloc] initWithData:v15];
  if ([(HMDRemoteEventRouterProtoMessage *)v17 hasRequest])
  {
    [(HMDRemoteEventRouterServer *)self _handleProtoRequest:v17 originalMessage:messageCopy connectionMode:mode];
  }

  else
  {
    v18 = self->_logger;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "Decoded payload does not have request.", buf, 2u);
    }

    v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v19];
  }

LABEL_24:
}

- (void)_handleUserPrivilegeChange:(id)change
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:@"kUserUUIDKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    if (self)
    {
      Property = objc_getProperty(self, v9, 32, 1);
    }

    else
    {
      Property = 0;
    }

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __57__HMDRemoteEventRouterServer__handleUserPrivilegeChange___block_invoke;
    v15[3] = &unk_2797359B0;
    v15[4] = self;
    v16 = v8;
    dispatch_async(Property, v15);
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@user UUID missed", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (BOOL)isErrorHMENotAcceptingConnections:(id)connections
{
  connectionsCopy = connections;
  domain = [connectionsCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277D17490]])
  {
    v5 = [connectionsCopy code] == 4;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)respondToMessage:(id)message underlyingResponseData:(id)data supportsFragmentMessage:(BOOL)fragmentMessage label:(id)label
{
  fragmentMessageCopy = fragmentMessage;
  v34 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  dataCopy = data;
  labelCopy = label;
  if (fragmentMessageCopy)
  {
    v13 = objc_autoreleasePoolPush();
    logger = self->_logger;
    if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = logger;
      v17 = [v15 numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
      *buf = 138412546;
      v31 = labelCopy;
      v32 = 2112;
      v33 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEFAULT, "Responding to %@ with message size: %@, fragment: 0", buf, 0x16u);
    }

    v18 = objc_alloc_init(HMDRemoteEventRouterProtoFragmentedMessage);
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setFragmentData:dataCopy];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setFragmentNumber:0];
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setTotalFragments:1];
    -[HMDRemoteEventRouterProtoFragmentedMessage setTotalSize:](v18, "setTotalSize:", [dataCopy length]);
    [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 setRouterVersion:0];
    v28[0] = @"message.payload";
    data = [(HMDRemoteEventRouterProtoFragmentedMessage *)v18 data];
    v28[1] = @"isFragmented";
    v29[0] = data;
    v29[1] = MEMORY[0x277CBEC38];
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
    [messageCopy respondWithPayload:v20];

    objc_autoreleasePoolPop(v13);
  }

  else
  {
    v21 = self->_logger;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = MEMORY[0x277CCABB0];
      v23 = v21;
      v24 = [v22 numberWithUnsignedInteger:{objc_msgSend(dataCopy, "length")}];
      *buf = 138412546;
      v31 = labelCopy;
      v32 = 2112;
      v33 = v24;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_DEFAULT, "Responding to %@ with message size: %@", buf, 0x16u);
    }

    v26 = @"message.payload";
    v27 = dataCopy;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
    [messageCopy respondWithPayload:v25];
  }
}

- (void)respondToMessage:(id)message underlyingResponseData:(id)data connection:(id)connection label:(id)label
{
  labelCopy = label;
  dataCopy = data;
  messageCopy = message;
  if (connection)
  {
    v13 = *(connection + 8);
  }

  else
  {
    v13 = 0;
  }

  v14 = messageCopy;
  [(HMDRemoteEventRouterServer *)self respondToMessage:messageCopy underlyingResponseData:dataCopy supportsFragmentMessage:v13 & 1 label:labelCopy];
}

- (id)messageTargetForMode:(int64_t)mode
{
  if (mode == 1)
  {
    if (!self)
    {
      goto LABEL_7;
    }

    v4 = 48;
  }

  else
  {
    if (!self)
    {
      goto LABEL_7;
    }

    v4 = 40;
  }

  self = objc_getProperty(self, a2, v4, 1);
LABEL_7:

  return self;
}

- (OS_dispatch_queue)messageReceiveQueue
{
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
    v2 = vars8;
  }

  return self;
}

- (NSUUID)messageTargetUUID
{
  if (self)
  {
    self = objc_getProperty(self, a2, 40, 1);
    v2 = vars8;
  }

  return self;
}

- (void)handleHomeUserRemovedNotification:(id)notification
{
  notificationCopy = notification;
  if (self)
  {
    Property = objc_getProperty(self, v4, 32, 1);
  }

  else
  {
    Property = 0;
  }

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke;
  v8[3] = &unk_2797359B0;
  v9 = notificationCopy;
  selfCopy = self;
  v7 = notificationCopy;
  dispatch_async(Property, v8);
}

void __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:@"HMDUserNotificationKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  if (!v5)
  {
    _HMFPreconditionFailure();
  }

  v6 = [*(a1 + 40) currentConnections];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_2;
  v15[3] = &unk_2797286A0;
  v7 = v5;
  v16 = v7;
  v8 = [v6 na_filter:v15];

  if ([v8 count])
  {
    v9 = objc_autoreleasePoolPush();
    v10 = *(a1 + 40);
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = [v7 uuid];
      *buf = 138543874;
      v18 = v12;
      v19 = 2112;
      v20 = v8;
      v21 = 2112;
      v22 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Removing connections: %@ due to removed user: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v9);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_113;
  v14[3] = &unk_2797286C8;
  v14[4] = *(a1 + 40);
  [v8 na_each:v14];
}

uint64_t __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 32);
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  v5 = [*(a1 + 32) uuid];
  v6 = [v4 hmf_isEqualToUUID:v5];

  return v6;
}

void __64__HMDRemoteEventRouterServer_handleHomeUserRemovedNotification___block_invoke_113(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 currentConnections];
  [v4 removeObject:v3];
}

- (void)handlePrimaryResidentIsCurrentDeviceChangeNotification:(id)notification
{
  selfCopy = self;
  if (self)
  {
    self = objc_getProperty(self, a2, 32, 1);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDRemoteEventRouterServer_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke;
  block[3] = &unk_279735D00;
  block[4] = selfCopy;
  dispatch_async(&self->super, block);
}

void *__85__HMDRemoteEventRouterServer_handlePrimaryResidentIsCurrentDeviceChangeNotification___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (v2)
  {
    WeakRetained = objc_loadWeakRetained((v2 + 112));
  }

  else
  {
    WeakRetained = 0;
  }

  v4 = [WeakRetained isCurrentDevicePrimaryResident];

  result = [(HMDRemoteEventRouterServer *)*(a1 + 32) isPrimaryResident];
  if (v4 != result)
  {
    v6 = *(a1 + 32);
    v7 = *(v6 + 8);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT) && (v8 = MEMORY[0x277CCABB0], v9 = v7, [v8 numberWithBool:v4], v10 = objc_claimAutoreleasedReturnValue(), v15 = 138412290, v16 = v10, _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "Primary resident status changed to %@", &v15, 0xCu), v10, v9, (v6 = *(a1 + 32)) == 0))
    {
      v11 = 0;
    }

    else
    {
      os_unfair_lock_lock_with_options();
      *(v6 + 20) = v4;
      os_unfair_lock_unlock((v6 + 16));
      v11 = *(a1 + 32);
    }

    v12 = [v11 currentConnections];
    [v12 removeAllObjects];

    Property = *(a1 + 32);
    if (Property)
    {
      Property = objc_getProperty(Property, v13, 104, 1);
    }

    return [Property reset];
  }

  return result;
}

- (void)_registerForAccessoryMessages:(id)messages
{
  v41 = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  v5 = [messagesCopy na_firstObjectPassingTest:&__block_literal_global_106];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v9 = logger;
    Property = objc_getProperty(self, v10, 48, 1);
    v12 = MEMORY[0x277CCABB0];
    v13 = Property;
    v14 = [v12 numberWithUnsignedInteger:{objc_msgSend(v7, "userPrivilege")}];
    *v38 = 138412802;
    *&v38[4] = Property;
    *&v38[12] = 1024;
    *&v38[14] = v7 != 0;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_DEFAULT, "Registering for accessory messages %@, user privilege: (exists: %d) %@", v38, 0x1Cu);
  }

  v15 = [HMDRemoteEventRouterServerMessageReceiver alloc];
  v17 = objc_getProperty(self, v16, 48, 1);
  v18 = v17;
  v20 = objc_getProperty(self, v19, 32, 1);
  v21 = v18;
  v22 = v20;
  selfCopy = self;
  if (v15)
  {
    *v38 = v15;
    *&v38[8] = HMDRemoteEventRouterServerMessageReceiver;
    v24 = objc_msgSendSuper2(v38, sel_init);
    v25 = v24;
    if (v24)
    {
      objc_storeStrong(v24 + 1, v17);
      objc_storeStrong(v25 + 2, v20);
      objc_storeWeak(v25 + 3, selfCopy);
    }
  }

  else
  {
    v25 = 0;
  }

  objc_setProperty_atomic(selfCopy, v26, v25, 136);
  v28 = objc_getProperty(selfCopy, v27, 136, 1);
  v30 = objc_getProperty(selfCopy, v29, 80, 1);
  if (v28)
  {
    v31 = messagesCopy;
    WeakRetained = objc_loadWeakRetained(v28 + 3);
    v33 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    *v38 = v33;
    v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:1];
    v35 = [v34 arrayByAddingObjectsFromArray:v31];

    if (WeakRetained)
    {
      v37 = objc_getProperty(WeakRetained, v36, 56, 1);
    }

    else
    {
      v37 = 0;
    }

    [v30 registerForMessage:v37 receiver:v28 policies:v35 selector:sel_handleRequestMessage_];
  }
}

uint64_t __60__HMDRemoteEventRouterServer__registerForAccessoryMessages___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (void)_registerForMessages:(id)messages withHome:(id)home
{
  v31[1] = *MEMORY[0x277D85DE8];
  messagesCopy = messages;
  homeCopy = home;
  if (self)
  {
    WeakRetained = objc_loadWeakRetained(&self->_dataSource);
  }

  else
  {
    WeakRetained = 0;
  }

  v9 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v31[0] = v9;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:1];
  v11 = [v10 arrayByAddingObjectsFromArray:messagesCopy];

  if (self)
  {
    Property = objc_getProperty(self, v12, 80, 1);
  }

  else
  {
    Property = 0;
  }

  v14 = Property;
  v15 = [messagesCopy na_firstObjectPassingTest:&__block_literal_global_95];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = v16;

  logger = self->_logger;
  if (os_log_type_enabled(logger, OS_LOG_TYPE_DEFAULT))
  {
    v20 = MEMORY[0x277CCABB0];
    v21 = logger;
    v22 = [v20 numberWithUnsignedInteger:{objc_msgSend(v17, "userPrivilege")}];
    v28[0] = 67109378;
    v28[1] = v17 != 0;
    v29 = 2112;
    v30 = v22;
    _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_DEFAULT, "Registering for messages with user privilege: (exists: %d) %@", v28, 0x12u);
  }

  [v14 registerForMessage:objc_getProperty(self receiver:v19 policies:56 selector:{1), self, v11, sel__handlePrimaryRequestMessage_}];

  v24 = objc_getProperty(self, v23, 88, 1);
  v25 = [WeakRetained primaryResidentChangeMonitorForRouterServer:self];
  [v24 addObserver:self selector:sel_handlePrimaryResidentIsCurrentDeviceChangeNotification_ name:@"HMDPrimaryResidentChangeMonitorIsCurrentDeviceChangeNotification" object:v25];

  [objc_getProperty(self v26];
  [objc_getProperty(self v27];
}

uint64_t __60__HMDRemoteEventRouterServer__registerForMessages_withHome___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & (v2 != 0);
}

- (id)logIdentifier
{
  if (self)
  {
    self = objc_getProperty(self, a2, 48, 1);
    v2 = vars8;
  }

  return [(HMDRemoteEventRouterServer *)self UUIDString];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v6 = NSStringFromClass(v4);
  if (self)
  {
    v7 = objc_getProperty(self, v5, 40, 1);
    Property = objc_getProperty(self, v8, 48, 1);
    v10 = MEMORY[0x277CCABB0];
    v11 = Property;
    os_unfair_lock_lock_with_options();
    isPrimaryResident = self->_isPrimaryResident;
    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v10 = MEMORY[0x277CCABB0];
    isPrimaryResident = 0;
    v7 = 0;
    v11 = 0;
  }

  v13 = [v10 numberWithBool:isPrimaryResident];
  v14 = [v3 stringWithFormat:@"<%@ home: %@, accessory: %@, mode: %@>", v6, v7, v11, v13];

  return v14;
}

- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)d residentModeUUID:(id)iD queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 logCategory:(const char *)self2 logEventSubmitter:(id)self3 connectionServerFactory:(id)self4
{
  dCopy = d;
  iDCopy = iD;
  iDCopy2 = iD;
  queueCopy = queue;
  dispatcherCopy = dispatcher;
  sourceCopy = source;
  centerCopy = center;
  nameCopy = name;
  messageNameCopy = messageName;
  responseMessageNameCopy = responseMessageName;
  v20 = sourceCopy;
  submitterCopy = submitter;
  factoryCopy = factory;
  v51.receiver = self;
  v51.super_class = HMDRemoteEventRouterServer;
  v22 = [(HMDRemoteEventRouterServer *)&v51 init];
  v23 = v22;
  if (v22)
  {
    v22->_lock._os_unfair_lock_opaque = 0;
    v24 = HMFGetOSLogHandle();
    logger = v23->_logger;
    v23->_logger = v24;

    v26 = os_log_create("com.apple.HomeKitDaemon", category);
    v27 = v23->_logger;
    v23->_logger = v26;

    v28 = objc_alloc_init(HMDEventRouterTimerProvider);
    timerProvider = v23->_timerProvider;
    v23->_timerProvider = v28;

    objc_storeStrong(&v23->_homeUUID, d);
    objc_storeStrong(&v23->_accessoryUUID, iDCopy);
    objc_storeStrong(&v23->_messageDispatcher, dispatcher);
    objc_storeStrong(&v23->_workQueue, queue);
    objc_storeWeak(&v23->_dataSource, v20);
    objc_storeStrong(&v23->_notificationCenter, center);
    objc_storeStrong(&v23->_routerRequestMessageName, name);
    objc_storeStrong(&v23->_routerUpdateMessageName, messageName);
    objc_storeStrong(&v23->_routerMultiHopFetchResponseMessageName, responseMessageName);
    v30 = factoryCopy[2](factoryCopy);
    connectionServer = v23->_connectionServer;
    v23->_connectionServer = v30;

    [(HMEMessageDatagramServer *)v23->_connectionServer setDelegate:v23];
    [(HMEMessageDatagramServer *)v23->_connectionServer setDataSource:v23];
    array = [MEMORY[0x277CBEB18] array];
    currentConnections = v23->_currentConnections;
    v23->_currentConnections = array;

    *&v23->_isPrimaryResident = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    accessControls = v23->_accessControls;
    v23->_accessControls = dictionary;

    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    pendingFetchRequests = v23->_pendingFetchRequests;
    v23->_pendingFetchRequests = strongToStrongObjectsMapTable;

    objc_storeWeak(&v23->_logEventSubmitter, submitterCopy);
  }

  return v23;
}

- (HMDRemoteEventRouterServer)initWithPrimaryModeUUID:(id)d residentModeUUID:(id)iD queue:(id)queue messageDispatcher:(id)dispatcher dataSource:(id)source notificationCenter:(id)center requestMessageName:(id)name updateMessageName:(id)self0 multiHopFetchResponseMessageName:(id)self1 subscriptionProvider:(id)self2 registrationEventRouter:(id)self3 storeReadHandle:(id)self4
{
  queueCopy = queue;
  providerCopy = provider;
  routerCopy = router;
  handleCopy = handle;
  responseMessageNameCopy = responseMessageName;
  messageNameCopy = messageName;
  nameCopy = name;
  centerCopy = center;
  sourceCopy = source;
  dispatcherCopy = dispatcher;
  iDCopy = iD;
  dCopy = d;
  uUIDString = [dCopy UUIDString];
  v23 = [@"RemoteEventRouter.Server." stringByAppendingString:uUIDString];

  uTF8String = [v23 UTF8String];
  v28 = +[HMDMetricsManager sharedLogEventSubmitter];
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __256__HMDRemoteEventRouterServer_initWithPrimaryModeUUID_residentModeUUID_queue_messageDispatcher_dataSource_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_subscriptionProvider_registrationEventRouter_storeReadHandle___block_invoke;
  v43[3] = &unk_279728658;
  v44 = queueCopy;
  v45 = providerCopy;
  v46 = routerCopy;
  v47 = handleCopy;
  v48 = v23;
  v32 = v23;
  v30 = handleCopy;
  v29 = routerCopy;
  v34 = providerCopy;
  v25 = queueCopy;
  v26 = [(HMDRemoteEventRouterServer *)self initWithPrimaryModeUUID:dCopy residentModeUUID:iDCopy queue:v25 messageDispatcher:dispatcherCopy dataSource:sourceCopy notificationCenter:centerCopy requestMessageName:nameCopy updateMessageName:messageNameCopy multiHopFetchResponseMessageName:responseMessageNameCopy logCategory:uTF8String logEventSubmitter:v28 connectionServerFactory:v43];

  return v26;
}

id __256__HMDRemoteEventRouterServer_initWithPrimaryModeUUID_residentModeUUID_queue_messageDispatcher_dataSource_notificationCenter_requestMessageName_updateMessageName_multiHopFetchResponseMessageName_subscriptionProvider_registrationEventRouter_storeReadHandle___block_invoke(uint64_t a1)
{
  v1 = [objc_alloc(MEMORY[0x277D174D0]) initWithQueue:*(a1 + 32) provider:*(a1 + 40) registrationEventRouter:*(a1 + 48) storeReadHandle:*(a1 + 56) logCategory:{objc_msgSend(*(a1 + 64), "UTF8String")}];

  return v1;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t4_71364 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t4_71364, &__block_literal_global_71365);
  }

  v3 = logCategory__hmf_once_v5_71366;

  return v3;
}

uint64_t __41__HMDRemoteEventRouterServer_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v5_71366;
  logCategory__hmf_once_v5_71366 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end