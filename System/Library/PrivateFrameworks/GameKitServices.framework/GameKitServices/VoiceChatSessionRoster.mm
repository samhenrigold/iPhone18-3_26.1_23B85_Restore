@interface VoiceChatSessionRoster
- (BOOL)recalculateFocusRating;
- (VoiceChatSessionRoster)initWithGameStateSession:(id)session peerID:(id)d voiceChatSession:(id)chatSession sendQueue:(id)queue;
- (id)subscribedPeers;
- (void)calculateFocus:(id)focus;
- (void)cleanup;
- (void)configureDeviceRating;
- (void)dealloc;
- (void)peer:(id)peer didChangeState:(unsigned int)state;
- (void)processSubscribeBeacon:(tagVoiceChatBeacon *)beacon beaconState:(id)state fromPeer:(id)peer;
- (void)processUnsubscribeBeacon:(tagVoiceChatBeacon *)beacon beaconState:(id)state fromPeer:(id)peer;
- (void)receivedBeacon:(id)beacon fromPeer:(id)peer;
- (void)sendBeacon:(tagVoiceChatBeacon *)beacon ToPeer:(id)peer;
- (void)sendBeacons;
- (void)startBeacon;
- (void)stopBeacon;
- (void)updateBeacon;
@end

@implementation VoiceChatSessionRoster

- (VoiceChatSessionRoster)initWithGameStateSession:(id)session peerID:(id)d voiceChatSession:(id)chatSession sendQueue:(id)queue
{
  v13.receiver = self;
  v13.super_class = VoiceChatSessionRoster;
  v10 = [(VoiceChatSessionRoster *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_gkvs = chatSession;
    objc_storeWeak(&v10->_gameStateSession, session);
    v11->_peerID = [d copy];
    v11->_connectedPeers = [objc_msgSend(session "connectedPeerIDs")];
    dispatch_retain(queue);
    v11->_sendQueue = queue;
    pthread_mutex_init(&v11->resMutex, 0);
    *&v11->_needsUpdateBeaconList = 1;
    *&v11->_chosenFocusRating = 0;
    *&v11->_deviceRating = 0;
    v11->_isBeaconUp = 0;
    [(VoiceChatSessionRoster *)v11 configureDeviceRating];
    v11->_peerStateTable = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:10];
    v11->_hasFocus = 0;
  }

  return v11;
}

- (void)dealloc
{
  sendQueue = self->_sendQueue;
  if (sendQueue)
  {
    dispatch_release(sendQueue);
    self->_sendQueue = 0;
  }

  objc_storeWeak(&self->_gameStateSession, 0);

  self->_peerID = 0;
  self->_connectedPeers = 0;

  self->_peerStateTable = 0;
  v4.receiver = self;
  v4.super_class = VoiceChatSessionRoster;
  [(VoiceChatSessionRoster *)&v4 dealloc];
}

- (void)cleanup
{
  pthread_mutex_lock(&self->resMutex);
  self->_gkvs = 0;

  pthread_mutex_unlock(&self->resMutex);
}

- (void)configureDeviceRating
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  *v19 = 0u;
  v20 = 0u;
  v8 = 64;
  sysctlbyname("hw.model", v19, &v8, 0, 0);
  if (!strncasecmp("j1", v19, 2uLL) || !strncasecmp("j2", v19, 2uLL) || !strncasecmp("n94", v19, 3uLL) || !strncasecmp("k93", v19, 3uLL) || !strncasecmp("k94", v19, 3uLL) || !strncasecmp("k95", v19, 3uLL))
  {
    v3 = 40;
    goto LABEL_13;
  }

  if (!strncasecmp("n90", v19, 3uLL) || !strncasecmp("n92", v19, 3uLL) || !strncasecmp("n81", v19, 3uLL))
  {
    v7 = 30;
  }

  else
  {
    if (strncasecmp("n88", v19, 3uLL))
    {
      v3 = 45;
LABEL_13:
      self->_deviceRating = v3;
      [(GKVoiceChatSessionInternal *)self->_gkvs setIsUsingSuppression:0];
      goto LABEL_14;
    }

    v7 = 15;
  }

  self->_deviceRating = v7;
