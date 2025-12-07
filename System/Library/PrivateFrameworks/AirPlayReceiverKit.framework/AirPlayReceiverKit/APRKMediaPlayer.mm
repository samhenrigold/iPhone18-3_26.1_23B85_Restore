@interface APRKMediaPlayer
- (APRKMediaPlayer)initWithP2PWiFiSupport:(BOOL)support isInterstitialPlayer:(BOOL)player playerSessionID:(int)d;
- (APRKMediaPlayerMessagingDelegate)messagingDelegate;
- (BOOL)_attemptToSetSelectedMediaArray:(id)array;
- (BOOL)_ensureFairPlayHelper;
- (BOOL)_shouldIgnoreSeekCompletionForSeekID:(int)d forItem:(id)item;
- (BOOL)shouldDelegateToInterstitialPlayerForMessageAndID:(id)d sessionID:(int)iD;
- (id)_SSLPropertiesforTLSInfo:(id)info;
- (id)_currentPlaybackInfoDictionary;
- (id)_figPlaybackStateStringFrom:(int64_t)from;
- (id)_fixedIPContentLocationFromURLString:(id)string error:(id *)error;
- (id)_frontPlayerItem;
- (id)_getPropertyWithDictionary:(id)dictionary;
- (id)_playerItemForUUID:(id)d;
- (id)_processAuthorizeItemWithDictionary:(id)dictionary;
- (id)_processMessageWithDictionaryInternal:(id)internal;
- (id)_processPlaybackInfoRequestWithDictionary:(id)dictionary;
- (id)_seekRequestMessageForSeekID:(int)d forItem:(id)item;
- (id)_serializeTimeRanges:(id)ranges;
- (id)_timedMetadataFromAVTimedMetadata:(id)metadata;
- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator;
- (id)processMessageWithIDAndDictionarySync:(id)sync messageSessionID:(int)d;
- (id)selectedMediaArrayForItem:(id)item;
- (uint64_t)invalidate;
- (void)_addPendingSeekID:(int)d withMessage:(id)message forItem:(id)item ignoreSeekCompletion:(BOOL)completion;
- (void)_ensureInterstitialPlayerFor:(int)for;
- (void)_handleCurrentEventSkippedNotification:(id)notification;
- (void)_handleCurrentItemChangedNotification:(id)notification;
- (void)_handleCurrentItemFailedToPlayToEndNotification:(id)notification;
- (void)_handleCurrentItemPlaybackStalledNotification:(id)notification;
- (void)_handleCurrentItemPlayedToEndNotification:(id)notification;
- (void)_handleCurrentPlayerItemMediaSelectionDidChangeNotification:(id)notification;
- (void)_handleCurrentPlayerItemNewAccessLogEntryNotification:(id)notification;
- (void)_handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:(id)notification;
- (void)_handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:(id)notification;
- (void)_handleSeekDidCompleteNotification:(id)notification;
- (void)_handleTimeJumpedNotification:(id)notification;
- (void)_insertPlayQueueItemWithDictionary:(id)dictionary;
- (void)_pausePlayerIfNeededForState:(int64_t)state;
- (void)_processPlaybackCoordinationMediumWithDictionary:(id)dictionary;
- (void)_processStreamingKeyWithDictionary:(id)dictionary;
- (void)_processUnhandledURLWithDictionary:(id)dictionary;
- (void)_registerNotificationHandlersAndInsertPlayerItem:(id)item afterItem:(id)afterItem;
- (void)_registerNotificationHandlersForPlayer;
- (void)_removePendingSeekID:(int)d forItem:(id)item;
- (void)_removePlayQueueItemWithDictionary:(id)dictionary;
- (void)_seekWithDictionary:(id)dictionary;
- (void)_sendUpstreamErrorMessageWithError:(id)error;
- (void)_sendUpstreamMessageWithDictionary:(id)dictionary;
- (void)_sendUpstreamPlaybackStateMessageWithPlaybackStateString:(id)string stoppedBecauseInterrupted:(BOOL)interrupted;
- (void)_setPropertyWithDictionary:(id)dictionary;
- (void)_setRateWithDictionary:(id)dictionary;
- (void)_stopWithDictionary:(id)dictionary;
- (void)_unregisterNotificationHandlersAndRemovePlayerItem:(id)item;
- (void)_unregisterNotificationHandlersForPlayer;
- (void)_updateAudioSessionMode:(id)mode;
- (void)_updatePlaybackStateWithState:(int64_t)state stoppedBecauseInterrupted:(BOOL)interrupted shouldSendUpstreamMessage:(BOOL)message;
- (void)addDateRangeCollectorToItem:(id)item;
- (void)contentKeyHelper:(id)helper didGenerateSecureStopRecordPayload:(id)payload;
- (void)contentKeyHelper:(id)helper wantsToPerformContentKeyRequestWithDictionary:(id)dictionary;
- (void)dealloc;
- (void)integratedTimeline:(id)timeline didRequestSeekToTime:(id *)time seekID:(int)d toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (void)invalidate;
- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary;
- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier;
- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler;
- (void)processMessageWithIDAndDictionaryAsync:(id)async messageSessionID:(int)d;
- (void)processTLSInfoDictionary:(id)dictionary;
- (void)resourceLoaderHelper:(id)helper wantsToPerformUnhandledURLRequestWithDictionary:(id)dictionary forRequestID:(id)d;
- (void)setCompleteIntegratedTimelineSeekBlock:(id)block;
- (void)setCurrentInterstitialEventID:(id)d;
- (void)setInterstitialEventControllerForInterstitialPlayer:(id)player;
- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock;
- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address;
- (void)stopWithCompletionBlock:(id)block;
@end

@implementation APRKMediaPlayer

- (APRKMediaPlayer)initWithP2PWiFiSupport:(BOOL)support isInterstitialPlayer:(BOOL)player playerSessionID:(int)d
{
  v40.receiver = self;
  v40.super_class = APRKMediaPlayer;
  v8 = [(APRKMediaPlayer *)&v40 init];
  v9 = v8;
  if (v8)
  {
    v8->_stallCount = 0;
    v10 = dispatch_queue_create("com.apple.APRKMediaPlayer.messageQueue", 0);
    messageQueue = v9->_messageQueue;
    v9->_messageQueue = v10;

    v12 = objc_alloc_init(MEMORY[0x277CE65F8]);
    player = v9->_player;
    v9->_player = v12;

    [(AVQueuePlayer *)v9->_player setAllowsExternalPlayback:?];
    v9->_isInterstitialPlayer = player;
    interstitialEventControllerForPrimaryPlayer = v9->_interstitialEventControllerForPrimaryPlayer;
    v9->_interstitialEventControllerForPrimaryPlayer = 0;

    objc_storeWeak(&v9->_interstitialEventControllerForInterstitialPlayer, 0);
    v9->_pendingIntegratedTimelineSeekID = 0;
    v15 = objc_alloc_init(MEMORY[0x277CBEB38]);
    pendingIntegratedTimelineSeekIDMap = v9->_pendingIntegratedTimelineSeekIDMap;
    v9->_pendingIntegratedTimelineSeekIDMap = v15;

    if (v9->_isInterstitialPlayer)
    {
      completeIntegratedTimelineSeek = v9->_completeIntegratedTimelineSeek;
      v9->_completeIntegratedTimelineSeek = 0;
    }

    else
    {
      objc_initWeak(&location, v9);
      v34 = MEMORY[0x277D85DD0];
      v35 = 3221225472;
      v36 = __79__APRKMediaPlayer_initWithP2PWiFiSupport_isInterstitialPlayer_playerSessionID___block_invoke;
      v37 = &unk_278C626C0;
      objc_copyWeak(&v38, &location);
      v18 = _Block_copy(&v34);
      v19 = v9->_completeIntegratedTimelineSeek;
      v9->_completeIntegratedTimelineSeek = v18;

      objc_destroyWeak(&v38);
      objc_destroyWeak(&location);
    }

    [(APRKMediaPlayer *)v9 _registerNotificationHandlersForPlayer:v34];
    previousItemUUID = v9->_previousItemUUID;
    v9->_previousItemUUID = 0;

    currentItemUUID = v9->_currentItemUUID;
    v9->_currentItemUUID = 0;

    v22 = objc_alloc_init(APRKResourceLoaderHelper);
    resourceLoaderHelper = v9->_resourceLoaderHelper;
    v9->_resourceLoaderHelper = v22;

    [(APRKResourceLoaderHelper *)v9->_resourceLoaderHelper setDelegate:?];
    v24 = objc_alloc_init(APRKContentKeyHelper);
    contentKeyHelper = v9->_contentKeyHelper;
    v9->_contentKeyHelper = v24;

    [(APRKContentKeyHelper *)v9->_contentKeyHelper setDelegate:?];
    v9->_isP2PWiFiSession = support;
    v9->_playerSessionID = d;
    v9->_receiverNetworkClock = 0;
    *&v9->_isFirstSetRateReceived = 0;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    pendingSenderSeekMessages = v9->_pendingSenderSeekMessages;
    v9->_pendingSenderSeekMessages = dictionary;

    v28 = MEMORY[0x277CC0898];
    *&v9->_cachedTimeToPausePlayback.value = *MEMORY[0x277CC0898];
    v9->_cachedTimeToPausePlayback.epoch = *(v28 + 16);
    v9->_fpHelper = 0;
    if (APSSettingsIsFeatureEnabled())
    {
      uUID = [MEMORY[0x277CCAD78] UUID];
      localParticipantID = v9->_localParticipantID;
      v9->_localParticipantID = uUID;

      playbackCoordinator = [(AVQueuePlayer *)v9->_player playbackCoordinator];
      playbackCoordinator = v9->_playbackCoordinator;
      v9->_playbackCoordinator = playbackCoordinator;

      [(AVPlayerPlaybackCoordinator *)v9->_playbackCoordinator setCoordinationMediumDelegate:?];
      [(AVPlayerPlaybackCoordinator *)v9->_playbackCoordinator setDelegate:?];
    }
  }

  return v9;
}

void __79__APRKMediaPlayer_initWithP2PWiFiSupport_isInterstitialPlayer_playerSessionID___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));

  if (WeakRetained)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    v5 = [v7 currentItem];
    v6 = [v5 integratedTimeline];
    [v6 noteSeekID:? didFinish:?];
  }
}

- (void)dealloc
{
  if (self->_fpHelper)
  {
    APReceiverFairPlayHelperRemoveAllFPSessions();
    fpHelper = self->_fpHelper;
    if (fpHelper)
    {
      CFRelease(fpHelper);
    }
  }

  v4.receiver = self;
  v4.super_class = APRKMediaPlayer;
  [(APRKMediaPlayer *)&v4 dealloc];
}

- (void)invalidate
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKMediaPlayer *)self invalidate];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __29__APRKMediaPlayer_invalidate__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(messageQueue, block);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __29__APRKMediaPlayer_invalidate__block_invoke_2;
  v4[3] = &unk_278C626E8;
  v4[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], v4);
}

void __29__APRKMediaPlayer_invalidate__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 112) setDelegate:?];
  [*(*(a1 + 32) + 120) setDelegate:?];
  [*(*(a1 + 32) + 128) setCoordinationMediumDelegate:?];
  [*(*(a1 + 32) + 128) setDelegate:?];
  v2 = *(a1 + 32);
  v3 = *(v2 + 168);
  if (v3)
  {
    CFRelease(v3);
    *(*(a1 + 32) + 168) = 0;
    v2 = *(a1 + 32);
  }

  v4 = *(v2 + 160);
  if (v4)
  {
    CFRelease(v4);
    *(*(a1 + 32) + 160) = 0;
  }
}

void __29__APRKMediaPlayer_invalidate__block_invoke_2(uint64_t a1)
{
  *(*(a1 + 32) + 178) = 1;
  v2 = [*(*(a1 + 32) + 8) items];
  v3 = [v2 countByEnumeratingWithState:0 objects:? count:?];
  if (v3)
  {
    v4 = v3;
    v5 = MEMORY[0];
    do
    {
      for (i = 0; i != v4; i = (i + 1))
      {
        if (MEMORY[0] != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 32) _unregisterNotificationHandlersAndRemovePlayerItem:?];
      }

      v4 = [v2 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v4);
  }

  [*(a1 + 32) _unregisterNotificationHandlersForPlayer];
}

- (void)stopWithCompletionBlock:(id)block
{
  blockCopy = block;
  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_sync(messageQueue, block);
  v6 = self->_messageQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_2;
  v8[3] = &unk_278C62710;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  dispatch_async(v6, v8);
}

void __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  [*(a1 + 32) _updatePlaybackStateWithState:? stoppedBecauseInterrupted:? shouldSendUpstreamMessage:?];
  v2 = *(*(a1 + 32) + 216);
  if (v2)
  {
    v3 = v2;
    v4 = *(a1 + 32);
    v5 = *(v4 + 216);
    *(v4 + 216) = 0;

    [v3 setMessagingDelegate:?];
    [*(*(a1 + 32) + 8) _setInterstitialPlayer:?];
    v9 = MEMORY[0x277D85DD0];
    v10 = *(a1 + 40);
    v6 = v3;
    [v6 stopWithCompletionBlock:{v9, 3221225472, __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_3, &unk_278C62710}];
  }

  else
  {
    v7 = *(a1 + 40);
    if (v7)
    {
      v8 = *(v7 + 16);

      v8();
    }
  }
}

uint64_t __43__APRKMediaPlayer_stopWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  result = *(a1 + 40);
  if (result)
  {
    v3 = *(result + 16);

    return v3();
  }

  return result;
}

- (void)setCompleteIntegratedTimelineSeekBlock:(id)block
{
  v4 = _Block_copy(block);
  completeIntegratedTimelineSeek = self->_completeIntegratedTimelineSeek;
  self->_completeIntegratedTimelineSeek = v4;

  MEMORY[0x2821F96F8](v4, completeIntegratedTimelineSeek);
}

- (APRKMediaPlayerMessagingDelegate)messagingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_messagingDelegate);

  return WeakRetained;
}

- (void)setSessionReceiverAddress:(OpaqueAPSNetworkAddress *)address
{
  sessionReceiverAddr = self->_sessionReceiverAddr;
  self->_sessionReceiverAddr = address;
  if (address)
  {
    CFRetain(address);
  }

  if (sessionReceiverAddr)
  {

    CFRelease(sessionReceiverAddr);
  }
}

- (void)setInterstitialEventControllerForInterstitialPlayer:(id)player
{
  if (self->_isInterstitialPlayer)
  {
    objc_storeWeak(&self->_interstitialEventControllerForInterstitialPlayer, player);
  }
}

- (void)setCurrentInterstitialEventID:(id)d
{
  dCopy = d;
  objc_storeStrong(&self->_currentInterstitialEventID, d);
  interstitialPlayer = self->_interstitialPlayer;
  if (interstitialPlayer)
  {
    [(APRKMediaPlayer *)interstitialPlayer setCurrentInterstitialEventID:?];
  }
}

- (void)setReceiverNetworkClock:(OpaqueAPSNetworkClock *)clock
{
  receiverNetworkClock = self->_receiverNetworkClock;
  self->_receiverNetworkClock = clock;
  if (clock)
  {
    CFRetain(clock);
  }

  if (receiverNetworkClock)
  {

    CFRelease(receiverNetworkClock);
  }
}

- (BOOL)shouldDelegateToInterstitialPlayerForMessageAndID:(id)d sessionID:(int)iD
{
  dCopy = d;
  v6 = dCopy;
  if (self->_isInterstitialPlayer || ([dCopy objectForKey:?], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "BOOLValue"), v7, !v8))
  {
    v9 = 0;
  }

  else
  {
    if (!self->_interstitialPlayer)
    {
      [(APRKMediaPlayer *)self _ensureInterstitialPlayerFor:?];
    }

    v9 = 1;
  }

  return v9;
}

