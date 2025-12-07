@interface IDSDirectMessageConnection
+ (BOOL)isDirectMessagingRequested:(id)requested;
- (BOOL)isMessageEligible:(id)eligible options:(id)options destinationDevice:(id)device;
- (IDSDirectMessageConnection)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate;
- (IDSDirectMessageConnectionDelegate)delegate;
- (id)createDispatchDataForMessageSend:(id)send isAck:(BOOL)ack ackMessageId:(unsigned int)add;
- (id)description;
- (unsigned)getMessageTypeForFirstMessage;
- (void)cancel;
- (void)cancelPendingAckTimer;
- (void)clearPowerAssertion;
- (void)dealloc;
- (void)dequeueMessages;
- (void)failedToSendMessage:(id)message responseCode:(int64_t)code;
- (void)getPowerAssertion;
- (void)invalidate;
- (void)logConnectionStatisticsInPowerDictionary;
- (void)parseDirectMessagingState;
- (void)processIncomingMessage:(id)message messageType:(unsigned __int8)type messageIdentifier:(unsigned int)identifier;
- (void)receiveMessages;
- (void)receivedDirectMessagingSocketWithContext:(id)context;
- (void)resetConnection;
- (void)resumePendingAckTimer;
- (void)sendAckForMessageID:(unsigned int)d guidToAck:(id)ack;
- (void)sendAppAckWithGUID:(id)d;
- (void)sendMessageWithParameters:(id)parameters options:(id)options;
- (void)setDestinationDevice:(id)device;
- (void)setupConnectionIfApplicable;
- (void)setupIDSDeviceConnection;
- (void)startPowerLogReportTimer;
- (void)suspendPendingAckTimer;
- (void)updateConnectedDevices:(id)devices;
- (void)updateConnection:(id)connection;
- (void)updateMetadata:(id)metadata;
- (void)updateTrafficClass:(unsigned __int16)class;
@end

@implementation IDSDirectMessageConnection

- (IDSDirectMessageConnection)initWithServiceName:(id)name queue:(id)queue delegate:(id)delegate
{
  v31 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  queueCopy = queue;
  delegateCopy = delegate;
  v28.receiver = self;
  v28.super_class = IDSDirectMessageConnection;
  v12 = [(IDSDirectMessageConnection *)&v28 init];
  v13 = v12;
  if (v12)
  {
    v12->_identifier = atomic_fetch_add(&qword_1EAEDA918, 1uLL);
    objc_storeStrong(&v12->_serviceName, name);
    v14 = [(NSString *)v13->_serviceName stringByReplacingOccurrencesOfString:@"com.apple.private.alloy." withString:&stru_1F09E7B80];
    if ([v14 length])
    {
      v15 = malloc_type_calloc(1uLL, [v14 length] + 1, 0xFECB6B7uLL);
      v13->_shortServiceNameCString = v15;
      strlcpy(v15, [v14 UTF8String], objc_msgSend(v14, "length") + 1);
    }

    objc_storeStrong(&v13->_connectionQueue, queue);
    objc_storeWeak(&v13->_delegate, delegateCopy);
    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    queueOneToMessageIDDictionary = v13->_queueOneToMessageIDDictionary;
    v13->_queueOneToMessageIDDictionary = v16;

    v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
    messageIDToMessageDictionary = v13->_messageIDToMessageDictionary;
    v13->_messageIDToMessageDictionary = v18;

    v13->_notifyToken = -1;
    v20 = [objc_alloc(MEMORY[0x1E69A5408]) initWithServiceIdentifier:v13->_serviceName];
    serviceProperties = v13->_serviceProperties;
    v13->_serviceProperties = v20;

    v22 = v13->_serviceProperties;
    if (!v22)
    {
      [(IDSDirectMessageConnection *)v13 cancel];

      v26 = 0;
      goto LABEL_10;
    }

    v13->_dataProtectionClass = [(IDSServiceProperties *)v22 dataProtectionClass];
    assertion = v13->_assertion;
    v13->_assertion = 0;

    powerAssertionOptions = v13->_powerAssertionOptions;
    v13->_powerAssertionOptions = 0;

    *&v13->_directMessagingTimeOutMSEC = 21474836500000;
    v13->_directMessagingReportStatsMSEC = 60;
    v25 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v30 = v13;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "%@ Created", buf, 0xCu);
    }
  }

  v26 = v13;
LABEL_10:

  return v26;
}

- (void)parseDirectMessagingState
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    directMessagingState = self->_directMessagingState;
    v9 = 138412546;
    selfCopy2 = self;
    v11 = 2048;
    v12 = directMessagingState;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ parsing direct messaging state: %llu", &v9, 0x16u);
  }

  self->_directMessagingSupported = 0;
  *&self->_peerSupportsDeviceConnection = 0;
  v5 = self->_directMessagingState;
  if ((v5 & 2) != 0)
  {
    [(IDSDirectMessageConnection *)self invalidate];
    [(IDSDirectMessageConnection *)self setDestinationDevice:0];
    if (!self->_directMessagingSupported)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_11;
    }

    self->_directMessagingSupported = 1;
  }

  v6 = self->_directMessagingState;
  if ((v6 & 4) != 0)
  {
    self->_peerSupportsDeviceConnection = 1;
  }

  if ((v6 & 8) != 0)
  {
    self->_conciseACKSupported = 1;
  }

LABEL_11:
  v7 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    directMessagingSupported = self->_directMessagingSupported;
    v9 = 138412546;
    selfCopy2 = self;
    v11 = 1024;
    LODWORD(v12) = directMessagingSupported;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "%@ direct messaging supported: %d", &v9, 0x12u);
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    shortServiceNameCString = self->_shortServiceNameCString;
    if (!shortServiceNameCString)
    {
      shortServiceNameCString = "<unknown>";
    }

    *buf = 134218242;
    v9 = identifier;
    v10 = 2080;
    v11 = shortServiceNameCString;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "[%llu %s] Dealloc", buf, 0x16u);
  }

  [(IDSDirectMessageConnection *)self cancel];
  v6 = self->_shortServiceNameCString;
  if (v6)
  {
    free(v6);
    self->_shortServiceNameCString = 0;
  }

  v7.receiver = self;
  v7.super_class = IDSDirectMessageConnection;
  [(IDSDirectMessageConnection *)&v7 dealloc];
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendFormat:@"[%llu ", self->_identifier];
  shortServiceNameCString = self->_shortServiceNameCString;
  if (!shortServiceNameCString)
  {
    shortServiceNameCString = "<unknown>";
  }

  [v3 appendFormat:@"%s ", shortServiceNameCString];
  [v3 appendFormat:@"%s]", nw_connection_state_to_string()];

  return v3;
}

- (void)cancel
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ Cancel", &v5, 0xCu);
  }

  notifyToken = self->_notifyToken;
  if (notifyToken != -1)
  {
    notify_cancel(notifyToken);
    self->_notifyToken = -1;
  }

  [(IDSDirectMessageConnection *)self invalidate];
}

- (void)invalidate
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138412290;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_DEFAULT, "%@ Invalidate", &v4, 0xCu);
  }

  [(IDSDirectMessageConnection *)self resetConnection];
  [(IDSDirectMessageConnection *)self updateMetadata:0];
  [(IDSDirectMessageConnection *)self cancelPendingAckTimer];
  [(NSMutableDictionary *)self->_messageIDToMessageDictionary removeAllObjects];
  [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary removeAllObjects];
  [(NSMutableArray *)self->_connectionMessageSendQueue removeAllObjects];
}