LABEL_14:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      deviceRating = self->_deviceRating;
      *buf = 136316162;
      v10 = v4;
      v11 = 2080;
      v12 = "[VoiceChatSessionRoster configureDeviceRating]";
      v13 = 1024;
      v14 = 1256;
      v15 = 2080;
      v16 = v19;
      v17 = 1024;
      v18 = deviceRating;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d hwModel %s device rating is %u", buf, 0x2Cu);
    }
  }
}

- (BOOL)recalculateFocusRating
{
  v32 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->resMutex);
  v3 = self->_gkvs;
  pthread_mutex_unlock(&self->resMutex);
  peerCount = [(GKVoiceChatSessionInternal *)v3 peerCount];
  goodChannels = [(GKVoiceChatSessionInternal *)v3 goodChannels];
  talkingPeersLimit = [(GKVoiceChatSessionInternal *)v3 talkingPeersLimit];

  if (peerCount - 4 >= 5)
  {
    v7 = peerCount >> 1;
  }

  else
  {
    v7 = dword_24E590878[peerCount - 4];
  }

  if (goodChannels >= v7)
  {
    v8 = peerCount;
  }

  else
  {
    v8 = goodChannels;
  }

  if (v8 >= talkingPeersLimit)
  {
    v9 = talkingPeersLimit;
  }

  else
  {
    v9 = v8;
  }

  focusRating = self->_focusRating;
  v11 = self->_deviceRating | (v9 << 8);
  if (v11 != focusRating)
  {
    if (VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v12 = VRTraceErrorLogLevelToCSTR();
      v13 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        deviceRating = self->_deviceRating;
        v14 = self->_focusRating;
        v18 = 136316674;
        v19 = v12;
        v20 = 2080;
        v21 = "[VoiceChatSessionRoster recalculateFocusRating]";
        v22 = 1024;
        v23 = 1300;
        v24 = 1024;
        v25 = v14;
        v26 = 1024;
        v27 = v11;
        v28 = 1024;
        v29 = v9;
        v30 = 1024;
        v31 = deviceRating;
        _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Focus rating updated from %d to %d (%d and %d)", &v18, 0x34u);
      }
    }

    pthread_mutex_lock(&self->resMutex);
    self->_focusRating = v11;
    focusID = self->_focusID;
    if (focusID == [(NSString *)self->_peerID longLongValue])
    {
      self->_chosenFocusRating = self->_focusRating;
    }

    pthread_mutex_unlock(&self->resMutex);
  }

  return v11 != focusRating;
}

- (void)startBeacon
{
  v15 = *MEMORY[0x277D85DE8];
  [(VoiceChatSessionRoster *)self recalculateFocusRating];
  pthread_mutex_lock(&self->resMutex);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectedPeers = self->_connectedPeers;
  v4 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(connectedPeers);
        }

        v8 = *(*(&v10 + 1) + 8 * i);
        v9 = [(NSMutableDictionary *)self->_peerStateTable objectForKeyedSubscript:v8];
        if (!v9)
        {
          v9 = objc_alloc_init(VoiceChatSessionBeaconState);
          [(NSMutableDictionary *)self->_peerStateTable setObject:v9 forKeyedSubscript:v8];
        }

        [(VoiceChatSessionBeaconState *)v9 setNeedsSend:1];
        [(VoiceChatSessionBeaconState *)v9 setTypeToSend:0];
        self->_needsUpdateBeaconList = 1;
      }

      v5 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  if (!self->_isBeaconUp)
  {
    self->_isBeaconUp = 1;
  }

  [(VoiceChatSessionRoster *)self sendBeacons];
  self->_chosenFocusRating = 0;
  self->_focusID = 0;
  self->_hasFocus = 0;
  if (!self->_waitingToCalculateFocus)
  {
    self->_waitingToCalculateFocus = 1;
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_calculateFocus_ toTarget:self withObject:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.5)}];
  }

  pthread_mutex_unlock(&self->resMutex);
}

- (void)updateBeacon
{
  v15 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->resMutex);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  connectedPeers = self->_connectedPeers;
  v4 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v11;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v11 != v6)
        {
          objc_enumerationMutation(connectedPeers);
        }

        v8 = [(NSMutableDictionary *)self->_peerStateTable objectForKeyedSubscript:*(*(&v10 + 1) + 8 * i)];
        if (v8)
        {
          v9 = v8;
          [v8 setNeedsSend:1];
          [v9 setTypeToSend:0];
          self->_needsUpdateBeaconList = 1;
        }
      }

      v5 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v5);
  }

  [(VoiceChatSessionRoster *)self sendBeacons];
  if (!self->_waitingToCalculateFocus)
  {
    self->_waitingToCalculateFocus = 1;
    [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_calculateFocus_ toTarget:self withObject:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.5)}];
  }

  pthread_mutex_unlock(&self->resMutex);
}

