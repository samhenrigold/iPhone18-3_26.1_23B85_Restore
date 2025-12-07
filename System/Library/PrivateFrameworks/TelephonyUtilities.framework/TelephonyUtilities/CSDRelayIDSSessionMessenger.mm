@interface CSDRelayIDSSessionMessenger
- (BOOL)deviceOrDestinationWithActiveSessionCanReceiveMessagesForCallProvider:(id)provider needsConversationRelaySupport:(BOOL)support;
- (BOOL)sendMessage:(id)message andAcceptInvitationIfNecessaryForIdentifier:(id)identifier;
- (BOOL)sendMessage:(id)message andCancelOrDeclineInvitationIfNecessaryForIdentifier:(id)identifier;
- (CSDRelayIDSDualSession)currentSession;
- (CSDRelayIDSDualSession)waitingSession;
- (CSDRelayIDSSessionMessenger)initWithQueue:(id)queue localRouteController:(id)controller;
- (IDSDestination)destinationWithActiveSession;
- (IDSDevice)deviceWithActiveSession;
- (id)_createSessionToDestinations:(id)destinations;
- (id)_createSessionToDevices:(id)devices;
- (id)_createSessionsToAllDevicesSupportingProvider:(id)provider requiresConversationRelaySupport:(BOOL)support;
- (id)_sendMessageOptionsWithTimeout:(double)timeout;
- (id)activeSessionForIdentifier:(id)identifier;
- (id)deviceForFromID:(id)d;
- (id)sessionForIdentifier:(id)identifier;
- (int)sessionProtocolVersionForIdentifier:(id)identifier;
- (void)_destroySession:(id)session;
- (void)_sendMessage:(id)message andCancelInvitationIfNecessaryForSession:(id)session;
- (void)_sendMessage:(id)message andDeclineInvitationIfNecessaryForSession:(id)session;
- (void)_startSession:(id)session withMessage:(id)message identifiers:(id)identifiers timeout:(int64_t)timeout declineOnError:(BOOL)error;
- (void)acceptInvitationForIdentifier:(id)identifier;
- (void)cancelOrDeclineInvitationForIdentifier:(id)identifier;
- (void)dealloc;
- (void)endEndingSessions;
- (void)performBlockOnTransportAvailability:(id)availability forIdentifier:(id)identifier;
- (void)prepareConnectedSessionsToEnd;
- (void)prepareSessionToEndForIdentifier:(id)identifier;
- (void)sendMessage:(id)message andStartSessionIfNecessaryForIdentifier:(id)identifier toDestination:(id)destination timeout:(int64_t)timeout completionHandler:(id)handler;
- (void)sendMessage:(id)message andStartSessionIfNecessaryForIdentifier:(id)identifier toDevicesSupportingProvider:(id)provider requiresConversationRelay:(BOOL)relay withTimeout:(int64_t)timeout;
- (void)sendMessage:(id)message andStartSessionIfNecessaryForIdentifiers:(id)identifiers toDestination:(id)destination timeout:(int64_t)timeout completionHandler:(id)handler;
- (void)sendMessage:(id)message forCall:(id)call completionHandler:(id)handler;
- (void)sendMessage:(id)message forIdentifier:(id)identifier toDestinations:(id)destinations customizedForRemoteProtocolVersion:(id)version waitUntilConnected:(BOOL)connected completionHandler:(id)handler;
- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context;
- (void)session:(id)session endedWithReason:(int)reason;
- (void)session:(id)session receivedData:(id)data fromDestination:(id)destination device:(id)device;
- (void)session:(id)session receivedInvitationAcceptWithData:(id)data fromDestination:(id)destination device:(id)device;
- (void)session:(id)session receivedInvitationCancelWithData:(id)data fromDestination:(id)destination device:(id)device;
- (void)session:(id)session receivedInvitationDeclineWithData:(id)data fromDestination:(id)destination device:(id)device;
@end

@implementation CSDRelayIDSSessionMessenger

- (CSDRelayIDSSessionMessenger)initWithQueue:(id)queue localRouteController:(id)controller
{
  queueCopy = queue;
  controllerCopy = controller;
  v15.receiver = self;
  v15.super_class = CSDRelayIDSSessionMessenger;
  v9 = [(CSDRelayIDSSessionMessenger *)&v15 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_queue, queue);
    v11 = +[NSMutableArray array];
    sessions = v10->_sessions;
    v10->_sessions = v11;

    objc_storeStrong(&v10->_localRouteController, controller);
    v13 = +[CSDRelayIDSService sharedInstance];
    [v13 addServiceDelegate:v10 queue:v10->_queue];
  }

  return v10;
}

- (void)dealloc
{
  v3 = +[CSDRelayIDSService sharedInstance];
  [v3 removeServiceDelegate:self];

  v4.receiver = self;
  v4.super_class = CSDRelayIDSSessionMessenger;
  [(CSDRelayIDSSessionMessenger *)&v4 dealloc];
}

- (void)performBlockOnTransportAvailability:(id)availability forIdentifier:(id)identifier
{
  availabilityCopy = availability;
  identifierCopy = identifier;
  v8 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:identifierCopy];
  if (v8)
  {
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100245CD8;
    v10[3] = &unk_10061F8C8;
    v11 = availabilityCopy;
    [v8 performBlockOnTransportAvailability:v10];
    v9 = v11;
  }

  else
  {
    v9 = sub_100004778(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v13 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find session for identifier %@ to perform block on transport availability for. Dropping this block on the floor", buf, 0xCu);
    }
  }
}

- (IDSDestination)destinationWithActiveSession
{
  currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];
  remoteDestination = [currentSession remoteDestination];

  return remoteDestination;
}

