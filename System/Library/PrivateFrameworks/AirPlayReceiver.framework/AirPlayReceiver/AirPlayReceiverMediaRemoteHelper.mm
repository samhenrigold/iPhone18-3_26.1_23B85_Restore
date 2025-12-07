@interface AirPlayReceiverMediaRemoteHelper
+ (void)becomeNowPlayingApplication;
+ (void)resignAsNowPlayingApplication;
+ (void)setIsNowPlayingApplication:(unsigned __int8)application;
- (AirPlayReceiverMediaRemoteHelper)initWithPlayerID:(__CFString *)d withSystemInfo:(OpaqueAPReceiverSystemInfo *)info withReceiverServer:(AirPlayReceiverServerPrivate *)server;
- (unsigned)handleMediaRemoteCommand:(unsigned int)command withOptions:(__CFDictionary *)options;
- (void)associateNowPlayingSessionWithAudioSession:(unsigned int)session;
- (void)broadcastPauseCommand;
- (void)dealloc;
- (void)handleActiveSessionWillBeHijacked:(id)hijacked;
- (void)handleLocalDeviceRoutingContextIDDidChange:(id)change;
- (void)handlePlaybackStateDidChange:(id)change;
- (void)handleSilentPrimaryStateDidChange:(id)change;
- (void)makeNowPlayingPlayer;
- (void)registerCommandHandler;
- (void)removeNowPlayingArtwork;
- (void)setAPNowPlayingInfo:(__CFDictionary *)info;
- (void)setDelegate:(id)delegate;
- (void)setIsNowPlaying:(unsigned __int8)playing;
- (void)setMRNowPlayingClient:(__CFData *)client;
- (void)setMRNowPlayingInfo:(__CFDictionary *)info withMergePolicy:(unsigned __int8)policy;
- (void)setMRPlaybackState:(unsigned int)state;
- (void)setMRSupportedCommands:(__CFArray *)commands;
- (void)setMRSupportedCommandsFromSerializedArray:(__CFArray *)array;
- (void)startNowPlayingSession;
- (void)startNowPlayingSessionWithCompletion:(id)completion;
- (void)stopNowPlayingSession;
- (void)unregisterCommandHandler;
@end

@implementation AirPlayReceiverMediaRemoteHelper

- (void)dealloc
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper dealloc]", 33554482, "[%{ptr}] Finalizing\n", self);
  }

  [(AirPlayReceiverMediaRemoteHelper *)self unregisterCommandHandler];
  soft_MRMediaRemoteSetWantsNowPlayingNotifications(0);
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];
  if (APSMultiPrimariesEnabled() && APSNowPlayingSessionDataSourceEnabled())
  {
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:getMRNowPlayingSessionManagerIsSilentPrimaryDidChange(defaultCenter) object:0];
    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDDidChange(defaultCenter2) object:0];
    defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter3 removeObserver:self name:getMRNowPlayingSessionManagerActiveSessionWillBeHijackedByNativePlayback(defaultCenter3) object:0];
  }

  [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
  playerPath = self->_state.playerPath;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v7 = getMRMediaRemoteRemovePlayerSymbolLoc_ptr;
  v25 = getMRMediaRemoteRemovePlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteRemovePlayerSymbolLoc_ptr)
  {
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __getMRMediaRemoteRemovePlayerSymbolLoc_block_invoke;
    v20 = &unk_278C5FC48;
    v21 = &v22;
    v8 = MediaRemoteLibrary();
    v23[3] = dlsym(v8, "MRMediaRemoteRemovePlayer");
    getMRMediaRemoteRemovePlayerSymbolLoc_ptr = *(v21[1] + 24);
    v7 = v23[3];
  }

  _Block_object_dispose(&v22, 8);
  if (!v7)
  {
    v14 = dlerror();
    v15 = abort_report_np("%s", v14);
    _Block_object_dispose(&v22, 8);
    _Unwind_Resume(v15);
  }

  (v7)(playerPath, 0, 0);

  self->_state.playerPath = 0;
  weakDelegate = self->_state.weakDelegate;
  if (weakDelegate)
  {
    CFRelease(weakDelegate);
    self->_state.weakDelegate = 0;
  }

  systemInfo = self->_systemInfo;
  if (systemInfo)
  {
    CFRelease(systemInfo);
    self->_systemInfo = 0;
  }

  server = self->_server;
  if (server)
  {
    CFRelease(server);
    self->_server = 0;
  }

  self->_dataTransferQueue = 0;
  dataTransferQueueInternal = self->_dataTransferQueueInternal;
  if (dataTransferQueueInternal)
  {
    dispatch_release(dataTransferQueueInternal);
    self->_dataTransferQueueInternal = 0;
  }

  notificationQueue = self->_notificationQueue;
  if (notificationQueue)
  {
    dispatch_release(notificationQueue);
    self->_notificationQueue = 0;
  }

  v16.receiver = self;
  v16.super_class = AirPlayReceiverMediaRemoteHelper;
  [(AirPlayReceiverMediaRemoteHelper *)&v16 dealloc];
}