- (void)setDestinationDevice:(id)device
{
  v15 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B27B10();
    }
  }

  objc_storeStrong(&self->_device, device);
  v9 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    device = self->_device;
    v11 = 138412546;
    selfCopy = self;
    v13 = 2112;
    deviceCopy2 = device;
    _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Updated destination device: %@", &v11, 0x16u);
  }

  if (self->_connectionIsIncoming)
  {
    self->_connectionIsIncoming = 0;
    [(IDSDirectMessageConnection *)self setupIDSDeviceConnection];
  }
}

+ (BOOL)isDirectMessagingRequested:(id)requested
{
  requestedCopy = requested;
  v4 = [requestedCopy objectForKey:@"IDSSendMessageOptionDirectMessaging"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    goto LABEL_2;
  }

  v7 = [requestedCopy objectForKey:@"IDSSendMessageOptionFireAndForget"];
  if (![v7 BOOLValue])
  {

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v8 = _os_feature_enabled_impl();

  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_2:
  v6 = 1;
LABEL_8:

  return v6;
}

- (BOOL)isMessageEligible:(id)eligible options:(id)options destinationDevice:(id)device
{
  eligibleCopy = eligible;
  optionsCopy = options;
  deviceCopy = device;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B27BA8();
    }
  }

  if (![(IDSDirectMessageConnection *)self canUseDirectMessaging])
  {
    goto LABEL_14;
  }

  if (!self->_trafficClassInitialized)
  {
    if (deviceCopy)
    {
      goto LABEL_11;
    }

LABEL_14:
    LOBYTE(protobuf) = 0;
    goto LABEL_22;
  }

  trafficClassApplied = self->_trafficClassApplied;
  priority = [eligibleCopy priority];
  LOBYTE(protobuf) = 0;
  if (deviceCopy && trafficClassApplied == priority)
  {
LABEL_11:
    v17 = IDSCopyIDForDevice(deviceCopy);
    if (v17)
    {
      destinations = [eligibleCopy destinations];
      destinationURIs = [destinations destinationURIs];
      if ([destinationURIs containsObject:*MEMORY[0x1E69A4B50]])
      {
      }

      else
      {
        destinations2 = [eligibleCopy destinations];
        destinationURIs2 = [destinations2 destinationURIs];
        v22 = [destinationURIs2 containsObject:v17];

        if (!v22)
        {
          goto LABEL_20;
        }
      }

      if (([eligibleCopy allowCloudDelivery] & 1) == 0)
      {
        v23 = [optionsCopy objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
        bOOLValue = [v23 BOOLValue];

        if ((bOOLValue & 1) == 0 && ([eligibleCopy nonWaking] & 1) == 0)
        {
          v25 = [optionsCopy objectForKey:@"IDSSendMessageOptionNonWaking"];
          bOOLValue2 = [v25 BOOLValue];

          if ((bOOLValue2 & 1) == 0)
          {
            data = [eligibleCopy data];
            if (data || ([eligibleCopy message], (data = objc_claimAutoreleasedReturnValue()) != 0))
            {
            }

            else
            {
              protobuf = [eligibleCopy protobuf];

              if (!protobuf)
              {
                goto LABEL_21;
              }
            }

            LOBYTE(protobuf) = [objc_opt_class() isDirectMessagingRequested:optionsCopy];
LABEL_21:

            goto LABEL_22;
          }
        }
      }
    }

LABEL_20:
    LOBYTE(protobuf) = 0;
    goto LABEL_21;
  }

LABEL_22:

  return protobuf;
}

- (void)updateConnectedDevices:(id)devices
{
  v37 = *MEMORY[0x1E69E9840];
  devicesCopy = devices;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B27C40();
    }
  }

  v8 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v32 = 2112;
    *v33 = devicesCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ connected devices changed %@", buf, 0x16u);
  }

  if ([devicesCopy count])
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = devicesCopy;
    v10 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          _internal = [v14 _internal];
          isDefaultPairedDevice = [_internal isDefaultPairedDevice];

          if (isDefaultPairedDevice)
          {
            if (!self->_device)
            {
              [(IDSDirectMessageConnection *)self setDestinationDevice:v14];
            }

            _internal2 = [v14 _internal];
            isConnected = [_internal2 isConnected];

            peerIsConnected = self->_peerIsConnected;
            v17 = peerIsConnected != isConnected;
            if (peerIsConnected != isConnected)
            {
              self->_peerIsConnected = isConnected;
            }

            _internal3 = [v14 _internal];
            isNearby = [_internal3 isNearby];

            if (self->_peerIsNearby != isNearby)
            {
              self->_peerIsNearby = isNearby;
              v17 = 1;
            }

            goto LABEL_25;
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v26 objects:v36 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }
  }

  v17 = 0;
  *&self->_peerIsConnected = 0;
LABEL_25:
  v23 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    peerIsNearby = self->_peerIsNearby;
    v25 = self->_peerIsConnected;
    *buf = 138413058;
    selfCopy2 = self;
    v32 = 1024;
    *v33 = peerIsNearby;
    *&v33[4] = 1024;
    *&v33[6] = v25;
    v34 = 1024;
    v35 = v17;
    _os_log_impl(&dword_1959FF000, v23, OS_LOG_TYPE_DEFAULT, "%@ peerIsNearby %d peerIsConnected %d changed %d", buf, 0x1Eu);
  }

  if (v17)
  {
    [(IDSDirectMessageConnection *)self dequeueMessages];
  }
}

- (void)updateMetadata:(id)metadata
{
  v28 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B27CD8();
    }
  }

  v8 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v26 = 2112;
    v27 = metadataCopy;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "%@ received direct-messaging metadata %@", buf, 0x16u);
  }

  if (metadataCopy)
  {
    v9 = [metadataCopy objectForKeyedSubscript:@"directMsgAllowedForServices"];
    v10 = v9;
    if (v9)
    {
      self->_directMessagingAllowed = [v9 containsObject:self->_serviceName];
    }

    v11 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      directMessagingAllowed = self->_directMessagingAllowed;
      *buf = 138412546;
      selfCopy2 = self;
      v26 = 1024;
      LODWORD(v27) = directMessagingAllowed;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "%@ direct messaging allowed: %d", buf, 0x12u);
    }

    if (self->_directMessagingAllowed)
    {
      if (self->_notifyToken == -1)
      {
        objc_initWeak(buf, self);
        objc_copyWeak(&v21, buf);
        im_notify_register_dispatch();
        [(IDSDirectMessageConnection *)self parseDirectMessagingState];
        objc_destroyWeak(&v21);
        objc_destroyWeak(buf);
      }

      v13 = [metadataCopy objectForKeyedSubscript:@"peerIDForDirectMsg"];
      peerID = self->_peerID;
      self->_peerID = v13;

      v22[0] = *MEMORY[0x1E69A6020];
      v15 = [MEMORY[0x1E696AD98] numberWithInt:getpid()];
      v23[0] = v15;
      v22[1] = *MEMORY[0x1E69A6010];
      v16 = [metadataCopy objectForKeyedSubscript:@"pidForIDSD"];
      v23[1] = v16;
      v17 = *MEMORY[0x1E69A6008];
      v22[2] = *MEMORY[0x1E69A6018];
      v22[3] = v17;
      v23[2] = @"IDSDirectMessaging";
      v23[3] = @"com.apple.ids";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:v22 count:4];
      powerAssertionOptions = self->_powerAssertionOptions;
      self->_powerAssertionOptions = v18;

      [(IDSDirectMessageConnection *)self startPowerLogReportTimer];
    }
  }

  else
  {
    self->_peerSupportsDeviceConnection = 0;
    self->_directMessagingAllowed = 0;
    v20 = self->_peerID;
    self->_peerID = 0;

    self->_conciseACKSupported = 0;
  }
}