- (IDSDevice)deviceWithActiveSession
{
  currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];
  remoteDevice = [currentSession remoteDevice];

  return remoteDevice;
}

- (id)_createSessionsToAllDevicesSupportingProvider:(id)provider requiresConversationRelaySupport:(BOOL)support
{
  supportCopy = support;
  providerCopy = provider;
  v7 = [[NSMutableSet alloc] initWithArray:&__NSArray0__struct];
  v8 = +[CSDRelayIDSService sharedInstance];
  devices = [v8 devices];

  v10 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [devices count]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v11 = devices;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        if ([v16 canReceiveMessagesForCallProvider:{providerCopy, v24}] && (!supportCopy || objc_msgSend(v16, "canReceiveRelayedGFTCalls")))
        {
          destination = [v16 destination];
          [v10 addObject:destination];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v13);
  }

  if ([v10 count])
  {
    v18 = [v10 copy];
    v19 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v18];
    [v7 addObject:v19];
  }

  else
  {
    v18 = sub_100004778(0);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      if (supportCopy)
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v21 = [v11 count];
      *buf = 138412802;
      v29 = providerCopy;
      v30 = 2112;
      v31 = v20;
      v32 = 2048;
      v33 = v21;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No primary devices found that support call provider %@, requiresConversationRelaySupport %@. primaryAccountDevices count: %lu, not creating a session.", buf, 0x20u);
    }
  }

  v22 = [v7 copy];

  return v22;
}

- (id)_createSessionToDevices:(id)devices
{
  devicesCopy = devices;
  v4 = sub_100004778(devicesCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = devicesCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating session to devices: %@", buf, 0xCu);
  }

  v5 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [devicesCopy count]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = devicesCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        destination = [v11 destination];
        if (destination)
        {
          [v5 addObject:destination];
        }

        else
        {
          v13 = sub_100004778(0);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v24 = v11;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] destination for device returned a nil value, so we are going to skip creating a session to it: %@", buf, 0xCu);
          }
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v14 = [v5 copy];
  v15 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v14];

  return v15;
}

- (id)_createSessionToDestinations:(id)destinations
{
  destinationsCopy = destinations;
  v4 = sub_100004778(destinationsCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = destinationsCopy;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Creating session to destinations: %@", &v10, 0xCu);
  }

  if ([destinationsCopy count])
  {
    v5 = [IDSSession alloc];
    v6 = +[CSDRelayIDSService sharedInstance];
    account = [v6 account];
    v8 = [v5 initWithAccount:account destinations:destinationsCopy transportType:0];
  }

  else
  {
    v6 = sub_100004778(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Would have created a session to an empty destination set. Returning a nil session", &v10, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)_destroySession:(id)session
{
  sessionCopy = session;
  v5 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Destroying session %@", &v7, 0xCu);
  }

  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  [sessions removeObject:sessionCopy];

  [sessionCopy setDelegate:0];
}

- (CSDRelayIDSDualSession)waitingSession
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  v3 = [sessions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(sessions);
      }

      v5 = *(*(&v10 + 1) + 8 * v7);

      if ([v5 state] == 1)
      {
        break;
      }

      v7 = v7 + 1;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [sessions countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v5 = 0;
  }

  return v5;
}

- (CSDRelayIDSDualSession)currentSession
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  v3 = [sessions countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    v8 = v5;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(sessions);
      }

      v5 = *(*(&v10 + 1) + 8 * v7);

      if ([v5 state] >= 2 && objc_msgSend(v5, "state") < 4)
      {
        break;
      }

      v7 = v7 + 1;
      v8 = v5;
      if (v4 == v7)
      {
        v4 = [sessions countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v5 = 0;
  }

  return v5;
}

- (id)activeSessionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  v6 = [sessions countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(sessions);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([v9 hasIdentifier:identifierCopy] && objc_msgSend(v9, "state") <= 3)
        {
          v6 = v9;
          goto LABEL_12;
        }
      }

      v6 = [sessions countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v6;
}

- (id)sessionForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  v6 = [sessions countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v14;
LABEL_3:
    v10 = 0;
    v11 = v8;
    while (1)
    {
      if (*v14 != v9)
      {
        objc_enumerationMutation(sessions);
      }

      v8 = *(*(&v13 + 1) + 8 * v10);

      if ([v8 hasIdentifier:identifierCopy])
      {
        break;
      }

      v10 = v10 + 1;
      v11 = v8;
      if (v7 == v10)
      {
        v7 = [sessions countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v8 = 0;
  }

  return v8;
}

- (int)sessionProtocolVersionForIdentifier:(id)identifier
{
  v3 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:identifier];
  remoteProtocolVersion = [v3 remoteProtocolVersion];

  return remoteProtocolVersion;
}

- (void)prepareSessionToEndForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Asked to prepare session to end for identifier %@", &v7, 0xCu);
  }

  v6 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:identifierCopy];
  [v6 prepareToEnd];
}

- (void)prepareConnectedSessionsToEnd
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to prepare connected sessions to end", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  v5 = [sessions countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sessions);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 state] == 3)
        {
          [v9 prepareToEnd];
        }
      }

      v6 = [sessions countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)acceptInvitationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Accepting session for identifier %@", &v7, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:0];
  [(CSDRelayIDSSessionMessenger *)self sendMessage:v6 andAcceptInvitationIfNecessaryForIdentifier:identifierCopy];
}

- (void)cancelOrDeclineInvitationForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling/declining session for identifier %@", &v7, 0xCu);
  }

  v6 = [[CSDMessagingRelayMessage alloc] initWithType:0];
  [(CSDRelayIDSSessionMessenger *)self sendMessage:v6 andCancelOrDeclineInvitationIfNecessaryForIdentifier:identifierCopy];
}