- (void)_ensureInterstitialPlayerFor:(int)for
{
  if (!self->_interstitialPlayer)
  {
    v5 = [APRKMediaPlayer initWithP2PWiFiSupport:"initWithP2PWiFiSupport:isInterstitialPlayer:playerSessionID:" isInterstitialPlayer:? playerSessionID:?];
    interstitialPlayer = self->_interstitialPlayer;
    self->_interstitialPlayer = v5;

    v7 = self->_interstitialPlayer;
    WeakRetained = objc_loadWeakRetained(&self->_messagingDelegate);
    [(APRKMediaPlayer *)v7 setMessagingDelegate:?];

    [(APRKMediaPlayer *)self->_interstitialPlayer setSessionReceiverAddress:?];
    v13 = self->_player;
    backingAVQueuePlayer = [(APRKMediaPlayer *)self->_interstitialPlayer backingAVQueuePlayer];
    if (v13 && backingAVQueuePlayer)
    {
      [(AVQueuePlayer *)v13 _setInterstitialPlayer:?];
      if (self->_interstitialEvents)
      {
        currentItem = [(AVQueuePlayer *)v13 currentItem];
        [AVQueuePlayer _noteRemoteInterstitialEvents:v13 forItem:"_noteRemoteInterstitialEvents:forItem:"];
      }

      if (self->_currentInterstitialEventID)
      {
        [(APRKMediaPlayer *)self->_interstitialPlayer setCurrentInterstitialEventID:?];
        [(AVQueuePlayer *)v13 _noteCurrentRemoteInterstitialEvent:?];
      }
    }

    if (!self->_isInterstitialPlayer)
    {
      v11 = [MEMORY[0x277CE65A0] interstitialEventControllerWithPrimaryPlayer:?];
      interstitialEventControllerForPrimaryPlayer = self->_interstitialEventControllerForPrimaryPlayer;
      self->_interstitialEventControllerForPrimaryPlayer = v11;
    }

    [(APRKMediaPlayer *)self->_interstitialPlayer setPendingIntegratedTimelineSeekID:?];
    [(APRKMediaPlayer *)self->_interstitialPlayer setInterstitialEventControllerForInterstitialPlayer:?];
    [(APRKMediaPlayer *)self->_interstitialPlayer setCompleteIntegratedTimelineSeekBlock:?];
  }
}

- (void)processMessageWithIDAndDictionaryAsync:(id)async messageSessionID:(int)d
{
  asyncCopy = async;
  v7 = asyncCopy;
  if (self->_playerSessionID == d)
  {
    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__APRKMediaPlayer_processMessageWithIDAndDictionaryAsync_messageSessionID___block_invoke;
    block[3] = &unk_278C62738;
    block[4] = self;
    v10 = asyncCopy;
    dCopy = d;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer processMessageWithIDAndDictionaryAsync:v7 messageSessionID:?];
  }
}

void *__75__APRKMediaPlayer_processMessageWithIDAndDictionaryAsync_messageSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldDelegateToInterstitialPlayerForMessageAndID:? sessionID:?];
  v3 = *(a1 + 32);
  if (v2)
  {
    v4 = v3[27];

    return [v4 processMessageWithIDAndDictionaryAsync:? messageSessionID:?];
  }

  else
  {
    v6 = [v3 _processMessageWithDictionaryInternal:?];
    v7 = v6;
    if (v6)
    {
      v8 = v6;
      v6 = [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
      v7 = v8;
    }

    return MEMORY[0x2821F96F8](v6, v7);
  }
}

- (id)processMessageWithIDAndDictionarySync:(id)sync messageSessionID:(int)d
{
  syncCopy = sync;
  v7 = syncCopy;
  v8 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  if (self->_playerSessionID == d)
  {
    messageQueue = self->_messageQueue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke;
    v12[3] = &unk_278C62760;
    v12[4] = self;
    dCopy = d;
    v13 = syncCopy;
    v14 = &v16;
    dispatch_sync(messageQueue, v12);

    v8 = v17[5];
  }

  v10 = v8;
  _Block_object_dispose(&v16, 8);

  return v10;
}

void __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) shouldDelegateToInterstitialPlayerForMessageAndID:? sessionID:?];
  v3 = *(a1 + 32);
  if (v2)
  {
    [v3[27] processMessageWithIDAndDictionarySync:? messageSessionID:?];
  }

  else
  {
    [v3 _processMessageWithDictionaryInternal:?];
  }
  v4 = ;
  v6 = *(a1 + 48);
  v5 = a1 + 48;
  v7 = *(v6 + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v4;

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke_cold_1(v5);
  }
}

- (id)_processMessageWithDictionaryInternal:(id)internal
{
  internalCopy = internal;
  v5 = internalCopy;
  if (!internalCopy)
  {
LABEL_13:
    v7 = 0;
    v6 = 0;
    goto LABEL_14;
  }

  v6 = [internalCopy objectForKey:?];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _processMessageWithDictionaryInternal:]", 33554462, "[VideoV2: Sender -> Receiver (%@)] %@", v6, v5);
  }

  if (!v6)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processMessageWithDictionaryInternal:v5];
    }

    goto LABEL_13;
  }

  if ([v6 isEqualToString:?])
  {
    [(APRKMediaPlayer *)self _processUnhandledURLWithDictionary:?];
LABEL_9:
    v7 = 0;
    goto LABEL_14;
  }

  if ([v6 isEqualToString:?])
  {
    v9 = [(APRKMediaPlayer *)self _processPlaybackInfoRequestWithDictionary:?];
  }

  else
  {
    if ([v6 isEqualToString:?])
    {
      [(APRKMediaPlayer *)self _setPropertyWithDictionary:?];
      goto LABEL_9;
    }

    if ([v6 isEqualToString:?])
    {
      v9 = [(APRKMediaPlayer *)self _getPropertyWithDictionary:?];
    }

    else
    {
      if ([v6 isEqualToString:?])
      {
        [(APRKMediaPlayer *)self _insertPlayQueueItemWithDictionary:?];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:?])
      {
        [(APRKMediaPlayer *)self _removePlayQueueItemWithDictionary:?];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:?])
      {
        [(APRKMediaPlayer *)self _setRateWithDictionary:?];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:?])
      {
        [(APRKMediaPlayer *)self _seekWithDictionary:?];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:?])
      {
        [(APRKMediaPlayer *)self _processStreamingKeyWithDictionary:?];
        goto LABEL_9;
      }

      if ([v6 isEqualToString:?])
      {
        [(APRKMediaPlayer *)self _stopWithDictionary:?];
        goto LABEL_9;
      }

      if (![v6 isEqualToString:?])
      {
        if ([v6 isEqualToString:?] && APSSettingsIsFeatureEnabled())
        {
          [(APRKMediaPlayer *)self _processPlaybackCoordinationMediumWithDictionary:?];
        }

        goto LABEL_9;
      }

      v9 = [(APRKMediaPlayer *)self _processAuthorizeItemWithDictionary:?];
    }
  }

  v7 = v9;
LABEL_14:

  return v7;
}

- (id)_serializeTimeRanges:(id)ranges
{
  v24 = *MEMORY[0x277D85DE8];
  rangesCopy = ranges;
  if (rangesCopy)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = rangesCopy;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = rangesCopy;
    v5 = [obj countByEnumeratingWithState:? objects:? count:?];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v20 + 1) + 8 * i);
          memset(v19, 0, sizeof(v19));
          if (v9)
          {
            [(CMTime *)v19 CMTimeRangeValue];
          }

          v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
          time = v19[0];
          v11 = CMTimeCopyAsDictionary(&time, 0);
          if (v11)
          {
            v12 = v11;
            [v10 setObject:? forKey:?];
          }

          time = v19[1];
          v13 = CMTimeCopyAsDictionary(&time, 0);
          if (v13)
          {
            v14 = v13;
            [v10 setObject:? forKey:?];
          }

          [array addObject:v16];
        }

        v6 = [obj countByEnumeratingWithState:? objects:? count:?];
      }

      while (v6);
    }

    rangesCopy = v16;
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)_currentPlaybackInfoDictionary
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  v5 = currentItem;
  if (!currentItem)
  {
    if (self->_isInterstitialPlayer)
    {
      goto LABEL_38;
    }

    v36 = MEMORY[0x277CCA9B8];
    v41 = *MEMORY[0x277CCA450];
    v42 = @"Sender requested playbackInfo while AVPlayer on Receiver side did not have a current playerItem.";
    v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    v6 = [v36 errorWithDomain:? code:? userInfo:?];

    currentDate = [APRKUtilities dictionaryForError:?];
    [v3 setObject:? forKey:?];
    goto LABEL_36;
  }

  v43 = @"uuid";
  uUIDString = [currentItem UUIDString];
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v3 setObject:? forKey:?];
  status = [v5 status];
  v8 = [MEMORY[0x277CCABB0] numberWithBool:?];
  [v3 setObject:? forKey:?];

  if (status == 1)
  {
    currentDate = [v5 currentDate];
    if (currentDate)
    {
      [v3 setObject:? forKey:?];
      v10 = MEMORY[0x277CCABB0];
      [currentDate timeIntervalSinceReferenceDate];
      v11 = [v10 numberWithDouble:?];
      [v3 setObject:? forKey:?];
    }

    [&time duration];
    v12 = *MEMORY[0x277CBECE8];
    v13 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
    [v3 setObject:? forKey:?];

    if (!self->_isInTrickPlay)
    {
      [&time currentTime];
      v14 = CMTimeCopyAsDictionary(&time, v12);
      [v3 setObject:? forKey:?];
    }

    if ([(AVQueuePlayer *)self->_player timeControlStatus]== 2)
    {
      [(AVQueuePlayer *)self->_player rate];
    }

    if (!self->_isInTrickPlay)
    {
      v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [v3 setObject:? forKey:?];
    }

    [(APRKMediaPlayer *)self _pausePlayerIfNeededForState:?];
    v16 = [(APRKMediaPlayer *)self _figPlaybackStateStringFrom:?];
    if (v16)
    {
      [v3 setObject:? forKey:?];
    }

    if (self->_isWaitingToSetRateFromSenderAfterSeek)
    {
      [v3 setObject:? forKey:?];
    }

    v17 = MEMORY[0x277CCABB0];
    [v5 isPlaybackLikelyToKeepUp];
    v18 = [v17 numberWithBool:?];
    [v3 setObject:? forKey:?];

    currentEstimatedDate = [v5 currentEstimatedDate];
    if (currentEstimatedDate)
    {
      [v3 setObject:? forKey:?];
    }

    v20 = MEMORY[0x277CCABB0];
    [v5 isPlaybackBufferFull];
    v21 = [v20 numberWithBool:?];
    [v3 setObject:? forKey:?];

    v22 = MEMORY[0x277CCABB0];
    [v5 isPlaybackBufferEmpty];
    v23 = [v22 numberWithBool:?];
    [v3 setObject:? forKey:?];

    seekableTimeRanges = [v5 seekableTimeRanges];
    v25 = [(APRKMediaPlayer *)self _serializeTimeRanges:?];

    if (v25)
    {
      [v3 setObject:? forKey:?];
    }

    loadedTimeRanges = [v5 loadedTimeRanges];
    v27 = [(APRKMediaPlayer *)self _serializeTimeRanges:?];

    if (v27)
    {
      [v3 setObject:? forKey:?];
    }

    v28 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [v3 setObject:? forKey:?];

    interstitialPlayer = self->_interstitialPlayer;
    if (interstitialPlayer)
    {
      _currentPlaybackInfoDictionary = [(APRKMediaPlayer *)interstitialPlayer _currentPlaybackInfoDictionary];
      [v3 setObject:? forKey:?];
    }

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      if (self->_isInterstitialPlayer)
      {
        v31 = "interstitial";
      }

      else
      {
        v31 = "primary";
      }

      v39 = v31;
      uUIDString2 = [v5 UUIDString];
      [&time duration];
      Seconds = CMTimeGetSeconds(&time);
      [&time currentTime];
      v34 = CMTimeGetSeconds(&time);
      if (self->_isWaitingToSetRateFromSenderAfterSeek)
      {
        v35 = "true";
      }

      else
      {
        v35 = "false";
      }

      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _currentPlaybackInfoDictionary]", 33554462, "GetPlaybackInfo for %s item %@, Duration: %f, Position: %f, PlaybackState: %@, isWaitingToSetRateFromSenderAfterSeek: %s", v39, uUIDString2, *&Seconds, *&v34, v16, v35);
    }

LABEL_36:
  }

LABEL_38:

  return v3;
}

- (id)_playerItemForUUID:(id)d
{
  dCopy = d;
  items = [(AVQueuePlayer *)self->_player items];
  v6 = [items countByEnumeratingWithState:? objects:? count:?];
  if (v6)
  {
    v7 = v6;
    v8 = MEMORY[0];
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (MEMORY[0] != v8)
      {
        objc_enumerationMutation(items);
      }

      v10 = *(8 * v9);
      uUIDString = [v10 UUIDString];
      v12 = [dCopy isEqualToString:?];

      if (v12)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [items countByEnumeratingWithState:? objects:? count:?];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v10 = 0;
  }

  return v10;
}

- (id)_frontPlayerItem
{
  items = [(AVQueuePlayer *)self->_player items];
  firstObject = [items firstObject];

  return firstObject;
}

- (void)processTLSInfoDictionary:(id)dictionary
{
  v4 = [(APRKMediaPlayer *)self _SSLPropertiesforTLSInfo:?];
  cachedSSLProperties = self->_cachedSSLProperties;
  self->_cachedSSLProperties = v4;

  MEMORY[0x2821F96F8](v4, cachedSSLProperties);
}

- (id)_SSLPropertiesforTLSInfo:(id)info
{
  if (info)
  {
    infoCopy = info;
    v4 = [infoCopy objectForKey:?];
    v5 = [infoCopy objectForKey:?];

    v6 = 0;
    if (v4 && v5)
    {
      v7 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
      v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)_ensureFairPlayHelper
{
  if (self->_fpHelper)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  v4 = APReceiverFairPlayHelperCreate();
  self->_fpHelper = v4;
  if (v4)
  {
    LOBYTE(v2) = 1;
    return v2;
  }

  if (gLogCategory_AirPlayReceiverKit > 90)
  {
LABEL_9:
    LOBYTE(v2) = 0;
    return v2;
  }

  if (gLogCategory_AirPlayReceiverKit != -1 || (v2 = _LogCategory_Initialize()) != 0)
  {
    [APRKMediaPlayer _ensureFairPlayHelper];
    goto LABEL_9;
  }

  return v2;
}

- (void)_updateAudioSessionMode:(id)mode
{
  modeCopy = mode;
  v6 = modeCopy;
  audioSessionMode = self->_audioSessionMode;
  if (audioSessionMode)
  {
    if (!modeCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _updateAudioSessionMode:];
    }

    objc_storeStrong(&self->_audioSessionMode, *MEMORY[0x277CC0DF8]);
    if (!v6)
    {
      goto LABEL_9;
    }
  }

  if (([v6 isEqualToString:?] & 1) == 0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _updateAudioSessionMode:]", 33554482, "Updating audioMode from %@ to %@", self->_audioSessionMode, v6);
    }

    objc_storeStrong(&self->_audioSessionMode, mode);
    goto LABEL_19;
  }

LABEL_9:
  if (audioSessionMode)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _updateAudioSessionMode:];
    }

    goto LABEL_23;
  }

LABEL_19:
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKMediaPlayer *)v10 _updateAudioSessionMode:v8, v9];
  }

  messagingDelegate = [(APRKMediaPlayer *)self messagingDelegate];
  [messagingDelegate mediaPlayer:? wantsToPostNotification:? withPayload:?];

LABEL_23:
}

