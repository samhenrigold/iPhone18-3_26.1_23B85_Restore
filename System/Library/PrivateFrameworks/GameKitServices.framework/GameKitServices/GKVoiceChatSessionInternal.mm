@interface GKVoiceChatSessionInternal
+ (void)brokenHash:(id)hash response:(char *)response;
- (BOOL)getMuteStateForPeer:(id)peer;
- (BOOL)isActiveSession;
- (BOOL)isEqual:(id)equal;
- (GKVoiceChatSessionInternal)initWithGameStateSession:(id)session publicWrapper:(id)wrapper sessionName:(id)name;
- (NSString)sessionName;
- (float)sessionVolume;
- (id)decodePeerID:(id)d;
- (id)encodePeerID:(id)d;
- (int)calculateChannelQualities;
- (int)goodChannels;
- (void)addPeerToFocusPausedList:(id)list;
- (void)calculateConferenceID;
- (void)cleanup;
- (void)cleanupProc:(id)proc;
- (void)dealloc;
- (void)didStartSpeaking:(id)speaking;
- (void)didStopSpeaking:(id)speaking;
- (void)handlePeerDisconnected:(id)disconnected;
- (void)informClientVoiceChatConnecting:(id)connecting;
- (void)informClientVoiceChatCouldNotConnect:(id)connect;
- (void)interfaceStateDidChangeWithWifiUp:(BOOL)up cellUp:(BOOL)cellUp;
- (void)lossRate:(float)rate forParticipantID:(id)d;
- (void)parseConnectedPeers:(id)peers;
- (void)parseMutedPeers:(id)peers forPeer:(id)peer;
- (void)pauseAll;
- (void)pruneBadLinks;
- (void)removeFromFocusPausedList:(id)list;
- (void)sendConnectedPeers;
- (void)sendMutedPeers;
- (void)session:(id)session didReceiveOOBAudioPacket:(id)packet fromPeerID:(id)d;
- (void)session:(id)session peer:(id)peer didChangeState:(unsigned int)state;
- (void)setActiveSession:(BOOL)session;
- (void)setDelegate:(id)delegate;
- (void)setMute:(BOOL)mute forPeer:(id)peer;
- (void)setSessionVolume:(float)volume;
- (void)startSession;
- (void)startSessionInternal;
- (void)stopSession;
- (void)stopSessionInternal;
- (void)unPauseAll;
- (void)updatedConnectedPeers:(id)peers;
- (void)updatedFocusID:(unsigned int)d;
- (void)updatedFocusPeers:(id)peers;
- (void)updatedMutedPeers:(id)peers forPeer:(id)peer;
- (void)updatedSubscribedBeaconList:(id)list;
- (void)voiceChatService:(id)service didNotStartWithParticipantID:(id)d error:(id)error;
- (void)voiceChatService:(id)service didReceiveInvitationFromParticipantID:(id)d callID:(unsigned int)iD;
- (void)voiceChatService:(id)service didStartWithParticipantID:(id)d;
- (void)voiceChatService:(id)service didStopWithParticipantID:(id)d error:(id)error;
- (void)voiceChatService:(id)service sendData:(id)data toParticipantID:(id)d;
@end

@implementation GKVoiceChatSessionInternal

- (void)interfaceStateDidChangeWithWifiUp:(BOOL)up cellUp:(BOOL)cellUp
{
  upCopy = up;
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[GKVoiceChatSessionInternal interfaceStateDidChangeWithWifiUp:cellUp:]";
      v13 = 1024;
      v14 = 79;
      v15 = 1024;
      v16 = upCopy;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSesion_Internal current wifi state: %d", &v9, 0x22u);
    }
  }

  [(GKRWLock *)self->_rwLock wrlock];
  self->_currentWifiState = upCopy;
  sessionState = self->_sessionState;
  if (upCopy)
  {
    if (!sessionState)
    {
      [(GKRWLock *)self->_rwLock unlock];
      [(GKVoiceChatSessionInternal *)self startSessionInternal];
      return;
    }
  }

  else if (sessionState == 1)
  {
    [(GKRWLock *)self->_rwLock unlock];
    [(GKVoiceChatSessionInternal *)self stopSessionInternal];
    return;
  }

  [(GKRWLock *)self->_rwLock unlock];
}

- (GKVoiceChatSessionInternal)initWithGameStateSession:(id)session publicWrapper:(id)wrapper sessionName:(id)name
{
  v12.receiver = self;
  v12.super_class = GKVoiceChatSessionInternal;
  v8 = [(GKVoiceChatSessionInternal *)&v12 init];
  if (v8)
  {
    *(v8 + 1) = [name copy];
    objc_storeWeak(v8 + 4, session);
    *(v8 + 6) = 1065353216;
    [v8 calculateConferenceID];
    *(v8 + 5) = [objc_msgSend(session "peerID")];
    *(v8 + 15) = objc_alloc_init(GKRWLock);
    *(v8 + 6) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 7) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 8) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 9) = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    *(v8 + 11) = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:1];
    *(v8 + 100) = 0xFFFFFFFF7FFFFFFFLL;
    v8[96] = 1;
    v8[108] = 1;
    *(v8 + 28) = 3;
    *(v8 + 18) = dispatch_queue_create("com.apple.GKVoiceChatSession.sendQueue", 0);
    *(v8 + 21) = wrapper;
    *(v8 + 17) = [[VoiceChatSessionRoster alloc] initWithGameStateSession:session peerID:*(v8 + 5) voiceChatSession:v8 sendQueue:*(v8 + 18)];
    keyExistsAndHasValidFormat = 0;
    v8[28] = CFPreferencesGetAppBooleanValue(@"focusCallbacks", @"com.apple.VideoConference", &keyExistsAndHasValidFormat) != 0;
    v9 = objc_alloc_init(off_279682968);
    *(v8 + 22) = v9;
    [v9 setInterfaceListenerDelegate:v8];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [objc_msgSend(session "voiceChatSessionListener")];
    }
  }

  return v8;
}