- (void)endEndingSessions
{
  v3 = sub_100004778(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Asked to end ending sessions", buf, 2u);
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  v5 = [sessions countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(sessions);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if ([v9 state] == 4)
        {
          [v9 end];
        }
      }

      v6 = [sessions countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v6);
  }
}

- (void)_startSession:(id)session withMessage:(id)message identifiers:(id)identifiers timeout:(int64_t)timeout declineOnError:(BOOL)error
{
  errorCopy = error;
  identifiersCopy = identifiers;
  messageCopy = message;
  sessionCopy = session;
  [messageCopy addProtocolVersion];
  v15 = [CSDIDSDualSessionProvider alloc];
  v16 = +[TUCallCenter sharedInstance];
  queue = [v16 queue];
  v21 = [(CSDIDSDualSessionProvider *)v15 initWithSession:sessionCopy queue:queue];

  v18 = [[CSDRelayIDSDualSession alloc] initAsInitiatorWithSessionProvider:v21 identifiers:identifiersCopy];
  [v18 setDelegate:self];
  [v18 setInvitationTimeout:timeout];
  data = [messageCopy data];

  [v18 sendDataAndSendInvitationIfNecessary:data declineOnError:errorCopy];
  sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
  [sessions addObject:v18];
}

- (void)sendMessage:(id)message andStartSessionIfNecessaryForIdentifier:(id)identifier toDevicesSupportingProvider:(id)provider requiresConversationRelay:(BOOL)relay withTimeout:(int64_t)timeout
{
  relayCopy = relay;
  messageCopy = message;
  identifierCopy = identifier;
  providerCopy = provider;
  v14 = sub_100004778(providerCopy);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    if (relayCopy)
    {
      v15 = @"YES";
    }

    else
    {
      v15 = @"NO";
    }

    typeString = [messageCopy typeString];
    *buf = 138413058;
    v68 = providerCopy;
    v69 = 2112;
    v70 = v15;
    v71 = 2112;
    v72 = typeString;
    v73 = 2112;
    v74 = messageCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "sendMessageAndStartSessionIfNecessary for service %@ requiresConversationRelay %@ and message type %@: %@", buf, 0x2Au);
  }

  v17 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:identifierCopy];
  v18 = v17;
  if (v17)
  {
    currentSession5 = sub_100004778(v17);
    if (os_log_type_enabled(currentSession5, OS_LOG_TYPE_ERROR))
    {
      sub_10047DB6C();
    }

    goto LABEL_9;
  }

  currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];

  if (currentSession)
  {
    v24 = providerCopy;
    v25 = [(CSDRelayIDSSessionMessenger *)self deviceOrDestinationWithActiveSessionCanReceiveMessagesForCallProvider:providerCopy needsConversationRelaySupport:relayCopy];
    v26 = v25;
    currentSession5 = sub_100004778(v25);
    v27 = os_log_type_enabled(currentSession5, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      providerCopy = v24;
      if (v27)
      {
        if (relayCopy)
        {
          v28 = @"YES";
        }

        else
        {
          v28 = @"NO";
        }

        currentSession2 = [(CSDRelayIDSSessionMessenger *)self currentSession];
        *buf = 138412802;
        v68 = v24;
        v69 = 2112;
        v70 = v28;
        v71 = 2112;
        v72 = currentSession2;
        _os_log_impl(&_mh_execute_header, currentSession5, OS_LOG_TYPE_DEFAULT, "A session exists with a destination/device that supports provider %@ and support conversation relay %@ : %@", buf, 0x20u);
      }

      currentSession3 = [(CSDRelayIDSSessionMessenger *)self currentSession];
      remoteProtocolVersion = [currentSession3 remoteProtocolVersion];

      if (remoteProtocolVersion > 0)
      {
        deviceWithActiveSession = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];

        v35 = sub_100004778(v34);
        v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
        if (deviceWithActiveSession)
        {
          if (v36)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Starting another session to the device", buf, 2u);
          }

          deviceWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
          v64 = deviceWithActiveSession2;
          v38 = [NSArray arrayWithObjects:&v64 count:1];
          v39 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDevices:v38];
        }

        else
        {
          if (v36)
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Starting another session to the destination", buf, 2u);
          }

          deviceWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
          v38 = [NSSet setWithObject:deviceWithActiveSession2];
          v39 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v38];
        }

        v21 = v39;

        providerCopy = v24;
        if (v21)
        {
          v63 = identifierCopy;
          v56 = [NSArray arrayWithObjects:&v63 count:1];
          [(CSDRelayIDSSessionMessenger *)self _startSession:v21 withMessage:messageCopy identifiers:v56 timeout:timeout declineOnError:0];

LABEL_12:
          goto LABEL_13;
        }

LABEL_10:
        v21 = sub_100004778(v20);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Did not create session", buf, 2u);
        }

        goto LABEL_12;
      }

      v53 = sub_100004778(v32);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "We'll send this message via the existing session", buf, 2u);
      }

      currentSession4 = [(CSDRelayIDSSessionMessenger *)self currentSession];
      [currentSession4 addIdentifier:identifierCopy];

      currentSession5 = [(CSDRelayIDSSessionMessenger *)self currentSession];
      data = [messageCopy data];
      [currentSession5 sendData:data waitUntilConnected:1 completion:0];
    }

    else if (v27)
    {
      v52 = @"NO";
      if (relayCopy)
      {
        v52 = @"YES";
      }

      *buf = 138412546;
      providerCopy = v24;
      v68 = v24;
      v69 = 2112;
      v70 = v52;
      _os_log_impl(&_mh_execute_header, currentSession5, OS_LOG_TYPE_DEFAULT, "[WARN] A session exists, but it's with a device that doesn't support provider %@ or requires conversation relay %@ and device does not support GFT relay. Not starting a new session", buf, 0x16u);
    }

    else
    {
      providerCopy = v24;
    }