- (void)_insertPlayQueueItemWithDictionary:(id)dictionary
{
  v72 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v64 = *MEMORY[0x277CC08F0];
  *&v69.value = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  v69.epoch = v6;
  v7 = 0x27E37F000uLL;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _insertPlayQueueItemWithDictionary:dictionaryCopy];
  }

  v8 = MEMORY[0x277CBEB38];
  v9 = [dictionaryCopy objectForKey:?];
  v10 = [v8 dictionaryWithDictionary:?];

  if (v10)
  {
    v11 = [v10 objectForKey:?];

    if (v11)
    {
      v12 = objc_alloc(MEMORY[0x277CE6630]);
      v13 = [v10 objectForKey:?];
      v14 = [v12 initWithSpecifiedName:?];

      if (v14)
      {
        [(AVQueuePlayer *)self->_player setLoggingIdentifier:?];
      }

      v7 = 0x27E37F000uLL;
    }

    v15 = [v10 objectForKey:?];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      messagingDelegate = [(APRKMediaPlayer *)self messagingDelegate];
      [messagingDelegate mediaPlayerNeedsTLSInfo:?];

      if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKMediaPlayer *)self _insertPlayQueueItemWithDictionary:v18, v19];
      }

      if (self->_cachedSSLProperties)
      {
        [v5 setObject:? forKey:?];
      }

      if (self->_isP2PWiFiSession)
      {
        v20 = [MEMORY[0x277CCABB0] numberWithBool:?];
        [v5 setObject:? forKey:?];
      }

      v21 = [v10 objectForKey:?];
      v68 = 0;
      v22 = [APRKMediaPlayer _fixedIPContentLocationFromURLString:"_fixedIPContentLocationFromURLString:error:" error:?];
      v23 = 0;
      if (v22)
      {
        [v10 setObject:? forKey:?];
      }

      v7 = 0x27E37F000;
    }

    else
    {
      cachedSSLProperties = self->_cachedSSLProperties;
      self->_cachedSSLProperties = 0;
    }

    v25 = [v10 objectForKey:?];
    if (v25)
    {
      v26 = APReceiverFairPlayHelperProcessFPInfo();
      if (v26)
      {
        v27 = v26;
        v28 = v6;
        v29 = v25;
        v30 = *(v7 + 2968);
        if (v30 <= 30 && (v30 != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:v27];
        }

        v31 = MEMORY[0x277CCA9B8];
        v70 = *MEMORY[0x277CCA450];
        v71 = @"Failed to process FP Info";
        v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        v33 = [v31 errorWithDomain:? code:? userInfo:?];
        [(APRKMediaPlayer *)self _sendUpstreamErrorMessageWithError:?];

        v7 = 0x27E37F000uLL;
        v25 = v29;
        v6 = v28;
      }

      v34 = [v10 objectForKey:?];
      v35 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [v35 setObject:? forKey:?];
      if ([v25 length])
      {
        [v35 setObject:? forKey:?];
      }

      else
      {
        v36 = *(v7 + 2968);
        if (v36 <= 30 && (v36 != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }
      }

      [v5 setObject:? forKey:?];
    }

    v37 = MEMORY[0x277CBEB38];
    v38 = [v10 objectForKey:?];
    v39 = [v37 dictionaryWithDictionary:?];

    if (v39)
    {
      [v5 setObject:? forKey:?];
    }

    else
    {
      v40 = *(v7 + 2968);
      if (v40 <= 30 && (v40 != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
      }
    }

    v63 = v5;
    v41 = [APRKPlayerItem initWithDictionary:"initWithDictionary:resourceLoaderHelper:contentKeyHelper:options:" resourceLoaderHelper:? contentKeyHelper:? options:?];
    v42 = [v10 objectForKey:?];
    if (APSSettingsIsFeatureEnabled() && v42)
    {
      [v42 BOOLValue];
    }

    v43 = *(v7 + 2968);
    if (!v41)
    {
      if (v43 <= 30 && (v43 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _insertPlayQueueItemWithDictionary:]", 33554462, "insert play queue item, unable to create item with dictionary = %@ options = %@", v10, v63);
      }

      goto LABEL_77;
    }

    if (v43 <= 30 && (v43 != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _insertPlayQueueItemWithDictionary:v41];
    }

    *&v69.value = v64;
    v69.epoch = v6;
    v44 = [v10 objectForKey:?];
    if (v44)
    {
      [(APRKPlayerItem *)v41 setStartDate:?];
    }

    v61 = v39;
    v45 = [v10 objectForKey:?];
    v46 = v45;
    if (v45)
    {
      CMTimeMakeFromDictionary(&v69, v45);
      v67 = v69;
      [(APRKPlayerItem *)v41 setStartPosition:?];
    }

    v59 = v46;
    v60 = v44;
    v47 = [dictionaryCopy objectForKey:?];
    v48 = v47;
    if (v47)
    {
      v49 = [v47 objectForKey:?];
      v58 = [(APRKMediaPlayer *)self _playerItemForUUID:?];
      if (v49)
      {
LABEL_60:
        v65 = v25;
        v51 = [v10 objectForKey:?];
        memset(&v67, 0, sizeof(v67));
        CMTimeMakeFromDictionary(&v67, v51);
        if ((v67.flags & 0x1D) == 1)
        {
          v66 = v67;
          [(APRKPlayerItem *)v41 setTimeToPauseBuffering:?];
        }

        v52 = [v10 objectForKey:?];
        memset(&v66, 0, sizeof(v66));
        CMTimeMakeFromDictionary(&v66, v52);
        v62 = dictionaryCopy;
        if ((v66.flags & 0x1D) == 1)
        {
          [(APRKPlayerItem *)v41 setTimeToPausePlayback:?];
          *&self->_cachedTimeToPausePlayback.value = *&v66.value;
          epoch = v66.epoch;
        }

        else
        {
          v54 = MEMORY[0x277CC0898];
          *&self->_cachedTimeToPausePlayback.value = *MEMORY[0x277CC0898];
          epoch = *(v54 + 16);
        }

        self->_cachedTimeToPausePlayback.epoch = epoch;
        v55 = [v10 objectForKey:?];
        v56 = v55;
        if (v55)
        {
          [v55 BOOLValue];
          [(APRKPlayerItem *)v41 setSnapTimeToPausePlayback:?];
        }

        [(APRKPlayerItem *)v41 setAutomaticallyHandlesInterstitialEvents:?];
        v57 = [v10 objectForKey:?];
        if (v57 && gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }

        if (self->_isInterestedInDateRange)
        {
          [(APRKMediaPlayer *)self addDateRangeCollectorToItem:?];
        }

        [APRKMediaPlayer _registerNotificationHandlersAndInsertPlayerItem:"_registerNotificationHandlersAndInsertPlayerItem:afterItem:" afterItem:?];
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
        }

        v39 = v61;
        dictionaryCopy = v62;
        v25 = v65;
LABEL_77:

        v5 = v63;
        goto LABEL_78;
      }
    }

    else
    {
      v58 = 0;
    }

    v50 = *(v7 + 2968);
    if (v50 <= 30 && (v50 != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _insertPlayQueueItemWithDictionary:];
    }

    v49 = 0;
    goto LABEL_60;
  }

LABEL_78:
}

- (void)_removePlayQueueItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _removePlayQueueItemWithDictionary:dictionaryCopy];
  }

  v5 = [dictionaryCopy objectForKey:?];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKey:?];
    v7 = [v6 objectForKey:?];
    v8 = [(APRKMediaPlayer *)self _playerItemForUUID:?];
    if (v8)
    {
      v9 = v8;
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _removePlayQueueItemWithDictionary:v9];
      }

      items = [(AVQueuePlayer *)self->_player items];
      v11 = [items count];

      if (v11 == 1)
      {
        [(APRKResourceLoaderHelper *)self->_resourceLoaderHelper forgetAllActiveResourceLoadingRequests];
        [(APRKContentKeyHelper *)self->_contentKeyHelper forgetAllActiveContentKeyRequests];
      }

      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __54__APRKMediaPlayer__removePlayQueueItemWithDictionary___block_invoke;
      v13[3] = &unk_278C62788;
      v12 = v9;
      v14 = v12;
      selfCopy = self;
      dispatch_async(MEMORY[0x277D85CD0], v13);
    }

    else
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _removePlayQueueItemWithDictionary:v7];
      }

      v12 = 0;
    }
  }

  else
  {
    v6 = 0;
    v12 = 0;
    v7 = 0;
  }
}

void __54__APRKMediaPlayer__removePlayQueueItemWithDictionary___block_invoke(uint64_t a1)
{
  v4 = [*(a1 + 32) asset];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = *(*(a1 + 40) + 112);
    v3 = v4;
    [v2 unregisterAVURLAsset:?];
    [*(*(a1 + 40) + 120) unregisterAVURLAsset:?];
  }

  [*(a1 + 40) _unregisterNotificationHandlersAndRemovePlayerItem:?];
}

- (void)_setRateWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v33 = **&MEMORY[0x277CC0898];
  v32 = v33;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _setRateWithDictionary:dictionaryCopy];
  }

  v5 = [dictionaryCopy objectForKey:?];
  [v5 floatValue];
  v7 = v6;

  CMTimeIfPresent = FigCFDictionaryGetCMTimeIfPresent();
  cachedSetRateAndAnchor = self->_cachedSetRateAndAnchor;
  self->_cachedSetRateAndAnchor = 0;

  Value = CFDictionaryGetValue(dictionaryCopy, @"networkClockTime");
  if (Value)
  {
    v11 = Value;
    hostTime = 0;
    v29 = *MEMORY[0x277CEA280];
    v30 = *(MEMORY[0x277CEA280] + 16);
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setRateWithDictionary:v11];
    }

    v12 = APSNetworkTimeMakeFromDictionary();
    receiverNetworkClock = self->_receiverNetworkClock;
    if (receiverNetworkClock)
    {
      v27 = v29;
      v28 = v30;
      VTable = CMBaseObjectGetVTable();
      v20 = *(VTable + 16);
      v19 = VTable + 16;
      v21 = *(v20 + 24);
      if (v21 && (v34 = v27, v35 = v28, v19 = v21(receiverNetworkClock, &v34, &hostTime), !v19))
      {
        CMClockMakeHostTimeFromSystemUnits(&v33, hostTime);
      }

      else if (gLogCategory_AirPlayReceiverKit <= 90)
      {
        if (gLogCategory_AirPlayReceiverKit != -1 || (v19 = _LogCategory_Initialize(), v19))
        {
          [(APRKMediaPlayer *)v19 _setRateWithDictionary:v17, v18];
        }
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 90)
    {
      if (gLogCategory_AirPlayReceiverKit != -1 || (v12 = _LogCategory_Initialize(), v12))
      {
        [(APRKMediaPlayer *)v12 _setRateWithDictionary:v13, v14];
      }
    }
  }

  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __42__APRKMediaPlayer__setRateWithDictionary___block_invoke;
  v22[3] = &unk_278C627B0;
  v22[4] = self;
  v23 = v7;
  v26 = CMTimeIfPresent != 0;
  v24 = v32;
  v25 = v33;
  dispatch_sync(MEMORY[0x277D85CD0], v22);
}

void __42__APRKMediaPlayer__setRateWithDictionary___block_invoke(uint64_t a1, double a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a1 + 32;
  v3 = *(a1 + 32);
  if ((*(v3 + 177) & 1) == 0)
  {
    *(v3 + 177) = 1;
    v3 = *v4;
  }

  *(v3 + 180) = 0;
  if (*(a1 + 40) != 0.0)
  {
    [*(*v4 + 8) setDefaultRate:?];
  }

  if (*(a1 + 92) == 1)
  {
    v5 = [*(*(a1 + 32) + 8) currentItem];
    v6 = v5;
    if ((*(a1 + 56) & 1) != 0 && v5)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        v7 = *(*(a1 + 32) + 8);
        time = *(a1 + 44);
        Seconds = CMTimeGetSeconds(&time);
        time = *(a1 + 68);
        v9 = CMTimeGetSeconds(&time);
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _setRateWithDictionary:]_block_invoke", 33554462, "Set rate on player %@ for media time = %f and host time = %f for item %@, rate = %f", v7, *&Seconds, *&v9, v6, *(a1 + 40));
      }

      v13 = objc_alloc_init(MEMORY[0x277CE65F0]);
      [v13 setPreferCoordinatedPlaybackBehavior:?];
      if ([*(*v4 + 8) status] == 1)
      {
        v14 = *(*(a1 + 32) + 8);
        time = *(a1 + 44);
        [v14 setRate:? time:? atHostTime:? options:?];
      }

      else
      {
        v22 = @"rate";
        v15 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        v26 = v15;
        v23 = @"time";
        time = *(a1 + 44);
        v16 = [MEMORY[0x277CCAE60] valueWithCMTime:?];
        v27 = v16;
        v24 = @"hostTime";
        time = *(a1 + 68);
        v17 = [MEMORY[0x277CCAE60] valueWithCMTime:?];
        v25 = @"options";
        v28 = v17;
        v29 = v13;
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
        v19 = *(a1 + 32);
        v20 = *(v19 + 72);
        *(v19 + 72) = v18;
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      time = *(a1 + 44);
      v11 = CMTimeGetSeconds(&time);
      time = *(a1 + 68);
      v12 = CMTimeGetSeconds(&time);
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _setRateWithDictionary:]_block_invoke", 33554522, "Cannot calculate a new position for media time = %f and host time = %f for item %@, just apply the rate = %f", *&v11, *&v12, v6, *(a1 + 40));
    }
  }

  else
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __42__APRKMediaPlayer__setRateWithDictionary___block_invoke_cold_1((a1 + 40), v4);
    }

    v10 = *(*v4 + 8);

    [v10 setRate:?];
  }
}

- (void)_addPendingSeekID:(int)d withMessage:(id)message forItem:(id)item ignoreSeekCompletion:(BOOL)completion
{
  v7 = *&d;
  messageCopy = message;
  itemCopy = item;
  uUIDString = [itemCopy UUIDString];
  v11 = [uUIDString length];

  if (v11)
  {
    uUIDString4 = [MEMORY[0x277CCACA8] stringWithFormat:v7];
    pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
    uUIDString2 = [itemCopy UUIDString];
    dictionary = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:?];

    if (!dictionary)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
    }

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v17 = [MEMORY[0x277CCABB0] numberWithBool:?];
    [dictionary2 setObject:? forKeyedSubscript:?];

    if (messageCopy)
    {
      [dictionary2 setObject:? forKeyedSubscript:?];
    }

    [dictionary setObject:? forKeyedSubscript:?];
    v18 = self->_pendingSenderSeekMessages;
    uUIDString3 = [itemCopy UUIDString];
    [NSMutableDictionary setObject:v18 forKeyedSubscript:"setObject:forKeyedSubscript:"];

    goto LABEL_7;
  }

  if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    uUIDString4 = [itemCopy UUIDString];
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _addPendingSeekID:withMessage:forItem:ignoreSeekCompletion:]", 33554522, "Cannot add pending seekID for item %@, UUID %@", itemCopy, uUIDString4);
LABEL_7:
  }
}

- (void)_removePendingSeekID:(int)d forItem:(id)item
{
  v4 = *&d;
  itemCopy = item;
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:v4];
  pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
  uUIDString = [itemCopy UUIDString];
  v9 = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:?];

  [v9 removeObjectForKey:?];
  allKeys = [v9 allKeys];
  v11 = [allKeys count];

  if (!v11)
  {
    v12 = self->_pendingSenderSeekMessages;
    uUIDString2 = [itemCopy UUIDString];
    [(NSMutableDictionary *)v12 removeObjectForKey:?];
  }
}

- (BOOL)_shouldIgnoreSeekCompletionForSeekID:(int)d forItem:(id)item
{
  v4 = *&d;
  v6 = MEMORY[0x277CCACA8];
  itemCopy = item;
  v8 = [v6 stringWithFormat:v4];
  pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
  uUIDString = [itemCopy UUIDString];

  v11 = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:?];
  v12 = [v11 objectForKeyedSubscript:?];
  v13 = [v12 objectForKeyedSubscript:?];
  bOOLValue = [v13 BOOLValue];

  return bOOLValue;
}

- (id)_seekRequestMessageForSeekID:(int)d forItem:(id)item
{
  v4 = *&d;
  v6 = MEMORY[0x277CCACA8];
  itemCopy = item;
  v8 = [v6 stringWithFormat:v4];
  pendingSenderSeekMessages = self->_pendingSenderSeekMessages;
  uUIDString = [itemCopy UUIDString];

  v11 = [(NSMutableDictionary *)pendingSenderSeekMessages objectForKeyedSubscript:?];
  v12 = [v11 objectForKeyedSubscript:?];
  v13 = [v12 objectForKeyedSubscript:?];

  return v13;
}