- (AirPlayReceiverMediaRemoteHelper)initWithPlayerID:(__CFString *)d withSystemInfo:(OpaqueAPReceiverSystemInfo *)info withReceiverServer:(AirPlayReceiverServerPrivate *)server
{
  v40 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = AirPlayReceiverMediaRemoteHelper;
  v8 = [(AirPlayReceiverMediaRemoteHelper *)&v23 init];
  v9 = v8;
  if (v8)
  {
    v38 = 0u;
    v39 = 0u;
    v37 = 0u;
    *label = 0u;
    v36 = 0u;
    SNPrintF(label, 80, "AirPlayReceiverMediaRemoteHelper.%{ptr}.dataTransfer", v8);
    v9->_dataTransferQueueInternal = dispatch_queue_create(label, 0);
    v10 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v9->_dataTransferQueue = v10;
    [(NSOperationQueue *)v10 setUnderlyingQueue:v9->_dataTransferQueueInternal];
    SNPrintF(label, 80, "AirPlayReceiverMediaRemoteHelper.%{ptr}.notification", v9);
    v9->_notificationQueue = dispatch_queue_create(label, 0);
    if (d)
    {
      v29 = 0;
      v30 = &v29;
      v31 = 0x3052000000;
      v32 = __Block_byref_object_copy_;
      v11 = getMRPlayerClass_softClass;
      v33 = __Block_byref_object_dispose_;
      v34 = getMRPlayerClass_softClass;
      if (!getMRPlayerClass_softClass)
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __getMRPlayerClass_block_invoke;
        v27 = &unk_278C5FC48;
        v28 = &v29;
        __getMRPlayerClass_block_invoke(&v24);
        v11 = *(v30 + 40);
      }

      _Block_object_dispose(&v29, 8);
      v12 = [[v11 alloc] initWithIdentifier:d displayName:d];
      v29 = 0;
      v30 = &v29;
      v31 = 0x3052000000;
      v32 = __Block_byref_object_copy_;
      v13 = getMRPlayerPathClass_softClass;
      v33 = __Block_byref_object_dispose_;
      v34 = getMRPlayerPathClass_softClass;
      if (!getMRPlayerPathClass_softClass)
      {
        v24 = MEMORY[0x277D85DD0];
        v25 = 3221225472;
        v26 = __getMRPlayerPathClass_block_invoke;
        v27 = &unk_278C5FC48;
        v28 = &v29;
        __getMRPlayerPathClass_block_invoke(&v24);
        v13 = *(v30 + 40);
      }

      _Block_object_dispose(&v29, 8);
      v9->_state.playerPath = [[v13 alloc] initWithOrigin:0 client:0 player:v12];
    }

    else
    {
      v12 = 0;
    }

    v9->_systemInfo = CFRetain(info);
    v9->_server = CFRetain(server);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v24 = 0;
    v25 = &v24;
    v26 = 0x2020000000;
    v15 = getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr;
    v27 = getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr;
    if (!getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr)
    {
      v29 = MEMORY[0x277D85DD0];
      v30 = 3221225472;
      v31 = __getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_block_invoke;
      v32 = &unk_278C5FC48;
      v33 = &v24;
      v16 = MediaRemoteLibrary();
      v17 = dlsym(v16, "kMRMediaRemotePlayerPlaybackStateDidChangeNotification");
      *(*(v33 + 1) + 24) = v17;
      getkMRMediaRemotePlayerPlaybackStateDidChangeNotificationSymbolLoc_ptr = *(*(v33 + 1) + 24);
      v15 = *(v25 + 24);
    }

    _Block_object_dispose(&v24, 8);
    if (v15)
    {
      [defaultCenter addObserver:v9 selector:sel_handlePlaybackStateDidChange_ name:*v15 object:0];
      soft_MRMediaRemoteSetWantsNowPlayingNotifications(1);
      if (APSMultiPrimariesEnabled() && APSNowPlayingSessionDataSourceEnabled())
      {
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 addObserver:v9 selector:sel_handleSilentPrimaryStateDidChange_ name:getMRNowPlayingSessionManagerIsSilentPrimaryDidChange(defaultCenter2) object:0];
        defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter3 addObserver:v9 selector:sel_handleLocalDeviceRoutingContextIDDidChange_ name:getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDDidChange(defaultCenter3) object:0];
        defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter4 addObserver:v9 selector:sel_handleActiveSessionWillBeHijacked_ name:getMRNowPlayingSessionManagerActiveSessionWillBeHijackedByNativePlayback(defaultCenter4) object:0];
        [(AirPlayReceiverMediaRemoteHelper *)v9 handleSilentPrimaryStateDidChange:0];
        [(AirPlayReceiverMediaRemoteHelper *)v9 handleLocalDeviceRoutingContextIDDidChange:0];
      }

      if (_getDefaultMRSupportedCommandInfos_s_onceToken == -1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v22 = dlerror();
      abort_report_np("%s", v22);
      __break(1u);
    }

    dispatch_once(&_getDefaultMRSupportedCommandInfos_s_onceToken, &__block_literal_global_148);
LABEL_17:
    [(AirPlayReceiverMediaRemoteHelper *)v9 setMRSupportedCommands:_getDefaultMRSupportedCommandInfos_s_defaultCommandInfos];
    goto LABEL_18;
  }

  v12 = 0;
LABEL_18:
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper initWithPlayerID:withSystemInfo:withReceiverServer:]", 33554482, "[%{ptr}] MediaRemoteHelper initialized with playerID %@", v9, d);
  }

  return v9;
}

- (void)handleActiveSessionWillBeHijacked:(id)hijacked
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handleActiveSessionWillBeHijacked:]", 33554482, "[%{ptr}] MR: active session will be hijacked - terminate if needed.\n", self);
  }

  CFObjectControlAsync();
}

- (void)handleLocalDeviceRoutingContextIDDidChange:(id)change
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v4 = getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr;
  v14 = getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr;
  if (!getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v12[3] = dlsym(v5, "MRNowPlayingSessionManagerLocalDeviceRoutingContextID");
    getMRNowPlayingSessionManagerLocalDeviceRoutingContextIDSymbolLoc_ptr = v12[3];
    v4 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v4)
  {
    v9 = dlerror();
    v10 = abort_report_np("%s", v9);
    _Block_object_dispose(&v11, 8);
    _Unwind_Resume(v10);
  }

  v8 = v4();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handleLocalDeviceRoutingContextIDDidChange:]", 33554482, "[%{ptr}] MR: routing context ID changed: %@\n", self, v8);
  }

  APReceiverSystemInfoSetProperty(self->_systemInfo, v6, @"RoutingContextID", v7, v8);
}

- (void)handleSilentPrimaryStateDidChange:(id)change
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v4 = getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr;
  v13 = getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr;
  if (!getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v11[3] = dlsym(v5, "MRNowPlayingSessionManagerIsSilentPrimary");
    getMRNowPlayingSessionManagerIsSilentPrimarySymbolLoc_ptr = v11[3];
    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v4)
  {
    v8 = dlerror();
    v9 = abort_report_np("%s", v8);
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  v6 = v4();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v7 = "no";
    if (v6)
    {
      v7 = "yes";
    }

    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handleSilentPrimaryStateDidChange:]", 33554482, "[%{ptr}] MR: silent primary state changed to %s\n", self, v7);
  }

  CFObjectSetProperty();
}