+ (void)brokenHash:(id)hash response:(char *)response
{
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v7.data[13] = v6;
  *&v7.data[6] = v6;
  *&v7.data[10] = v6;
  *&v7.Nl = v6;
  *&v7.data[2] = v6;
  *&v7.A = v6;
  CC_MD5_Init(&v7);
  CC_MD5_Update(&v7, [hash UTF8String], objc_msgSend(hash, "length"));
  CC_MD5_Final(response, &v7);
}

- (void)calculateConferenceID
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v4 = 0xAAAAAAAAAAAAAAAALL;
  [GKVoiceChatSessionInternal brokenHash:self->_sessionName response:&v3];
  self->_conferenceID = HIDWORD(v4);
}

- (id)encodePeerID:(id)d
{
  if (!d)
  {
    return 0;
  }

  longLongValue = [d longLongValue];
  return [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", longLongValue | (self->_conferenceID << 32)];
}

- (id)decodePeerID:(id)d
{
  if (d)
  {
    return [MEMORY[0x277CCACA8] stringWithFormat:@"%u", strtoull(objc_msgSend(d, "UTF8String"), 0, 10)];
  }

  else
  {
    return 0;
  }
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];

  self->_roster = 0;
  objc_storeWeak(&self->_gameStateSession, 0);

  self->_peerID = 0;
  self->_rwLock = 0;

  self->_myPausedList = 0;
  self->_connectedPeers = 0;

  self->_connectedVoicePeers = 0;
  self->_connectedFocusPeers = 0;

  self->_mutedPeers = 0;
  self->_peerChannelQuality = 0;
  sendQueue = self->_sendQueue;
  if (sendQueue)
  {
    dispatch_release(sendQueue);
    self->_sendQueue = 0;
  }

  self->_sessionName = 0;
  self->_vcService = 0;
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v4 = VRTraceErrorLogLevelToCSTR();
    v5 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v8 = v4;
      v9 = 2080;
      v10 = "[GKVoiceChatSessionInternal dealloc]";
      v11 = 1024;
      v12 = 205;
      _os_log_impl(&dword_24E50C000, v5, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSessionInternal getting dealloced", buf, 0x1Cu);
    }
  }

  v6.receiver = self;
  v6.super_class = GKVoiceChatSessionInternal;
  [(GKVoiceChatSessionInternal *)&v6 dealloc];
}

- (void)cleanup
{
  [(GKVoiceChatSessionInternal *)self stopSession];
  [(GKRWLock *)self->_rwLock wrlock];
  self->_sessionState = 4;
  [(VoiceChatSessionRoster *)self->_roster cleanup];
  [(GKRWLock *)self->_rwLock unlock];
  v3 = MEMORY[0x277CCACC8];

  [v3 detachNewThreadSelector:sel_cleanupProc_ toTarget:self withObject:0];
}

- (void)cleanupProc:(id)proc
{
  [(GKRWLock *)self->_rwLock wrlock];
  [(GKVoiceChatServicePrivate *)self->_vcService setClient:0];
  [(GKVoiceChatServiceFocus *)self->_vcService setSpeakingDelegate:0];
  [(GKVoiceChatServiceFocus *)self->_vcService setQualityDelegate:0];
  [(GKVoiceChatServicePrivate *)self->_vcService cleanup];
  [(GKRWLock *)self->_rwLock unlock];
  gameStateSession = [(GKVoiceChatSessionInternal *)self gameStateSession];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    voiceChatSessionListener = [(GKVoiceChatPeerInfoProvider *)gameStateSession voiceChatSessionListener];

    [voiceChatSessionListener removeSession:self];
  }
}

- (void)startSession
{
  v16 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState >= 2)
  {
    ErrorLogLevelForModule = VRTraceGetErrorLogLevelForModule();
    v5 = MEMORY[0x277CE5818];
    if (ErrorLogLevelForModule >= 6)
    {
      v6 = VRTraceErrorLogLevelToCSTR();
      v7 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v6;
        v12 = 2080;
        v13 = "[GKVoiceChatSessionInternal startSession]";
        v14 = 1024;
        v15 = 247;
        _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d start-voice-chat-session", &v10, 0x1Cu);
      }
    }

    if (VRTraceGetErrorLogLevelForModule() >= 6)
    {
      v8 = VRTraceErrorLogLevelToCSTR();
      v9 = *v5;
      if (os_log_type_enabled(*v5, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315650;
        v11 = v8;
        v12 = 2080;
        v13 = "[GKVoiceChatSessionInternal startSession]";
        v14 = 1024;
        v15 = 248;
        _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Calling startSession!", &v10, 0x1Cu);
      }
    }

    self->_sessionState = 0;
    [(GKInterfaceListener *)self->_wifiListener hasConnectionWithWifi:&self->_currentWifiState cell:0];
    [(GKInterfaceListener *)self->_wifiListener startChangeListener];
    [(GKRWLock *)self->_rwLock unlock];
    [(GKVoiceChatSessionInternal *)self startSessionInternal];
  }

  else
  {
    rwLock = self->_rwLock;

    [(GKRWLock *)rwLock unlock];
  }
}