- (void)_seekWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v43 = 0;
  v44 = &v43;
  v45 = 0x3032000000;
  v46 = __Block_byref_object_copy_;
  v47 = __Block_byref_object_dispose_;
  v48 = 0;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _seekWithDictionary:]", 33554462, "[APV Protocol: Sender -> Receiver (seek)] messageDict = %@", dictionaryCopy);
  }

  v5 = [dictionaryCopy objectForKey:?];
  v6 = [APRKPlayerItem UUIDFromItemDictionary:?];
  v7 = v6;
  if (v6)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke;
    block[3] = &unk_278C627D8;
    v42 = &v43;
    block[4] = self;
    v41 = v6;
    dispatch_sync(MEMORY[0x277D85CD0], block);
  }

  if (v44[5])
  {
    v8 = [dictionaryCopy objectForKey:?];
    _frontPlayerItem = [(APRKMediaPlayer *)self _frontPlayerItem];
    v10 = _frontPlayerItem;
    if (v8)
    {
      if (self->_disableAutoResumeAfterSeek && _frontPlayerItem == v44[5])
      {
        self->_isWaitingToSetRateFromSenderAfterSeek = 1;
        v37[0] = MEMORY[0x277D85DD0];
        v37[1] = 3221225472;
        v37[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_2;
        v37[3] = &unk_278C62800;
        v37[4] = self;
        v39 = &v43;
        v38 = v8;
        dispatch_async(MEMORY[0x277D85CD0], v37);
        v11 = v38;
      }

      else
      {
        v34[0] = MEMORY[0x277D85DD0];
        v34[1] = 3221225472;
        v34[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_3;
        v34[3] = &unk_278C62828;
        v36 = &v43;
        v35 = v8;
        dispatch_async(MEMORY[0x277D85CD0], v34);
        v11 = v35;
      }
    }

    v12 = [dictionaryCopy objectForKey:?];

    if (!v12)
    {
      goto LABEL_27;
    }

    memset(&v33, 0, sizeof(v33));
    CMTimeMakeFromDictionary(&v33, v12);
    flags = v33.flags;
    if ((v33.flags & 0x11) == 1)
    {
      if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        time = v33;
        Seconds = CMTimeGetSeconds(&time);
        uUIDString = [v44[5] UUIDString];
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _seekWithDictionary:]", 33554522, "Sender seek to time is %f for item %@", *&Seconds, uUIDString);
      }

      v17 = v44[5];
      time = v33;
      [v17 setStartPosition:?];
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_4;
      aBlock[3] = &unk_278C62850;
      v28 = dictionaryCopy;
      selfCopy = self;
      v31 = v33;
      v30 = &v43;
      v18 = _Block_copy(aBlock);
      v19 = v18;
      if (self->_disableAutoResumeAfterSeek && v10 == v44[5])
      {
        self->_isWaitingToSetRateFromSenderAfterSeek = 1;
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_5;
        v25[3] = &unk_278C62710;
        v25[4] = self;
        v26 = v18;
        v22 = v18;
        dispatch_async(MEMORY[0x277D85CD0], v25);
        v21 = v26;
      }

      else
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __39__APRKMediaPlayer__seekWithDictionary___block_invoke_6;
        v23[3] = &unk_278C62878;
        v24 = v18;
        v20 = v18;
        dispatch_async(MEMORY[0x277D85CD0], v23);
        v21 = v24;
      }

      goto LABEL_27;
    }

    if (gLogCategory_AirPlayReceiverKit <= 90)
    {
      if (gLogCategory_AirPlayReceiverKit == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_27;
        }

        flags = v33.flags;
      }

      uUIDString2 = [v44[5] UUIDString];
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _seekWithDictionary:]", 33554522, "Sender seek to time is invalid(%d) or indefinite(%d) for item %@", (flags & 1) == 0, (~flags & 0x11) == 0, uUIDString2);
    }

LABEL_27:
  }

  _Block_object_dispose(&v43, 8);
}

uint64_t __39__APRKMediaPlayer__seekWithDictionary___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _playerItemForUUID:?];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8](v2, v4);
}

void *__39__APRKMediaPlayer__seekWithDictionary___block_invoke_2(void *a1)
{
  [*(a1[4] + 8) rate];
  if (v2 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __39__APRKMediaPlayer__seekWithDictionary___block_invoke_2_cold_1();
    }

    [*(a1[4] + 8) setRate:?];
  }

  v3 = *(*(a1[6] + 8) + 40);

  return [v3 seekToDate:? completionHandler:?];
}

void __39__APRKMediaPlayer__seekWithDictionary___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) objectForKey:?];
  [*(*(*(a1 + 48) + 8) + 40) makeSeekID];
  if (v2)
  {
    v3 = [v2 intValue];
    if (v3)
    {
      v4 = *(a1 + 40);
      if (v3 == *(v4 + 248))
      {
        v5 = *(v4 + 256);
        v6 = [MEMORY[0x277CCABB0] numberWithInt:?];
        v7 = [MEMORY[0x277CCABB0] numberWithInt:?];
        [v5 setObject:? forKey:?];
      }
    }
  }

  [*(a1 + 40) _addPendingSeekID:? withMessage:? forItem:? ignoreSeekCompletion:?];
  [*(*(*(a1 + 48) + 8) + 40) seekToTime:*MEMORY[0x277CC08F0] toleranceBefore:*(MEMORY[0x277CC08F0] + 16) toleranceAfter:? seekID:?];
}

uint64_t __39__APRKMediaPlayer__seekWithDictionary___block_invoke_5(uint64_t a1)
{
  [*(*(a1 + 32) + 8) rate];
  if (v2 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __39__APRKMediaPlayer__seekWithDictionary___block_invoke_5_cold_1();
    }

    [*(*(a1 + 32) + 8) setRate:?];
  }

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups
{
  v31 = *MEMORY[0x277D85DE8];
  collectorCopy = collector;
  groupsCopy = groups;
  _frontPlayerItem = [(APRKMediaPlayer *)self _frontPlayerItem];
  mediaDataCollectors = [_frontPlayerItem mediaDataCollectors];
  v12 = [mediaDataCollectors containsObject:?];

  if (v12)
  {
    array = [MEMORY[0x277CBEB18] array];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v14 = groupsCopy;
    v15 = [v14 countByEnumeratingWithState:0 objects:? count:?];
    if (v15)
    {
      v16 = v15;
      v17 = *v26;
      do
      {
        v18 = 0;
        do
        {
          if (*v26 != v17)
          {
            objc_enumerationMutation(v14);
          }

          propertyList = [*(*(&v25 + 1) + 8 * v18) propertyList];
          [(NSArray *)array addObject:?];

          v18 = (v18 + 1);
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v16);
    }

    lastReportedDateRanges = self->_lastReportedDateRanges;
    self->_lastReportedDateRanges = array;
    v21 = array;

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v22 setObject:? forKey:?];
    [v22 setObject:? forKey:?];
    [v22 setObject:? forKey:?];
    v29 = @"uuid";
    uUIDString = [_frontPlayerItem UUIDString];
    v30 = uUIDString;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    [v22 setObject:? forKey:?];
    [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:?];
  }
}

- (void)addDateRangeCollectorToItem:(id)item
{
  itemCopy = item;
  mediaDataCollectors = [itemCopy mediaDataCollectors];
  v4 = [mediaDataCollectors count];

  if (!v4)
  {
    v5 = [objc_alloc(MEMORY[0x277CE65B8]) initWithIdentifiers:? classifyingLabels:?];
    [v5 setDelegate:? queue:?];
    [itemCopy addMediaDataCollector:?];
  }
}

- (void)_setPropertyWithDictionary:(id)dictionary
{
  v72 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = dictionaryCopy;
  if (!dictionaryCopy)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    goto LABEL_15;
  }

  v6 = [dictionaryCopy objectForKey:?];
  if (!v6)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

LABEL_15:
    v10 = 0;
    _frontPlayerItem = 0;
    v7 = 0;
    v12 = 0;
    goto LABEL_86;
  }

  v7 = v6;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _setPropertyWithDictionary:v7];
  }

  if ([v7 isEqualToString:?])
  {
    v8 = [v5 objectForKey:?];
    bOOLValue = [v8 BOOLValue];

    objc_initWeak(&location, self);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __46__APRKMediaPlayer__setPropertyWithDictionary___block_invoke;
    block[3] = &unk_278C628A0;
    objc_copyWeak(&v70, &location);
    v71 = bOOLValue;
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v70);
    objc_destroyWeak(&location);
    goto LABEL_59;
  }

  if ([v7 isEqualToString:?])
  {
    v13 = [v5 objectForKey:?];
    self->_isInterestedInDateRange = [v13 BOOLValue];

    if (!self->_isInterestedInDateRange)
    {
      goto LABEL_59;
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    items = [(AVQueuePlayer *)self->_player items];
    v15 = [items countByEnumeratingWithState:? objects:? count:?];
    if (v15)
    {
      v16 = v15;
      v17 = *v66;
      do
      {
        for (i = 0; i != v16; i = (i + 1))
        {
          if (*v66 != v17)
          {
            objc_enumerationMutation(items);
          }

          [(APRKMediaPlayer *)self addDateRangeCollectorToItem:?];
        }

        v16 = [items countByEnumeratingWithState:? objects:? count:?];
      }

      while (v16);
    }

    goto LABEL_58;
  }

  if (![v7 isEqualToString:?])
  {
    if (![v7 isEqualToString:?])
    {
      goto LABEL_59;
    }

    items = [v5 objectForKey:?];
    v21 = [items objectForKey:?];
    intValue = [v21 intValue];

    v23 = [items objectForKey:?];
    if (self->_isInterstitialPlayer)
    {
      WeakRetained = objc_loadWeakRetained(&self->_interstitialEventControllerForInterstitialPlayer);
    }

    else
    {
      WeakRetained = self->_interstitialEventControllerForPrimaryPlayer;
    }

    v25 = WeakRetained;
    if (WeakRetained)
    {
      currentEvent = [(AVPlayerInterstitialEventController *)WeakRetained currentEvent];
      identifier = [currentEvent identifier];

      v28 = [items objectForKey:?];
      v29 = v28;
      if (v28 == identifier || [v28 isEqualToString:?])
      {
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          if (self->_isInterstitialPlayer)
          {
            v30 = "interstitial";
          }

          else
          {
            v30 = "primary";
          }

          LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _setPropertyWithDictionary:]", 33554462, "Setting %s player skippableState: %d skippableLabel: %@", v30, intValue, v23);
        }

        [AVPlayerInterstitialEventController setCurrentRemoteEventSkippableState:v25 withLabel:"setCurrentRemoteEventSkippableState:withLabel:"];
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _setPropertyWithDictionary:]", 33554462, "Ignoring skippableState set property - payload eventID doesn't match the current eventID { %@ != %@ }", v29, identifier);
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    goto LABEL_57;
  }

  items = [v5 objectForKey:?];
  if (items)
  {
    currentItemMetadata = [(APRKMediaPlayer *)self currentItemMetadata];

    if (currentItemMetadata)
    {
      [(APRKMediaPlayer *)self willChangeValueForKey:?];
      currentItemMetadata2 = [(APRKMediaPlayer *)self currentItemMetadata];
      [currentItemMetadata2 updateMedatataWithDictionary:?];

      [(APRKMediaPlayer *)self didChangeValueForKey:?];
      goto LABEL_58;
    }

    v23 = [[APRKMetadata alloc] initWithDictionary:?];
    [(APRKMediaPlayer *)self setCurrentItemMetadata:?];
LABEL_57:
  }

LABEL_58:

LABEL_59:
  _frontPlayerItem = [(APRKMediaPlayer *)self _frontPlayerItem];
  v12 = [v5 objectForKey:?];
  if (v12)
  {
    v10 = [APRKPlayerItem UUIDFromItemDictionary:?];
    v31 = [(APRKMediaPlayer *)self _playerItemForUUID:?];

    _frontPlayerItem = v31;
  }

  else
  {
    v10 = 0;
  }

  if ([v7 isEqualToString:?])
  {
    v32 = [v5 objectForKey:?];
    [v32 integerValue];

    [(AVQueuePlayer *)self->_player setActionAtItemEnd:?];
    goto LABEL_86;
  }

  if ([v7 isEqualToString:?])
  {
    v33 = [v5 valueForKey:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v35 = [v5 objectForKey:?];
      [v35 intValue];

      v36 = [v5 objectForKey:?];
      [v36 BOOLValue];

      [_frontPlayerItem setEnabledState:? forTrackWithID:?];
    }

    else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    goto LABEL_86;
  }

  if ([v7 isEqualToString:?])
  {
    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
      goto LABEL_86;
    }

    v37 = [v5 objectForKey:?];
    memset(&location, 0, sizeof(location));
    CMTimeMakeFromDictionary(&location, v37);
    [_frontPlayerItem setForwardPlaybackEndTime:?];
LABEL_85:

    goto LABEL_86;
  }

  if ([v7 isEqualToString:?])
  {
    v37 = [v5 objectForKey:?];
    memset(&location, 0, sizeof(location));
    CMTimeMakeFromDictionary(&location, v37);
    if (location.flags)
    {
      [_frontPlayerItem setReversePlaybackEndTime:?];
    }

    goto LABEL_85;
  }

  if ([v7 isEqualToString:?])
  {
    v38 = [v5 objectForKey:?];
    p_cachedSelectedMediaArray = &self->_cachedSelectedMediaArray;
    cachedSelectedMediaArray = self->_cachedSelectedMediaArray;
    self->_cachedSelectedMediaArray = v38;

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _setPropertyWithDictionary:];
    }

    if ([(APRKMediaPlayer *)self _attemptToSetSelectedMediaArray:?])
    {
      v41 = *p_cachedSelectedMediaArray;
      *p_cachedSelectedMediaArray = 0;
    }

    goto LABEL_86;
  }

  if ([v7 isEqualToString:?])
  {
    v37 = [v5 objectForKey:?];
    [_frontPlayerItem setTextStyleRulesUsingArray:?];
    goto LABEL_85;
  }

  if ([v7 isEqualToString:?])
  {
    v42 = [v5 objectForKey:?];
    [(APRKMediaPlayer *)self setCurrentInterstitialEventID:?];
    if (self->_currentInterstitialEventID)
    {
      [(AVQueuePlayer *)self->_player _noteCurrentRemoteInterstitialEvent:?];
    }

    goto LABEL_90;
  }

  if ([v7 isEqualToString:?])
  {
    v43 = [v5 objectForKey:?];
    interstitialEvents = self->_interstitialEvents;
    self->_interstitialEvents = v43;

    if (self->_interstitialEvents)
    {
      [AVQueuePlayer _noteRemoteInterstitialEvents:"_noteRemoteInterstitialEvents:forItem:" forItem:?];
    }
  }

  else
  {
    if ([v7 isEqualToString:?])
    {
      v37 = [v5 objectForKey:?];
      memset(&location, 0, sizeof(location));
      CMTimeMakeFromDictionary(&location, v37);
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKMediaPlayer *)&location.value _setPropertyWithDictionary:v45, v46, v47, v48, v49, v50, v51];
      }

      [_frontPlayerItem setTimeToPauseBuffering:?];
      goto LABEL_85;
    }

    if ([v7 isEqualToString:?])
    {
      v42 = [v5 objectForKey:?];
      memset(&location, 0, sizeof(location));
      CMTimeMakeFromDictionary(&location, v42);
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [(APRKMediaPlayer *)&location.value _setPropertyWithDictionary:v52, v53, v54, v55, v56, v57, v58];
      }

      [_frontPlayerItem setTimeToPausePlayback:?];
      self->_cachedTimeToPausePlayback = location;
      goto LABEL_90;
    }

    if ([v7 isEqualToString:?])
    {
      v59 = [v5 objectForKey:?];
      [v59 BOOLValue];

      [_frontPlayerItem setSnapTimeToPausePlayback:?];
      goto LABEL_86;
    }

    v60 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
    v61 = [v7 isEqualToString:?];

    if (v61)
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        [APRKMediaPlayer _setPropertyWithDictionary:];
      }
    }

    else
    {
      if ([v7 isEqualToString:?])
      {
        v42 = [v5 objectForKey:?];
        self->_disableAutoResumeAfterSeek = [(__CFDictionary *)v42 BOOLValue];
LABEL_90:

        goto LABEL_86;
      }

      if ([v7 isEqualToString:?])
      {
        v62 = [v5 objectForKey:?];
        integerValue = [v62 integerValue];

        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          [APRKMediaPlayer _setPropertyWithDictionary:integerValue];
        }

        [_frontPlayerItem setRestrictions:?];
      }

      else if (([v7 isEqualToString:?] & 1) == 0)
      {
        [v7 isEqualToString:?];
      }
    }
  }

LABEL_86:
}

void __46__APRKMediaPlayer__setPropertyWithDictionary___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    [WeakRetained[1] setMuted:?];
    WeakRetained = v2;
  }
}

- (id)_timedMetadataFromAVTimedMetadata:(id)metadata
{
  v27 = *MEMORY[0x277D85DE8];
  metadataCopy = metadata;
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = metadataCopy;
  v4 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v4)
  {
    v5 = v4;
    v20 = *v24;
    allocator = *MEMORY[0x277CBECE8];
    do
    {
      for (i = 0; i != v5; i = (i + 1))
      {
        if (*v24 != v20)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v9 = [v7 key];
        keySpace = [v7 keySpace];
        locale = [v7 locale];
        if (v7)
        {
          [&time time];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v12 = CMTimeCopyAsDictionary(&time, allocator);
        value = [v7 value];
        extraAttributes = [v7 extraAttributes];
        if (v9)
        {
          [dictionary setObject:? forKeyedSubscript:?];
        }

        if (keySpace)
        {
          [dictionary setObject:? forKeyedSubscript:?];
        }

        localeIdentifier = [locale localeIdentifier];

        if (localeIdentifier)
        {
          localeIdentifier2 = [locale localeIdentifier];
          [dictionary setObject:? forKeyedSubscript:?];
        }

        if (v12)
        {
          [dictionary setObject:? forKeyedSubscript:?];
          CFRelease(v12);
        }

        if (value)
        {
          [dictionary setObject:? forKeyedSubscript:?];
        }

        if (extraAttributes)
        {
          [dictionary addEntriesFromDictionary:?];
        }

        [array addObject:?];
      }

      v5 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v5);
  }

  return array;
}