- (void)stopBeacon
{
  v14 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->resMutex);
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedPeers = self->_connectedPeers;
  v4 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(connectedPeers);
        }

        v8 = [(NSMutableDictionary *)self->_peerStateTable objectForKeyedSubscript:*(*(&v9 + 1) + 8 * i)];
        [v8 setNeedsSend:1];
        [v8 setTypeToSend:1];
      }

      v5 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  if (self->_isBeaconUp)
  {
    [(VoiceChatSessionRoster *)self sendBeacons];
    self->_isBeaconUp = 0;
  }

  self->_chosenFocusRating = 0;
  self->_focusID = 0;
  self->_hasFocus = 0;
  pthread_mutex_unlock(&self->resMutex);
}

- (void)sendBeacon:(tagVoiceChatBeacon *)beacon ToPeer:(id)peer
{
  v6 = -[GKVoiceChatSessionMessage initWithPayload:conferenceID:subtype:]([GKVoiceChatSessionMessage alloc], "initWithPayload:conferenceID:subtype:", [MEMORY[0x277CBEA90] dataWithBytesNoCopy:beacon length:20 freeWhenDone:0], -[GKVoiceChatSessionInternal conferenceID](self->_gkvs, "conferenceID"), 1);
  v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:peer];
  gameStateSession = [(VoiceChatSessionRoster *)self gameStateSession];
  sendQueue = self->_sendQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__VoiceChatSessionRoster_sendBeacon_ToPeer___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = gameStateSession;
  block[5] = v6;
  block[6] = v7;
  dispatch_async(sendQueue, block);
}

- (void)sendBeacons
{
  v31 = *MEMORY[0x277D85DE8];
  if (self->_isBeaconUp)
  {
    v20 = objc_alloc_init(MEMORY[0x277CCA8B0]);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:1];
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:10];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    connectedPeers = self->_connectedPeers;
    v6 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = *v22;
      for (i = *v22; ; i = *v22)
      {
        if (i != v9)
        {
          objc_enumerationMutation(connectedPeers);
        }

        v11 = *(*(&v21 + 1) + 8 * v8);
        v12 = [(NSMutableDictionary *)self->_peerStateTable objectForKeyedSubscript:v11];
        if ([v12 needsSend])
        {
          [v4 addObject:v11];
          memset(buf, 170, 20);
          *&buf[4] = bswap32([v12 typeToSend]);
          receivedState = [v12 receivedState];
          v14 = bswap32(self->_focusID);
          *&buf[12] = bswap32(self->_focusRating);
          *&buf[16] = v14;
          *buf = bswap32(receivedState);
          *&buf[8] = 0x1000000;
          if ([v3 count])
          {
            [v3 setObject:v11 atIndexedSubscript:0];
          }

          else
          {
            [v3 addObject:v11];
          }

          [(VoiceChatSessionRoster *)self sendBeacon:buf ToPeer:v3];
          [v12 setNeedsSend:0];
          if ([v12 typeToSend])
          {
            v15 = 2;
          }

          else
          {
            v15 = 1;
          }

          [v12 setSentState:v15];
        }

        if (++v8 >= v7)
        {
          v16 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v21 objects:v30 count:16];
          if (!v16)
          {
            break;
          }

          v7 = v16;
          v8 = 0;
        }
      }
    }

    self->_needsUpdateBeaconList = 0;
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v17 = VRTraceErrorLogLevelToCSTR();
      v18 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v4)
        {
          uTF8String = [objc_msgSend_description(v4) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        *&buf[4] = v17;
        *&buf[12] = 2080;
        *&buf[14] = "[VoiceChatSessionRoster sendBeacons]";
        v26 = 1024;
        v27 = 1475;
        v28 = 2080;
        v29 = uTF8String;
        _os_log_impl(&dword_24E50C000, v18, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d sendBeacons : sendPeerList %s ", buf, 0x26u);
      }
    }
  }
}