- (void)handlePlaybackStateDidChange:(id)change
{
  userInfo = [change userInfo];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v6 = getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr;
  v28 = getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr;
  if (!getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_block_invoke;
    v23 = &unk_278C5FC48;
    v24 = &v25;
    v7 = MediaRemoteLibrary();
    v26[3] = dlsym(v7, "kMRNowPlayingPlayerPathUserInfoKey");
    getkMRNowPlayingPlayerPathUserInfoKeySymbolLoc_ptr = *(v24[1] + 24);
    v6 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v6)
  {
    goto LABEL_15;
  }

  v8 = [userInfo objectForKeyedSubscript:*v6];
  userInfo2 = [change userInfo];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v10 = getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr;
  v28 = getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr;
  if (!getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr)
  {
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_block_invoke;
    v23 = &unk_278C5FC48;
    v24 = &v25;
    v11 = MediaRemoteLibrary();
    v26[3] = dlsym(v11, "kMRMediaRemotePlaybackStateUserInfoKey");
    getkMRMediaRemotePlaybackStateUserInfoKeySymbolLoc_ptr = *(v24[1] + 24);
    v10 = v26[3];
  }

  _Block_object_dispose(&v25, 8);
  if (!v10)
  {
LABEL_15:
    v16 = dlerror();
    v17 = abort_report_np("%s", v16);
    _Block_object_dispose(&v25, 8);
    _Unwind_Resume(v17);
  }

  v12 = [objc_msgSend(userInfo2 objectForKeyedSubscript:{*v10), "intValue"}];
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "-[AirPlayReceiverMediaRemoteHelper handlePlaybackStateDidChange:]", 33554462, "[%{ptr}] Handling PlaybackStateDidChange notification: local=%d process=[%@-%d] playbackState=%d\n", self, [objc_msgSend(v8 "origin")], objc_msgSend(objc_msgSend(v8, "client"), "displayName"), objc_msgSend(objc_msgSend(v8, "client"), "processIdentifier"), v12);
  }

  if ([objc_msgSend(v8 "origin")])
  {
    if ([objc_msgSend(v8 "client")])
    {
      selfCopy = self;
      v14 = v8;
      notificationQueue = self->_notificationQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __65__AirPlayReceiverMediaRemoteHelper_handlePlaybackStateDidChange___block_invoke;
      block[3] = &unk_278C5FB00;
      block[4] = self;
      block[5] = v8;
      v19 = v12;
      dispatch_async(notificationQueue, block);
    }
  }
}

void __65__AirPlayReceiverMediaRemoteHelper_handlePlaybackStateDidChange___block_invoke(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handlePlaybackStateDidChange:]_block_invoke", 33554482, "[%{ptr}] Notifying %@ started playing\n", *(a1 + 32), *(a1 + 40));
  }

  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", objc_msgSend(objc_msgSend(*(a1 + 40), "client"), "processIdentifier")), @"APReceiverMediaRemoteHelperUserInfoKeyNowPlayingAppProcessIdentifier"}];
  if ([objc_msgSend(*(a1 + 40) "client")])
  {
    [v2 setObject:objc_msgSend(objc_msgSend(*(a1 + 40) forKeyedSubscript:{"client"), "displayName"), @"kAPReceiverMediaRemoteHelperUserInfoKeyNowPlayingAppProcessDisplayName"}];
  }

  [v2 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithInt:", *(a1 + 48) == 1), @"APReceiverMediaRemoteHelperUserInfoKeyNowPlayingAppIsPlaying"}];
  [objc_msgSend(MEMORY[0x277CCAB98] "defaultCenter")];

  v3 = *(a1 + 40);
}

- (void)setMRNowPlayingClient:(__CFData *)client
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v5 = getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr;
  v16 = getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr;
  if (!getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr)
  {
    v11[6] = MEMORY[0x277D85DD0];
    v11[7] = 3221225472;
    v11[8] = __getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_block_invoke;
    v11[9] = &unk_278C5FC48;
    v12 = &v13;
    v6 = MediaRemoteLibrary();
    v14[3] = dlsym(v6, "MRNowPlayingClientCreateFromExternalRepresentation");
    getMRNowPlayingClientCreateFromExternalRepresentationSymbolLoc_ptr = *(v12[1] + 24);
    v5 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v5)
  {
    v10 = dlerror();
    abort_report_np("%s", v10);
    goto LABEL_8;
  }

  v7 = v5(client);
  if (!v7)
  {
LABEL_8:
    APSLogErrorAt();
    return;
  }

  v8 = v7;
  CFRetain(v7);
  dataTransferQueue = self->_dataTransferQueue;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __58__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingClient___block_invoke;
  v11[3] = &unk_278C60A58;
  v11[4] = self;
  v11[5] = v8;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v11];
  CFRelease(v8);
}

void __58__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingClient___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper setMRNowPlayingClient:]_block_invoke", 33554482, "[%{ptr}] Set MR now playing client to %@\n", *(a1 + 32), *(a1 + 40));
  }

  v2 = *(a1 + 40);
  v3 = [*(*(a1 + 32) + 48) client];
  v4 = [*(*(a1 + 32) + 48) origin];
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v5 = getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr;
  v12 = getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr;
  if (!getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr)
  {
    v6 = MediaRemoteLibrary();
    v10[3] = dlsym(v6, "MRMediaRemoteSyncClientProperties");
    getMRMediaRemoteSyncClientPropertiesSymbolLoc_ptr = v10[3];
    v5 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v5)
  {
    v7 = dlerror();
    v8 = abort_report_np("%s", v7);
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  (v5)(v2, v3, v4, 0, 0);
  CFRelease(*(a1 + 40));
}

- (void)setAPNowPlayingInfo:(__CFDictionary *)info
{
  CFDictionaryGetValue(info, @"artworkData");
  if (FigCFEqual())
  {
    [(AirPlayReceiverMediaRemoteHelper *)self removeNowPlayingArtwork];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v5 = Mutable;
    CFDictionaryApplyBlock();
    v6 = getkMRMediaRemoteNowPlayingInfoUniqueIdentifier();
    if (!CFDictionaryContainsKey(v5, v6))
    {
LABEL_12:
      [(AirPlayReceiverMediaRemoteHelper *)self setMRNowPlayingInfo:v5 withMergePolicy:0];
      CFRelease(v5);
      return;
    }

    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v7 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
    v16 = getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr;
    if (!getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr)
    {
      v8 = MediaRemoteLibrary();
      v14[3] = dlsym(v8, "kMRMediaRemoteNowPlayingInfoMediaType");
      getkMRMediaRemoteNowPlayingInfoMediaTypeSymbolLoc_ptr = v14[3];
      v7 = v14[3];
    }

    _Block_object_dispose(&v13, 8);
    if (v7)
    {
      v9 = *v7;
      v13 = 0;
      v14 = &v13;
      v15 = 0x2020000000;
      v10 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
      v16 = getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr;
      if (!getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr)
      {
        v11 = MediaRemoteLibrary();
        v14[3] = dlsym(v11, "kMRMediaRemoteMediaTypeMusic");
        getkMRMediaRemoteMediaTypeMusicSymbolLoc_ptr = v14[3];
        v10 = v14[3];
      }

      _Block_object_dispose(&v13, 8);
      if (v10)
      {
        CFDictionaryAddValue(v5, v9, *v10);
        goto LABEL_12;
      }
    }

    v12 = dlerror();
    abort_report_np("%s", v12);
  }

  APSLogErrorAt();

  APSLogErrorAt();
}

