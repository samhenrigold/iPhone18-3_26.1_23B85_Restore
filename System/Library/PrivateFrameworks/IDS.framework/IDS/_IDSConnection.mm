@interface _IDSConnection
- (BOOL)_isAccountInValidRegistrationStateToAcceptMessages;
- (BOOL)_isDestinationSingleLocalAddress:(id)address;
- (BOOL)_shouldAcceptIncomingType:(id)type forTopic:(id)topic localURI:(id)i remoteURI:(id)rI validateAliases:(BOOL)aliases guid:(id)guid;
- (BOOL)isActive;
- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitation:(id)invitation toDestination:(id)destination priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendInvitationUpdate:(id)update toDestination:(id)destination priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendProtobuf:(id)protobuf toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error;
- (BOOL)sendServerMessage:(id)message command:(id)command;
- (IDSAccount)account;
- (_IDSConnection)initWithAccount:(id)account commands:(id)commands indirectDelegateCallouts:(BOOL)callouts delegateContext:(id)context;
- (id)_activeDevice;
- (id)_defaultPairedDevice;
- (id)_init;
- (id)_sendWithParameters:(id)parameters options:(id)options loggingType:(id)type loggingDataSize:(unint64_t)size;
- (id)daemonListener;
- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group;
- (void)_connect;
- (void)_handleLastCallForPendingIdentifier:(id)identifier callbackID:(id)d;
- (void)_replaceSentinelInSendParameters:(id)parameters withCurrentActiveDevice:(id)device;
- (void)_resendPendingSends;
- (void)_sendMissingMessageMetric:(id)metric;
- (void)_setTemporaryMessageContext:(id)context;
- (void)accessoryDataReceived:(id)received withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)accessoryReportMessageReceived:(id)received accessoryID:(id)d controllerID:(id)iD withGUID:(id)uID forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)self0;
- (void)account:(id)account connectedDevicesChanged:(id)changed;
- (void)account:(id)account devicesChanged:(id)changed;
- (void)account:(id)account isActiveChanged:(BOOL)changed;
- (void)account:(id)account nearbyDevicesChanged:(id)changed;
- (void)addDelegate:(id)delegate queue:(id)queue completion:(id)completion;
- (void)checkTransportLogWithReason:(int64_t)reason;
- (void)connection:(id)connection incomingAckWithIdentifier:(id)identifier forTopic:(id)topic toIdentifier:(id)toIdentifier fromIdentifier:(id)fromIdentifier hasBeenDeliveredWithContext:(id)context isAppAck:(BOOL)ack;
- (void)connection:(id)connection incomingDataFromDirectConnection:(id)directConnection withGUID:(id)d forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)iD context:(id)context;
- (void)connection:(id)connection incomingGUIDAckFromDirectConnection:(id)directConnection;
- (void)connection:(id)connection incomingMessageFromDirectConnection:(id)directConnection withGUID:(id)d forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)iD context:(id)context;
- (void)connection:(id)connection incomingProtobufFromDirectConnection:(id)directConnection withGUID:(id)d forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)iD context:(id)context;
- (void)connection:(id)connection messageSendFailed:(id)failed responseCode:(int64_t)code;
- (void)createDirectMessageConnectionIfNeeded;
- (void)daemonConnected;
- (void)dataReceived:(id)received withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)dealloc;
- (void)didCancelMessageWithSuccess:(BOOL)success onAccount:(id)account error:(id)error identifier:(id)identifier;
- (void)didFlushCacheForService:(id)service remoteURI:(id)i fromURI:(id)rI guid:(id)guid;
- (void)didFlushCacheFromKTPeerUpdateForService:(id)service peerURI:(id)i;
- (void)didSendOpportunisticDataWithIdentifier:(id)identifier onAccount:(id)account toIDs:(id)ds;
- (void)incomingInvitation:(id)invitation withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)incomingInvitationUpdate:(id)update withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)inviteDroppedWithPayload:(id)payload forTopic:(id)topic sessionID:(id)d toIdentifier:(id)identifier fromID:(id)iD error:(id)error;
- (void)messageIdentifier:(id)identifier alternateCallbackID:(id)d forAccount:(id)account willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations;
- (void)messageIdentifier:(id)identifier forTopic:(id)topic toURI:(id)i fromURI:(id)rI hasBeenDeliveredWithContext:(id)context;
- (void)messageIdentifierInner:(id)inner alternateCallbackID:(id)d forAccount:(id)account updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call context:(id)context isDirectMessage:(BOOL)self0;
- (void)messageReceived:(id)received withGUID:(id)d withPayload:(id)payload forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)opportunisticDataReceived:(id)received withIdentifier:(id)identifier fromURI:(id)i context:(id)context;
- (void)pendingIncomingMessageWithGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)pendingResourceWithMetadata:(id)metadata guid:(id)guid forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)protobufReceived:(id)received withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context;
- (void)receivedBatchMessage:(id)message forTopic:(id)topic;
- (void)receivedGroupSessionParticipantDataUpdate:(id)update forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)d;
- (void)receivedGroupSessionParticipantUpdate:(id)update forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)d context:(id)context;
- (void)receivedMetadataForDirectMessaging:(id)messaging;
- (void)removeDelegate:(id)delegate;
- (void)sessionInvitationReceivedWithPayload:(id)payload forTopic:(id)topic sessionID:(id)d toIdentifier:(id)identifier fromID:(id)iD transportType:(id)type;
- (void)setDelegateCapabilities:(unsigned int)capabilities;
- (void)xpcObject:(id)object objectContext:(id)context;
@end

@implementation _IDSConnection

- (IDSAccount)account
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EAF8();
    }
  }

  account = self->_account;

  return account;
}

- (id)_activeDevice
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  account = [(_IDSConnection *)self account];
  _internal = [account _internal];
  devices = [_internal devices];

  v5 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isActive])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)daemonConnected
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F814();
    }
  }

  [(_IDSConnection *)self _resendPendingSends];
}

- (void)_resendPendingSends
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F774();
    }
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = self->_pendingSends;
  v6 = [(IMOrderedMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v22;
    *&v7 = 138412802;
    v19 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        [v11 setDaemonDeathResend:{1, v19}];
        v12 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          identifier = [v11 identifier];
          alternateCallbackID = [v11 alternateCallbackID];
          *buf = v19;
          selfCopy = self;
          v27 = 2112;
          v28 = identifier;
          v29 = 2112;
          v30 = alternateCallbackID;
          _os_log_impl(&dword_1959FF000, v12, OS_LOG_TYPE_DEFAULT, "%@ resending %@ alternate %@ due to daemon disconnection.", buf, 0x20u);
        }

        dictionaryRepresentation = [v11 dictionaryRepresentation];
        v16 = [dictionaryRepresentation copy];

        daemonController = [(_IDSConnection *)self daemonController];
        [daemonController setCurXPCMessagePriority:{objc_msgSend(v11, "priority")}];

        daemonController2 = [(_IDSConnection *)self daemonController];
        [daemonController2 sendMessageWithSendParameters:v16];
      }

      v8 = [(IMOrderedMutableDictionary *)obj countByEnumeratingWithState:&v21 objects:v31 count:16];
    }

    while (v8);
  }
}

- (void)_connect
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F5E4();
    }
  }

  _internal = [(IDSAccount *)self->_account _internal];
  serviceName = [_internal serviceName];

  if (!serviceName)
  {
    v13 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F6FC();
    }

    goto LABEL_12;
  }

  daemonController = [(_IDSConnection *)self daemonController];
  v9 = [daemonController hasListenerForID:self->_serviceToken];

  if ((v9 & 1) == 0)
  {
    daemonController2 = [(_IDSConnection *)self daemonController];
    serviceToken = self->_serviceToken;
    v12 = [MEMORY[0x1E695DFD8] setWithObject:serviceName];
    LOBYTE(serviceToken) = [daemonController2 addListenerID:serviceToken services:v12 commands:self->_commands];

    if ((serviceToken & 1) == 0)
    {
      v13 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        sub_195B2F684();
      }

LABEL_12:
    }
  }
}

- (id)daemonListener
{
  v2 = +[IDSDaemonController sharedInstance];
  listener = [v2 listener];

  return listener;
}

- (BOOL)_isAccountInValidRegistrationStateToAcceptMessages
{
  account = [(_IDSConnection *)self account];
  _internal = [account _internal];

  isActive = [_internal isActive];
  if ([_internal isInTransientRegistrationState])
  {
    registrationCertificate = [_internal registrationCertificate];
    if (registrationCertificate)
    {
      primaryServiceName = [_internal primaryServiceName];
      v8 = [(_IDSConnection *)self _canServiceNameAcceptMessagesInTransientRegistrationState:primaryServiceName];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 | isActive;
}

- (id)_init
{
  v3.receiver = self;
  v3.super_class = _IDSConnection;
  return [(_IDSConnection *)&v3 init];
}

- (_IDSConnection)initWithAccount:(id)account commands:(id)commands indirectDelegateCallouts:(BOOL)callouts delegateContext:(id)context
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  commandsCopy = commands;
  contextCopy = context;
  if (_IDSRunningInDaemon())
  {
    v14 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_195B2E9C8(self, v14);
    }

    selfCopy = 0;
  }

  else
  {
    v16 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v16 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B2E928();
      }
    }

    v38.receiver = self;
    v38.super_class = _IDSConnection;
    v19 = [(_IDSConnection *)&v38 init];
    if (v19)
    {
      v20 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        _internal = [accountCopy _internal];
        serviceName = [_internal serviceName];
        *buf = 134218242;
        v40 = v19;
        v41 = 2112;
        v42 = serviceName;
        _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "_IDSConnection - initing {self: %p, account.serviceName: %@}", buf, 0x16u);
      }

      v19->_indirectDelegateCallouts = callouts;
      v23 = [MEMORY[0x1E696AEC0] copyStringGUIDForObject:v19];
      serviceToken = v19->_serviceToken;
      v19->_serviceToken = v23;

      *&v19->_incomingMessageLoggingSequence = 0;
      v25 = [commandsCopy copy];
      commands = v19->_commands;
      v19->_commands = v25;

      objc_storeStrong(&v19->_account, account);
      _internal2 = [(IDSAccount *)v19->_account _internal];
      v28 = +[IDSInternalQueueController sharedInstance];
      queue = [v28 queue];
      [_internal2 addDelegate:v19 queue:queue];

      v30 = [MEMORY[0x1E6995700] weakRefWithObject:contextCopy];
      delegateContext = v19->_delegateContext;
      v19->_delegateContext = v30;

      v19->_wakingDowngradeCount = 0;
      daemonListener = [(_IDSConnection *)v19 daemonListener];
      [daemonListener addHandler:v19];

      [(_IDSConnection *)v19 _connect];
      directMessageConnection = v19->_directMessageConnection;
      v19->_directMessageConnection = 0;

      directMessagingMetadata = v19->_directMessagingMetadata;
      v19->_directMessagingMetadata = 0;

      mEMORY[0x1E69A6160] = [MEMORY[0x1E69A6160] sharedInstance];
      systemMonitor = v19->_systemMonitor;
      v19->_systemMonitor = mEMORY[0x1E69A6160];
    }

    self = v19;
    selfCopy = self;
  }

  return selfCopy;
}

- (void)dealloc
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_1959FF000, v3, OS_LOG_TYPE_INFO, "Account delegate has been cleaned up via weak references %p", buf, 0xCu);
  }

  daemonController = [(_IDSConnection *)self daemonController];
  [daemonController removeListenerID:self->_serviceToken];

  daemonListener = [(_IDSConnection *)self daemonListener];
  [daemonListener removeHandler:self];

  v6.receiver = self;
  v6.super_class = _IDSConnection;
  [(_IDSConnection *)&v6 dealloc];
}

- (void)createDirectMessageConnectionIfNeeded
{
  if (_IDSSupportsDirectMessaging())
  {
    v3 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v3 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B2EA58();
      }
    }

    if (!self->_directMessageConnection)
    {
      v6 = [IDSDirectMessageConnection alloc];
      _internal = [(IDSAccount *)self->_account _internal];
      serviceName = [_internal serviceName];
      v9 = +[IDSInternalQueueController sharedInstance];
      queue = [v9 queue];
      v11 = [(IDSDirectMessageConnection *)v6 initWithServiceName:serviceName queue:queue delegate:self];
      directMessageConnection = self->_directMessageConnection;
      self->_directMessageConnection = v11;

      directMessagingMetadata = self->_directMessagingMetadata;
      if (!directMessagingMetadata || ![(NSDictionary *)directMessagingMetadata count])
      {
        daemonListener = [(_IDSConnection *)self daemonListener];
        getDirectMessagingMetadataDictionary = [daemonListener getDirectMessagingMetadataDictionary];
        v16 = self->_directMessagingMetadata;
        self->_directMessagingMetadata = getDirectMessagingMetadataDictionary;
      }

      if ([(NSDictionary *)self->_directMessagingMetadata count])
      {
        [(_IDSConnection *)self receivedMetadataForDirectMessaging:self->_directMessagingMetadata];
      }

      v17 = self->_directMessageConnection;
      _internal2 = [(IDSAccount *)self->_account _internal];
      connectedDevices = [_internal2 connectedDevices];
      [(IDSDirectMessageConnection *)v17 updateConnectedDevices:connectedDevices];
    }
  }
}

- (BOOL)isActive
{
  v3 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v3 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EB98();
    }
  }

  _internal = [(IDSAccount *)self->_account _internal];
  isActive = [_internal isActive];

  return isActive;
}

- (id)_defaultPairedDevice
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  account = [(_IDSConnection *)self account];
  _internal = [account _internal];
  devices = [_internal devices];

  v5 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = *v11;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(devices);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        if ([v8 isDefaultPairedDevice])
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [devices countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v5;
}

- (void)addDelegate:(id)delegate queue:(id)queue completion:(id)completion
{
  delegateCopy = delegate;
  queueCopy = queue;
  completionCopy = completion;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EC38();
    }
  }

  if (delegateCopy && queueCopy)
  {
    v14 = [(NSMapTable *)self->_delegateToInfo objectForKey:delegateCopy];

    if (!v14)
    {
      if (!self->_delegateToInfo)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
        delegateToInfo = self->_delegateToInfo;
        self->_delegateToInfo = weakToStrongObjectsMapTable;
      }

      v17 = objc_alloc_init(MEMORY[0x1E69A5228]);
      [v17 setQueue:queueCopy];
      [(NSMapTable *)self->_delegateToInfo setObject:v17 forKey:delegateCopy];
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A71978;
    v20[3] = &unk_1E7440DE8;
    v20[4] = self;
    v18 = MEMORY[0x19A8BBEF0](v20);
    v19 = v18;
    if (v18)
    {
      (*(v18 + 16))(v18, completionCopy);
    }

    else if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = delegateCopy;
  if (delegateCopy)
  {
    v7 = delegateCopy;
    [(NSMapTable *)self->_delegateToInfo removeObjectForKey:delegateCopy];
    delegateCopy = [(NSMapTable *)self->_delegateToInfo count];
    v5 = v7;
    if (!delegateCopy)
    {
      delegateToInfo = self->_delegateToInfo;
      self->_delegateToInfo = 0;

      v5 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](delegateCopy, v5);
}

- (void)_callDelegatesRespondingToSelector:(SEL)selector withPreCallbacksBlock:(id)block callbackBlock:(id)callbackBlock postCallbacksBlock:(id)callbacksBlock group:(id)group
{
  v66 = *MEMORY[0x1E69E9840];
  blockCopy = block;
  callbackBlockCopy = callbackBlock;
  callbacksBlockCopy = callbacksBlock;
  groupCopy = group;
  groupCopy6 = groupCopy;
  v50 = callbackBlockCopy;
  if (callbackBlockCopy)
  {
    group = groupCopy;
    v15 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v15 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B2ECD8();
      }
    }

    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    context = objc_autoreleasePoolPush();
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v20 = self->_delegateToInfo;
    v21 = [(NSMapTable *)v20 countByEnumeratingWithState:&v61 objects:v65 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v62;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v62 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v61 + 1) + 8 * i);
          v26 = [(NSMapTable *)self->_delegateToInfo objectForKey:v25];
          v27 = v26;
          if (v25)
          {
            v28 = v26 == 0;
          }

          else
          {
            v28 = 1;
          }

          if (!v28 && (!selector || (objc_opt_respondsToSelector() & 1) != 0))
          {
            [v18 addObject:v25];
            [v19 addObject:v27];
          }
        }

        v22 = [(NSMapTable *)v20 countByEnumeratingWithState:&v61 objects:v65 count:16];
      }

      while (v22);
    }

    objc_autoreleasePoolPop(context);
    groupCopy6 = group;
    if ([v18 count])
    {
      v29 = 1;
      do
      {
        v30 = objc_autoreleasePoolPush();
        v31 = [v18 objectAtIndex:0];
        v32 = [v19 objectAtIndex:0];
        [v18 removeObjectAtIndex:0];
        [v19 removeObjectAtIndex:0];
        objc_autoreleasePoolPop(v30);
        v33 = [v18 count];
        queue = [v32 queue];
        if (groupCopy6)
        {
          dispatch_group_enter(groupCopy6);
        }

        v35 = +[IDSInternalQueueController sharedInstance];
        queue2 = [v35 queue];

        if (queue == queue2)
        {
          if (selector)
          {
            groupCopy6 = group;
            if (blockCopy != 0 && (v29 & 1) != 0)
            {
              blockCopy[2](blockCopy, 1);
            }

            (v50)[2](v50, v31);
            if (callbacksBlockCopy && !v33)
            {
              callbacksBlockCopy[2](callbacksBlockCopy, 1);
            }
          }

          else
          {
            (v50)[2](v50, v31);
            groupCopy6 = group;
          }

          v43 = objc_opt_self();
          v44 = objc_opt_self();
          if (!groupCopy6)
          {
            goto LABEL_42;
          }
        }

        else if (queue)
        {
          v52[0] = MEMORY[0x1E69E9820];
          v52[1] = 3221225472;
          v52[2] = sub_195A72124;
          v52[3] = &unk_1E7440E10;
          selectorCopy = selector;
          v59 = v29 & 1;
          v55 = blockCopy;
          v56 = v50;
          v53 = v31;
          v60 = v33 == 0;
          v57 = callbacksBlockCopy;
          v54 = v32;
          v37 = MEMORY[0x19A8BBEF0](v52);
          v38 = v37;
          if (queue == MEMORY[0x1E69E96A0])
          {
            v39 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, v37);
          }

          else
          {
            v39 = [v37 copy];
          }

          v42 = v39;

          groupCopy6 = group;
          if (group)
          {
            dispatch_group_async(group, queue, v42);
          }

          else
          {
            dispatch_async(queue, v42);
          }

          if (!group)
          {
            goto LABEL_42;
          }
        }

        else
        {
          v40 = objc_opt_self();
          v41 = objc_opt_self();
          groupCopy6 = group;
          if (!group)
          {
            goto LABEL_42;
          }
        }

        dispatch_group_leave(groupCopy6);
LABEL_42:

        v29 = 0;
      }

      while ([v18 count]);
    }

    v45 = objc_opt_self();
    v46 = objc_opt_self();
  }
}