- (id)_getPropertyWithDictionary:(id)dictionary
{
  v39 = *MEMORY[0x277D85DE8];
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKey:?];
  if (!v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _getPropertyWithDictionary:];
    }

    v12 = 0;
    localeIdentifier = 0;
    v16 = 0;
    v33 = 0;
    goto LABEL_38;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _getPropertyWithDictionary:v5];
  }

  v6 = [(APRKMediaPlayer *)self _playerItemForUUID:?];
  if ([v5 isEqualToString:?])
  {
    playbackErrorLog = [v6 playbackErrorLog];
LABEL_13:
    v8 = playbackErrorLog;
    v9 = MEMORY[0x277CBEBF8];
    if (playbackErrorLog)
    {
      v9 = playbackErrorLog;
    }

    localeIdentifier = v9;

    v11 = 0;
    v33 = 0;
    v12 = 0;
    v13 = 1;
    v14 = @"none";
    goto LABEL_16;
  }

  if ([v5 isEqualToString:?])
  {
    playbackErrorLog = [v6 playbackAccessLog];
    goto LABEL_13;
  }

  if ([v5 isEqualToString:?])
  {
    autoupdatingCurrentLocale = [MEMORY[0x277CBEAF8] autoupdatingCurrentLocale];
    localeIdentifier = [autoupdatingCurrentLocale localeIdentifier];

    v12 = 0;
    v33 = 0;
LABEL_22:
    v14 = @"none";
    goto LABEL_23;
  }

  v33 = [dictionaryCopy objectForKey:?];
  if (v33)
  {
    v19 = [APRKPlayerItem UUIDFromItemDictionary:?];
    v20 = [(APRKMediaPlayer *)self _playerItemForUUID:?];

    v6 = v20;
  }

  if (!v6)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _getPropertyWithDictionary:v5];
    }

    v16 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:?];
    v12 = 0;
    localeIdentifier = 0;
LABEL_38:
    v6 = 0;
    goto LABEL_39;
  }

  if ([v5 isEqualToString:?])
  {
    v21 = [dictionaryCopy valueForKey:?];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v23 = [dictionaryCopy objectForKey:?];
      [v23 intValue];

      v24 = MEMORY[0x277CCABB0];
      [v6 enabledStateForTrackWithID:?];
      v14 = [v24 numberWithBool:?];
LABEL_58:
      v12 = 0;
      localeIdentifier = v14;
      goto LABEL_23;
    }

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _getPropertyWithDictionary:];
    }

    v11 = 0;
    v12 = 0;
    localeIdentifier = &unk_28513FF30;
    goto LABEL_61;
  }

  if ([v5 isEqualToString:?])
  {
    playbackErrorLog2 = [v6 playbackErrorLog];
LABEL_47:
    localeIdentifier = playbackErrorLog2;
    v12 = 0;
    goto LABEL_22;
  }

  if ([v5 isEqualToString:?])
  {
    playbackErrorLog2 = [v6 playbackAccessLog];
    goto LABEL_47;
  }

  if ([v5 isEqualToString:?])
  {
    loadedTimeRanges = [v6 loadedTimeRanges];
    v29 = [(APRKMediaPlayer *)self _serializeTimeRanges:?];
LABEL_57:
    v14 = v29;

    goto LABEL_58;
  }

  if ([v5 isEqualToString:?])
  {
    loadedTimeRanges = [v6 seekableTimeRanges];
    v29 = [(APRKMediaPlayer *)self _serializeTimeRanges:?];
    goto LABEL_57;
  }

  if (![v5 isEqualToString:?])
  {
    if (![v5 isEqualToString:?])
    {
      if ([v5 isEqualToString:?])
      {
        v35[0] = 0;
        v35[1] = v35;
        v35[2] = 0x3032000000;
        v35[3] = __Block_byref_object_copy_;
        v35[4] = __Block_byref_object_dispose_;
        v36 = 0;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __46__APRKMediaPlayer__getPropertyWithDictionary___block_invoke;
        block[3] = &unk_278C62828;
        block[4] = self;
        block[5] = v35;
        dispatch_sync(MEMORY[0x277D85CD0], block);
        v14 = [(APRKMediaPlayer *)self _timedMetadataFromAVTimedMetadata:?];
        _Block_object_dispose(v35, 8);

        goto LABEL_58;
      }

      v14 = 0;
      v12 = 0;
      goto LABEL_74;
    }

    lastReportedDateRanges = self->_lastReportedDateRanges;
    if (!lastReportedDateRanges)
    {
      lastReportedDateRanges = MEMORY[0x277CBEBF8];
    }

LABEL_69:
    localeIdentifier = lastReportedDateRanges;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    v14 = localeIdentifier;
LABEL_16:
    v15 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:?];
    v16 = v15;
    if (v13)
    {
      [v15 setObject:? forKey:?];
    }

    else if (v11)
    {
      v17 = [APRKUtilities dictionaryForError:?];
      [v16 setObject:? forKey:?];
    }

    goto LABEL_25;
  }

  lastReportedDateRanges = self->_cachedSelectedMediaArray;
  if (lastReportedDateRanges)
  {
    goto LABEL_69;
  }

  localeIdentifier = [(APRKMediaPlayer *)self selectedMediaArrayForItem:?];
  if (localeIdentifier)
  {
    v11 = 0;
    v12 = 0;
LABEL_61:
    v13 = 1;
    v14 = localeIdentifier;
    goto LABEL_16;
  }

  v31 = MEMORY[0x277CCA9B8];
  v37 = *MEMORY[0x277CCA450];
  v38 = @"Sender requested selectedMediaArray while mediaSelection is still loading at the receiver.";
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  v12 = [v31 errorWithDomain:? code:? userInfo:?];

  v14 = 0;
LABEL_74:
  localeIdentifier = 0;
LABEL_23:
  v13 = localeIdentifier != 0;
  v11 = v12 != 0;
  if (localeIdentifier | v12)
  {
    goto LABEL_16;
  }

  localeIdentifier = 0;
  v12 = 0;
  v16 = 0;
LABEL_25:
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _getPropertyWithDictionary:]", 33554462, "[APV Protocol: Sender -> Receiver (getProperty)] Handling get for property: %@ with value: %@", v5, v14, v33);
  }

LABEL_39:
  v25 = v16;

  return v16;
}

void __46__APRKMediaPlayer__getPropertyWithDictionary___block_invoke(uint64_t a1)
{
  v5 = [*(*(a1 + 32) + 8) currentItem];
  v2 = [v5 timedMetadata];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)_processStreamingKeyWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processStreamingKeyWithDictionary:dictionaryCopy];
  }

  contentKeyHelper = self->_contentKeyHelper;
  v7 = MEMORY[0x277D85DD0];
  v6 = dictionaryCopy;
  [(APRKContentKeyHelper *)contentKeyHelper processStreamingKeyRequestWithDictionary:v7 withCompletionBlock:3221225472, __54__APRKMediaPlayer__processStreamingKeyWithDictionary___block_invoke, &unk_278C628C8];
}

void __54__APRKMediaPlayer__processStreamingKeyWithDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  v6 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:?];
  if (v5)
  {
    v7 = [APRKUtilities dictionaryForError:?];
  }

  else
  {
    if (!v8)
    {
      goto LABEL_6;
    }

    v7 = [v8 base64EncodedStringWithOptions:?];
  }

  [v6 setObject:? forKey:?];

LABEL_6:
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:?];
}

- (void)_processUnhandledURLWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processUnhandledURLWithDictionary:dictionaryCopy];
  }

  v5 = [dictionaryCopy objectForKey:?];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKey:?];
    if ([(APRKContentKeyHelper *)self->_contentKeyHelper isHandlingContentKeyRequestWithURLString:?])
    {
      contentKeyHelper = self->_contentKeyHelper;
      v12 = 0;
      v9 = &v12;
    }

    else
    {
      contentKeyHelper = self->_resourceLoaderHelper;
      v11 = 0;
      v9 = &v11;
    }

    [contentKeyHelper processUnhandledURLResponseWithDictionary:v11 error:v12];
    v10 = *v9;
    if (v10 && gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processUnhandledURLWithDictionary:v10];
    }
  }

  else
  {
    v10 = 0;
    v7 = 0;
  }
}

- (void)_stopWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _stopWithDictionary:dictionaryCopy];
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__APRKMediaPlayer__stopWithDictionary___block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__39__APRKMediaPlayer__stopWithDictionary___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 8) setRate:?];
  v2 = *(*(a1 + 32) + 8);

  return [v2 setDefaultRate:?];
}

- (id)_processPlaybackInfoRequestWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  _currentPlaybackInfoDictionary = [(APRKMediaPlayer *)self _currentPlaybackInfoDictionary];
  if (_currentPlaybackInfoDictionary)
  {
    v6 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:?];
    [v6 setObject:? forKey:?];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_processAuthorizeItemWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processAuthorizeItemWithDictionary:dictionaryCopy];
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  _ensureFairPlayHelper = [(APRKMediaPlayer *)self _ensureFairPlayHelper];
  if (_ensureFairPlayHelper)
  {
    v8 = [dictionaryCopy objectForKey:?];
    v9 = [APRKPlayerItem UUIDFromItemDictionary:?];

    v10 = APReceiverFairPlayHelperCopyAuthorizeItemResponseIntoDictionary();
    if (v10)
    {
      if (gLogCategory_AirPlayReceiverKit <= 90)
      {
        if (gLogCategory_AirPlayReceiverKit != -1 || (v10 = _LogCategory_Initialize(), v10))
        {
          [(APRKMediaPlayer *)v10 _processAuthorizeItemWithDictionary:v11, v12];
        }
      }
    }

    else if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processAuthorizeItemWithDictionary:];
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (_ensureFairPlayHelper = _LogCategory_Initialize(), _ensureFairPlayHelper))
    {
      [(APRKMediaPlayer *)_ensureFairPlayHelper _processAuthorizeItemWithDictionary:v6, v7];
    }
  }

  v13 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:?];
  v14 = [dictionaryCopy objectForKey:?];
  [v13 setObject:? forKey:?];

  [v13 addEntriesFromDictionary:?];

  return v13;
}

- (void)_processPlaybackCoordinationMediumWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = [dictionaryCopy objectForKey:?];
  if (!v4)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
    }

    goto LABEL_14;
  }

  v5 = [dictionaryCopy objectForKey:?];
  if (!v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
    }

LABEL_14:
    v6 = 0;
    goto LABEL_15;
  }

  v6 = v5;
  if (self->_playbackCoordinator)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:]", 33554462, "Incoming PlaybackCoordinationMedium from sender, name: %@, state = %@", v4, v6);
    }

    if ([v4 isEqualToString:?])
    {
      [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator handleNewParticipantStateDictionary:?];
    }

    else if ([v4 isEqualToString:?])
    {
      [(AVPlayerPlaybackCoordinator *)self->_playbackCoordinator handleNewTransportControlStateDictionary:?];
    }

    else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
    }
  }

  else if (gLogCategory_AirPlayReceiverKit <= 90 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _processPlaybackCoordinationMediumWithDictionary:];
  }

LABEL_15:
}

- (void)_sendUpstreamMessageWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (dictionaryCopy)
  {
    v5 = dictionaryCopy;
    if (self->_isInterstitialPlayer)
    {
      v6 = dictionaryCopy;
      objc_opt_class();
      v5 = v6;
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v5 = [v6 mutableCopy];
      }

      [v5 setObject:? forKey:?];
    }

    messageQueue = self->_messageQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke;
    v9[3] = &unk_278C62788;
    v10 = v5;
    selfCopy = self;
    v8 = v5;
    dispatch_async(messageQueue, v9);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _sendUpstreamMessageWithDictionary:];
  }
}

void __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke_cold_1(a1);
  }

  v2 = [*(a1 + 40) messagingDelegate];
  [v2 mediaPlayer:? wantsToSendUpstreamMessageWithDictionary:?];
}

- (void)_sendUpstreamErrorMessageWithError:(id)error
{
  if (error)
  {
    v4 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:?];
    v5 = [APRKUtilities dictionaryForError:?];
    [v4 setObject:? forKey:?];

    [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:?];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _sendUpstreamErrorMessageWithError:];
  }

  MEMORY[0x2821F9730]();
}

- (void)_sendUpstreamPlaybackStateMessageWithPlaybackStateString:(id)string stoppedBecauseInterrupted:(BOOL)interrupted
{
  if (string)
  {
    stringCopy = string;
    v6 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:?];
    [v6 setObject:? forKey:?];

    internalPlaybackState = self->_internalPlaybackState;
    if (internalPlaybackState == 3)
    {
      [v6 setObject:? forKey:?];
    }

    else if (internalPlaybackState == 2)
    {
      currentItemUUID = self->_currentItemUUID;
      if (currentItemUUID)
      {
        uUIDString = currentItemUUID;
      }

      else
      {
        currentItem = [(AVQueuePlayer *)self->_player currentItem];
        uUIDString = [currentItem UUIDString];

        if (!uUIDString)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            [APRKMediaPlayer _sendUpstreamPlaybackStateMessageWithPlaybackStateString:stoppedBecauseInterrupted:];
          }

          goto LABEL_10;
        }
      }

      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
      [v6 setObject:? forKey:?];
      _currentPlaybackInfoDictionary = [(APRKMediaPlayer *)self _currentPlaybackInfoDictionary];
      [v6 setObject:? forKey:?];
    }

    [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:?];
LABEL_10:
  }
}

- (BOOL)_attemptToSetSelectedMediaArray:(id)array
{
  arrayCopy = array;
  if (!arrayCopy)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _attemptToSetSelectedMediaArray:];
    }

    goto LABEL_63;
  }

  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  selfCopy = self;
  status = [currentItem status];

  if (status != 1)
  {
    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _attemptToSetSelectedMediaArray:];
    }

LABEL_63:
    v51 = 0;
    goto LABEL_64;
  }

  currentItem2 = [(AVQueuePlayer *)selfCopy->_player currentItem];
  asset = [currentItem2 asset];

  v53 = arrayCopy;
  obj = arrayCopy;
  v10 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = selfCopy;
    v13 = MEMORY[0];
    v61 = selfCopy;
    v54 = MEMORY[0];
    v55 = asset;
    do
    {
      v14 = 0;
      v60 = v11;
      do
      {
        if (MEMORY[0] != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = [asset mediaSelectionGroupForPropertyList:? mediaSelectionOption:?];
        v16 = 0;
        if (v15)
        {
          v17 = asset;
          customMediaSelectionScheme = [v15 customMediaSelectionScheme];
          v19 = v12;
          currentItem3 = [(AVQueuePlayer *)v12->_player currentItem];
          mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes = [currentItem3 mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes];
          v62 = v15;
          _primaryMediaCharacteristic = [v15 _primaryMediaCharacteristic];
          v23 = [mediaCharacteristicsOfPreferredCustomMediaSelectionSchemes containsObject:?];

          v25 = v23 == 0;
          v24 = customMediaSelectionScheme;
          v25 = v25 || customMediaSelectionScheme == 0;
          if (v25)
          {
            v15 = v62;
            if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
            {
              LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _attemptToSetSelectedMediaArray:]", 33554482, "Setting option = %@ for group = %@", v16, v62);
            }

            v12 = v19;
            currentItem4 = [(AVQueuePlayer *)v19->_player currentItem];
            [currentItem4 selectMediaOption:? inMediaSelectionGroup:?];
            asset = v17;
            v11 = v60;
          }

          else
          {
            extendedLanguageTag = [v16 extendedLanguageTag];
            v27 = extendedLanguageTag;
            if (extendedLanguageTag)
            {
              availableLanguages = [customMediaSelectionScheme availableLanguages];
              v29 = [availableLanguages containsObject:?];

              if (v29)
              {
                if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
                {
                  [(APRKMediaPlayer *)v27 _attemptToSetSelectedMediaArray:v30, v31];
                }

                currentItem5 = [(AVQueuePlayer *)v19->_player currentItem];
                [currentItem5 selectMediaPresentationLanguage:? forMediaSelectionGroup:?];
              }
            }

            v57 = v27;
            v58 = customMediaSelectionScheme;
            v59 = v14;
            selectors = [customMediaSelectionScheme selectors];
            v33 = [selectors countByEnumeratingWithState:? objects:? count:?];
            if (v33)
            {
              v34 = v33;
              v64 = MEMORY[0];
              do
              {
                v35 = 0;
                do
                {
                  if (MEMORY[0] != v64)
                  {
                    objc_enumerationMutation(selectors);
                  }

                  settings = [*(8 * v35) settings];
                  v37 = [settings countByEnumeratingWithState:? objects:? count:?];
                  if (v37)
                  {
                    v38 = v37;
                    v39 = MEMORY[0];
LABEL_30:
                    v40 = 0;
                    while (1)
                    {
                      if (MEMORY[0] != v39)
                      {
                        objc_enumerationMutation(settings);
                      }

                      v41 = *(8 * v40);
                      mediaCharacteristic = [v41 mediaCharacteristic];
                      v43 = [v16 hasMediaCharacteristic:?];

                      if (v43)
                      {
                        break;
                      }

                      if (v38 == ++v40)
                      {
                        v38 = [settings countByEnumeratingWithState:? objects:? count:?];
                        if (v38)
                        {
                          goto LABEL_30;
                        }

                        goto LABEL_36;
                      }
                    }

                    v44 = v41;

                    if (!v44)
                    {
                      goto LABEL_43;
                    }

                    if (gLogCategory_AirPlayReceiverKit <= 50 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
                    {
                      [(APRKMediaPlayer *)v44 _attemptToSetSelectedMediaArray:v45, v46];
                    }

                    currentItem6 = [(AVQueuePlayer *)v61->_player currentItem];
                    [currentItem6 selectMediaPresentationSetting:? forMediaSelectionGroup:?];
                  }

                  else
                  {
LABEL_36:
                    v44 = settings;
                  }

LABEL_43:
                  v35 = (v35 + 1);
                }

                while (v35 != v34);
                v48 = [selectors countByEnumeratingWithState:? objects:? count:?];
                v34 = v48;
              }

              while (v48);
            }

            v11 = v60;
            v12 = v61;
            v13 = v54;
            asset = v55;
            v24 = v58;
            v14 = v59;
            v15 = v62;
            currentItem4 = v57;
          }
        }

        v14 = (v14 + 1);
      }

      while (v14 != v11);
      v50 = [obj countByEnumeratingWithState:? objects:? count:?];
      v11 = v50;
    }

    while (v50);
  }

  v51 = 1;
  arrayCopy = v53;