- (void)resetConnection
{
  self->_connectionSetupInProgress = 0;
  self->_connectionIsIncoming = 0;
  *&self->_trafficClassInitialized = 0;
  self->_trafficClassApplied = 0;
  currentStreamName = self->_currentStreamName;
  self->_currentStreamName = 0;

  deviceConnection = self->_deviceConnection;
  if (deviceConnection)
  {
    [(_IDSDeviceConnection *)deviceConnection close];
    v5 = self->_deviceConnection;
    self->_deviceConnection = 0;
  }

  connection = self->_connection;
  if (connection)
  {
    nw_connection_cancel(connection);
    v7 = self->_connection;
  }

  else
  {
    v7 = 0;
  }

  self->_connection = 0;

  self->_connectionState = 0;
  self->_upgradedTrafficClass = 0;
  [(IDSDirectMessageConnection *)self resumePendingAckTimer];
  pendingAckTimer = self->_pendingAckTimer;
  if (pendingAckTimer)
  {
    dispatch_source_cancel(pendingAckTimer);
    v9 = self->_pendingAckTimer;
    self->_pendingAckTimer = 0;

    [(IDSDirectMessageConnection *)self logConnectionStatisticsInPowerDictionary];
  }

  reporterTimer = self->_reporterTimer;
  if (reporterTimer)
  {
    dispatch_source_cancel(reporterTimer);
    v11 = self->_reporterTimer;
    self->_reporterTimer = 0;
  }

  [(IDSDirectMessageConnection *)self clearPowerAssertion];
}

- (void)updateConnection:(id)connection
{
  connectionCopy = connection;
  p_connection = &self->_connection;
  if (self->_connection)
  {
    [(IDSDirectMessageConnection *)self resetConnection];
  }

  objc_storeStrong(&self->_connection, connection);
  if (*p_connection)
  {
    nw_connection_set_queue(*p_connection, self->_connectionQueue);
    objc_initWeak(&location, self);
    connection = self->_connection;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = sub_195A19B38;
    handler[3] = &unk_1E743ECB0;
    objc_copyWeak(&v10, &location);
    v9 = connectionCopy;
    nw_connection_set_state_changed_handler(connection, handler);
    nw_connection_start(*p_connection);
    self->_connectionSetupInProgress = 1;

    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }
}

- (void)updateTrafficClass:(unsigned __int16)class
{
  if (self->_connection)
  {
    MEMORY[0x1EEDD3098]();
  }
}

- (void)setupIDSDeviceConnection
{
  location[3] = *MEMORY[0x1E69E9840];
  if (self->_device)
  {
    if (!self->_currentStreamName)
    {
      v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"dmsg-%s", -[NSString UTF8String](self->_serviceName, "UTF8String")];
      currentStreamName = self->_currentStreamName;
      self->_currentStreamName = v3;
    }

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    [v5 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4F40]];
    v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_dataProtectionClass];
    [v5 setObject:v6 forKeyedSubscript:*MEMORY[0x1E69A4F20]];

    [v5 setObject:self->_serviceName forKeyedSubscript:*MEMORY[0x1E69A4F50]];
    [v5 setObject:self->_currentStreamName forKeyedSubscript:*MEMORY[0x1E69A4F60]];
    [v5 setObject:&unk_1F0A29780 forKeyedSubscript:*MEMORY[0x1E69A4F38]];
    v7 = [MEMORY[0x1E696AD98] numberWithInteger:self->_idsPriorityToUse];
    [v5 setObject:v7 forKeyedSubscript:*MEMORY[0x1E69A4F48]];

    [v5 setObject:&unk_1F0A29798 forKeyedSubscript:*MEMORY[0x1E69A4F10]];
    getMessageTypeForFirstMessage = [(IDSDirectMessageConnection *)self getMessageTypeForFirstMessage];
    v9 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:getMessageTypeForFirstMessage];
    [v5 setObject:v9 forKeyedSubscript:*MEMORY[0x1E69A4F30]];

    v10 = MEMORY[0x1E696AD98];
    ids_monotonic_time();
    v11 = [v10 numberWithDouble:?];
    [v5 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69A4ED8]];

    self->_connectionSetupInProgress = 1;
    objc_initWeak(location, self);
    v12 = [_IDSDeviceConnection alloc];
    device = self->_device;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = sub_195A19FC4;
    v16[3] = &unk_1E743ECD8;
    objc_copyWeak(&v17, location);
    v14 = [(_IDSDeviceConnection *)v12 initWithDevice:device options:v5 completionHandler:v16 queue:self->_connectionQueue];
    deviceConnection = self->_deviceConnection;
    self->_deviceConnection = v14;

    objc_destroyWeak(&v17);
    objc_destroyWeak(location);
  }

  else
  {
    v5 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = self;
      _os_log_impl(&dword_1959FF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Invalid device", location, 0xCu);
    }
  }
}

- (void)receivedDirectMessagingSocketWithContext:(id)context
{
  v25 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B27D74();
    }
  }

  v8 = +[IDSLogging IDSDirectMessagingConnection];
  v9 = v8;
  if (contextCopy)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 138412546;
      selfCopy2 = self;
      v23 = 2112;
      v24 = contextCopy;
      _os_log_impl(&dword_1959FF000, v9, OS_LOG_TYPE_DEFAULT, "%@ Received context %@", &v21, 0x16u);
    }

    v10 = [contextCopy objectForKeyedSubscript:@"streamName"];
    v9 = v10;
    if (!v10)
    {
      v12 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_195B27E0C();
      }

      goto LABEL_35;
    }

    v11 = [v10 substringFromIndex:[v10 rangeOfString:@"dmsg-"]];
    v12 = v11;
    if (self->_currentStreamName && [v11 isEqualToString:?]&& self->_connectionSetupInProgress)
    {
      v13 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v21) = 0;
        v14 = "we are the originator";
        v15 = v13;
        v16 = OS_LOG_TYPE_INFO;
        v17 = 2;
LABEL_30:
        _os_log_impl(&dword_1959FF000, v15, v16, v14, &v21, v17);
        goto LABEL_34;
      }

      goto LABEL_34;
    }

    if (self->_connectionSetupInProgress && !self->_connection)
    {
      v13 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        selfCopy2 = self;
        v14 = "%@ Ignoring incoming request as existing request is in progress";
        v15 = v13;
        v16 = OS_LOG_TYPE_DEFAULT;
        v17 = 12;
        goto LABEL_30;
      }

LABEL_34:

LABEL_35:
      goto LABEL_36;
    }

    if (self->_deviceConnection)
    {
      [(IDSDirectMessageConnection *)self resetConnection];
    }

    v18 = [contextCopy objectForKeyedSubscript:@"streamFlags"];
    v13 = v18;
    if (v18)
    {
      unsignedLongLongValue = [v18 unsignedLongLongValue];
      if ((unsignedLongLongValue & 4) != 0)
      {
        v20 = 200;
        goto LABEL_32;
      }

      if ((unsignedLongLongValue & 8) != 0)
      {
        v20 = 300;
        goto LABEL_32;
      }

      if ((unsignedLongLongValue & 0x10) != 0)
      {
        v20 = 100;
LABEL_32:
        self->_idsPriorityToUse = v20;
      }
    }

    objc_storeStrong(&self->_currentStreamName, v12);
    self->_connectionIsIncoming = 1;
    [(IDSDirectMessageConnection *)self setupIDSDeviceConnection];
    goto LABEL_34;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_195B27E4C();
  }

