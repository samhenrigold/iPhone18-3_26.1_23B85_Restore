@interface GKMatch
- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)playerIDs withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error;
- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)players dataMode:(GKMatchSendDataMode)mode error:(NSError *)error;
- (BOOL)sendDataToAllPlayers:(NSData *)data withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error;
- (BOOL)sendPacketDataToAll:(id)all packetType:(unsigned __int8)type dataMode:(int64_t)mode error:(id *)error;
- (GKMatch)initWithMatchmaker:(id)matchmaker;
- (GKMatch)initWithTransport:(id)transport context:(id)context reporter:(id)reporter matchmaker:(id)matchmaker;
- (GKMatchDelegatePrivate)inviteDelegate;
- (GKMatchmaker)matchmaker;
- (GKVoiceChat)voiceChatWithName:(NSString *)name;
- (NSArray)guestPlayers;
- (NSArray)playerIDs;
- (NSArray)players;
- (NSDictionary)playerProperties;
- (NSDictionary)properties;
- (id)allIDs;
- (id)connectedPlayers;
- (id)dataFromBase64String:(id)string;
- (id)delegate;
- (id)description;
- (id)getConnectionContextForPlayerID:(id)d;
- (id)makeInviteMessageDoneData;
- (id)matchPacketWithPacketType:(unsigned __int8)type sequence:(int64_t)sequence;
- (id)nearbyConnectionData;
- (id)packet:(unsigned __int8)packet data:(id)data;
- (id)pendingInviteesOfLocalPlayer;
- (id)playerFromID:(id)d includingLocal:(BOOL)local;
- (id)stringForGKPeerConnectionState:(int)state;
- (id)stringForGKPlayerConnectionState:(int64_t)state;
- (id)updateConnectionInfo:(id)info forPlayerID:(id)d;
- (int64_t)sequenceFromPacket:(id)packet;
- (unint64_t)currentPlayerCount;
- (unint64_t)currentPlayerCountIncludingLocalPlayer;
- (void)_delegate:(id)_delegate didReceiveData:(id)data forRecipient:(id)recipient fromPlayer:(id)player;
- (void)acceptRelayResponse:(id)response player:(id)player;
- (void)addPlayerToGroup:(id)group;
- (void)addPlayers:(id)players;
- (void)applicationDidEnterBackground:(id)background;
- (void)applicationWillEnterForeground:(id)foreground;
- (void)applicationWillTerminateNotification:(id)notification;
- (void)cancelPendingConnectionCheckWithReason:(id)reason;
- (void)chooseBestHostPlayerWithCompletionHandler:(void *)completionHandler;
- (void)chooseBestHostingPlayerWithCompletionHandler:(void *)completionHandler;
- (void)cleanupForTerminationWithReason:(int64_t)reason;
- (void)clearSessionWithReason:(int64_t)reason;
- (void)conditionallyReinvitePlayer:(id)player sessionToken:(id)token;
- (void)conditionallyRelaunchPlayer:(id)player;
- (void)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer;
- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data;
- (void)connectToPlayers:(id)players version:(unsigned __int8)version invitedByLocalPlayer:(BOOL)player completionHandler:(id)handler;
- (void)connectionDidChangeWithState:(int)state playerID:(id)d;
- (void)connectionDidFailWithError:(id)error;
- (void)dealloc;
- (void)deferStateCallbackForPlayer:(id)player state:(int64_t)state;
- (void)deliverData:(id)data forRecipient:(id)recipient fromPlayer:(id)player;
- (void)disconnect;
- (void)getLocalConnectionDataWithCompletionHandler:(id)handler;
- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive;
- (void)localPlayerDidChange:(id)change;
- (void)monitorStatsUpdated:(id)updated;
- (void)playerIDs;
- (void)preLoadInviter:(id)inviter sessionToken:(id)token;
- (void)preemptRelay:(id)relay;
- (void)promptRadarAndRequestRemoteLogsWithDescriptionAddition:(id)addition;
- (void)putMultiplayerGroup;
- (void)queueData:(id)data withEventQueueForPlayer:(id)player forRecipient:(id)recipient;
- (void)receivedPlayerSyncData:(id)data;
- (void)refreshPendingConnectionCheckIfNeeded;
- (void)reinviteeAcceptedNotification:(id)notification;
- (void)reinviteeDeclinedNotification:(id)notification;
- (void)relayDidReceivePushData:(id)data completionHandler:(id)handler;
- (void)rematchWithCompletionHandler:(void *)completionHandler;
- (void)reportInviteSentWithApproach:(unint64_t)approach isHosted:(BOOL)hosted recipients:(id)recipients;
- (void)retryLimitHit;
- (void)sendConnectingStateCallbackToDelegate:(id)delegate forPlayers:(id)players;
- (void)sendInviteData:(id)data;
- (void)sendInviteData:(id)data withScope:(int64_t)scope;
- (void)sendMeasurementData:(id)data packetType:(unsigned __int8)type toPlayerID:(id)d;
- (void)sendPingTo:(id)to sequence:(int64_t)sequence;
- (void)sendPongTo:(id)to sequence:(int64_t)sequence;
- (void)sendQueuedPacketsForPlayer:(id)player;
- (void)sendQueuedStatesAndPackets;
- (void)sendStateCallbackForPlayer:(id)player state:(int64_t)state;
- (void)sendStateCallbackToDelegate:(id)delegate forPlayer:(id)player state:(int64_t)state;
- (void)sendVersionData:(unsigned __int8)data;
- (void)sendVersionData:(unsigned __int8)data toPlayer:(id)player;
- (void)setAutomatchPlayerCount:(int64_t)count;
- (void)setDelegate:(id)delegate;
- (void)setInitiallyStarted:(BOOL)started;
- (void)setInviteDelegate:(id)delegate;
- (void)setupWithTransport:(id)transport context:(id)context reporter:(id)reporter matchmaker:(id)matchmaker;
- (void)syncPlayers:(id)players forJoinType:(int)type toInvitees:(id)invitees;
- (void)transportDidFailWithError:(id)error;
- (void)transportDidReceivePacket:(id)packet fromPlayerID:(id)d remoteRecipientID:(id)iD;
- (void)transportDidUpdateWithInfo:(id)info;
- (void)updateEventQueueForInviter:(id)inviter;
- (void)updateJoinedPlayer:(id)player joinType:(int)type;
- (void)updateProperties:(id)properties playerID:(id)d;
- (void)updateRematchID;
- (void)updateStateForPlayer:(id)player state:(int64_t)state;
- (void)withEventQueueForPlayer:(id)player create:(id)create perform:(id)perform;
- (void)withEventQueueForPlayer:(id)player createIfNeeded:(BOOL)needed perform:(id)perform;
@end

@implementation GKMatch

- (id)description
{
  v25 = *MEMORY[0x277D85DE8];
  string = [MEMORY[0x277CCAB68] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p expected count: %u seqnum: %d\n", v5, self, -[GKMatch expectedPlayerCount](self, "expectedPlayerCount"), -[GKMatch packetSequenceNumber](self, "packetSequenceNumber")];

  obj = self->_playerEventQueues;
  objc_sync_enter(obj);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  allKeys = [(NSMutableDictionary *)self->_playerEventQueues allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v7)
  {
    v8 = *v21;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v21 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v20 + 1) + 8 * i);
        [string appendFormat:@"    %@:", v10];
        v11 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v10];
        v12 = v11;
        if (v11)
        {
          playerState = [v11 playerState];
          if (playerState >= 3)
          {
            goto LABEL_11;
          }

          v14 = off_2785DF318[playerState];
        }

        else
        {
          v14 = @"?no queue?";
        }

        [string appendString:v14];
LABEL_11:
      }

      v7 = [allKeys countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v7);
  }

  objc_sync_exit(obj);
  reinvitedPlayers = [(GKMatch *)self reinvitedPlayers];
  properties = [(GKMatch *)self properties];
  playerProperties = [(GKMatch *)self playerProperties];
  [string appendFormat:@"reinvitedPlayers:%@, properties:%@, playerProperties:%@>", reinvitedPlayers, properties, playerProperties];

  return string;
}

- (id)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)pendingInviteesOfLocalPlayer
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = self->_playerEventQueues;
  objc_sync_enter(v3);
  array = [MEMORY[0x277CBEB18] array];
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  allValues = [(NSMutableDictionary *)self->_playerEventQueues allValues];
  v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if ([v9 invitedByLocalPlayer] && objc_msgSend(v9, "playerState") != 1)
        {
          player = [v9 player];
          [array addObject:player];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  v11 = [array copy];
  objc_sync_exit(v3);

  return v11;
}

- (void)refreshPendingConnectionCheckIfNeeded
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) transportContext];
  v6 = [v5 daemonProxy];
  v7 = [WeakRetained transportContext];
  v8 = [v7 formAnInviteUpdate];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2;
  v10[3] = &unk_2785DE008;
  v11 = v3;
  v9 = v3;
  [v6 sendInvitationUpdate:v8 handler:v10];
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2_cold_1();
    }
  }

  (*(*(a1 + 32) + 16))();
}

BOOL __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_176(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained pendingInviteesOfLocalPlayer];
  v3 = [v2 count];

  if (!v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_176_cold_1();
    }
  }

  return v3 == 0;
}

- (void)setDelegate:(id)delegate
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = delegate;
  objc_storeWeak(&self->_delegate, v4);
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Set match delegate to: %@", &v7, 0xCu);
  }

  if (v4)
  {
    [(GKMatch *)self sendQueuedStatesAndPackets];
  }
}

- (NSArray)players
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allValues = [(NSMutableDictionary *)self->_playerEventQueues allValues];
  v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 playerState] == 1)
        {
          player = [v9 player];
          [array addObject:player];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);

  return array;
}

- (NSDictionary)properties
{
  propertiesByPlayerID = [(GKMatch *)self propertiesByPlayerID];
  v3 = +[GKLocalPlayer local];
  internal = [v3 internal];
  playerID = [internal playerID];
  v6 = [propertiesByPlayerID objectForKey:playerID];

  return v6;
}

- (NSDictionary)playerProperties
{
  v33 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  selfCopy = self;
  propertiesByPlayerID = [(GKMatch *)self propertiesByPlayerID];
  allObjects = [propertiesByPlayerID allObjects];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v23 = allObjects;
  allKeys = [allObjects allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v27;
    *&v7 = 138412290;
    v22 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = +[GKLocalPlayer local];
        internal = [v12 internal];
        playerID = [internal playerID];
        v15 = [v11 isEqualToString:playerID];

        if ((v15 & 1) == 0)
        {
          v16 = [(GKMatch *)selfCopy playerFromID:v11];
          if (v16)
          {
            v17 = [v23 objectForKeyedSubscript:v11];
            [dictionary setObject:v17 forKey:v16];
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v18 = GKOSLoggers();
            }

            v19 = os_log_GKMatch;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              *buf = v22;
              v31 = v11;
              _os_log_impl(&dword_227904000, v19, OS_LOG_TYPE_INFO, "Ignoring properties for unknown playerID: %@", buf, 0xCu);
            }
          }
        }
      }

      v8 = [allKeys countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v8);
  }

  if ([dictionary count])
  {
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:dictionary];
  }

  else
  {
    v20 = 0;
  }

  return v20;
}

- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)players dataMode:(GKMatchSendDataMode)mode error:(NSError *)error
{
  v10 = data;
  v11 = players;
  v12 = v10;
  if ([(GKMatch *)self version])
  {
    if (mode == GKMatchSendDataUnreliable)
    {
      v13 = 64;
    }

    else
    {
      v13 = (mode == GKMatchSendDataReliable) << 7;
    }

    v12 = [(GKMatch *)self packet:v13 data:v10];
  }

  transport = [(GKMatch *)self transport];
  transportContext = [(GKMatch *)self transportContext];
  v16 = [transport sendScopedData:v12 toPlayers:v11 dataMode:mode dataScope:0 transportContext:transportContext error:error];

  if (error && *error)
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sendData:toPlayers:dataMode:error:];
    }
  }

  return v16;
}

- (BOOL)sendDataToAllPlayers:(NSData *)data withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error
{
  v8 = data;
  transportContext = [(GKMatch *)self transportContext];
  shouldFilterGuestWhenSendingToAll = [transportContext shouldFilterGuestWhenSendingToAll];

  if (shouldFilterGuestWhenSendingToAll)
  {
    players = [(GKMatch *)self players];
    _gkNonGuestPlayersFromPlayers = [(NSData *)players _gkNonGuestPlayersFromPlayers];
    v13 = [(GKMatch *)self sendData:v8 toPlayers:_gkNonGuestPlayersFromPlayers dataMode:mode error:error];
  }

  else
  {
    players = v8;
    if ([(GKMatch *)self version])
    {
      if (mode == GKMatchSendDataUnreliable)
      {
        v14 = 64;
      }

      else
      {
        v14 = (mode == GKMatchSendDataReliable) << 7;
      }

      v15 = [(GKMatch *)self packet:v14 data:players];

      players = v15;
    }

    transport = [(GKMatch *)self transport];
    transportContext2 = [(GKMatch *)self transportContext];
    v13 = [transport sendScopedDataToAll:players dataMode:mode dataScope:0 transportContext:transportContext2 error:error];

    if (error && *error)
    {
      if (!os_log_GKGeneral)
      {
        v18 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendDataToAllPlayers:withDataMode:error:];
      }
    }
  }

  return v13;
}

- (GKVoiceChat)voiceChatWithName:(NSString *)name
{
  v4 = name;
  transport = +[GKPreferences shared];
  if (![transport shouldAllowCustomCommunication])
  {
    v10 = 0;
    goto LABEL_5;
  }

  v6 = +[GKPreferences shared];
  multiplayerAllowedPlayerType = [v6 multiplayerAllowedPlayerType];

  if (multiplayerAllowedPlayerType)
  {
    transport = [(GKMatch *)self transport];
    players = [(GKMatch *)self players];
    transportContext = [(GKMatch *)self transportContext];
    v10 = [transport voiceChatWithName:v4 players:players transportContext:transportContext];

LABEL_5:
    goto LABEL_6;
  }

  v10 = 0;
LABEL_6:

  return v10;
}

- (void)chooseBestHostingPlayerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  transport = [(GKMatch *)self transport];
  transportContext = [(GKMatch *)self transportContext];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke;
  v8[3] = &unk_2785DEE28;
  v8[4] = self;
  v9 = v4;
  v7 = v4;
  [transport chooseBestHostingPlayerWithTransportContext:transportContext completionHandler:v8];
}

void __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = [*(a1 + 32) playerFromID:a2 includingLocal:1];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    (*(*(a1 + 40) + 16))();
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke_cold_1();
    }
  }
}

- (void)rematchWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  matchmaker = [(GKMatch *)self matchmaker];
  [matchmaker findRematchForMatch:self completionHandler:v4];
}

- (void)disconnect
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v6 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatch: disconnect", v6, 2u);
  }

  [(GKMatch *)self clearSessionWithReason:2];
  matchmaker = [(GKMatch *)self matchmaker];
  [matchmaker leaveGroupActivity];
}

- (void)promptRadarAndRequestRemoteLogsWithDescriptionAddition:(id)addition
{
  v43 = *MEMORY[0x277D85DE8];
  additionCopy = addition;
  v3 = +[GKPreferences shared];
  isInternalBuild = [v3 isInternalBuild];

  if (isInternalBuild)
  {
    if ([(GKMatch *)self canPromptTapToRadar])
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      v6 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v42 = additionCopy;
        _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Starting prompting TTR then requesting remote logs with description: %@", buf, 0xCu);
      }

      array = [MEMORY[0x277CBEB18] array];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      transportContext = [(GKMatch *)self transportContext];
      playersAndPushTokens = [transportContext playersAndPushTokens];

      v9 = [playersAndPushTokens countByEnumeratingWithState:&v34 objects:v40 count:16];
      if (v9)
      {
        v10 = *v35;
        do
        {
          for (i = 0; i != v9; ++i)
          {
            if (*v35 != v10)
            {
              objc_enumerationMutation(playersAndPushTokens);
            }

            v12 = *(*(&v34 + 1) + 8 * i);
            playerID = [v12 playerID];
            pushToken = [v12 pushToken];
            v15 = pushToken;
            if (playerID)
            {
              v16 = pushToken == 0;
            }

            else
            {
              v16 = 1;
            }

            if (!v16)
            {
              v38[0] = @"playerID";
              v38[1] = @"pushToken";
              v39[0] = playerID;
              v39[1] = pushToken;
              v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
              [array addObject:v17];
            }
          }

          v9 = [playersAndPushTokens countByEnumeratingWithState:&v34 objects:v40 count:16];
        }

        while (v9);
      }

      v18 = MEMORY[0x277CCAAB0];
      v19 = [array copy];
      v33 = 0;
      v20 = [v18 archivedDataWithRootObject:v19 requiringSecureCoding:1 error:&v33];
      v21 = v33;

      if (v21)
      {
        if (!os_log_GKGeneral)
        {
          v22 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
        {
          [GKMatch promptRadarAndRequestRemoteLogsWithDescriptionAddition:];
        }
      }

      else
      {
        v25 = [v20 base64EncodedStringWithOptions:0];
        objc_initWeak(buf, self);
        transportContext2 = [(GKMatch *)self transportContext];
        daemonProxy = [transportContext2 daemonProxy];
        v31[0] = MEMORY[0x277D85DD0];
        v31[1] = 3221225472;
        v31[2] = __66__GKMatch_promptRadarAndRequestRemoteLogsWithDescriptionAddition___block_invoke;
        v31[3] = &unk_2785DEE50;
        objc_copyWeak(&v32, buf);
        [daemonProxy fileMultiplayerTTRWithCallBackIdentifier:v25 descriptionAddition:additionCopy handler:v31];

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
      }
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v23 = GKOSLoggers();
      }

      v24 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "Already prompted tap to radar. Skip.", buf, 2u);
      }
    }
  }
}

