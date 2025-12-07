@interface GKViceroyTransport
- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer;
- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error;
- (GKTransportClientDelegate)clientDelegate;
- (GKViceroyTransport)initWithClientDelegate:(id)delegate matchDataDelegate:(id)dataDelegate daemonProxy:(id)proxy;
- (NSData)nearbyConnectionData;
- (id)enrichPeerDictionariesForPlayersConnection:(id)connection;
- (id)peerIdFromPlayer:(id)player;
- (id)playerIDFromPeerID:(id)d;
- (id)playerIDFromSession:(id)session;
- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context;
- (void)acceptRelayResponse:(id)response playerID:(id)d;
- (void)chooseBestHostingPlayerWithTransportContext:(id)context completionHandler:(id)handler;
- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data;
- (void)connectToPlayersWithTransportContext:(id)context completionHandler:(id)handler;
- (void)dealloc;
- (void)disconnectAllWithTransportContext:(id)context completionHandler:(id)handler;
- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive;
- (void)initSessionIfNeeded;
- (void)localConnectionDataWithCompletionHandler:(id)handler;
- (void)preemptRelay:(id)relay;
- (void)receiveData:(id)data fromPeer:(id)peer inSession:(id)session context:(void *)context;
- (void)session:(id)session connectionWithPeerFailed:(id)failed withError:(id)error;
- (void)session:(id)session didFailWithError:(id)error;
- (void)session:(id)session initiateRelay:(id)relay forPeer:(id)peer;
- (void)session:(id)session networkStatisticsChanged:(id)changed;
- (void)session:(id)session peer:(id)peer didChangeState:(int)state;
- (void)session:(id)session updateRelay:(id)relay forPeer:(id)peer;
@end

@implementation GKViceroyTransport

- (GKViceroyTransport)initWithClientDelegate:(id)delegate matchDataDelegate:(id)dataDelegate daemonProxy:(id)proxy
{
  delegateCopy = delegate;
  dataDelegateCopy = dataDelegate;
  proxyCopy = proxy;
  v30.receiver = self;
  v30.super_class = GKViceroyTransport;
  v11 = [(GKViceroyTransport *)&v30 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_weakClientDelegate, delegateCopy);
    v13 = objc_alloc(MEMORY[0x277D0C928]);
    v14 = +[GKLocalPlayer local];
    internal = [v14 internal];
    playerID = [internal playerID];
    v17 = [v13 initWithParticipantID:playerID];
    connection = v12->_connection;
    v12->_connection = v17;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    guestConnections = v12->_guestConnections;
    v12->_guestConnections = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    guestSessions = v12->_guestSessions;
    v12->_guestSessions = dictionary2;

    v23 = [[GKViceroyLeaderElector alloc] initWithMatchDataDelegate:dataDelegateCopy];
    leaderElector = v12->_leaderElector;
    v12->_leaderElector = v23;

    v25 = [GKViceroyRelay alloc];
    connection = [(GKViceroyTransport *)v12 connection];
    v27 = [(GKViceroyRelay *)v25 initWithClientDelegate:delegateCopy connection:connection matchDataDelegate:dataDelegateCopy daemonProxy:proxyCopy];
    relay = v12->_relay;
    v12->_relay = v27;
  }

  return v12;
}

- (void)initSessionIfNeeded
{
  selfCopy = self;
  session = [a2 session];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v5, v6, "[GKViceroyTransport] A new session (%p) has been created", v7, v8, v9, v10);
}

- (void)dealloc
{
  [(GKViceroyTransport *)self setLeaderElector:0];
  [(GKViceroyTransport *)self setSession:0];
  [(GKViceroyTransport *)self setClientDelegate:0];
  v3.receiver = self;
  v3.super_class = GKViceroyTransport;
  [(GKViceroyTransport *)&v3 dealloc];
}

- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data
{
  v11[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  referenceKey = [player referenceKey];
  v10 = referenceKey;
  v11[0] = dataCopy;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];

  connection = [(GKViceroyTransport *)self connection];
  [connection connectParticipantsWithConnectionData:v8 withSessionInfo:0];

  [(GKViceroyTransport *)self initSessionIfNeeded];
}