- (void)removeNowPlayingArtwork
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  dataTransferQueue = self->_dataTransferQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke;
  v5[3] = &unk_278C60990;
  v5[4] = self;
  v5[5] = &v6;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v5];
  [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  if (v7[3])
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper removeNowPlayingArtwork]", 33554482, "[%{ptr}] Removing artwork.\n", self);
    }

    [(AirPlayReceiverMediaRemoteHelper *)self setMRNowPlayingInfo:v7[3] withMergePolicy:1];
    v4 = v7[3];
    if (v4)
    {
      CFRelease(v4);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper removeNowPlayingArtwork]_block_invoke", 33554482, "[%{ptr}] Querying now playing info without artwork.\n", *(a1 + 32));
  }

  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 32) + 48);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke_2;
  v10[3] = &unk_278C5F6A8;
  v4 = *(a1 + 40);
  v10[4] = v2;
  v10[5] = v4;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v5 = getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr;
  v15 = getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr)
  {
    v10[6] = MEMORY[0x277D85DD0];
    v10[7] = 3221225472;
    v10[8] = __getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_block_invoke;
    v10[9] = &unk_278C5FC48;
    v11 = &v12;
    v6 = MediaRemoteLibrary();
    v13[3] = dlsym(v6, "MRMediaRemoteGetNowPlayingInfoForPlayer");
    getMRMediaRemoteGetNowPlayingInfoForPlayerSymbolLoc_ptr = *(v11[1] + 24);
    v5 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v5)
  {
    v8 = dlerror();
    v9 = abort_report_np("%s", v8);
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v9);
  }

  global_queue = dispatch_get_global_queue(0, 0);
  (v5)(v3, 0, global_queue, v10);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
}

intptr_t __59__AirPlayReceiverMediaRemoteHelper_removeNowPlayingArtwork__block_invoke_2(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(*(*(a1 + 40) + 8) + 24) = v3;
  v4 = *(a1 + 32);

  return dispatch_semaphore_signal(v4);
}

- (void)makeNowPlayingPlayer
{
  dataTransferQueue = self->_dataTransferQueue;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__AirPlayReceiverMediaRemoteHelper_makeNowPlayingPlayer__block_invoke;
  v3[3] = &unk_278C608C8;
  v3[4] = self;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v3];
}

uint64_t __56__AirPlayReceiverMediaRemoteHelper_makeNowPlayingPlayer__block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 48);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v2 = getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr;
  v10 = getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr)
  {
    v3 = MediaRemoteLibrary();
    v8[3] = dlsym(v3, "MRMediaRemoteSetNowPlayingPlayer");
    getMRMediaRemoteSetNowPlayingPlayerSymbolLoc_ptr = v8[3];
    v2 = v8[3];
  }

  _Block_object_dispose(&v7, 8);
  if (!v2)
  {
    v5 = dlerror();
    v6 = abort_report_np("%s", v5);
    _Block_object_dispose(&v7, 8);
    _Unwind_Resume(v6);
  }

  return (v2)(v1, 0, 0);
}

- (void)setMRSupportedCommandsFromSerializedArray:(__CFArray *)array
{
  Count = CFArrayGetCount(array);
  v6 = *MEMORY[0x277CBECE8];
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
  if (!Mutable)
  {
LABEL_11:
    APSLogErrorAt();
    goto LABEL_12;
  }

  selfCopy = self;
  if (Count >= 1)
  {
    v8 = 0;
    self = &v16;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(array, v8);
      v16 = 0;
      v17 = &v16;
      v18 = 0x2020000000;
      v10 = getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr;
      v19 = getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr;
      if (!getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr)
      {
        v11 = MediaRemoteLibrary();
        v17[3] = dlsym(v11, "MRMediaRemoteCommandInfoCreateFromExternalRepresentation");
        getMRMediaRemoteCommandInfoCreateFromExternalRepresentationSymbolLoc_ptr = v17[3];
        v10 = v17[3];
      }

      _Block_object_dispose(&v16, 8);
      if (!v10)
      {
        break;
      }

      v12 = v10(v6, ValueAtIndex);
      CFArrayAppendValue(Mutable, v12);
      CFRelease(v12);
      if (Count == ++v8)
      {
        goto LABEL_8;
      }
    }

    v14 = dlerror();
    abort_report_np("%s", v14);
    goto LABEL_11;
  }

LABEL_8:
  self = selfCopy;
  if (CFArrayGetCount(Mutable))
  {
    [(AirPlayReceiverMediaRemoteHelper *)selfCopy setMRSupportedCommands:Mutable];
    v13 = Mutable;
LABEL_23:
    CFRelease(v13);
    return;
  }

LABEL_12:
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper setMRSupportedCommandsFromSerializedArray:]", 33554482, "[%{ptr}] Fallback to default supported commands.\n", self);
  }

  if (_getDefaultMRSupportedCommandInfos_s_onceToken != -1)
  {
    dispatch_once(&_getDefaultMRSupportedCommandInfos_s_onceToken, &__block_literal_global_148);
  }

  v13 = _getDefaultMRSupportedCommandInfos_s_defaultCommandInfos;
  if (_getDefaultMRSupportedCommandInfos_s_defaultCommandInfos)
  {
    CFRetain(_getDefaultMRSupportedCommandInfos_s_defaultCommandInfos);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  [(AirPlayReceiverMediaRemoteHelper *)self setMRSupportedCommands:v13];
  if (v13)
  {
    goto LABEL_23;
  }
}