- (void)setDelegateCapabilities:(unsigned int)capabilities
{
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2ED78();
    }
  }

  self->_delegateCapabilities = capabilities;
}

- (id)_sendWithParameters:(id)parameters options:(id)options loggingType:(id)type loggingDataSize:(unint64_t)size
{
  sizeCopy = size;
  v242 = *MEMORY[0x1E69E9840];
  parametersCopy = parameters;
  optionsCopy = options;
  typeCopy = type;
  stringGUID = [MEMORY[0x1E696AEC0] stringGUID];
  v13 = OSLogHandleForTransportCategory();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *v231 = stringGUID;
    _os_log_impl(&dword_1959FF000, v13, OS_LOG_TYPE_DEFAULT, "!setState guid=%@", buf, 0xCu);
  }

  v14 = [optionsCopy objectForKey:@"IDSSendMessageOptionUUID"];
  if (v14)
  {
    v15 = v14;
    v16 = JWUUIDPushObjectToString();

    stringGUID = v16;
  }

  else
  {
    v15 = IDSGetUUIDData();
  }

  if (_IDSSupportsDirectMessaging() && [IDSDirectMessageConnection isDirectMessagingRequested:optionsCopy]&& !self->_directMessageConnection)
  {
    [(_IDSConnection *)self createDirectMessageConnectionIfNeeded];
  }

  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    _activeDevice = [(_IDSConnection *)self _activeDevice];
    v19 = [(IDSDirectMessageConnection *)directMessageConnection isMessageEligible:parametersCopy options:optionsCopy destinationDevice:_activeDevice];

    if (v19)
    {
      _internal = [(IDSAccount *)self->_account _internal];
      uniqueID = [_internal uniqueID];

      v224 = uniqueID;
      [parametersCopy setAccountUUID:uniqueID];
      v22 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsClientAcknowledgement"];
      [parametersCopy setWantsAppAck:{objc_msgSend(v22, "BOOLValue")}];

      v23 = [optionsCopy objectForKey:@"IDSSendMessageOptionExpectsPeerResponse"];
      [parametersCopy setExpectsPeerResponse:{objc_msgSend(v23, "BOOLValue")}];

      [parametersCopy setMessageUUID:v15];
      [parametersCopy setIdentifier:stringGUID];
      v24 = [optionsCopy objectForKey:@"IDSSendMessageOptionPeerResponseIdentifier"];
      [parametersCopy setPeerResponseIdentifier:v24];

      v25 = [optionsCopy objectForKey:@"IDSSendMessageOptionQueueOneIdentifier"];
      [parametersCopy setQueueOneIdentifier:v25];

      v26 = [optionsCopy objectForKey:@"IDSSendMessageOptionTopLevelDictionary"];
      [parametersCopy setUseDictAsTopLevel:{objc_msgSend(v26, "BOOLValue")}];

      v27 = [optionsCopy objectForKey:@"IDSSendMessageOptionRequireBluetooth"];
      [parametersCopy setRequireBluetooth:{objc_msgSend(v27, "BOOLValue")}];

      [(IDSDirectMessageConnection *)self->_directMessageConnection sendMessageWithParameters:parametersCopy options:optionsCopy];
      v28 = stringGUID;
      goto LABEL_172;
    }
  }

  v222 = v15;
  v218 = typeCopy;
  v29 = objc_alloc(MEMORY[0x1E69A5408]);
  selfCopy = self;
  account = [(_IDSConnection *)self account];
  _internal2 = [account _internal];
  serviceName = [_internal2 serviceName];
  v33 = [v29 initWithServiceIdentifier:serviceName];

  if (CUTIsInternalInstall())
  {
    v34 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *v231 = stringGUID;
      _os_log_impl(&dword_1959FF000, v34, OS_LOG_TYPE_DEFAULT, "sendMessage - Inspecting message {%@} payload for security issues", buf, 0xCu);
    }

    v35 = MEMORY[0x1E69A5358];
    message = [parametersCopy message];
    [v35 inspectPayload:message messageGuid:stringGUID];
  }

  v37 = [optionsCopy objectForKey:?];
  [parametersCopy setDataToEncrypt:v37];

  v38 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsResponse"];
  [parametersCopy setWantsResponse:{objc_msgSend(v38, "BOOLValue")}];

  v39 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsProgress"];
  [parametersCopy setWantsProgress:{objc_msgSend(v39, "BOOLValue")}];

  v40 = [optionsCopy objectForKey:@"IDSSendMessageOptionFromID"];
  [parametersCopy setFromID:v40];

  [optionsCopy objectForKey:@"IDSSendMessageOptionTimeout"];
  v41 = [optionsCopy objectForKey:@"IDSSendMessageOptionTimeout"];
  v225 = stringGUID;
  v221 = v41;
  if (v41)
  {
    [v41 doubleValue];
  }

  else
  {
    v42 = 180.0;
  }

  [parametersCopy setTimeout:v42];
  v43 = MEMORY[0x19A8BACA0](@"allowlistedidsservices");
  objc_opt_class();
  v224 = v33;
  v214 = v43;
  if (objc_opt_isKindOfClass())
  {
    account2 = [(_IDSConnection *)selfCopy account];
    _internal3 = [account2 _internal];
    pushTopic = [_internal3 pushTopic];
    v47 = [v43 containsObject:pushTopic];

    v48 = [optionsCopy objectForKey:@"IDSSendMessageOptionNonWaking"];
    [parametersCopy setNonWaking:{objc_msgSend(v48, "BOOLValue")}];

    if (v47)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v49 = [optionsCopy objectForKey:@"IDSSendMessageOptionNonWaking"];
    [parametersCopy setNonWaking:{objc_msgSend(v49, "BOOLValue")}];
  }

  destinations = [parametersCopy destinations];
  v51 = [(_IDSConnection *)selfCopy _isDestinationSingleLocalAddress:destinations];

  if (v51)
  {
    if ([parametersCopy priority] == 300 && (objc_msgSend(v33, "allowUrgentMessages") & 1) == 0)
    {
      [parametersCopy setPriority:200];
      v52 = +[IDSTransportLog IDSConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(_IDSConnection *)selfCopy account];
        _internal4 = [account3 _internal];
        pushTopic2 = [_internal4 pushTopic];
        *buf = 138412546;
        *v231 = stringGUID;
        *&v231[8] = 2112;
        *v232 = pushTopic2;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "Downgrading priority of message with GUID %@ to Default from Urgent, The client %@ is not configured to send urgent messages", buf, 0x16u);
      }
    }

    if (([v33 allowWakingMessages] & 1) == 0)
    {
      [(_IDSConnection *)selfCopy setWakingDowngradeCount:[(_IDSConnection *)selfCopy wakingDowngradeCount]+ 1];
      v56 = +[IDSTransportLog IDSConnection];
      if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
      {
        account4 = [(_IDSConnection *)selfCopy account];
        _internal5 = [account4 _internal];
        pushTopic3 = [_internal5 pushTopic];
        wakingDowngradeCount = [(_IDSConnection *)selfCopy wakingDowngradeCount];
        *buf = 138412802;
        *v231 = stringGUID;
        *&v231[8] = 2112;
        *v232 = pushTopic3;
        *&v232[8] = 1024;
        LODWORD(v233) = wakingDowngradeCount;
        _os_log_impl(&dword_1959FF000, v56, OS_LOG_TYPE_DEFAULT, "Downgrading waking status of message with GUID %@ to non-waking, the client %@ is not configured to send waking messages.  Total messages downgraded: %u", buf, 0x1Cu);
      }

      [parametersCopy setNonWaking:1];
    }
  }

LABEL_34:
  v61 = [optionsCopy objectForKey:@"IDSSendMessageOptionEnforceRemoteTimeouts"];

  if (v61)
  {
    v61 = [optionsCopy objectForKey:@"IDSSendMessageOptionEnforceRemoteTimeouts"];
    bOOLValue = [v61 BOOLValue];

    LODWORD(v61) = bOOLValue ^ 1;
  }

  else
  {
    bOOLValue = 0;
  }

  blockRemoteTimeouts = [v33 blockRemoteTimeouts];
  if (v221)
  {
    v64 = blockRemoteTimeouts;
  }

  else
  {
    v64 = 1;
  }

  if (((v64 | v61) & 1) == 0 || bOOLValue)
  {
    [parametersCopy setEnforceRemoteTimeouts:1];
  }

  v65 = [optionsCopy objectForKey:@"IDSSendMessageOptionAccessToken"];

  if (v65)
  {
    v66 = [optionsCopy objectForKey:@"IDSSendMessageOptionAccessToken"];
    [parametersCopy setAccessToken:v66];
  }

  v67 = [optionsCopy objectForKey:@"IDSSendMessageOptionHomeKitMessage"];
  bOOLValue2 = [v67 BOOLValue];

  if (bOOLValue2)
  {
    [parametersCopy setHomeKitPayload:1];
  }

  v69 = [optionsCopy objectForKey:@"IDSSendMessageOptionSubServiceKey"];
  if ([v69 length])
  {
    [parametersCopy setSubService:v69];
  }

  v212 = v69;
  v70 = [optionsCopy objectForKey:@"IDSSendMessageOptionFakeMessage"];
  [parametersCopy setFakeMessage:{objc_msgSend(v70, "BOOLValue")}];

  v71 = [optionsCopy objectForKey:@"IDSSendMessageOptionDisableAliasValidation"];
  [parametersCopy setDisableAliasValidation:{objc_msgSend(v71, "BOOLValue")}];

  v217 = [optionsCopy objectForKey:@"IDSSendMessageOptionCommand"];
  [parametersCopy setCommand:?];
  v72 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsClientAcknowledgement"];
  [parametersCopy setWantsAppAck:{objc_msgSend(v72, "BOOLValue")}];

  v73 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsDeliveryStatus"];
  [parametersCopy setWantsDeliveryStatus:{objc_msgSend(v73, "BOOLValue")}];

  v74 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsCertifiedDelivery"];
  [parametersCopy setWantsCertifiedDelivery:{objc_msgSend(v74, "BOOLValue")}];

  v75 = [optionsCopy objectForKey:@"IDSSendMessageOptionDeliveryStatusContext"];
  [parametersCopy setDeliveryStatusContext:v75];

  [parametersCopy setMessageUUID:v222];
  v76 = [optionsCopy objectForKey:@"IDSSendMessageOptionAlternateCallbackIdentifier"];
  [parametersCopy setAlternateCallbackID:v76];

  v77 = [optionsCopy objectForKey:@"IDSSendMessageOptionOriginalTimestampKey"];
  [parametersCopy setOriginalTimestamp:v77];

  v78 = [optionsCopy objectForKey:@"IDSSendMessageOptionEncryptPayload"];
  [parametersCopy setEncryptPayload:{objc_msgSend(v78, "BOOLValue")}];

  v79 = [optionsCopy objectForKey:@"IDSSendMessageOptionCompressPayload"];
  v211 = v79;
  if (v79)
  {
    bOOLValue3 = [v79 BOOLValue];
  }

  else
  {
    bOOLValue3 = 1;
  }

  [parametersCopy setCompressPayload:bOOLValue3];
  v81 = [optionsCopy objectForKey:@"IDSSendMessageOptionForceLocalDelivery"];
  if ([v81 BOOLValue])
  {
    bOOLValue4 = 1;
  }

  else
  {
    v83 = [optionsCopy objectForKey:@"IDSSendMessageOptionLocalDelivery"];
    if ([v83 BOOLValue])
    {
      bOOLValue4 = 1;
    }

    else
    {
      v84 = [optionsCopy objectForKey:@"IDSSendMessageOptionRequireBluetooth"];
      bOOLValue4 = [v84 BOOLValue];
    }
  }

  [parametersCopy setLocalDelivery:bOOLValue4];
  v85 = [optionsCopy objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
  [parametersCopy setAllowCloudDelivery:{objc_msgSend(v85, "BOOLValue")}];

  v86 = [optionsCopy objectForKey:@"IDSSendMessageOptionRequireBluetooth"];
  [parametersCopy setRequireBluetooth:{objc_msgSend(v86, "BOOLValue")}];

  v87 = [optionsCopy objectForKey:@"IDSSendMessageOptionRequireLocalWiFi"];
  [parametersCopy setRequireLocalWiFi:{objc_msgSend(v87, "BOOLValue")}];

  v88 = [optionsCopy objectForKey:@"IDSSendMessageOptionTopLevelDictionary"];
  [parametersCopy setUseDictAsTopLevel:{objc_msgSend(v88, "BOOLValue")}];

  v89 = [optionsCopy objectForKey:@"IDSSendMessageOptionExpectsPeerResponse"];
  [parametersCopy setExpectsPeerResponse:{objc_msgSend(v89, "BOOLValue")}];

  v90 = [optionsCopy objectForKey:@"IDSSendMessageOptionPeerResponseIdentifier"];
  [parametersCopy setPeerResponseIdentifier:v90];

  v91 = [optionsCopy objectForKey:@"IDSSendMessageOptionAlwaysSkipSelfKey"];
  [parametersCopy setAlwaysSkipSelf:{objc_msgSend(v91, "BOOLValue")}];

  v92 = [optionsCopy objectForKey:@"IDSSendMessageOptionForceQuery"];
  [parametersCopy setForceQuery:{objc_msgSend(v92, "integerValue")}];

  v93 = [optionsCopy objectForKey:@"IDSSendMessageOptionAlwaysIncludeSelfKey"];
  [parametersCopy setAlwaysIncludeSelf:{objc_msgSend(v93, "BOOLValue")}];

  v94 = [optionsCopy objectForKey:@"IDSSendMessageOptionWantsFirewallDonation"];
  [parametersCopy setWantsFirewallDonation:{objc_msgSend(v94, "BOOLValue")}];

  v223 = [optionsCopy objectForKey:@"IDSSendMessageOptionPushPriority"];
  if (v223)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v223 integerValue], (_IDSIsValidPushPriority()))
    {
      [parametersCopy setPushPriority:v223];
    }

    else
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }
  }

  v96 = [optionsCopy objectForKey:@"IDSSendMessageOptionDeliveryMinimumTimeDelayKey"];
  if (v96)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v96 longLongValue] < 0)
    {
      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }

    else
    {
      unsignedLongLongValue = [v96 unsignedLongLongValue];
      registration2 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:unsignedLongLongValue];
      [parametersCopy setDeliveryMinimumTimeDelay:registration2];
    }
  }

  v99 = [optionsCopy objectForKey:@"IDSSendMessageOptionDeliveryMinimumTimeKey"];
  if (v99)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0 || [v99 longLongValue] < 0)
    {
      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }

    else
    {
      [v99 doubleValue];
      registration3 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:(v100 * 1000.0)];
      [parametersCopy setDeliveryMinimumTime:registration3];
    }
  }

  v219 = [optionsCopy objectForKey:@"IDSSendMessageOptionSendModeKey"];
  if (v219)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 && ([v219 integerValue], (_IDSIsValidSendMode()))
    {
      [parametersCopy setSendMode:v219];
    }

    else
    {
      registration4 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration4, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }
  }

  v103 = [optionsCopy objectForKey:@"IDSSendMessageOptionPublicMessageIntent"];
  if (v103)
  {
    [parametersCopy setCommandContext:v103];
  }

  v210 = v103;
  v220 = [optionsCopy objectForKey:@"IDSSendMessageOptionSendReasonKey"];
  if ([v220 length])
  {
    v104 = [MEMORY[0x1E69A53E8] createWithReasonString:v220];
    if (v104)
    {
      [parametersCopy setSendReasonContainer:v104];
    }

    else
    {
      registration5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration5, OS_LOG_TYPE_FAULT))
      {
        sub_195B2EE18();
      }
    }
  }

  identifier = [v224 identifier];
  if ([identifier isEqualToString:@"com.apple.madrid"] && objc_msgSend(v217, "isEqualToNumber:", &unk_1F0A29900))
  {
    message2 = [parametersCopy message];

    if (!message2)
    {
      goto LABEL_100;
    }

    identifier = [optionsCopy objectForKey:@"IDSSendMessageOptionSendMetricsKey"];
    v108 = objc_alloc(MEMORY[0x1E69A5328]);
    identifier2 = [v224 identifier];
    v110 = [v108 initWithType:0 guid:stringGUID service:identifier2 clientMetrics:identifier];

    [parametersCopy setSendMetric:v110];
  }