- (void)startSessionInternal
{
  v8 = *MEMORY[0x277D85DE8];
  v2 = 136315650;
  selfCopy = self;
  v4 = 2080;
  v5 = "[GKVoiceChatSessionInternal startSessionInternal]";
  v6 = 1024;
  v7 = 280;
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d Not starting voicechat. Don't have permission to use microphone", &v2, 0x1Cu);
}

- (void)stopSession
{
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 3)
  {
    rwLock = self->_rwLock;

    [(GKRWLock *)rwLock unlock];
  }

  else
  {
    self->_sessionState = 3;
    [(GKInterfaceListener *)self->_wifiListener stopChangeListener];
    [(GKRWLock *)self->_rwLock unlock];

    [(GKVoiceChatSessionInternal *)self stopSessionInternal];
  }
}

- (void)stopSessionInternal
{
  v23 = *MEMORY[0x277D85DE8];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    self->_sessionState = 0;
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  connectedFocusPeers = self->_connectedFocusPeers;
  v4 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(connectedFocusPeers);
        }

        [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:*(*(&v17 + 1) + 8 * i) waitUntilDone:0];
      }

      v5 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v5);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  connectedPeers = self->_connectedPeers;
  v9 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v14;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v14 != v11)
        {
          objc_enumerationMutation(connectedPeers);
        }

        [(GKVoiceChatServicePrivate *)self->_vcService stopVoiceChatWithParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:*(*(&v13 + 1) + 8 * j)]];
      }

      v10 = [(NSMutableArray *)connectedPeers countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v10);
  }

  [(GKVoiceChatServiceFocus *)self->_vcService setFocus:0];
  [(GKVoiceChatServiceFocus *)self->_vcService setCurrentFocus:0];
  [(VoiceChatSessionRoster *)self->_roster stopBeacon];
  [(NSMutableArray *)self->_myPausedList removeAllObjects];
  [(NSMutableArray *)self->_connectedPeers removeAllObjects];
  [(NSMutableArray *)self->_connectedVoicePeers removeAllObjects];
  [(NSMutableArray *)self->_connectedFocusPeers removeAllObjects];
  [(NSMutableDictionary *)self->_peerChannelQuality removeAllObjects];
  [(GKRWLock *)self->_rwLock unlock];
}

- (void)setMute:(BOOL)mute forPeer:(id)peer
{
  muteCopy = mute;
  [(GKRWLock *)self->_rwLock wrlock];
  mutedPeers = self->_mutedPeers;
  if (muteCopy)
  {
    if (([(NSMutableArray *)mutedPeers containsObject:peer]& 1) == 0)
    {
      [(NSMutableArray *)self->_mutedPeers addObject:peer];
    }
  }

  else
  {
    [(NSMutableArray *)mutedPeers removeObject:peer];
  }

  if (self->_sessionState == 1)
  {
    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus])
    {
      [(GKVoiceChatSessionInternal *)self updatedMutedPeers:self->_mutedPeers forPeer:0];
    }

    else
    {
      [(GKVoiceChatSessionInternal *)self sendMutedPeers];
    }
  }

  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (BOOL)getMuteStateForPeer:(id)peer
{
  [(GKRWLock *)self->_rwLock rdlock];
  LOBYTE(peer) = [(NSMutableArray *)self->_mutedPeers containsObject:peer];
  [(GKRWLock *)self->_rwLock unlock];
  return peer;
}

- (void)setActiveSession:(BOOL)session
{
  vcService = self->_vcService;
  if (vcService)
  {
    [(GKVoiceChatServiceFocus *)vcService setHasMic:?];
    self->activeSession = session;
  }
}

- (BOOL)isActiveSession
{
  vcService = self->_vcService;
  if (vcService)
  {
    hasMic = [(GKVoiceChatServiceFocus *)vcService hasMic];
    self->activeSession = hasMic;
  }

  else
  {
    return self->activeSession;
  }

  return hasMic;
}

- (NSString)sessionName
{
  v2 = [(NSString *)self->_sessionName copy];

  return v2;
}

- (float)sessionVolume
{
  vcService = self->_vcService;
  if (!vcService)
  {
    return self->sessionVolume;
  }

  [(GKVoiceChatServicePrivate *)vcService remoteParticipantVolume];
  self->sessionVolume = result;
  return result;
}

- (void)setSessionVolume:(float)volume
{
  LODWORD(v3) = 1.0;
  if (volume <= 1.0)
  {
    *&v3 = volume;
  }

  if (volume >= 0.0)
  {
    v5 = *&v3;
  }

  else
  {
    v5 = 0.0;
  }

  [(GKVoiceChatServicePrivate *)self->_vcService setRemoteParticipantVolume:COERCE_DOUBLE(LODWORD(v5)), v3];
  self->sessionVolume = v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    LOBYTE(v5) = [equal conferenceID] == self->_conferenceID;
  }

  return v5;
}