- (void)calculateFocus:(id)focus
{
  v42 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  [MEMORY[0x277CCACC8] sleepUntilDate:focus];
  pthread_mutex_lock(&self->resMutex);
  chosenFocusRating = self->_chosenFocusRating;
  focusID = self->_focusID;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  connectedPeers = self->_connectedPeers;
  v9 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v25 objects:v41 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(connectedPeers);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_peerStateTable objectForKeyedSubscript:v13];
        if ([v14 receivedState] == 1)
        {
          lastReceivedBeacon = [v14 lastReceivedBeacon];
          v16 = *(lastReceivedBeacon + 12);
          if (v16 > chosenFocusRating || v16 == chosenFocusRating && focusID > [v13 longLongValue])
          {
            focusID = [v13 longLongValue];
            chosenFocusRating = *(lastReceivedBeacon + 12);
          }
        }
      }

      v10 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v25 objects:v41 count:16];
    }

    while (v10);
  }

  focusRating = self->_focusRating;
  if (focusRating <= chosenFocusRating)
  {
    if (chosenFocusRating != focusRating)
    {
      goto LABEL_18;
    }

    p_peerID = &self->_peerID;
    if (focusID <= [(NSString *)self->_peerID longLongValue])
    {
      goto LABEL_18;
    }
  }

  else
  {
    p_peerID = &self->_peerID;
    chosenFocusRating = self->_focusRating;
  }

  focusID = [(NSString *)*p_peerID longLongValue];
LABEL_18:
  if (focusID == self->_focusID)
  {
    v19 = 0;
  }

  else
  {
    self->_focusID = focusID;
    v19 = 1;
  }

  self->_chosenFocusRating = chosenFocusRating;
  self->_waitingToCalculateFocus = 0;
  self->_hasFocus = 1;
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v23 = self->_chosenFocusRating;
      v22 = self->_focusID;
      *buf = 136316418;
      v30 = v20;
      v31 = 2080;
      v32 = "[VoiceChatSessionRoster calculateFocus:]";
      v33 = 1024;
      v34 = 1545;
      v35 = 1024;
      v36 = v22;
      v37 = 1024;
      v38 = v23;
      v39 = 1024;
      v40 = v19;
      _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d The focus that we calculated is %u with value %d.  did change? %d", buf, 0x2Eu);
    }
  }

  v24 = self->_gkvs;
  pthread_mutex_unlock(&self->resMutex);
  [(GKVoiceChatSessionInternal *)v24 updatedFocusID:self->_focusID];
}

- (void)peer:(id)peer didChangeState:(unsigned int)state
{
  v25 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->resMutex);
  if (state == 5)
  {
LABEL_4:
    if (([(NSMutableArray *)self->_connectedPeers containsObject:peer]& 1) == 0)
    {
      self->_needsUpdateBeaconList = 1;
      v7 = [peer copy];
      [(NSMutableArray *)self->_connectedPeers addObject:v7];
      v8 = objc_alloc_init(VoiceChatSessionBeaconState);
      [(VoiceChatSessionBeaconState *)v8 setNeedsSend:1];
      [(VoiceChatSessionBeaconState *)v8 setTypeToSend:0];
      [(NSMutableDictionary *)self->_peerStateTable setObject:v8 forKeyedSubscript:v7];
    }

    goto LABEL_12;
  }

  if (state != 3)
  {
    if (state == 2)
    {
      goto LABEL_4;
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  if (![(NSMutableArray *)self->_connectedPeers containsObject:peer])
  {
    goto LABEL_12;
  }

  v9 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_peerStateTable objectForKeyedSubscript:{peer), "receivedState"}];
  v10 = v9 == 1;
  if (v9 == 1)
  {
    focusID = self->_focusID;
    if (focusID == [peer longLongValue])
    {
      self->_chosenFocusRating = 0;
      self->_focusID = 0;
      self->_hasFocus = 0;
      if (!self->_waitingToCalculateFocus)
      {
        self->_waitingToCalculateFocus = 1;
        [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_calculateFocus_ toTarget:self withObject:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.5)}];
      }
    }
  }

  [(NSMutableArray *)self->_connectedPeers removeObject:peer];
  [(NSMutableDictionary *)self->_peerStateTable removeObjectForKey:peer];