LABEL_100:
  v111 = [optionsCopy objectForKey:@"IDSSendMessageOptionDuet"];
  if ([v111 BOOLValue])
  {
    bOOLValue5 = 1;
  }

  else
  {
    v113 = [optionsCopy objectForKey:@"IDSSendMessageOptionNSURLSession"];
    if ([v113 BOOLValue])
    {
      bOOLValue5 = 1;
    }

    else
    {
      [optionsCopy objectForKey:@"IDSSendMessageOptionBypassDuet"];
      v115 = v114 = v96;
      bOOLValue5 = [v115 BOOLValue];

      v96 = v114;
    }
  }

  v116 = [optionsCopy objectForKey:@"IDSSendMessageOptionSockPuppet"];
  if ([v116 BOOLValue])
  {
    v117 = [parametersCopy priority] == 200;

    bOOLValue5 |= v117;
  }

  else
  {
  }

  v118 = [optionsCopy objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
  if ([v118 BOOLValue])
  {
    v119 = [parametersCopy priority] == 200;

    bOOLValue5 |= v119;
  }

  else
  {
  }

  v120 = [optionsCopy objectForKey:@"IDSSendMessageOptionAllowCloudDeliveryKey"];
  bOOLValue6 = [v120 BOOLValue];

  if (bOOLValue6)
  {
    _activeDevice2 = [(_IDSConnection *)selfCopy _activeDevice];
    v123 = _activeDevice2;
    if (_activeDevice2 && ([_activeDevice2 isConnected] & 1) == 0 && (objc_msgSend(v123, "isCloudConnected") & 1) == 0)
    {
      v196 = v96;
      v124 = objc_alloc(MEMORY[0x1E695DF20]);
      account5 = [(_IDSConnection *)selfCopy account];
      _internal6 = [account5 _internal];
      pushTopic4 = [_internal6 pushTopic];
      v128 = [v124 initWithObjectsAndKeys:{pushTopic4, @"IDSClientBringsUpCloudMessaging", 0}];

      IDSPowerLogDictionary();
      registration6 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration6, OS_LOG_TYPE_DEFAULT))
      {
        account6 = [(_IDSConnection *)selfCopy account];
        _internal7 = [account6 _internal];
        pushTopic5 = [_internal7 pushTopic];
        *buf = 138412546;
        *v231 = pushTopic5;
        *&v231[8] = 2112;
        *v232 = v225;
        _os_log_impl(&dword_1959FF000, registration6, OS_LOG_TYPE_DEFAULT, "Client %@ is forcing QR for Cloud Message with GUID %@", buf, 0x16u);
      }

      v96 = v196;
    }
  }

  [parametersCopy setBypassDuet:bOOLValue5 & 1];
  v133 = [optionsCopy objectForKey:@"IDSSendMessageOptionNonCloudWakingKey"];
  [parametersCopy setNonCloudWaking:{objc_msgSend(v133, "BOOLValue")}];

  v134 = [optionsCopy objectForKey:@"IDSSendMessageOptionLiveMessageDelivery"];
  [parametersCopy setLiveMessageDelivery:{objc_msgSend(v134, "BOOLValue")}];

  v135 = [optionsCopy objectForKey:@"IDSSendMessageOptionDropMessageIndicator"];
  [parametersCopy setDropMessageIndicatorCommand:v135];

  v136 = [optionsCopy objectForKey:@"IDSSendMessageOptionFireAndForget"];
  bOOLValue7 = [v136 BOOLValue];

  [parametersCopy setFireAndForget:bOOLValue7];
  if ((bOOLValue7 & 1) != 0 || ([optionsCopy objectForKey:@"IDSSendMessageOptionMapTile"], v138 = objc_claimAutoreleasedReturnValue(), v139 = objc_msgSend(v138, "BOOLValue"), v138, v139))
  {
    [parametersCopy setBypassStorage:1];
  }

  v140 = [optionsCopy objectForKey:@"IDSSendMessageOptionQueueOneIdentifier"];
  if (v140)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v141 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v141, OS_LOG_TYPE_ERROR))
      {
        sub_195B2EE80();
      }

      v140 = 0;
    }
  }

  v142 = [optionsCopy objectForKey:@"IDSSendMessageOptionActivityContinuation"];
  bOOLValue8 = [v142 BOOLValue];

  if (bOOLValue8)
  {
    [parametersCopy setActivityContinuation:1];
    if (!v140)
    {
      v140 = @"IDSActivityContinuationIdentifier";
    }
  }

  v144 = [optionsCopy objectForKey:@"IDSSendMessageOptionTethering"];
  bOOLValue9 = [v144 BOOLValue];

  if (bOOLValue9)
  {
    [parametersCopy setLocalDelivery:1];
  }

  v146 = [optionsCopy objectForKey:@"IDSSendMessageOptionOpportunisticDuet"];
  bOOLValue10 = [v146 BOOLValue];

  if (bOOLValue10)
  {
    [parametersCopy setNonWaking:1];
    [parametersCopy setLocalDelivery:1];
    if (!v140)
    {
      v140 = @"IDSOpportunisticDuetIdentifier";
    }

    goto LABEL_138;
  }

  if (v140)
  {
LABEL_138:
    [parametersCopy setQueueOneIdentifier:v140];
  }

  v148 = [optionsCopy objectForKey:@"IDSSendMessageOptionForceEncryptionOff"];
  [parametersCopy setForceEncryptionOff:{objc_msgSend(v148, "BOOLValue")}];

  v149 = [optionsCopy objectForKey:@"IDSSendMessageOptionKTVerificationUUIDKey"];
  if (v149)
  {
    [parametersCopy setKeyTransparencyURIVerificationMap:v149];
  }

  v209 = v149;
  v150 = [optionsCopy objectForKey:@"IDSSendMessageOptionGoupUUIDKey"];
  v151 = [optionsCopy objectForKey:@"IDSSendMessageOptionTimestampKey"];
  stringValue = [v151 stringValue];

  if (v150 && stringValue)
  {
    [parametersCopy setGroupSessionUUID:v150];
    [parametersCopy setDedupeTimestamp:stringValue];
  }

  v207 = stringValue;
  v208 = v150;
  v153 = [optionsCopy objectForKey:@"IDSSendMessageOptionDuetIdentifiersOverride"];
  allObjects = [v153 allObjects];
  [parametersCopy setDuetIdentifiersOverride:allObjects];

  firstObject = [optionsCopy objectForKey:@"IDSSendMessageOptionMetricReportIdentifier"];
  if (!firstObject)
  {
    allObjects2 = [v153 allObjects];
    v157 = [allObjects2 sortedArrayUsingComparator:&unk_1F09E6140];

    firstObject = [v157 firstObject];
  }

  v206 = v153;
  [parametersCopy setMetricReportIdentifier:firstObject];
  v204 = [optionsCopy objectForKey:@"IDSSendMessageOptionInterestingRegistrationProperties"];
  allObjects3 = [v204 allObjects];
  [parametersCopy setInterestingRegistrationProperties:allObjects3];

  v203 = [optionsCopy objectForKey:@"IDSSendMessageOptionRequireAllRegistrationProperties"];
  allObjects4 = [v203 allObjects];
  [parametersCopy setRequireAllRegistrationProperties:allObjects4];

  v202 = [optionsCopy objectForKey:@"IDSSendMessageOptionRequireLackOfRegistrationProperties"];
  allObjects5 = [v202 allObjects];
  [parametersCopy setRequireLackOfRegistrationProperties:allObjects5];

  [parametersCopy setIdentifier:v225];
  _internal8 = [(IDSAccount *)selfCopy->_account _internal];
  uniqueID2 = [_internal8 uniqueID];

  v201 = uniqueID2;
  [parametersCopy setAccountUUID:uniqueID2];
  _activeDevice3 = [(_IDSConnection *)selfCopy _activeDevice];
  destinations2 = [parametersCopy destinations];
  destinationURIs = [destinations2 destinationURIs];
  LODWORD(uniqueID2) = [destinationURIs containsObject:*MEMORY[0x1E69A4B50]];

  if (uniqueID2 && _activeDevice3 && ([_activeDevice3 relationship] & 2) == 0)
  {
    [(_IDSConnection *)selfCopy _replaceSentinelInSendParameters:parametersCopy withCurrentActiveDevice:_activeDevice3];
  }

  destinations3 = [parametersCopy destinations];
  v199 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:? requiringSecureCoding:? error:?];
  [parametersCopy setGroupData:?];
  [parametersCopy setDestinations:0];
  if (!selfCopy->_pendingSends)
  {
    v166 = objc_alloc_init(MEMORY[0x1E69A6120]);
    pendingSends = selfCopy->_pendingSends;
    selfCopy->_pendingSends = v166;
  }

  alternateCallbackID = [parametersCopy alternateCallbackID];
  v169 = alternateCallbackID;
  if (alternateCallbackID)
  {
    identifier3 = alternateCallbackID;
  }

  else
  {
    identifier3 = [parametersCopy identifier];
  }

  v200 = _activeDevice3;

  if (parametersCopy)
  {
    [(IMOrderedMutableDictionary *)selfCopy->_pendingSends setOrderedObject:parametersCopy forKey:identifier3];
  }

  v198 = identifier3;
  v171 = +[IDSLogging GUIDTRACE];
  if (os_log_type_enabled(v171, OS_LOG_TYPE_DEFAULT))
  {
    _internal9 = [(IDSAccount *)selfCopy->_account _internal];
    serviceName2 = [_internal9 serviceName];
    *buf = 138412546;
    *v231 = v225;
    *&v231[8] = 2112;
    *v232 = serviceName2;
    _os_log_impl(&dword_1959FF000, v171, OS_LOG_TYPE_DEFAULT, "OUTGOING-CLIENT_REQUEST:%@ SERVICE:%@", buf, 0x16u);
  }

  v205 = firstObject;

  v174 = [optionsCopy mutableCopy];
  [v174 removeObjectForKey:@"IDSSendMessageOptionDataToEncrypt"];
  v175 = +[IDSTransportLog IDSConnection];
  if (os_log_type_enabled(v175, OS_LOG_TYPE_DEFAULT))
  {
    v213 = v99;
    v197 = v96;
    if (v218)
    {
      v176 = v218;
    }

    else
    {
      v176 = @"unknown type";
    }

    _internal10 = [(IDSAccount *)selfCopy->_account _internal];
    serviceName3 = [_internal10 serviceName];
    deliveryMinimumTime = [parametersCopy deliveryMinimumTime];
    v180 = @"YES";
    if (!deliveryMinimumTime)
    {
      deliveryMinimumTimeDelay = [parametersCopy deliveryMinimumTimeDelay];
      if (!deliveryMinimumTimeDelay)
      {
        v180 = @"NO";
      }
    }

    v181 = [(IMOrderedMutableDictionary *)selfCopy->_pendingSends count];
    *buf = 138414082;
    *v231 = v176;
    *&v231[8] = 2114;
    *v232 = serviceName3;
    *&v232[8] = 2114;
    v233 = v225;
    *v234 = 2112;
    *&v234[2] = destinations3;
    *v235 = 2112;
    *&v235[2] = v180;
    v236 = 2112;
    v237 = v174;
    v238 = 1024;
    v239 = sizeCopy;
    v240 = 2048;
    v241 = v181;
    _os_log_impl(&dword_1959FF000, v175, OS_LOG_TYPE_DEFAULT, "Client request to send %@ on service: %{public}@   guid: %{public}@   to destinations: %@  isScheduled? : %@  options: %@    size: %d] (%lu pending)", buf, 0x4Eu);
    if (!deliveryMinimumTime)
    {
    }

    v96 = v197;
    v99 = v213;
  }

  v229[0] = 0xAAAAAAAAAAAAAAAALL;
  v229[1] = 0xAAAAAAAAAAAAAAAALL;
  v182 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v225];
  [v182 getUUIDBytes:v229];

  crossLayerLogging = [MEMORY[0x1E69A5270] CrossLayerLogging];
  if (os_log_type_enabled(crossLayerLogging, OS_LOG_TYPE_DEFAULT))
  {
    _internal11 = [(IDSAccount *)selfCopy->_account _internal];
    [_internal11 serviceName];
    v186 = v185 = v96;
    outgoingMessageLoggingSequence = selfCopy->_outgoingMessageLoggingSequence;
    selfCopy->_outgoingMessageLoggingSequence = outgoingMessageLoggingSequence + 1;
    *buf = 67110658;
    *v231 = 120;
    *&v231[4] = 1024;
    *&v231[6] = 255;
    *v232 = 2112;
    *&v232[2] = v186;
    v233 = 0x832000000100412;
    *v234 = v229;
    *&v234[8] = 1024;
    *v235 = sizeCopy;
    *&v235[4] = 1024;
    *&v235[6] = outgoingMessageLoggingSequence;
    _os_log_impl(&dword_1959FF000, crossLayerLogging, OS_LOG_TYPE_DEFAULT, "5 {curProtocol: %hhu, prevProtocol: %hhu, prevBundleID: %@, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x34u);

    v96 = v185;
  }

  dictionaryRepresentation = [parametersCopy dictionaryRepresentation];
  v189 = [dictionaryRepresentation copy];

  daemonController = [(_IDSConnection *)selfCopy daemonController];
  [daemonController setCurXPCMessagePriority:{objc_msgSend(parametersCopy, "priority")}];

  daemonController2 = [(_IDSConnection *)selfCopy daemonController];
  v227[0] = MEMORY[0x1E69E9820];
  v227[1] = 3221225472;
  v227[2] = sub_195A7419C;
  v227[3] = &unk_1E7440E58;
  v192 = v189;
  v228 = v192;
  [daemonController2 forwardMethodWithBoostedPriority:v227];

  stringGUID = v225;
  v193 = v225;

  typeCopy = v218;
  v15 = v222;
LABEL_172:

  return stringGUID;
}

- (BOOL)_isDestinationSingleLocalAddress:(id)address
{
  addressCopy = address;
  account = [(_IDSConnection *)self account];
  accountType = [account accountType];

  if (accountType == 2 && ([addressCopy destinationURIs], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "count"), v7, v8 == 1))
  {
    destinationURIs = [addressCopy destinationURIs];
    if ([destinationURIs containsObject:*MEMORY[0x1E69A4B50]])
    {
      v10 = 1;
    }

    else
    {
      destinationURIs2 = [addressCopy destinationURIs];
      _activeDevice = [(_IDSConnection *)self _activeDevice];
      v13 = IDSCopyIDForDevice(_activeDevice);
      v10 = [destinationURIs2 containsObject:v13];
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_replaceSentinelInSendParameters:(id)parameters withCurrentActiveDevice:(id)device
{
  v5 = MEMORY[0x1E695DFA8];
  deviceCopy = device;
  parametersCopy = parameters;
  v8 = [v5 alloc];
  destinations = [parametersCopy destinations];
  destinationURIs = [destinations destinationURIs];
  v13 = [v8 initWithSet:destinationURIs];

  v11 = IDSCopyIDForDevice(deviceCopy);
  [v13 removeObject:*MEMORY[0x1E69A4B50]];
  [v13 addObject:v11];
  v12 = [MEMORY[0x1E69A5240] destinationWithStrings:v13];
  [parametersCopy setDestinations:v12];
}

- (BOOL)sendProtobuf:(id)protobuf toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v65 = *MEMORY[0x1E69E9840];
  protobufCopy = protobuf;
  destinationsCopy = destinations;
  optionsCopy = options;
  v15 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v15 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EF38();
    }
  }

  errorCopy = error;
  v18 = [optionsCopy objectForKey:@"IDSSendMessageOptionSkipPayloadCheck"];
  bOOLValue = [v18 BOOLValue];

  destinationURIs = [destinationsCopy destinationURIs];
  v21 = [destinationURIs count];

  v55 = optionsCopy;
  selfCopy = self;
  if (v21)
  {
    _internal = [(IDSAccount *)self->_account _internal];
    isActive = [_internal isActive];

    if (isActive)
    {
      v24 = 0;
    }

    else
    {
      v24 = 8;
    }

    if (isActive)
    {
      v25 = 0;
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
    }

    if (!(bOOLValue & 1 | ((isActive & 1) == 0)))
    {
      data = [protobufCopy data];
      v27 = [data length];

      if (v27 <= 0x500000)
      {
        v24 = 0;
      }

      else
      {
        v24 = 18;
      }

      if (v27 <= 0x500000)
      {
        v25 = 0;
      }

      else
      {
        v25 = @"Cannot send payload of this size";
      }
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v54 = destinationsCopy;
  destinationURIs2 = [destinationsCopy destinationURIs];
  v29 = [destinationURIs2 countByEnumeratingWithState:&v56 objects:v64 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v57;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v57 != v31)
        {
          objc_enumerationMutation(destinationURIs2);
        }

        v33 = *(*(&v56 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v34 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v33];

          v24 = 21;
          v25 = v34;
        }
      }

      v30 = [destinationURIs2 countByEnumeratingWithState:&v56 objects:v64 count:16];
    }

    while (v30);
  }

  if (v25)
  {
    v35 = 0;
    identifierCopy2 = identifier;
    v36 = v54;
    if (!identifier)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  _internal2 = [(IDSAccount *)selfCopy->_account _internal];
  uniqueID = [_internal2 uniqueID];

  identifierCopy2 = identifier;
  v36 = v54;
  if (uniqueID)
  {
    v45 = objc_alloc_init(MEMORY[0x1E69A53E0]);
    [v45 setPriority:priority];
    [v45 setDestinations:v54];
    dictionaryRepresentation = [protobufCopy dictionaryRepresentation];
    [v45 setProtobuf:dictionaryRepresentation];

    data2 = [protobufCopy data];
    v35 = -[_IDSConnection _sendWithParameters:options:loggingType:loggingDataSize:](selfCopy, "_sendWithParameters:options:loggingType:loggingDataSize:", v45, v55, @"protobuf", [data2 length]);
    v48 = v35;

    v25 = 0;
  }

  else
  {
    v45 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      account = selfCopy->_account;
      *buf = 138412546;
      v61 = selfCopy;
      v62 = 2112;
      v63 = account;
      _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "sendPayload - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
    }

    v35 = 0;
    v25 = @"Could not find account uniqueID!";
    v24 = 7;
  }

  if (identifier)
  {
LABEL_31:
    v38 = v35;
    *identifierCopy2 = v35;
  }

LABEL_32:
  if (v25)
  {
    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v40 = [v39 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v41 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v40];
    if (errorCopy)
    {
      v41 = v41;
      *errorCopy = v41;
    }
  }

  return v25 == 0;
}