LABEL_9:

    goto LABEL_10;
  }

  v40 = sub_100004778(v23);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = @"NO";
    if (relayCopy)
    {
      v41 = @"YES";
    }

    *buf = 138412546;
    v68 = providerCopy;
    v69 = 2112;
    v70 = v41;
    _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No session exists. Starting a new one by inviting all devices that support provider %@ and support conversation relay if necessary %@", buf, 0x16u);
  }

  v57 = providerCopy;

  tuProvider = [messageCopy tuProvider];
  v43 = [(CSDRelayIDSSessionMessenger *)self _createSessionsToAllDevicesSupportingProvider:tuProvider requiresConversationRelaySupport:relayCopy];

  v61 = 0u;
  v62 = 0u;
  v59 = 0u;
  v60 = 0u;
  v44 = v43;
  v45 = [v44 countByEnumeratingWithState:&v59 objects:v66 count:16];
  if (v45)
  {
    v46 = v45;
    v47 = *v60;
    do
    {
      for (i = 0; i != v46; i = i + 1)
      {
        if (*v60 != v47)
        {
          objc_enumerationMutation(v44);
        }

        v49 = *(*(&v59 + 1) + 8 * i);
        v65 = identifierCopy;
        v50 = [NSArray arrayWithObjects:&v65 count:1];
        [(CSDRelayIDSSessionMessenger *)self _startSession:v49 withMessage:messageCopy identifiers:v50 timeout:timeout declineOnError:0];
      }

      v46 = [v44 countByEnumeratingWithState:&v59 objects:v66 count:16];
    }

    while (v46);
  }

  v51 = [v44 count];
  providerCopy = v57;
  if (!v51)
  {
    goto LABEL_10;
  }

LABEL_13:
}

- (BOOL)deviceOrDestinationWithActiveSessionCanReceiveMessagesForCallProvider:(id)provider needsConversationRelaySupport:(BOOL)support
{
  supportCopy = support;
  providerCopy = provider;
  destinationWithActiveSession = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
  if ([destinationWithActiveSession canReceiveMessagesForCallProvider:providerCopy])
  {
    v8 = 1;
  }

  else
  {
    deviceWithActiveSession = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    v8 = [deviceWithActiveSession canReceiveMessagesForCallProvider:providerCopy];
  }

  if (supportCopy)
  {
    deviceWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    if ([deviceWithActiveSession2 canReceiveRelayedGFTCalls])
    {
      canReceiveRelayedGFTCalls = 1;
    }

    else
    {
      destinationWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
      v13 = +[CSDRelayIDSService sharedInstance];
      v14 = [destinationWithActiveSession2 deviceForService:v13];
      canReceiveRelayedGFTCalls = [v14 canReceiveRelayedGFTCalls];
    }
  }

  else
  {
    canReceiveRelayedGFTCalls = 1;
  }

  return v8 & canReceiveRelayedGFTCalls;
}

- (void)sendMessage:(id)message andStartSessionIfNecessaryForIdentifier:(id)identifier toDestination:(id)destination timeout:(int64_t)timeout completionHandler:(id)handler
{
  identifierCopy = identifier;
  handlerCopy = handler;
  destinationCopy = destination;
  identifierCopy2 = identifier;
  messageCopy = message;
  v16 = [NSArray arrayWithObjects:&identifierCopy count:1];

  [(CSDRelayIDSSessionMessenger *)self sendMessage:messageCopy andStartSessionIfNecessaryForIdentifiers:v16 toDestination:destinationCopy timeout:timeout completionHandler:handlerCopy, identifierCopy];
}

- (void)sendMessage:(id)message andStartSessionIfNecessaryForIdentifiers:(id)identifiers toDestination:(id)destination timeout:(int64_t)timeout completionHandler:(id)handler
{
  messageCopy = message;
  identifiersCopy = identifiers;
  destinationCopy = destination;
  handlerCopy = handler;
  v16 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [messageCopy typeString];
    *buf = 138412546;
    v50 = typeString;
    v51 = 2112;
    v52 = messageCopy;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "sendMessageAndStartSessionIfNecessary for message type %@: %@", buf, 0x16u);
  }

  firstObject = [identifiersCopy firstObject];
  v19 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:firstObject];

  if (v19)
  {
    v21 = sub_100004778(v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047DBE8(identifiersCopy);
    }

LABEL_7:
    v22 = 0;
    v23 = 0;
    goto LABEL_8;
  }

  currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];

  if (!currentSession)
  {
    v40 = sub_100004778(v25);
    v41 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (!destinationCopy)
    {
      if (v41)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "[WARN] No IDSSession exists, and given device is nil. We can't start this session", buf, 2u);
      }

      goto LABEL_7;
    }

    if (v41)
    {
      *buf = 138412290;
      v50 = destinationCopy;
      _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "No IDSSession exists. Starting a new one by inviting to destination %@", buf, 0xCu);
    }

    deviceWithActiveSession2 = [NSSet setWithObject:destinationCopy];
    v23 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:deviceWithActiveSession2];
LABEL_23:

    if (v23)
    {
      v22 = 1;
      [(CSDRelayIDSSessionMessenger *)self _startSession:v23 withMessage:messageCopy identifiers:identifiersCopy timeout:timeout declineOnError:1];
    }

    else
    {
      v22 = 0;
    }