LABEL_64:

  return v51;
}

- (id)selectedMediaArrayForItem:(id)item
{
  itemCopy = item;
  array = [MEMORY[0x277CBEB18] array];
  v18 = itemCopy;
  asset = [itemCopy asset];
  if ([asset statusOfValueForKey:? error:?] == 2)
  {
    availableMediaCharacteristicsWithMediaSelectionOptions = [asset availableMediaCharacteristicsWithMediaSelectionOptions];
    v7 = [availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:? objects:? count:?];
    if (v7)
    {
      v8 = v7;
      v9 = MEMORY[0];
      do
      {
        for (i = 0; i != v8; i = (i + 1))
        {
          if (MEMORY[0] != v9)
          {
            objc_enumerationMutation(availableMediaCharacteristicsWithMediaSelectionOptions);
          }

          v11 = [asset mediaSelectionGroupForMediaCharacteristic:?];
          if (v11)
          {
            currentMediaSelection = [v18 currentMediaSelection];
            v13 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:?];
            propertyList = [v13 propertyList];
            if (propertyList)
            {
              [array addObject:?];
            }
          }
        }

        v8 = [availableMediaCharacteristicsWithMediaSelectionOptions countByEnumeratingWithState:? objects:? count:?];
      }

      while (v8);
    }

    v15 = array;
  }

  else
  {
    v16 = [MEMORY[0x277CBEA60] arrayWithObject:?];
    [asset loadValuesAsynchronouslyForKeys:? completionHandler:?];

    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer selectedMediaArrayForItem:];
    }

    v15 = 0;
  }

  return v15;
}

- (void)_pausePlayerIfNeededForState:(int64_t)state
{
  if (state == 2 && self->_isWaitingToSetRateFromSenderAfterSeek)
  {
    block[5] = v3;
    block[6] = v4;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __48__APRKMediaPlayer__pausePlayerIfNeededForState___block_invoke;
    block[3] = &unk_278C626E8;
    block[4] = self;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }
}

void *__48__APRKMediaPlayer__pausePlayerIfNeededForState___block_invoke(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) rate];
  if (v3 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __48__APRKMediaPlayer__pausePlayerIfNeededForState___block_invoke_cold_1();
    }

    v4 = *(*(a1 + 32) + 8);

    return [v4 setRate:?];
  }

  return result;
}

- (id)_figPlaybackStateStringFrom:(int64_t)from
{
  if ((from & 0xFFFFFFFFFFFFFFFDLL) == 0 && self->_isWaitingToSetRateFromSenderAfterSeek)
  {
    fromCopy = 1;
  }

  else
  {
    fromCopy = from;
  }

  if (fromCopy > 3)
  {
    v5 = 0;
  }

  else
  {
    v5 = **(&unk_278C629B0 + fromCopy);
  }

  return v5;
}

- (void)_updatePlaybackStateWithState:(int64_t)state stoppedBecauseInterrupted:(BOOL)interrupted shouldSendUpstreamMessage:(BOOL)message
{
  messageCopy = message;
  [(APRKMediaPlayer *)self _pausePlayerIfNeededForState:?];
  v8 = [(APRKMediaPlayer *)self _figPlaybackStateStringFrom:?];
  v9 = v8;
  self->_internalPlaybackState = state;
  if (self->_isFirstSetRateReceived && messageCopy)
  {
    v11 = v8;
    v8 = [APRKMediaPlayer _sendUpstreamPlaybackStateMessageWithPlaybackStateString:"_sendUpstreamPlaybackStateMessageWithPlaybackStateString:stoppedBecauseInterrupted:" stoppedBecauseInterrupted:?];
    v9 = v11;
  }

  MEMORY[0x2821F96F8](v8, v9);
}

- (id)_fixedIPContentLocationFromURLString:(id)string error:(id *)error
{
  stringCopy = string;
  if (stringCopy)
  {
    v8 = [MEMORY[0x277CBEBC0] URLWithString:?];
    absoluteString = [v8 absoluteString];
    host = [v8 host];
    [host cStringUsingEncoding:?];
    if (StringToSockAddr())
    {
      if (error)
      {
        v12 = [MEMORY[0x277CCA9B8] errorWithDomain:? code:? userInfo:?];
        *error = v12;
        if (gLogCategory_AirPlayReceiverKit > 10)
        {
          goto LABEL_7;
        }

        if (gLogCategory_AirPlayReceiverKit == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_4;
          }

          v12 = *error;
        }

        LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _fixedIPContentLocationFromURLString:error:]", 33554442, "%s - Error = %@", "[APRKMediaPlayer _fixedIPContentLocationFromURLString:error:]", v12);
      }
    }

    else
    {
      APSNetworkAddressGetSocketAddr();
    }
  }

  else
  {
    absoluteString = 0;
    host = 0;
    v8 = 0;
  }

LABEL_4:
  if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [(APRKMediaPlayer *)absoluteString _fixedIPContentLocationFromURLString:v5 error:v6];
  }

LABEL_7:

  return absoluteString;
}

- (void)_registerNotificationHandlersForPlayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke_cold_1(a1);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:? selector:? name:? object:?];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:? selector:? name:? object:?];

  v4 = *(a1 + 32);
  if (*(v4 + 208) == 1)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
    [v5 addObserver:? selector:? name:? object:?];

    v4 = *(a1 + 32);
  }

  [*(v4 + 8) addObserver:? forKeyPath:? options:? context:?];
  [*(*(a1 + 32) + 8) addObserver:? forKeyPath:? options:? context:?];
  v7 = *(*(a1 + 32) + 8);

  return [v7 addObserver:? forKeyPath:? options:? context:?];
}

- (void)_unregisterNotificationHandlersForPlayer
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke;
  block[3] = &unk_278C626E8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void *__59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke_cold_1(a1);
  }

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 removeObserver:? name:? object:?];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 removeObserver:? name:? object:?];

  v4 = *(a1 + 32);
  if (*(v4 + 208) == 1)
  {
    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 272));
    [v5 removeObserver:? name:? object:?];

    v4 = *(a1 + 32);
  }

  [*(v4 + 8) removeObserver:? forKeyPath:? context:?];
  [*(*(a1 + 32) + 8) removeObserver:? forKeyPath:? context:?];
  [*(*(a1 + 32) + 8) removeObserver:? forKeyPath:? context:?];
  v7 = *(*(a1 + 32) + 8);

  return [v7 pause];
}

- (void)_registerNotificationHandlersAndInsertPlayerItem:(id)item afterItem:(id)afterItem
{
  itemCopy = item;
  afterItemCopy = afterItem;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke;
  block[3] = &unk_278C628F0;
  v11 = itemCopy;
  selfCopy = self;
  v13 = afterItemCopy;
  v8 = afterItemCopy;
  v9 = itemCopy;
  dispatch_sync(MEMORY[0x277D85CD0], block);
}

char *__78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke(char *result)
{
  v1 = result;
  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1 || (result = _LogCategory_Initialize(), result))
    {
      result = __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_1(v1);
    }
  }

  v2 = *(v1 + 5);
  if (*(v2 + 178) == 1)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30)
    {
      if (gLogCategory_AirPlayReceiverKit != -1)
      {
        return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _registerNotificationHandlersAndInsertPlayerItem:afterItem:]_block_invoke", 33554462, "APRKMediaPlayer %@ is invalidated while inserting the item %@, doing nothing.", v2, *(v1 + 4));
      }

      result = _LogCategory_Initialize();
      if (result)
      {
        v2 = *(v1 + 5);
        return LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _registerNotificationHandlersAndInsertPlayerItem:afterItem:]_block_invoke", 33554462, "APRKMediaPlayer %@ is invalidated while inserting the item %@, doing nothing.", v2, *(v1 + 4));
      }
    }
  }

  else
  {
    v3 = [MEMORY[0x277CCAB98] defaultCenter];
    v4 = (v1 + 32);
    [v3 addObserver:? selector:? name:? object:?];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 addObserver:? selector:? name:? object:?];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 addObserver:? selector:? name:? object:?];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 addObserver:? selector:? name:? object:?];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 addObserver:? selector:? name:? object:?];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 addObserver:? selector:? name:? object:?];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 addObserver:? selector:? name:? object:?];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 addObserver:? selector:? name:? object:?];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 addObserver:? selector:? name:? object:?];

    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    [*(v1 + 4) addObserver:? forKeyPath:? options:? context:?];
    v13 = [*(v1 + 4) startDate];

    if (v13)
    {
      v14 = *v4;
      v15 = [v14 startDate];
      [v14 setInitialDate:?];
    }

    else
    {
      v16 = 0uLL;
      v17 = 0;
      if (*v4 && ([&v16 startPosition], (BYTE12(v16) & 0x11) == 1))
      {
        [*(v1 + 4) makeSeekID];
        [*(v1 + 5) _addPendingSeekID:? withMessage:? forItem:? ignoreSeekCompletion:?];
        [*(v1 + 4) seekToTime:? toleranceBefore:? toleranceAfter:? seekID:?];
      }

      else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_2(&v16 + 3, v1 + 4);
      }
    }

    return [*(*(v1 + 5) + 8) insertItem:? afterItem:?];
  }

  return result;
}

- (void)_unregisterNotificationHandlersAndRemovePlayerItem:(id)item
{
  itemCopy = item;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke;
  v6[3] = &unk_278C62788;
  v7 = itemCopy;
  selfCopy = self;
  v5 = itemCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke(uint64_t a1)
{
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_1(a1);
  }

  v2 = [*(*(a1 + 40) + 8) items];
  v3 = [v2 containsObject:?];

  if (v3)
  {
    v4 = [MEMORY[0x277CCAB98] defaultCenter];
    [v4 removeObserver:? name:? object:?];

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    [v5 removeObserver:? name:? object:?];

    v6 = [MEMORY[0x277CCAB98] defaultCenter];
    [v6 removeObserver:? name:? object:?];

    v7 = [MEMORY[0x277CCAB98] defaultCenter];
    [v7 removeObserver:? name:? object:?];

    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    [v8 removeObserver:? name:? object:?];

    v9 = [MEMORY[0x277CCAB98] defaultCenter];
    [v9 removeObserver:? name:? object:?];

    v10 = [MEMORY[0x277CCAB98] defaultCenter];
    [v10 removeObserver:? name:? object:?];

    v11 = [MEMORY[0x277CCAB98] defaultCenter];
    [v11 removeObserver:? name:? object:?];

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 removeObserver:? name:? object:?];

    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    [*(a1 + 32) removeObserver:? forKeyPath:? context:?];
    v13 = *(*(a1 + 40) + 8);

    [v13 removeItem:?];
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_2();
  }
}

- (void)_handleTimeJumpedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleTimeJumpedNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __49__APRKMediaPlayer__handleTimeJumpedNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = object;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleTimeJumpedNotification:];
  }
}

void __49__APRKMediaPlayer__handleTimeJumpedNotification___block_invoke(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (!*(*(a1 + 32) + 216))
  {
    goto LABEL_9;
  }

  if (*(a1 + 40))
  {
    [&v8 timeToPausePlayback];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  v3 = floor(CMTimeGetSeconds(&v8));
  if (*(a1 + 40))
  {
    [&v8 currentTime];
  }

  else
  {
    memset(&v8, 0, sizeof(v8));
  }

  if (v3 != floor(CMTimeGetSeconds(&v8)))
  {
LABEL_9:
    v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
    [v4 setObject:? forKey:?];
    [v4 setObject:? forKey:?];
    if (*(a1 + 40))
    {
      [&v8 currentTime];
    }

    else
    {
      memset(&v8, 0, sizeof(v8));
    }

    v5 = CMTimeCopyAsDictionary(&v8, *MEMORY[0x277CBECE8]);
    [v4 setObject:? forKey:?];

    v9 = @"uuid";
    v6 = [*(a1 + 40) UUIDString];
    v10 = v6;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    [v4 setObject:? forKey:?];
    [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
  }
}

- (void)_handleCurrentItemChangedNotification:(id)notification
{
  notificationCopy = notification;
  currentItem = [(AVQueuePlayer *)self->_player currentItem];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemChangedNotification:];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__APRKMediaPlayer__handleCurrentItemChangedNotification___block_invoke;
  block[3] = &unk_278C628F0;
  block[4] = self;
  v10 = currentItem;
  v11 = notificationCopy;
  v7 = notificationCopy;
  v8 = currentItem;
  dispatch_async(messageQueue, block);
}

void __57__APRKMediaPlayer__handleCurrentItemChangedNotification___block_invoke(id *a1)
{
  *(a1[4] + 5) = 0;
  [a1[4] _updatePlaybackStateWithState:? stoppedBecauseInterrupted:? shouldSendUpstreamMessage:?];
  objc_storeStrong(a1[4] + 2, *(a1[4] + 3));
  v2 = [a1[5] UUIDString];
  v3 = a1[4];
  v4 = v3[3];
  v3[3] = v2;

  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v5 setObject:? forKey:?];
  [v5 setObject:? forKey:?];
  v6 = a1[4];
  if (v6[2])
  {
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v5 setObject:? forKey:?];

    v6 = a1[4];
  }

  if (v6[3])
  {
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
    [v5 setObject:? forKey:?];

    v6 = a1[4];
  }

  v9 = v6[15];
  [a1[5] expectsSecureStop];
  [v9 setForwardsFPSSecureStopData:?];
  v10 = [a1[6] userInfo];
  v11 = [v10 objectForKey:?];

  [v5 setObject:? forKey:?];
  [a1[4] _sendUpstreamMessageWithDictionary:?];
}

- (void)_handleCurrentItemPlayedToEndNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentItemPlayedToEndNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __61__APRKMediaPlayer__handleCurrentItemPlayedToEndNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v8 = object;
    selfCopy = self;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemPlayedToEndNotification:];
  }
}

void __61__APRKMediaPlayer__handleCurrentItemPlayedToEndNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v5 = @"uuid";
  v3 = [*(a1 + 32) UUIDString];
  v6 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:?];
  [*(a1 + 40) _updatePlaybackStateWithState:? stoppedBecauseInterrupted:? shouldSendUpstreamMessage:?];
}

- (void)_handleCurrentItemFailedToPlayToEndNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentItemFailedToPlayToEndNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __67__APRKMediaPlayer__handleCurrentItemFailedToPlayToEndNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v8 = notificationCopy;
    selfCopy = self;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemFailedToPlayToEndNotification:];
  }
}