- (BOOL)sendMessage:(id)message toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  destinationsCopy = destinations;
  optionsCopy = options;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2EFD8();
    }
  }

  v52 = [optionsCopy objectForKey:@"IDSSendMessageOptionTopLevelDictionary"];
  destinationURIs = [destinationsCopy destinationURIs];
  v15 = [destinationURIs count] == 0;

  if (v15)
  {
    v20 = @"Cannot send to empty destination set";
    v19 = 1;
  }

  else if (([v52 BOOLValue] & 1) != 0 || objc_msgSend(messageCopy, "count"))
  {
    account = [(_IDSConnection *)self account];
    _internal = [account _internal];
    isActive = [_internal isActive];

    if (isActive)
    {
      v19 = 0;
    }

    else
    {
      v19 = 8;
    }

    if (isActive)
    {
      v20 = 0;
    }

    else
    {
      v20 = @"Cannot send with an inactive account";
    }
  }

  else
  {
    v20 = @"Cannot send empty message";
    v19 = 5;
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  destinationURIs2 = [destinationsCopy destinationURIs];
  v22 = [destinationURIs2 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v22)
  {
    v23 = *v56;
    do
    {
      for (i = 0; i != v22; ++i)
      {
        if (*v56 != v23)
        {
          objc_enumerationMutation(destinationURIs2);
        }

        v25 = *(*(&v55 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v26 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v25];

          v19 = 21;
          v20 = v26;
        }
      }

      v22 = [destinationURIs2 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v22);
  }

  if (v20)
  {
    v27 = 0;
    goto LABEL_48;
  }

  account2 = [(_IDSConnection *)self account];
  _internal2 = [account2 _internal];
  uniqueID = [_internal2 uniqueID];

  if (!uniqueID)
  {
    v33 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      account = self->_account;
      *buf = 138412546;
      selfCopy = self;
      v61 = 2112;
      v62 = account;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendPayload - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
    }

    v27 = 0;
    v20 = @"Could not find account uniqueID!";
    v19 = 7;
    goto LABEL_47;
  }

  v31 = [optionsCopy objectForKey:@"IDSSendMessageOptionSkipPayloadCheck"];
  bOOLValue = [v31 BOOLValue];

  if ((bOOLValue & 1) == 0)
  {
    v33 = [MEMORY[0x1E696AE40] dataWithPropertyList:messageCopy format:200 options:0 error:0];
    if ([v33 length]<= 0x500000)
    {
      if (v33)
      {
        goto LABEL_36;
      }
    }

    else
    {
    }

    v33 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendPayload - could not plist serialize dictionary.", buf, 2u);
    }

    v27 = 0;
    v20 = @"Could not plist serialize dictionary or otherwise empty payload";
    v19 = 6;
    goto LABEL_47;
  }

  v33 = 0;
LABEL_36:
  v35 = [optionsCopy mutableCopy];
  [v35 removeObjectForKey:@"IDSSendMessageOptionDataToEncrypt"];
  v36 = +[IDSTransportLog IDSConnection];
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    v37 = @"Sync";
    if (priority == 200)
    {
      v37 = @"Default";
    }

    if (priority == 300)
    {
      v38 = @"URGENT";
    }

    else
    {
      v38 = v37;
    }

    _internal3 = [(IDSAccount *)self->_account _internal];
    serviceName = [_internal3 serviceName];
    *buf = 138544130;
    selfCopy = v38;
    v61 = 2114;
    v62 = serviceName;
    v63 = 2112;
    v64 = destinationsCopy;
    v65 = 2112;
    v66 = v35;
    _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Client request to send %{public}@ message (dictionary) service: %{public}@  to destinations: %@   options: %@]", buf, 0x2Au);
  }

  v41 = objc_alloc_init(MEMORY[0x1E69A53E0]);
  [v41 setPriority:priority];
  [v41 setDestinations:destinationsCopy];
  [v41 setMessage:messageCopy];
  v27 = -[_IDSConnection _sendWithParameters:options:loggingType:loggingDataSize:](self, "_sendWithParameters:options:loggingType:loggingDataSize:", v41, optionsCopy, @"message (dictionary)", [messageCopy count]);
  v42 = v27;

  v20 = 0;
LABEL_47:

LABEL_48:
  if (identifier)
  {
    v43 = v27;
    *identifier = v27;
  }

  if (v20)
  {
    v44 = objc_alloc(MEMORY[0x1E695DF20]);
    v45 = [v44 initWithObjectsAndKeys:{v20, *MEMORY[0x1E696A578], 0}];
    v46 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v19 userInfo:v45];
    if (error)
    {
      v46 = v46;
      *error = v46;
    }
  }

  return v20 == 0;
}

- (BOOL)sendData:(id)data toDestinations:(id)destinations priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v63 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  destinationsCopy = destinations;
  optionsCopy = options;
  v15 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v15 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F0E4();
    }
  }

  errorCopy = error;
  v53 = optionsCopy;
  v18 = [optionsCopy objectForKey:@"IDSSendMessageOptionSkipPayloadCheck"];
  bOOLValue = [v18 BOOLValue];

  destinationURIs = [destinationsCopy destinationURIs];
  v21 = [destinationURIs count];

  selfCopy = self;
  if (v21)
  {
    _internal = [(IDSAccount *)self->_account _internal];
    isActive = [_internal isActive];

    if (isActive)
    {
      v24 = 0;
    }

    else
    {
      v24 = 8;
    }

    if (isActive)
    {
      v25 = 0;
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
    }

    if (!(bOOLValue & 1 | ((isActive & 1) == 0)))
    {
      v26 = [dataCopy length];
      if (v26 <= 0x500000)
      {
        v24 = 0;
      }

      else
      {
        v24 = 18;
      }

      if (v26 <= 0x500000)
      {
        v25 = 0;
      }

      else
      {
        v25 = @"Cannot send payload of this size";
      }
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v52 = destinationsCopy;
  destinationURIs2 = [destinationsCopy destinationURIs];
  v28 = [destinationURIs2 countByEnumeratingWithState:&v54 objects:v62 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v55;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v55 != v30)
        {
          objc_enumerationMutation(destinationURIs2);
        }

        v32 = *(*(&v54 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v33 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v32];

          v24 = 21;
          v25 = v33;
        }
      }

      v29 = [destinationURIs2 countByEnumeratingWithState:&v54 objects:v62 count:16];
    }

    while (v29);
  }

  if (v25)
  {
    v34 = 0;
    v35 = v52;
    v36 = optionsCopy;
    identifierCopy2 = identifier;
    if (!identifier)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  _internal2 = [(IDSAccount *)selfCopy->_account _internal];
  uniqueID = [_internal2 uniqueID];

  identifierCopy2 = identifier;
  v35 = v52;
  if (uniqueID)
  {
    v45 = objc_alloc_init(MEMORY[0x1E69A53E0]);
    [v45 setPriority:priority];
    [v45 setDestinations:v52];
    [v45 setData:dataCopy];
    v34 = -[_IDSConnection _sendWithParameters:options:loggingType:loggingDataSize:](selfCopy, "_sendWithParameters:options:loggingType:loggingDataSize:", v45, v53, @"data", [dataCopy length]);
    v46 = v34;
    v25 = 0;
  }

  else
  {
    v45 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      account = selfCopy->_account;
      *buf = 138412546;
      v59 = selfCopy;
      v60 = 2112;
      v61 = account;
      _os_log_impl(&dword_1959FF000, v45, OS_LOG_TYPE_DEFAULT, "sendPayload - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
    }

    v34 = 0;
    v25 = @"Could not find account uniqueID!";
    v24 = 7;
  }

  v36 = v53;
  if (identifier)
  {
LABEL_31:
    v38 = v34;
    *identifierCopy2 = v34;
  }

LABEL_32:
  if (v25)
  {
    v39 = objc_alloc(MEMORY[0x1E695DF20]);
    v40 = [v39 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v41 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v40];
    if (errorCopy)
    {
      v41 = v41;
      *errorCopy = v41;
    }
  }

  return v25 == 0;
}

- (BOOL)sendInvitation:(id)invitation toDestination:(id)destination priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  destinationCopy = destination;
  optionsCopy = options;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F184();
    }
  }

  destinationURIs = [destinationCopy destinationURIs];
  v18 = [destinationURIs count];

  if (v18)
  {
    _internal = [(IDSAccount *)self->_account _internal];
    isActive = [_internal isActive];

    if (isActive)
    {
      v21 = [MEMORY[0x1E695DF00] now];
      expirationDate = [(_IDSConnection *)invitationCopy expirationDate];
      v23 = [v21 compare:expirationDate];

      if (v23 == 1)
      {
        v24 = 54;
      }

      else
      {
        v24 = 0;
      }

      if (v23 == 1)
      {
        v25 = @"Invitation has expired";
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
      v24 = 8;
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  errorCopy = error;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = destinationCopy;
  destinationURIs2 = [destinationCopy destinationURIs];
  v27 = [destinationURIs2 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v66;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v66 != v29)
        {
          objc_enumerationMutation(destinationURIs2);
        }

        v31 = *(*(&v65 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v31];

          v24 = 21;
          v25 = v32;
        }
      }

      v28 = [destinationURIs2 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v28);
  }

  v33 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = invitationCopy;
    _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendInvitation - preparing to send invitation : %@", buf, 0xCu);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uniqueID = [(_IDSConnection *)invitationCopy uniqueID];
  uUIDString = [uniqueID UUIDString];
  [(IDSAccount *)v34 setValue:uUIDString forKey:*MEMORY[0x1E69A49E0]];

  context = [(_IDSConnection *)invitationCopy context];
  payload = [context payload];
  [(IDSAccount *)v34 setValue:payload forKey:*MEMORY[0x1E69A49A8]];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_IDSConnection state](invitationCopy, "state")}];
  [(IDSAccount *)v34 setValue:v39 forKey:*MEMORY[0x1E69A49D8]];

  expirationDate2 = [(_IDSConnection *)invitationCopy expirationDate];

  if (expirationDate2)
  {
    v41 = MEMORY[0x1E696AD98];
    expirationDate3 = [(_IDSConnection *)invitationCopy expirationDate];
    [expirationDate3 timeIntervalSince1970];
    v43 = [v41 numberWithDouble:?];
    [(IDSAccount *)v34 setValue:v43 forKey:*MEMORY[0x1E69A49C0]];
  }

  v44 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID2 = [(_IDSConnection *)invitationCopy uniqueID];
    uUIDString2 = [uniqueID2 UUIDString];
    *buf = 138412546;
    selfCopy = uUIDString2;
    v71 = 2112;
    v72 = v34;
    _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendInvitation - invitation payload for id {%@}: %@", buf, 0x16u);
  }

  if (v25)
  {
    v47 = 0;
    v49 = optionsCopy;
    v48 = v64;
  }

  else
  {
    _internal2 = [(IDSAccount *)self->_account _internal];
    uniqueID3 = [_internal2 uniqueID];

    if (uniqueID3)
    {
      v52 = objc_alloc_init(MEMORY[0x1E69A53E0]);
      [v52 setPriority:priority];
      v48 = v64;
      [v52 setDestinations:v64];
      [v52 setMessage:v34];
      v49 = optionsCopy;
      v47 = [(_IDSConnection *)self _sendWithParameters:v52 options:optionsCopy loggingType:@"invitation (send)" loggingDataSize:[(IDSAccount *)v34 count]];
      v53 = v47;
      v25 = 0;
    }

    else
    {
      v52 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        account = self->_account;
        *buf = 138412546;
        selfCopy = self;
        v71 = 2112;
        v72 = account;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendInvitation - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
      }

      v47 = 0;
      v25 = @"Could not find account uniqueID!";
      v24 = 7;
      v49 = optionsCopy;
      v48 = v64;
    }
  }

  if (identifier)
  {
    v55 = v47;
    *identifier = v47;
  }

  if (v25)
  {
    v56 = objc_alloc(MEMORY[0x1E695DF20]);
    v57 = [v56 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v58 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v57];
    if (errorCopy)
    {
      v58 = v58;
      *errorCopy = v58;
    }
  }

  return v25 == 0;
}

- (BOOL)sendInvitationUpdate:(id)update toDestination:(id)destination priority:(int64_t)priority options:(id)options identifier:(id *)identifier error:(id *)error
{
  v74 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  destinationCopy = destination;
  optionsCopy = options;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F224();
    }
  }

  destinationURIs = [destinationCopy destinationURIs];
  v18 = [destinationURIs count];

  if (v18)
  {
    _internal = [(IDSAccount *)self->_account _internal];
    isActive = [_internal isActive];

    if (isActive)
    {
      v21 = [MEMORY[0x1E695DF00] now];
      expirationDate = [(_IDSConnection *)updateCopy expirationDate];
      v23 = [v21 compare:expirationDate];

      if (v23 == 1)
      {
        v24 = 54;
      }

      else
      {
        v24 = 0;
      }

      if (v23 == 1)
      {
        v25 = @"Invitation has expired";
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = @"Cannot send with an inactive account";
      v24 = 8;
    }
  }

  else
  {
    v25 = @"Cannot send to empty destination set";
    v24 = 1;
  }

  errorCopy = error;
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  v64 = destinationCopy;
  destinationURIs2 = [destinationCopy destinationURIs];
  v27 = [destinationURIs2 countByEnumeratingWithState:&v65 objects:v73 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v66;
    do
    {
      for (i = 0; i != v28; ++i)
      {
        if (*v66 != v29)
        {
          objc_enumerationMutation(destinationURIs2);
        }

        v31 = *(*(&v65 + 1) + 8 * i);
        if ((_IDSDestinationHasValidPrefix() & 1) == 0)
        {
          v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Invalid address: %@", v31];

          v24 = 21;
          v25 = v32;
        }
      }

      v28 = [destinationURIs2 countByEnumeratingWithState:&v65 objects:v73 count:16];
    }

    while (v28);
  }

  v33 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = updateCopy;
    _os_log_impl(&dword_1959FF000, v33, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - preparing to send invitation : %@", buf, 0xCu);
  }

  v34 = objc_alloc_init(MEMORY[0x1E695DF90]);
  uniqueID = [(_IDSConnection *)updateCopy uniqueID];
  uUIDString = [uniqueID UUIDString];
  [(IDSAccount *)v34 setValue:uUIDString forKey:*MEMORY[0x1E69A49E0]];

  context = [(_IDSConnection *)updateCopy context];
  payload = [context payload];
  [(IDSAccount *)v34 setValue:payload forKey:*MEMORY[0x1E69A49A8]];

  v39 = [MEMORY[0x1E696AD98] numberWithInteger:{-[_IDSConnection state](updateCopy, "state")}];
  [(IDSAccount *)v34 setValue:v39 forKey:*MEMORY[0x1E69A49D8]];

  expirationDate2 = [(_IDSConnection *)updateCopy expirationDate];

  if (expirationDate2)
  {
    v41 = MEMORY[0x1E696AD98];
    expirationDate3 = [(_IDSConnection *)updateCopy expirationDate];
    [expirationDate3 timeIntervalSince1970];
    v43 = [v41 numberWithDouble:?];
    [(IDSAccount *)v34 setValue:v43 forKey:*MEMORY[0x1E69A49C0]];
  }

  v44 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
  {
    uniqueID2 = [(_IDSConnection *)updateCopy uniqueID];
    uUIDString2 = [uniqueID2 UUIDString];
    *buf = 138412546;
    selfCopy = uUIDString2;
    v71 = 2112;
    v72 = v34;
    _os_log_impl(&dword_1959FF000, v44, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - invitation payload for id {%@}: %@", buf, 0x16u);
  }

  if (v25)
  {
    v47 = 0;
    v49 = optionsCopy;
    v48 = v64;
  }

  else
  {
    _internal2 = [(IDSAccount *)self->_account _internal];
    uniqueID3 = [_internal2 uniqueID];

    if (uniqueID3)
    {
      v52 = objc_alloc_init(MEMORY[0x1E69A53E0]);
      [v52 setPriority:priority];
      v48 = v64;
      [v52 setDestinations:v64];
      [v52 setMessage:v34];
      v49 = optionsCopy;
      v47 = [(_IDSConnection *)self _sendWithParameters:v52 options:optionsCopy loggingType:@"invitation (update)" loggingDataSize:[(IDSAccount *)v34 count]];
      v53 = v47;
      v25 = 0;
    }

    else
    {
      v52 = +[IDSLogging IDSConnection];
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        account = self->_account;
        *buf = 138412546;
        selfCopy = self;
        v71 = 2112;
        v72 = account;
        _os_log_impl(&dword_1959FF000, v52, OS_LOG_TYPE_DEFAULT, "sendInvitationUpdate - could not find account uniqueID! self: %@ account: %@", buf, 0x16u);
      }

      v47 = 0;
      v25 = @"Could not find account uniqueID!";
      v24 = 7;
      v49 = optionsCopy;
      v48 = v64;
    }
  }

  if (identifier)
  {
    v55 = v47;
    *identifier = v47;
  }

  if (v25)
  {
    v56 = objc_alloc(MEMORY[0x1E695DF20]);
    v57 = [v56 initWithObjectsAndKeys:{v25, *MEMORY[0x1E696A578], 0}];
    v58 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:v24 userInfo:v57];
    if (errorCopy)
    {
      v58 = v58;
      *errorCopy = v58;
    }
  }

  return v25 == 0;
}

- (BOOL)sendServerMessage:(id)message command:(id)command
{
  v22 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  commandCopy = command;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F2C4();
    }
  }

  if (commandCopy && [messageCopy count])
  {
    _internal = [(IDSAccount *)self->_account _internal];
    uniqueID = [_internal uniqueID];

    daemonController = [(_IDSConnection *)self daemonController];
    [daemonController sendServerMessage:messageCopy command:commandCopy usingAccountWithUniqueID:uniqueID];

    v14 = 1;
  }

  else
  {
    uniqueID = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(uniqueID, OS_LOG_TYPE_ERROR))
    {
      v16 = 138412802;
      selfCopy = self;
      v18 = 2112;
      v19 = messageCopy;
      v20 = 2112;
      v21 = commandCopy;
      _os_log_error_impl(&dword_1959FF000, uniqueID, OS_LOG_TYPE_ERROR, "%@ asked to send server message %@ with command %@ - invalid value!", &v16, 0x20u);
    }

    v14 = 0;
  }

  return v14;
}