- (void)connectToPlayersWithTransportContext:(id)context completionHandler:(id)handler
{
  selfCopy = self;
  v33 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  peerDictionaries = [contextCopy peerDictionaries];
  v8 = [peerDictionaries countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(peerDictionaries);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = [v12 objectForKey:{@"peer-id", selfCopy}];
        v14 = [v12 objectForKey:@"peer-blob"];
        [dictionary setObject:v14 forKey:v13];
      }

      v9 = [peerDictionaries countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v9);
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v31 = dictionary;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "[GKViceroyTransport] Connecting to participants with connectionData %@", buf, 0xCu);
  }

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  sessionToken = [contextCopy sessionToken];

  if (sessionToken)
  {
    sessionToken2 = [contextCopy sessionToken];
    [dictionary2 setObject:sessionToken2 forKey:*MEMORY[0x277D0C918]];
  }

  cdxTicket = [contextCopy cdxTicket];

  if (cdxTicket)
  {
    cdxTicket2 = [contextCopy cdxTicket];
    [dictionary2 setObject:cdxTicket2 forKey:*MEMORY[0x277D0C910]];
  }

  connection = [v24 connection];
  [connection connectParticipantsWithConnectionData:dictionary withSessionInfo:dictionary2];

  [v24 initSessionIfNeeded];
  handlerCopy[2](handlerCopy, 0);
}

- (BOOL)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer
{
  v27[1] = *MEMORY[0x277D85DE8];
  hostPlayerCopy = hostPlayer;
  internal = [player internal];
  playerID = [internal playerID];

  guestConnections = [(GKViceroyTransport *)self guestConnections];
  v10 = [guestConnections objectForKeyedSubscript:playerID];

  if (!v10)
  {
    v11 = [objc_alloc(MEMORY[0x277D0C928]) initWithParticipantID:playerID];
    connection = [(GKViceroyTransport *)self connection];
    getLocalConnectionDataForLocalGaming = [connection getLocalConnectionDataForLocalGaming];

    getLocalConnectionDataForLocalGaming2 = [v11 getLocalConnectionDataForLocalGaming];
    connection2 = [(GKViceroyTransport *)self connection];
    v26 = playerID;
    v27[0] = getLocalConnectionDataForLocalGaming2;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [connection2 connectParticipantsWithConnectionData:v16 withSessionInfo:0];

    internal2 = [hostPlayerCopy internal];
    playerID2 = [internal2 playerID];
    v24 = playerID2;
    v25 = getLocalConnectionDataForLocalGaming;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v25 forKeys:&v24 count:1];
    [v11 connectParticipantsWithConnectionData:v19 withSessionInfo:0];

    guestConnections2 = [(GKViceroyTransport *)self guestConnections];
    [guestConnections2 setObject:v11 forKeyedSubscript:playerID];

    [(GKViceroyTransport *)self initSessionIfNeeded];
    v21 = [[GKViceroySession alloc] initWithConnection:v11 delegate:self];
    guestSessions = [(GKViceroyTransport *)self guestSessions];
    [guestSessions setObject:v21 forKeyedSubscript:playerID];
  }

  return v10 == 0;
}

- (void)disconnectAllWithTransportContext:(id)context completionHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "[GKViceroyTransport] disconnectAll", buf, 2u);
  }

  relay = [(GKViceroyTransport *)self relay];
  [relay disconnect];

  session = [(GKViceroyTransport *)self session];
  [session disconnectFromAllPeers];

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  guestSessions = [(GKViceroyTransport *)self guestSessions];
  allValues = [guestSessions allValues];

  v14 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v22;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v22 != v16)
        {
          objc_enumerationMutation(allValues);
        }

        v18 = *(*(&v21 + 1) + 8 * i);
        [v18 disconnectFromAllPeers];
        [v18 setDataReceiveHandler:0 withContext:0];
        [v18 disconnectFromAllPeers];
        [v18 setDelegate:0];
        [v18 setPrivateDelegate:0];
      }

      v15 = [allValues countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v15);
  }

  guestSessions2 = [(GKViceroyTransport *)self guestSessions];
  [guestSessions2 removeAllObjects];

  guestConnections = [(GKViceroyTransport *)self guestConnections];
  [guestConnections removeAllObjects];

  handlerCopy[2](handlerCopy, 0);
}