void __66__GKMatch_promptRadarAndRequestRemoteLogsWithDescriptionAddition___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCanPromptTapToRadar:0];
}

- (NSArray)playerIDs
{
  v18[1] = *MEMORY[0x277D85DE8];
  if (GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
    {
      [GKMatch playerIDs];
    }

    v18[0] = @"playerID is no longer available";
    array = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:1];
  }

  else
  {
    array = [MEMORY[0x277CBEB18] array];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    players = [(GKMatch *)self players];
    v6 = [players countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(players);
          }

          internal = [*(*(&v13 + 1) + 8 * i) internal];
          playerID = [internal playerID];
          [array addObject:playerID];
        }

        v7 = [players countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }
  }

  return array;
}

- (void)chooseBestHostPlayerWithCompletionHandler:(void *)completionHandler
{
  v4 = completionHandler;
  if (v4)
  {
    if (GKApplicationLinkedOnOrAfter(917504, 659456))
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKMatch chooseBestHostPlayerWithCompletionHandler:];
      }

      v4[2](v4, @"playerID is no longer available");
    }

    else
    {
      v6[0] = MEMORY[0x277D85DD0];
      v6[1] = 3221225472;
      v6[2] = __53__GKMatch_chooseBestHostPlayerWithCompletionHandler___block_invoke;
      v6[3] = &unk_2785DEE78;
      v7 = v4;
      [(GKMatch *)self chooseBestHostingPlayerWithCompletionHandler:v6];
    }
  }
}

void __53__GKMatch_chooseBestHostPlayerWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 internal];
  v3 = [v4 playerID];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)sendData:(NSData *)data toPlayers:(NSArray *)playerIDs withDataMode:(GKMatchSendDataMode)mode error:(NSError *)error
{
  v10 = data;
  v11 = playerIDs;
  if (!GKApplicationLinkedOnOrAfter(917504, 659456))
  {
    players = [(GKMatch *)self players];
    v16 = [players _gkMapDictionaryWithKeyPath:@"playerID"];

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __49__GKMatch_sendData_toPlayers_withDataMode_error___block_invoke;
    v19[3] = &unk_2785DEEA0;
    v20 = v16;
    v13 = v16;
    v17 = [(NSArray *)v11 _gkFilterWithBlock:v19];
    v14 = [(GKMatch *)self sendData:v10 toPlayers:v17 dataMode:mode error:error];

    goto LABEL_8;
  }

  if (!os_log_GKGeneral)
  {
    v12 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
  {
    [GKMatch sendData:toPlayers:withDataMode:error:];
    if (error)
    {
      goto LABEL_6;
    }

LABEL_11:
    v14 = 0;
    goto LABEL_9;
  }

  if (!error)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [MEMORY[0x277CCA9B8] userErrorForCode:34 underlyingError:0];
  v14 = 0;
  *error = v13;
LABEL_8:

LABEL_9:
  return v14;
}

- (GKMatch)initWithMatchmaker:(id)matchmaker
{
  matchmakerCopy = matchmaker;
  v19.receiver = self;
  v19.super_class = GKMatch;
  v5 = [(GKMatch *)&v19 init];
  if (v5)
  {
    v6 = [GKTransportContext alloc];
    v7 = +[GKGame currentGame];
    internal = [v7 internal];
    supportedTransports = [internal supportedTransports];
    v10 = [(GKTransportContext *)v6 initWithSupportedTransports:supportedTransports];

    v11 = [GKMultiplayerActivityReporter alloc];
    v12 = +[GKLocalPlayer local];
    internal2 = [v12 internal];
    playerID = [internal2 playerID];
    v15 = +[GKAPIReporter reporter];
    v16 = [(GKMultiplayerActivityReporter *)v11 initWithLocalPlayerID:playerID matchDataDelegate:v5 apiReporter:v15];

    v17 = [[GKCompositeTransport alloc] initWithClientDelegate:v5 matchDataDelegate:v5 reporter:v16 transportContext:v10];
    [(GKMatch *)v5 setupWithTransport:v17 context:v10 reporter:v16 matchmaker:matchmakerCopy];
  }

  return v5;
}

- (GKMatch)initWithTransport:(id)transport context:(id)context reporter:(id)reporter matchmaker:(id)matchmaker
{
  transportCopy = transport;
  contextCopy = context;
  reporterCopy = reporter;
  matchmakerCopy = matchmaker;
  v17.receiver = self;
  v17.super_class = GKMatch;
  v14 = [(GKMatch *)&v17 init];
  v15 = v14;
  if (v14)
  {
    [(GKMatch *)v14 setupWithTransport:transportCopy context:contextCopy reporter:reporterCopy matchmaker:matchmakerCopy];
  }

  return v15;
}

- (void)setupWithTransport:(id)transport context:(id)context reporter:(id)reporter matchmaker:(id)matchmaker
{
  transportCopy = transport;
  contextCopy = context;
  reporterCopy = reporter;
  v13 = MEMORY[0x277CBEB58];
  matchmakerCopy = matchmaker;
  v15 = [v13 set];
  connectedPlayerIDs = self->_connectedPlayerIDs;
  self->_connectedPlayerIDs = v15;

  *&self->_fastStartStateActive = 0;
  self->_canPromptTapToRadar = 1;
  multiplayerActivityReporter = self->_multiplayerActivityReporter;
  self->_multiplayerActivityReporter = reporterCopy;
  v18 = reporterCopy;

  objc_storeWeak(&self->_matchmaker, matchmakerCopy);
  array = [MEMORY[0x277CBEB18] array];
  opponentIDs = self->_opponentIDs;
  self->_opponentIDs = array;

  v21 = [_TtC20GameCenterFoundation22ExponentialBackoffTask alloc];
  matchmaker = [(GKMatch *)self matchmaker];
  invitationQueue = [matchmaker invitationQueue];
  v24 = [(ExponentialBackoffTask *)v21 initWithName:@"GKMatch.pendingConnectionChecker" queue:invitationQueue initialDelay:10 maxDelay:1.0 maxRetryCount:4.0];
  pendingConnectionChecker = self->_pendingConnectionChecker;
  self->_pendingConnectionChecker = v24;

  [(ExponentialBackoffTask *)self->_pendingConnectionChecker setDelegate:self];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  playerEventQueues = self->_playerEventQueues;
  self->_playerEventQueues = dictionary;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  playerPushTokens = self->_playerPushTokens;
  self->_playerPushTokens = dictionary2;

  v30 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.match.playersbyidentifier"];
  playersByIdentifier = self->_playersByIdentifier;
  self->_playersByIdentifier = v30;

  v32 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.match.playersByJoinType"];
  playersByJoinType = self->_playersByJoinType;
  self->_playersByJoinType = v32;

  v34 = [[GKThreadsafeDictionary alloc] initWithName:@"com.apple.gamecenter.match.propertiesByPlayerID"];
  propertiesByPlayerID = self->_propertiesByPlayerID;
  self->_propertiesByPlayerID = v34;

  v36 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
  reinvitedPlayers = self->_reinvitedPlayers;
  self->_reinvitedPlayers = v36;

  v38 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v39 = dispatch_queue_create("com.apple.gamecenter.match.statechangequeue", v38);
  stateChangeQueue = self->_stateChangeQueue;
  self->_stateChangeQueue = v39;

  transport = self->_transport;
  self->_transport = transportCopy;
  v42 = transportCopy;

  transportContext = self->_transportContext;
  self->_transportContext = contextCopy;
  v44 = contextCopy;

  self->_version = 1;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v45 = GKPlayerAuthenticationDidChangeNotificationName;
  v46 = +[GKLocalPlayer localPlayer];
  [defaultCenter addObserver:self selector:sel_localPlayerDidChange_ name:v45 object:v46];

  v47 = +[GKApplicationNotificationNames willTerminate];
  [defaultCenter addObserver:self selector:sel_applicationWillTerminateNotification_ name:v47 object:0];

  v48 = +[GKApplicationNotificationNames didEnterBackground];
  [defaultCenter addObserver:self selector:sel_applicationDidEnterBackground_ name:v48 object:0];

  v49 = +[GKApplicationNotificationNames willEnterForeground];
  [defaultCenter addObserver:self selector:sel_applicationWillEnterForeground_ name:v49 object:0];

  v50 = [[GKTransportMonitor alloc] initWithMaxIteration:200 pingInterval:5000 pingTimeout:5000 reportFrequency:20];
  healthMonitor = self->_healthMonitor;
  self->_healthMonitor = v50;

  [(GKTransportMonitor *)self->_healthMonitor setClientDelegate:self];
}

- (void)applicationWillTerminateNotification:(id)notification
{
  notificationCopy = notification;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "need to clear session after receiving applicationWillTerminateNotification", v8, 2u);
  }

  [(GKMatch *)self cleanupForTerminationWithReason:0];
  matchmaker = [(GKMatch *)self matchmaker];
  [matchmaker leaveGroupActivity];
}

- (void)applicationDidEnterBackground:(id)background
{
  v3 = +[GKMatchBackgroundAssertionManager shared];
  [v3 acquire];
}

- (void)applicationWillEnterForeground:(id)foreground
{
  v4 = +[GKMatchBackgroundAssertionManager shared];
  [v4 invalidate];

  [(GKMatch *)self setRecentlyBecameActive:1];
  v5 = dispatch_time(0, 3000000000);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__GKMatch_applicationWillEnterForeground___block_invoke;
  block[3] = &unk_2785DD760;
  block[4] = self;
  dispatch_after(v5, MEMORY[0x277D85CD0], block);
}

- (void)cleanupForTerminationWithReason:(int64_t)reason
{
  v5 = +[GKMatchBackgroundAssertionManager shared];
  [v5 invalidate];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self];

  [(GKMatch *)self clearSessionWithReason:reason];
}

- (void)clearSessionWithReason:(int64_t)reason
{
  v28 = *MEMORY[0x277D85DE8];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCACC8];
    v8 = v6;
    callStackSymbols = [v7 callStackSymbols];
    v24 = 134218242;
    reasonCopy = reason;
    v26 = 2112;
    v27 = callStackSymbols;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "match clearSession reason: %ld. call stack: %@", &v24, 0x16u);
  }

  if ([(GKMatch *)self initiallyStarted])
  {
    multiplayerActivityReporter = [(GKMatch *)self multiplayerActivityReporter];
    transportContext = [(GKMatch *)self transportContext];
    [multiplayerActivityReporter onGameplayEndedWithReason:reason error:0 transportContext:transportContext];
  }

  transport = [(GKMatch *)self transport];
  transportContext2 = [(GKMatch *)self transportContext];
  [transport disconnectAllWithTransportContext:transportContext2 completionHandler:&__block_literal_global_24];

  if (reason != 1)
  {
    [(GKMatch *)self cancelPendingConnectionCheckWithReason:@"clearSession"];
  }

  transportContext3 = [(GKMatch *)self transportContext];
  daemonProxy = [transportContext3 daemonProxy];
  [daemonProxy removeInviteSession];

  v16 = +[GKReporter reporter];
  [v16 reportCurrentRealtimeMatchPersistenceDuration];

  transportContext4 = [(GKMatch *)self transportContext];
  daemonProxy2 = [transportContext4 daemonProxy];
  [daemonProxy2 completeMatchRecording:@"failure" matchType:0];

  transportContext5 = [(GKMatch *)self transportContext];
  daemonProxy3 = [transportContext5 daemonProxy];
  [daemonProxy3 completeGameRecording];

  healthMonitor = [(GKMatch *)self healthMonitor];

  if (healthMonitor)
  {
    healthMonitor2 = [(GKMatch *)self healthMonitor];
    [healthMonitor2 stopMonitoringAll];

    [(GKMatch *)self setHealthMonitor:0];
  }

  transport = self->_transport;
  self->_transport = 0;
}

void __34__GKMatch_clearSessionWithReason___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __34__GKMatch_clearSessionWithReason___block_invoke_cold_1();
    }
  }
}

- (void)dealloc
{
  [(GKMatch *)self cleanupForTerminationWithReason:1];
  v3.receiver = self;
  v3.super_class = GKMatch;
  [(GKMatch *)&v3 dealloc];
}

- (void)setInitiallyStarted:(BOOL)started
{
  if (started && !self->_initiallyStarted)
  {
    multiplayerActivityReporter = [(GKMatch *)self multiplayerActivityReporter];
    transportContext = [(GKMatch *)self transportContext];
    [multiplayerActivityReporter onGameplayStartedWithTransportContext:transportContext];
  }

  self->_initiallyStarted = started;
}

- (void)setInviteDelegate:(id)delegate
{
  v9 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  objc_storeWeak(&self->_inviteDelegateWeak, delegateCopy);
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = delegateCopy;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Set match inviteDelegate to: %@", &v7, 0xCu);
  }

  if (delegateCopy)
  {
    [(GKMatch *)self sendQueuedStatesAndPackets];
  }
}

- (void)_delegate:(id)_delegate didReceiveData:(id)data forRecipient:(id)recipient fromPlayer:(id)player
{
  _delegateCopy = _delegate;
  dataCopy = data;
  recipientCopy = recipient;
  playerCopy = player;
  connectedPlayerIDs = self->_connectedPlayerIDs;
  internal = [playerCopy internal];
  playerID = [internal playerID];
  LOBYTE(connectedPlayerIDs) = [(NSMutableSet *)connectedPlayerIDs containsObject:playerID];

  if (connectedPlayerIDs)
  {
    if (objc_opt_respondsToSelector())
    {
      [_delegateCopy match:self didReceiveData:dataCopy forRecipient:recipientCopy fromRemotePlayer:playerCopy];
    }

    else if (objc_opt_respondsToSelector())
    {
      [_delegateCopy match:self didReceiveData:dataCopy fromRemotePlayer:playerCopy];
    }

    else if (objc_opt_respondsToSelector())
    {
      if (GKApplicationLinkedOnOrAfter(917504, 659456))
      {
        if (!os_log_GKGeneral)
        {
          v19 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch _delegate:didReceiveData:forRecipient:fromPlayer:];
        }
      }

      else
      {
        internal2 = [playerCopy internal];
        playerID2 = [internal2 playerID];
        [_delegateCopy match:self didReceiveData:dataCopy fromPlayer:playerID2];
      }
    }

    else
    {
      delegate = [(GKMatch *)self delegate];
      if (delegate)
      {
        v21 = delegate;
        delegate2 = [(GKMatch *)self delegate];
        v23 = [_delegateCopy isEqual:delegate2];

        if (v23)
        {
          if (!os_log_GKGeneral)
          {
            v24 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
          {
            [GKMatch _delegate:didReceiveData:forRecipient:fromPlayer:];
          }
        }
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    v18 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch _delegate:v18 didReceiveData:? forRecipient:? fromPlayer:?];
    }
  }
}

- (void)addPlayers:(id)players
{
  v13 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v12 = playersCopy;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Adding players: %@", buf, 0xCu);
  }

  playersByIdentifier = [(GKMatch *)self playersByIdentifier];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __22__GKMatch_addPlayers___block_invoke;
  v9[3] = &unk_2785DEEF0;
  v10 = playersCopy;
  v8 = playersCopy;
  [playersByIdentifier writeToDictionary:v9];
}

void __22__GKMatch_addPlayers___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __22__GKMatch_addPlayers___block_invoke_2;
  v6[3] = &unk_2785DEEC8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateObjectsUsingBlock:v6];
}

void __22__GKMatch_addPlayers___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 internal];
  v4 = [v5 playerID];
  [v2 setObject:v3 forKey:v4];
}

- (unint64_t)currentPlayerCount
{
  players = [(GKMatch *)self players];
  v3 = [players count];

  return v3;
}

- (unint64_t)currentPlayerCountIncludingLocalPlayer
{
  players = [(GKMatch *)self players];
  v4 = +[GKLocalPlayer localPlayer];
  v5 = [players containsObject:v4] ^ 1;

  players2 = [(GKMatch *)self players];
  v7 = [players2 count];

  return v7 + v5;
}

- (id)allIDs
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  allKeys = [(NSMutableDictionary *)self->_playerEventQueues allKeys];
  v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(allKeys);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        v10 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v9];
        if (v10)
        {
          [array addObject:v9];
        }
      }

      v6 = [allKeys countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);

  return array;
}

- (NSArray)guestPlayers
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allValues = [(NSMutableDictionary *)self->_playerEventQueues allValues];
  v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        if ([v9 playerState] == 1)
        {
          hostPlayer = [v9 hostPlayer];
          v11 = hostPlayer == 0;

          if (!v11)
          {
            player = [v9 player];
            [array addObject:player];
          }
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);

  return array;
}

- (id)playerFromID:(id)d includingLocal:(BOOL)local
{
  localCopy = local;
  dCopy = d;
  if (localCopy)
  {
    v7 = +[GKLocalPlayer local];
    internal = [v7 internal];
    playerID = [internal playerID];
    if ([playerID isEqualToString:dCopy])
    {
      +[GKLocalPlayer local];
    }

    else
    {
      [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:dCopy];
    }
    v10 = ;
  }

  else
  {
    v10 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:dCopy];
  }

  return v10;
}

- (void)updateProperties:(id)properties playerID:(id)d
{
  propertiesCopy = properties;
  dCopy = d;
  propertiesByPlayerID = [(GKMatch *)self propertiesByPlayerID];
  v8 = propertiesByPlayerID;
  if (propertiesCopy)
  {
    [propertiesByPlayerID setObject:propertiesCopy forKey:dCopy];
  }

  else
  {
    [propertiesByPlayerID removeObjectForKey:dCopy];
  }
}