- (void)connection:(id)connection incomingAckWithIdentifier:(id)identifier forTopic:(id)topic toIdentifier:(id)toIdentifier fromIdentifier:(id)fromIdentifier hasBeenDeliveredWithContext:(id)context isAppAck:(BOOL)ack
{
  v30 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  identifierCopy = identifier;
  topicCopy = topic;
  toIdentifierCopy = toIdentifier;
  fromIdentifierCopy = fromIdentifier;
  contextCopy = context;
  if (self->_directMessageConnection == connectionCopy)
  {
    v21 = +[IDSLogging IDSConnection];
    v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (ack)
    {
      if (v22)
      {
        *buf = 138412546;
        v27 = connectionCopy;
        v28 = 2112;
        v29 = identifierCopy;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "incomingAppLevelAckFromDirectConnection: %@ guid %@", buf, 0x16u);
      }

      _internal = [MEMORY[0x1E69A5428] URIWithPrefixedURI:toIdentifierCopy];
      uniqueID = [MEMORY[0x1E69A5428] URIWithPrefixedURI:fromIdentifierCopy];
      [(_IDSConnection *)self messageIdentifier:identifierCopy forTopic:topicCopy toURI:_internal fromURI:uniqueID hasBeenDeliveredWithContext:contextCopy];
    }

    else
    {
      if (v22)
      {
        *buf = 138412546;
        v27 = connectionCopy;
        v28 = 2112;
        v29 = identifierCopy;
        _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "incomingAckFromDirectConnection: %@ guid %@", buf, 0x16u);
      }

      _internal = [(IDSAccount *)self->_account _internal];
      uniqueID = [_internal uniqueID];
      LOBYTE(v25) = 1;
      [(_IDSConnection *)self messageIdentifierInner:identifierCopy alternateCallbackID:0 forAccount:uniqueID updatedWithResponseCode:0 error:0 lastCall:1 context:contextCopy isDirectMessage:v25];
    }
  }
}

- (void)connection:(id)connection incomingDataFromDirectConnection:(id)directConnection withGUID:(id)d forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)iD context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  dCopy = d;
  if (self->_directMessageConnection == connectionCopy)
  {
    contextCopy = context;
    iDCopy = iD;
    identifierCopy = identifier;
    topicCopy = topic;
    directConnectionCopy = directConnection;
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412546;
      v26 = connectionCopy;
      v27 = 2112;
      v28 = dCopy;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingDataFromDirectConnection: %@ guid %@", &v25, 0x16u);
    }

    v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:identifierCopy];

    v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:iDCopy];

    [(_IDSConnection *)self dataReceived:directConnectionCopy withGUID:dCopy forTopic:topicCopy toURI:v23 fromURI:v24 context:contextCopy];
  }
}

- (void)connection:(id)connection incomingMessageFromDirectConnection:(id)directConnection withGUID:(id)d forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)iD context:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (self->_directMessageConnection == connectionCopy)
  {
    contextCopy = context;
    iDCopy = iD;
    identifierCopy = identifier;
    topicCopy = topic;
    dCopy = d;
    directConnectionCopy = directConnection;
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = connectionCopy;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingMessageFromDirectConnection: %@", buf, 0xCu);
    }

    v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:identifierCopy];

    v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:iDCopy];

    [(_IDSConnection *)self messageReceived:0 withGUID:dCopy withPayload:directConnectionCopy forTopic:topicCopy toURI:v23 fromURI:v24 context:contextCopy];
  }
}

- (void)connection:(id)connection incomingProtobufFromDirectConnection:(id)directConnection withGUID:(id)d forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)iD context:(id)context
{
  v27 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  if (self->_directMessageConnection == connectionCopy)
  {
    contextCopy = context;
    iDCopy = iD;
    identifierCopy = identifier;
    topicCopy = topic;
    dCopy = d;
    directConnectionCopy = directConnection;
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 138412290;
      v26 = connectionCopy;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingProtobufFromDirectConnection: %@", &v25, 0xCu);
    }

    v23 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:identifierCopy];

    v24 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:iDCopy];

    [(_IDSConnection *)self protobufReceived:directConnectionCopy withGUID:dCopy forTopic:topicCopy toURI:v23 fromURI:v24 context:contextCopy];
  }
}

- (void)connection:(id)connection incomingGUIDAckFromDirectConnection:(id)directConnection
{
  v12 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  directConnectionCopy = directConnection;
  v7 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = connectionCopy;
    v10 = 2112;
    v11 = directConnectionCopy;
    _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "incomingGUIDAckFromDirectConnection: %@/%@", &v8, 0x16u);
  }
}

- (void)connection:(id)connection messageSendFailed:(id)failed responseCode:(int64_t)code
{
  if (self->_directMessageConnection == connection)
  {
    account = self->_account;
    failedCopy = failed;
    _internal = [(IDSAccount *)account _internal];
    uniqueID = [_internal uniqueID];
    v11 = objc_alloc(MEMORY[0x1E696ABC0]);
    v12 = [v11 initWithDomain:*MEMORY[0x1E69A5098] code:code userInfo:0];
    LOBYTE(v13) = 1;
    [(_IDSConnection *)self messageIdentifierInner:failedCopy alternateCallbackID:0 forAccount:uniqueID updatedWithResponseCode:code error:v12 lastCall:1 context:0 isDirectMessage:v13];
  }
}

- (void)account:(id)account isActiveChanged:(BOOL)changed
{
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F364();
    }
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A76ACC;
  v9[3] = &unk_1E7440E80;
  v9[4] = self;
  changedCopy = changed;
  [(_IDSConnection *)self _callDelegatesWithBlock:v9];
}

- (void)account:(id)account devicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F404();
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195A76C50;
  v14 = &unk_1E7440EA8;
  selfCopy = self;
  v9 = changedCopy;
  v16 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:&v11];
  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    [(IDSDirectMessageConnection *)directMessageConnection updateConnectedDevices:v9, v11, v12, v13, v14, selfCopy];
  }
}

- (void)account:(id)account nearbyDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F4A4();
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195A76DD4;
  v14 = &unk_1E7440EA8;
  selfCopy = self;
  v9 = changedCopy;
  v16 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:&v11];
  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    [(IDSDirectMessageConnection *)directMessageConnection updateConnectedDevices:v9, v11, v12, v13, v14, selfCopy];
  }
}

- (void)account:(id)account connectedDevicesChanged:(id)changed
{
  changedCopy = changed;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F544();
    }
  }

  v11 = MEMORY[0x1E69E9820];
  v12 = 3221225472;
  v13 = sub_195A76F58;
  v14 = &unk_1E7440EA8;
  selfCopy = self;
  v9 = changedCopy;
  v16 = v9;
  [(_IDSConnection *)self _callDelegatesWithBlock:&v11];
  directMessageConnection = self->_directMessageConnection;
  if (directMessageConnection)
  {
    [(IDSDirectMessageConnection *)directMessageConnection updateConnectedDevices:v9, v11, v12, v13, v14, selfCopy];
  }
}

- (void)_handleLastCallForPendingIdentifier:(id)identifier callbackID:(id)d
{
  identifierCopy = identifier;
  dCopy = d;
  if (identifierCopy)
  {
    [(IMOrderedMutableDictionary *)self->_pendingSends removeOrderedObjectForKey:identifierCopy];
  }

  if (dCopy)
  {
    [(IMOrderedMutableDictionary *)self->_pendingSends removeOrderedObjectForKey:dCopy];
  }

  if (![(IMOrderedMutableDictionary *)self->_pendingSends count])
  {
    pendingSends = self->_pendingSends;
    self->_pendingSends = 0;
  }
}

- (void)messageIdentifierInner:(id)inner alternateCallbackID:(id)d forAccount:(id)account updatedWithResponseCode:(int64_t)code error:(id)error lastCall:(BOOL)call context:(id)context isDirectMessage:(BOOL)self0
{
  callCopy = call;
  v89 = *MEMORY[0x1E69E9840];
  innerCopy = inner;
  dCopy = d;
  accountCopy = account;
  errorCopy = error;
  contextCopy = context;
  v20 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v20 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F8B4();
    }
  }

  _internal = [(IDSAccount *)self->_account _internal];
  uniqueID = [_internal uniqueID];
  v25 = IMAreObjectsLogicallySame();

  if (v25)
  {
    v60 = dCopy;
    v26 = 0x1E743D000uLL;
    v27 = +[IDSLogging GUIDTRACE];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = @"NO";
      *buf = 138412802;
      selfCopy2 = innerCopy;
      if (callCopy)
      {
        v28 = @"YES";
      }

      v73 = 2048;
      codeCopy = code;
      v75 = 2112;
      v76 = v28;
      _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "OUTGOING-UPDATE:%@ CODE:%ld LASTCALL:%@", buf, 0x20u);
    }

    v59 = self->_messageContext;
    v61 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v59];
    v29 = 0x1E743D000uLL;
    v30 = +[IDSTransportLog IDSConnection];
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
    if (code == 29)
    {
      if (v31)
      {
        v32 = [contextCopy objectForKey:*MEMORY[0x1E69A4E80]];
        v33 = [contextCopy objectForKey:*MEMORY[0x1E69A4E78]];
        v34 = [contextCopy objectForKey:*MEMORY[0x1E69A4E88]];
        v35 = v34;
        *buf = 138414338;
        v36 = @"NO";
        selfCopy2 = self;
        v73 = 2114;
        if (callCopy)
        {
          v36 = @"YES";
        }

        codeCopy = innerCopy;
        v75 = 2112;
        v76 = v60;
        v77 = 2048;
        codeCopy2 = 29;
        v79 = 2114;
        v80 = errorCopy;
        v81 = 2114;
        v82 = v32;
        v83 = 2114;
        v84 = v33;
        v85 = 2114;
        v86 = v34;
        v87 = 2112;
        v88 = v36;
        _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "%@ outgoing message guid response: %{public}@  callbackID: %@  response code: %ld   error: %{public}@  WiProx error: Error Domain=%{public}@ Code=%{public}@ %{public}@  lastCall: %@", buf, 0x5Cu);

        v29 = 0x1E743D000;
        v26 = 0x1E743D000;
      }
    }

    else if (v31)
    {
      if (callCopy)
      {
        v37 = @"YES";
      }

      else
      {
        v37 = @"NO";
      }

      endpointState = [v61 endpointState];
      *buf = 138413826;
      selfCopy2 = self;
      v73 = 2114;
      codeCopy = innerCopy;
      v75 = 2112;
      v76 = dCopy;
      v77 = 2048;
      codeCopy2 = code;
      v79 = 2114;
      v80 = errorCopy;
      v81 = 2112;
      v82 = v37;
      v29 = 0x1E743D000uLL;
      v83 = 2048;
      v84 = endpointState;
      _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "%@ outgoing message guid response: %{public}@  callbackID: %@  response code: %ld   error: %{public}@   lastCall: %@  endpointState: %ld", buf, 0x48u);
    }

    if (code != 11 && !callCopy)
    {
      goto LABEL_22;
    }

    dCopy = v60;
    [(_IDSConnection *)self _handleLastCallForPendingIdentifier:innerCopy callbackID:v60];
    if (code == 11)
    {
      goto LABEL_35;
    }

    [v61 originalCommand];
    v56 = v55 = v29;
    v57 = [v56 isEqualToNumber:&unk_1F0A29918];

    v29 = v55;
    if (v57)
    {
      [_IDSConnection didCancelMessageWithSuccess:"didCancelMessageWithSuccess:onAccount:error:identifier:" onAccount:(code | errorCopy) == 0 error:accountCopy identifier:?];
    }

    else
    {
LABEL_22:
      iDSConnection = [*(v29 + 1456) IDSConnection];
      if (os_log_type_enabled(iDSConnection, OS_LOG_TYPE_DEFAULT))
      {
        serverReceivedTime = [v61 serverReceivedTime];
        [v61 serverTimestamp];
        v42 = v41 = v26;
        *buf = 138412546;
        selfCopy2 = serverReceivedTime;
        v73 = 2112;
        codeCopy = v42;
        _os_log_impl(&dword_1959FF000, iDSConnection, OS_LOG_TYPE_DEFAULT, "Server Timestamp for UpdatedWithResponseCode? { serverReceivedTime: %@, serverTimestamp: %@}", buf, 0x16u);

        v26 = v41;
      }

      v58 = code == 0;
      v43 = sub_195A0AAB0(errorCopy);
      v44 = v43;
      v45 = !callCopy;
      if (code && (v45 & 1) == 0 && !v43)
      {
        iDSConnection2 = [*(v26 + 1160) IDSConnection];
        if (os_log_type_enabled(iDSConnection2, OS_LOG_TYPE_ERROR))
        {
          sub_195B2F954(iDSConnection2);
        }

        v47 = objc_alloc(MEMORY[0x1E695DF20]);
        v48 = [v47 initWithObjectsAndKeys:{@"Unknown error", *MEMORY[0x1E696A578], 0}];
        v44 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"com.apple.identityservices.error" code:200 userInfo:v48];
      }

      v63[0] = MEMORY[0x1E69E9820];
      v63[1] = 3221225472;
      v63[2] = sub_195A77778;
      v63[3] = &unk_1E7440ED0;
      v63[4] = self;
      v49 = innerCopy;
      v64 = v49;
      v50 = v60;
      v65 = v50;
      codeCopy3 = code;
      v51 = v44;
      v66 = v51;
      v69 = callCopy;
      v67 = v61;
      v70 = v58;
      [(_IDSConnection *)self _callDelegatesWithBlock:v63];
      if (((v45 | message) & 1) == 0)
      {
        daemonController = [(_IDSConnection *)self daemonController];
        _internal2 = [(IDSAccount *)self->_account _internal];
        uniqueID2 = [_internal2 uniqueID];
        [daemonController acknowledgeOutgoingMessageWithGUID:v49 alternateCallbackID:v50 forAccountWithUniqueID:uniqueID2];
      }
    }

    dCopy = v60;
LABEL_35:
  }
}

- (void)messageIdentifier:(id)identifier alternateCallbackID:(id)d forAccount:(id)account willSendToDestinations:(id)destinations skippedDestinations:(id)skippedDestinations registrationPropertyToDestinations:(id)toDestinations
{
  v48 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  dCopy = d;
  destinationsCopy = destinations;
  skippedDestinationsCopy = skippedDestinations;
  toDestinationsCopy = toDestinations;
  accountCopy = account;
  v20 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v20 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2F998();
    }
  }

  _internal = [(IDSAccount *)self->_account _internal];
  uniqueID = [_internal uniqueID];
  v25 = IMAreObjectsLogicallySame();

  if (v25)
  {
    v26 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(destinationsCopy, "count")}];
      v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(skippedDestinationsCopy, "count")}];
      v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(toDestinationsCopy, "count")}];
      *buf = 138413570;
      selfCopy = self;
      v38 = 2112;
      v39 = identifierCopy;
      v40 = 2112;
      v41 = dCopy;
      v42 = 2112;
      v43 = v27;
      v44 = 2112;
      v45 = v28;
      v46 = 2112;
      v47 = v29;
      _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "%@ identifier %@ callbackID %@ willSendToDests count %@ skipped count %@  map count %@", buf, 0x3Eu);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = sub_195A77C84;
    v30[3] = &unk_1E7440EF8;
    v30[4] = self;
    v31 = identifierCopy;
    v32 = dCopy;
    v33 = destinationsCopy;
    v34 = skippedDestinationsCopy;
    v35 = toDestinationsCopy;
    [(_IDSConnection *)self _callDelegatesWithBlock:v30];
  }
}

- (void)messageIdentifier:(id)identifier forTopic:(id)topic toURI:(id)i fromURI:(id)rI hasBeenDeliveredWithContext:(id)context
{
  v53 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  rICopy = rI;
  contextCopy = context;
  iCopy = i;
  topicCopy = topic;
  v16 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v16 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FA38();
    }
  }

  v18 = self->_messageContext;
  v19 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v18];
  outgoingResponseIdentifier = [v19 outgoingResponseIdentifier];
  v21 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"app-level ack" forTopic:topicCopy localURI:iCopy remoteURI:0 validateAliases:1 guid:outgoingResponseIdentifier];

  if (v21)
  {
    v22 = +[IDSTransportLog IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v49 = 2112;
      v50 = identifierCopy;
      v51 = 2112;
      v52 = contextCopy;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "%@ received app-level ack with identifier %@ context %@", buf, 0x20u);
    }

    v23 = dispatch_group_create();
    dispatch_group_enter(v23);
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = sub_195A78190;
    v43[3] = &unk_1E7440F20;
    v43[4] = self;
    v35 = identifierCopy;
    v44 = identifierCopy;
    v45 = rICopy;
    v46 = contextCopy;
    [(_IDSConnection *)self _callDelegatesWithBlock:v43 group:v23];
    storageGuid = [v19 storageGuid];
    broadcastTime = [v19 broadcastTime];

    if (broadcastTime)
    {
      v26 = MEMORY[0x1E696AD98];
      [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
      v28 = v27;
      broadcastTime2 = [v19 broadcastTime];
      [broadcastTime2 doubleValue];
      broadcastTime = [v26 numberWithDouble:v28 - v30];
    }

    v31 = +[IDSInternalQueueController sharedInstance];
    queue = [v31 queue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = sub_195A78210;
    block[3] = &unk_1E743EF38;
    v38 = storageGuid;
    v39 = broadcastTime;
    selfCopy2 = self;
    v41 = outgoingResponseIdentifier;
    v42 = v19;
    v33 = broadcastTime;
    v34 = storageGuid;
    dispatch_group_notify(v23, queue, block);

    dispatch_group_leave(v23);
    identifierCopy = v35;
  }
}

- (void)didSendOpportunisticDataWithIdentifier:(id)identifier onAccount:(id)account toIDs:(id)ds
{
  v29 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  accountCopy = account;
  dsCopy = ds;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FAD8();
    }
  }

  _internal = [(IDSAccount *)self->_account _internal];
  uniqueID = [_internal uniqueID];
  v16 = IMAreObjectsLogicallySame();

  if (v16)
  {
    opportunistic = [MEMORY[0x1E69A5270] opportunistic];
    if (os_log_type_enabled(opportunistic, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      selfCopy = self;
      v23 = 2112;
      v24 = identifierCopy;
      v25 = 2112;
      v26 = accountCopy;
      v27 = 2112;
      v28 = dsCopy;
      _os_log_impl(&dword_1959FF000, opportunistic, OS_LOG_TYPE_DEFAULT, "Recieved did send opportunistic data {connection: %@, identifier: %@, accountID: %@, toIDs: %@}", buf, 0x2Au);
    }

    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = sub_195A78520;
    v18[3] = &unk_1E7440F48;
    v18[4] = self;
    v19 = identifierCopy;
    v20 = dsCopy;
    [(_IDSConnection *)self _callDelegatesWithBlock:v18];
  }
}