LABEL_36:
}

- (void)setupConnectionIfApplicable
{
  connectionMessageSendQueue = self->_connectionMessageSendQueue;
  if (connectionMessageSendQueue && [(NSMutableArray *)connectionMessageSendQueue count]&& self->_peerIsConnected && !self->_connectionSetupInProgress && self->_connectionState != 3)
  {

    [(IDSDirectMessageConnection *)self setupIDSDeviceConnection];
  }
}

- (void)receiveMessages
{
  objc_initWeak(&location, self);
  v3 = self->_connection;
  connection = self->_connection;
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_195A1A544;
  completion[3] = &unk_1E743ED28;
  objc_copyWeak(&v8, &location);
  v5 = v3;
  v7 = v5;
  nw_connection_receive(connection, 0xCu, 0xCu, completion);

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)processIncomingMessage:(id)message messageType:(unsigned __int8)type messageIdentifier:(unsigned int)identifier
{
  v5 = *&identifier;
  typeCopy = type;
  v98[3] = *MEMORY[0x1E69E9840];
  v7 = sub_195A1B278(message);
  v8 = [v7 objectForKeyedSubscript:@"ids-dm-iri"];
  v9 = [v7 objectForKeyedSubscript:@"ids-dm-ori"];
  v10 = MEMORY[0x1E696AD98];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  v11 = [v10 numberWithDouble:?];
  v12 = [MEMORY[0x1E696AD98] numberWithLongLong:{atomic_fetch_add_explicit(&qword_1EAEDC0A0, 1uLL, memory_order_relaxed) + 1}];
  selfCopy = self;
  v13 = self->_serviceName;
  v90 = v5;
  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v5];
  v15 = [v7 objectForKeyedSubscript:@"ids-dm-spmf"];
  unsignedCharValue = [v15 unsignedCharValue];

  v85 = [v7 objectForKey:@"ids-dm-tc"];
  v89 = [v7 objectForKeyedSubscript:@"ids-dm-cd"];
  v88 = [v7 objectForKeyedSubscript:@"ids-dm-cm"];
  v17 = v7;
  v87 = [v7 objectForKeyedSubscript:@"ids-dm-cpb"];
  v18 = v9;
  v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v20 = *MEMORY[0x1E69A4E70];
  v92 = v13;
  [v19 setObject:v13 forKeyedSubscript:*MEMORY[0x1E69A4E70]];
  v83 = v14;
  [v19 setObject:v14 forKeyedSubscript:*MEMORY[0x1E69A4E68]];
  [v19 setObject:v18 forKeyedSubscript:*MEMORY[0x1E69A4E58]];
  v86 = v8;
  v21 = v8;
  v22 = v11;
  [v19 setObject:v21 forKeyedSubscript:*MEMORY[0x1E69A4E40]];
  [v19 setObject:v12 forKeyedSubscript:*MEMORY[0x1E69A4E20]];
  [v19 setObject:v11 forKeyedSubscript:*MEMORY[0x1E69A4E28]];
  [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4E48]];
  if ((unsignedCharValue & 4) != 0)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4E90]];
  }

  if (unsignedCharValue)
  {
    [v19 setObject:MEMORY[0x1E695E118] forKeyedSubscript:*MEMORY[0x1E69A4E38]];
  }

  v23 = v17;
  if (v85)
  {
    -[IDSDirectMessageConnection updateTrafficClass:](selfCopy, "updateTrafficClass:", [v85 unsignedShortValue]);
    selfCopy->_trafficClassTLVProcessed = 1;
  }

  v24 = selfCopy->_peerID;
  v25 = v24;
  if (typeCopy <= 4)
  {
    if (typeCopy == 1)
    {
      delegate = [(IDSDirectMessageConnection *)selfCopy delegate];
      if (!delegate)
      {
        goto LABEL_34;
      }

      v54 = delegate;
      [(IDSDirectMessageConnection *)selfCopy delegate];
      v56 = v55 = v25;
      v57 = objc_opt_respondsToSelector();

      v25 = v55;
      v23 = v17;

      if ((v57 & 1) == 0)
      {
        goto LABEL_34;
      }

      delegate2 = [(IDSDirectMessageConnection *)selfCopy delegate];
      [delegate2 connection:selfCopy incomingDataFromDirectConnection:v89 withGUID:v18 forTopic:v13 toIdentifier:0 fromID:v25 context:v19];
    }

    else
    {
      if (typeCopy != 3)
      {
        goto LABEL_35;
      }

      delegate3 = [(IDSDirectMessageConnection *)selfCopy delegate];
      if (!delegate3 || (v38 = delegate3, [(IDSDirectMessageConnection *)selfCopy delegate], v39 = v25, v40 = objc_claimAutoreleasedReturnValue(), v41 = objc_opt_respondsToSelector(), v40, v25 = v39, v23 = v17, v38, (v41 & 1) == 0))
      {
LABEL_34:
        v28 = v18;
        [(IDSDirectMessageConnection *)selfCopy sendAckForMessageID:v90 guidToAck:v18];
        v27 = v86;
        goto LABEL_61;
      }

      delegate2 = [(IDSDirectMessageConnection *)selfCopy delegate];
      [delegate2 connection:selfCopy incomingMessageFromDirectConnection:v88 withGUID:v18 forTopic:v13 toIdentifier:0 fromID:v25 context:v19];
    }

LABEL_33:

    goto LABEL_34;
  }

  if (typeCopy == 5)
  {
    delegate4 = [(IDSDirectMessageConnection *)selfCopy delegate];
    if (!delegate4)
    {
      goto LABEL_34;
    }

    v44 = delegate4;
    [(IDSDirectMessageConnection *)selfCopy delegate];
    v46 = v45 = v25;
    v47 = objc_opt_respondsToSelector();

    v25 = v45;
    v23 = v17;

    if ((v47 & 1) == 0)
    {
      goto LABEL_34;
    }

    delegate2 = [(IDSDirectMessageConnection *)selfCopy delegate];
    [delegate2 connection:selfCopy incomingProtobufFromDirectConnection:v87 withGUID:v18 forTopic:v13 toIdentifier:0 fromID:v25 context:v19];
    goto LABEL_33;
  }

  if (typeCopy == 7)
  {
    v79 = v24;
    if (selfCopy->_conciseACKSupported || ([v17 objectForKeyedSubscript:@"ids-dm-afsqnm"], v48 = objc_claimAutoreleasedReturnValue(), v90 = bswap32(objc_msgSend(v48, "unsignedIntValue")), v48, selfCopy->_conciseACKSupported))
    {
      messageIDToMessageDictionary = selfCopy->_messageIDToMessageDictionary;
      v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v90];
      v51 = [(NSMutableDictionary *)messageIDToMessageDictionary objectForKeyedSubscript:v50];

      v52 = v51 == 0;
      if (v51)
      {
        v27 = [v51 objectForKeyedSubscript:@"ids-dm-msg-guid"];
      }

      else
      {
        v27 = v86;
      }
    }

    else
    {
      v52 = 0;
      v27 = v86;
    }

    v58 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
    {
      identifier = selfCopy->_identifier;
      shortServiceNameCString = selfCopy->_shortServiceNameCString;
      if (!shortServiceNameCString)
      {
        shortServiceNameCString = "<unknown>";
      }

      *buf = 134218754;
      identifierCopy = identifier;
      v95 = 2080;
      v96 = shortServiceNameCString;
      v97 = 1024;
      LODWORD(v98[0]) = v90;
      WORD2(v98[0]) = 2112;
      *(v98 + 6) = v27;
      _os_log_impl(&dword_1959FF000, v58, OS_LOG_TYPE_DEFAULT, "[%llu %s] received ack for seq num %u guid: %@", buf, 0x26u);
    }

    v82 = v12;

    if (v27)
    {
      v61 = selfCopy->_messageIDToMessageDictionary;
      [MEMORY[0x1E696AD98] numberWithUnsignedInt:v90];
      v62 = v22;
      v64 = v63 = v27;
      v65 = [(NSMutableDictionary *)v61 objectForKeyedSubscript:v64];

      v27 = v63;
      v22 = v62;
      if (!v65)
      {
        v66 = +[IDSLogging IDSDirectMessagingConnection];
        if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
        {
          v67 = selfCopy->_identifier;
          v68 = selfCopy->_shortServiceNameCString;
          if (!v68)
          {
            v68 = "<unknown>";
          }

          *buf = 134218498;
          identifierCopy = v67;
          v95 = 2080;
          v96 = v68;
          v97 = 2112;
          v98[0] = v27;
          _os_log_impl(&dword_1959FF000, v66, OS_LOG_TYPE_DEFAULT, "[%llu %s] message for guid %@ already timed out", buf, 0x20u);
        }

        v52 = 1;
      }
    }

    v69 = selfCopy->_messageIDToMessageDictionary;
    v70 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v90];
    [(NSMutableDictionary *)v69 setObject:0 forKeyedSubscript:v70];

    if (![(NSMutableDictionary *)selfCopy->_messageIDToMessageDictionary count])
    {
      [(IDSDirectMessageConnection *)selfCopy suspendPendingAckTimer];
      [(IDSDirectMessageConnection *)selfCopy clearPowerAssertion];
    }

    v25 = v79;
    if (!v52)
    {
      delegate5 = [(IDSDirectMessageConnection *)selfCopy delegate];
      if (delegate5)
      {
        v72 = delegate5;
        v91 = v22;
        v73 = v27;
        delegate6 = [(IDSDirectMessageConnection *)selfCopy delegate];
        v75 = objc_opt_respondsToSelector();

        if ((v75 & 1) == 0)
        {
          v27 = v73;
          v22 = v91;
          v25 = v79;
          v12 = v82;
          goto LABEL_60;
        }

        v76 = objc_alloc_init(MEMORY[0x1E695DF90]);

        [v76 setObject:&unk_1F0A29780 forKeyedSubscript:*MEMORY[0x1E69A4E30]];
        [v76 setObject:v79 forKeyedSubscript:*MEMORY[0x1E69A4E50]];
        [v76 setObject:v92 forKeyedSubscript:v20];
        delegate7 = [(IDSDirectMessageConnection *)selfCopy delegate];
        LOBYTE(v78) = 0;
        v27 = v73;
        v25 = v79;
        [delegate7 connection:selfCopy incomingAckWithIdentifier:v73 forTopic:v92 toIdentifier:0 fromIdentifier:v79 hasBeenDeliveredWithContext:v76 isAppAck:v78];

        v19 = v76;
        v22 = v91;
      }
    }

    v12 = v82;