- (void)handlePeerDisconnected:(id)disconnected
{
  [(NSMutableArray *)self->_connectedVoicePeers removeObject:?];
  [(NSMutableDictionary *)self->_peerChannelQuality removeObjectForKey:disconnected];
  self->needsRecalculateGoodChannels = 1;
  if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus]&& [(NSMutableArray *)self->_connectedFocusPeers containsObject:disconnected])
  {
    [(NSMutableArray *)self->_connectedFocusPeers removeObject:disconnected];
    [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
    [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];

    [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:disconnected waitUntilDone:0];
  }
}

- (void)updatedSubscribedBeaconList:(id)list
{
  v56 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (list)
      {
        uTF8String = [objc_msgSend_description(list) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      connectedPeers = self->_connectedPeers;
      if (connectedPeers)
      {
        uTF8String2 = [objc_msgSend_description(connectedPeers) UTF8String];
      }

      else
      {
        uTF8String2 = "<nil>";
      }

      peerID = self->_peerID;
      if (peerID)
      {
        uTF8String3 = [objc_msgSend_description(peerID) UTF8String];
      }

      else
      {
        uTF8String3 = "<nil>";
      }

      *buf = 136316418;
      *&buf[4] = v5;
      v46 = 2080;
      v47 = "[GKVoiceChatSessionInternal updatedSubscribedBeaconList:]";
      v48 = 1024;
      v49 = 464;
      v50 = 2080;
      v51 = uTF8String;
      v52 = 2080;
      v53 = uTF8String2;
      v54 = 2080;
      v55 = uTF8String3;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d GKVoiceChatSession_Internal: updatedSubscribedBeaconList: newSubscribedList = %s (our existing members = %s) us (%s)", buf, 0x3Au);
    }
  }

  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    v12 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(list, "count")}];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v13 = self->_connectedPeers;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v39;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v39 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v38 + 1) + 8 * i);
          if (([list containsObject:v18] & 1) == 0)
          {
            [v12 addObject:v18];
          }
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v38 objects:v44 count:16];
      }

      while (v15);
    }

    *buf = 0;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v19 = [list countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v35;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v35 != v21)
          {
            objc_enumerationMutation(list);
          }

          v23 = *(*(&v34 + 1) + 8 * j);
          if (([(NSMutableArray *)self->_connectedPeers containsObject:v23]& 1) == 0)
          {
            longLongValue = [(NSString *)self->_peerID longLongValue];
            if (longLongValue < [v23 longLongValue])
            {
              [(GKVoiceChatServiceFocus *)self->_vcService startVoiceChatWithParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:v23] error:buf];
            }

            [(NSMutableArray *)self->_connectedPeers addObject:v23];
            [(GKVoiceChatSessionInternal *)self informClientVoiceChatConnecting:v23];
          }
        }

        v20 = [list countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v20);
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v25 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
    if (v25)
    {
      v26 = v25;
      v27 = *v31;
      do
      {
        for (k = 0; k != v26; ++k)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v12);
          }

          v29 = *(*(&v30 + 1) + 8 * k);
          [(GKVoiceChatServicePrivate *)self->_vcService stopVoiceChatWithParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:v29]];
          [(NSMutableArray *)self->_connectedPeers removeObject:v29];
          [(GKVoiceChatSessionInternal *)self handlePeerDisconnected:v29];
        }

        v26 = [v12 countByEnumeratingWithState:&v30 objects:v42 count:16];
      }

      while (v26);
    }
  }

  [(GKRWLock *)self->_rwLock unlock];
}

- (void)updatedFocusID:(unsigned int)d
{
  v3 = *&d;
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v5 = VRTraceErrorLogLevelToCSTR();
    v6 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      v7 = self->_sessionState == 1;
      longLongValue = [(NSString *)self->_peerID longLongValue];
      *buf = 136316418;
      v9 = "NO";
      v12 = v5;
      v14 = "[GKVoiceChatSessionInternal updatedFocusID:]";
      v13 = 2080;
      v15 = 1024;
      if (longLongValue == v3)
      {
        v9 = "YES";
      }

      v16 = 510;
      v17 = 1024;
      v18 = v3;
      v19 = 1024;
      v20 = v7;
      v21 = 2080;
      v22 = v9;
      _os_log_impl(&dword_24E50C000, v6, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d My new focus = %u, _sessionState == kVoiceChatSessionRunning = %d.  Am I the focus?  %s", buf, 0x32u);
    }
  }

  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    [(GKVoiceChatServiceFocus *)self->_vcService setFocus:[(NSString *)self->_peerID longLongValue]== v3];
    -[GKVoiceChatServiceFocus setCurrentFocus:](self->_vcService, "setCurrentFocus:", -[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", [MEMORY[0x277CCACA8] stringWithFormat:@"%u", -[VoiceChatSessionRoster focusID](self->_roster, "focusID")]));
    [(GKVoiceChatSessionInternal *)self unPauseAll];
    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus])
    {
      [(GKVoiceChatSessionInternal *)self updatedMutedPeers:self->_mutedPeers forPeer:0];
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_connectedVoicePeers];
      [v10 insertObject:self->_peerID atIndex:0];
      [v10 removeObjectsInArray:self->_myPausedList];
      [(GKVoiceChatSessionInternal *)self updatedFocusPeers:v10];

      [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
      [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];
    }

    else
    {
      [(GKVoiceChatSessionInternal *)self sendMutedPeers];
    }

    if (self->focusCallbacks)
    {
      -[GKVoiceChatSessionInternal performSelectorOnMainThread:withObject:waitUntilDone:](self, "performSelectorOnMainThread:withObject:waitUntilDone:", sel_informClientVoiceChatFocusChange_, [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v3], 0);
    }
  }

  [(GKRWLock *)self->_rwLock unlock];
}