- (void)setMRSupportedCommands:(__CFArray *)commands
{
  if (commands)
  {
    CFRetain(commands);
    dataTransferQueue = self->_dataTransferQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __59__AirPlayReceiverMediaRemoteHelper_setMRSupportedCommands___block_invoke;
    v7[3] = &unk_278C60A58;
    v7[4] = self;
    v7[5] = commands;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v7];
  }

  else
  {

    APSLogErrorAt();
  }
}

void __59__AirPlayReceiverMediaRemoteHelper_setMRSupportedCommands___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v2 = *(a1 + 32);
    Count = CFArrayGetCount(*(a1 + 40));
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper setMRSupportedCommands:]_block_invoke", 33554482, "[%{ptr}] Set %u supported commands.\n", v2, Count);
  }

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 32) + 48);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v6 = getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr;
  v13 = getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr)
  {
    v7 = MediaRemoteLibrary();
    v11[3] = dlsym(v7, "MRMediaRemoteSetSupportedCommandsForPlayer");
    getMRMediaRemoteSetSupportedCommandsForPlayerSymbolLoc_ptr = v11[3];
    v6 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v6)
  {
    v8 = dlerror();
    v9 = abort_report_np("%s", v8);
    _Block_object_dispose(&v10, 8);
    _Unwind_Resume(v9);
  }

  (v6)(v4, v5, 0, 0);
  CFRelease(*(a1 + 40));
}

- (void)unregisterCommandHandler
{
  if (self->_state.commandHandlerToken)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper unregisterCommandHandler]", 33554482, "[%{ptr}] Remove command handler for %@\n", self, self->_state.playerPath);
    }

    playerPath = self->_state.playerPath;
    commandHandlerToken = self->_state.commandHandlerToken;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v5 = getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr;
    v12 = getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr;
    if (!getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr)
    {
      v6 = MediaRemoteLibrary();
      v10[3] = dlsym(v6, "MRMediaRemoteRemoveCommandHandlerBlockForPlayer");
      getMRMediaRemoteRemoveCommandHandlerBlockForPlayerSymbolLoc_ptr = v10[3];
      v5 = v10[3];
    }

    _Block_object_dispose(&v9, 8);
    if (!v5)
    {
      v7 = dlerror();
      v8 = abort_report_np("%s", v7);
      _Block_object_dispose(&v9, 8);
      _Unwind_Resume(v8);
    }

    v5(playerPath, commandHandlerToken);
    self->_state.commandHandlerToken = 0;
  }
}

- (void)registerCommandHandler
{
  objc_initWeak(location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__AirPlayReceiverMediaRemoteHelper_registerCommandHandler__block_invoke;
  v8[3] = &unk_278C5F680;
  objc_copyWeak(&v9, location);
  if (self->_state.commandHandlerToken)
  {
    [(AirPlayReceiverMediaRemoteHelper *)self unregisterCommandHandler];
  }

  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper registerCommandHandler]", 33554482, "[%{ptr}] Add command handler for %@\n", self, self->_state.playerPath);
  }

  playerPath = self->_state.playerPath;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v4 = getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr;
  v15 = getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr)
  {
    location[1] = MEMORY[0x277D85DD0];
    location[2] = 3221225472;
    location[3] = __getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_block_invoke;
    location[4] = &unk_278C5FC48;
    v11 = &v12;
    v5 = MediaRemoteLibrary();
    v6 = dlsym(v5, "MRMediaRemoteAddCommandHandlerBlockForPlayer");
    *(v11[1] + 24) = v6;
    getMRMediaRemoteAddCommandHandlerBlockForPlayerSymbolLoc_ptr = *(v11[1] + 24);
    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (v4)
  {
    self->_state.commandHandlerToken = v4(playerPath, v8);
    objc_destroyWeak(&v9);
    objc_destroyWeak(location);
  }

  else
  {
    v7 = dlerror();
    abort_report_np("%s", v7);
    __break(1u);
  }
}

CFArrayRef __58__AirPlayReceiverMediaRemoteHelper_registerCommandHandler__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [objc_loadWeak((a1 + 32)) handleMediaRemoteCommand:a2 withOptions:a3];
  v3 = *MEMORY[0x277CBECE8];
  values = FigCFNumberCreateUInt32();
  v4 = CFArrayCreate(v3, &values, 1, MEMORY[0x277CBF128]);
  CFRelease(values);
  return v4;
}

- (unsigned)handleMediaRemoteCommand:(unsigned int)command withOptions:(__CFDictionary *)options
{
  v5 = *&command;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handleMediaRemoteCommand:withOptions:]", 33554482, "[%{ptr}] Received MR command: %d with option dictionary %@\n", self, v5, options);
  }

  if (options && ((v7 = getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier(), Value = CFDictionaryGetValue(options, v7), Value == @"com.apple.airplay.mrhelper") || Value && CFEqual(Value, @"com.apple.airplay.mrhelper")))
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handleMediaRemoteCommand:withOptions:]", 33554482, "[%{ptr}] Ignoring self-broadcasted MR command %d\n", self, v5);
    }
  }

  else
  {
    dataTransferQueueInternal = self->_dataTransferQueueInternal;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke;
    block[3] = &unk_278C60990;
    block[4] = self;
    block[5] = &v17;
    dispatch_sync(dataTransferQueueInternal, block);
    v10 = v18[3];
    if (v10)
    {
      CFRetain(v10);
      if (options)
      {
        CFRetain(options);
      }

      notificationQueue = self->_notificationQueue;
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke_2;
      v14[3] = &unk_278C5FCC0;
      v15 = v5;
      v14[4] = &v17;
      v14[5] = options;
      dispatch_async(notificationQueue, v14);
    }

    else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 60 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper handleMediaRemoteCommand:withOptions:]", 33554492, "[%{ptr}] Delegate has gone away\n", self);
    }
  }

  v12 = v18[3];
  if (v12)
  {
    CFRelease(v12);
  }

  _Block_object_dispose(&v17, 8);
  return 0;
}

uint64_t __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke(uint64_t a1)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    result = FigCFWeakReferenceHolderCopyReferencedObject();
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

void __73__AirPlayReceiverMediaRemoteHelper_handleMediaRemoteCommand_withOptions___block_invoke_2(uint64_t a1)
{
  [*(*(*(a1 + 32) + 8) + 24) handleMRCommand:? translatedAPCommand:? withOptions:?];
  CFRelease(*(*(*(a1 + 32) + 8) + 24));
  v2 = *(a1 + 40);
  if (v2)
  {

    CFRelease(v2);
  }
}