void __67__APRKMediaPlayer__handleCurrentItemFailedToPlayToEndNotification___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v8 = [v2 objectForKey:?];

  v3 = *(a1 + 40);
  v4 = MEMORY[0x277CCA9B8];
  v5 = [v8 domain];
  [v8 code];
  v6 = [v8 userInfo];
  v7 = [v4 errorWithDomain:? code:? userInfo:?];
  [v3 _sendUpstreamErrorMessageWithError:?];

  [*(a1 + 40) _updatePlaybackStateWithState:? stoppedBecauseInterrupted:? shouldSendUpstreamMessage:?];
}

- (void)_handleCurrentItemPlaybackStalledNotification:(id)notification
{
  notificationCopy = notification;
  v5 = [(APRKMediaPlayer *)self _playerItemForUUID:?];
  if (v5)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentItemPlaybackStalledNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __65__APRKMediaPlayer__handleCurrentItemPlaybackStalledNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = v5;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentItemPlaybackStalledNotification:];
  }
}

void __65__APRKMediaPlayer__handleCurrentItemPlaybackStalledNotification___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  ++*(*(a1 + 32) + 40);
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v6 = @"uuid";
  v3 = [*(a1 + 40) UUIDString];
  v7 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  v5 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  [v2 setObject:? forKey:?];

  [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
}

- (void)_handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __83__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPauseBufferingNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v7[4] = self;
    v8 = object;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:];
  }
}

void __83__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPauseBufferingNotification___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:?];
  [v2 setObject:? forKey:?];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) loadedTimeRanges];
  v5 = [v3 _serializeTimeRanges:?];

  [v2 setObject:? forKey:?];
  v9 = @"uuid";
  v6 = [*(a1 + 40) UUIDString];
  v10 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v8 setObject:? forKey:?];
  [v8 setObject:? forKey:?];
  [v8 setObject:? forKey:?];
  [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
}

- (void)_handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:];
    }

    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke;
    block[3] = &unk_278C628F0;
    v8 = object;
    v9 = notificationCopy;
    selfCopy = self;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:];
  }
}

void __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke(id *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v11 = @"uuid";
  v12 = [a1[4] UUIDString];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  v4 = [a1[5] userInfo];
  v5 = [v4 objectForKey:?];

  if (!v5)
  {
    if (a1[4])
    {
      [&v10 currentTime];
    }

    else
    {
      memset(&v10, 0, sizeof(v10));
    }

    v5 = CMTimeCopyAsDictionary(&v10, *MEMORY[0x277CBECE8]);
  }

  [v2 setObject:*&v10.value forKey:v10.epoch];
  v6 = a1[6];
  if (v6[100])
  {
    v7 = *MEMORY[0x277CBECE8];
    v10 = *(v6 + 88);
    v8 = CMTimeCopyAsDictionary(&v10, v7);
    [v2 setObject:? forKey:?];
  }

  v9 = [a1[4] currentDate];
  if (v9)
  {
    [v2 setObject:? forKey:?];
  }

  if (gLogCategory_AirPlayReceiverKit <= 10 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke_cold_1(a1 + 5);
  }

  [a1[6] _sendUpstreamMessageWithDictionary:?];
}

- (void)_handleSeekDidCompleteNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleSeekDidCompleteNotification:];
    }

    userInfo = [notificationCopy userInfo];
    v7 = [userInfo objectForKeyedSubscript:?];
    intValue = [v7 intValue];

    name = [notificationCopy name];
    v10 = [name isEqualToString:?];

    if (intValue)
    {
      if (self->_pendingIntegratedTimelineSeekID)
      {
        pendingIntegratedTimelineSeekIDMap = self->_pendingIntegratedTimelineSeekIDMap;
        v12 = [MEMORY[0x277CCABB0] numberWithInt:?];
        v13 = [(NSMutableDictionary *)pendingIntegratedTimelineSeekIDMap objectForKey:?];
        intValue2 = [v13 intValue];
        pendingIntegratedTimelineSeekID = self->_pendingIntegratedTimelineSeekID;

        if (intValue2 == pendingIntegratedTimelineSeekID)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            [(APRKMediaPlayer *)&self->_pendingIntegratedTimelineSeekID _handleSeekDidCompleteNotification:v10];
          }

          (*(self->_completeIntegratedTimelineSeek + 2))();
          v16 = self->_pendingIntegratedTimelineSeekIDMap;
          v17 = [MEMORY[0x277CCABB0] numberWithInt:?];
          [(NSMutableDictionary *)v16 removeObjectForKey:?];

          self->_pendingIntegratedTimelineSeekID = 0;
        }
      }
    }

    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke;
    block[3] = &unk_278C62918;
    block[4] = self;
    v21 = intValue;
    v20 = object;
    v22 = v10;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleSeekDidCompleteNotification:];
  }
}

void __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke(uint64_t a1)
{
  block[7] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 48);
  if (![*(a1 + 32) _shouldIgnoreSeekCompletionForSeekID:? forItem:?])
  {
    v4 = [*(a1 + 32) _seekRequestMessageForSeekID:? forItem:?];
    v5 = v4;
    v6 = *(a1 + 32);
    if (*(v6 + 179) == 1 && (*(a1 + 52) == 1 ? (v7 = v4 == 0) : (v7 = 0), v7))
    {
      *(v6 + 180) = 1;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_2;
      block[3] = &unk_278C626E8;
      block[4] = *(a1 + 32);
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else if (v4)
    {
      v8 = [APRKUtilities baseDictionaryForResponseToRequestWithDictionary:?];
      if (*(a1 + 40))
      {
        [&time currentTime];
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v9 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
      [v8 setObject:? forKey:?];

      v10 = [MEMORY[0x277CCABB0] numberWithFloat:?];
      [v8 setObject:? forKey:?];

      [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
      goto LABEL_24;
    }

    if (*(a1 + 52) != 1)
    {
LABEL_25:
      [*(a1 + 32) _removePendingSeekID:? forItem:?];

      return;
    }

    v8 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
    [v8 setObject:? forKey:?];
    [v8 setObject:? forKey:?];
    if (*(a1 + 40))
    {
      [&time currentTime];
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    v11 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
    [v8 setObject:? forKey:?];

    v12 = [MEMORY[0x277CCABB0] numberWithFloat:?];
    [v8 setObject:? forKey:?];

    block[5] = @"uuid";
    v13 = [*(a1 + 40) UUIDString];
    block[6] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

    [v8 setObject:? forKey:?];
    [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];

LABEL_24:
    goto LABEL_25;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_cold_1(v2);
  }

  v3 = *(a1 + 32);

  [v3 _removePendingSeekID:? forItem:?];
}

void *__54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_2(uint64_t a1)
{
  result = [*(*(a1 + 32) + 8) rate];
  if (v3 != 0.0)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_2_cold_1();
    }

    v4 = *(*(a1 + 32) + 8);

    return [v4 setRate:?];
  }

  return result;
}

- (void)_handleCurrentPlayerItemMediaSelectionDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (object)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentPlayerItemMediaSelectionDidChangeNotification:];
    }

    messageQueue = self->_messageQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __79__APRKMediaPlayer__handleCurrentPlayerItemMediaSelectionDidChangeNotification___block_invoke;
    v7[3] = &unk_278C62788;
    v8 = object;
    selfCopy = self;
    dispatch_async(messageQueue, v7);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemMediaSelectionDidChangeNotification:];
  }
}

void __79__APRKMediaPlayer__handleCurrentPlayerItemMediaSelectionDidChangeNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v5 = @"uuid";
  v3 = [*(a1 + 32) UUIDString];
  v6 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:?];
}

- (void)_handleCurrentPlayerItemNewAccessLogEntryNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentPlayerItemNewAccessLogEntryNotification:];
  }

  messageQueue = self->_messageQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__APRKMediaPlayer__handleCurrentPlayerItemNewAccessLogEntryNotification___block_invoke;
  v8[3] = &unk_278C62788;
  v9 = object;
  selfCopy = self;
  v7 = object;
  dispatch_async(messageQueue, v8);
}

void __73__APRKMediaPlayer__handleCurrentPlayerItemNewAccessLogEntryNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v5 = @"uuid";
  v3 = [*(a1 + 32) UUIDString];
  v6 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:?];
}

- (void)_handleCurrentEventSkippedNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo objectForKey:?];
  identifier = [v6 identifier];

  currentInterstitialEventID = self->_currentInterstitialEventID;
  if (currentInterstitialEventID && [(NSString *)currentInterstitialEventID isEqualToString:?])
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      [APRKMediaPlayer _handleCurrentEventSkippedNotification:];
    }

    messageQueue = self->_messageQueue;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __58__APRKMediaPlayer__handleCurrentEventSkippedNotification___block_invoke;
    v10[3] = &unk_278C62788;
    v11 = identifier;
    selfCopy = self;
    dispatch_async(messageQueue, v10);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer _handleCurrentEventSkippedNotification:];
  }
}

void __58__APRKMediaPlayer__handleCurrentEventSkippedNotification___block_invoke(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v3 = *(a1 + 32);
  v5 = *MEMORY[0x277CC0F58];
  v6 = v3;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];
  [v2 setObject:? forKey:?];
  [*(a1 + 40) _sendUpstreamMessageWithDictionary:?];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = [(APRKMediaPlayer *)self _playerItemForUUID:?];
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer observeValueForKeyPath:ofObject:change:context:]", 33554462, "Handling KVO notification with keyPath: %@ item: %@ player: %@", pathCopy, v13, self->_player);
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
  block[3] = &unk_278C62968;
  block[4] = self;
  v20 = objectCopy;
  v21 = changeCopy;
  v22 = v13;
  v23 = pathCopy;
  contextCopy = context;
  v15 = pathCopy;
  v16 = v13;
  v17 = changeCopy;
  v18 = objectCopy;
  dispatch_async(messageQueue, block);
}

void __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v66 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 32);
  v1 = *(a1 + 32);
  if (v1[19] != 3)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = *(a1 + 72);
      if (v4 == APRKMediaPlayerObservationContextPlayerTimeControlStatus)
      {
        v16 = [*(*v2 + 1) timeControlStatus];
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_8(v16);
        }

        [*v2 _updatePlaybackStateWithState:? stoppedBecauseInterrupted:? shouldSendUpstreamMessage:?];
        goto LABEL_32;
      }

      if (v4 != APRKMediaPlayerObservationContextPlayerRate)
      {
        if (v4 == APRKMediaPlayerObservationContextPlayerStatus && *(*v2 + 9) && [*(*v2 + 1) status] == 1)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2(v2);
          }

          block[0] = MEMORY[0x277D85DD0];
          block[1] = 3221225472;
          block[2] = __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3;
          block[3] = &unk_278C626E8;
          block[4] = *v2;
          dispatch_sync(MEMORY[0x277D85CD0], block);
          v5 = *(*v2 + 9);
          *(*v2 + 9) = 0;
        }

        goto LABEL_32;
      }

      v17 = [*(a1 + 48) objectForKey:?];
      [v17 floatValue];
      v19 = v18;

      v20 = [*(a1 + 48) objectForKey:?];
      [v20 floatValue];
      v22 = v21;

      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_3(v2, v19, v22);
      }

      if (v22 != 0.0)
      {
        *(*v2 + 48) = v22;
      }

      v23 = *v2;
      if (*(*v2 + 179) != 1 || v19 == v22)
      {
        if (v19 == v22)
        {
          goto LABEL_32;
        }

        if (v22 < 2.0 && v22 > -1.0)
        {
          goto LABEL_32;
        }

        v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [v24 setObject:? forKey:?];
        [v24 setObject:? forKey:?];
        if (*(*v2 + 1))
        {
          [&time currentTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v35 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
        [v24 setObject:? forKey:?];

        v36 = [*v2 _figPlaybackStateStringFrom:?];
        [v24 setObject:? forKey:?];

        v37 = MEMORY[0x277CCABB0];
        [*(*v2 + 1) rate];
        v38 = [v37 numberWithFloat:?];
        [v24 setObject:? forKey:?];

        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_4(v24);
        }

        [*v2 _sendUpstreamMessageWithDictionary:?];
        goto LABEL_86;
      }

      if ((v23[49] & 1) == 0)
      {
        if (v22 >= 2.0 || v22 <= -1.0)
        {
          if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
          {
            __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_5(v22);
          }

          v7 = 0;
          *(*v2 + 196) = 1;
          *(*v2 + 50) = v19;
          goto LABEL_33;
        }

        goto LABEL_32;
      }

      if (v22 == v23[50])
      {
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_6(v22);
        }

        *(*v2 + 196) = 0;
        *(*v2 + 50) = 0;
        *(*v2 + 180) = 1;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
        v48[3] = &unk_278C62940;
        v49 = v22;
        v48[4] = *v2;
        dispatch_async(MEMORY[0x277D85CD0], v48);
        v24 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:?];
        [v24 setObject:? forKey:?];
        [v24 setObject:? forKey:?];
        if (*(*v2 + 1))
        {
          [&time currentTime];
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v39 = CMTimeCopyAsDictionary(&time, *MEMORY[0x277CBECE8]);
        [v24 setObject:? forKey:?];

        v40 = [MEMORY[0x277CCABB0] numberWithFloat:?];
        [v24 setObject:? forKey:?];

        v64 = @"uuid";
        v41 = [*(*v2 + 1) currentItem];
        v42 = [v41 UUIDString];
        v65 = v42;
        v43 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

        [v24 setObject:? forKey:?];
        if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
        {
          __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_7(v24);
        }

        [*v2 _sendUpstreamMessageWithDictionary:?];

LABEL_86:
      }

LABEL_32:
      v7 = 0;
LABEL_33:

      return;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = *(a1 + 40);
      v13 = *(a1 + 48);
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      v44.receiver = *(a1 + 32);
      v44.super_class = APRKMediaPlayer;
      objc_msgSendSuper2(&v44, sel_observeValueForKeyPath_ofObject_change_context_, v14, v12, v13, v15);
      goto LABEL_32;
    }

    if (!*(a1 + 56))
    {
      if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
      {
        __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_1();
      }

      goto LABEL_32;
    }

    v6 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:?];
    v7 = v6;
    v8 = *(a1 + 72);
    if (v8 == APRKMediaPlayerObservationContextTimedMetadata)
    {
      v62 = @"uuid";
      v63 = [*(a1 + 56) UUIDString];
      v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

      [v7 setObject:? forKey:?];
      v27 = v7;
    }

    else
    {
      if (v8 == APRKMediaPlayerObservationContextPlaybackBufferEmpty)
      {
        [v6 setObject:? forKey:?];
        v60 = @"uuid";
        v28 = [*(a1 + 56) UUIDString];
        v61 = v28;
        v29 = MEMORY[0x277CBEAC0];
      }

      else if (v8 == APRKMediaPlayerObservationContextPlaybackBufferFull)
      {
        [v6 setObject:? forKey:?];
        v58 = @"uuid";
        v28 = [*(a1 + 56) UUIDString];
        v59 = v28;
        v29 = MEMORY[0x277CBEAC0];
      }

      else if (v8 == APRKMediaPlayerObservationContextPlaybackBufferLikelyToKeepUp)
      {
        [v6 setObject:? forKey:?];
        v31 = MEMORY[0x277CCABB0];
        [*(a1 + 56) isPlaybackLikelyToKeepUp];
        v32 = [v31 numberWithBool:?];
        [v7 setObject:? forKey:?];

        v56 = @"uuid";
        v28 = [*(a1 + 56) UUIDString];
        v57 = v28;
        v29 = MEMORY[0x277CBEAC0];
      }

      else
      {
        if (v8 == APRKMediaPlayerObservationContextCurrentItemStatus)
        {
          if ([*(a1 + 56) status] != 1)
          {
            goto LABEL_33;
          }

          [v7 setObject:? forKey:?];
          v54 = @"uuid";
          v55 = [*(a1 + 56) UUIDString];
          v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

          [v7 setObject:? forKey:?];
          v33 = *(a1 + 32);
          if (v33[8] && [v33 _attemptToSetSelectedMediaArray:?])
          {
            v34 = *(*v2 + 8);
            *(*v2 + 8) = 0;
          }

          goto LABEL_92;
        }

        if (v8 == APRKMediaPlayerObservationContextCurrentItemLoadableTimeRanges)
        {
          [v6 setObject:? forKey:?];
          v52 = @"uuid";
          v28 = [*(a1 + 56) UUIDString];
          v53 = v28;
          v29 = MEMORY[0x277CBEAC0];
        }

        else
        {
          if (v8 != APRKMediaPlayerObservationContextCurrentItemSeekableTimeRanges)
          {
            v9 = *(a1 + 64);
            v10 = *(a1 + 40);
            v11 = *(a1 + 48);
            v45.receiver = *(a1 + 32);
            v45.super_class = APRKMediaPlayer;
            objc_msgSendSuper2(&v45, sel_observeValueForKeyPath_ofObject_change_context_, v9, v10, v11);
            goto LABEL_93;
          }

          [v6 setObject:? forKey:?];
          v50 = @"uuid";
          v28 = [*(a1 + 56) UUIDString];
          v51 = v28;
          v29 = MEMORY[0x277CBEAC0];
        }
      }

      v26 = [v29 dictionaryWithObjects:? forKeys:? count:?];

      v27 = v7;
    }

    [v27 setObject:? forKey:?];