LABEL_8:
    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, v22, 1);
    }

    goto LABEL_10;
  }

  v26 = sub_100004778(v25);
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    currentSession2 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    *buf = 138412290;
    v50 = currentSession2;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "A session exists: %@", buf, 0xCu);
  }

  currentSession3 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  remoteProtocolVersion = [currentSession3 remoteProtocolVersion];

  v31 = sub_100004778(v30);
  v32 = os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT);
  if (remoteProtocolVersion > 0)
  {
    v46 = destinationCopy;
    if (v32)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Starting a new session to the destination of the device with an active session", buf, 2u);
    }

    deviceWithActiveSession = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    destination = [deviceWithActiveSession destination];

    if (!destination)
    {
      v45 = sub_100004778(v35);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "[WARN] Cannot start a new session, no valid destination", buf, 2u);
      }

      v22 = 0;
      v23 = 0;
      goto LABEL_8;
    }

    deviceWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    destination2 = [deviceWithActiveSession2 destination];
    [NSSet setWithObject:destination2];
    v39 = v38 = timeout;
    v23 = [(CSDRelayIDSSessionMessenger *)self _createSessionToDestinations:v39];

    timeout = v38;
    destinationCopy = v46;
    goto LABEL_23;
  }

  if (v32)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Sending the message through the existing session", buf, 2u);
  }

  currentSession4 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  [currentSession4 addIdentifiers:identifiersCopy];

  currentSession5 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  data = [messageCopy data];
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_100247F18;
  v47[3] = &unk_10061F8F0;
  v48 = handlerCopy;
  [currentSession5 sendData:data waitUntilConnected:1 completion:v47];

  v23 = 0;
  handlerCopy = 0;
LABEL_10:
}

- (BOOL)sendMessage:(id)message andAcceptInvitationIfNecessaryForIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v8 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [messageCopy typeString];
    v33 = 138412802;
    v34 = identifierCopy;
    v35 = 2112;
    v36 = typeString;
    v37 = 2112;
    v38 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendMessage:andAcceptInvitationIfNecessaryForIdentifier for identifier %@ and message type %@: %@", &v33, 0x20u);
  }

  [messageCopy addProtocolVersion];
  v10 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:identifierCopy];
  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v33 = 138412290;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v33, 0xCu);
  }

  currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];

  if (!currentSession)
  {
    v24 = sub_100004778(v13);
    v25 = v24;
    if (v10)
    {
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        v33 = 138412290;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "No current session already exists, so sending the message through this session %@", &v33, 0xCu);
      }

      data = [messageCopy data];
      [v10 sendDataAndAcceptInvitationIfNecessary:data];

      goto LABEL_16;
    }

    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sessions = [(CSDRelayIDSSessionMessenger *)self sessions];
      v33 = 138412802;
      v34 = identifierCopy;
      v35 = 2112;
      v36 = messageCopy;
      v37 = 2112;
      v38 = sessions;
      _os_log_error_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "Could not determine session to accept for identifier %@ and message %@. All sessions: %@", &v33, 0x20u);
    }

LABEL_23:
    v27 = 0;
    goto LABEL_24;
  }

  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    currentSession2 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    v33 = 138412290;
    v34 = currentSession2;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "A current session already exists: %@", &v33, 0xCu);
  }

  currentSession3 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  remoteProtocolVersion = [currentSession3 remoteProtocolVersion];

  v19 = sub_100004778(v18);
  v20 = os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
  if (remoteProtocolVersion <= 0)
  {
    if (v20)
    {
      LOWORD(v33) = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending the message through the current session", &v33, 2u);
    }

    currentSession4 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    [currentSession4 addIdentifier:identifierCopy];

    currentSession5 = [(CSDRelayIDSSessionMessenger *)self currentSession];
    data2 = [messageCopy data];
    [currentSession5 sendDataAndAcceptInvitationIfNecessary:data2];

    goto LABEL_23;
  }

  if (v20)
  {
    v33 = 138412290;
    v34 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending the message through the current session and declining this one %@", &v33, 0xCu);
  }

  currentSession6 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  [currentSession6 mergeSession:v10];

  currentSession7 = [(CSDRelayIDSSessionMessenger *)self currentSession];
  data3 = [messageCopy data];
  [currentSession7 sendDataAndAcceptInvitationIfNecessary:data3];

  [v10 sendDataAndDeclineInvitationIfNecessary:0];
LABEL_16:
  v27 = 1;
LABEL_24:

  return v27;
}

- (BOOL)sendMessage:(id)message andCancelOrDeclineInvitationIfNecessaryForIdentifier:(id)identifier
{
  messageCopy = message;
  identifierCopy = identifier;
  v8 = sub_100004778(identifierCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [messageCopy typeString];
    v18 = 138412802;
    v19 = identifierCopy;
    v20 = 2112;
    v21 = typeString;
    v22 = 2112;
    v23 = messageCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "sendMessage:andCancelOrDeclineInvitationIfNecessaryForIdentifier for identifier %@ and message type %@: %@", &v18, 0x20u);
  }

  v10 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:identifierCopy];
  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v18, 0xCu);
  }

  if (v10)
  {
    allIdentifiers = [v10 allIdentifiers];
    v13 = [allIdentifiers count];

    if (v13 < 2)
    {
      if ([v10 isInitiator])
      {
        [(CSDRelayIDSSessionMessenger *)self _sendMessage:messageCopy andCancelInvitationIfNecessaryForSession:v10];
      }

      else
      {
        [(CSDRelayIDSSessionMessenger *)self _sendMessage:messageCopy andDeclineInvitationIfNecessaryForSession:v10];
      }
    }

    else
    {
      v15 = sub_100004778(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        allIdentifiers2 = [v10 allIdentifiers];
        v18 = 138412546;
        v19 = allIdentifiers2;
        v20 = 2112;
        v21 = identifierCopy;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Session has multiple identifiers: %@. Removing identifier %@ and not canceling/declining", &v18, 0x16u);
      }

      [(CSDRelayIDSSessionMessenger *)self sendMessage:messageCopy forIdentifier:identifierCopy];
      [v10 removeIdentifier:identifierCopy];
    }
  }

  return v10 != 0;
}