- (void)withEventQueueForPlayer:(id)player createIfNeeded:(BOOL)needed perform:(id)perform
{
  if (needed)
  {
    v5 = &__block_literal_global_258;
  }

  else
  {
    v5 = 0;
  }

  [(GKMatch *)self withEventQueueForPlayer:player create:v5 perform:perform];
}

- (void)withEventQueueForPlayer:(id)player create:(id)create perform:(id)perform
{
  playerCopy = player;
  createCopy = create;
  performCopy = perform;
  if (!playerCopy)
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = GKStackTraceWithFrameLimit(10);
    v13 = [v11 stringWithFormat:@"nil player for queue request at:%@", v12];
    v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/API/GKMatch.m"];
    lastPathComponent = [v14 lastPathComponent];
    v16 = [v11 stringWithFormat:@"%@ (player != nil)\n[%s (%s:%d)]", v13, "-[GKMatch withEventQueueForPlayer:create:perform:]", objc_msgSend(lastPathComponent, "UTF8String"), 884];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v16}];
  }

  internal = [playerCopy internal];
  playerID = [internal playerID];

  v19 = self->_playerEventQueues;
  objc_sync_enter(v19);
  v20 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:playerID];
  v21 = v20;
  if (createCopy && !v20)
  {
    v21 = objc_alloc_init(GKMatchEventQueue);
    [(GKMatchEventQueue *)v21 setPlayer:playerCopy];
    createCopy[2](createCopy, v21);
    [(NSMutableDictionary *)self->_playerEventQueues setObject:v21 forKey:playerID];
    [(NSMutableSet *)self->_connectedPlayerIDs addObject:playerID];
    if (!os_log_GKGeneral)
    {
      v22 = GKOSLoggers();
    }

    v23 = os_log_GKMatch;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      [playerCopy internal];
      [objc_claimAutoreleasedReturnValue() debugDescription];
      objc_claimAutoreleasedReturnValue();
      [GKMatch withEventQueueForPlayer:create:perform:];
    }
  }

  if (!v21)
  {
    if (!os_log_GKGeneral)
    {
      v24 = GKOSLoggers();
    }

    v25 = os_log_GKMatch;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [playerCopy internal];
      [objc_claimAutoreleasedReturnValue() debugDescription];
      objc_claimAutoreleasedReturnValue();
      [GKMatch withEventQueueForPlayer:create:perform:];
    }
  }

  if (performCopy)
  {
    performCopy[2](performCopy, v21);
  }

  objc_sync_exit(v19);
}

- (void)preLoadInviter:(id)inviter sessionToken:(id)token
{
  v22 = *MEMORY[0x277D85DE8];
  inviterCopy = inviter;
  tokenCopy = token;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    internal = [inviterCopy internal];
    v12 = [internal debugDescription];
    *buf = 138412546;
    v19 = v12;
    v20 = 2112;
    v21 = tokenCopy;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "preLoadInviter - inviting player: %@ sessionToken:%@", buf, 0x16u);
  }

  v17 = inviterCopy;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:&v17 count:1];
  [(GKMatch *)self addPlayers:v13];

  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __39__GKMatch_preLoadInviter_sessionToken___block_invoke;
  v15[3] = &unk_2785DEF38;
  v16 = tokenCopy;
  v14 = tokenCopy;
  [(GKMatch *)self withEventQueueForPlayer:inviterCopy create:v15 perform:0];
}

void __39__GKMatch_preLoadInviter_sessionToken___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBEB38];
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v2 dictionaryWithObject:v3 forKey:@"session-token"];
  [v4 setConnectionInfo:v5];
}

- (void)updateRematchID
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

uint64_t __26__GKMatch_updateRematchID__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 internal];
  v6 = [v5 playerID];
  v7 = [v4 internal];

  v8 = [v7 playerID];
  v9 = [v6 caseInsensitiveCompare:v8];

  return v9;
}

- (void)updateJoinedPlayer:(id)player joinType:(int)type
{
  v4 = *&type;
  v33 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  playerCopy = player;
  playersByJoinType = [(GKMatch *)self playersByJoinType];
  v8 = [playersByJoinType objectForKeyedSubscript:playerCopy];

  if (!v4 && v8 || (+[GKLocalPlayer local](GKLocalPlayer, "local"), v9 = objc_claimAutoreleasedReturnValue(), [v9 internal], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "playerID"), v11 = objc_claimAutoreleasedReturnValue(), v12 = objc_msgSend(playerCopy, "isEqualToString:", v11), v11, v10, v9, (v12 & 1) != 0))
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v15 = MEMORY[0x277CCABB0];
      v16 = v14;
      v17 = [v15 numberWithUnsignedInt:v4];
      playersByJoinType2 = [(GKMatch *)selfCopy playersByJoinType];
      *buf = 134218754;
      v26 = &selfCopy;
      v27 = 2112;
      v28 = playerCopy;
      v29 = 2112;
      v30 = v17;
      v31 = 2112;
      v32 = playersByJoinType2;
      _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "GKMatch: %p should not update joined player: %@, for joinType: %@, self.playersByJoinType: %@", buf, 0x2Au);

LABEL_12:
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCABB0] numberWithInt:v4];
    playersByJoinType3 = [(GKMatch *)self playersByJoinType];
    [playersByJoinType3 setObject:v19 forKeyedSubscript:playerCopy];

    [(GKMatch *)self addPlayerToGroup:playerCopy];
    if (!os_log_GKGeneral)
    {
      v21 = GKOSLoggers();
    }

    v22 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v23 = MEMORY[0x277CCABB0];
      v16 = v22;
      v17 = [v23 numberWithUnsignedInt:v4];
      *buf = 134218498;
      v26 = &selfCopy;
      v27 = 2112;
      v28 = playerCopy;
      v29 = 2112;
      v30 = v17;
      _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "GKMatch: %p should update joined player: %@, for joinType: %@", buf, 0x20u);
      goto LABEL_12;
    }
  }
}

- (void)localPlayerDidChange:(id)change
{
  v18 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v16 = 138412290;
    v17 = changeCopy;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Local player changed with notification: %@", &v16, 0xCu);
  }

  userInfo = [changeCopy userInfo];
  v8 = [userInfo objectForKey:@"GKPlayerDidAuthenticateOldPlayerID"];

  v9 = +[GKLocalPlayer localPlayer];
  if ([v9 isAuthenticated])
  {
    v10 = +[GKLocalPlayer localPlayer];
    internal = [v10 internal];
    playerID = [internal playerID];
    v13 = [playerID isEqualToString:v8];

    if (v13)
    {
      goto LABEL_14;
    }
  }

  else
  {
  }

  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LOWORD(v16) = 0;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "Local player is no longer authenticated or local player changed. Will disconnect.", &v16, 2u);
  }

  [(GKMatch *)self disconnect];
LABEL_14:
}

- (void)putMultiplayerGroup
{
  v42 = *MEMORY[0x277D85DE8];
  groupIdentifier = [(GKMatch *)self groupIdentifier];

  if (!groupIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    [(GKMatch *)self setGroupIdentifier:uUIDString];
  }

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    groupIdentifier2 = [(GKMatch *)self groupIdentifier];
    *buf = 138412290;
    v41 = groupIdentifier2;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Creating group for game: %@", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    playersByJoinType = [(GKMatch *)self playersByJoinType];
    *buf = 138412290;
    v41 = playersByJoinType;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "playersByJoinType - %@", buf, 0xCu);
  }

  connectedPlayers = [(GKMatch *)self connectedPlayers];
  v15 = objc_opt_new();
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = connectedPlayers;
  v17 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v36;
    do
    {
      v20 = 0;
      do
      {
        if (*v36 != v19)
        {
          objc_enumerationMutation(v16);
        }

        internal = [*(*(&v35 + 1) + 8 * v20) internal];
        playerID = [internal playerID];

        if (playerID)
        {
          playersByJoinType2 = [(GKMatch *)self playersByJoinType];
          v24 = [playersByJoinType2 objectForKeyedSubscript:playerID];

          if (v24 && [v24 integerValue] != 4 && objc_msgSend(v24, "integerValue"))
          {
            [v15 addObject:playerID];
          }
        }

        ++v20;
      }

      while (v18 != v20);
      v18 = [v16 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v18);
  }

  if ([v15 count])
  {
    transportContext = [(GKMatch *)self transportContext];
    daemonProxy = [transportContext daemonProxy];
    groupIdentifier3 = [(GKMatch *)self groupIdentifier];
    v27 = [MEMORY[0x277CBEAA8] now];
    [v27 timeIntervalSince1970];
    v29 = (v28 * 1000.0);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
    matchmaker = [(GKMatch *)self matchmaker];
    autoMatchedPlayers = [matchmaker autoMatchedPlayers];
    [daemonProxy putMultiPlayerGroup:groupIdentifier3 participants:v15 playedAt:v29 bundleID:bundleIdentifier numberOfAutomatched:objc_msgSend(autoMatchedPlayers isSharedLink:"count") completionHandler:{0, &__block_literal_global_286}];
  }
}

void __30__GKMatch_putMultiplayerGroup__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (v2)
  {
    if (!os_log_GKGeneral)
    {
      v3 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __30__GKMatch_putMultiplayerGroup__block_invoke_cold_1();
    }
  }
}

- (void)addPlayerToGroup:(id)group
{
  v16 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  if (groupCopy)
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = groupCopy;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Attempting to update a group with playerID: %@", buf, 0xCu);
    }

    playersByJoinType = [(GKMatch *)self playersByJoinType];
    v8 = [playersByJoinType objectForKeyedSubscript:groupCopy];

    if (v8 && [v8 integerValue] != 4 && objc_msgSend(v8, "integerValue"))
    {
      objc_initWeak(buf, self);
      transportContext = [(GKMatch *)self transportContext];
      daemonProxy = [transportContext daemonProxy];
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __28__GKMatch_addPlayerToGroup___block_invoke;
      v11[3] = &unk_2785DEF88;
      objc_copyWeak(&v13, buf);
      v12 = groupCopy;
      [daemonProxy getMultiPlayerGroups:v11];

      objc_destroyWeak(&v13);
      objc_destroyWeak(buf);
    }
  }
}

void __28__GKMatch_addPlayerToGroup___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v38 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v37 + 1) + 8 * v9);
      v11 = [v10 groupID];
      v12 = [WeakRetained groupIdentifier];
      v13 = [v11 isEqualToString:v12];

      if (v13)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v37 objects:v43 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v14 = v10;

    if (!v14)
    {
      goto LABEL_16;
    }

    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    v16 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v17 = v16;
      v18 = [v14 groupID];
      *buf = 138412290;
      v42 = v18;
      _os_log_impl(&dword_227904000, v17, OS_LOG_TYPE_INFO, "Group already exists for game, updating: %@", buf, 0xCu);
    }

    v33 = [v14 participants];
    v19 = [MEMORY[0x277CBEB98] setWithArray:v33];
    v20 = [v19 mutableCopy];

    v32 = v20;
    [v20 addObject:*(a1 + 32)];
    v31 = [WeakRetained transportContext];
    v30 = [v31 daemonProxy];
    v21 = [v14 groupID];
    v22 = [v20 allObjects];
    v23 = [MEMORY[0x277CCA8D8] mainBundle];
    v24 = [v23 bundleIdentifier];
    v25 = [v14 numberOfAutomached];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __28__GKMatch_addPlayerToGroup___block_invoke_288;
    v34[3] = &unk_2785DEF60;
    v35 = v14;
    v36 = *(a1 + 32);
    v26 = v14;
    [v30 putMultiPlayerGroup:v21 participants:v22 playedAt:0 bundleID:v24 numberOfAutomatched:v25 isSharedLink:0 completionHandler:v34];
  }

  else
  {
LABEL_9:

LABEL_16:
    if (!os_log_GKGeneral)
    {
      v27 = GKOSLoggers();
    }

    v28 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v29 = *(a1 + 32);
      *buf = 138412290;
      v42 = v29;
      _os_log_impl(&dword_227904000, v28, OS_LOG_TYPE_INFO, "Group does not exist yet, waiting for it to be created when game starts, not adding %@ yet", buf, 0xCu);
    }
  }
}

void __28__GKMatch_addPlayerToGroup___block_invoke_288(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    v5 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __28__GKMatch_addPlayerToGroup___block_invoke_288_cold_1(a1, v5);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    v7 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v8 = *(a1 + 32);
      v9 = v7;
      v10 = [v8 groupID];
      v11 = *(a1 + 40);
      v12 = 138412546;
      v13 = v10;
      v14 = 2112;
      v15 = v11;
      _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Group %@ updated adding player: %@", &v12, 0x16u);
    }
  }
}

- (id)getConnectionContextForPlayerID:(id)d
{
  dCopy = d;
  v5 = [(GKMatch *)self playerFromID:dCopy];
  if (v5)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x3032000000;
    v14 = __Block_byref_object_copy__6;
    v15 = __Block_byref_object_dispose__6;
    v16 = 0;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__GKMatch_getConnectionContextForPlayerID___block_invoke;
    v8[3] = &unk_2785DEFB0;
    v10 = &v11;
    v9 = dCopy;
    [(GKMatch *)self withEventQueueForPlayer:v5 perform:v8];
    v6 = v12[5];

    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __43__GKMatch_getConnectionContextForPlayerID___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a2;
  if (v4)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "player event queue does not exist for %@", &v8, 0xCu);
    }
  }
}

- (id)updateConnectionInfo:(id)info forPlayerID:(id)d
{
  infoCopy = info;
  dCopy = d;
  v8 = [(GKMatch *)self playerFromID:dCopy];
  if (v8)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x3032000000;
    v18 = __Block_byref_object_copy__6;
    v19 = __Block_byref_object_dispose__6;
    v20 = 0;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __44__GKMatch_updateConnectionInfo_forPlayerID___block_invoke;
    v11[3] = &unk_2785DEFD8;
    v12 = infoCopy;
    v14 = &v15;
    v13 = dCopy;
    [(GKMatch *)self withEventQueueForPlayer:v8 perform:v11];
    v9 = v16[5];

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void __44__GKMatch_updateConnectionInfo_forPlayerID___block_invoke(void *a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [v4 connectionInfo];
    [v6 addEntriesFromDictionary:a1[4]];

    objc_storeStrong((*(a1[6] + 8) + 40), a2);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v9 = a1[5];
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "player event queue does not exist for %@", &v10, 0xCu);
    }
  }
}

- (void)getLocalConnectionDataWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "GKMatch: getLocalConnectionDataWithCompletionHandler:", v8, 2u);
  }

  transport = [(GKMatch *)self transport];
  [transport localConnectionDataWithCompletionHandler:handlerCopy];
}

- (void)setAutomatchPlayerCount:(int64_t)count
{
  inviteDelegate = [(GKMatch *)self inviteDelegate];
  if (inviteDelegate && (v6 = inviteDelegate, [(GKMatch *)self inviteDelegate], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_opt_respondsToSelector(), v7, v6, (v8 & 1) != 0))
  {
    inviteDelegate2 = [(GKMatch *)self inviteDelegate];
    [inviteDelegate2 setAutomatchPlayerCount:count];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v9 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch setAutomatchPlayerCount:];
    }
  }
}

- (void)updateEventQueueForInviter:(id)inviter
{
  v12 = *MEMORY[0x277D85DE8];
  inviterCopy = inviter;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v11 = inviterCopy;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Update with inviter: %@", buf, 0xCu);
  }

  v9 = inviterCopy;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:&v9 count:1];
  [(GKMatch *)self addPlayers:v7];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __38__GKMatch_updateEventQueueForInviter___block_invoke;
  v8[3] = &unk_2785DEF38;
  v8[4] = self;
  [(GKMatch *)self withEventQueueForPlayer:inviterCopy createIfNeeded:1 perform:v8];
}

- (void)cancelPendingConnectionCheckWithReason:(id)reason
{
  v10 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v8 = 138412290;
    v9 = reasonCopy;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Canceling existing match pending connection checker for: %@.", &v8, 0xCu);
  }

  pendingConnectionChecker = [(GKMatch *)self pendingConnectionChecker];
  [pendingConnectionChecker cancel];
}