- (void)updatedMutedPeers:(id)peers forPeer:(id)peer
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(peers, "count")}];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = [peers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(peers);
        }

        [v7 addObject:{-[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", *(*(&v12 + 1) + 8 * v11++))}];
      }

      while (v9 != v11);
      v9 = [peers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  [(GKVoiceChatServiceFocus *)self->_vcService updatedMutedPeers:v7 forParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:peer]];
}

- (void)sendMutedPeers
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d sendMutedPeers failed to serialize. %s", v3, v4, v5, v6);
}

- (void)parseMutedPeers:(id)peers forPeer:(id)peer
{
  v8 = 0;
  v6 = [MEMORY[0x277CCAC58] propertyListFromData:peers mutabilityOption:0 format:0 errorDescription:&v8];
  if (v6)
  {
    v7 = v6;
    [(GKRWLock *)self->_rwLock wrlock];
    [(GKVoiceChatSessionInternal *)self updatedMutedPeers:v7 forPeer:peer];
    [(GKRWLock *)self->_rwLock unlock];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKVoiceChatSessionInternal parseMutedPeers:forPeer:];
      }
    }
  }
}

- (void)pauseAll
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  connectedVoicePeers = self->_connectedVoicePeers;
  v4 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(connectedVoicePeers);
        }

        [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:1 toParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:*(*(&v8 + 1) + 8 * i)]];
      }

      v5 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)unPauseAll
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  connectedVoicePeers = self->_connectedVoicePeers;
  v4 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(connectedVoicePeers);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (![(NSMutableArray *)self->_myPausedList containsObject:v8]|| ![(GKVoiceChatServicePrivate *)self->_vcService isFocus])
        {
          [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:0 toParticipantID:[(GKVoiceChatSessionInternal *)self encodePeerID:v8]];
        }
      }

      v5 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)pruneBadLinks
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  connectedVoicePeers = self->_connectedVoicePeers;
  v4 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(connectedVoicePeers);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        [-[NSMutableDictionary objectForKeyedSubscript:](self->_peerChannelQuality objectForKeyedSubscript:{v9), "floatValue"}];
        if (v10 > 0.25 && (([(NSMutableArray *)self->_myPausedList containsObject:v9]| v6) & 1) == 0)
        {
          [(GKVoiceChatSessionInternal *)self addPeerToFocusPausedList:v9];
          v11 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_connectedVoicePeers];
          [v11 insertObject:self->_peerID atIndex:0];
          [v11 removeObjectsInArray:self->_myPausedList];
          [(GKVoiceChatSessionInternal *)self updatedFocusPeers:v11];

          [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
          [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];
          v6 = 1;
        }

        [(NSMutableDictionary *)self->_peerChannelQuality setObject:&unk_28619C0C8 forKeyedSubscript:v9];
      }

      v5 = [(NSMutableArray *)connectedVoicePeers countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  self->needsRecalculateGoodChannels = 1;
  [(GKVoiceChatSessionInternal *)self goodChannels];
}

- (void)addPeerToFocusPausedList:(id)list
{
  myPausedList = self->_myPausedList;
  if (!myPausedList)
  {
    myPausedList = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:16];
    self->_myPausedList = myPausedList;
  }

  [(NSMutableArray *)myPausedList addObject:list];
  v6 = [(GKVoiceChatSessionInternal *)self encodePeerID:list];
  vcService = self->_vcService;

  [(GKVoiceChatServiceFocus *)vcService pauseAudio:1 toParticipantID:v6];
}

- (void)removeFromFocusPausedList:(id)list
{
  [(NSMutableArray *)self->_myPausedList removeObject:?];
  v5 = [(GKVoiceChatSessionInternal *)self encodePeerID:list];
  vcService = self->_vcService;

  [(GKVoiceChatServiceFocus *)vcService pauseAudio:0 toParticipantID:v5];
}

- (void)updatedFocusPeers:(id)peers
{
  v35 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:peers];
  v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:self->_connectedFocusPeers];
  if ([peers containsObject:self->_peerID])
  {
    [v5 removeObjectsInArray:self->_connectedFocusPeers];
    [v5 removeObject:self->_peerID];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v25;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v25 != v9)
          {
            objc_enumerationMutation(v5);
          }

          [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStart_ withObject:*(*(&v24 + 1) + 8 * i) waitUntilDone:0];
        }

        v8 = [v5 countByEnumeratingWithState:&v24 objects:v33 count:16];
      }

      while (v8);
    }

    [v6 removeObjectsInArray:peers];
    [v6 removeObject:self->_peerID];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (j = 0; j != v12; ++j)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v6);
          }

          [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:*(*(&v20 + 1) + 8 * j) waitUntilDone:0];
        }

        v12 = [v6 countByEnumeratingWithState:&v20 objects:v32 count:16];
      }

      while (v12);
    }

    [(NSMutableArray *)self->_connectedFocusPeers setArray:peers];
  }

  else
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    connectedFocusPeers = self->_connectedFocusPeers;
    v16 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v28 objects:v34 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v29;
      do
      {
        for (k = 0; k != v17; ++k)
        {
          if (*v29 != v18)
          {
            objc_enumerationMutation(connectedFocusPeers);
          }

          [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStop_ withObject:*(*(&v28 + 1) + 8 * k) waitUntilDone:0];
        }

        v17 = [(NSMutableArray *)connectedFocusPeers countByEnumeratingWithState:&v28 objects:v34 count:16];
      }

      while (v17);
    }

    [(NSMutableArray *)self->_connectedFocusPeers removeAllObjects];
  }
}