- (id)enrichPeerDictionariesForPlayersConnection:(id)connection
{
  v24 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  selfBlob = [(GKViceroyTransport *)self selfBlob];
  *(&v17 + 1) = selfBlob;
  if (selfBlob)
  {
    *&v17 = [MEMORY[0x277D0C928] externalAddressForSelfConnectionData:selfBlob];
  }

  else
  {
    *&v17 = 0;
  }

  array = [MEMORY[0x277CBEB18] array];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  obj = connectionCopy;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v20;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v20 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v19 + 1) + 8 * i);
        v12 = [v11 objectForKey:@"peer-id"];
        v13 = [(GKViceroyTransport *)self playerIDFromPeerID:v12];
        if (v13)
        {
          v14 = 1;
        }

        else
        {
          v14 = v17 != 0;
        }

        if (v14)
        {
          v15 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v11];
          [v15 setValue:*(&v17 + 1) forKey:@"self-blob"];
          [v15 setValue:v17 forKey:@"self-nat-ip"];
          [v15 setValue:v13 forKey:@"player-id"];
          [array addObject:v15];
        }

        else
        {
          [array addObject:v11];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v8);
  }

  return array;
}

- (void)localConnectionDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  connection = [(GKViceroyTransport *)self connection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke;
  v7[3] = &unk_2785DD870;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [connection getLocalConnectionDataWithCompletionHandler:v7];
}

void __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    [*(a1 + 32) setSelfBlob:v5];
  }

  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke_cold_1();
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (NSData)nearbyConnectionData
{
  connection = [(GKViceroyTransport *)self connection];
  getLocalConnectionDataForLocalGaming = [connection getLocalConnectionDataForLocalGaming];

  return getLocalConnectionDataForLocalGaming;
}

- (id)peerIdFromPlayer:(id)player
{
  playerCopy = player;
  connection = [(GKViceroyTransport *)self connection];
  internal = [playerCopy internal];
  playerID = [internal playerID];
  v16 = 0;
  v8 = [connection convertParticipantID:playerID toPeerID:&v16];
  v9 = v16;

  v10 = os_log_GKGeneral;
  if (v8)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(GKViceroyTransport *)v9 peerIdFromPlayer:v10, playerCopy];
    }

    playerID2 = v9;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
      v10 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [(GKViceroyTransport *)v10 peerIdFromPlayer:playerCopy];
    }

    internal2 = [playerCopy internal];
    playerID2 = [internal2 playerID];
  }

  return playerID2;
}

- (id)playerIDFromPeerID:(id)d
{
  dCopy = d;
  connection = [(GKViceroyTransport *)self connection];
  v14 = 0;
  v6 = [connection convertPeerID:dCopy toParticipantID:&v14];
  v7 = v14;

  v8 = os_log_GKGeneral;
  if (v6)
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    v10 = v7;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKViceroyTransport playerIDFromPeerID:];
      v10 = v7;
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
      v8 = os_log_GKGeneral;
    }

    v10 = dCopy;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      [GKViceroyTransport playerIDFromPeerID:];
      v10 = dCopy;
    }
  }

  v12 = v10;

  return v10;
}

- (id)playerIDFromSession:(id)session
{
  v21 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  guestSessions = [(GKViceroyTransport *)self guestSessions];
  allKeys = [guestSessions allKeys];

  v7 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        guestSessions2 = [(GKViceroyTransport *)self guestSessions];
        v13 = [guestSessions2 objectForKeyedSubscript:v11];

        if ([v13 isWrappingGKSession:sessionCopy])
        {
          v14 = v11;

          goto LABEL_11;
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = 0;
LABEL_11:

  return v14;
}

- (BOOL)sendScopedData:(id)data toPlayers:(id)players dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  playersCopy = players;
  v14 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(playersCopy, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = playersCopy;
  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v28;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v28 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = [(GKViceroyTransport *)self peerIdFromPlayer:*(*(&v27 + 1) + 8 * i)];
        if (v20)
        {
          [v14 addObject:v20];
        }
      }

      v17 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v17);
  }

  if ([v14 count])
  {
    session = [(GKViceroyTransport *)self session];
    v22 = [session sendData:dataCopy toPeers:v14 withDataMode:mode error:error];
  }

  else
  {
    v23 = os_log_GKGeneral;
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
      v23 = os_log_GKGeneral;
    }

    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v26 = 0;
      _os_log_impl(&dword_227904000, v23, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] sendData toPlayers: not sending to any peers", v26, 2u);
    }

    v22 = 1;
  }

  return v22;
}