- (void)_sendMessage:(id)message andCancelInvitationIfNecessaryForSession:(id)session
{
  messageCopy = message;
  sessionCopy = session;
  v7 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [messageCopy typeString];
    v12 = 138412802;
    v13 = sessionCopy;
    v14 = 2112;
    v15 = typeString;
    v16 = 2112;
    v17 = messageCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_sendMessage:andCancelInvitationIfNecessaryForIdentifier for session %@ and message type %@: %@", &v12, 0x20u);
  }

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v12, 0xCu);
  }

  data = [messageCopy data];
  [sessionCopy sendDataAndCancelInvitationIfNecessary:data];
}

- (void)_sendMessage:(id)message andDeclineInvitationIfNecessaryForSession:(id)session
{
  messageCopy = message;
  sessionCopy = session;
  v7 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [messageCopy typeString];
    v11 = 138412802;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = typeString;
    v15 = 2112;
    v16 = messageCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "_sendMessage:andDeclineInvitationIfNecessaryForIdentifier for session %@ and message type %@: %@", &v11, 0x20u);
  }

  v9 = sub_100004778([messageCopy addProtocolVersion]);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = sessionCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Session for identifier is %@", &v11, 0xCu);
  }

  data = [messageCopy data];
  [sessionCopy sendDataAndDeclineInvitationIfNecessary:data];
}

- (id)_sendMessageOptionsWithTimeout:(double)timeout
{
  v4 = [NSMutableDictionary dictionaryWithCapacity:3];
  v5 = [NSNumber numberWithDouble:timeout];
  [v4 setObject:v5 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];

  [v4 setObject:&__kCFBooleanTrue forKeyedSubscript:IDSSendMessageOptionFireAndForgetKey];
  [v4 setObject:&__kCFBooleanFalse forKeyedSubscript:IDSSendMessageOptionWantsClientAcknowledgementKey];
  v6 = +[IDSDevice pairedDeviceUniqueIDOverrideExists];
  if (v6)
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Removing IDSSendMessageOptionForceLocalDeliveryKey key from sendMessage options because pairedDeviceUniqueIDOverride exists", v10, 2u);
    }

    [v4 removeObjectForKey:IDSSendMessageOptionForceLocalDeliveryKey];
  }

  v8 = [v4 copy];

  return v8;
}

- (void)sendMessage:(id)message forCall:(id)call completionHandler:(id)handler
{
  messageCopy = message;
  callCopy = call;
  handlerCopy = handler;
  queue = [(CSDRelayIDSSessionMessenger *)self queue];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100248AC0;
  v15[3] = &unk_10061AF98;
  v16 = callCopy;
  selfCopy = self;
  v18 = messageCopy;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = messageCopy;
  v14 = callCopy;
  dispatch_async(queue, v15);
}

- (void)sendMessage:(id)message forIdentifier:(id)identifier toDestinations:(id)destinations customizedForRemoteProtocolVersion:(id)version waitUntilConnected:(BOOL)connected completionHandler:(id)handler
{
  connectedCopy = connected;
  messageCopy = message;
  identifierCopy = identifier;
  destinationsCopy = destinations;
  versionCopy = version;
  handlerCopy = handler;
  v19 = sub_100004778(handlerCopy);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    typeString = [messageCopy typeString];
    *buf = 138413058;
    v36 = typeString;
    v37 = 2112;
    v38 = identifierCopy;
    v39 = 2112;
    v40 = destinationsCopy;
    v41 = 1024;
    LODWORD(v42) = connectedCopy;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "for message type: %@ identifier: %@ destinations: %@ waitUntilConnected: %d", buf, 0x26u);
  }

  v22 = sub_100004778(v21);
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v36 = identifierCopy;
    v37 = 2112;
    v38 = messageCopy;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "identifier: %@ message: %@", buf, 0x16u);
  }

  if (identifierCopy)
  {
    [(CSDRelayIDSSessionMessenger *)self sessionForIdentifier:identifierCopy];
  }

  else
  {
    [(CSDRelayIDSSessionMessenger *)self currentSession];
  }
  v23 = ;
  v24 = v23;
  if (v23)
  {
    v25 = [messageCopy customizeForProtocolVersion:{objc_msgSend(v23, "remoteProtocolVersion")}];
    v34 = 0;
    if (versionCopy && (v25 = versionCopy[2](versionCopy, [v24 remoteProtocolVersion], &v34), (v34 & 1) != 0))
    {
      data = sub_100004778(v25);
      if (os_log_type_enabled(data, OS_LOG_TYPE_DEFAULT))
      {
        typeString2 = [messageCopy typeString];
        *buf = 138412546;
        v36 = typeString2;
        v37 = 2112;
        v38 = messageCopy;
        _os_log_impl(&_mh_execute_header, data, OS_LOG_TYPE_DEFAULT, "Not sending message because protocolVersionCustomizationBlock's preventMessageSend was set to YES for message type %@: %@", buf, 0x16u);
      }
    }

    else
    {
      v28 = sub_100004778(v25);
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
      if (destinationsCopy)
      {
        if (v29)
        {
          typeString3 = [messageCopy typeString];
          *buf = 138413058;
          v36 = v24;
          v37 = 2112;
          v38 = typeString3;
          v39 = 2112;
          v40 = destinationsCopy;
          v41 = 2112;
          v42 = messageCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "sendMessage through session %@ for message type %@ to destinations %@: %@", buf, 0x2Au);
        }

        data = [messageCopy data];
        [v24 sendData:data toDestinations:destinationsCopy completion:handlerCopy];
      }

      else
      {
        if (v29)
        {
          typeString4 = [messageCopy typeString];
          *buf = 138412802;
          v36 = v24;
          v37 = 2112;
          v38 = typeString4;
          v39 = 2112;
          v40 = messageCopy;
          _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "sendMessage through session %@ for message type %@: %@", buf, 0x20u);
        }

        data = [messageCopy data];
        [v24 sendData:data waitUntilConnected:connectedCopy completion:handlerCopy];
      }
    }
  }

  else
  {
    v31 = sub_100004778(0);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      typeString5 = [messageCopy typeString];
      *buf = 138412546;
      v36 = typeString5;
      v37 = 2112;
      v38 = messageCopy;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "No session available to send message type %@: %@", buf, 0x16u);
    }

    if (handlerCopy)
    {
      handlerCopy[2](handlerCopy, 1);
    }
  }
}