- (void)didCancelMessageWithSuccess:(BOOL)success onAccount:(id)account error:(id)error identifier:(id)identifier
{
  successCopy = success;
  v30 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  identifierCopy = identifier;
  v11 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v11 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FB78();
    }
  }

  v14 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = @"NO";
    *buf = 138413058;
    selfCopy = self;
    if (successCopy)
    {
      v15 = @"YES";
    }

    v24 = 2112;
    v25 = v15;
    v26 = 2112;
    v27 = errorCopy;
    v28 = 2112;
    v29 = identifierCopy;
    _os_log_impl(&dword_1959FF000, v14, OS_LOG_TYPE_DEFAULT, "%@: didCancelMessageWithSuccess: %@ error: %@ identifier %@", buf, 0x2Au);
  }

  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = sub_195A7877C;
  v18[3] = &unk_1E7440F70;
  v21 = successCopy;
  v18[4] = self;
  v19 = errorCopy;
  v20 = identifierCopy;
  v16 = identifierCopy;
  v17 = errorCopy;
  [(_IDSConnection *)self _callDelegatesWithBlock:v18];
}

- (void)_setTemporaryMessageContext:(id)context
{
  contextCopy = context;
  messageContext = self->_messageContext;
  p_messageContext = &self->_messageContext;
  if (messageContext != contextCopy)
  {
    v8 = contextCopy;
    objc_storeStrong(p_messageContext, context);
    contextCopy = v8;
  }
}

- (BOOL)_shouldAcceptIncomingType:(id)type forTopic:(id)topic localURI:(id)i remoteURI:(id)rI validateAliases:(BOOL)aliases guid:(id)guid
{
  aliasesCopy = aliases;
  v131 = *MEMORY[0x1E69E9840];
  typeCopy = type;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  guidCopy = guid;
  selfCopy = self;
  account = [(_IDSConnection *)self account];
  _internal = [account _internal];
  pushTopic = [_internal pushTopic];
  v22 = [(__CFString *)topicCopy isEqualToIgnoringCase:pushTopic];

  if ((v22 & 1) == 0)
  {
    v49 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      _internal2 = [(IDSAccount *)selfCopy->_account _internal];
      pushTopic2 = [_internal2 pushTopic];
      *buf = 134218754;
      v114 = selfCopy;
      v115 = 2112;
      v116 = typeCopy;
      v117 = 2112;
      v118 = topicCopy;
      v119 = 2112;
      v120 = pushTopic2;
      _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "_IDSConnection incoming topic for another connection {self: %p, type: %@, topic: %@, self.topic: %@}", buf, 0x2Au);
    }

    goto LABEL_53;
  }

  if (aliasesCopy)
  {
    v91 = guidCopy;
    v94 = typeCopy;
    v96 = topicCopy;
    v110 = 0u;
    v111 = 0u;
    v108 = 0u;
    v109 = 0u;
    account2 = [(_IDSConnection *)selfCopy account];
    _internal3 = [account2 _internal];
    handles = [_internal3 handles];

    v26 = [handles countByEnumeratingWithState:&v108 objects:v130 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v109;
      while (2)
      {
        v29 = rICopy;
        for (i = 0; i != v27; ++i)
        {
          if (*v109 != v28)
          {
            objc_enumerationMutation(handles);
          }

          v31 = [*(*(&v108 + 1) + 8 * i) URI];
          unprefixedURI = [v31 unprefixedURI];
          unprefixedURI2 = [(__CFString *)iCopy unprefixedURI];
          v34 = [unprefixedURI isEqualToString:unprefixedURI2];

          if (v34)
          {

            typeCopy = v94;
            topicCopy = v96;
            rICopy = v29;
            guidCopy = v91;
            goto LABEL_24;
          }
        }

        v27 = [handles countByEnumeratingWithState:&v108 objects:v130 count:16];
        rICopy = v29;
        if (v27)
        {
          continue;
        }

        break;
      }
    }

    prefixedURI = [(__CFString *)iCopy prefixedURI];
    _appearsToBePseudonymID = [prefixedURI _appearsToBePseudonymID];

    if (_appearsToBePseudonymID)
    {
      v106 = 0u;
      v107 = 0u;
      v104 = 0u;
      v105 = 0u;
      account3 = [(_IDSConnection *)selfCopy account];
      _internal4 = [account3 _internal];
      pseudonyms = [_internal4 pseudonyms];

      v40 = [pseudonyms countByEnumeratingWithState:&v104 objects:v129 count:16];
      if (v40)
      {
        v41 = v40;
        v80 = rICopy;
        v42 = *v105;
        guidCopy = v91;
        while (2)
        {
          for (j = 0; j != v41; ++j)
          {
            if (*v105 != v42)
            {
              objc_enumerationMutation(pseudonyms);
            }

            v44 = [*(*(&v104 + 1) + 8 * j) URI];
            prefixedURI2 = [v44 prefixedURI];
            unprefixedURI3 = [(__CFString *)iCopy unprefixedURI];
            v47 = [prefixedURI2 isEqualToString:unprefixedURI3];

            if (v47)
            {
              v48 = 1;
              goto LABEL_62;
            }
          }

          v41 = [pseudonyms countByEnumeratingWithState:&v104 objects:v129 count:16];
          if (v41)
          {
            continue;
          }

          break;
        }

        v48 = 0;
LABEL_62:
        rICopy = v80;
      }

      else
      {
        v48 = 0;
        guidCopy = v91;
      }

      typeCopy = v94;
      topicCopy = v96;
    }

    else
    {
      v48 = 0;
      typeCopy = v94;
      topicCopy = v96;
      guidCopy = v91;
    }

    if (iCopy && (v48 & 1) == 0)
    {
      v49 = +[IDSLogging IDSConnection_oversize];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        _internal5 = [(IDSAccount *)selfCopy->_account _internal];
        handles2 = [_internal5 handles];
        uniqueID = [(IDSAccount *)selfCopy->_account uniqueID];
        _internal6 = [(IDSAccount *)selfCopy->_account _internal];
        pseudonyms2 = [_internal6 pseudonyms];
        *buf = 134219266;
        v114 = selfCopy;
        v115 = 2112;
        v116 = typeCopy;
        v117 = 2112;
        v118 = iCopy;
        v119 = 2112;
        v120 = handles2;
        v121 = 2112;
        v122 = uniqueID;
        v123 = 2112;
        v124 = pseudonyms2;
        _os_log_impl(&dword_1959FF000, v49, OS_LOG_TYPE_DEFAULT, "_IDSConnection incoming handle for another connection {self: %p, type: %@, localURI: %@, self.aliases: %@, account.uuid: %@, self.pseudonyms: %@}", buf, 0x3Eu);

        topicCopy = v96;
      }

LABEL_53:
      v62 = 0;
      goto LABEL_54;
    }
  }

LABEL_24:
  if (![(_IDSConnection *)selfCopy _isAccountInValidRegistrationStateToAcceptMessages])
  {
    v63 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      _internal7 = [(IDSAccount *)selfCopy->_account _internal];
      uniqueID2 = [_internal7 uniqueID];
      _internal8 = [(IDSAccount *)selfCopy->_account _internal];
      if ([_internal8 isActive])
      {
        v64 = @"YES";
      }

      else
      {
        v64 = @"NO";
      }

      v85 = v64;
      _internal9 = [(IDSAccount *)selfCopy->_account _internal];
      if ([_internal9 registrationStatus] == 5)
      {
        v65 = @"YES";
      }

      else
      {
        v65 = @"NO";
      }

      v83 = v65;
      _internal10 = [(IDSAccount *)selfCopy->_account _internal];
      if ([_internal10 accountType] == 2)
      {
        v66 = @"YES";
      }

      else
      {
        v66 = @"NO";
      }

      v82 = v66;
      _internal11 = [(IDSAccount *)selfCopy->_account _internal];
      primaryServiceName = [_internal11 primaryServiceName];
      _internal12 = [(IDSAccount *)selfCopy->_account _internal];
      v68 = guidCopy;
      v69 = rICopy;
      registrationStatus = [_internal12 registrationStatus];
      _internal13 = [(IDSAccount *)selfCopy->_account _internal];
      registrationCertificate = [_internal13 registrationCertificate];
      *buf = 138414082;
      if (registrationCertificate)
      {
        v73 = @"YES";
      }

      else
      {
        v73 = @"NO";
      }

      v114 = typeCopy;
      v115 = 2112;
      v116 = uniqueID2;
      v117 = 2112;
      v118 = v85;
      v119 = 2112;
      v120 = v83;
      v121 = 2112;
      v122 = v82;
      v123 = 2112;
      v124 = primaryServiceName;
      v125 = 2048;
      v126 = registrationStatus;
      rICopy = v69;
      guidCopy = v68;
      v127 = 2112;
      v128 = v73;
      _os_log_impl(&dword_1959FF000, v63, OS_LOG_TYPE_DEFAULT, "Ignoring %@, account is not configured: %@    isActive: %@  isRegistered: %@  isLocal: %@  serviceIdentifier: %@  registrationStatus: %ld  registrationCert: %@", buf, 0x52u);
    }

    v49 = [objc_alloc(MEMORY[0x1E69A5338]) initWithReason:703 guid:guidCopy service:topicCopy additionalInformation:0];
    [(_IDSConnection *)selfCopy _sendMissingMessageMetric:v49];
    goto LABEL_53;
  }

  if (!rICopy)
  {
    v62 = 1;
    goto LABEL_55;
  }

  unprefixedURI4 = [(__CFString *)rICopy unprefixedURI];
  v103 = 0;
  v53 = [unprefixedURI4 _stripPotentialTokenURIWithToken:&v103];
  v49 = v103;

  if (v49 && v53)
  {
    v92 = guidCopy;
    v97 = topicCopy;
    v101 = 0u;
    v102 = 0u;
    v99 = 0u;
    v100 = 0u;
    _internal14 = [(IDSAccount *)selfCopy->_account _internal];
    suppressedDevices = [_internal14 suppressedDevices];

    v56 = [suppressedDevices countByEnumeratingWithState:&v99 objects:v112 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v100;
      v81 = rICopy;
      while (2)
      {
        for (k = 0; k != v57; ++k)
        {
          if (*v100 != v58)
          {
            objc_enumerationMutation(suppressedDevices);
          }

          _internal15 = [*(*(&v99 + 1) + 8 * k) _internal];
          pushToken = [_internal15 pushToken];

          if ([pushToken isEqualToData:v49])
          {
            v75 = +[IDSTransportLog IDSConnection];
            topicCopy = v97;
            rICopy = v81;
            if (os_log_type_enabled(v75, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412802;
              v114 = typeCopy;
              v115 = 2112;
              v116 = v97;
              v117 = 2112;
              v118 = v81;
              _os_log_impl(&dword_1959FF000, v75, OS_LOG_TYPE_DEFAULT, "Ignoring %@ for topic %@ because fromID %@ is a suppressed IDSDevice.", buf, 0x20u);
            }

            v62 = 0;
            guidCopy = v92;
            goto LABEL_54;
          }
        }

        v57 = [suppressedDevices countByEnumeratingWithState:&v99 objects:v112 count:16];
        rICopy = v81;
        if (v57)
        {
          continue;
        }

        break;
      }
    }

    topicCopy = v97;
    guidCopy = v92;
  }

  v62 = 1;
LABEL_54:

LABEL_55:
  return v62;
}

- (void)opportunisticDataReceived:(id)received withIdentifier:(id)identifier fromURI:(id)i context:(id)context
{
  receivedCopy = received;
  identifierCopy = identifier;
  iCopy = i;
  v13 = MEMORY[0x1E69A5320];
  v14 = self->_messageContext;
  contextCopy = context;
  v16 = [[v13 alloc] initWithDictionary:contextCopy boostContext:v14];

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = sub_195A792D4;
  v21[3] = &unk_1E7440F98;
  v21[4] = self;
  v22 = receivedCopy;
  v23 = identifierCopy;
  v24 = iCopy;
  v25 = v16;
  v17 = v16;
  v18 = iCopy;
  v19 = identifierCopy;
  v20 = receivedCopy;
  [(_IDSConnection *)self _callDelegatesWithBlock:v21];
}

- (void)messageReceived:(id)received withGUID:(id)d withPayload:(id)payload forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v91 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  payloadCopy = payload;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  contextCopy = context;
  v15 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v15 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FC18();
    }
  }

  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  v80 = _os_activity_create(&dword_1959FF000, "Connection recieved message", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v80, &state);
  v54 = self->_messageContext;
  v59 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v54];
  outgoingResponseIdentifier = [v59 outgoingResponseIdentifier];
  v18 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:outgoingResponseIdentifier];

  if (v18)
  {
    v19 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [payloadCopy count];
      *buf = 138413570;
      *v83 = self;
      *&v83[8] = 2112;
      v84 = dCopy;
      *v85 = 2112;
      *&v85[2] = topicCopy;
      *v86 = 2112;
      *&v86[2] = rICopy;
      v87 = 2112;
      v88 = iCopy;
      v89 = 1024;
      v90 = v20;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "%@ received message: %@  topic %@  from: %@  to: %@  payload items: %d", buf, 0x3Au);
    }

    v50 = dCopy;
    if ([v50 length])
    {
      incomingResponseIdentifier = v50;
      if ([v50 length])
      {
LABEL_13:
        v21 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v83 = incomingResponseIdentifier;
          *&v83[8] = 2112;
          v84 = topicCopy;
          _os_log_impl(&dword_1959FF000, v21, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_MESSAGE:%@ SERVICE:%@", buf, 0x16u);
        }

        v22 = [payloadCopy count];
        v23 = v22;
        if (v22 > 0x7FFE)
        {
          v27 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v83 = v50;
            _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "Warning! Message with guid %@ exceeds size limitations of MPKL_UUID_NEXT macro.", buf, 0xCu);
          }
        }

        else
        {
          v81[0] = 0xAAAAAAAAAAAAAAAALL;
          v81[1] = 0xAAAAAAAAAAAAAAAALL;
          v24 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v50];
          [v24 getUUIDBytes:v81];

          crossLayerLogging = [MEMORY[0x1E69A5270] CrossLayerLogging];
          if (os_log_type_enabled(crossLayerLogging, OS_LOG_TYPE_DEFAULT))
          {
            incomingMessageLoggingSequence = self->_incomingMessageLoggingSequence;
            self->_incomingMessageLoggingSequence = incomingMessageLoggingSequence + 1;
            *buf = 67110402;
            *v83 = 120;
            *&v83[4] = 1024;
            *&v83[6] = 255;
            v84 = 0x832000000100412;
            *v85 = v81;
            *&v85[8] = 1024;
            *v86 = v23;
            *&v86[4] = 1024;
            *&v86[6] = incomingMessageLoggingSequence;
            _os_log_impl(&dword_1959FF000, crossLayerLogging, OS_LOG_TYPE_DEFAULT, "9 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x2Au);
          }
        }

        if (self->_indirectDelegateCallouts)
        {
          v28 = 0;
        }

        else
        {
          v28 = dispatch_group_create();
          dispatch_group_enter(v28);
        }

        v76[0] = MEMORY[0x1E69E9820];
        v76[1] = 3221225472;
        v76[2] = sub_195A79BA0;
        v76[3] = &unk_1E7440F48;
        v76[4] = self;
        v29 = payloadCopy;
        v77 = v29;
        v30 = rICopy;
        v78 = v30;
        [(_IDSConnection *)self _callDelegatesWithBlock:v76 group:v28];
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 3221225472;
        v72[2] = sub_195A79C1C;
        v72[3] = &unk_1E7440F20;
        v72[4] = self;
        v73 = v29;
        v31 = v30;
        v74 = v31;
        v32 = v59;
        v75 = v32;
        [(_IDSConnection *)self _callDelegatesWithBlock:v72 group:v28];
        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = sub_195A79C9C;
        v68[3] = &unk_1E7440F20;
        v68[4] = self;
        v69 = receivedCopy;
        v33 = v31;
        v70 = v33;
        v34 = v32;
        v71 = v34;
        [(_IDSConnection *)self _callDelegatesWithBlock:v68 group:v28];
        if (v28)
        {
          wantsAppAck = [v34 wantsAppAck];
          isDirectMessage = [v34 isDirectMessage];
          outgoingResponseIdentifier2 = [v34 outgoingResponseIdentifier];
          broadcastTime = [v34 broadcastTime];

          if (broadcastTime)
          {
            v38 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v40 = v39;
            broadcastTime2 = [v34 broadcastTime];
            [broadcastTime2 doubleValue];
            v43 = [v38 numberWithDouble:v40 - v42];
          }

          else
          {
            v43 = 0;
          }

          v44 = +[IDSInternalQueueController sharedInstance];
          queue = [v44 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A79D1C;
          block[3] = &unk_1E7440FC0;
          v66 = wantsAppAck;
          v67 = isDirectMessage;
          block[4] = self;
          v61 = outgoingResponseIdentifier2;
          v62 = v34;
          v63 = v33;
          v64 = v50;
          v65 = v43;
          v46 = v43;
          v47 = outgoingResponseIdentifier2;
          dispatch_group_notify(v28, queue, block);

          dispatch_group_leave(v28);
        }

        goto LABEL_31;
      }

      incomingResponseIdentifier = [v59 incomingResponseIdentifier];
    }

    else
    {
      incomingResponseIdentifier = [v59 outgoingResponseIdentifier];
    }

    goto LABEL_13;
  }

LABEL_31:

  os_activity_scope_leave(&state);
  cut_arc_os_release();
}