LABEL_13:
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v12 = VRTraceErrorLogLevelToCSTR();
    v13 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      connectedPeers = self->_connectedPeers;
      if (connectedPeers)
      {
        uTF8String = [objc_msgSend_description(connectedPeers) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v17 = 136315906;
      v18 = v12;
      v19 = 2080;
      v20 = "[VoiceChatSessionRoster peer:didChangeState:]";
      v21 = 1024;
      v22 = 1606;
      v23 = 2080;
      v24 = uTF8String;
      _os_log_impl(&dword_24E50C000, v13, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d VoiceChatSessionRoster: is connected %s", &v17, 0x26u);
    }
  }

  if (self->_needsUpdateBeaconList)
  {
    [(VoiceChatSessionRoster *)self sendBeacons];
  }

  v16 = self->_gkvs;
  pthread_mutex_unlock(&self->resMutex);
  if (v10)
  {
    [(GKVoiceChatSessionInternal *)v16 updatedSubscribedBeaconList:[(VoiceChatSessionRoster *)self subscribedPeers]];
  }
}

- (void)receivedBeacon:(id)beacon fromPeer:(id)peer
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = objc_alloc_init(MEMORY[0x277CCA8B0]);
  pthread_mutex_lock(&self->resMutex);
  bytes = [beacon bytes];
  *bytes = vrev32_s8(*bytes);
  *(bytes + 12) = vrev32_s8(*(bytes + 12));
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v9 = VRTraceErrorLogLevelToCSTR();
    v10 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(bytes + 4);
      if (peer)
      {
        uTF8String = [objc_msgSend_description(peer) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v18 = 136316162;
      v19 = v9;
      v20 = 2080;
      v21 = "[VoiceChatSessionRoster receivedBeacon:fromPeer:]";
      v22 = 1024;
      v23 = 1635;
      v24 = 1024;
      v25 = v11;
      v26 = 2080;
      v27 = uTF8String;
      _os_log_impl(&dword_24E50C000, v10, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Session sent stream %u from %s", &v18, 0x2Cu);
    }
  }

  if (peer && [(NSMutableArray *)self->_connectedPeers containsObject:peer])
  {
    v13 = [(NSMutableDictionary *)self->_peerStateTable objectForKeyedSubscript:peer];
    [v13 setLastReceivedBeacon:bytes];
    v14 = *(bytes + 4);
    if (v14 == 1)
    {
      [(VoiceChatSessionRoster *)self processUnsubscribeBeacon:bytes beaconState:v13 fromPeer:peer];
    }

    else if (v14)
    {
      if (VRTraceGetErrorLogLevelForModule() >= 7)
      {
        v15 = VRTraceErrorLogLevelToCSTR();
        v16 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
        {
          v18 = 136315650;
          v19 = v15;
          v20 = 2080;
          v21 = "[VoiceChatSessionRoster receivedBeacon:fromPeer:]";
          v22 = 1024;
          v23 = 1655;
          _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Don't understand beacon type", &v18, 0x1Cu);
        }
      }
    }

    else
    {
      [(VoiceChatSessionRoster *)self processSubscribeBeacon:bytes beaconState:v13 fromPeer:peer];
    }
  }

  if (self->_needsUpdateBeaconList)
  {
    [(VoiceChatSessionRoster *)self sendBeacons];
  }

  v17 = self->_gkvs;
  pthread_mutex_unlock(&self->resMutex);
  [(GKVoiceChatSessionInternal *)v17 updatedSubscribedBeaconList:[(VoiceChatSessionRoster *)self subscribedPeers]];
}

- (void)processUnsubscribeBeacon:(tagVoiceChatBeacon *)beacon beaconState:(id)state fromPeer:(id)peer
{
  v28 = *MEMORY[0x277D85DE8];
  gameStateSession = [(VoiceChatSessionRoster *)self gameStateSession];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v10 = VRTraceErrorLogLevelToCSTR();
    v11 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if ([(GKVoiceChatPeerInfoProvider *)gameStateSession displayNameForPeer:[(GKVoiceChatSessionInternal *)self->_gkvs encodePeerID:peer]])
      {
        v12 = [objc_msgSend_description(-[GKVoiceChatPeerInfoProvider displayNameForPeer:](gameStateSession displayNameForPeer:{-[GKVoiceChatSessionInternal encodePeerID:](self->_gkvs, "encodePeerID:", peer))), "UTF8String"}];
        if (peer)
        {
LABEL_5:
          uTF8String = [objc_msgSend_description(peer) UTF8String];
LABEL_8:
          focusID = self->_focusID;
          v16 = 136316418;
          v17 = v10;
          v18 = 2080;
          v19 = "[VoiceChatSessionRoster processUnsubscribeBeacon:beaconState:fromPeer:]";
          v20 = 1024;
          v21 = 1681;
          v22 = 2080;
          v23 = v12;
          v24 = 2080;
          v25 = uTF8String;
          v26 = 1024;
          v27 = focusID;
          _os_log_impl(&dword_24E50C000, v11, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processUnsubscribeBeacon from %s (%s), _focusID = %u", &v16, 0x36u);
          goto LABEL_9;
        }
      }

      else
      {
        v12 = "<nil>";
        if (peer)
        {
          goto LABEL_5;
        }
      }

      uTF8String = "<nil>";
      goto LABEL_8;
    }
  }