- (void)updatedConnectedPeers:(id)peers
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(peers, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = [peers countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(peers);
        }

        [v5 addObject:{-[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", *(*(&v10 + 1) + 8 * v9++))}];
      }

      while (v7 != v9);
      v7 = [peers countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (!-[GKVoiceChatServicePrivate isFocus](self->_vcService, "isFocus") && ([peers containsObject:self->_peerID] & 1) == 0)
  {
    [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:1 toParticipantID:[(GKVoiceChatServiceFocus *)self->_vcService currentFocus]];
  }

  [(GKVoiceChatServiceFocus *)self->_vcService updatedConnectedPeers:v5];
}

- (void)sendConnectedPeers
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d sendConnectedPeers failed to serialize. %s", v3, v4, v5, v6);
}

- (void)parseConnectedPeers:(id)peers
{
  v6 = 0;
  v4 = [MEMORY[0x277CCAC58] propertyListFromData:peers mutabilityOption:0 format:0 errorDescription:&v6];
  if (v4)
  {
    v5 = v4;
    [(GKRWLock *)self->_rwLock wrlock];
    [(GKVoiceChatSessionInternal *)self updatedFocusPeers:v5];
    [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:v5];
    [(GKRWLock *)self->_rwLock unlock];
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      VRTraceErrorLogLevelToCSTR();
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [GKVoiceChatSessionInternal parseConnectedPeers:];
      }
    }
  }
}

- (void)session:(id)session peer:(id)peer didChangeState:(unsigned int)state
{
  v5 = *&state;
  v23 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (peer)
      {
        uTF8String = [objc_msgSend_description(peer) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v11 = v5 == 2 || v5 == 5;
      *v14 = 136316162;
      v12 = v11;
      *&v14[4] = v8;
      v15 = 2080;
      v16 = "[GKVoiceChatSessionInternal(GKSessionVoiceChatDelegate) session:peer:didChangeState:]";
      v17 = 1024;
      v18 = 791;
      v19 = 2080;
      v20 = uTF8String;
      v21 = 1024;
      v22 = v12;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d peerID %s didChangeState == connected (%d)", v14, 0x2Cu);
    }
  }

  [(GKRWLock *)self->_rwLock wrlock];
  if (v5 == 3 && [(NSMutableArray *)self->_connectedPeers containsObject:peer])
  {
    [(GKVoiceChatServiceFocus *)self->_vcService remoteCancelled:[(GKVoiceChatSessionInternal *)self encodePeerID:peer]];
    [(NSMutableArray *)self->_connectedPeers removeObject:peer];
    [(GKVoiceChatSessionInternal *)self handlePeerDisconnected:peer];
  }

  v13 = self->_roster;
  [(GKRWLock *)self->_rwLock unlock];
  [(VoiceChatSessionRoster *)v13 peer:peer didChangeState:v5];
}

- (void)session:(id)session didReceiveOOBAudioPacket:(id)packet fromPeerID:(id)d
{
  v27 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v8 = VRTraceErrorLogLevelToCSTR();
    v9 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      subtype = [packet subtype];
      if (d)
      {
        uTF8String = [objc_msgSend_description(d) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      if ([(GKVoiceChatSessionInternal *)self encodePeerID:d])
      {
        v12 = [objc_msgSend_description(-[GKVoiceChatSessionInternal encodePeerID:](self encodePeerID:{d)), "UTF8String"}];
      }

      else
      {
        v12 = "<nil>";
      }

      v15 = 136316418;
      v16 = v8;
      v17 = 2080;
      v18 = "[GKVoiceChatSessionInternal(GKSessionVoiceChatDelegate) session:didReceiveOOBAudioPacket:fromPeerID:]";
      v19 = 1024;
      v20 = 817;
      v21 = 1024;
      v22 = subtype;
      v23 = 2080;
      v24 = uTF8String;
      v25 = 2080;
      v26 = v12;
      _os_log_impl(&dword_24E50C000, v9, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d Session didReceiveOOBAudioPacket of type %u from %s %s", &v15, 0x36u);
    }
  }

  [(GKRWLock *)self->_rwLock rdlock];
  sessionState = self->_sessionState;
  [(GKRWLock *)self->_rwLock unlock];
  if (sessionState != 4)
  {
    subtype2 = [packet subtype];
    if (subtype2 > 1)
    {
      if (subtype2 == 2)
      {
        -[GKVoiceChatSessionInternal parseConnectedPeers:](self, "parseConnectedPeers:", [packet payload]);
      }

      else if (subtype2 == 3)
      {
        -[GKVoiceChatSessionInternal parseMutedPeers:forPeer:](self, "parseMutedPeers:forPeer:", [packet payload], d);
      }
    }

    else if (subtype2)
    {
      if (subtype2 == 1)
      {
        -[VoiceChatSessionRoster receivedBeacon:fromPeer:](self->_roster, "receivedBeacon:fromPeer:", [packet payload], d);
      }
    }

    else
    {
      -[GKVoiceChatServiceFocus receivedData:fromParticipantID:](self->_vcService, "receivedData:fromParticipantID:", [packet payload], -[GKVoiceChatSessionInternal encodePeerID:](self, "encodePeerID:", d));
    }
  }
}

- (void)informClientVoiceChatConnecting:(id)connecting
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __87__GKVoiceChatSessionInternal_VoiceChatClientInternal__informClientVoiceChatConnecting___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = self;
  v3[5] = connecting;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)informClientVoiceChatCouldNotConnect:(id)connect
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __92__GKVoiceChatSessionInternal_VoiceChatClientInternal__informClientVoiceChatCouldNotConnect___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = self;
  v3[5] = connect;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