LABEL_60:
    v28 = v18;
    goto LABEL_61;
  }

  if (typeCopy != 9)
  {
LABEL_35:
    v27 = v86;
    goto LABEL_60;
  }

  v81 = v12;
  v26 = +[IDSLogging IDSDirectMessagingConnection];
  v27 = v86;
  v28 = v18;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v29 = selfCopy->_identifier;
    v30 = selfCopy->_shortServiceNameCString;
    if (!v30)
    {
      v30 = "<unknown>";
    }

    *buf = 134218498;
    identifierCopy = v29;
    v95 = 2080;
    v96 = v30;
    v97 = 2112;
    v98[0] = v86;
    _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "[%llu %s] received App-Level ack for: %@", buf, 0x20u);
  }

  delegate8 = [(IDSDirectMessageConnection *)selfCopy delegate];
  if (delegate8)
  {
    v32 = delegate8;
    v33 = v25;
    delegate9 = [(IDSDirectMessageConnection *)selfCopy delegate];
    v35 = objc_opt_respondsToSelector();

    if (v35)
    {
      delegate10 = [(IDSDirectMessageConnection *)selfCopy delegate];
      LOBYTE(v78) = 1;
      v25 = v33;
      [delegate10 connection:selfCopy incomingAckWithIdentifier:v86 forTopic:v13 toIdentifier:0 fromIdentifier:v33 hasBeenDeliveredWithContext:v19 isAppAck:v78];

      v12 = v81;
      v28 = v18;
    }

    else
    {
      v12 = v81;
      v28 = v18;
      v25 = v33;
    }
  }

  else
  {
    v12 = v81;
  }

  v23 = v17;
LABEL_61:
}

- (void)sendAckForMessageID:(unsigned int)d guidToAck:(id)ack
{
  v4 = *&d;
  v20[1] = *MEMORY[0x1E69E9840];
  ackCopy = ack;
  v7 = objc_alloc_init(MEMORY[0x1E69A53E0]);
  v8 = v7;
  if (!self->_conciseACKSupported)
  {
    [v7 setPeerResponseIdentifier:ackCopy];
  }

  v19 = @"ids-dm-snd-params";
  v20[0] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v10 = [(IDSDirectMessageConnection *)self createDispatchDataForMessageSend:v9 isAck:1 ackMessageId:v4];
  objc_initWeak(&location, self);
  connection = self->_connection;
  completion[0] = MEMORY[0x1E69E9820];
  completion[1] = 3221225472;
  completion[2] = sub_195A1B740;
  completion[3] = &unk_1E743ED50;
  objc_copyWeak(&v16, &location);
  v12 = *MEMORY[0x1E6977E88];
  v13 = ackCopy;
  v15 = v13;
  v17 = v4;
  nw_connection_send(connection, v10, v12, 0, completion);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

- (void)sendAppAckWithGUID:(id)d
{
  v21[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B27F6C();
    }
  }

  v8 = objc_alloc_init(MEMORY[0x1E69A53E0]);
  dictionary = [MEMORY[0x1E695DF20] dictionary];
  [v8 setMessage:dictionary];

  [v8 setPeerResponseIdentifier:dCopy];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:244];
  [v8 setCommand:v10];

  v20 = @"ids-dm-snd-params";
  v21[0] = v8;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  v12 = [(IDSDirectMessageConnection *)self createDispatchDataForMessageSend:v11 isAck:0 ackMessageId:0];
  objc_initWeak(&location, self);
  connection = self->_connection;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = sub_195A1BA94;
  v16[3] = &unk_1E743ED78;
  objc_copyWeak(&v18, &location);
  v14 = *MEMORY[0x1E6977E88];
  v15 = dCopy;
  v17 = v15;
  nw_connection_send(connection, v12, v14, 0, v16);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (unsigned)getMessageTypeForFirstMessage
{
  if (![(NSMutableArray *)self->_connectionMessageSendQueue count])
  {
    return 0;
  }

  firstObject = [(NSMutableArray *)self->_connectionMessageSendQueue firstObject];
  v4 = [firstObject objectForKeyedSubscript:@"ids-dm-snd-params"];
  message = [v4 message];

  if (message)
  {
    v6 = 3;
  }

  else
  {
    data = [v4 data];

    if (data)
    {
      v6 = 1;
    }

    else
    {
      protobuf = [v4 protobuf];

      if (protobuf)
      {
        v6 = 5;
      }

      else
      {
        command = [v4 command];

        if (command)
        {
          command2 = [v4 command];
          if (command2 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            if ([command2 integerValue] == 244)
            {
              v6 = 9;
            }

            else
            {
              v6 = 0;
            }
          }

          else
          {
            v6 = 0;
          }
        }

        else
        {
          v6 = 0;
        }
      }
    }
  }

  return v6;
}