- (void)connectToPlayers:(id)players version:(unsigned __int8)version invitedByLocalPlayer:(BOOL)player completionHandler:(id)handler
{
  playerCopy = player;
  versionCopy = version;
  v67 = *MEMORY[0x277D85DE8];
  playersCopy = players;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v11 = GKOSLoggers();
  }

  v12 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v66 = playersCopy;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "connect to players: %@", buf, 0xCu);
  }

  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v15 = v14;
    transportContext = [(GKMatch *)self transportContext];
    peerDictionaries = [transportContext peerDictionaries];
    *buf = 138412290;
    v66 = peerDictionaries;
    _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "make connection with peerDictionaries %@", buf, 0xCu);
  }

  v18 = +[GKReporter reporter];
  [v18 recordConnectingDevicesTimestamp];

  v19 = "Close the challenge received alert without further action" + 16;
  if ([playersCopy count])
  {
    v51 = handlerCopy;
    v52 = playersCopy;
    [(GKMatch *)self addPlayers:playersCopy];
    if ([(GKMatch *)self version]> versionCopy)
    {
      [(GKMatch *)self sendVersionData:versionCopy];
      [(GKMatch *)self setVersion:versionCopy];
    }

    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    transport = [(GKMatch *)self transport];
    transportContext2 = [(GKMatch *)self transportContext];
    peerDictionaries2 = [transportContext2 peerDictionaries];
    v23 = [transport enrichPeerDictionariesForPlayersConnection:peerDictionaries2];

    v24 = [v23 countByEnumeratingWithState:&v60 objects:v64 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v61;
      do
      {
        for (i = 0; i != v25; ++i)
        {
          if (*v61 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v60 + 1) + 8 * i);
          v29 = [v28 objectForKey:@"player-id"];
          v30 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:v29];
          if (v30)
          {
            v57[0] = MEMORY[0x277D85DD0];
            v57[1] = 3221225472;
            v57[2] = __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke;
            v57[3] = &unk_2785DF000;
            v58 = versionCopy;
            v59 = playerCopy;
            v57[4] = v28;
            v57[5] = self;
            [(GKMatch *)self withEventQueueForPlayer:v30 createIfNeeded:1 perform:v57];
            if (playerCopy)
            {
              if (!os_log_GKGeneral)
              {
                v31 = GKOSLoggers();
              }

              v32 = os_log_GKMatch;
              if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138412290;
                v66 = v52;
                _os_log_debug_impl(&dword_227904000, v32, OS_LOG_TYPE_DEBUG, "Perform a pending connection check for invitees: %@.", buf, 0xCu);
              }

              [(GKMatch *)self refreshPendingConnectionCheckIfNeeded];
            }
          }

          else
          {
            if (!os_log_GKGeneral)
            {
              v33 = GKOSLoggers();
            }

            v34 = os_log_GKMatch;
            if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v66 = v29;
              _os_log_impl(&dword_227904000, v34, OS_LOG_TYPE_INFO, "Missing player for playerID: %@ while connecting to players", buf, 0xCu);
            }
          }
        }

        v25 = [v23 countByEnumeratingWithState:&v60 objects:v64 count:16];
      }

      while (v25);
    }

    inviteDelegate = [(GKMatch *)self inviteDelegate];

    handlerCopy = v51;
    if (inviteDelegate)
    {
      inviteDelegate2 = [(GKMatch *)self inviteDelegate];
      playersCopy = v52;
      [(GKMatch *)self sendConnectingStateCallbackToDelegate:inviteDelegate2 forPlayers:v52];

      v37 = "Close the challenge received alert without further action" + 16;
      v19 = "Close the challenge received alert without further action" + 16;
    }

    else
    {
      playersCopy = v52;
      v37 = "nge received alert without further action";
      v19 = "nge received alert without further action";
      if (!os_log_GKGeneral)
      {
        v39 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        [GKMatch connectToPlayers:version:invitedByLocalPlayer:completionHandler:];
      }
    }

    v40 = +[GKReporter reporter];
    [v40 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.allConnectionAttempt" count:{objc_msgSend(playersCopy, "count")}];

    if (!os_log_GKGeneral)
    {
      v41 = GKOSLoggers();
    }

    v42 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v43 = MEMORY[0x277CCABB0];
      expectedPlayerCount = self->_expectedPlayerCount;
      v45 = v42;
      v46 = [v43 numberWithUnsignedInteger:expectedPlayerCount];
      *buf = *(v37 + 442);
      v66 = v46;
      _os_log_impl(&dword_227904000, v45, OS_LOG_TYPE_INFO, "Connecting to peers, expecting: %@", buf, 0xCu);
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v38 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch connectToPlayers:version:invitedByLocalPlayer:completionHandler:];
    }
  }

  if ([playersCopy count] || (-[GKMatch transportContext](self, "transportContext"), v47 = objc_claimAutoreleasedReturnValue(), v48 = objc_msgSend(v47, "allowEarlyConnection"), v47, (v48 & 1) != 0))
  {
    transport2 = [(GKMatch *)self transport];
    transportContext3 = [(GKMatch *)self transportContext];
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = *(v19 + 434);
    v54[2] = __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301;
    v54[3] = &unk_2785DD8E8;
    v55 = playersCopy;
    v56 = handlerCopy;
    [transport2 connectToPlayersWithTransportContext:transportContext3 completionHandler:v54];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 connectionInfo];

  if (v4)
  {
    v5 = [v3 connectionInfo];
    [v5 addEntriesFromDictionary:*(a1 + 32)];
  }

  else
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:*(a1 + 32)];
    [v3 setConnectionInfo:v5];
  }

  v6 = [v3 connectionInfo];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:*(a1 + 48)];
  [v6 setObject:v7 forKey:@"match-version"];

  [v3 setInvitedByLocalPlayer:*(a1 + 49)];
  v8 = [*(a1 + 32) objectForKey:@"num-players"];
  v9 = [v8 intValue];

  if (v9 <= 1)
  {
    v10 = 1;
  }

  else
  {
    v10 = v9;
  }

  v12 = *(a1 + 40);
  v11 = a1 + 40;
  *(v12 + 176) += v10;
  if (!os_log_GKGeneral)
  {
    v13 = GKOSLoggers();
  }

  v14 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_cold_1(v14, v10, v11);
  }
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301_cold_1();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Connection requested handler for players: %@", &v8, 0xCu);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)connectToGuestPlayer:(id)player withHostPlayer:(id)hostPlayer
{
  v25 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  hostPlayerCopy = hostPlayer;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    internal = [playerCopy internal];
    v12 = [internal debugDescription];
    *buf = 138412546;
    v22 = v12;
    v23 = 2112;
    v24 = hostPlayerCopy;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Connect to guest player - player: %@ hostPlayer:%@", buf, 0x16u);
  }

  transport = [(GKMatch *)self transport];
  v14 = [transport connectToGuestPlayer:playerCopy withHostPlayer:hostPlayerCopy];

  if (v14)
  {
    v20 = playerCopy;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
    [(GKMatch *)self addPlayers:v15];

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke;
    v17[3] = &unk_2785DF028;
    v18 = playerCopy;
    v19 = hostPlayerCopy;
    [(GKMatch *)self withEventQueueForPlayer:v18 createIfNeeded:1 perform:v17];
    v16 = +[GKReporter reporter];
    [v16 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.allConnectionAttempt" count:2];
  }
}

void __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setPlayerState:1];
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke_cold_1(a1, v5);
  }

  [v3 setHostPlayer:*(a1 + 40)];
}

- (id)nearbyConnectionData
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *v8 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "GKMatch: nearbyConnectionData", v8, 2u);
  }

  transport = [(GKMatch *)self transport];
  nearbyConnectionData = [transport nearbyConnectionData];

  return nearbyConnectionData;
}

- (void)connectToNearbyPlayer:(id)player withConnectionData:(id)data
{
  v39 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  dataCopy = data;
  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = v9;
    internal = [playerCopy internal];
    v12 = [internal debugDescription];
    *buf = 138412290;
    v38 = v12;
    _os_log_impl(&dword_227904000, v10, OS_LOG_TYPE_INFO, "Connect to nearby player: %@", buf, 0xCu);
  }

  v13 = +[GKReporter reporter];
  [v13 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal"];

  v14 = +[GKReporter reporter];
  [v14 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.nearbyMatchTotal"];

  v36 = playerCopy;
  v15 = [MEMORY[0x277CBEA60] arrayWithObjects:&v36 count:1];
  [(GKMatch *)self addPlayers:v15];

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke;
  v31[3] = &unk_2785DF050;
  v16 = playerCopy;
  v32 = v16;
  v17 = dataCopy;
  v33 = v17;
  selfCopy = self;
  [(GKMatch *)self withEventQueueForPlayer:v16 createIfNeeded:1 perform:v31];
  if (!os_log_GKGeneral)
  {
    v18 = GKOSLoggers();
  }

  v19 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    v20 = v19;
    internal2 = [v16 internal];
    v22 = [internal2 debugDescription];
    *buf = 138412290;
    v38 = v22;
    _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "GKMatch: connectToNearbyPlayer: %@ - connecting to participant with session info: nil", buf, 0xCu);
  }

  inviteDelegate = [(GKMatch *)self inviteDelegate];

  if (inviteDelegate)
  {
    inviteDelegate2 = [(GKMatch *)self inviteDelegate];
    v35 = v16;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
    [(GKMatch *)self sendConnectingStateCallbackToDelegate:inviteDelegate2 forPlayers:v25];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v26 = GKOSLoggers();
    }

    v27 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch connectToNearbyPlayer:v27 withConnectionData:?];
    }
  }

  transportContext = [(GKMatch *)self transportContext];
  [transportContext updateForLegacyNearbyInvite];

  transport = [(GKMatch *)self transport];
  [transport connectToNearbyPlayer:v16 withConnectionData:v17];

  v30 = +[GKReporter reporter];
  [v30 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.allConnectionAttempt"];
}

void __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) referenceKey];
  v5 = [v3 connectionInfo];

  if (!v5)
  {
    v6 = [MEMORY[0x277CBEB38] dictionary];
    [v3 setConnectionInfo:v6];
  }

  v7 = [v3 connectionInfo];
  [v7 setObject:v4 forKey:@"peer-id"];

  v8 = [v3 connectionInfo];
  [v8 setObject:*(a1 + 40) forKey:@"peer-blob"];

  v9 = [v3 connectionInfo];
  v11 = *(a1 + 48);
  v10 = (a1 + 48);
  v12 = [v11 nearbyConnectionData];
  [v9 setObject:v12 forKey:@"self-blob"];

  v13 = [v3 connectionInfo];
  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{objc_msgSend(*v10, "version")}];
  [v13 setObject:v14 forKey:@"match-version"];

  v15 = [v3 connectionInfo];
  v16 = [MEMORY[0x277CCABB0] numberWithBool:1];
  [v15 setObject:v16 forKey:@"nearby"];

  ++*(*v10 + 22);
  if (!os_log_GKGeneral)
  {
    v17 = GKOSLoggers();
  }

  v18 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke_cold_1(v10, v18);
  }
}

- (id)packet:(unsigned __int8)packet data:(id)data
{
  packetCopy = packet;
  dataCopy = data;
  v7 = objc_alloc_init(GKMatchPacket);
  [(GKMatchPacket *)v7 setPacketType:packetCopy];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  LODWORD(self) = [(GKMatch *)selfCopy packetSequenceNumber];
  [(GKMatch *)selfCopy setPacketSequenceNumber:(self + 1)];
  objc_sync_exit(selfCopy);

  [(GKMatchPacket *)v7 setSequenceNumber:(self + 1)];
  [(GKMatchPacket *)v7 setData:dataCopy];
  message = [(GKMatchPacket *)v7 message];

  return message;
}

- (void)syncPlayers:(id)players forJoinType:(int)type toInvitees:(id)invitees
{
  playersCopy = players;
  inviteesCopy = invitees;
  if ([inviteesCopy count])
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke;
    v10[3] = &unk_2785DF078;
    v11 = inviteesCopy;
    typeCopy = type;
    v12 = playersCopy;
    selfCopy = self;
    [(GKPlayer *)GKLocalPlayer loadPlayersForLegacyIdentifiers:v11 withCompletionHandler:v10];
  }
}

void __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = v6;
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_1();
    }
  }

  else
  {
    v31[0] = @"GKMatchJoinType";
    v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 56)];
    v31[1] = @"playerIDs";
    v32[0] = v9;
    v32[1] = *(a1 + 40);
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];

    v22 = 0;
    v11 = [MEMORY[0x277CCAC58] dataWithPropertyList:v10 format:200 options:0 error:&v22];
    v7 = v22;
    if (v7)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_2();
      }
    }

    else
    {
      v13 = [*(a1 + 48) packet:8 data:v11];
      v14 = [*(a1 + 48) transport];
      v15 = [*(a1 + 48) transportContext];
      v21 = 0;
      [v14 sendScopedData:v13 toPlayers:v5 dataMode:0 dataScope:0 transportContext:v15 error:&v21];
      v16 = v21;

      if (v16)
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        v18 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
        {
          *buf = 138413058;
          v24 = v5;
          v25 = 2112;
          v26 = v10;
          v27 = 2112;
          v28 = v13;
          v29 = 2112;
          v30 = 0;
          _os_log_error_impl(&dword_227904000, v18, OS_LOG_TYPE_ERROR, "Failed to sync data to players: %@, dict: %@, data: %@, error: %@", buf, 0x2Au);
        }
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v19 = GKOSLoggers();
        }

        v20 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v24 = v5;
          v25 = 2112;
          v26 = v10;
          v27 = 2112;
          v28 = v13;
          _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "Sent sync data to players: %@, dict: %@, data: %@", buf, 0x20u);
        }
      }
    }
  }
}

- (void)receivedPlayerSyncData:(id)data
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListWithData:data options:0 format:0 error:&v17];
  v5 = v17;
  v6 = [v4 objectForKeyedSubscript:@"GKMatchJoinType"];
  integerValue = [v6 integerValue];

  if (!os_log_GKGeneral)
  {
    v8 = GKOSLoggers();
  }

  v9 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x277CCABB0];
    v11 = v9;
    v12 = [v10 numberWithUnsignedInt:integerValue];
    *buf = 138412546;
    v19 = v4;
    v20 = 2112;
    v21 = v12;
    _os_log_impl(&dword_227904000, v11, OS_LOG_TYPE_INFO, "receivedPlayerSyncData, dict: %@, joinType: %@", buf, 0x16u);
  }

  v13 = [v4 objectForKeyedSubscript:@"playerIDs"];
  allObjects = [v13 allObjects];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __34__GKMatch_receivedPlayerSyncData___block_invoke;
  v15[3] = &unk_2785DF0A0;
  v16 = integerValue;
  v15[4] = self;
  [(GKPlayer *)GKLocalPlayer loadPlayersForLegacyIdentifiers:allObjects withCompletionHandler:v15];
}

void __34__GKMatch_receivedPlayerSyncData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = *(a1 + 40);
  if ((v7 - 1) < 3 || v7 == 5)
  {
    v9 = MEMORY[0x277CBEB98];
    v10 = [v5 _gkPlayersIDsFromPlayers];
    v11 = [v9 setWithArray:v10];

    v12 = [*(a1 + 32) matchmaker];
    v13 = [v12 siblingInvitees];
    [v13 unionSet:v11];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v34;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v34 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(a1 + 32) updateJoinedPlayer:*(*(&v33 + 1) + 8 * i) joinType:{5, v33}];
        }

        v16 = [v14 countByEnumeratingWithState:&v33 objects:v45 count:16];
      }

      while (v16);
    }

    goto LABEL_14;
  }

  if (v7 == 4)
  {
    v19 = [*(a1 + 32) matchmaker];
    v20 = [v19 autoMatchedPlayers];
    v21 = MEMORY[0x277CBEB98];
    v22 = [v5 _gkPlayersIDsFromPlayers];
    v23 = [v21 setWithArray:v22];
    [v20 unionSet:v23];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v14 = [v5 _gkPlayersIDsFromPlayers];
    v24 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v38;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v38 != v26)
          {
            objc_enumerationMutation(v14);
          }

          [*(a1 + 32) updateJoinedPlayer:*(*(&v37 + 1) + 8 * j) joinType:4];
        }

        v25 = [v14 countByEnumeratingWithState:&v37 objects:v46 count:16];
      }

      while (v25);
    }

    goto LABEL_14;
  }

  if (!os_log_GKGeneral)
  {
    v28 = GKOSLoggers();
  }

  v29 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v30 = MEMORY[0x277CCABB0];
    v31 = *(a1 + 40);
    v14 = v29;
    v32 = [v30 numberWithUnsignedInt:v31];
    *buf = 138412546;
    v42 = v32;
    v43 = 2112;
    v44 = v5;
    _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "receivedPlayerSyncData, joinType: %@ not doing anything for players: %@", buf, 0x16u);

LABEL_14:
  }
}

- (id)makeInviteMessageDoneData
{
  v3 = objc_opt_class();
  propertiesByPlayerID = [(GKMatch *)self propertiesByPlayerID];
  allObjects = [propertiesByPlayerID allObjects];
  v6 = [v3 makeInviteMessageDoneWithProperties:allObjects];

  return v6;
}

- (void)sendInviteData:(id)data
{
  dataCopy = data;
  transportContext = [(GKMatch *)self transportContext];
  validTransportSelected = [transportContext validTransportSelected];

  if (validTransportSelected)
  {
    [(GKMatch *)self sendInviteData:dataCopy withScope:0];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    v8 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch sendInviteData:v8];
    }
  }
}

- (void)sendInviteData:(id)data withScope:(int64_t)scope
{
  v16 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v7 = dataCopy;
  if ([(GKMatch *)self version])
  {
    v7 = [(GKMatch *)self packet:2 data:dataCopy];
  }

  transport = [(GKMatch *)self transport];
  transportContext = [(GKMatch *)self transportContext];
  v13 = 0;
  [transport sendScopedDataToAll:v7 dataMode:0 dataScope:scope transportContext:transportContext error:&v13];
  v10 = v13;

  if (v10)
  {
    if (!os_log_GKGeneral)
    {
      v11 = GKOSLoggers();
    }

    v12 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v15 = v10;
      _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Failed to send invite data, error: %@", buf, 0xCu);
    }
  }
}

- (BOOL)sendPacketDataToAll:(id)all packetType:(unsigned __int8)type dataMode:(int64_t)mode error:(id *)error
{
  v9 = [(GKMatch *)self packet:type data:all];
  transport = [(GKMatch *)self transport];
  transportContext = [(GKMatch *)self transportContext];
  LOBYTE(error) = [transport sendScopedDataToAll:v9 dataMode:mode dataScope:0 transportContext:transportContext error:error];

  return error;
}