- (void)setMRPlaybackState:(unsigned int)state
{
  dataTransferQueue = self->_dataTransferQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__AirPlayReceiverMediaRemoteHelper_setMRPlaybackState___block_invoke;
  v4[3] = &unk_278C5FB28;
  v4[4] = self;
  stateCopy = state;
  [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v4];
}

uint64_t __55__AirPlayReceiverMediaRemoteHelper_setMRPlaybackState___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper setMRPlaybackState:]_block_invoke", 33554482, "[%{ptr}] Setting MR playback state to %u\n", *(a1 + 32), *(a1 + 40));
  }

  v2 = *(*(a1 + 32) + 48);
  v3 = *(a1 + 40);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v4 = getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr;
  v12 = getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v10[3] = dlsym(v5, "MRMediaRemoteSetPlaybackStateForPlayer");
    getMRMediaRemoteSetPlaybackStateForPlayerSymbolLoc_ptr = v10[3];
    v4 = v10[3];
  }

  _Block_object_dispose(&v9, 8);
  if (!v4)
  {
    v7 = dlerror();
    v8 = abort_report_np("%s", v7);
    _Block_object_dispose(&v9, 8);
    _Unwind_Resume(v8);
  }

  return (v4)(v2, v3, 0, 0);
}

- (void)setMRNowPlayingInfo:(__CFDictionary *)info withMergePolicy:(unsigned __int8)policy
{
  if (info)
  {
    CFRetain(info);
    dataTransferQueue = self->_dataTransferQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingInfo_withMergePolicy___block_invoke;
    v8[3] = &unk_278C5F658;
    policyCopy = policy;
    v8[4] = self;
    v8[5] = info;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v8];
  }
}

void __72__AirPlayReceiverMediaRemoteHelper_setMRNowPlayingInfo_withMergePolicy___block_invoke(uint64_t a1)
{
  v2 = gLogCategory_AirPlayReceiverMediaRemoteHelper;
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_14;
      }

      v2 = gLogCategory_AirPlayReceiverMediaRemoteHelper;
    }

    v3 = *(a1 + 32);
    if (*(a1 + 48))
    {
      v4 = "Replace";
    }

    else
    {
      v4 = "Update";
    }

    if (v2 > 30)
    {
      v5 = 1;
    }

    else
    {
      v5 = v2 == -1 && _LogCategory_Initialize() == 0;
    }

    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper setMRNowPlayingInfo:withMergePolicy:]_block_invoke", 33554482, "[%{ptr}] Setting MR now playing info with merge policy [%s]%?{end} ==> %.64@\n", v3, v4, v5, *(a1 + 40));
  }

LABEL_14:
  v6 = *(a1 + 40);
  v7 = *(*(a1 + 32) + 48);
  v8 = *(a1 + 48);
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v9 = getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr;
  v16 = getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr)
  {
    v10 = MediaRemoteLibrary();
    v14[3] = dlsym(v10, "MRMediaRemoteSetNowPlayingInfoForPlayer");
    getMRMediaRemoteSetNowPlayingInfoForPlayerSymbolLoc_ptr = v14[3];
    v9 = v14[3];
  }

  _Block_object_dispose(&v13, 8);
  if (!v9)
  {
    v11 = dlerror();
    v12 = abort_report_np("%s", v11);
    _Block_object_dispose(&v13, 8);
    _Unwind_Resume(v12);
  }

  (v9)(v7, v6, v8, 0, 0);
  CFRelease(*(a1 + 40));
}

- (void)broadcastPauseCommand
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v3 = getkMRMediaRemoteOptionRemoteControlInterfaceIdentifier();
  CFDictionarySetValue(Mutable, v3, @"com.apple.airplay.mrhelper");
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v4 = getMRMediaRemoteGetLocalOriginSymbolLoc_ptr;
  v15 = getMRMediaRemoteGetLocalOriginSymbolLoc_ptr;
  if (!getMRMediaRemoteGetLocalOriginSymbolLoc_ptr)
  {
    v5 = MediaRemoteLibrary();
    v13[3] = dlsym(v5, "MRMediaRemoteGetLocalOrigin");
    getMRMediaRemoteGetLocalOriginSymbolLoc_ptr = v13[3];
    v4 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v4)
  {
    goto LABEL_14;
  }

  v6 = v4();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper broadcastPauseCommand]", 33554482, "Sending pause command to all apps listening to MediaRemote notifications\n");
  }

  global_queue = dispatch_get_global_queue(2, 0);
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = getMRMediaRemoteBroadcastCommandSymbolLoc_ptr;
  v15 = getMRMediaRemoteBroadcastCommandSymbolLoc_ptr;
  if (!getMRMediaRemoteBroadcastCommandSymbolLoc_ptr)
  {
    v9 = MediaRemoteLibrary();
    v13[3] = dlsym(v9, "MRMediaRemoteBroadcastCommand");
    getMRMediaRemoteBroadcastCommandSymbolLoc_ptr = v13[3];
    v8 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v8)
  {
LABEL_14:
    v10 = dlerror();
    v11 = abort_report_np("%s", v10);
    _Block_object_dispose(&v12, 8);
    _Unwind_Resume(v11);
  }

  v8(1, Mutable, v6, 0, global_queue, &__block_literal_global_168);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void __57__AirPlayReceiverMediaRemoteHelper_broadcastPauseCommand__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper broadcastPauseCommand]_block_invoke", 33554482, "Got completion callback for broadcasted pause command with error: %d broadcastCommandResponses: %@\n", a2, a3);
  }
}

- (void)associateNowPlayingSessionWithAudioSession:(unsigned int)session
{
  v3 = *&session;
  if (APSMultiPrimariesEnabled())
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper associateNowPlayingSessionWithAudioSession:]", 33554482, "[%{ptr}] Associating AudioSessionID %u\n", self, v3);
    }

    dataTransferQueue = self->_dataTransferQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke;
    v6[3] = &unk_278C5FB28;
    v6[4] = self;
    v7 = v3;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v6];
    [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  }
}