LABEL_92:

LABEL_93:
    if (v7)
    {
      [*v2 _sendUpstreamMessageWithDictionary:?];
    }

    goto LABEL_33;
  }

  if (gLogCategory_AirPlayReceiverKit <= 30)
  {
    if (gLogCategory_AirPlayReceiverKit != -1)
    {
LABEL_4:
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer observeValueForKeyPath:ofObject:change:context:]_block_invoke", 33554462, "Observer called after APRKMediaPlayer %@ is stopped, doing nothing.", v1);
      return;
    }

    if (_LogCategory_Initialize())
    {
      v1 = *v2;
      goto LABEL_4;
    }
  }
}

float *__66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2(float *result)
{
  if (result[10] != 0.0)
  {
    v2 = result;
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2_cold_1();
    }

    v3 = *(*(v2 + 4) + 8);

    return [v3 setRate:?];
  }

  return result;
}

void __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  v4 = [*(v2 + 72) objectForKeyedSubscript:?];
  [v4 floatValue];
  v5 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];
  if (v5)
  {
    [&v11 CMTimeValue];
  }

  else
  {
    v11 = 0;
    v12 = 0;
    v13 = 0;
  }

  v6 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:?];
  if (v6)
  {
    [&v8 CMTimeValue];
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 0;
  }

  v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:{v8, v9, v10, v11, v12, v13}];
  [v3 setRate:? time:? atHostTime:? options:?];
}

- (void)contentKeyHelper:(id)helper wantsToPerformContentKeyRequestWithDictionary:(id)dictionary
{
  v14 = *MEMORY[0x277D85DE8];
  v8 = @"type";
  v9 = @"kind";
  v11 = @"unhandledURL";
  v12 = @"request";
  v10 = *MEMORY[0x277CC11D0];
  dictionaryCopy = dictionary;
  v5 = MEMORY[0x277CBEAC0];
  dictionaryCopy2 = dictionary;
  v7 = [v5 dictionaryWithObjects:? forKeys:? count:?];

  [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:?];
}

- (void)contentKeyHelper:(id)helper didGenerateSecureStopRecordPayload:(id)payload
{
  payloadCopy = payload;
  WeakRetained = objc_loadWeakRetained(&self->_messagingDelegate);
  [WeakRetained mediaPlayer:? didGenerateFPSSecureStopRecordPayload:?];
}

- (void)resourceLoaderHelper:(id)helper wantsToPerformUnhandledURLRequestWithDictionary:(id)dictionary forRequestID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  v12 = @"unhandledURL";
  v13 = @"request";
  v7 = MEMORY[0x277CCACA8];
  dictionaryCopy = dictionary;
  v9 = [v7 stringWithFormat:objc_msgSend(d, "integerValue"), @"type", @"kind", @"messageID"];
  v11 = *MEMORY[0x277CC11D0];
  v14 = v9;
  v15 = dictionaryCopy;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [(APRKMediaPlayer *)self _sendUpstreamMessageWithDictionary:?];
}

- (id)localParticipantUUIDForPlaybackCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer localParticipantUUIDForPlaybackCoordinator:?];
  }

  localParticipantID = self->_localParticipantID;
  v6 = localParticipantID;

  return localParticipantID;
}

- (void)playbackCoordinator:(id)coordinator broadcastLocalParticipantStateDictionary:(id)dictionary
{
  coordinatorCopy = coordinator;
  dictionaryCopy = dictionary;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer playbackCoordinator:dictionaryCopy broadcastLocalParticipantStateDictionary:?];
  }

  messageQueue = self->_messageQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __80__APRKMediaPlayer_playbackCoordinator_broadcastLocalParticipantStateDictionary___block_invoke;
  v10[3] = &unk_278C62788;
  v11 = dictionaryCopy;
  selfCopy = self;
  v9 = dictionaryCopy;
  dispatch_async(messageQueue, v10);
}

void __80__APRKMediaPlayer_playbackCoordinator_broadcastLocalParticipantStateDictionary___block_invoke(uint64_t a1)
{
  v3 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:?];
  [v3 setObject:? forKey:?];
  [v3 setObject:? forKey:?];
  v2 = v3;
  if (v3)
  {
    [*(a1 + 40) _sendUpstreamMessageWithDictionary:?];
    v2 = v3;
  }
}

- (void)playbackCoordinator:(id)coordinator broadcastTransportControlStateDictionary:(id)dictionary forItemWithIdentifier:(id)identifier
{
  coordinatorCopy = coordinator;
  dictionaryCopy = dictionary;
  identifierCopy = identifier;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer playbackCoordinator:dictionaryCopy broadcastTransportControlStateDictionary:? forItemWithIdentifier:?];
  }

  messageQueue = self->_messageQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__APRKMediaPlayer_playbackCoordinator_broadcastTransportControlStateDictionary_forItemWithIdentifier___block_invoke;
  block[3] = &unk_278C628F0;
  v15 = dictionaryCopy;
  v16 = identifierCopy;
  selfCopy = self;
  v12 = identifierCopy;
  v13 = dictionaryCopy;
  dispatch_async(messageQueue, block);
}

void __102__APRKMediaPlayer_playbackCoordinator_broadcastTransportControlStateDictionary_forItemWithIdentifier___block_invoke(uint64_t a1)
{
  v3 = [APRKUtilities baseDictionaryForUpstreamMessageWithType:?];
  [v3 setObject:? forKey:?];
  [v3 setObject:? forKey:?];
  [v3 setObject:? forKey:?];
  v2 = v3;
  if (v3)
  {
    [*(a1 + 48) _sendUpstreamMessageWithDictionary:?];
    v2 = v3;
  }
}

- (void)playbackCoordinator:(id)coordinator reloadTransportControlStateForItemWithIdentifier:(id)identifier completionHandler:(id)handler
{
  coordinatorCopy = coordinator;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer playbackCoordinator:reloadTransportControlStateForItemWithIdentifier:completionHandler:]", 33554462, "PlaybackCoordinationMedium: reloadTransportControlStateForItemWithIdentifier coordinator = %p, identifier = %@", coordinatorCopy, identifierCopy);
  }

  handlerCopy[2](handlerCopy);
}

- (void)integratedTimeline:(id)timeline didRequestSeekToTime:(id *)time seekID:(int)d toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  v9 = *&d;
  timelineCopy = timeline;
  currentItem = [(APRKMediaPlayer *)self currentItem];
  if (currentItem)
  {
    if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
    {
      player = self->_player;
      v14 = *MEMORY[0x277CBECE8];
      time = *time;
      v19 = CMTimeCopyDescription(v14, &time);
      time = *before;
      v15 = CMTimeCopyDescription(v14, &time);
      time = *after;
      v16 = CMTimeCopyDescription(v14, &time);
      LogPrintF(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer integratedTimeline:didRequestSeekToTime:seekID:toleranceBefore:toleranceAfter:]", 33554462, "Integrated timeline seek %d delegate on player %@ with data: {%s%@%s%@%s%@ }", v9, player, " time: ", v19, " toleranceBefore:\t", v15, " toleranceAfter:\t", v16);
    }

    self->_pendingIntegratedTimelineSeekID = v9;
    interstitialPlayer = self->_interstitialPlayer;
    if (interstitialPlayer)
    {
      [(APRKMediaPlayer *)interstitialPlayer setPendingIntegratedTimelineSeekID:?];
    }

    messageQueue = self->_messageQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __97__APRKMediaPlayer_integratedTimeline_didRequestSeekToTime_seekID_toleranceBefore_toleranceAfter___block_invoke;
    block[3] = &unk_278C62990;
    v24 = v9;
    block[4] = self;
    v25 = *&time->var0;
    var3 = time->var3;
    v22 = timelineCopy;
    v27 = *&before->var0;
    v28 = before->var3;
    v29 = *&after->var0;
    v30 = after->var3;
    v23 = currentItem;
    dispatch_async(messageQueue, block);
  }

  else if (gLogCategory_AirPlayReceiverKit <= 30 && (gLogCategory_AirPlayReceiverKit != -1 || _LogCategory_Initialize()))
  {
    [APRKMediaPlayer integratedTimeline:didRequestSeekToTime:seekID:toleranceBefore:toleranceAfter:];
  }
}

void __97__APRKMediaPlayer_integratedTimeline_didRequestSeekToTime_seekID_toleranceBefore_toleranceAfter___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  [v2 setObject:? forKey:?];
  v3 = [MEMORY[0x277CCABB0] numberWithInt:?];
  [v2 setObject:? forKey:?];

  v4 = MEMORY[0x277CCABB0];
  [*(*(a1 + 32) + 8) rate];
  v5 = [v4 numberWithFloat:?];
  [v2 setObject:? forKey:?];

  v6 = *MEMORY[0x277CBECE8];
  v13 = *(a1 + 60);
  v7 = CMTimeCopyAsDictionary(&v13, v6);
  [v2 setObject:? forKey:?];

  if (*(a1 + 40))
  {
    [&v13 currentTime];
  }

  else
  {
    memset(&v13, 0, sizeof(v13));
  }

  v8 = CMTimeCopyAsDictionary(&v13, v6);
  [v2 setObject:? forKey:?];

  v13 = *(a1 + 84);
  v9 = CMTimeCopyAsDictionary(&v13, v6);
  [v2 setObject:? forKey:?];

  v13 = *(a1 + 108);
  v10 = CMTimeCopyAsDictionary(&v13, v6);
  [v2 setObject:? forKey:?];

  v14 = @"uuid";
  v11 = [*(a1 + 48) UUIDString];
  v15 = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:? forKeys:? count:?];

  [v2 setObject:? forKey:?];
  [*(a1 + 32) _sendUpstreamMessageWithDictionary:?];
}

- (uint64_t)invalidate
{
  v6 = *(self + 8);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

void __74__APRKMediaPlayer_processMessageWithIDAndDictionarySync_messageSessionID___block_invoke_cold_1(uint64_t a1)
{
  v7 = [*(*(*a1 + 8) + 40) objectForKey:?];
  v6 = *(*(*a1 + 8) + 40);
  OUTLINED_FUNCTION_3();
  LogPrintF(v2, v3, v4, v5, v7, v6);
}

- (void)_insertPlayQueueItemWithDictionary:(void *)a1 .cold.6(void *a1)
{
  v1 = [a1 UUIDString];
  OUTLINED_FUNCTION_3();
  LogPrintF(v2, v3, v4, v5, v1);
}

- (void)_removePlayQueueItemWithDictionary:(void *)a1 .cold.2(void *a1)
{
  v5 = [a1 UUIDString];
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4, v5);
}

uint64_t __42__APRKMediaPlayer__setRateWithDictionary___block_invoke_cold_1(float *a1, uint64_t a2)
{
  v8 = *(*a2 + 8);
  v7 = *a1;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v2, v3, v4, v5, *&v7, v8);
}

- (uint64_t)_setPropertyWithDictionary:(CMTime *)a3 .cold.5(__int128 *a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OUTLINED_FUNCTION_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16, v17);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v8, v9, v10, v11, *&v14);
}

- (uint64_t)_setPropertyWithDictionary:(CMTime *)a3 .cold.6(__int128 *a1, uint64_t a2, CMTime *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = OUTLINED_FUNCTION_4(a1, a2, a3, a4, a5, a6, a7, a8, v13, v15, v16, v17);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v8, v9, v10, v11, *&v14);
}

- (uint64_t)_setPropertyWithDictionary:.cold.7()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v0, v1, v2, v3);
}

void __54__APRKMediaPlayer__sendUpstreamMessageWithDictionary___block_invoke_cold_1(uint64_t a1)
{
  v7 = [*(a1 + 32) objectForKey:?];
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  LogPrintF(v2, v3, v4, v5, v7, v6);
}

uint64_t __57__APRKMediaPlayer__registerNotificationHandlersForPlayer__block_invoke_cold_1(uint64_t a1)
{
  v6 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t __59__APRKMediaPlayer__unregisterNotificationHandlersForPlayer__block_invoke_cold_1(uint64_t a1)
{
  v6 = *(*(a1 + 32) + 8);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

void __78__APRKMediaPlayer__registerNotificationHandlersAndInsertPlayerItem_afterItem___block_invoke_cold_2(_DWORD *a1, id *a2)
{
  v2 = (*a1 & 1) == 0;
  v3 = (~*a1 & 0x11) == 0;
  v4 = [*a2 UUIDString];
  OUTLINED_FUNCTION_3();
  LogPrintF(v5, v6, v7, v8, v2, v3, v4);
}

uint64_t __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_1(uint64_t a1)
{
  v6 = *(a1 + 32);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

uint64_t __70__APRKMediaPlayer__unregisterNotificationHandlersAndRemovePlayerItem___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_3();
  return LogPrintF(v0, v1, v2, v3);
}

- (void)_handleTimeJumpedNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (void)_handleCurrentItemChangedNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = [v2 name];
  v9 = *v1;
  v10 = v3;
  v8 = v3;
  OUTLINED_FUNCTION_3();
  LogPrintF(v4, v5, v6, v7, v8, v0, v9);
}

- (void)_handleCurrentItemPlayedToEndNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  v3 = [v2 name];
  v12 = v3;
  v4 = "primary";
  if (*(v1 + 208))
  {
    v4 = "interstitial";
  }

  v11 = *(v1 + 8);
  v9 = v3;
  v10 = v4;
  OUTLINED_FUNCTION_3();
  LogPrintF(v5, v6, v7, v8, v9, v10, v0, v11);
}

- (void)_handleCurrentItemFailedToPlayToEndNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (void)_handleCurrentItemPlaybackStalledNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (void)_handleCurrentPlayerItemReachedTimeToPauseBufferingNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (void)_handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

void __82__APRKMediaPlayer__handleCurrentPlayerItemReachedTimeToPausePlaybackNotification___block_invoke_cold_1(id *a1)
{
  v2 = [*a1 name];
  OUTLINED_FUNCTION_6(&gLogCategory_AirPlayReceiverKit, "[APRKMediaPlayer _handleCurrentPlayerItemReachedTimeToPausePlaybackNotification:]_block_invoke", v1, "Payload from handling %@ notification: %@");
}

- (void)_handleSeekDidCompleteNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (uint64_t)_handleSeekDidCompleteNotification:(unsigned int *)a1 .cold.2(unsigned int *a1, char a2)
{
  v2 = "cancelled";
  if (a2)
  {
    v2 = "completed";
  }

  v8 = *a1;
  v9 = v2;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v3, v4, v5, v6, v8, v9);
}

uint64_t __54__APRKMediaPlayer__handleSeekDidCompleteNotification___block_invoke_cold_1(unsigned int *a1)
{
  v6 = *a1;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

- (void)_handleCurrentPlayerItemMediaSelectionDidChangeNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (void)_handleCurrentPlayerItemNewAccessLogEntryNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

- (void)_handleCurrentEventSkippedNotification:.cold.1()
{
  OUTLINED_FUNCTION_2();
  [v0 name];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_3();
  LogPrintF(v1, v2, v3, v4);
}

uint64_t __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_2(uint64_t a1)
{
  v6 = *(*a1 + 72);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, "[APRKMediaPlayer observeValueForKeyPath:ofObject:change:context:]_block_invoke", v6);
}

uint64_t __66__APRKMediaPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_cold_3(uint64_t a1, float a2, float a3)
{
  v3 = a2;
  v4 = a3;
  if (*(*a1 + 208))
  {
    v5 = "true";
  }

  else
  {
    v5 = "false";
  }

  v15 = v5;
  v14 = *(*a1 + 192);
  v13 = *(*a1 + 196);
  v11 = v3;
  v12 = v4;
  OUTLINED_FUNCTION_3();
  return LogPrintF(v6, v7, v8, v9, *&v11, *&v12, v13, *&v14, v15);
}

- (uint64_t)localParticipantUUIDForPlaybackCoordinator:(uint64_t)a1 .cold.1(uint64_t a1)
{
  v6 = *(a1 + 136);
  OUTLINED_FUNCTION_3();
  return LogPrintF(v1, v2, v3, v4, v6);
}

@end