- (id)createDispatchDataForMessageSend:(id)send isAck:(BOOL)ack ackMessageId:(unsigned int)add
{
  v61 = *MEMORY[0x1E69E9840];
  sendCopy = send;
  v9 = sendCopy;
  if (!ack)
  {
    v10 = [sendCopy objectForKeyedSubscript:@"ids-dm-msg-id"];
    add = [v10 unsignedIntValue];
  }

  if (!add)
  {
    add = atomic_fetch_add(dword_1EAEDA920, 1u);
  }

  HIDWORD(v51) = add;
  v54 = v9;
  v11 = [v9 objectForKeyedSubscript:@"ids-dm-snd-params"];
  data = [v11 data];
  message = [v11 message];
  protobuf = [v11 protobuf];
  messageUUID = [v11 messageUUID];
  peerResponseIdentifier = [v11 peerResponseIdentifier];
  if (ack)
  {
    LODWORD(v51) = 7;
    goto LABEL_19;
  }

  command = [v11 command];
  if (command && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [command integerValue] == 244)
  {
    v17 = 9;
  }

  else if (message)
  {
    v17 = 3;
  }

  else if (data)
  {
    v17 = 1;
  }

  else
  {
    if (!protobuf)
    {
      LODWORD(v51) = 0;
      goto LABEL_18;
    }

    v17 = 5;
  }

  LODWORD(v51) = v17;
LABEL_18:

LABEL_19:
  v18 = objc_alloc_init(MEMORY[0x1E695DF88]);
  v58 = 0;
  if ([v11 expectsPeerResponse])
  {
    v58 = 1;
    if (([v11 wantsAppAck] & 1) == 0)
    {
LABEL_25:
      LOBYTE(v57) = 3;
      v60[0] = 0x1000000;
      v20 = v18;
      [v20 appendBytes:&v57 length:1];
      [v20 appendBytes:v60 length:4];
      [v20 appendBytes:&v58 length:1];

      goto LABEL_26;
    }

    v19 = 5;
LABEL_24:
    v58 = v19;
    goto LABEL_25;
  }

  if ([v11 wantsAppAck])
  {
    v19 = 4;
    goto LABEL_24;
  }

LABEL_26:
  v55 = message;
  if (peerResponseIdentifier)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v21 = [peerResponseIdentifier dataUsingEncoding:4];
      v22 = [v21 length];
      bytes = [v21 bytes];
      LOBYTE(v57) = 4;
      v60[0] = bswap32(v22);
      v24 = v18;
      [v24 appendBytes:&v57 length:1];
      [v24 appendBytes:v60 length:4];
      [v24 appendBytes:bytes length:v22];

      message = v55;
    }
  }

  if (messageUUID)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v25 = [messageUUID length];
      bytes2 = [messageUUID bytes];
      LOBYTE(v57) = 5;
      v60[0] = bswap32(v25);
      v27 = v18;
      [v27 appendBytes:&v57 length:1];
      [v27 appendBytes:v60 length:4];
      [v27 appendBytes:bytes2 length:v25];
    }
  }

  if (data)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = [data length];
      bytes3 = [data bytes];
      LOBYTE(v57) = 6;
      v60[0] = bswap32(v28);
      v30 = v18;
      [v30 appendBytes:&v57 length:1];
      [v30 appendBytes:v60 length:4];
      [v30 appendBytes:bytes3 length:v28];
    }
  }

  if (message)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plistData = [message plistData];
      v32 = [plistData length];
      bytes4 = [plistData bytes];
      LOBYTE(v57) = 7;
      v60[0] = bswap32(v32);
      v34 = v18;
      [v34 appendBytes:&v57 length:1];
      [v34 appendBytes:v60 length:4];
      [v34 appendBytes:bytes4 length:v32];
    }
  }

  if (protobuf)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      plistData2 = [protobuf plistData];
      v36 = [plistData2 length];
      bytes5 = [plistData2 bytes];
      LOBYTE(v57) = 8;
      v60[0] = bswap32(v36);
      v38 = v18;
      [v38 appendBytes:&v57 length:1];
      [v38 appendBytes:v60 length:4];
      [v38 appendBytes:bytes5 length:v36];
    }
  }

  if (!self->_trafficClassTLVProcessed && !self->_peerSupportsDeviceConnection)
  {
    v57 = bswap32(LOWORD(self->_trafficClassToUse)) >> 16;
    v59 = 10;
    v60[0] = 0x2000000;
    v39 = v18;
    [v39 appendBytes:&v59 length:1];
    [v39 appendBytes:v60 length:4];
    [v39 appendBytes:&v57 length:2];

    self->_trafficClassTLVProcessed = 1;
  }

  v40 = [v18 length];
  queueOneIdentifier = [v11 queueOneIdentifier];

  if (queueOneIdentifier)
  {
    queueOneToMessageIDDictionary = self->_queueOneToMessageIDDictionary;
    queueOneIdentifier2 = [v11 queueOneIdentifier];
    [(NSMutableDictionary *)queueOneToMessageIDDictionary setObject:0 forKeyedSubscript:queueOneIdentifier2];
  }

  v44 = bswap32(v40);
  v45 = bswap32(v53);
  bzero(v60, 0x800uLL);
  v46 = [v18 length];
  v47 = (v46 + 12);
  v48 = v60;
  if (v47 >= 0x801)
  {
    v48 = malloc_type_malloc((v46 + 12), 0x8F9F2DECuLL);
  }

  *v48 = 1;
  *(v48 + 1) = v52;
  *(v48 + 1) = 0;
  v48[1] = v45;
  v48[2] = v44;
  memcpy(v48 + 3, [v18 bytes], objc_msgSend(v18, "length"));
  v49 = dispatch_data_create(v48, v47, self->_connectionQueue, 0);
  if (v48 != v60)
  {
    free(v48);
  }

  return v49;
}

- (void)cancelPendingAckTimer
{
  [(IDSDirectMessageConnection *)self resumePendingAckTimer];
  pendingAckTimer = self->_pendingAckTimer;
  if (pendingAckTimer)
  {
    dispatch_source_cancel(pendingAckTimer);
    v4 = self->_pendingAckTimer;
    self->_pendingAckTimer = 0;
  }

  self->_pendingAckTimerSuspended = 0;
}

- (void)resumePendingAckTimer
{
  if (self->_pendingAckTimerSuspended)
  {
    pendingAckTimer = self->_pendingAckTimer;
    if (pendingAckTimer)
    {
      dispatch_resume(pendingAckTimer);
      self->_pendingAckTimerSuspended = 0;
    }
  }
}