- (void)service:(id)service account:(id)account inviteReceivedForSession:(id)session fromID:(id)d withContext:(id)context
{
  serviceCopy = service;
  accountCopy = account;
  sessionCopy = session;
  dCopy = d;
  contextCopy = context;
  v43 = [IDSDestination destinationWithURI:dCopy];
  v14 = +[CSDRelayIDSService sharedInstance];
  v15 = [v14 deviceForFromID:dCopy];

  v42 = [[CSDMessagingRelayMessage alloc] initWithData:contextCopy];
  delegate = [(CSDRelayIDSMessenger *)self delegate];
  v16 = sub_100004778(delegate);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = +[NSDate date];
    [v17 timeIntervalSince1970];
    *buf = 138413570;
    *&buf[4] = sessionCopy;
    *&buf[12] = 2112;
    *&buf[14] = dCopy;
    *&buf[22] = 2112;
    v54 = v43;
    *v55 = 2112;
    *&v55[2] = v15;
    *&v55[10] = 2112;
    *&v55[12] = v42;
    v56 = 2048;
    v57 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invite received for session %@ from (fromID=%@) destination %@ device %@ with message %@ (timestamp: %f)", buf, 0x3Eu);
  }

  currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];
  v20 = currentSession;
  if (!currentSession)
  {
    goto LABEL_8;
  }

  destinationWithActiveSession = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
  if ([v43 isEqual:destinationWithActiveSession])
  {

LABEL_8:
    v24 = sub_100004778(currentSession);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      destinationWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self destinationWithActiveSession];
      v26 = [v43 isEqual:destinationWithActiveSession2];
      if (v15)
      {
        deviceWithActiveSession = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
        v27 = [v15 isEqual:deviceWithActiveSession];
      }

      else
      {
        v27 = 0;
      }

      currentSession2 = [(CSDRelayIDSSessionMessenger *)self currentSession];
      *buf = 67109632;
      *&buf[4] = v26;
      *&buf[8] = 1024;
      *&buf[10] = v27;
      *&buf[14] = 1024;
      *&buf[16] = currentSession2 == 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "... and it's from the same destination that we have an active session with (%d) or it's from the same device that we have an active session with (%d) or we don't have a session (%d)", buf, 0x14u);

      if (v15)
      {
      }
    }

    if (v42)
    {
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v54 = sub_100028740;
      *v55 = sub_10003291C;
      *&v55[8] = self->_queue;
      objc_initWeak(&location, self);
      v44[0] = _NSConcreteStackBlock;
      v44[1] = 3221225472;
      v44[2] = sub_100249ABC;
      v44[3] = &unk_10061F940;
      v50 = buf;
      objc_copyWeak(&v51, &location);
      v45 = delegate;
      v46 = v42;
      v47 = sessionCopy;
      v48 = v43;
      v49 = v15;
      [v45 checkShouldIgnoreSessionInviteWithMessage:v46 fromDestination:v48 completion:v44];

      objc_destroyWeak(&v51);
      objc_destroyWeak(&location);
      _Block_object_dispose(buf, 8);

      goto LABEL_30;
    }

    v30 = sub_100004778(v29);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "... but there was no accompanying message so just ignoring the invite", buf, 2u);
    }

LABEL_29:

    goto LABEL_30;
  }

  if (v15)
  {
    deviceWithActiveSession2 = [(CSDRelayIDSSessionMessenger *)self deviceWithActiveSession];
    v23 = [v15 isEqual:deviceWithActiveSession2];

    if (v23)
    {
      goto LABEL_8;
    }
  }

  else
  {
  }

  v31 = sub_100004778(currentSession);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "... but it is from a different device than the one that we have an active session with", buf, 2u);
  }

  v32 = [delegate shouldDeclineSecondSessionInviteWithMessage:v42];
  v33 = v32;
  v30 = sub_100004778(v32);
  v34 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
  if (!v33)
  {
    if (v34)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "... and we were NOT told to decline the invite, so just ignoring it", buf, 2u);
    }

    goto LABEL_29;
  }

  if (v34)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "... and we were told to decline the invite", buf, 2u);
  }

  v35 = [[CSDMessagingRelayMessage alloc] initWithType:18];
  [(CSDMessagingRelayMessage *)v35 setDisconnectedReason:10];
  data = [(CSDMessagingRelayMessage *)v35 data];
  [sessionCopy declineInvitationWithData:data];

LABEL_30:
}

- (id)deviceForFromID:(id)d
{
  dCopy = d;
  v4 = +[CSDRelayIDSService sharedInstance];
  v5 = [v4 deviceForFromID:dCopy];

  return v5;
}