- (void)receivedBatchMessage:(id)message forTopic:(id)topic
{
  v45 = *MEMORY[0x1E69E9840];
  messageCopy = message;
  topicCopy = topic;
  v6 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v6 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FCBC();
    }
  }

  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"batch message" forTopic:topicCopy localURI:0 remoteURI:0 validateAliases:0 guid:0])
  {
    [MEMORY[0x1E695DF70] array];
    v28 = v27 = messageCopy;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    obj = [messageCopy messages];
    v9 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v34 + 1) + 8 * i);
          messageContext = [v13 messageContext];
          v15 = MEMORY[0x1E69A5428];
          toID = [messageContext toID];
          v17 = [v15 URIWithPrefixedURI:toID];

          v18 = MEMORY[0x1E69A5428];
          fromID = [messageContext fromID];
          v20 = [v18 URIWithPrefixedURI:fromID];

          originalGUID = [messageContext originalGUID];
          if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:topicCopy localURI:v17 remoteURI:v20 validateAliases:1 guid:originalGUID])
          {
            [v28 addObject:v13];
          }
        }

        v10 = [obj countByEnumeratingWithState:&v34 objects:v44 count:16];
      }

      while (v10);
    }

    v22 = objc_alloc(MEMORY[0x1E69A52C8]);
    messageCopy = v27;
    context = [v27 context];
    v24 = [v22 initWithMessages:v28 service:topicCopy context:context];

    v25 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy = self;
      v40 = 2112;
      v41 = v24;
      v42 = 2112;
      v43 = topicCopy;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "%@: received batch message: %@ topic: %@", buf, 0x20u);
    }

    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = sub_195A7A294;
    v32[3] = &unk_1E7440EA8;
    v32[4] = self;
    v33 = v24;
    v26 = v24;
    [(_IDSConnection *)self _callDelegatesWithBlock:v32];
  }
}

- (void)dataReceived:(id)received withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v80 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  contextCopy = context;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v20 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FD5C();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v22];

  outgoingResponseIdentifier = [v23 outgoingResponseIdentifier];
  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"data" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:outgoingResponseIdentifier])
  {
    v57 = outgoingResponseIdentifier;
    v54 = v22;
    v25 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      *v74 = self;
      *&v74[8] = 2112;
      v75 = dCopy;
      *v76 = 2112;
      *&v76[2] = topicCopy;
      *v77 = 2112;
      *&v77[2] = rICopy;
      v78 = 2112;
      v79 = iCopy;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "%@ received data: %@ topic %@  from: %@  to: %@", buf, 0x34u);
    }

    v26 = dCopy;
    if ([v26 length])
    {
      v58 = v26;
      if ([v26 length])
      {
LABEL_13:
        v53 = v26;
        v28 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v74 = v58;
          *&v74[8] = 2112;
          v75 = topicCopy;
          _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_DATA:%@ SERVICE:%@", buf, 0x16u);
        }

        v29 = [receivedCopy length];
        if (v29 <= 0x7FFE)
        {
          v30 = v29;
          v72[0] = 0xAAAAAAAAAAAAAAAALL;
          v72[1] = 0xAAAAAAAAAAAAAAAALL;
          v31 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v58];
          [v31 getUUIDBytes:v72];

          crossLayerLogging = [MEMORY[0x1E69A5270] CrossLayerLogging];
          if (os_log_type_enabled(crossLayerLogging, OS_LOG_TYPE_DEFAULT))
          {
            incomingMessageLoggingSequence = self->_incomingMessageLoggingSequence;
            self->_incomingMessageLoggingSequence = incomingMessageLoggingSequence + 1;
            *buf = 67110402;
            *v74 = 120;
            *&v74[4] = 1024;
            *&v74[6] = 255;
            v75 = 0x832000000100412;
            *v76 = v72;
            *&v76[8] = 1024;
            *v77 = v30;
            *&v77[4] = 1024;
            *&v77[6] = incomingMessageLoggingSequence;
            _os_log_impl(&dword_1959FF000, crossLayerLogging, OS_LOG_TYPE_DEFAULT, "9 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x2Au);
          }
        }

        v56 = iCopy;
        if (self->_indirectDelegateCallouts)
        {
          v34 = 0;
        }

        else
        {
          v34 = dispatch_group_create();
          dispatch_group_enter(v34);
        }

        v68[0] = MEMORY[0x1E69E9820];
        v68[1] = 3221225472;
        v68[2] = sub_195A7A924;
        v68[3] = &unk_1E7440F20;
        v68[4] = self;
        v35 = receivedCopy;
        v69 = v35;
        v55 = rICopy;
        v36 = rICopy;
        v70 = v36;
        v37 = v23;
        v71 = v37;
        [(_IDSConnection *)self _callDelegatesWithBlock:v68 group:v34];
        if (v34)
        {
          v50 = topicCopy;
          v51 = dCopy;
          v52 = receivedCopy;
          wantsAppAck = [v37 wantsAppAck];
          isDirectMessage = [v37 isDirectMessage];
          broadcastTime = [v37 broadcastTime];

          if (broadcastTime)
          {
            v40 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v42 = v41;
            broadcastTime2 = [v37 broadcastTime];
            [broadcastTime2 doubleValue];
            v45 = [v40 numberWithDouble:v42 - v44];
          }

          else
          {
            v45 = 0;
          }

          v46 = +[IDSInternalQueueController sharedInstance];
          queue = [v46 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A7A9A4;
          block[3] = &unk_1E7440FE8;
          v66 = wantsAppAck;
          v67 = isDirectMessage;
          block[4] = self;
          v60 = v57;
          v61 = v37;
          v62 = v36;
          v63 = v53;
          v64 = v45;
          v65 = v35;
          v48 = v45;
          dispatch_group_notify(v34, queue, block);

          dispatch_group_leave(v34);
          dCopy = v51;
          receivedCopy = v52;
          topicCopy = v50;
        }

        rICopy = v55;
        iCopy = v56;
        v22 = v54;
        outgoingResponseIdentifier = v57;
        goto LABEL_28;
      }

      incomingResponseIdentifier = [v23 incomingResponseIdentifier];
    }

    else
    {
      incomingResponseIdentifier = [v23 outgoingResponseIdentifier];
    }

    v58 = incomingResponseIdentifier;

    goto LABEL_13;
  }

LABEL_28:
}

- (void)accessoryDataReceived:(id)received withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v71 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  contextCopy = context;
  v19 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v19 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FDFC();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v22];

  outgoingResponseIdentifier = [v23 outgoingResponseIdentifier];
  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"data" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:0 guid:outgoingResponseIdentifier])
  {
    v44 = topicCopy;
    v46 = receivedCopy;
    account = [(_IDSConnection *)self account];
    _internal = [account _internal];
    accountType = [_internal accountType];

    v28 = +[IDSLogging IDSConnection];
    v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (accountType == 1)
    {
      topicCopy = v44;
      if (v29)
      {
        *buf = 138413314;
        selfCopy = self;
        v63 = 2112;
        v64 = dCopy;
        v65 = 2112;
        v66 = v44;
        v67 = 2112;
        v68 = rICopy;
        v69 = 2112;
        v70 = iCopy;
        _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "%@ received Accessory data: %@ topic %@  from: %@  to: %@", buf, 0x34u);
      }

      if (self->_indirectDelegateCallouts)
      {
        v28 = 0;
      }

      else
      {
        v28 = dispatch_group_create();
        dispatch_group_enter(v28);
      }

      v57[0] = MEMORY[0x1E69E9820];
      v57[1] = 3221225472;
      v57[2] = sub_195A7B080;
      v57[3] = &unk_1E7440F20;
      v57[4] = self;
      v30 = v46;
      v58 = v30;
      v43 = rICopy;
      v59 = v43;
      v31 = v23;
      v60 = v31;
      [(_IDSConnection *)self _callDelegatesWithBlock:v57 group:v28];
      if (v28)
      {
        v42 = v30;
        wantsAppAck = [v31 wantsAppAck];
        broadcastTime = [v31 broadcastTime];

        if (broadcastTime)
        {
          v33 = MEMORY[0x1E696AD98];
          [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
          v35 = v34;
          broadcastTime2 = [v31 broadcastTime];
          [broadcastTime2 doubleValue];
          v40 = [v33 numberWithDouble:v35 - v37];

          topicCopy = v44;
        }

        else
        {
          v40 = 0;
        }

        v45 = +[IDSInternalQueueController sharedInstance];
        queue = [v45 queue];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 3221225472;
        block[2] = sub_195A7B100;
        block[3] = &unk_1E7441010;
        v56 = wantsAppAck;
        v49 = v31;
        selfCopy2 = self;
        v51 = outgoingResponseIdentifier;
        v52 = v43;
        v53 = dCopy;
        v54 = v40;
        v55 = v42;
        v39 = v40;
        dispatch_group_notify(v28, queue, block);

        dispatch_group_leave(v28);
      }
    }

    else
    {
      if (v29)
      {
        *buf = 0;
        _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "Accessory data commands are only supported on AppleID accounts, This one is not for me.", buf, 2u);
      }

      topicCopy = v44;
    }

    receivedCopy = v46;
  }
}

- (void)accessoryReportMessageReceived:(id)received accessoryID:(id)d controllerID:(id)iD withGUID:(id)uID forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)self0
{
  v70 = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  iDCopy = iD;
  uIDCopy = uID;
  topicCopy = topic;
  iCopy = i;
  rICopy = rI;
  contextCopy = context;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(uID) = [v20 assertQueueIsCurrent];

  if (uID)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FE9C();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v22];

  outgoingResponseIdentifier = [v23 outgoingResponseIdentifier];
  v26 = topicCopy;
  v25 = iCopy;
  if ([(_IDSConnection *)self _shouldAcceptIncomingType:@"accessoryReportMessage" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:0 guid:outgoingResponseIdentifier])
  {
    v27 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413314;
      selfCopy = self;
      v62 = 2112;
      v63 = uIDCopy;
      v64 = 2112;
      v65 = topicCopy;
      v66 = 2112;
      v67 = rICopy;
      v68 = 2112;
      v69 = iCopy;
      _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "%@ received Accessory Report Message: %@ topic %@  from: %@  to: %@", buf, 0x34u);
    }

    if (self->_indirectDelegateCallouts)
    {
      v28 = 0;
    }

    else
    {
      v28 = dispatch_group_create();
      dispatch_group_enter(v28);
    }

    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = sub_195A7B748;
    v55[3] = &unk_1E7440F98;
    v55[4] = self;
    v56 = receivedCopy;
    v57 = dCopy;
    v58 = iDCopy;
    v29 = v23;
    v59 = v29;
    [(_IDSConnection *)self _callDelegatesWithBlock:v55 group:v28];
    if (v28)
    {
      v41 = iDCopy;
      v42 = dCopy;
      wantsAppAck = [v29 wantsAppAck];
      broadcastTime = [v29 broadcastTime];

      if (broadcastTime)
      {
        v31 = MEMORY[0x1E696AD98];
        [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
        v33 = v32;
        broadcastTime2 = [v29 broadcastTime];
        [broadcastTime2 doubleValue];
        v36 = [v31 numberWithDouble:v33 - v35];
      }

      else
      {
        v36 = 0;
      }

      v37 = +[IDSInternalQueueController sharedInstance];
      queue = [v37 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = sub_195A7B7C8;
      block[3] = &unk_1E7441038;
      v54 = wantsAppAck;
      v48 = v29;
      selfCopy2 = self;
      v50 = outgoingResponseIdentifier;
      v51 = rICopy;
      v52 = uIDCopy;
      v53 = v36;
      v39 = v36;
      dispatch_group_notify(v28, queue, block);

      dispatch_group_leave(v28);
      iDCopy = v41;
      dCopy = v42;
      v26 = topicCopy;
    }

    v25 = iCopy;
  }
}

- (void)incomingInvitation:(id)invitation withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  invitationCopy = invitation;
  rICopy = rI;
  v15 = self->_messageContext;
  v16 = MEMORY[0x1E69A5320];
  contextCopy = context;
  iCopy = i;
  topicCopy = topic;
  v20 = [[v16 alloc] initWithDictionary:contextCopy boostContext:v15];

  outgoingResponseIdentifier = [v20 outgoingResponseIdentifier];
  LODWORD(contextCopy) = [(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:outgoingResponseIdentifier];

  if (contextCopy)
  {
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = invitationCopy;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingInvitation - received incoming invitation message : %@", buf, 0xCu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A7BB88;
    v23[3] = &unk_1E7440F20;
    v23[4] = self;
    v24 = invitationCopy;
    v25 = rICopy;
    v26 = v20;
    [(_IDSConnection *)self _callDelegatesWithBlock:v23];
  }
}

- (void)incomingInvitationUpdate:(id)update withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v29 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  rICopy = rI;
  v15 = self->_messageContext;
  v16 = MEMORY[0x1E69A5320];
  contextCopy = context;
  iCopy = i;
  topicCopy = topic;
  v20 = [[v16 alloc] initWithDictionary:contextCopy boostContext:v15];

  outgoingResponseIdentifier = [v20 outgoingResponseIdentifier];
  LODWORD(contextCopy) = [(_IDSConnection *)self _shouldAcceptIncomingType:@"message" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:outgoingResponseIdentifier];

  if (contextCopy)
  {
    v22 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v28 = updateCopy;
      _os_log_impl(&dword_1959FF000, v22, OS_LOG_TYPE_DEFAULT, "incomingInvitationUpdate - received incoming invitation message : %@", buf, 0xCu);
    }

    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A7BE18;
    v23[3] = &unk_1E7440F20;
    v23[4] = self;
    v24 = updateCopy;
    v25 = rICopy;
    v26 = v20;
    [(_IDSConnection *)self _callDelegatesWithBlock:v23];
  }
}

- (void)protobufReceived:(id)received withGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v80[2] = *MEMORY[0x1E69E9840];
  receivedCopy = received;
  dCopy = d;
  topicCopy = topic;
  rICopy = rI;
  contextCopy = context;
  iCopy = i;
  v19 = +[IDSInternalQueueController sharedInstance];
  LODWORD(topic) = [v19 assertQueueIsCurrent];

  if (topic)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B2FF3C();
    }
  }

  v21 = self->_messageContext;
  v22 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v21];
  v23 = [contextCopy objectForKey:@"IDSMessageContextSequenceNumberKey"];

  [v23 unsignedIntegerValue];
  kdebug_trace();

  outgoingResponseIdentifier = [v22 outgoingResponseIdentifier];
  v25 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"protobuf" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:outgoingResponseIdentifier];

  if (receivedCopy && v25)
  {
    v60 = topicCopy;
    v26 = [objc_alloc(MEMORY[0x1E69A5388]) initWithDictionary:receivedCopy];
    [v26 setContext:v22];
    v27 = dCopy;
    if ([v27 length])
    {
      v28 = v27;
      if ([v27 length])
      {
LABEL_12:
        v58 = v27;
        v55 = v21;
        v30 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *v76 = v28;
          *&v76[8] = 2112;
          v77 = v60;
          _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_PROTOBUF:%@ SERVICE:%@", buf, 0x16u);
        }

        v59 = v28;

        totalBytes = [v22 totalBytes];
        longValue = [totalBytes longValue];

        v56 = dCopy;
        if (longValue <= 0x7FFE)
        {
          v80[0] = 0xAAAAAAAAAAAAAAAALL;
          v80[1] = 0xAAAAAAAAAAAAAAAALL;
          v33 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v59];
          [v33 getUUIDBytes:v80];

          crossLayerLogging = [MEMORY[0x1E69A5270] CrossLayerLogging];
          if (os_log_type_enabled(crossLayerLogging, OS_LOG_TYPE_DEFAULT))
          {
            incomingMessageLoggingSequence = self->_incomingMessageLoggingSequence;
            self->_incomingMessageLoggingSequence = incomingMessageLoggingSequence + 1;
            *buf = 67110402;
            *v76 = 120;
            *&v76[4] = 1024;
            *&v76[6] = 255;
            v77 = 0x832000000100412;
            *v78 = v80;
            *&v78[8] = 1024;
            *v79 = longValue;
            *&v79[4] = 1024;
            *&v79[6] = incomingMessageLoggingSequence;
            _os_log_impl(&dword_1959FF000, crossLayerLogging, OS_LOG_TYPE_DEFAULT, "9 {curProtocol: %hhu, nextProtocol: %hhu, curUUID: %{public,uuid_t}.16P, curPktLen: %u, logSeqn: %hhu}", buf, 0x2Au);
          }
        }

        v36 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          *v76 = v58;
          *&v76[8] = 2112;
          v77 = v60;
          *v78 = 2112;
          *&v78[2] = @"(unknown)";
          *v79 = 2112;
          *&v79[2] = rICopy;
          _os_log_impl(&dword_1959FF000, v36, OS_LOG_TYPE_DEFAULT, "Client received protobuf from daemon %@ for topic: %@  messageID: %@  fromID: %@", buf, 0x2Au);
        }

        v57 = receivedCopy;

        if (self->_indirectDelegateCallouts)
        {
          v37 = 0;
        }

        else
        {
          v37 = dispatch_group_create();
          dispatch_group_enter(v37);
        }

        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 3221225472;
        v71[2] = sub_195A7C58C;
        v71[3] = &unk_1E7440F20;
        v71[4] = self;
        v38 = v26;
        v72 = v38;
        v39 = rICopy;
        v73 = v39;
        v40 = v22;
        v74 = v40;
        [(_IDSConnection *)self _callDelegatesWithBlock:v71 group:v37];
        if (v37)
        {
          v41 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *v76 = v58;
            _os_log_impl(&dword_1959FF000, v41, OS_LOG_TYPE_DEFAULT, "Ack'ing message %@ to daemon that client got it", buf, 0xCu);
          }

          wantsAppAck = [v40 wantsAppAck];
          isDirectMessage = [v40 isDirectMessage];
          outgoingResponseIdentifier2 = [v40 outgoingResponseIdentifier];
          broadcastTime = [v40 broadcastTime];

          if (broadcastTime)
          {
            v44 = MEMORY[0x1E696AD98];
            [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
            v46 = v45;
            broadcastTime2 = [v40 broadcastTime];
            [broadcastTime2 doubleValue];
            broadcastTime = [v44 numberWithDouble:v46 - v48];
          }

          v49 = +[IDSInternalQueueController sharedInstance];
          queue = [v49 queue];
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = sub_195A7C6B8;
          block[3] = &unk_1E7440FE8;
          v69 = wantsAppAck;
          v70 = isDirectMessage;
          block[4] = self;
          v63 = outgoingResponseIdentifier2;
          v64 = v40;
          v65 = v39;
          v66 = v58;
          v67 = broadcastTime;
          v68 = v38;
          v51 = broadcastTime;
          v52 = outgoingResponseIdentifier2;
          dispatch_group_notify(v37, queue, block);

          dispatch_group_leave(v37);
        }

        dCopy = v56;
        receivedCopy = v57;
        topicCopy = v60;
        v21 = v55;
        goto LABEL_30;
      }

      incomingResponseIdentifier = [v22 incomingResponseIdentifier];
    }

    else
    {
      incomingResponseIdentifier = [v22 outgoingResponseIdentifier];
    }

    v28 = incomingResponseIdentifier;

    goto LABEL_12;
  }