- (void)sendVersionData:(unsigned __int8)data
{
  dataCopy = data;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKTrace;
  if (os_log_type_enabled(os_log_GKTrace, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "GKMatch: sendVersionData", buf, 2u);
  }

  if ([(GKMatch *)self version])
  {
    v6 = [MEMORY[0x277CBEA90] dataWithBytes:&dataCopy length:1];
    v7 = [(GKMatch *)self packet:1 data:v6];

    transport = [(GKMatch *)self transport];
    transportContext = [(GKMatch *)self transportContext];
    v12 = 0;
    [transport sendScopedDataToAll:v7 dataMode:0 dataScope:0 transportContext:transportContext error:&v12];
    v10 = v12;

    if (v10)
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendVersionData:];
      }
    }
  }
}

- (void)sendVersionData:(unsigned __int8)data toPlayer:(id)player
{
  v16[1] = *MEMORY[0x277D85DE8];
  dataCopy = data;
  playerCopy = player;
  v6 = [MEMORY[0x277CBEA90] dataWithBytes:&dataCopy length:1];
  v7 = [(GKMatch *)self packet:1 data:v6];

  transport = [(GKMatch *)self transport];
  v16[0] = playerCopy;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
  transportContext = [(GKMatch *)self transportContext];
  v14 = 0;
  [transport sendScopedData:v7 toPlayers:v9 dataMode:0 dataScope:0 transportContext:transportContext error:&v14];
  v11 = v14;

  if (v11)
  {
    if (!os_log_GKGeneral)
    {
      v12 = GKOSLoggers();
    }

    v13 = os_log_GKError;
    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sendVersionData:v13 toPlayer:?];
    }
  }
}

- (void)queueData:(id)data withEventQueueForPlayer:(id)player forRecipient:(id)recipient
{
  dataCopy = data;
  recipientCopy = recipient;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __58__GKMatch_queueData_withEventQueueForPlayer_forRecipient___block_invoke;
  v12[3] = &unk_2785DF028;
  v13 = recipientCopy;
  v14 = dataCopy;
  v10 = dataCopy;
  v11 = recipientCopy;
  [(GKMatch *)self withEventQueueForPlayer:player perform:v12];
}

void __58__GKMatch_queueData_withEventQueueForPlayer_forRecipient___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = a2;
    v5 = objc_alloc_init(GKMatchEvent);
    [(GKMatchEvent *)v5 setRecipientPlayer:*(a1 + 32)];
    [(GKMatchEvent *)v5 setData:*(a1 + 40)];
    v4 = [v3 events];

    [v4 addObject:v5];
  }
}

- (void)deliverData:(id)data forRecipient:(id)recipient fromPlayer:(id)player
{
  dataCopy = data;
  recipientCopy = recipient;
  playerCopy = player;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v15 = MEMORY[0x277D85DD0];
  v16 = 3221225472;
  v17 = __47__GKMatch_deliverData_forRecipient_fromPlayer___block_invoke;
  v18 = &unk_2785DF0C8;
  v22 = &v23;
  v11 = playerCopy;
  v19 = v11;
  v12 = recipientCopy;
  v20 = v12;
  v13 = dataCopy;
  v21 = v13;
  [(GKMatch *)self withEventQueueForPlayer:v11 createIfNeeded:1 perform:&v15];
  if (*(v24 + 24) == 1)
  {
    v14 = [(GKMatch *)self delegate:v15];
    [(GKMatch *)self _delegate:v14 didReceiveData:v13 forRecipient:v12 fromPlayer:v11];
  }

  _Block_object_dispose(&v23, 8);
}

void __47__GKMatch_deliverData_forRecipient_fromPlayer___block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if ([v3 okToSend])
    {
      *(*(a1[7] + 8) + 24) = 1;
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v5 = GKOSLoggers();
      }

      v6 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        v7 = a1[4];
        v8 = v6;
        v9 = [v7 internal];
        v10 = [v9 conciseDescription];
        v13 = 138412290;
        v14 = v10;
        _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Queuing data for player: %@ (not ready)", &v13, 0xCu);
      }

      v11 = objc_alloc_init(GKMatchEvent);
      [(GKMatchEvent *)v11 setRecipientPlayer:a1[5]];
      [(GKMatchEvent *)v11 setData:a1[6]];
      v12 = [v4 events];
      [v12 addObject:v11];
    }
  }
}

- (void)sendQueuedStatesAndPackets
{
  v31 = *MEMORY[0x277D85DE8];
  [(GKMatch *)self players];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  obj = v23 = 0u;
  v21 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v21)
  {
    v20 = *v23;
    *&v3 = 138412546;
    v17 = v3;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v5 = *(*(&v22 + 1) + 8 * i);
        internal = [v5 internal];
        playerID = [internal playerID];

        v8 = self->_playerEventQueues;
        objc_sync_enter(v8);
        v9 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:playerID];
        v10 = v9;
        if (v9)
        {
          deferedPlayerState = [v9 deferedPlayerState];
          playerState = [v10 playerState];
          [v10 setDeferedPlayerState:0];
          if (!os_log_GKGeneral)
          {
            v13 = GKOSLoggers();
          }

          v14 = os_log_GKMatch;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
          {
            internal2 = [v5 internal];
            v16 = [internal2 debugDescription];
            *buf = v17;
            v27 = v16;
            v28 = 2112;
            v29 = &unk_283B33250;
            _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "_playerEventQueues for player %@ changed deferedPlayerState to %@", buf, 0x16u);
          }

          v15 = playerState == 1;
        }

        else
        {
          v15 = 0;
          deferedPlayerState = 0;
        }

        objc_sync_exit(v8);
        if (deferedPlayerState)
        {
          [(GKMatch *)self sendStateCallbackForPlayer:v5 state:deferedPlayerState];
        }

        if (v15)
        {
          [(GKMatch *)self sendQueuedPacketsForPlayer:v5];
        }
      }

      v21 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v21);
  }
}

- (void)sendQueuedPacketsForPlayer:(id)player
{
  playerCopy = player;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __38__GKMatch_sendQueuedPacketsForPlayer___block_invoke;
  v6[3] = &unk_2785DF028;
  v6[4] = self;
  v7 = playerCopy;
  v5 = playerCopy;
  [(GKMatch *)self withEventQueueForPlayer:v5 perform:v6];
}

void __38__GKMatch_sendQueuedPacketsForPlayer___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v17 = v3;
    obj = [v3 events];
    v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v4)
    {
      v5 = *v21;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          if (!os_log_GKGeneral)
          {
            v8 = GKOSLoggers();
          }

          v9 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Calling delegate with saved peer data", buf, 2u);
          }

          v10 = *(a1 + 32);
          v11 = [v10 delegate];
          v12 = [v7 data];
          v13 = [v7 recipientPlayer];
          [v10 _delegate:v11 didReceiveData:v12 forRecipient:v13 fromPlayer:*(a1 + 40)];
        }

        v4 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v4);
    }

    v14 = [v17 events];
    [v14 removeAllObjects];

    [v17 setOkToSend:1];
    v15 = *(*(a1 + 32) + 88);
    objc_sync_enter(v15);
    v16 = [*(a1 + 40) referenceKey];
    if (([*(*(a1 + 32) + 88) containsObject:v16] & 1) == 0)
    {
      [*(*(a1 + 32) + 88) addObject:v16];
    }

    objc_sync_exit(v15);
    v3 = v17;
  }
}

- (void)deferStateCallbackForPlayer:(id)player state:(int64_t)state
{
  v21 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    v10 = [(GKMatch *)self stringForGKPlayerConnectionState:state];
    internal = [playerCopy internal];
    v12 = [internal debugDescription];
    *buf = 138412546;
    v18 = v10;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "defering GKPlayerConnectionState: %@ callback for player: %@", buf, 0x16u);
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke;
  v14[3] = &unk_2785DF0F0;
  v15 = playerCopy;
  stateCopy = state;
  v13 = playerCopy;
  [(GKMatch *)self withEventQueueForPlayer:v13 perform:v14];
}

void __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke_cold_2();
  }

  v4 = v3;
  [v3 setDeferedPlayerState:*(a1 + 40)];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke_cold_1(a1, v6, (a1 + 40));
  }
}

- (void)updateStateForPlayer:(id)player state:(int64_t)state
{
  v27 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v9 = v8;
    internal = [playerCopy internal];
    v11 = [internal debugDescription];
    v12 = [(GKMatch *)self stringForGKPlayerConnectionState:state];
    *buf = 138412546;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    _os_log_impl(&dword_227904000, v9, OS_LOG_TYPE_INFO, "Updating GKPlayerConnectionState for player: %@ to %@", buf, 0x16u);
  }

  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __38__GKMatch_updateStateForPlayer_state___block_invoke;
  v20[3] = &unk_2785DF118;
  v20[4] = self;
  stateCopy = state;
  v13 = playerCopy;
  v21 = v13;
  [(GKMatch *)self withEventQueueForPlayer:v13 createIfNeeded:1 perform:v20];
  if (!os_log_GKGeneral)
  {
    v14 = GKOSLoggers();
  }

  v15 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v16 = MEMORY[0x277CCABB0];
    expectedPlayerCount = self->_expectedPlayerCount;
    v18 = v15;
    v19 = [v16 numberWithUnsignedInteger:expectedPlayerCount];
    *buf = 138412290;
    v24 = v19;
    _os_log_impl(&dword_227904000, v18, OS_LOG_TYPE_INFO, "expecting %@ more players", buf, 0xCu);
  }
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    if (([v3 counted] & 1) == 0)
    {
      v6 = (a1 + 4);
      v5 = a1[4];
      v7 = *(v5 + 176);
      if (v7)
      {
        *(v5 + 176) = v7 - 1;
        if (!os_log_GKGeneral)
        {
          v8 = GKOSLoggers();
        }

        v9 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
        {
          __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_1((a1 + 4), v9);
        }

        if (!*(*v6 + 22))
        {
          if (!os_log_GKGeneral)
          {
            v10 = GKOSLoggers();
          }

          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
          {
            __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_2();
          }

          [*v6 updateRematchID];
        }
      }

      [v4 setCounted:1];
    }

    if (a1[6] == 2)
    {
      v12 = a1[5];
      v11 = a1 + 5;
      v13 = [v12 internal];
      v14 = [v13 playerID];

      [*(*(v11 - 1) + 56) removeObjectForKey:v14];
      [*(*(v11 - 1) + 32) removeObject:v14];
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
      {
        __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_3(v11, v16);
      }
    }
  }
}

- (void)sendStateCallbackForPlayer:(id)player state:(int64_t)state
{
  v27 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (!self->_expectedPlayerCount)
  {
    v7 = +[GKReporter reporter];
    [v7 reportConnectingDevicesDuration];

    v8 = +[GKReporter reporter];
    [v8 reportProgramaticInviteDuration];
  }

  delegate = [(GKMatch *)self delegate];
  if (delegate)
  {

LABEL_6:
    delegate2 = [(GKMatch *)self delegate];

    if (delegate2)
    {
      delegate3 = [(GKMatch *)self delegate];
      [(GKMatch *)self sendStateCallbackToDelegate:delegate3 forPlayer:playerCopy state:state];
    }

    inviteDelegate = [(GKMatch *)self inviteDelegate];

    if (inviteDelegate)
    {
      inviteDelegate2 = [(GKMatch *)self inviteDelegate];
      [(GKMatch *)self sendStateCallbackToDelegate:inviteDelegate2 forPlayer:playerCopy state:state];
    }

    goto LABEL_10;
  }

  inviteDelegate3 = [(GKMatch *)self inviteDelegate];

  if (inviteDelegate3)
  {
    goto LABEL_6;
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    v17 = v16;
    internal = [playerCopy internal];
    v19 = [internal debugDescription];
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:state];
    v21 = 138412802;
    v22 = v19;
    v23 = 2112;
    v24 = v20;
    v25 = 2048;
    selfCopy = self;
    _os_log_error_impl(&dword_227904000, v17, OS_LOG_TYPE_ERROR, "Cannot send state call back for player: %@, state: %@, due to missing delegates set for GKMatch: %p", &v21, 0x20u);
  }

LABEL_10:
}

- (void)sendStateCallbackToDelegate:(id)delegate forPlayer:(id)player state:(int64_t)state
{
  v43 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  playerCopy = player;
  [(GKMatch *)self updateStateForPlayer:playerCopy state:state];
  if (!os_log_GKGeneral)
  {
    v10 = GKOSLoggers();
  }

  v11 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v12 = v11;
    v13 = [(GKMatch *)self stringForGKPlayerConnectionState:state];
    internal = [playerCopy internal];
    v15 = [internal debugDescription];
    *buf = 138412802;
    v38 = delegateCopy;
    v39 = 2112;
    v40 = v13;
    v41 = 2112;
    v42 = v15;
    _os_log_impl(&dword_227904000, v12, OS_LOG_TYPE_INFO, "Informing state change to delegate %@: The GKPlayerConnectionState = %@, for player: %@", buf, 0x20u);
  }

  if (objc_opt_respondsToSelector())
  {
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = __55__GKMatch_sendStateCallbackToDelegate_forPlayer_state___block_invoke;
    v32[3] = &unk_2785DF140;
    v33 = delegateCopy;
    selfCopy = self;
    v35 = playerCopy;
    stateCopy = state;
    [v35 updateScopedIDs:v32];
  }

  else if (objc_opt_respondsToSelector())
  {
    if (GKApplicationLinkedOnOrAfter(917504, 659456))
    {
      if (!os_log_GKGeneral)
      {
        v22 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendStateCallbackToDelegate:forPlayer:state:];
      }
    }

    else
    {
      internal2 = [playerCopy internal];
      playerID = [internal2 playerID];
      [delegateCopy match:self player:playerID didChangeState:state];
    }
  }

  else
  {
    delegate = [(GKMatch *)self delegate];
    if (delegate)
    {
      v24 = delegate;
      delegate2 = [(GKMatch *)self delegate];
      v26 = [delegate2 isEqual:delegateCopy];

      if (v26)
      {
        if (!os_log_GKGeneral)
        {
          v27 = GKOSLoggers();
        }

        v28 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_227904000, v28, OS_LOG_TYPE_INFO, "Delegate doesn't respond to state change callback", buf, 2u);
        }

        if (!os_log_GKGeneral)
        {
          v29 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch sendStateCallbackToDelegate:forPlayer:state:];
        }
      }
    }
  }

  if (state == 1)
  {
    if ([(GKMatch *)self fastStartStateActive])
    {
      connectedPlayers = [(GKMatch *)self connectedPlayers];
      v17 = [connectedPlayers count];
      matchmaker = [(GKMatch *)self matchmaker];
      currentMatchRequest = [matchmaker currentMatchRequest];
      minPlayers = [currentMatchRequest minPlayers];

      if (v17 >= minPlayers)
      {
        makeInviteMessageDoneData = [(GKMatch *)self makeInviteMessageDoneData];
        [(GKMatch *)self sendInviteData:makeInviteMessageDoneData];
      }
    }
  }
}

void __55__GKMatch_sendStateCallbackToDelegate_forPlayer_state___block_invoke(uint64_t a1)
{
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__GKMatch_sendStateCallbackToDelegate_forPlayer_state___block_invoke_2;
  v7[3] = &unk_2785DF140;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v8 = v2;
  v9 = v3;
  v5 = v4;
  v6 = *(a1 + 56);
  v10 = v5;
  v11 = v6;
  dispatch_async(MEMORY[0x277D85CD0], v7);
}

- (id)connectedPlayers
{
  v20 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v4 = self->_playerEventQueues;
  objc_sync_enter(v4);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  players = [(GKMatch *)self players];
  v6 = [players countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(players);
        }

        internal = [*(*(&v15 + 1) + 8 * i) internal];
        playerID = [internal playerID];

        v11 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:playerID];
        v12 = v11;
        if (v11 && [v11 playerState] == 1)
        {
          player = [v12 player];
          [array addObject:player];
        }
      }

      v6 = [players countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  objc_sync_exit(v4);

  return array;
}

- (void)sendConnectingStateCallbackToDelegate:(id)delegate forPlayers:(id)players
{
  v26 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  playersCopy = players;
  if (objc_opt_respondsToSelector())
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v17 = playersCopy;
    obj = playersCopy;
    v7 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
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
          if (!os_log_GKGeneral)
          {
            v12 = GKOSLoggers();
          }

          v13 = os_log_GKMatch;
          if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
          {
            v14 = v13;
            internal = [v11 internal];
            v16 = [internal debugDescription];
            *buf = 138412290;
            v24 = v16;
            _os_log_impl(&dword_227904000, v14, OS_LOG_TYPE_INFO, "Informing match inviteDelegate to set connecting state for player %@", buf, 0xCu);
          }

          [delegateCopy setConnectingStateForPlayer:v11];
        }

        v8 = [obj countByEnumeratingWithState:&v19 objects:v25 count:16];
      }

      while (v8);
    }

    playersCopy = v17;
  }
}

- (void)reinviteeAcceptedNotification:(id)notification
{
  v16 = *MEMORY[0x277D85DE8];
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"peer-id"];
  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  v7 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_227904000, v7, OS_LOG_TYPE_INFO, "Got reinvite acception notification: player(ID: %@) would like to reconnect to this  match...", buf, 0xCu);
  }

  v8 = [userInfo objectForKeyedSubscript:@"invite-version"];
  unsignedCharValue = [v8 unsignedCharValue];

  transportContext = [(GKMatch *)self transportContext];
  [transportContext updateAfterInviteeAcceptedUserInfo:userInfo];

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __41__GKMatch_reinviteeAcceptedNotification___block_invoke;
  v12[3] = &unk_2785DEF60;
  v12[4] = self;
  v13 = userInfo;
  v11 = userInfo;
  [(GKMatch *)self connectToPlayers:0 version:unsignedCharValue invitedByLocalPlayer:1 completionHandler:v12];
}