- (void)voiceChatService:(id)service sendData:(id)data toParticipantID:(id)d
{
  v7 = [[GKVoiceChatSessionMessage alloc] initWithPayload:data conferenceID:self->_conferenceID subtype:0];
  v8 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{-[GKVoiceChatSessionInternal decodePeerID:](self, "decodePeerID:", d), 0}];
  gameStateSession = [(GKVoiceChatSessionInternal *)self gameStateSession];
  sendQueue = self->_sendQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__GKVoiceChatSessionInternal_VoiceChatClient__voiceChatService_sendData_toParticipantID___block_invoke;
  block[3] = &unk_279682C18;
  block[4] = gameStateSession;
  block[5] = v7;
  block[6] = v8;
  dispatch_async(sendQueue, block);
}

- (void)voiceChatService:(id)service didStartWithParticipantID:(id)d
{
  v6 = [(GKVoiceChatSessionInternal *)self decodePeerID:d];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    if (([(NSMutableArray *)self->_connectedVoicePeers containsObject:v6]& 1) == 0)
    {
      [(NSMutableArray *)self->_connectedVoicePeers addObject:v6];
      [(NSMutableDictionary *)self->_peerChannelQuality setObject:&unk_28619C0C8 forKeyedSubscript:v6];
      self->needsRecalculateGoodChannels = 1;
    }

    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus])
    {
      if (([(NSMutableArray *)self->_connectedFocusPeers containsObject:v6]& 1) == 0)
      {
        [(NSMutableArray *)self->_connectedFocusPeers addObject:v6];
        [(GKVoiceChatSessionInternal *)self sendConnectedPeers];
        [(GKVoiceChatSessionInternal *)self updatedConnectedPeers:self->_connectedFocusPeers];
        [(GKVoiceChatSessionInternal *)self performSelectorOnMainThread:sel_informClientVoiceChatDidStart_ withObject:v6 waitUntilDone:0];
        if (self->congestionState == 1)
        {
          [(GKVoiceChatServiceFocus *)self->_vcService pauseAudio:1 toParticipantID:d];
        }
      }
    }

    if ([(VoiceChatSessionRoster *)self->_roster recalculateFocusRating])
    {
      [(VoiceChatSessionRoster *)self->_roster updateBeacon];
    }
  }

  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (void)voiceChatService:(id)service didNotStartWithParticipantID:(id)d error:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  if (VRTraceGetErrorLogLevelForModule() >= 5)
  {
    v6 = VRTraceErrorLogLevelToCSTR();
    v7 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (error)
      {
        uTF8String = [objc_msgSend_description(error) UTF8String];
      }

      else
      {
        uTF8String = "<nil>";
      }

      v9 = 136315906;
      v10 = v6;
      v11 = 2080;
      v12 = "[GKVoiceChatSessionInternal(VoiceChatClient) voiceChatService:didNotStartWithParticipantID:error:]";
      v13 = 1024;
      v14 = 939;
      v15 = 2080;
      v16 = uTF8String;
      _os_log_impl(&dword_24E50C000, v7, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d voiceChatService:didNotStartWithParticipantID %s", &v9, 0x26u);
    }
  }
}

- (void)voiceChatService:(id)service didStopWithParticipantID:(id)d error:(id)error
{
  v6 = [(GKVoiceChatSessionInternal *)self decodePeerID:d];
  [(GKRWLock *)self->_rwLock wrlock];
  if (self->_sessionState == 1)
  {
    [(GKVoiceChatSessionInternal *)self handlePeerDisconnected:v6];
    if ([(VoiceChatSessionRoster *)self->_roster recalculateFocusRating])
    {
      [(VoiceChatSessionRoster *)self->_roster updateBeacon];
    }
  }

  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (void)voiceChatService:(id)service didReceiveInvitationFromParticipantID:(id)d callID:(unsigned int)iD
{
  v19 = *MEMORY[0x277D85DE8];
  v10 = 0;
  sessionState = self->_sessionState;
  vcService = self->_vcService;
  if (sessionState == 1)
  {
    if (![(GKVoiceChatServiceFocus *)vcService acceptCallID:*&iD error:&v10]&& VRTraceGetErrorLogLevelForModule() >= 5)
    {
      v7 = VRTraceErrorLogLevelToCSTR();
      v8 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v10)
        {
          uTF8String = [objc_msgSend_description(v10) UTF8String];
        }

        else
        {
          uTF8String = "<nil>";
        }

        *buf = 136315906;
        v12 = v7;
        v13 = 2080;
        v14 = "[GKVoiceChatSessionInternal(VoiceChatClient) voiceChatService:didReceiveInvitationFromParticipantID:callID:]";
        v15 = 1024;
        v16 = 961;
        v17 = 2080;
        v18 = uTF8String;
        _os_log_impl(&dword_24E50C000, v8, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d We have a problem when accepting the call %s", buf, 0x26u);
      }
    }
  }

  else
  {

    [(GKVoiceChatServiceFocus *)vcService denyCallID:*&iD, d];
  }
}