LABEL_30:
}

- (void)receivedMetadataForDirectMessaging:(id)messaging
{
  messagingCopy = messaging;
  if (_IDSSupportsDirectMessaging())
  {
    v6 = +[IDSInternalQueueController sharedInstance];
    assertQueueIsCurrent = [v6 assertQueueIsCurrent];

    if (assertQueueIsCurrent)
    {
      utilities = [MEMORY[0x1E69A5270] utilities];
      if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
      {
        sub_195B2FFDC();
      }
    }

    directMessageConnection = self->_directMessageConnection;
    if (directMessageConnection)
    {
      [(IDSDirectMessageConnection *)directMessageConnection updateMetadata:messagingCopy];
    }

    objc_storeStrong(&self->_directMessagingMetadata, messaging);
  }
}

- (void)xpcObject:(id)object objectContext:(id)context
{
  objectCopy = object;
  contextCopy = context;
  if (objectCopy)
  {
    v8 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      sub_195B3007C();
    }

    if (contextCopy)
    {
      Value = CFDictionaryGetValue(contextCopy, @"object-type");
    }

    else
    {
      Value = 0;
    }

    if ([Value isEqualToIgnoringCase:@"direct-messaging-socket-received"])
    {
      if (self->_directMessageConnection || ([(_IDSConnection *)self createDirectMessageConnectionIfNeeded], self->_directMessageConnection))
      {
        string_ptr = xpc_string_get_string_ptr(objectCopy);
        if (string_ptr)
        {
          v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:string_ptr];
          if (contextCopy)
          {
            v12 = CFDictionaryGetValue(contextCopy, @"object-flags");
            v13 = CFDictionaryGetValue(contextCopy, @"object-recipient");
          }

          else
          {
            v12 = 0;
            v13 = 0;
          }

          v14 = v13;
          v15 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
          {
            sub_195B300F0();
          }

          if (v14 && (-[IDSAccount serviceName](self->_account, "serviceName"), v16 = objc_claimAutoreleasedReturnValue(), v17 = [v14 isEqualToString:v16], v16, (v17 & 1) != 0))
          {
            v18 = objc_alloc_init(MEMORY[0x1E695DF90]);
            [v18 setObject:v11 forKeyedSubscript:@"streamName"];
            if (v12)
            {
              [v18 setObject:v12 forKeyedSubscript:@"streamFlags"];
            }

            [(IDSDirectMessageConnection *)self->_directMessageConnection receivedDirectMessagingSocketWithContext:v18];
          }

          else
          {
            v18 = +[IDSLogging IDSConnection];
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
            {
              sub_195B30164(self, v18);
            }
          }
        }
      }
    }
  }
}

- (void)didFlushCacheForService:(id)service remoteURI:(id)i fromURI:(id)rI guid:(id)guid
{
  v32 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  iCopy = i;
  rICopy = rI;
  guidCopy = guid;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B301FC();
    }
  }

  v17 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:rICopy];
  v18 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"flush cache notification" forTopic:serviceCopy localURI:v17 remoteURI:0 validateAliases:1 guid:guidCopy];

  if (v18)
  {
    v19 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v25 = serviceCopy;
      v26 = 2112;
      v27 = iCopy;
      v28 = 2112;
      v29 = rICopy;
      v30 = 2112;
      v31 = guidCopy;
      _os_log_impl(&dword_1959FF000, v19, OS_LOG_TYPE_DEFAULT, "Client received notification that cache was flushed { service: %@, remoteURI: %@, fromURI: %@, guid: %@ }", buf, 0x2Au);
    }

    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = sub_195A7CDF0;
    v20[3] = &unk_1E7440F20;
    v20[4] = self;
    v21 = iCopy;
    v22 = rICopy;
    v23 = guidCopy;
    [(_IDSConnection *)self _callDelegatesWithBlock:v20];
  }
}

- (void)didFlushCacheFromKTPeerUpdateForService:(id)service peerURI:(id)i
{
  v19 = *MEMORY[0x1E69E9840];
  serviceCopy = service;
  iCopy = i;
  v8 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v8 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3029C();
    }
  }

  v11 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v16 = serviceCopy;
    v17 = 2112;
    v18 = iCopy;
    _os_log_impl(&dword_1959FF000, v11, OS_LOG_TYPE_DEFAULT, "Client received notification that cache was flushed from KT peer update { service: %@, peerURI: %@ }", buf, 0x16u);
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = sub_195A7D00C;
  v13[3] = &unk_1E7440EA8;
  v13[4] = self;
  v14 = iCopy;
  v12 = iCopy;
  [(_IDSConnection *)self _callDelegatesWithBlock:v13];
}

- (void)pendingIncomingMessageWithGUID:(id)d forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  dCopy = d;
  topicCopy = topic;
  rICopy = rI;
  contextCopy = context;
  iCopy = i;
  v17 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v17 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3033C();
    }
  }

  v19 = self->_messageContext;
  v20 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v19];

  v21 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"pending" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:dCopy];
  if (v21)
  {
    [v20 setOriginalGUID:dCopy];
    v22 = dCopy;
    if ([v22 length])
    {
      v23 = v22;
      if ([v22 length])
      {
LABEL_11:
        v25 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v32 = v23;
          v33 = 2112;
          v34 = topicCopy;
          _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_PENDING:%@ SERVICE:%@", buf, 0x16u);
        }

        v26 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v32 = v22;
          v33 = 2112;
          v34 = topicCopy;
          v35 = 2112;
          v36 = @"(unknown)";
          v37 = 2112;
          v38 = rICopy;
          _os_log_impl(&dword_1959FF000, v26, OS_LOG_TYPE_DEFAULT, "Client received pending incoming message from daemon %@ for topic: %@  messageID: %@  fromID: %@", buf, 0x2Au);
        }

        if ([(IMSystemMonitor *)self->_systemMonitor isUnderFirstDataProtectionLock])
        {
          v28[0] = MEMORY[0x1E69E9820];
          v28[1] = 3221225472;
          v28[2] = sub_195A7D3F8;
          v28[3] = &unk_1E7440F48;
          v28[4] = self;
          v29 = rICopy;
          v30 = v20;
          [(_IDSConnection *)self _callDelegatesWithBlock:v28];
        }

        else
        {
          v27 = +[IDSLogging IDSConnection];
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "Device is no longer under first unlock. Not forwarding pending incoming message to the client.", buf, 2u);
          }
        }

        goto LABEL_21;
      }

      incomingResponseIdentifier = [v20 incomingResponseIdentifier];
    }

    else
    {
      incomingResponseIdentifier = [v20 outgoingResponseIdentifier];
    }

    v23 = incomingResponseIdentifier;

    goto LABEL_11;
  }

LABEL_21:
}

- (void)pendingResourceWithMetadata:(id)metadata guid:(id)guid forTopic:(id)topic toURI:(id)i fromURI:(id)rI context:(id)context
{
  v44 = *MEMORY[0x1E69E9840];
  metadataCopy = metadata;
  guidCopy = guid;
  topicCopy = topic;
  rICopy = rI;
  contextCopy = context;
  iCopy = i;
  v20 = +[IDSInternalQueueController sharedInstance];
  LODWORD(i) = [v20 assertQueueIsCurrent];

  if (i)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B303DC();
    }
  }

  v22 = self->_messageContext;
  v23 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v22];

  v24 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"pending" forTopic:topicCopy localURI:iCopy remoteURI:rICopy validateAliases:1 guid:guidCopy];
  if (v24)
  {
    [v23 setOriginalGUID:guidCopy];
    v25 = guidCopy;
    if ([v25 length])
    {
      v29 = v25;
      if ([v25 length])
      {
LABEL_11:
        v27 = +[IDSLogging GUIDTRACE];
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v37 = v30;
          v38 = 2112;
          v39 = topicCopy;
          _os_log_impl(&dword_1959FF000, v27, OS_LOG_TYPE_DEFAULT, "INCOMING-CLIENT_RESOURCE_PENDING:%@ SERVICE:%@", buf, 0x16u);
        }

        v28 = +[IDSLogging IDSConnection];
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138413058;
          v37 = v25;
          v38 = 2112;
          v39 = topicCopy;
          v40 = 2112;
          v41 = @"(unknown)";
          v42 = 2112;
          v43 = rICopy;
          _os_log_impl(&dword_1959FF000, v28, OS_LOG_TYPE_DEFAULT, "Client received pending resource message from daemon %@ for topic: %@  messageID: %@  fromID: %@", buf, 0x2Au);
        }

        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = sub_195A7D7CC;
        v31[3] = &unk_1E7440F98;
        v31[4] = self;
        v32 = metadataCopy;
        v33 = v25;
        v34 = rICopy;
        v35 = v23;
        [(_IDSConnection *)self _callDelegatesWithBlock:v31];

        goto LABEL_16;
      }

      incomingResponseIdentifier = [v23 incomingResponseIdentifier];
    }

    else
    {
      incomingResponseIdentifier = [v23 outgoingResponseIdentifier];
    }

    v29 = incomingResponseIdentifier;

    goto LABEL_11;
  }

LABEL_16:
}

- (void)sessionInvitationReceivedWithPayload:(id)payload forTopic:(id)topic sessionID:(id)d toIdentifier:(id)identifier fromID:(id)iD transportType:(id)type
{
  v67 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  topicCopy = topic;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  typeCopy = type;
  v19 = +[IDSInternalQueueController sharedInstance];
  LODWORD(d) = [v19 assertQueueIsCurrent];

  if (d)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B3047C();
    }
  }

  v21 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:identifierCopy];
  v22 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:iDCopy];
  v23 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"session invitation" forTopic:topicCopy localURI:v21 remoteURI:v22 validateAliases:1 guid:0];

  if (v23)
  {
    v24 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413570;
      v56 = payloadCopy;
      v57 = 2112;
      v58 = topicCopy;
      v59 = 2112;
      v60 = dCopy;
      v61 = 2112;
      v62 = identifierCopy;
      v63 = 2112;
      v64 = iDCopy;
      v65 = 2112;
      v66 = typeCopy;
      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "Received incoming invitation %@ forTopic %@ sessionID %@ toIdentifier %@ fromID %@ transportType %@", buf, 0x3Eu);
    }

    v25 = dCopy;
    v46 = topicCopy;

    v26 = *MEMORY[0x1E69A4A00];
    v27 = [payloadCopy objectForKey:*MEMORY[0x1E69A4A00]];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v28 = MEMORY[0x1E695DEF0];
      v29 = [payloadCopy objectForKey:v26];
      v30 = [v28 _IDSDataFromBase64String:v29];
    }

    else
    {
      v29 = [payloadCopy objectForKey:v26];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v31 = 0;
        goto LABEL_14;
      }

      v30 = [payloadCopy objectForKey:v26];
    }

    v31 = v30;
LABEL_14:

    objc_opt_class();
    v32 = *MEMORY[0x1E69A4A08];
    v33 = [payloadCopy objectForKey:v32];
    v45 = identifierCopy;
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      if (v33)
      {
        registration = [MEMORY[0x1E69A6138] registration];
        if (os_log_type_enabled(registration, OS_LOG_TYPE_FAULT))
        {
          sub_195B3051C();
        }
      }

      v34 = 0;
    }

    v36 = self->_messageContext;
    v48[0] = MEMORY[0x1E69E9820];
    v48[1] = 3221225472;
    v48[2] = sub_195A7DCF0;
    v48[3] = &unk_1E7441060;
    v48[4] = self;
    v37 = v25;
    v38 = v25;
    v49 = v38;
    v50 = iDCopy;
    v51 = typeCopy;
    v52 = v34;
    v53 = v31;
    v54 = v36;
    v39 = v36;
    v40 = v31;
    v41 = v34;
    [(_IDSConnection *)self _callDelegatesWithBlock:v48];
    daemonController = [(_IDSConnection *)self daemonController];
    daemonController2 = [(_IDSConnection *)self daemonController];
    listenerID = [daemonController2 listenerID];
    [daemonController acknowledgeSessionID:v38 clientID:listenerID];

    dCopy = v37;
    identifierCopy = v45;
    topicCopy = v46;
  }
}

- (void)inviteDroppedWithPayload:(id)payload forTopic:(id)topic sessionID:(id)d toIdentifier:(id)identifier fromID:(id)iD error:(id)error
{
  v56 = *MEMORY[0x1E69E9840];
  payloadCopy = payload;
  topicCopy = topic;
  dCopy = d;
  identifierCopy = identifier;
  iDCopy = iD;
  errorCopy = error;
  v19 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v19 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B30584();
    }
  }

  v22 = identifierCopy;
  v23 = topicCopy;
  v24 = *MEMORY[0x1E69A4A00];
  v25 = [payloadCopy objectForKey:*MEMORY[0x1E69A4A00]];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v26 = MEMORY[0x1E695DEF0];
    v27 = [payloadCopy objectForKey:v24];
    v28 = [v26 _IDSDataFromBase64String:v27];
LABEL_9:
    v29 = v28;
    goto LABEL_11;
  }

  v27 = [payloadCopy objectForKey:v24];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v28 = [payloadCopy objectForKey:v24];
    goto LABEL_9;
  }

  v29 = 0;
LABEL_11:

  v30 = +[IDSLogging IDSConnection];
  v31 = v23;
  v32 = v22;
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138413314;
    v47 = payloadCopy;
    v48 = 2112;
    v49 = v31;
    v50 = 2112;
    v51 = dCopy;
    v52 = 2112;
    v53 = v22;
    v54 = 2112;
    v55 = iDCopy;
    _os_log_impl(&dword_1959FF000, v30, OS_LOG_TYPE_DEFAULT, "Received incoming invitation but dropped %@ forTopic %@ sessionID %@ toIdentifier %@ fromID %@", buf, 0x34u);
  }

  v41[0] = MEMORY[0x1E69E9820];
  v41[1] = 3221225472;
  v41[2] = sub_195A7E0DC;
  v41[3] = &unk_1E7440F98;
  v41[4] = self;
  v42 = dCopy;
  v43 = iDCopy;
  v44 = v29;
  v45 = errorCopy;
  v33 = errorCopy;
  v34 = v29;
  v35 = iDCopy;
  v36 = dCopy;
  [(_IDSConnection *)self _callDelegatesWithBlock:v41];
  daemonController = [(_IDSConnection *)self daemonController];
  daemonController2 = [(_IDSConnection *)self daemonController];
  listenerID = [daemonController2 listenerID];
  [daemonController acknowledgeSessionID:v36 clientID:listenerID];
}

- (void)receivedGroupSessionParticipantUpdate:(id)update forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)d context:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  topicCopy = topic;
  identifierCopy = identifier;
  contextCopy = context;
  dCopy = d;
  v17 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v17 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B30624();
    }
  }

  v20 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:identifierCopy];
  v21 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:dCopy];

  v22 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"group session participant update" forTopic:topicCopy localURI:v20 remoteURI:v21 validateAliases:1 guid:0];
  if (v22)
  {
    v23 = self->_messageContext;
    v24 = [objc_alloc(MEMORY[0x1E69A5320]) initWithDictionary:contextCopy boostContext:v23];
    v25 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v33 = topicCopy;
      _os_log_impl(&dword_1959FF000, v25, OS_LOG_TYPE_DEFAULT, "Received incoming group session participant update forTopic %@", buf, 0xCu);
    }

    v26 = [objc_alloc(MEMORY[0x1E69A52A0]) initWithDictionaryRepresentation:updateCopy];
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v29[2] = sub_195A7E3F0;
    v29[3] = &unk_1E7440F48;
    v29[4] = self;
    v30 = v26;
    v31 = v24;
    v27 = v24;
    v28 = v26;
    [(_IDSConnection *)self _callDelegatesWithBlock:v29];
  }
}

- (void)receivedGroupSessionParticipantDataUpdate:(id)update forTopic:(id)topic toIdentifier:(id)identifier fromID:(id)d
{
  v27 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  topicCopy = topic;
  identifierCopy = identifier;
  dCopy = d;
  v14 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v14 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B306C4();
    }
  }

  v17 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:identifierCopy];
  v18 = [MEMORY[0x1E69A5428] URIWithPrefixedURI:dCopy];

  v19 = [(_IDSConnection *)self _shouldAcceptIncomingType:@"group session participant data update" forTopic:topicCopy localURI:v17 remoteURI:v18 validateAliases:1 guid:0];
  if (v19)
  {
    v20 = +[IDSLogging IDSConnection];
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = topicCopy;
      _os_log_impl(&dword_1959FF000, v20, OS_LOG_TYPE_DEFAULT, "Received incoming group session participant data update forTopic %@", buf, 0xCu);
    }

    v21 = [objc_alloc(MEMORY[0x1E69A52A0]) initWithDictionaryRepresentation:updateCopy];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = sub_195A7E6A8;
    v23[3] = &unk_1E7440EA8;
    v23[4] = self;
    v24 = v21;
    v22 = v21;
    [(_IDSConnection *)self _callDelegatesWithBlock:v23];
  }
}

- (void)checkTransportLogWithReason:(int64_t)reason
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = +[IDSInternalQueueController sharedInstance];
  assertQueueIsCurrent = [v5 assertQueueIsCurrent];

  if (assertQueueIsCurrent)
  {
    utilities = [MEMORY[0x1E69A5270] utilities];
    if (os_log_type_enabled(utilities, OS_LOG_TYPE_ERROR))
    {
      sub_195B30764();
    }
  }

  v8 = +[IDSLogging IDSConnection];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    reasonCopy = reason;
    _os_log_impl(&dword_1959FF000, v8, OS_LOG_TYPE_DEFAULT, "checkTransportLog {reason: %ld}", buf, 0xCu);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_195A7E888;
  v9[3] = &unk_1E7441088;
  v9[4] = self;
  v9[5] = reason;
  [(_IDSConnection *)self _callDelegatesWithBlock:v9];
}

- (void)_sendMissingMessageMetric:(id)metric
{
  metricCopy = metric;
  if ([metricCopy shouldReportMetric])
  {
    payload = [metricCopy payload];
    command = [metricCopy command];
    [(_IDSConnection *)self sendServerMessage:payload command:command];
  }
}

@end