- (void)suspendPendingAckTimer
{
  if (!self->_pendingAckTimerSuspended)
  {
    pendingAckTimer = self->_pendingAckTimer;
    if (pendingAckTimer)
    {
      dispatch_suspend(pendingAckTimer);
      self->_pendingAckTimerSuspended = 1;
    }
  }
}

- (void)failedToSendMessage:(id)message responseCode:(int64_t)code
{
  v20 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  v7 = messageCopy;
  if (messageCopy)
  {
    v8 = [messageCopy objectForKeyedSubscript:@"ids-dm-msg-guid"];
    v9 = [v7 objectForKeyedSubscript:@"ids-dm-msg-id"];
    v10 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 138412546;
      v17 = v8;
      v18 = 2048;
      codeCopy = code;
      _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "Message %@ failed to send due to %ld", &v16, 0x16u);
    }

    v11 = [(NSMutableDictionary *)self->_messageIDToMessageDictionary objectForKeyedSubscript:v9];

    if (v11)
    {
      delegate = [(IDSDirectMessageConnection *)self delegate];

      if (delegate)
      {
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        [WeakRetained connection:self messageSendFailed:v8 responseCode:code];
      }

      [(NSMutableDictionary *)self->_messageIDToMessageDictionary setObject:0 forKeyedSubscript:v9];
    }

    [(NSMutableArray *)self->_connectionMessageSendQueue removeObject:v7];
    v14 = [v7 objectForKeyedSubscript:@"ids-dm-snd-params"];
    queueOneIdentifier = [v14 queueOneIdentifier];
    if (queueOneIdentifier)
    {
      [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:0 forKeyedSubscript:queueOneIdentifier];
    }

    [(IDSDirectMessageConnection *)self clearPowerAssertion];
  }
}

- (void)sendMessageWithParameters:(id)parameters options:(id)options
{
  v59 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  optionsCopy = options;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B28274();
    }
  }

  if ([parametersCopy priority] == 300 && (-[IDSServiceProperties allowUrgentMessages](self->_serviceProperties, "allowUrgentMessages") & 1) == 0)
  {
    [parametersCopy setPriority:200];
    v11 = +[IDSLogging IDSDirectMessagingConnection];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      identifier = self->_identifier;
      if (self->_shortServiceNameCString)
      {
        shortServiceNameCString = self->_shortServiceNameCString;
      }

      else
      {
        shortServiceNameCString = "<unknown>";
      }

      identifier = [parametersCopy identifier];
      serviceName = self->_serviceName;
      *buf = 134218754;
      v52 = identifier;
      v53 = 2080;
      v54 = shortServiceNameCString;
      v55 = 2112;
      v56 = identifier;
      v57 = 2112;
      v58 = serviceName;
      _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "[%llu %s] Downgrading priority of message with guid %@ to Default from Urgent, client %@ is not configured to send urgent messages", buf, 0x2Au);
    }
  }

  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v16 setObject:parametersCopy forKeyedSubscript:@"ids-dm-snd-params"];
  [v16 setObject:optionsCopy forKeyedSubscript:@"ids-dm-options"];
  v17 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:mach_continuous_time()];
  [v16 setObject:v17 forKeyedSubscript:@"ids-dm-snd-time"];

  v18 = MEMORY[0x1E696AD98];
  atomic_fetch_add(dword_1EAEDA920, 1u);
  v19 = [v18 numberWithUnsignedInt:?];
  [v16 setObject:v19 forKeyedSubscript:@"ids-dm-msg-id"];
  identifier2 = [parametersCopy identifier];
  [v16 setObject:identifier2 forKeyedSubscript:@"ids-dm-msg-guid"];

  [(NSMutableDictionary *)self->_messageIDToMessageDictionary setObject:v16 forKeyedSubscript:v19];
  v21 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = self->_identifier;
    if (self->_shortServiceNameCString)
    {
      v23 = self->_shortServiceNameCString;
    }

    else
    {
      v23 = "<unknown>";
    }

    identifier3 = [parametersCopy identifier];
    *buf = 134218754;
    v52 = v22;
    v53 = 2080;
    v54 = v23;
    v55 = 2112;
    v56 = identifier3;
    v57 = 2112;
    v58 = optionsCopy;
    _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "[%llu %s] Client requesting to send message with guid %@ options %@", buf, 0x2Au);
  }

  if (!self->_connectionMessageSendQueue)
  {
    v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
    connectionMessageSendQueue = self->_connectionMessageSendQueue;
    self->_connectionMessageSendQueue = v25;
  }

  _internal = [(IDSDevice *)self->_device _internal];
  if (([_internal relationship] & 2) == 0)
  {

    goto LABEL_23;
  }

  wantsTinkerDevices = [(IDSServiceProperties *)self->_serviceProperties wantsTinkerDevices];

  if (wantsTinkerDevices)
  {
LABEL_23:
    if (!self->_trafficClassInitialized)
    {
      *&self->_idsPriorityToUse = vdupq_n_s64(0xC8uLL);
      if ([parametersCopy priority] == 300)
      {
        self->_trafficClassToUse = 700;
        self->_idsPriorityToUse = 300;
        self->_trafficClassApplied = [parametersCopy priority];
      }

      if ([parametersCopy priority] == 100)
      {
        self->_trafficClassToUse = 200;
        self->_idsPriorityToUse = 100;
        self->_trafficClassApplied = [parametersCopy priority];
      }

      self->_trafficClassInitialized = 1;
    }

    if (!self->_pendingAckTimer)
    {
      v29 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_connectionQueue);
      v30 = dispatch_time(0, 2000000000);
      dispatch_source_set_timer(v29, v30, 0x77359400uLL, 0x5F5E100uLL);
      objc_initWeak(buf, self);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = sub_195A1D138;
      handler[3] = &unk_1E743EDC8;
      objc_copyWeak(&v50, buf);
      v31 = v29;
      v49 = v31;
      dispatch_source_set_event_handler(v31, handler);
      dispatch_resume(v31);
      pendingAckTimer = self->_pendingAckTimer;
      self->_pendingAckTimer = v31;
      v33 = v31;

      self->_pendingAckTimerSuspended = 0;
      objc_destroyWeak(&v50);
      objc_destroyWeak(buf);
    }

    [(IDSDirectMessageConnection *)self resumePendingAckTimer];
    queueOneIdentifier = [parametersCopy queueOneIdentifier];
    if (queueOneIdentifier)
    {
      v35 = [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary objectForKeyedSubscript:queueOneIdentifier];
      if (v35)
      {
        v36 = v35;
        v37 = [(NSMutableDictionary *)self->_messageIDToMessageDictionary objectForKeyedSubscript:v35];
        if (v37)
        {
          v38 = [(NSMutableArray *)self->_connectionMessageSendQueue indexOfObject:v37];
          if (v38 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v40 = v38;
            v41 = +[IDSLogging IDSDirectMessagingConnection];
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              v42 = self->_shortServiceNameCString;
              v46 = self->_identifier;
              if (!v42)
              {
                v42 = "<unknown>";
              }

              v45 = v42;
              v47 = [v37 objectForKeyedSubscript:@"ids-dm-msg-guid"];
              identifier4 = [parametersCopy identifier];
              *buf = 134218754;
              v52 = v46;
              v53 = 2080;
              v54 = v45;
              v55 = 2112;
              v56 = v47;
              v57 = 2112;
              v58 = identifier4;
              _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "[%llu %s] Replacing guid: %@ with guid: %@", buf, 0x2Au);
            }

            [(NSMutableArray *)self->_connectionMessageSendQueue replaceObjectAtIndex:v40 withObject:v16];
            [(NSMutableDictionary *)self->_messageIDToMessageDictionary setObject:0 forKeyedSubscript:v36];

            v43 = [v16 objectForKeyedSubscript:@"ids-dm-msg-id"];
            [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:v43 forKeyedSubscript:queueOneIdentifier];

            goto LABEL_40;
          }
        }

        v39 = [v16 objectForKeyedSubscript:@"ids-dm-msg-id"];
        [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:v39 forKeyedSubscript:queueOneIdentifier];
      }

      else
      {
        v36 = [v16 objectForKeyedSubscript:@"ids-dm-msg-id"];
        [(NSMutableDictionary *)self->_queueOneToMessageIDDictionary setObject:v36 forKeyedSubscript:queueOneIdentifier];
      }
    }

    [(NSMutableArray *)self->_connectionMessageSendQueue addObject:v16];