- (void)session:(id)session endedWithReason:(int)reason
{
  sessionCopy = session;
  v7 = sub_100004778(sessionCopy);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 67109120;
    LODWORD(v18) = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Session ended with reason %d", &v17, 8u);
  }

  delegate = [(CSDRelayIDSMessenger *)self delegate];
  allIdentifiers = [sessionCopy allIdentifiers];
  firstObject = [allIdentifiers firstObject];
  v11 = [(CSDRelayIDSSessionMessenger *)self activeSessionForIdentifier:firstObject];

  if (v11)
  {
    allIdentifiers2 = sub_100004778(v12);
    if (os_log_type_enabled(allIdentifiers2, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v11;
      _os_log_impl(&_mh_execute_header, allIdentifiers2, OS_LOG_TYPE_DEFAULT, "Not notifying delegate of messenger connection end because a different active session with the same identifier exists: %@", &v17, 0xCu);
    }
  }

  else if (reason >= 5)
  {
    if (reason == 5)
    {
      v16 = sub_100004778(v12);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Notifying delegate that connection could not establish link", &v17, 2u);
      }

      allIdentifiers2 = [sessionCopy allIdentifiers];
      [delegate messengerConnectionCouldNotEstablishLink:self forIdentifiers:allIdentifiers2 didStartConnecting:{objc_msgSend(sessionCopy, "hasStartedConnecting")}];
    }

    else
    {
      if (reason != 6)
      {
        goto LABEL_11;
      }

      v15 = sub_100004778(v12);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v17) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[WARN] Notifying delegate of connection failure", &v17, 2u);
      }

      allIdentifiers2 = [sessionCopy allIdentifiers];
      [delegate messengerConnectionFailed:self forIdentifiers:allIdentifiers2 didStartConnecting:{objc_msgSend(sessionCopy, "hasStartedConnecting")}];
    }
  }

  else
  {
    v14 = sub_100004778(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Notifying delegate of connection end", &v17, 2u);
    }

    allIdentifiers2 = [sessionCopy allIdentifiers];
    [delegate messengerConnectionEnded:self forIdentifiers:allIdentifiers2 didStartConnecting:{objc_msgSend(sessionCopy, "hasStartedConnecting")}];
  }

LABEL_11:
  [(CSDRelayIDSSessionMessenger *)self _destroySession:sessionCopy];
}

- (void)session:(id)session receivedInvitationAcceptWithData:(id)data fromDestination:(id)destination device:(id)device
{
  sessionCopy = session;
  dataCopy = data;
  destinationCopy = destination;
  deviceCopy = device;
  v14 = deviceCopy;
  if (dataCopy)
  {
    v15 = [[CSDMessagingRelayMessage alloc] initWithData:dataCopy];
    [sessionCopy setReceiverProtocolVersion:{-[CSDMessagingRelayMessage protocolVersion](v15, "protocolVersion")}];
    delegate = [(CSDRelayIDSMessenger *)self delegate];
    [delegate messenger:self handledMessage:v15 fromDestination:destinationCopy device:v14];
  }

  else
  {
    v17 = sub_100004778(deviceCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *v18 = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received invitation accept with no data payload.", v18, 2u);
    }
  }
}

- (void)session:(id)session receivedInvitationCancelWithData:(id)data fromDestination:(id)destination device:(id)device
{
  sessionCopy = session;
  dataCopy = data;
  deviceCopy = device;
  destinationCopy = destination;
  delegate = [(CSDRelayIDSMessenger *)self delegate];
  v15 = delegate;
  if (dataCopy)
  {
    v16 = [[CSDMessagingRelayMessage alloc] initWithData:dataCopy];
    remoteDevice = [sessionCopy remoteDevice];
    [v15 messenger:self handledMessage:v16 fromDestination:destinationCopy device:remoteDevice];
  }

  else
  {
    v18 = sub_100004778(delegate);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received invitation cancel with no data payload. Assuming the invitation was answered elsewhere", v19, 2u);
    }

    v16 = [[CSDMessagingRelayMessage alloc] initWithType:5];
    [v15 messenger:self handledMessage:v16 fromDestination:destinationCopy device:deviceCopy];
  }
}

- (void)session:(id)session receivedInvitationDeclineWithData:(id)data fromDestination:(id)destination device:(id)device
{
  dataCopy = data;
  destinationCopy = destination;
  deviceCopy = device;
  sessionCopy = session;
  v14 = sub_100004778(sessionCopy);
  v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
  if (dataCopy)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "receivedInvitationDeclineWithData", buf, 2u);
    }

    currentSession = [[CSDMessagingRelayMessage alloc] initWithData:dataCopy];
    [sessionCopy setReceiverProtocolVersion:{-[CSDMessagingRelayMessage protocolVersion](currentSession, "protocolVersion")}];

    sessionCopy = [(CSDRelayIDSMessenger *)self delegate];
    [sessionCopy messenger:self handledMessage:currentSession fromDestination:destinationCopy device:deviceCopy];
  }

  else
  {
    if (v15)
    {
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Received invitation decline with no data payload. Assuming invitation was accepted by sending a message through another session", v17, 2u);
    }

    currentSession = [(CSDRelayIDSSessionMessenger *)self currentSession];
    [(CSDMessagingRelayMessage *)currentSession mergeSession:sessionCopy];
  }
}

- (void)session:(id)session receivedData:(id)data fromDestination:(id)destination device:(id)device
{
  sessionCopy = session;
  destinationCopy = destination;
  deviceCopy = device;
  dataCopy = data;
  v13 = [[CSDMessagingRelayMessage alloc] initWithData:dataCopy];

  delegate = [(CSDRelayIDSMessenger *)self delegate];
  if ([sessionCopy remoteProtocolVersion] <= 0)
  {
    v15 = [delegate identifiersForSessionInvitationWithMessage:v13];
    [sessionCopy addIdentifiers:v15];
  }

  [delegate messenger:self handledMessage:v13 fromDestination:destinationCopy device:deviceCopy];
}

@end