void __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke(uint64_t a1)
{
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  if (!*(*(a1 + 32) + 48))
  {
    v2 = 0;
    v10 = 0;
    v9 = 4294960587;
    v28 = -6709;
LABEL_14:
    v11 = 60;
    goto LABEL_15;
  }

  v2 = dispatch_semaphore_create(0);
  v3 = *(*(a1 + 32) + 48);
  v4 = *(a1 + 40);
  global_queue = dispatch_get_global_queue(0, 0);
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke_2;
  v17 = &unk_278C5F610;
  v19 = &v25;
  v20 = &v21;
  v18 = v2;
  v34 = 0;
  v35 = &v34;
  v36 = 0x2020000000;
  v6 = getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr;
  v37 = getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr;
  if (!getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr)
  {
    v29 = MEMORY[0x277D85DD0];
    v30 = 3221225472;
    v31 = __getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_block_invoke;
    v32 = &unk_278C5FC48;
    v33 = &v34;
    v7 = MediaRemoteLibrary();
    v8 = dlsym(v7, "MRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayer");
    *(v33[1] + 24) = v8;
    getMRMediaRemoteSetAVAudioSessionOpaqueSessionIDForPlayerSymbolLoc_ptr = *(v33[1] + 24);
    v6 = v35[3];
  }

  _Block_object_dispose(&v34, 8);
  if (!v6)
  {
    v13 = dlerror();
    abort_report_np("%s", v13);
    __break(1u);
    goto LABEL_26;
  }

  v6(v3, v4, global_queue, &v14);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  v9 = *(v26 + 6);
  if (!v9)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper associateNowPlayingSessionWithAudioSession:]_block_invoke", 33554482, "[%{ptr}] Finished setting AudioSessionID %u for playerPath %@\n", *(a1 + 32), *(a1 + 40), *(*(a1 + 32) + 48));
    }

    goto LABEL_22;
  }

  v10 = *(v22 + 24);
  if (!*(v22 + 24))
  {
    goto LABEL_14;
  }

  v11 = 90;
LABEL_15:
  if (v11 >= gLogCategory_AirPlayReceiverMediaRemoteHelper)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1)
    {
LABEL_17:
      if (v10)
      {
        v12 = 33554522;
      }

      else
      {
        v12 = 33554492;
      }

      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper associateNowPlayingSessionWithAudioSession:]_block_invoke", v12, "[%{ptr}] Failed to set AudioSessionID %u for playerPath %@: %#m\n", *(a1 + 32), *(a1 + 40), *(*(a1 + 32) + 48), v9, v14, v15, v16, v17, v18, v19, v20, v21);
      goto LABEL_22;
    }

    if (_LogCategory_Initialize())
    {
LABEL_26:
      v10 = *(v22 + 24);
      v9 = *(v26 + 6);
      goto LABEL_17;
    }
  }

LABEL_22:
  if (v2)
  {
    dispatch_release(v2);
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

intptr_t __79__AirPlayReceiverMediaRemoteHelper_associateNowPlayingSessionWithAudioSession___block_invoke_2(void *a1, uint64_t a2)
{
  *(*(a1[5] + 8) + 24) = NSErrorToOSStatus();
  *(*(a1[6] + 8) + 24) = *(*(a1[5] + 8) + 24) != 0;
  v3 = a1[4];

  return dispatch_semaphore_signal(v3);
}

- (void)stopNowPlayingSession
{
  if (APSMultiPrimariesEnabled())
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper stopNowPlayingSession]", 33554482, "[%{ptr}] Stopping now playing session\n", self);
    }

    [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
    dataTransferQueue = self->_dataTransferQueue;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 3221225472;
    v4[2] = __57__AirPlayReceiverMediaRemoteHelper_stopNowPlayingSession__block_invoke;
    v4[3] = &unk_278C608C8;
    v4[4] = self;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v4];
    [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  }

  else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 90 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper stopNowPlayingSession]", 33554522, "StopNowPlayingSession should only be called on a multi-primaries device");
  }
}

void __57__AirPlayReceiverMediaRemoteHelper_stopNowPlayingSession__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (!v2[6])
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper > 50)
    {
      return;
    }

    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1)
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  [v2 unregisterCommandHandler];
  soft_MRMediaRemoteSetCanBeNowPlayingForPlayer(*(*(a1 + 32) + 48), 0);
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v3 = getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr;
  v13 = getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr;
  if (!getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr)
  {
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __getMRNowPlayingSessionManagerStopSessionSymbolLoc_block_invoke;
    v9 = &unk_278C5FC48;
    v4 = MediaRemoteLibrary();
    v11[3] = dlsym(v4, "MRNowPlayingSessionManagerStopSession");
    getMRNowPlayingSessionManagerStopSessionSymbolLoc_ptr = v11[3];
    v3 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  if (!v3)
  {
    v5 = dlerror();
    abort_report_np("%s", v5);
LABEL_15:
    if (!_LogCategory_Initialize())
    {
      return;
    }

    v2 = *(a1 + 32);
LABEL_13:
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper stopNowPlayingSession]_block_invoke", 33554482, "[%{ptr}] Skipping stopping now playing session because playerPath=nil\n", v2, v6, v7, v8, v9);
    return;
  }

  v3();

  *(*(a1 + 32) + 48) = 0;
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper stopNowPlayingSession]_block_invoke", 33554482, "[%{ptr}] Stopped now playing session\n", *(a1 + 32), v6, v7, v8, v9);
  }
}

- (void)startNowPlayingSessionWithCompletion:(id)completion
{
  if (APSMultiPrimariesEnabled())
  {
    [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
    v5 = mach_absolute_time();
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper startNowPlayingSessionWithCompletion:]", 33554482, "[%{ptr}] Starting now playing session asynchronously\n", self);
    }

    dataTransferQueue = self->_dataTransferQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke;
    v7[3] = &unk_278C5F5E8;
    v7[5] = completion;
    v7[6] = v5;
    v7[4] = self;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v7];
  }

  else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 90 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper startNowPlayingSessionWithCompletion:]", 33554522, "StartNowPlayingSession should only be called on a multi-primaries device");
  }
}

void __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke(void *a1)
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3052000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  v2 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke_2;
  v13[3] = &unk_278C5F598;
  v4 = a1[4];
  v5 = a1[6];
  v13[6] = &v14;
  v13[7] = v5;
  v13[4] = v4;
  v13[5] = v2;
  soft_MRNowPlayingSessionManagerStartSession(global_queue, v13);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
  v6 = a1[4];
  v7 = *(v6 + 48);
  v8 = v15[5];
  v9 = v8;
  *(v6 + 48) = v8;

  soft_MRMediaRemoteSetCanBeNowPlayingForPlayer(*(a1[4] + 48), 1);
  v10 = a1[5];
  if (v10)
  {
    v11 = *(a1[4] + 40);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke_3;
    block[3] = &unk_278C5F5C0;
    block[4] = v10;
    dispatch_async(v11, block);
  }

  _Block_object_dispose(&v14, 8);
}