LABEL_40:
    [(IDSDirectMessageConnection *)self dequeueMessages];

    goto LABEL_41;
  }

  [(IDSDirectMessageConnection *)self failedToSendMessage:v16 responseCode:32];
LABEL_41:
}

- (void)dequeueMessages
{
  if ([(IDSDirectMessageConnection *)self canUseDirectMessaging])
  {
    [(IDSDirectMessageConnection *)self setupConnectionIfApplicable];
    connectionMessageSendQueue = self->_connectionMessageSendQueue;
    if (connectionMessageSendQueue)
    {
      if ([(NSMutableArray *)connectionMessageSendQueue count]&& self->_connectionState == 3 && self->_peerIsConnected)
      {
        [(IDSDirectMessageConnection *)self getPowerAssertion];
        firstObject = [(NSMutableArray *)self->_connectionMessageSendQueue firstObject];
        v5 = [firstObject objectForKeyedSubscript:@"ids-dm-msg-id"];
        unsignedIntValue = [v5 unsignedIntValue];
        v7 = [firstObject objectForKeyedSubscript:@"ids-dm-snd-params"];
        identifier = [v7 identifier];
        objc_initWeak(&location, self);
        if ([v7 requireBluetooth] && !self->_peerIsNearby)
        {
          [(NSMutableArray *)self->_connectionMessageSendQueue removeFirstObject];
          connectionQueue = self->_connectionQueue;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A1D694;
          block[3] = &unk_1E743EDC8;
          objc_copyWeak(&v20, &location);
          v19 = firstObject;
          dispatch_async(connectionQueue, block);

          objc_destroyWeak(&v20);
        }

        else
        {
          v9 = [(IDSDirectMessageConnection *)self createDispatchDataForMessageSend:firstObject isAck:0 ackMessageId:0];
          size = dispatch_data_get_size(v9);
          [(NSMutableArray *)self->_connectionMessageSendQueue removeFirstObject];
          connection = self->_connection;
          v12 = *MEMORY[0x1E6977E88];
          completion[0] = MEMORY[0x1E69E9820];
          completion[1] = 3221225472;
          completion[2] = sub_195A1D6F4;
          completion[3] = &unk_1E743EDF0;
          objc_copyWeak(v16, &location);
          v17 = unsignedIntValue;
          v15 = identifier;
          v16[1] = size;
          nw_connection_send(connection, v9, v12, 0, completion);

          objc_destroyWeak(v16);
        }

        objc_destroyWeak(&location);
      }
    }
  }
}

- (void)getPowerAssertion
{
  v14 = *MEMORY[0x1E69E9840];
  if (!self->_assertion)
  {
    if (self->_powerAssertionOptions)
    {
      v3 = objc_alloc(MEMORY[0x1E69A6130]);
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ids-dm-%@", self->_serviceName];
      v4 = [v3 initWithIdentifier:40.0 timeoutSec:? properties:?];
      assertion = self->_assertion;
      self->_assertion = v4;
    }

    else
    {
      v6 = +[IDSLogging IDSDirectMessagingConnection];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        identifier = self->_identifier;
        shortServiceNameCString = self->_shortServiceNameCString;
        if (!shortServiceNameCString)
        {
          shortServiceNameCString = "<unknown>";
        }

        *buf = 134218242;
        v11 = identifier;
        v12 = 2080;
        v13 = shortServiceNameCString;
        _os_log_impl(&dword_1959FF000, v6, OS_LOG_TYPE_DEFAULT, "[%llu %s] Error! powerAssertionOptions is nil. Cannot get power assertion.", buf, 0x16u);
      }
    }
  }
}

- (void)clearPowerAssertion
{
  assertion = self->_assertion;
  if (assertion)
  {
    messageIDToMessageDictionary = self->_messageIDToMessageDictionary;
    if (messageIDToMessageDictionary)
    {
      messageIDToMessageDictionary = [(NSMutableDictionary *)messageIDToMessageDictionary count];
      if (messageIDToMessageDictionary)
      {
        return;
      }

      assertion = self->_assertion;
    }

    self->_assertion = 0;

    MEMORY[0x1EEE66BB8](messageIDToMessageDictionary, assertion);
  }
}

- (void)startPowerLogReportTimer
{
  reporterTimer = self->_reporterTimer;
  if (reporterTimer)
  {
    dispatch_source_cancel(reporterTimer);
  }

  v4 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_connectionQueue);
  v5 = self->_reporterTimer;
  self->_reporterTimer = v4;

  v6 = self->_reporterTimer;
  v7 = dispatch_time(0, 100000000);
  dispatch_source_set_timer(v6, v7, 1000000000 * self->_directMessagingReportStatsMSEC, 0x5F5E100uLL);
  objc_initWeak(&location, self);
  v8 = self->_reporterTimer;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A1DB08;
  v9[3] = &unk_1E743EE18;
  objc_copyWeak(&v10, &location);
  dispatch_source_set_event_handler(v8, v9);
  dispatch_resume(self->_reporterTimer);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

- (void)logConnectionStatisticsInPowerDictionary
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc(MEMORY[0x1E695DF20]);
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"ids-dm-%@", self->_serviceName];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_outgoingMessageBytes];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_outgoingMessageCount];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_incomingMessageBytes];
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_incomingMessageCount];
  v9 = [v3 initWithObjectsAndKeys:{v4, @"IDSLocalStatisticsCategory", v5, @"IDSLocalOutgoingMessageBytes", v6, @"IDSLocalOutgoingMessages", v7, @"IDSLocalIncomingMessageBytes", v8, @"IDSLocalIncomingMessages", 0}];

  IDSPowerLogDictionary();
  v10 = +[IDSLogging IDSDirectMessagingConnection];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    identifier = self->_identifier;
    shortServiceNameCString = self->_shortServiceNameCString;
    if (!shortServiceNameCString)
    {
      shortServiceNameCString = "<unknown>";
    }

    *buf = 134218498;
    v14 = identifier;
    v15 = 2080;
    v16 = shortServiceNameCString;
    v17 = 2112;
    v18 = v9;
    _os_log_impl(&dword_1959FF000, v10, OS_LOG_TYPE_DEFAULT, "[%llu %s] logConnectionStatisticsInPowerDictionary: %@", buf, 0x20u);
  }
}

- (IDSDirectMessageConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end