void __41__GKMatch_reinviteeAcceptedNotification___block_invoke(uint64_t a1)
{
  [*(a1 + 32) handleRelayPushData:*(a1 + 40) onlyIfPreemptive:1];
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:*(a1 + 32) name:@"GKInviteeAcceptedGameInvite" object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:*(a1 + 32) name:@"GKInviteeDeclinedGameInvite" object:0];
}

- (void)reinviteeDeclinedNotification:(id)notification
{
  v28 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v4 = [userInfo objectForKey:@"I"];
  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v27 = v4;
    _os_log_impl(&dword_227904000, v6, OS_LOG_TYPE_INFO, "Got reinvite declined notification: player %@ has refused a reconnect to this match...", buf, 0xCu);
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"GKInviteeAcceptedGameInvite" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"GKInviteeDeclinedGameInvite" object:0];

  v9 = self->_reinvitedPlayers;
  objc_sync_enter(v9);
  v10 = self->_reinvitedPlayers;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v10;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v12)
  {
    v13 = *v22;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v22 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = *(*(&v21 + 1) + 8 * i);
        internal = [v15 internal];
        playerID = [internal playerID];
        v18 = [playerID isEqualToString:v4];

        if (v18)
        {
          [(NSMutableArray *)v11 removeObject:v15];
          goto LABEL_15;
        }
      }

      v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  objc_sync_exit(v9);
}

- (void)conditionallyReinvitePlayer:(id)player sessionToken:(id)token
{
  v33 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  tokenCopy = token;
  playerPushTokens = self->_playerPushTokens;
  internal = [playerCopy internal];
  playerID = [internal playerID];
  v11 = [(NSMutableDictionary *)playerPushTokens objectForKey:playerID];

  if (v11)
  {
    delegate = [(GKMatch *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      v13 = [delegate match:self shouldReinviteDisconnectedPlayer:playerCopy];
      if (tokenCopy)
      {
LABEL_4:
        if (v13)
        {
          v14 = +[_TtC20GameCenterFoundation19GCFLocalizedStrings GAME_RECONNECT_MESSAGE];
          aBlock[0] = MEMORY[0x277D85DD0];
          aBlock[1] = 3221225472;
          aBlock[2] = __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke;
          aBlock[3] = &unk_2785DF190;
          aBlock[4] = self;
          v27 = v14;
          v28 = playerCopy;
          v29 = tokenCopy;
          v30 = v11;
          v15 = v14;
          v16 = _Block_copy(aBlock);
          [(GKMatch *)self getLocalConnectionDataWithCompletionHandler:v16];
        }
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        if (!os_log_GKGeneral)
        {
          v18 = GKOSLoggers();
        }

        v19 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v20 = v19;
          internal2 = [playerCopy internal];
          v22 = [internal2 debugDescription];
          *buf = 138412290;
          v32 = v22;
          _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "Player %@ disconnected: do not reinvite...", buf, 0xCu);
        }

        if (!os_log_GKGeneral)
        {
          v23 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch conditionallyReinvitePlayer:sessionToken:];
        }

        goto LABEL_20;
      }

      if (GKApplicationLinkedOnOrAfter(917504, 659456))
      {
        if (!os_log_GKGeneral)
        {
          v17 = GKOSLoggers();
        }

        if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
        {
          [GKMatch conditionallyReinvitePlayer:sessionToken:];
        }

        goto LABEL_20;
      }

      internal3 = [playerCopy internal];
      playerID2 = [internal3 playerID];
      v13 = [delegate match:self shouldReinvitePlayer:playerID2];

      if (tokenCopy)
      {
        goto LABEL_4;
      }
    }

LABEL_20:
  }
}

void __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && !v6)
  {
    objc_initWeak(&location, *(a1 + 32));
    v8 = [*(a1 + 32) transportContext];
    v9 = [v8 daemonProxy];
    v10 = *(a1 + 40);
    v11 = [*(a1 + 48) internal];
    v12 = *(a1 + 56);
    v13 = *(a1 + 64);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2;
    v16[3] = &unk_2785DF168;
    v17 = *(a1 + 48);
    v18 = *(a1 + 40);
    objc_copyWeak(&v19, &location);
    [v9 sendReconnectInvitation:v10 toPlayer:v11 connectionData:v5 sessionToken:v12 pushToken:v13 handler:v16];

    if (!os_log_GKGeneral)
    {
      v14 = GKOSLoggers();
    }

    v15 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v22 = 0;
      _os_log_impl(&dword_227904000, v15, OS_LOG_TYPE_INFO, "error getLocalConnectionData for re-invite = %@", buf, 0xCu);
    }

    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }
}

void __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2(uint64_t a1, void *a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    if (!os_log_GKGeneral)
    {
      v4 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2_cold_1();
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v5 = GKOSLoggers();
    }

    v6 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      v7 = *(a1 + 32);
      v8 = v6;
      v9 = [v7 internal];
      v10 = [v9 conciseDescription];
      v11 = *(a1 + 40);
      v17 = 138412546;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "re-invite request sent == [%@, %@]...", &v17, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v13 = WeakRetained[8];
    objc_sync_enter(v13);
    if (([WeakRetained[8] containsObject:*(a1 + 32)] & 1) == 0)
    {
      [WeakRetained[8] addObject:*(a1 + 32)];
    }

    objc_sync_exit(v13);

    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    v15 = +[GKLocalPlayer localPlayer];
    [v14 addObserver:WeakRetained selector:sel_reinviteeAcceptedNotification_ name:@"GKInviteeAcceptedGameInvite" object:v15];

    v16 = +[GKLocalPlayer localPlayer];
    [v14 addObserver:WeakRetained selector:sel_reinviteeDeclinedNotification_ name:@"GKInviteeDeclinedGameInvite" object:v16];
  }
}

- (void)conditionallyRelaunchPlayer:(id)player
{
  v23 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  makeInviteMessageDoneData = self->_reinvitedPlayers;
  objc_sync_enter(makeInviteMessageDoneData);
  v6 = self->_reinvitedPlayers;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = v6;
  v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v8)
  {
    v9 = *v19;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v19 != v9)
      {
        objc_enumerationMutation(v7);
      }

      v11 = *(*(&v18 + 1) + 8 * v10);
      if ([v11 isEqual:{playerCopy, v18}])
      {
        break;
      }

      if (v8 == ++v10)
      {
        v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    playerPushTokens = self->_playerPushTokens;
    internal = [playerCopy internal];
    playerID = [internal playerID];
    v15 = [(NSMutableDictionary *)playerPushTokens objectForKey:playerID];

    [(NSMutableArray *)v7 removeObject:v11];
    objc_sync_exit(makeInviteMessageDoneData);

    if (!v15)
    {
      goto LABEL_17;
    }

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    v17 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [(GKMatch *)v17 conditionallyRelaunchPlayer:playerCopy];
    }

    makeInviteMessageDoneData = [(GKMatch *)self makeInviteMessageDoneData];
    [(GKMatch *)self sendInviteData:makeInviteMessageDoneData];
  }

  else
  {
LABEL_9:

    objc_sync_exit(makeInviteMessageDoneData);
  }

LABEL_17:
}

- (void)acceptRelayResponse:(id)response player:(id)player
{
  playerCopy = player;
  responseCopy = response;
  transport = [(GKMatch *)self transport];
  internal = [playerCopy internal];

  playerID = [internal playerID];
  [transport acceptRelayResponse:responseCopy playerID:playerID];
}

- (void)handleRelayPushData:(id)data onlyIfPreemptive:(BOOL)preemptive
{
  preemptiveCopy = preemptive;
  dataCopy = data;
  transport = [(GKMatch *)self transport];
  [transport handleRelayPushData:dataCopy onlyIfPreemptive:preemptiveCopy];
}

- (void)preemptRelay:(id)relay
{
  relayCopy = relay;
  transport = [(GKMatch *)self transport];
  internal = [relayCopy internal];

  playerID = [internal playerID];
  [transport preemptRelay:playerID];
}

- (void)relayDidReceivePushData:(id)data completionHandler:(id)handler
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  handlerCopy = handler;
  if (!os_log_GKGeneral)
  {
    v7 = GKOSLoggers();
  }

  v8 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = dataCopy;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "relayPush - push notification's userInfo: %@", &buf, 0xCu);
  }

  v9 = [dataCopy objectForKey:@"I"];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v47 = 0x3032000000;
  v48 = __Block_byref_object_copy__6;
  v49 = __Block_byref_object_dispose__6;
  v50 = 0;
  v38 = 0;
  v39 = &v38;
  v40 = 0x3032000000;
  v41 = __Block_byref_object_copy__6;
  v42 = __Block_byref_object_dispose__6;
  v43 = 0;
  v10 = self->_playerEventQueues;
  objc_sync_enter(v10);
  v11 = [(NSMutableDictionary *)self->_playerEventQueues objectForKey:v9];
  v12 = v11;
  if (v11)
  {
    connectionInfo = [v11 connectionInfo];
    v14 = [connectionInfo objectForKey:@"session-token"];
    v15 = *(*(&buf + 1) + 40);
    *(*(&buf + 1) + 40) = v14;

    if (!os_log_GKGeneral)
    {
      v16 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch relayDidReceivePushData:completionHandler:];
    }

    player = [v12 player];
    v18 = v39[5];
    v39[5] = player;
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v19 = GKOSLoggers();
    }

    v20 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v44 = 138412290;
      v45 = v9;
      _os_log_impl(&dword_227904000, v20, OS_LOG_TYPE_INFO, "player event queue does not exist for %@", v44, 0xCu);
    }
  }

  objc_sync_exit(v10);
  v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s:%d %s", "GKMatch.m", 1769, "-[GKMatch relayDidReceivePushData:completionHandler:]"];
  v22 = [GKDispatchGroup dispatchGroupWithName:v21];

  if (!v39[5])
  {
    if (!os_log_GKGeneral)
    {
      v23 = GKOSLoggers();
    }

    v24 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
    {
      *v44 = 0;
      _os_log_impl(&dword_227904000, v24, OS_LOG_TYPE_INFO, "no player, bootstrapping player (loading player from identifier)", v44, 2u);
    }

    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke;
    v34[3] = &unk_2785DF1E0;
    selfCopy = self;
    v37 = &v38;
    v35 = v9;
    [v22 perform:v34];
  }

  v25 = dispatch_get_global_queue(0, 0);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363;
  v29[3] = &unk_2785DF208;
  v32 = &v38;
  p_buf = &buf;
  v29[4] = self;
  v26 = dataCopy;
  v30 = v26;
  v27 = handlerCopy;
  v31 = v27;
  [v22 notifyOnQueue:v25 block:v29];

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&buf, 8);
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke(int8x16_t *a1, void *a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v12[0] = a1[2].i64[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2;
  v8[3] = &unk_2785DF1B8;
  v11 = a1[3].i64[0];
  v7 = a1[2];
  v5 = v7.i64[0];
  v9 = vextq_s8(v7, v7, 8uLL);
  v10 = v3;
  v6 = v3;
  [GKPlayer loadPlayersForIdentifiersPrivate:v4 withCompletionHandler:v8];
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([v5 count])
  {
    v7 = [v5 firstObject];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    v10 = *(a1[4] + 56);
    objc_sync_enter(v10);
    v11 = [*(a1[4] + 56) objectForKey:a1[5]];
    v12 = v11;
    if (v11)
    {
      [v11 setPlayer:*(*(a1[7] + 8) + 40)];
    }

    objc_sync_exit(v10);
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKError, OS_LOG_TYPE_ERROR))
    {
      __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2_cold_1();
    }
  }

  (*(a1[6] + 16))();
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 56) + 8) + 40))
  {
LABEL_15:
    (*(*(a1 + 48) + 16))();
    return;
  }

  v2 = *(a1 + 32);
  v3 = *(*(*(a1 + 64) + 8) + 40);
  v4 = [*(a1 + 40) objectForKey:@"s"];
  v5 = [v2 dataFromBase64String:v4];
  LOBYTE(v3) = [v3 isEqualToData:v5];

  if ((v3 & 1) == 0)
  {
    if (!os_log_GKGeneral)
    {
      v8 = GKOSLoggers();
    }

    v9 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(*(a1 + 64) + 8) + 40);
      v12 = *(a1 + 32);
      v13 = *(a1 + 40);
      v14 = v9;
      v15 = [v13 objectForKey:@"s"];
      v16 = [v12 dataFromBase64String:v15];
      *buf = 134218498;
      v19 = v12;
      v20 = 2112;
      v21 = v11;
      v22 = 2112;
      v23 = v16;
      _os_log_error_impl(&dword_227904000, v14, OS_LOG_TYPE_ERROR, "relayPush for match: %p - session token doesn't match with this session! - sessionToken from relay push: %@ - sessionToken in this match: %@", buf, 0x20u);
    }

    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      if (!os_log_GKGeneral)
      {
        v10 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363_cold_1();
      }
    }

    goto LABEL_15;
  }

  v6 = *(a1 + 48);
  v17 = [*(*(*(a1 + 56) + 8) + 40) internal];
  v7 = [v17 playerID];
  (*(v6 + 16))(v6, v7);
}