intptr_t __73__AirPlayReceiverMediaRemoteHelper_startNowPlayingSessionWithCompletion___block_invoke_2(void *a1, void *a2)
{
  mach_absolute_time();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v4 = a1[4];
    v5 = UpTicksToMilliseconds();
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper startNowPlayingSessionWithCompletion:]_block_invoke_2", 33554482, "[%{ptr}] Started now playing session with playerPath: %@, took %lu ms\n", v4, a2, v5);
  }

  *(*(a1[6] + 8) + 40) = a2;
  v6 = a1[5];

  return dispatch_semaphore_signal(v6);
}

- (void)startNowPlayingSession
{
  if (APSMultiPrimariesEnabled())
  {
    [(NSOperationQueue *)self->_dataTransferQueue cancelAllOperations];
    v3 = mach_absolute_time();
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper startNowPlayingSession]", 33554482, "[%{ptr}] Starting now playing session synchronously\n", self);
    }

    dataTransferQueue = self->_dataTransferQueue;
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke;
    v5[3] = &unk_278C60A58;
    v5[4] = self;
    v5[5] = v3;
    [(NSOperationQueue *)dataTransferQueue addOperationWithBlock:v5];
    [(NSOperationQueue *)self->_dataTransferQueue waitUntilAllOperationsAreFinished];
  }

  else if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 90 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {

    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper startNowPlayingSession]", 33554522, "StartNowPlayingSession should only be called on a multi-primaries device");
  }
}

void __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke(uint64_t a1)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy_;
  v15 = __Block_byref_object_dispose_;
  v16 = 0;
  v2 = dispatch_semaphore_create(0);
  global_queue = dispatch_get_global_queue(0, 0);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke_25;
  v10[3] = &unk_278C5F598;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v10[6] = &v11;
  v10[7] = v5;
  v10[4] = v4;
  v10[5] = v2;
  soft_MRNowPlayingSessionManagerStartSession(global_queue, v10);
  dispatch_semaphore_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(v2);
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  v8 = v12[5];
  v9 = v8;
  *(v6 + 48) = v8;

  soft_MRMediaRemoteSetCanBeNowPlayingForPlayer(*(*(a1 + 32) + 48), 1);
  _Block_object_dispose(&v11, 8);
}

intptr_t __58__AirPlayReceiverMediaRemoteHelper_startNowPlayingSession__block_invoke_25(void *a1, void *a2)
{
  mach_absolute_time();
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    v4 = a1[4];
    v5 = UpTicksToMilliseconds();
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper startNowPlayingSession]_block_invoke", 33554482, "[%{ptr}] Started now playing session with playerPath: %@, took %lu ms\n", v4, a2, v5);
  }

  *(*(a1[6] + 8) + 40) = a2;
  v6 = a1[5];

  return dispatch_semaphore_signal(v6);
}

- (void)setIsNowPlaying:(unsigned __int8)playing
{
  playingCopy = playing;
  v4 = objc_opt_class();

  [v4 setIsNowPlayingApplication:playingCopy];
}

- (void)setDelegate:(id)delegate
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "[AirPlayReceiverMediaRemoteHelper setDelegate:]", 33554482, "[%{ptr}] Delegate set to [%{ptr}]\n", self, delegate);
  }

  dataTransferQueueInternal = self->_dataTransferQueueInternal;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__AirPlayReceiverMediaRemoteHelper_setDelegate___block_invoke;
  block[3] = &unk_278C60A08;
  block[4] = self;
  block[5] = delegate;
  dispatch_sync(dataTransferQueueInternal, block);
}

uint64_t __48__AirPlayReceiverMediaRemoteHelper_setDelegate___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    CFRelease(v2);
    *(*(a1 + 32) + 64) = 0;
  }

  if (*(a1 + 40))
  {
    *(*(a1 + 32) + 64) = FigCFWeakReferenceHolderCreateWithReferencedObject();
    v3 = *(a1 + 32);

    return [v3 registerCommandHandler];
  }

  else
  {
    v5 = *(a1 + 32);

    return [v5 unregisterCommandHandler];
  }
}

+ (void)setIsNowPlayingApplication:(unsigned __int8)application
{
  applicationCopy = application;
  if (APSMultiPrimariesEnabled())
  {

    APSLogErrorAt();
  }

  else if (applicationCopy)
  {

    [self becomeNowPlayingApplication];
  }

  else
  {

    [self resignAsNowPlayingApplication];
  }
}

+ (void)resignAsNowPlayingApplication
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "+[AirPlayReceiverMediaRemoteHelper resignAsNowPlayingApplication]", 33554482, "Resign as now playing app.\n");
    }

    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "+[AirPlayReceiverMediaRemoteHelper resignAsNowPlayingApplication]", 33554462, "Setting NowPlayingApplicationOverrideEnabled to false\n");
    }
  }

  soft_MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(0);
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "+[AirPlayReceiverMediaRemoteHelper resignAsNowPlayingApplication]", 33554462, "Setting CanBeNowPlayingApplication to false\n");
  }

  soft_MRMediaRemoteSetCanBeNowPlayingApplication(0);
}

+ (void)becomeNowPlayingApplication
{
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 50)
  {
    if (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize())
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "+[AirPlayReceiverMediaRemoteHelper becomeNowPlayingApplication]", 33554482, "Become now playing app.\n");
    }

    if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "+[AirPlayReceiverMediaRemoteHelper becomeNowPlayingApplication]", 33554462, "Setting CanBeNowPlayingApplication to true\n");
    }
  }

  soft_MRMediaRemoteSetCanBeNowPlayingApplication(1);
  if (gLogCategory_AirPlayReceiverMediaRemoteHelper <= 30 && (gLogCategory_AirPlayReceiverMediaRemoteHelper != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverMediaRemoteHelper, "+[AirPlayReceiverMediaRemoteHelper becomeNowPlayingApplication]", 33554462, "Setting NowPlayingApplicationOverrideEnabled to true\n");
  }

  soft_MRMediaRemoteSetNowPlayingApplicationOverrideEnabled(1);
}

@end