LABEL_9:
  if (beacon->var1 == 1)
  {
    v15 = self->_focusID;
    if (v15 == [peer longLongValue])
    {
      self->_chosenFocusRating = 0;
      self->_focusID = 0;
      self->_hasFocus = 0;
      if (!self->_waitingToCalculateFocus)
      {
        self->_waitingToCalculateFocus = 1;
        [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_calculateFocus_ toTarget:self withObject:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.5)}];
      }
    }

    [state setReceivedState:2];
  }
}

- (void)processSubscribeBeacon:(tagVoiceChatBeacon *)beacon beaconState:(id)state fromPeer:(id)peer
{
  v30 = *MEMORY[0x277D85DE8];
  if (beacon->var1)
  {
    return;
  }

  if (self->_focusID == [peer longLongValue])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        chosenFocusRating = self->_chosenFocusRating;
        focusID = self->_focusID;
        var3 = beacon->var3;
        v18 = 136316418;
        v19 = v8;
        v20 = 2080;
        v21 = "[VoiceChatSessionRoster processSubscribeBeacon:beaconState:fromPeer:]";
        v22 = 1024;
        v23 = 1709;
        v24 = 1024;
        v25 = focusID;
        v26 = 1024;
        v27 = chosenFocusRating;
        v28 = 1024;
        v29 = var3;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d processSubscribeBeacon: Our focus %d changed rating from %d to %d", &v18, 0x2Eu);
      }
    }

    self->_chosenFocusRating = beacon->var3;
    goto LABEL_8;
  }

  if (beacon->var3 >= self->_chosenFocusRating)
  {
LABEL_8:
    if (!self->_waitingToCalculateFocus)
    {
      self->_waitingToCalculateFocus = 1;
      [MEMORY[0x277CCACC8] detachNewThreadSelector:sel_calculateFocus_ toTarget:self withObject:{objc_msgSend(MEMORY[0x277CBEAA8], "dateWithTimeIntervalSinceNow:", 0.5)}];
    }
  }

  var0 = beacon->var0;
  if (var0 != [state sentState])
  {
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v14 = VRTraceErrorLogLevelToCSTR();
      v15 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        v16 = beacon->var0;
        sentState = [state sentState];
        v18 = 136316162;
        v19 = v14;
        v20 = 2080;
        v21 = "[VoiceChatSessionRoster processSubscribeBeacon:beaconState:fromPeer:]";
        v22 = 1024;
        v23 = 1725;
        v24 = 1024;
        v25 = v16;
        v26 = 1024;
        v27 = sentState;
        _os_log_impl(&dword_24E50C000, v15, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d beaconHeader->receivedState = %d, beaconState.sentState = %d", &v18, 0x28u);
      }
    }

    [state setNeedsSend:1];
    self->_needsUpdateBeaconList = 1;
  }

  [state setReceivedState:1];
}

- (id)subscribedPeers
{
  v16 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&self->resMutex);
  v3 = [MEMORY[0x277CBEB18] arrayWithArray:self->_connectedPeers];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedPeers = self->_connectedPeers;
  v5 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(connectedPeers);
        }

        v9 = *(*(&v11 + 1) + 8 * i);
        if ([-[NSMutableDictionary objectForKeyedSubscript:](self->_peerStateTable objectForKeyedSubscript:{v9), "receivedState"}] != 1)
        {
          [v3 removeObject:v9];
        }
      }

      v6 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  pthread_mutex_unlock(&self->resMutex);
  return v3;
}

@end