- (BOOL)sendScopedDataToAll:(id)all dataMode:(int64_t)mode dataScope:(int64_t)scope transportContext:(id)context error:(id *)error
{
  allCopy = all;
  session = [(GKViceroyTransport *)self session];
  LOBYTE(error) = [session sendDataToAllPeers:allCopy withDataMode:mode error:error];

  return error;
}

- (void)receiveData:(id)data fromPeer:(id)peer inSession:(id)session context:(void *)context
{
  sessionCopy = session;
  peerCopy = peer;
  dataCopy = data;
  v11 = [[GKMatchPacket alloc] initWithMessage:dataCopy];

  v12 = [(GKViceroyTransport *)self playerIDFromPeerID:peerCopy];

  if ([(GKMatchPacket *)v11 valid]&& [(GKMatchPacket *)v11 packetType]== 4)
  {
    leaderElector = [(GKViceroyTransport *)self leaderElector];
    data = [(GKMatchPacket *)v11 data];
    [leaderElector receivedChooseHostData:data fromPlayerID:v12];
  }

  else
  {
    session = [(GKViceroyTransport *)self session];
    if ([session isWrappingGKSession:sessionCopy])
    {
      leaderElector = 0;
    }

    else
    {
      leaderElector = [(GKViceroyTransport *)self playerIDFromSession:sessionCopy];
    }

    data = [(GKViceroyTransport *)self clientDelegate];
    [data transportDidReceivePacket:v11 fromPlayerID:v12 remoteRecipientID:leaderElector];
  }
}

- (void)acceptRelayResponse:(id)response playerID:(id)d
{
  dCopy = d;
  responseCopy = response;
  relay = [(GKViceroyTransport *)self relay];
  [relay acceptRelayResponse:responseCopy playerID:dCopy];
}

- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive
{
  preemptiveCopy = preemptive;
  dataCopy = data;
  relay = [(GKViceroyTransport *)self relay];
  [relay handleRelayPushData:dataCopy onlyIfPreemptive:preemptiveCopy];
}

- (void)preemptRelay:(id)relay
{
  relayCopy = relay;
  relay = [(GKViceroyTransport *)self relay];
  [relay preemptRelay:relayCopy];
}

- (void)session:(id)session peer:(id)peer didChangeState:(int)state
{
  v5 = *&state;
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  peerCopy = peer;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v10;
    v13 = [(GKViceroyTransport *)self playerIDFromSession:sessionCopy];
    v16 = 138413058;
    v17 = sessionCopy;
    v18 = 1024;
    v19 = v5;
    v20 = 2112;
    v21 = peerCopy;
    v22 = 2112;
    v23 = v13;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] peer state changed - session (%@) - new state: %d - peerID: %@. Session belongs to playerID: %@", &v16, 0x26u);
  }

  clientDelegate = [(GKViceroyTransport *)self clientDelegate];
  v15 = [(GKViceroyTransport *)self playerIDFromPeerID:peerCopy];
  [clientDelegate connectionDidChangeWithState:v5 playerID:v15];
}

- (void)session:(id)session connectionWithPeerFailed:(id)failed withError:(id)error
{
  v25 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  failedCopy = failed;
  errorCopy = error;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    v14 = v12;
    sessionID = [sessionCopy sessionID];
    v16 = [(GKViceroyTransport *)self playerIDFromPeerID:failedCopy];
    v17 = 138413058;
    v18 = sessionID;
    v19 = 2112;
    v20 = failedCopy;
    v21 = 2112;
    v22 = v16;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_error_impl(&dword_227904000, v14, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] session (%@) connection with peerID: %@ playerID: %@ failed %@", &v17, 0x2Au);
  }

  clientDelegate = [(GKViceroyTransport *)self clientDelegate];
  [clientDelegate connectionDidFailWithError:errorCopy];

  [(GKViceroyTransport *)self session:sessionCopy peer:failedCopy didChangeState:3];
}