- (void)setDelegate:(id)delegate
{
  [(GKRWLock *)self->_rwLock wrlock];
  self->delegate = delegate;
  rwLock = self->_rwLock;

  [(GKRWLock *)rwLock unlock];
}

- (void)didStartSpeaking:(id)speaking
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __80__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStartSpeaking___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = speaking;
  v3[5] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __80__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStartSpeaking___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) decodePeerID:?];
  }

  else
  {
    v2 = [v1[5] copy];
  }

  return [v1 informClientVoiceChatSpeaking:v2];
}

- (void)didStopSpeaking:(id)speaking
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStopSpeaking___block_invoke;
  v3[3] = &unk_279682BF0;
  v3[4] = speaking;
  v3[5] = self;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

uint64_t __79__GKVoiceChatSessionInternal_VideoConferenceSpeakingDelegate__didStopSpeaking___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (*(a1 + 32))
  {
    v2 = [*(a1 + 40) decodePeerID:?];
  }

  else
  {
    v2 = [v1[5] copy];
  }

  return [v1 informClientVoiceChatSilent:v2];
}

- (int)calculateChannelQualities
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [(NSMutableArray *)self->_connectedVoicePeers count];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  peerChannelQuality = self->_peerChannelQuality;
  v5 = [(NSMutableDictionary *)peerChannelQuality countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(peerChannelQuality);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([(NSMutableArray *)self->_myPausedList containsObject:v9]& 1) == 0)
        {
          [-[NSMutableDictionary objectForKeyedSubscript:](self->_peerChannelQuality objectForKeyedSubscript:{v9), "floatValue"}];
          if (v10 <= 0.25)
          {
            continue;
          }
        }

        --v3;
      }

      v6 = [(NSMutableDictionary *)peerChannelQuality countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  self->needsRecalculateGoodChannels = 0;
  return v3;
}

- (int)goodChannels
{
  if (!self->needsRecalculateGoodChannels)
  {
    return self->goodChannels;
  }

  result = [(GKVoiceChatSessionInternal *)self calculateChannelQualities];
  self->goodChannels = result;
  return result;
}

- (void)lossRate:(float)rate forParticipantID:(id)d
{
  v6 = [(GKVoiceChatSessionInternal *)self decodePeerID:d];
  [(GKRWLock *)self->_rwLock rdlock];
  if (rate > 0.25)
  {
    [(GKRWLock *)self->_rwLock unlock];
    [(GKRWLock *)self->_rwLock wrlock];
    calculateChannelQualities = [(GKVoiceChatSessionInternal *)self calculateChannelQualities];
    if ([(GKVoiceChatServicePrivate *)self->_vcService isFocus]&& !self->congestionState)
    {
      self->congestionState = 1;
      *&v8 = rate;
      -[NSMutableDictionary setObject:forKeyedSubscript:](self->_peerChannelQuality, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithFloat:v8], v6);
      [(GKVoiceChatSessionInternal *)self pauseAll];
      v9 = dispatch_time(0, 4000000000);
      global_queue = dispatch_get_global_queue(0, 0);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke;
      block[3] = &unk_279682BA8;
      block[4] = self;
      dispatch_after(v9, global_queue, block);
    }

    if (!self->congestionState && self->goodChannels != calculateChannelQualities)
    {
      self->goodChannels = calculateChannelQualities;
      if ([(VoiceChatSessionRoster *)self->_roster recalculateFocusRating])
      {
        [(VoiceChatSessionRoster *)self->_roster updateBeacon];
      }
    }
  }

  [(GKRWLock *)self->_rwLock unlock];
}

uint64_t __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 120) wrlock];
  if ([*(*(a1 + 32) + 128) isFocus])
  {
    [*(a1 + 32) pruneBadLinks];
  }

  [*(a1 + 32) unPauseAll];
  *(*(a1 + 32) + 160) = 2;
  v2 = dispatch_time(0, 2000000000);
  global_queue = dispatch_get_global_queue(0, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke_2;
  block[3] = &unk_279682BA8;
  block[4] = *(a1 + 32);
  dispatch_after(v2, global_queue, block);
  return [*(*(a1 + 32) + 120) unlock];
}

uint64_t __95__GKVoiceChatSessionInternal_VideoConferenceChannelQualityDelegate__lossRate_forParticipantID___block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 160) = 0;
  [*(*(a1 + 32) + 120) wrlock];
  if ([*(*(a1 + 32) + 136) recalculateFocusRating])
  {
    [*(*(a1 + 32) + 136) updateBeacon];
  }

  v2 = *(*(a1 + 32) + 120);

  return [v2 unlock];
}

- (void)parseMutedPeers:forPeer:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d parseMutedPeers failed to deserialize. %s", v3, v4, v5, v6);
}

- (void)parseConnectedPeers:.cold.1()
{
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5_1(v0, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_3(&dword_24E50C000, v1, v2, " [%s] %s:%d parseConnectedPeers failed to deserialize. %s", v3, v4, v5, v6);
}

@end