- (void)connectionDidChangeWithState:(int)state playerID:(id)d
{
  dCopy = d;
  stateChangeQueue = self->_stateChangeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke;
  block[3] = &unk_2785DF2D0;
  stateCopy = state;
  block[4] = self;
  v10 = dCopy;
  v8 = dCopy;
  dispatch_async(stateChangeQueue, block);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke(uint64_t a1)
{
  v40 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 56);
  if (v2 && ([v2 allValues], v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "count"), v3, v4))
  {
    v5 = [*(*(a1 + 32) + 56) allValues];
    v6 = [v5 firstObject];

    v7 = [v6 connectionInfo];
    v8 = [v7 objectForKeyedSubscript:@"session-token"];
  }

  else
  {
    v8 = @"Unknown";
  }

  if (!os_log_GKGeneral)
  {
    v9 = GKOSLoggers();
  }

  v10 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 48);
    v13 = v10;
    v14 = [v11 stringForGKPeerConnectionState:v12];
    v15 = *(a1 + 40);
    *buf = 134218754;
    v33 = v11;
    v34 = 2112;
    v35 = v14;
    v36 = 2112;
    v37 = v15;
    v38 = 2112;
    v39 = v8;
    _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "GKTransportClientDelegate call back for match: %p - new state: %@ - playerID: %@ - sessionToken: %@.", buf, 0x2Au);
  }

  v16 = [GKDispatchGroup dispatchGroupWithName:@"com.apple.gamecenter.match.changestategroup"];
  v17 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [v16 setObject:v17 forKeyedSubscript:@"player"];
  if (!v17)
  {
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376;
    v27[3] = &unk_2785DF280;
    v18 = *(a1 + 40);
    v19 = *(a1 + 32);
    v28 = v18;
    v29 = v19;
    v31 = *(a1 + 48);
    v30 = v16;
    [v30 perform:v27];
  }

  v20 = dispatch_get_global_queue(0, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381;
  v23[3] = &unk_2785DF2D0;
  v21 = *(a1 + 32);
  v24 = v16;
  v25 = v21;
  v26 = *(a1 + 48);
  v22 = v16;
  [v22 notifyOnQueue:v20 block:v23];
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (!os_log_GKGeneral)
  {
    v4 = GKOSLoggers();
  }

  v5 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v34 = v6;
    _os_log_impl(&dword_227904000, v5, OS_LOG_TYPE_INFO, "fetching player with playerID: %@", buf, 0xCu);
  }

  if ([GKPlayer isGuestPlayerID:*(a1 + 32)])
  {
    v7 = [*(a1 + 32) componentsSeparatedByString:@"_"];
    v8 = [v7 objectAtIndexedSubscript:0];
    v9 = [v7 objectAtIndexedSubscript:1];
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_2();
    }

    v32 = v8;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v32 count:1];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_377;
    v25[3] = &unk_2785DF230;
    v26 = v9;
    v30 = *(a1 + 56);
    v18 = *(a1 + 32);
    v12 = v18.i64[0];
    v27 = vextq_s8(v18, v18, 8uLL);
    v28 = *(a1 + 48);
    v29 = v3;
    v13 = v3;
    v14 = v9;
    [GKPlayer loadPlayersForIdentifiersPrivate:v11 withCompletionHandler:v25];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v15 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_1();
    }

    v31 = *(a1 + 32);
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v31 count:1];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379;
    v20[3] = &unk_2785DF258;
    v21 = *(a1 + 48);
    v24 = *(a1 + 56);
    v19 = *(a1 + 32);
    v17 = v19.i64[0];
    v22 = vextq_s8(v19, v19, 8uLL);
    v23 = v3;
    v7 = v3;
    [GKPlayer loadPlayersForIdentifiersPrivate:v16 withCompletionHandler:v20];

    v8 = v21;
  }
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_377(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 firstObject];
  v4 = [GKAnonymousGuestPlayerInternal alloc];
  v5 = [v3 internal];
  v6 = [(GKAnonymousGuestPlayerInternal *)v4 initWithHostPlayerInternal:v5 guestIdentifier:*(a1 + 32)];

  v7 = [[GKPlayer alloc] initWithInternalRepresentation:v6];
  v8 = *(a1 + 40);
  v10[0] = v7;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v8 addPlayers:v9];

  [*(a1 + 40) connectionDidChangeWithState:*(a1 + 72) playerID:*(a1 + 48)];
  [*(a1 + 56) setObject:v7 forKeyedSubscript:@"player"];
  (*(*(a1 + 64) + 16))();
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379(uint64_t a1, void *a2)
{
  v3 = a2;
  if (![GKMatchmaker canPlayMultiplayerGameWithPlayers:v3])
  {
    if (!os_log_GKGeneral)
    {
      v7 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379_cold_1();
    }

    v6 = [MEMORY[0x277CCA9B8] userErrorForCode:10 userInfo:0];
    [*(a1 + 32) setError:v6];
    goto LABEL_9;
  }

  [*(a1 + 40) addPlayers:v3];
  v4 = +[GKReporter reporter];
  [v4 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.allMatchTotal"];

  v5 = +[GKReporter reporter];
  [v5 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionResult" type:@"realtime.indirectMatchTotal"];

  [*(a1 + 40) connectionDidChangeWithState:*(a1 + 64) playerID:*(a1 + 48)];
  if ([v3 count])
  {
    v6 = [v3 firstObject];
    [*(a1 + 32) setObject:v6 forKeyedSubscript:@"player"];
LABEL_9:
  }

  (*(*(a1 + 56) + 16))();
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381(uint64_t a1)
{
  v112 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v3 = [*(a1 + 32) objectForKeyedSubscript:@"player"];
  v4 = [*v2 error];
  v5 = [v4 code];

  if (v5 != 10)
  {
    if (!v3)
    {
      goto LABEL_67;
    }

    v6 = 0;
    v7 = *(a1 + 48);
    v8 = 1;
    v9 = 1;
    if (v7 != 2 && v7 != 5)
    {
      v9 = 0;
      if (v7 == 3)
      {
        v6 = 1;
        v8 = 2;
      }

      else
      {
        v6 = 0;
        v8 = 0;
      }
    }

    v79 = v6;
    v80 = v9;
    v103 = 0;
    v104 = &v103;
    v105 = 0x2020000000;
    v106 = 0;
    v99 = 0;
    v100 = &v99;
    v101 = 0x2020000000;
    v102 = 0;
    v93 = 0;
    v94 = &v93;
    v95 = 0x3032000000;
    v96 = __Block_byref_object_copy__6;
    v97 = __Block_byref_object_dispose__6;
    v98 = 0;
    v10 = *(a1 + 40);
    v86[0] = MEMORY[0x277D85DD0];
    v86[1] = 3221225472;
    v86[2] = __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_2;
    v86[3] = &unk_2785DF2A8;
    v89 = &v99;
    v90 = &v93;
    v81 = v8;
    v92 = v8;
    v11 = v3;
    v12 = *(a1 + 40);
    v87 = v11;
    v88 = v12;
    v91 = &v103;
    [v10 withEventQueueForPlayer:v11 createIfNeeded:1 perform:v86];
    if (*(v104 + 24) != 1)
    {
LABEL_66:

      _Block_object_dispose(&v93, 8);
      _Block_object_dispose(&v99, 8);
      _Block_object_dispose(&v103, 8);
      goto LABEL_67;
    }

    if (!os_log_GKGeneral)
    {
      v13 = GKOSLoggers();
    }

    v14 = os_log_GKMatch;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v73 = [v11 internal];
      v74 = [v73 debugDescription];
      v75 = [*(a1 + 40) stringForGKPlayerConnectionState:v81];
      *buf = 138412546;
      v109 = v74;
      v110 = 2112;
      v111 = v75;
      _os_log_debug_impl(&dword_227904000, v14, OS_LOG_TYPE_DEBUG, "EventQueue for player %@ changed playerState to %@", buf, 0x16u);
    }

    v15 = [*(a1 + 40) transportContext];
    v16 = [v15 daemonProxy];
    v17 = MEMORY[0x277CCACA8];
    v18 = [v11 alias];
    v19 = [*(a1 + 40) stringForGKPeerConnectionState:*(a1 + 48)];
    v20 = [v17 stringWithFormat:@"%@ -> %@", v18, v19];
    [v16 emitMultiplayerMessage:v20];

    if (v80)
    {
      v21 = *(v100 + 24);
      if (v21 > [*(a1 + 40) version])
      {
        [*(a1 + 40) sendVersionData:objc_msgSend(*(a1 + 40) toPlayer:{"version"), v11}];
      }

      v22 = *(a1 + 40);
      v23 = [v11 internal];
      v24 = [v23 playerID];
      [v22 addPlayerToGroup:v24];

      v25 = +[GKReporter reporter];
      [v25 reportEvent:@"com.apple.GameKit.match" type:@"connect"];

      v26 = [*(a1 + 40) matchmaker];
      v27 = [v11 internal];
      v28 = [v27 playerID];
      [v26 reportPlayerConnectedWithPlayerID:v28 forMatch:*(a1 + 40)];

      v29 = [*(a1 + 40) matchmaker];
      v30 = [v29 allInvitedInvitees];
      v31 = [v30 allObjects];

      v32 = [v11 internal];
      v33 = [v32 playerID];
      LODWORD(v30) = [v31 containsObject:v33];

      if (v30)
      {
        v84 = 0u;
        v85 = 0u;
        v82 = 0u;
        v83 = 0u;
        v34 = v31;
        v35 = [v34 countByEnumeratingWithState:&v82 objects:v107 count:16];
        if (v35)
        {
          v36 = *v83;
          do
          {
            for (i = 0; i != v35; ++i)
            {
              if (*v83 != v36)
              {
                objc_enumerationMutation(v34);
              }

              v38 = *(*(&v82 + 1) + 8 * i);
              v39 = [*(a1 + 40) playersByJoinType];
              v40 = [v39 objectForKeyedSubscript:v38];

              if (v40)
              {
                [*(a1 + 40) syncPlayers:v34 forJoinType:5 toInvitees:v34];
              }
            }

            v35 = [v34 countByEnumeratingWithState:&v82 objects:v107 count:16];
          }

          while (v35);
        }
      }

      v41 = *(a1 + 48);
      if (v41 == 2)
      {
        v42 = +[GKReporter reporter];
        [v42 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.p2pSuccess"];
      }

      else if (v41 == 5)
      {
        v42 = +[GKReporter reporter];
        [v42 reportEvent:@"com.apple.GameKit.multiplayer.realtime.connectionType" type:@"realtime.relaySuccess"];
      }

      else
      {
        if (!os_log_GKGeneral)
        {
          v55 = GKOSLoggers();
        }

        v42 = os_log_GKMatch;
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v76 = [v11 internal];
          v77 = [v76 debugDescription];
          v78 = [*(a1 + 40) stringForGKPeerConnectionState:*(a1 + 48)];
          *buf = 138412546;
          v109 = v77;
          v110 = 2112;
          v111 = v78;
          _os_log_error_impl(&dword_227904000, v42, OS_LOG_TYPE_ERROR, "Connection state not match for player: %@, state=%@, playerState=GKPlayerStateConnected", buf, 0x16u);
        }
      }

      v56 = [*(a1 + 40) transportContext];
      v57 = [v56 healthMonitorEnabled];

      if (!v57)
      {
        goto LABEL_49;
      }

      if (!os_log_GKGeneral)
      {
        v58 = GKOSLoggers();
      }

      v59 = os_log_GKMatch;
      if (os_log_type_enabled(v59, OS_LOG_TYPE_DEBUG))
      {
        [v11 internal];
        [objc_claimAutoreleasedReturnValue() debugDescription];
        objc_claimAutoreleasedReturnValue();
        __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_2();
      }

      v53 = [*(a1 + 40) healthMonitor];
      v54 = [v11 internal];
      v60 = [v54 playerID];
      [v53 startMonitor:v60];
    }

    else
    {
      v43 = +[GKReporter reporter];
      [v43 reportEvent:@"com.apple.GameKit.match" type:@"disconnect"];

      v44 = [*(a1 + 40) matchmaker];
      [v44 playerDisconnected:v11];

      v45 = *(a1 + 40);
      v46 = MEMORY[0x277CCACA8];
      v47 = [v11 internal];
      v48 = [v47 alias];
      v49 = [v46 stringWithFormat:@"Player disconnection detected: %@. If unexpected, Tap here to report.", v48];
      [v45 promptRadarAndRequestRemoteLogsWithDescriptionAddition:v49];

      v50 = [*(a1 + 40) transportContext];
      LODWORD(v48) = [v50 healthMonitorEnabled];

      if (!v48)
      {
LABEL_50:
        v61 = [*(a1 + 40) delegate];
        v62 = [*(a1 + 40) inviteDelegate];
        if (v61 | v62)
        {
          if (v61)
          {
            v63 = MEMORY[0x277CBEB18];
            v64 = [*(a1 + 40) allIDs];
            v65 = [v63 arrayWithArray:v64];

            v66 = +[GKLocalPlayer localPlayer];
            v67 = [v66 internal];
            v68 = [v67 playerID];
            [v65 removeObject:v68];

            [*(a1 + 40) sendStateCallbackForPlayer:v11 state:v81];
            if (v80)
            {
              [*(a1 + 40) conditionallyRelaunchPlayer:v11];
              [*(a1 + 40) sendQueuedPacketsForPlayer:v11];
            }

            else if (v79)
            {
              if ([*(*(a1 + 40) + 88) count] <= 1 && (objc_msgSend(*(a1 + 40), "recentlyBecameActive") & 1) == 0)
              {
                if (v94[5])
                {
                  if ([v65 count] == 1)
                  {
                    v69 = [v65 objectAtIndex:0];
                    v70 = [v11 internal];
                    v71 = [v70 playerID];
                    v72 = [v69 isEqualToString:v71];

                    if (v72)
                    {
                      [*(a1 + 40) conditionallyReinvitePlayer:v11 sessionToken:v94[5]];
                    }
                  }
                }
              }
            }
          }

          if (v62)
          {
            [*(a1 + 40) updateStateForPlayer:v11 state:v81];
            [*(a1 + 40) sendStateCallbackToDelegate:v62 forPlayer:v11 state:v81];
          }
        }

        else
        {
          [*(a1 + 40) deferStateCallbackForPlayer:v11 state:v81];
        }

        goto LABEL_66;
      }

      if (!os_log_GKGeneral)
      {
        v51 = GKOSLoggers();
      }

      v52 = os_log_GKMatch;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG))
      {
        [v11 internal];
        [objc_claimAutoreleasedReturnValue() debugDescription];
        objc_claimAutoreleasedReturnValue();
        __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_1();
      }

      v31 = [*(a1 + 40) healthMonitor];
      v53 = [v11 internal];
      v54 = [v53 playerID];
      [v31 stopMonitor:v54];
    }

LABEL_49:
    goto LABEL_50;
  }

  [*(a1 + 40) disconnect];
LABEL_67:
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 connectionInfo];
  v5 = [v4 objectForKey:@"match-version"];
  *(*(*(a1 + 48) + 8) + 24) = [v5 integerValue];

  v6 = [v3 connectionInfo];
  v7 = [v6 objectForKey:@"session-token"];
  v8 = *(*(a1 + 56) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if ([v3 playerState] != *(a1 + 72))
  {
    if (!os_log_GKGeneral)
    {
      v10 = GKOSLoggers();
    }

    v11 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 32);
      v13 = v11;
      v14 = [v12 internal];
      v15 = [v14 debugDescription];
      v16 = [*(a1 + 40) stringForGKPlayerConnectionState:{objc_msgSend(v3, "playerState")}];
      v17 = [*(a1 + 40) stringForGKPlayerConnectionState:*(a1 + 72)];
      v18 = 138412802;
      v19 = v15;
      v20 = 2112;
      v21 = v16;
      v22 = 2112;
      v23 = v17;
      _os_log_debug_impl(&dword_227904000, v13, OS_LOG_TYPE_DEBUG, "EventQueue for player %@ changing playerState from: %@ to %@", &v18, 0x20u);
    }

    [v3 setPlayerState:*(a1 + 72)];
    *(*(*(a1 + 64) + 8) + 24) = 1;
  }
}

- (void)connectionDidFailWithError:(id)error
{
  errorCopy = error;
  v4 = +[GKReporter reporter];
  [v4 reportEvent:@"com.apple.GameKit.match" type:@"connectionFail"];

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    [GKMatch connectionDidFailWithError:];
  }
}

- (void)transportDidFailWithError:(id)error
{
  errorCopy = error;
  v5 = +[GKReporter reporter];
  [v5 reportEvent:@"com.apple.GameKit.match" type:@"fail"];

  if (!os_log_GKGeneral)
  {
    v6 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
  {
    [GKMatch connectionDidFailWithError:];
  }

  delegate = [(GKMatch *)self delegate];

  if (delegate)
  {
    delegate2 = [(GKMatch *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if (v9)
    {
      delegate3 = [(GKMatch *)self delegate];
      [delegate3 match:self didFailWithError:errorCopy];
    }

    else
    {
      if (!os_log_GKGeneral)
      {
        v11 = GKOSLoggers();
      }

      if (os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR))
      {
        [GKMatch transportDidFailWithError:];
      }
    }
  }

  [(GKMatch *)self clearSessionWithReason:3];
  v12 = MEMORY[0x277CCACA8];
  localizedDescription = [errorCopy localizedDescription];
  v14 = [v12 stringWithFormat:@"Error detected in transport. Error: %@", localizedDescription];
  [(GKMatch *)self promptRadarAndRequestRemoteLogsWithDescriptionAddition:v14];
}

- (void)transportDidReceivePacket:(id)packet fromPlayerID:(id)d remoteRecipientID:(id)iD
{
  v81 = *MEMORY[0x277D85DE8];
  packetCopy = packet;
  dCopy = d;
  iDCopy = iD;
  v11 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:dCopy];
  if (v11)
  {
    if (iDCopy)
    {
      if (!os_log_GKGeneral)
      {
        v12 = GKOSLoggers();
      }

      v13 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v80 = iDCopy;
        _os_log_impl(&dword_227904000, v13, OS_LOG_TYPE_INFO, "Got data intended for remoteRecipientID = %@", buf, 0xCu);
      }

      v14 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:iDCopy];
    }

    else
    {
      v14 = +[GKLocalPlayer localPlayer];
    }

    v17 = v14;
    if (!os_log_GKGeneral)
    {
      v18 = GKOSLoggers();
    }

    v72 = v11;
    v19 = os_log_GKMatch;
    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
    {
      [GKMatch transportDidReceivePacket:v19 fromPlayerID:v17 remoteRecipientID:dCopy];
    }

    delegate = [(GKMatch *)self delegate];
    inviteDelegate = [(GKMatch *)self inviteDelegate];
    version = [(GKMatch *)self version];
    valid = [packetCopy valid];
    if (version)
    {
      if (!valid)
      {
        v24 = delegate;
        if (!os_log_GKGeneral)
        {
          v38 = GKOSLoggers();
        }

        v39 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
        v11 = v72;
        v33 = inviteDelegate;
        if (!v39)
        {
          goto LABEL_71;
        }

        [GKMatch transportDidReceivePacket:fromPlayerID:remoteRecipientID:];
        goto LABEL_70;
      }

      packetType = [packetCopy packetType];
      v24 = delegate;
      if (packetType <= 15)
      {
        if (packetType == 1)
        {
          data = [packetCopy data];
          -[GKMatch setVersion:](self, "setVersion:", *[data bytes]);

          v11 = v72;
LABEL_70:
          v33 = inviteDelegate;
          goto LABEL_71;
        }

        if (packetType == 2)
        {
          if ([v17 isLocalPlayer])
          {
            v71 = v17;
            data2 = [packetCopy data];
            v55 = [GKInviteMessageSupport extractPropertiesWithData:data2];

            if (v55)
            {
              v68 = iDCopy;
              v69 = dCopy;
              v76 = 0u;
              v77 = 0u;
              v74 = 0u;
              v75 = 0u;
              allKeys = [v55 allKeys];
              v57 = [allKeys countByEnumeratingWithState:&v74 objects:v78 count:16];
              if (v57)
              {
                v58 = v57;
                v59 = *v75;
                do
                {
                  for (i = 0; i != v58; ++i)
                  {
                    if (*v75 != v59)
                    {
                      objc_enumerationMutation(allKeys);
                    }

                    v61 = *(*(&v74 + 1) + 8 * i);
                    v62 = [v55 objectForKeyedSubscript:v61];
                    [(GKMatch *)self updateProperties:v62 playerID:v61];
                  }

                  v58 = [allKeys countByEnumeratingWithState:&v74 objects:v78 count:16];
                }

                while (v58);
              }

              iDCopy = v68;
              dCopy = v69;
            }

            v17 = v71;
            v24 = delegate;
          }

          data3 = [packetCopy data];
          v11 = v72;
          [(GKMatch *)self _delegate:inviteDelegate didReceiveData:data3 forRecipient:v17 fromPlayer:v72];

          v33 = inviteDelegate;
          goto LABEL_71;
        }

        v11 = v72;
        if (packetType != 8)
        {
          goto LABEL_60;
        }

        data4 = [packetCopy data];
        [(GKMatch *)self receivedPlayerSyncData:data4];
LABEL_69:

        goto LABEL_70;
      }

      v11 = v72;
      if (packetType <= 63)
      {
        if (packetType == 16)
        {
          v53 = [(GKMatch *)self sequenceFromPacket:packetCopy];
          healthMonitor = [(GKMatch *)self healthMonitor];
          internal = [v72 internal];
          playerID = [internal playerID];
          [healthMonitor receivedPing:playerID sequenceNumber:v53];
          goto LABEL_65;
        }

        if (packetType == 17)
        {
          v25 = [(GKMatch *)self sequenceFromPacket:packetCopy];
          healthMonitor = [(GKMatch *)self healthMonitor];
          internal = [v72 internal];
          playerID = [internal playerID];
          [healthMonitor receivedPong:playerID sequenceNumber:v25];
LABEL_65:

          goto LABEL_70;
        }

LABEL_60:
        if (!os_log_GKGeneral)
        {
          v50 = GKOSLoggers();
        }

        v51 = os_log_GKMatch;
        v52 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG);
        v33 = inviteDelegate;
        if (!v52)
        {
          goto LABEL_71;
        }

        [GKMatch transportDidReceivePacket:v51 fromPlayerID:? remoteRecipientID:?];
        goto LABEL_70;
      }

      if (packetType != 64)
      {
        if (packetType != 128)
        {
          goto LABEL_60;
        }

        data4 = [packetCopy data];
        if (!v24)
        {
          [(GKMatch *)self queueData:data4 withEventQueueForPlayer:v72 forRecipient:v17];
          goto LABEL_69;
        }

LABEL_68:
        [(GKMatch *)self deliverData:data4 forRecipient:v17 fromPlayer:v72];
        goto LABEL_69;
      }

      v33 = inviteDelegate;
      if (v24)
      {
        data4 = [packetCopy data];
        goto LABEL_68;
      }
    }

    else
    {
      if (valid)
      {
        if (!os_log_GKGeneral)
        {
          v29 = GKOSLoggers();
        }

        v30 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v31 = v30;
          version2 = [packetCopy version];
          *buf = 67109120;
          LODWORD(v80) = version2;
          _os_log_impl(&dword_227904000, v31, OS_LOG_TYPE_INFO, "packet version: %d, expecting version 0", buf, 8u);
        }
      }

      v33 = inviteDelegate;
      if (!(delegate | inviteDelegate))
      {
        if (!os_log_GKGeneral)
        {
          v40 = GKOSLoggers();
        }

        v41 = os_log_GKMatch;
        if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
        {
          v42 = v41;
          internal2 = [v72 internal];
          conciseDescription = [internal2 conciseDescription];
          *buf = 138412290;
          v80 = conciseDescription;
          _os_log_impl(&dword_227904000, v42, OS_LOG_TYPE_INFO, "Queuing data for player; %@ (no delegate)", buf, 0xCu);
        }

        data5 = [packetCopy data];
        [(GKMatch *)self queueData:data5 withEventQueueForPlayer:v72 forRecipient:v17];

        v24 = delegate;
        v11 = v72;
        goto LABEL_70;
      }

      v34 = delegate;
      v24 = delegate;
      v11 = v72;
      if (v34)
      {
        data6 = [packetCopy data];
        [(GKMatch *)self deliverData:data6 forRecipient:v17 fromPlayer:v72];

        v33 = inviteDelegate;
      }

      if (!v33)
      {
        goto LABEL_71;
      }

      v70 = v17;
      v36 = v33;
      if (objc_opt_respondsToSelector())
      {
        data7 = [packetCopy data];
        [v36 match:self didReceiveData:data7 fromRemotePlayer:v72];
      }

      else
      {
        if ((objc_opt_respondsToSelector() & 1) == 0)
        {
          v17 = v70;
          if (!os_log_GKGeneral)
          {
            v64 = GKOSLoggers();
          }

          v65 = os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR);
          v33 = inviteDelegate;
          if (!v65)
          {
            goto LABEL_71;
          }

          [GKMatch transportDidReceivePacket:fromPlayerID:remoteRecipientID:];
          goto LABEL_70;
        }

        if (GKApplicationLinkedOnOrAfter(917504, 659456))
        {
          v17 = v70;
          if (!os_log_GKGeneral)
          {
            v47 = GKOSLoggers();
          }

          v48 = os_log_type_enabled(os_log_GKDeveloper, OS_LOG_TYPE_ERROR);
          v33 = inviteDelegate;
          if (!v48)
          {
            goto LABEL_71;
          }

          [GKMatch _delegate:didReceiveData:forRecipient:fromPlayer:];
          goto LABEL_70;
        }

        data7 = [packetCopy data];
        internal3 = [v72 internal];
        playerID2 = [internal3 playerID];
        v36 = inviteDelegate;
        [inviteDelegate match:self didReceiveData:data7 fromPlayer:playerID2];
      }

      v33 = v36;
      v17 = v70;
    }