- (void)session:(id)session didFailWithError:(id)error
{
  v20 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKError;
  if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
  {
    v11 = v9;
    sessionID = [sessionCopy sessionID];
    v13 = [(GKViceroyTransport *)self playerIDFromSession:sessionCopy];
    v14 = 138412802;
    v15 = sessionID;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = errorCopy;
    _os_log_error_impl(&dword_227904000, v11, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] session (%@) did fail for playerID: %@ with error %@", &v14, 0x20u);
  }

  clientDelegate = [(GKViceroyTransport *)self clientDelegate];
  [clientDelegate transportDidFailWithError:errorCopy];
}

- (void)session:(id)session initiateRelay:(id)relay forPeer:(id)peer
{
  v16 = *MEMORY[0x277D85DE8];
  relayCopy = relay;
  v8 = [(GKViceroyTransport *)self playerIDFromPeerID:peer];
  v9 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
    v9 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v8;
    v14 = 2112;
    v15 = relayCopy;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] session initiateRelay for playerID: %@ - sessionInfo: %@", &v12, 0x16u);
  }

  relay = [(GKViceroyTransport *)self relay];
  [relay sessionDidInitiateOrUpdateRelay:relayCopy playerID:v8];
}

- (void)session:(id)session updateRelay:(id)relay forPeer:(id)peer
{
  v18 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  relayCopy = relay;
  peerCopy = peer;
  v10 = os_log_GKGeneral;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
    v10 = os_log_GKGeneral;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = sessionCopy;
    v14 = 2112;
    v15 = relayCopy;
    v16 = 2112;
    v17 = peerCopy;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_DEFAULT, "[GKViceroyTransport] session: %@ updateRelay: %@ forPeer: %@", &v12, 0x20u);
  }
}

- (void)session:(id)session networkStatisticsChanged:(id)changed
{
  changedCopy = changed;
  leaderElector = [(GKViceroyTransport *)self leaderElector];
  v6 = +[GKLocalPlayer local];
  v7 = [(GKViceroyTransport *)self peerIdFromPlayer:v6];
  [leaderElector networkStatisticsDidChange:changedCopy localPlayerPeerID:v7];
}

- (void)chooseBestHostingPlayerWithTransportContext:(id)context completionHandler:(id)handler
{
  handlerCopy = handler;
  leaderElector = [(GKViceroyTransport *)self leaderElector];
  [leaderElector chooseBestHostingPlayerWithCompletionHandler:handlerCopy];
}

- (id)voiceChatWithName:(id)name players:(id)players transportContext:(id)context
{
  playersCopy = players;
  nameCopy = name;
  session = [(GKViceroyTransport *)self session];
  v10 = [session voiceChatWithName:nameCopy players:playersCopy];

  return v10;
}

- (GKTransportClientDelegate)clientDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_weakClientDelegate);

  return WeakRetained;
}

void __63__GKViceroyTransport_localConnectionDataWithCompletionHandler___block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v0, OS_LOG_TYPE_ERROR, "[GKViceroyTransport] Getting local connection data encountered cdxError: %@", v1, 0xCu);
}

- (void)peerIdFromPlayer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 internal];
  v5 = [v4 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_6(&dword_227904000, v6, v7, "[GKViceroyTransport] PeerID for player: %@ not found and therefore, return playerID instead.", v8, v9, v10, v11);
}

- (void)peerIdFromPlayer:(void *)a3 .cold.2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [a3 internal];
  v7 = [v6 debugDescription];
  v8 = 138412546;
  v9 = a1;
  v10 = 2112;
  v11 = v7;
  _os_log_debug_impl(&dword_227904000, v5, OS_LOG_TYPE_DEBUG, "[GKViceroyTransport] Return peerID: %@, converted from player: %@", &v8, 0x16u);
}

- (void)playerIDFromPeerID:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_227904000, v0, OS_LOG_TYPE_DEBUG, "[GKViceroyTransport] Converted peerID: %@ not found and therefore, return it as playerID", v1, 0xCu);
}

- (void)playerIDFromPeerID:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  _os_log_debug_impl(&dword_227904000, v1, OS_LOG_TYPE_DEBUG, "[GKViceroyTransport] Return playerID: %@, converted from peerID: %@", v2, 0x16u);
}

@end