LABEL_71:

    goto LABEL_72;
  }

  if (!os_log_GKGeneral)
  {
    v15 = GKOSLoggers();
  }

  v16 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v80 = dCopy;
    _os_log_impl(&dword_227904000, v16, OS_LOG_TYPE_INFO, "Data from playerID: %@ without player mapping", buf, 0xCu);
  }

LABEL_72:
}

- (void)transportDidUpdateWithInfo:(id)info
{
  infoCopy = info;
  transportContext = [(GKMatch *)self transportContext];
  [transportContext updateWithInfoFromTransport:infoCopy];
}

- (void)retryLimitHit
{
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  v4 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    *v5 = 0;
    _os_log_impl(&dword_227904000, v4, OS_LOG_TYPE_INFO, "We have reached the limit of retry for pending connection checker.", v5, 2u);
  }

  [(GKMatch *)self promptRadarAndRequestRemoteLogsWithDescriptionAddition:@"Invitation failed after retry. Please tap to file a radar."];
}

- (void)sendPingTo:(id)to sequence:(int64_t)sequence
{
  toCopy = to;
  v7 = [(GKMatch *)self matchPacketWithPacketType:16 sequence:sequence];
  [(GKMatch *)self sendMeasurementData:v7 packetType:16 toPlayerID:toCopy];
}

- (void)sendPongTo:(id)to sequence:(int64_t)sequence
{
  toCopy = to;
  v7 = [(GKMatch *)self matchPacketWithPacketType:17 sequence:sequence];
  [(GKMatch *)self sendMeasurementData:v7 packetType:17 toPlayerID:toCopy];
}

- (void)monitorStatsUpdated:(id)updated
{
  updatedCopy = updated;
  [updatedCopy overallLatency];
  v6 = v5;
  [updatedCopy overallAverageLatency];
  v8 = v7;
  [updatedCopy overallPacketLoss];
  v10 = v9;

  v11 = [MEMORY[0x277CCACA8] stringWithFormat:@"AVG: %.2fms, CUR: %.2fms, LOSS: %.2f%%", v8, v6, v10 * 100.0];
  objc_initWeak(&location, self);
  v12 = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__GKMatch_monitorStatsUpdated___block_invoke;
  block[3] = &unk_2785DF2F8;
  objc_copyWeak(&v16, &location);
  v15 = v11;
  v13 = v11;
  dispatch_async(v12, block);

  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);
}

void __31__GKMatch_monitorStatsUpdated___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!os_log_GKGeneral)
  {
    v3 = GKOSLoggers();
  }

  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_DEBUG))
  {
    __31__GKMatch_monitorStatsUpdated___block_invoke_cold_1();
  }

  v4 = [WeakRetained transportContext];
  v5 = [v4 daemonProxy];
  [v5 emitMultiplayerMessage:*(a1 + 32)];
}

- (id)matchPacketWithPacketType:(unsigned __int8)type sequence:(int64_t)sequence
{
  sequenceCopy = sequence;
  v4 = [MEMORY[0x277CBEA90] dataWithBytes:&sequenceCopy length:8];

  return v4;
}

- (int64_t)sequenceFromPacket:(id)packet
{
  data = [packet data];
  v4 = data;
  if (data)
  {
    v5 = *[data bytes];
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v6 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sequenceFromPacket:];
    }

    v5 = -1;
  }

  return v5;
}

- (void)sendMeasurementData:(id)data packetType:(unsigned __int8)type toPlayerID:(id)d
{
  typeCopy = type;
  v19[1] = *MEMORY[0x277D85DE8];
  dCopy = d;
  v9 = [(GKMatch *)self packet:typeCopy data:data];
  v10 = [(GKThreadsafeDictionary *)self->_playersByIdentifier objectForKey:dCopy];
  if (v10)
  {
    transport = [(GKMatch *)self transport];
    v19[0] = v10;
    v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
    transportContext = [(GKMatch *)self transportContext];
    v18 = 0;
    [transport sendScopedData:v9 toPlayers:v12 dataMode:1 dataScope:0 transportContext:transportContext error:&v18];
    v14 = v18;

    if (v14)
    {
      if (!os_log_GKGeneral)
      {
        v15 = GKOSLoggers();
      }

      v16 = os_log_GKMatch;
      if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
      {
        [GKMatch sendMeasurementData:v16 packetType:? toPlayerID:?];
      }
    }
  }

  else
  {
    if (!os_log_GKGeneral)
    {
      v17 = GKOSLoggers();
    }

    if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_ERROR))
    {
      [GKMatch sendMeasurementData:packetType:toPlayerID:];
    }

    [(GKMatch *)self setHealthMonitor:0];
    v14 = 0;
  }
}

- (id)dataFromBase64String:(id)string
{
  v3 = MEMORY[0x277CBEA90];
  stringCopy = string;
  v5 = [[v3 alloc] initWithBase64EncodedString:stringCopy options:0];

  return v5;
}

- (id)stringForGKPlayerConnectionState:(int64_t)state
{
  v12 = *MEMORY[0x277D85DE8];
  if (state < 3)
  {
    return off_2785DF330[state];
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithInteger:state];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Invalid connection state: GKPlayerConnectionState %@", &v10, 0xCu);
  }

  return 0;
}

- (id)stringForGKPeerConnectionState:(int)state
{
  v3 = *&state;
  v12 = *MEMORY[0x277D85DE8];
  if (state < 6)
  {
    return off_2785DF348[state];
  }

  if (!os_log_GKGeneral)
  {
    v5 = GKOSLoggers();
  }

  v6 = os_log_GKMatch;
  if (os_log_type_enabled(os_log_GKMatch, OS_LOG_TYPE_INFO))
  {
    v7 = MEMORY[0x277CCABB0];
    v8 = v6;
    v9 = [v7 numberWithInt:v3];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_227904000, v8, OS_LOG_TYPE_INFO, "Invalid connection state: GKPeerConnectionState %@", &v10, 0xCu);
  }

  return 0;
}

- (void)reportInviteSentWithApproach:(unint64_t)approach isHosted:(BOOL)hosted recipients:(id)recipients
{
  hostedCopy = hosted;
  recipientsCopy = recipients;
  multiplayerActivityReporter = [(GKMatch *)self multiplayerActivityReporter];
  transportContext = [(GKMatch *)self transportContext];
  [multiplayerActivityReporter onInviteSentWithApproach:approach isHosted:hostedCopy recipients:recipientsCopy transportContext:transportContext];
}

- (GKMatchDelegatePrivate)inviteDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_inviteDelegateWeak);

  return WeakRetained;
}

- (GKMatchmaker)matchmaker
{
  WeakRetained = objc_loadWeakRetained(&self->_matchmaker);

  return WeakRetained;
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __48__GKMatch_refreshPendingConnectionCheckIfNeeded__block_invoke_176_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendData:toPlayers:dataMode:error:.cold.1()
{
  OUTLINED_FUNCTION_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendDataToAllPlayers:withDataMode:error:.cold.1()
{
  OUTLINED_FUNCTION_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __56__GKMatch_chooseBestHostingPlayerWithCompletionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)promptRadarAndRequestRemoteLogsWithDescriptionAddition:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)playerIDs
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)chooseBestHostPlayerWithCompletionHandler:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)sendData:toPlayers:withDataMode:error:.cold.1()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __34__GKMatch_clearSessionWithReason___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_delegate:(void *)a1 didReceiveData:forRecipient:fromPlayer:.cold.1(void *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() internal];
  v4 = [v3 playerID];
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_227904000, v1, OS_LOG_TYPE_ERROR, "received data from playerID: %@ who is NOT connected!", v5, 0xCu);
}

- (void)_delegate:didReceiveData:forRecipient:fromPlayer:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_delegate:didReceiveData:forRecipient:fromPlayer:.cold.3()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)withEventQueueForPlayer:create:perform:.cold.1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v4, "_playerEventQueues created for player: %@", v5);
}

- (void)withEventQueueForPlayer:create:perform:.cold.2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  _os_log_error_impl(&dword_227904000, v4, OS_LOG_TYPE_ERROR, "No GKMatchEventQueue for player: %@", v5, 0xCu);
}

void __30__GKMatch_putMultiplayerGroup__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __28__GKMatch_addPlayerToGroup___block_invoke_288_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_17() groupID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_11(&dword_227904000, v5, v6, "Error attempting to update group to the server: %@ %@", v7, v8, v9, v10);
}

- (void)setAutomatchPlayerCount:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)connectToPlayers:version:invitedByLocalPlayer:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)connectToPlayers:version:invitedByLocalPlayer:completionHandler:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_cold_1(void *a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCABB0];
  v6 = a1;
  v7 = [v5 numberWithInt:a2];
  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(*a3 + 176)];
  v11 = 138412546;
  v12 = v7;
  OUTLINED_FUNCTION_6();
  v13 = v9;
  OUTLINED_FUNCTION_14(&dword_227904000, v6, v10, "Calculating _expectedPlayerCount + %@ = %@", &v11);
}

void __75__GKMatch_connectToPlayers_version_invitedByLocalPlayer_completionHandler___block_invoke_301_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __47__GKMatch_connectToGuestPlayer_withHostPlayer___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_13() internal];
  v5 = [v4 debugDescription];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x16u);
}

- (void)connectToNearbyPlayer:(void *)a1 withConnectionData:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() internal];
  v4 = [v3 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0xCu);
}

void __52__GKMatch_connectToNearbyPlayer_withConnectionData___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*a1 + 176);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v6, "Calculating _expectedPlayerCount + 1 = %@", v7);
}

void __46__GKMatch_syncPlayers_forJoinType_toInvitees___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendInviteData:(void *)a1 .cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_13() transportContext];
  v4 = [MEMORY[0x277CCACC8] callStackSymbols];
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v5, v6, v7, v8, v9, 0x16u);
}

- (void)sendVersionData:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sendVersionData:(void *)a1 toPlayer:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_17() internal];
  v4 = [v3 playerID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_11(&dword_227904000, v5, v6, "Failed to send version data to playerID: %@, error: %@", v7, v8, v9, v10);
}

void __45__GKMatch_deferStateCallbackForPlayer_state___block_invoke_cold_1(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [v4 internal];
  v7 = [v6 debugDescription];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:*a3];
  v11 = 138412546;
  v12 = v7;
  OUTLINED_FUNCTION_6();
  v13 = v9;
  OUTLINED_FUNCTION_14(&dword_227904000, v5, v10, "GKMatch Queue for player %@ changed deferedPlayerState to %@", &v11);
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_1(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CCABB0];
  v3 = *(*a1 + 176);
  v4 = a2;
  v5 = [v2 numberWithUnsignedInteger:v3];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v6, "Calculating (updateStateForPlayer) _expectedPlayerCount - 1 = %@", v7);
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

void __38__GKMatch_updateStateForPlayer_state___block_invoke_cold_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [OUTLINED_FUNCTION_13() internal];
  v5 = [v4 debugDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)sendStateCallbackToDelegate:forPlayer:state:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendStateCallbackToDelegate:forPlayer:state:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

- (void)conditionallyReinvitePlayer:sessionToken:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)conditionallyReinvitePlayer:sessionToken:.cold.2()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __52__GKMatch_conditionallyReinvitePlayer_sessionToken___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)conditionallyRelaunchPlayer:(void *)a1 .cold.1(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a2 internal];
  v5 = [v4 conciseDescription];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0xCu);
}

- (void)relayDidReceivePushData:completionHandler:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2112;
  v4 = v0;
  OUTLINED_FUNCTION_14(&dword_227904000, v1, v1, "relaypush for match: %p - assigning sessionToken to %@", v2);
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_2_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_18(&dword_227904000, v0, v1, "relayPush will not act on push notification because couldn't load player (%@) due to error: %@");
}

void __53__GKMatch_relayDidReceivePushData_completionHandler___block_invoke_363_cold_1()
{
  OUTLINED_FUNCTION_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_1()
{
  OUTLINED_FUNCTION_16(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_376_cold_2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_379_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_1()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v4, "Stopping monitor for player: %@", v5);
}

void __49__GKMatch_connectionDidChangeWithState_playerID___block_invoke_381_cold_2()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_15(v2, v3, 5.7779e-34);
  OUTLINED_FUNCTION_12(&dword_227904000, v4, v4, "Starting monitor for player: %@", v5);
}

- (void)connectionDidFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)transportDidFailWithError:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transportDidReceivePacket:(void *)a1 fromPlayerID:(uint64_t)a2 remoteRecipientID:(uint64_t)a3 .cold.1(void *a1, uint64_t a2, uint64_t a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [OUTLINED_FUNCTION_17() internal];
  v7 = [v6 playerID];
  OUTLINED_FUNCTION_0_2();
  v10 = a3;
  OUTLINED_FUNCTION_14(&dword_227904000, v3, v8, "Data intended for playerID: %@ from playerID: %@", v9);
}

- (void)transportDidReceivePacket:fromPlayerID:remoteRecipientID:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)transportDidReceivePacket:(void *)a1 fromPlayerID:remoteRecipientID:.cold.3(void *a1)
{
  v2 = a1;
  [OUTLINED_FUNCTION_13() packetType];
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 8u);
}

- (void)transportDidReceivePacket:fromPlayerID:remoteRecipientID:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __31__GKMatch_monitorStatsUpdated___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_7_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)sequenceFromPacket:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)sendMeasurementData:(void *)a1 packetType:toPlayerID:.cold.1(void *a1)
{
  v2 = a1;
  v3 = [OUTLINED_FUNCTION_17() internal];
  v4 = [v3 playerID];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_11(&dword_227904000, v5, v6, "Failed to send measurement data to playerID: %@, error: %@", v7, v8, v9, v10);
}

- (void)sendMeasurementData:packetType:toPlayerID:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

@end