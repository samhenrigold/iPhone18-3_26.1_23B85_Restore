@interface TUAudioSystemController
+ (BOOL)isPhoneCallAudioCategory:(id)category;
+ (TUAudioSystemController)sharedAudioSystemController;
+ (id)filteredPickableRoutesFromPickableRoutes:(id)routes;
+ (id)sharedSystemController;
+ (id)sourceIdentifierForRouteID:(id)d;
- (BOOL)isDownlinkMuted;
- (BOOL)isTTY;
- (BOOL)isUplinkMuted;
- (BOOL)otherSessionsRequestNoRingtoneInterruption;
- (BOOL)pickRoute:(id)route error:(id *)error;
- (BOOL)shouldSuppressCallUsingRoute:(id)route;
- (NSArray)bestGuessPickableRoutesForAnyCall;
- (NSDictionary)pickedRouteAttribute;
- (TUAudioSystemController)init;
- (TUAudioSystemControllerDelegate)delegate;
- (float)activeCategoryVolume;
- (id)_pickableRoutesForPhoneCallWithForceNewRequest:(BOOL)request;
- (id)_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:(BOOL)request;
- (id)_pickableRoutesForPlayAndRecordVideoWithForceNewRequest:(BOOL)request;
- (id)_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:(BOOL)request;
- (id)_pickableRoutesForTTYWithForceNewRequest:(BOOL)request;
- (id)_pickableRoutesForVoiceMailWithForceNewRequest:(BOOL)request;
- (id)currentlyPickedRouteIdForCategory:(id)category andMode:(id)mode;
- (id)pickableRouteWithUniqueIdentifier:(id)identifier;
- (id)pickableRoutesForActiveCall;
- (id)pickableRoutesForCategory:(id)category andMode:(id)mode;
- (void)_getPickableRoutesForCategory:(id)category mode:(id)mode onlyKnownCombinations:(BOOL)combinations completion:(id)completion;
- (void)_handleDownlinkMuteDidChangeNotification:(id)notification;
- (void)_handlePickableRoutesDidChangeNotification:(id)notification;
- (void)_handleUplinkMuteDidChangeNotification:(id)notification;
- (void)_handleVolumeDidChangeNotification:(id)notification;
- (void)_loadCurrentPickableRoutesWithCompletion:(id)completion;
- (void)_mediaServicesWereReset:(id)reset;
- (void)_subscribeToNotificationAttributes;
- (void)_updateCachedState;
- (void)clearUplinkMutedCache;
- (void)dealloc;
- (void)isDownlinkMuted;
- (void)isTTY;
- (void)isUplinkMuted;
- (void)otherSessionsRequestNoRingtoneInterruption;
- (void)setActiveCategoryVolume:(float)volume;
- (void)setDownlinkMuted:(BOOL)muted;
- (void)setUplinkMuted:(BOOL)muted;
- (void)switchBluetoothAudioFormats;
- (void)triggerEndInterruptionForAudioSessionID:(id)d;
@end

@implementation TUAudioSystemController

- (BOOL)isTTY
{
  [(TUAudioController *)self _acquireLock];
  [(TUAudioController *)self _requestUpdatedValueWithBlock:&__block_literal_global_72_0 object:&self->_isTTYCached isRequestingPointer:&self->_isRequestingTTY forceNewRequest:0 scheduleTimePointer:&self->_lastTTYRequestScheduleTime notificationString:@"TUAudioSystemTTYChangedNotification" queue:self->_ttyQueue];
  bOOLValue = [(NSNumber *)self->_isTTYCached BOOLValue];
  v4 = TUDefaultLog([(TUAudioController *)self _releaseLock]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController isTTY];
  }

  return bOOLValue;
}

- (TUAudioSystemControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

id __32__TUAudioSystemController_isTTY__block_invoke()
{
  v0 = +[TUAudioSystemController sharedSystemController];
  v6 = 0;
  [v0 getActiveCategoryVolume:0 andName:&v6];
  v1 = v6;

  v2 = MEMORY[0x1E696AD98];
  v3 = [v1 isEqualToString:@"TTYCall"];

  v4 = [v2 numberWithBool:v3];

  return v4;
}

+ (id)sharedSystemController
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2050000000;
  v4 = getAVSystemControllerClass_softClass;
  v13 = getAVSystemControllerClass_softClass;
  if (!getAVSystemControllerClass_softClass)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __getAVSystemControllerClass_block_invoke;
    v9[3] = &unk_1E7424CD8;
    v9[4] = &v10;
    __getAVSystemControllerClass_block_invoke(v9, a2, v2, v3);
    v4 = v11[3];
  }

  v5 = v4;
  _Block_object_dispose(&v10, 8);
  sharedAVSystemController = [v4 sharedAVSystemController];
  if (!sharedAVSystemController)
  {
    v7 = TUDefaultLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] +[AVSystemController sharedAVSystemController] returned nil value", v9, 2u);
    }
  }

  return sharedAVSystemController;
}

- (NSArray)bestGuessPickableRoutesForAnyCall
{
  if (+[TUCallCapabilities supportsPrimaryCalling])
  {
    [(TUAudioSystemController *)self _pickableRoutesForPhoneCallWithForceNewRequest:0];
  }

  else
  {
    [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:0];
  }
  v3 = ;

  return v3;
}

+ (TUAudioSystemController)sharedAudioSystemController
{
  if (sharedAudioSystemController_onceToken != -1)
  {
    +[TUAudioSystemController sharedAudioSystemController];
  }

  v3 = __sharedController;

  return v3;
}

- (BOOL)isDownlinkMuted
{
  [(TUAudioController *)self _acquireLock];
  [(TUAudioController *)self _requestUpdatedValueWithBlock:&__block_literal_global_80 object:&self->_isDownlinkMutedCached isRequestingPointer:&self->_isRequestingDownlinkMuted forceNewRequest:0 scheduleTimePointer:&self->_lastDownlinkMutedRequestScheduleTime notificationString:@"TUAudioSystemDownlinkMuteStatusChangedNotification" queue:self->_downlinkMutedQueue];
  bOOLValue = [(NSNumber *)self->_isDownlinkMutedCached BOOLValue];
  v4 = TUDefaultLog([(TUAudioController *)self _releaseLock]);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController isDownlinkMuted];
  }

  return bOOLValue;
}

id __42__TUAudioSystemController_isDownlinkMuted__block_invoke()
{
  v0 = +[TUAudioSystemController sharedSystemController];
  v1 = getAVSystemController_DownlinkMuteAttribute();
  v2 = [v0 attributeForKey:v1];

  return v2;
}

uint64_t __54__TUAudioSystemController_sharedAudioSystemController__block_invoke()
{
  __sharedController = objc_alloc_init(TUAudioSystemController);

  return MEMORY[0x1EEE66BB8]();
}

- (TUAudioSystemController)init
{
  v40 = *MEMORY[0x1E69E9840];
  v37.receiver = self;
  v37.super_class = TUAudioSystemController;
  v2 = [(TUAudioController *)&v37 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.UplinkMutedQueue", 0);
    v4 = *(v2 + 2);
    *(v2 + 2) = v3;

    v5 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.DownlinkMutedQueue", 0);
    v6 = *(v2 + 3);
    *(v2 + 3) = v5;

    v7 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.TTYQueue", 0);
    v8 = *(v2 + 4);
    *(v2 + 4) = v7;

    v9 = dispatch_queue_create("com.apple.TelephonyUtilities.TUAudioSystemController.PickableRoutesQueue", 0);
    v10 = *(v2 + 5);
    *(v2 + 5) = v9;

    v11 = *(v2 + 2);
    v12 = dispatch_get_global_queue(0, 0);
    dispatch_set_target_queue(v11, v12);

    dispatch_set_target_queue(*(v2 + 3), v12);
    dispatch_set_target_queue(*(v2 + 4), v12);

    dispatch_set_target_queue(*(v2 + 5), v12);
    v13 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v14 = *(v2 + 6);
    *(v2 + 6) = v13;

    v15 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v16 = *(v2 + 7);
    *(v2 + 7) = v15;

    v17 = [MEMORY[0x1E696AD98] numberWithBool:0];
    v18 = *(v2 + 8);
    *(v2 + 8) = v17;

    v19 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v20 = *(v2 + 9);
    *(v2 + 9) = v19;

    v21 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v22 = *(v2 + 10);
    *(v2 + 10) = v21;

    v23 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v24 = *(v2 + 11);
    *(v2 + 11) = v23;

    v25 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v26 = *(v2 + 12);
    *(v2 + 12) = v25;

    v27 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v28 = *(v2 + 13);
    *(v2 + 13) = v27;

    v29 = objc_alloc_init(MEMORY[0x1E695DEC8]);
    v30 = *(v2 + 14);
    *(v2 + 14) = v29;

    *(v2 + 128) = 0;
    *(v2 + 129) = 0;
    *(v2 + 130) = 0;
    *(v2 + 131) = 0;
    *(v2 + 132) = 0;
    *(v2 + 133) = 0;
    *(v2 + 134) = 0;
    *(v2 + 135) = 0;
    *(v2 + 136) = 0;
    *(v2 + 18) = 0;
    *(v2 + 19) = 0;
    *(v2 + 20) = 0;
    *(v2 + 21) = 0;
    *(v2 + 22) = 0;
    *(v2 + 23) = 0;
    *(v2 + 24) = 0;
    *(v2 + 25) = 0;
    *(v2 + 26) = 0;
    v31 = objc_alloc_init(TUFeatureFlags);
    v32 = *(v2 + 27);
    *(v2 + 27) = v31;

    _subscribeToNotificationAttributes = [v2 _subscribeToNotificationAttributes];
    if (init__pred__AVAudioSessionMediaServicesWereResetNotification != -1)
    {
      [TUAudioSystemController init];
    }

    if (init__AVAudioSessionMediaServicesWereResetNotification)
    {
      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:v2 selector:sel__mediaServicesWereReset_ name:init__AVAudioSessionMediaServicesWereResetNotification object:0];
    }

    else
    {
      defaultCenter = TUDefaultLog(_subscribeToNotificationAttributes);
      if (os_log_type_enabled(defaultCenter, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v39 = @"AVAudioSessionMediaServicesWereResetNotification";
        _os_log_impl(&dword_1956FD000, defaultCenter, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", buf, 0xCu);
      }
    }

    v35 = dispatch_get_global_queue(21, 0);
    dispatch_async(v35, &__block_literal_global_41_0);

    [v2 _updateCachedState];
  }

  return v2;
}

void __31__TUAudioSystemController_init__block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&init__AVAudioSessionMediaServicesWereResetNotification, v1);
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = TUAudioSystemController;
  [(TUAudioSystemController *)&v4 dealloc];
}

- (void)_subscribeToNotificationAttributes
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_SubscribeToNotificationsAttribute(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:44 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_updateCachedState
{
  v3 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__TUAudioSystemController__updateCachedState__block_invoke;
  block[3] = &unk_1E7424950;
  block[4] = self;
  dispatch_async(v3, block);
}

id __45__TUAudioSystemController__updateCachedState__block_invoke(uint64_t a1)
{
  if (([*(*(a1 + 32) + 216) sessionBasedMutingEnabled] & 1) == 0)
  {
    [*(a1 + 32) isUplinkMuted];
  }

  [*(a1 + 32) isDownlinkMuted];
  [*(a1 + 32) isTTY];
  v2 = [*(a1 + 32) pickableRoutesForTTY];
  v3 = [*(a1 + 32) _pickableRoutesForPhoneCallWithForceNewRequest:0];
  v4 = [*(a1 + 32) _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:0];
  v5 = [*(a1 + 32) _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:0];
  v6 = [*(a1 + 32) _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:0];
  return [*(a1 + 32) _pickableRoutesForVoiceMailWithForceNewRequest:0];
}

- (void)_handleUplinkMuteDidChangeNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Mute status changed: %@", &v6, 0xCu);
  }

  [(TUAudioSystemController *)self isUplinkMuted];
}

- (void)_handleDownlinkMuteDidChangeNotification:(id)notification
{
  v8 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Downlink mute status changed: %@", &v6, 0xCu);
  }

  [(TUAudioSystemController *)self isDownlinkMuted];
}

- (void)_handleVolumeDidChangeNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v4 = TUDefaultLog(notificationCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "Volume changed: %@", buf, 0xCu);
  }

  userInfo = [notificationCopy userInfo];
  v6 = [userInfo copy];

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__TUAudioSystemController__handleVolumeDidChangeNotification___block_invoke;
  block[3] = &unk_1E7424950;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __62__TUAudioSystemController__handleVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUAudioSystemActiveCategoryVolumeChangedNotification" object:0 userInfo:*(a1 + 32)];
}

- (void)_handlePickableRoutesDidChangeNotification:(id)notification
{
  v15 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = TUDefaultLog(notificationCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = notificationCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Pickable Routes Changed: %@", &v13, 0xCu);
  }

  if ([(TUAudioSystemController *)self isTTY])
  {
    v6 = [(TUAudioSystemController *)self _pickableRoutesForTTYWithForceNewRequest:1];
  }

  else
  {
    v7 = [(TUAudioSystemController *)self _pickableRoutesForPhoneCallWithForceNewRequest:1];
    v8 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:1];
    v9 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:1];
    v10 = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:1];
    v11 = [(TUAudioSystemController *)self _pickableRoutesForVoiceMailWithForceNewRequest:1];
  }

  [(TUAudioController *)self _acquireLock];
  currentPickableRoutes = self->_currentPickableRoutes;
  if (currentPickableRoutes)
  {
    self->_currentPickableRoutes = 0;

    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_55);
  }

  [(TUAudioController *)self _releaseLock];
}

void __70__TUAudioSystemController__handlePickableRoutesDidChangeNotification___block_invoke(uint64_t a1)
{
  v1 = TUDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_1956FD000, v1, OS_LOG_TYPE_DEFAULT, "Clearing cached current pickable routes and posting TUAudioSystemAudioPickableRoutesChanged", v3, 2u);
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUAudioSystemAudioPickableRoutesChanged" object:0];
}

- (void)_mediaServicesWereReset:(id)reset
{
  v8 = *MEMORY[0x1E69E9840];
  resetCopy = reset;
  v5 = TUDefaultLog(resetCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = resetCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Media services were reset: %@", &v6, 0xCu);
  }

  [(TUAudioSystemController *)self _subscribeToNotificationAttributes];
  [(TUAudioSystemController *)self _updateCachedState];
}

- (float)activeCategoryVolume
{
  v6 = 0.0;
  v2 = +[TUAudioSystemController sharedSystemController];
  [v2 getActiveCategoryVolume:&v6 andName:0];

  v4 = TUDefaultLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController activeCategoryVolume];
  }

  return v6;
}

- (void)triggerEndInterruptionForAudioSessionID:(id)d
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (triggerEndInterruptionForAudioSessionID___pred_kAVSystemController_PostInterruptionEndedNotificationKey_AudioSessionID != -1)
  {
    [TUAudioSystemController triggerEndInterruptionForAudioSessionID:];
  }

  if (triggerEndInterruptionForAudioSessionID___pred_kAVSystemController_PostInterruptionEndedNotificationKey_IsResumable != -1)
  {
    [TUAudioSystemController triggerEndInterruptionForAudioSessionID:];
  }

  v16[0] = triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_AudioSessionID;
  v16[1] = triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_IsResumable;
  v17[0] = dCopy;
  v4 = [MEMORY[0x1E696AD98] numberWithBool:1];
  v17[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  v7 = TUDefaultLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138412290;
    *(&buf + 4) = v5;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "Triggering an end of interruption for audio session with ID %@", &buf, 0xCu);
  }

  v8 = +[TUAudioSystemController sharedSystemController];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v9 = getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr;
  v15 = getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr;
  if (!getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr)
  {
    *&buf = MEMORY[0x1E69E9820];
    *(&buf + 1) = 3221225472;
    v19 = __getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_block_invoke;
    v20 = &unk_1E7424CD8;
    v21 = &v12;
    v10 = MediaExperienceLibrary();
    v11 = dlsym(v10, "AVSystemController_PostInterruptionEndedNotification");
    *(v21[1] + 24) = v11;
    getAVSystemController_PostInterruptionEndedNotificationSymbolLoc_ptr = *(v21[1] + 24);
    v9 = v13[3];
  }

  _Block_object_dispose(&v12, 8);
  if (!v9)
  {
    [TUAudioSystemController triggerEndInterruptionForAudioSessionID:];
  }

  [v8 setAttribute:v5 forKey:*v9 error:{0, v12}];
}

void __67__TUAudioSystemController_triggerEndInterruptionForAudioSessionID___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_AudioSessionID, v1);
}

void __67__TUAudioSystemController_triggerEndInterruptionForAudioSessionID___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&triggerEndInterruptionForAudioSessionID__kAVSystemController_PostInterruptionEndedNotificationKey_IsResumable, v1);
}

- (void)clearUplinkMutedCache
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = objc_opt_respondsToSelector();

  v5 = TUDefaultLog(v4);
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Clearing uplink mute cache for AVSystemController", buf, 2u);
    }

    v5 = +[TUAudioSystemController sharedSystemController];
    [v5 clearUplinkMutedCache];
  }

  else if (v6)
  {
    *v7 = 0;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Not clearing uplink mute cache for AVSystemController since it does not conform to clearUplinkMutedCache", v7, 2u);
  }
}

- (void)setActiveCategoryVolume:(float)volume
{
  v4 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke;
  block[3] = &__block_descriptor_36_e5_v8__0l;
  volumeCopy = volume;
  dispatch_async(v4, block);
}

void __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v9 = 134217984;
    v10 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Setting active category volume to %f", &v9, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedSystemController];
  LODWORD(v5) = *(a1 + 32);
  v6 = [v4 setActiveCategoryVolumeTo:v5];

  if ((v6 & 1) == 0)
  {
    v8 = TUDefaultLog(v7);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __51__TUAudioSystemController_setActiveCategoryVolume___block_invoke_cold_1();
    }
  }
}

- (BOOL)isUplinkMuted
{
  sessionBasedMutingEnabled = [(TUFeatureFlags *)self->_featureFlags sessionBasedMutingEnabled];
  if (sessionBasedMutingEnabled)
  {
    v4 = TUDefaultLog(sessionBasedMutingEnabled);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [TUAudioSystemController isUplinkMuted];
    }

    bOOLValue = 0;
  }

  else
  {
    [(TUAudioController *)self _acquireLock];
    [(TUAudioController *)self _requestUpdatedValueWithBlock:&__block_literal_global_70 object:&self->_isUplinkMutedCached isRequestingPointer:&self->_isRequestingUplinkMuted forceNewRequest:0 scheduleTimePointer:&self->_lastUplinkMutedRequestScheduleTime notificationString:@"TUAudioSystemUplinkMuteStatusChangedNotification" queue:self->_uplinkMutedQueue];
    bOOLValue = [(NSNumber *)self->_isUplinkMutedCached BOOLValue];
    v4 = TUDefaultLog([(TUAudioController *)self _releaseLock]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [TUAudioSystemController isUplinkMuted];
    }
  }

  return bOOLValue;
}

id __40__TUAudioSystemController_isUplinkMuted__block_invoke()
{
  v0 = +[TUAudioSystemController sharedSystemController];
  v4 = getAVSystemController_UplinkMuteAttribute(v0, v1, v2, v3);
  v5 = [v0 attributeForKey:v4];

  return v5;
}

- (void)setUplinkMuted:(BOOL)muted
{
  mutedCopy = muted;
  sessionBasedMutingEnabled = [(TUFeatureFlags *)self->_featureFlags sessionBasedMutingEnabled];
  if (sessionBasedMutingEnabled)
  {
    v6 = TUDefaultLog(sessionBasedMutingEnabled);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [TUAudioSystemController setUplinkMuted:];
    }
  }

  else
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:mutedCopy];
    v6 = v7;
    if (!self->_isUplinkMutedCached || ([v7 isEqualToNumber:?]& 1) == 0)
    {
      uplinkMutedQueue = self->_uplinkMutedQueue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __42__TUAudioSystemController_setUplinkMuted___block_invoke;
      block[3] = &unk_1E7425B78;
      block[4] = self;
      v6 = v6;
      v10 = v6;
      v11 = mutedCopy;
      dispatch_async(uplinkMutedQueue, block);
    }
  }
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog([*(a1 + 32) _acquireLock]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v19 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "setting isUplinkMuted value = %@", buf, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedSystemController];
  v5 = *(a1 + 40);
  v9 = getAVSystemController_UplinkMuteAttribute(v4, v6, v7, v8);
  v17 = 0;
  v10 = [v4 setAttribute:v5 forKey:v9 error:&v17];
  v11 = v17;

  if (v10)
  {
    v13 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(a1 + 48)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 48);
    *(v14 + 48) = v13;

    [*(a1 + 32) _releaseLock];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_78);
  }

  else
  {
    v16 = TUDefaultLog(v12);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __42__TUAudioSystemController_setUplinkMuted___block_invoke_cold_1();
    }

    [*(a1 + 32) _releaseLock];
  }
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke_76(uint64_t a1)
{
  v1 = TUDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __42__TUAudioSystemController_setUplinkMuted___block_invoke_76_cold_1();
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUAudioSystemUplinkMuteStatusChangedNotification" object:0];
}

- (void)setDownlinkMuted:(BOOL)muted
{
  v5 = [MEMORY[0x1E696AD98] numberWithBool:?];
  v6 = v5;
  if (!self->_isDownlinkMutedCached || ([v5 isEqualToNumber:?] & 1) == 0)
  {
    downlinkMutedQueue = self->_downlinkMutedQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__TUAudioSystemController_setDownlinkMuted___block_invoke;
    block[3] = &unk_1E7425B78;
    block[4] = self;
    v9 = v6;
    mutedCopy = muted;
    dispatch_async(downlinkMutedQueue, block);
  }
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog([*(a1 + 32) _acquireLock]);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 40);
    *buf = 138412290;
    v16 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "setting isDownlinkMuted value = %@", buf, 0xCu);
  }

  v4 = +[TUAudioSystemController sharedSystemController];
  v5 = *(a1 + 40);
  v6 = getAVSystemController_DownlinkMuteAttribute();
  v14 = 0;
  v7 = [v4 setAttribute:v5 forKey:v6 error:&v14];
  v8 = v14;

  if (v7)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AD98]) initWithBool:*(a1 + 48)];
    v11 = *(a1 + 32);
    v12 = *(v11 + 56);
    *(v11 + 56) = v10;

    [*(a1 + 32) _releaseLock];
    dispatch_async(MEMORY[0x1E69E96A0], &__block_literal_global_83);
  }

  else
  {
    v13 = TUDefaultLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __44__TUAudioSystemController_setDownlinkMuted___block_invoke_cold_1();
    }

    [*(a1 + 32) _releaseLock];
  }
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke_81(uint64_t a1)
{
  v1 = TUDefaultLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    __44__TUAudioSystemController_setDownlinkMuted___block_invoke_81_cold_1();
  }

  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  [v2 postNotificationName:@"TUAudioSystemDownlinkMuteStatusChangedNotification" object:0];
}

- (NSDictionary)pickedRouteAttribute
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v6 = getAVSystemController_PickedRouteAttribute(v2, v3, v4, v5);
  v7 = [v2 attributeForKey:v6];

  return v7;
}

- (id)_pickableRoutesForTTYWithForceNewRequest:(BOOL)request
{
  requestCopy = request;
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController _pickableRoutesForTTYWithForceNewRequest:];
  }

  [(TUAudioController *)self _acquireLock];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__TUAudioSystemController__pickableRoutesForTTYWithForceNewRequest___block_invoke;
  aBlock[3] = &unk_1E7425BA0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  [(TUAudioController *)self _requestUpdatedValueWithBlock:v6 object:&self->_pickableRoutesForTTY isRequestingPointer:&self->_isRequestingPickableRoutesForTTY forceNewRequest:requestCopy scheduleTimePointer:&self->_lastTTYPickableRoutesScheduleTime notificationString:@"TUAudioSystemAudioPickableRoutesChanged" queue:self->_pickableRoutesQueue];
  v7 = self->_pickableRoutesForTTY;
  [(TUAudioController *)self _releaseLock];
  v8 = v7;

  return v7;
}

id __68__TUAudioSystemController__pickableRoutesForTTYWithForceNewRequest___block_invoke(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = +[TUAudioSystemController sharedSystemController];
  v6 = getAVSystemController_PickableRoutesAttribute(v2, v3, v4, v5);
  v7 = [v2 attributeForKey:v6];
  v8 = [v1 filteredPickableRoutesFromPickableRoutes:v7];

  return v8;
}

- (id)pickableRoutesForActiveCall
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v6 = getAVSystemController_PickableRoutesAttribute(v2, v3, v4, v5);
  v7 = [v2 attributeForKey:v6];

  return v7;
}

- (id)_pickableRoutesForPhoneCallWithForceNewRequest:(BOOL)request
{
  requestCopy = request;
  v28[1] = *MEMORY[0x1E69E9840];
  v5 = +[TUCallCapabilities supportsPrimaryCalling];
  v6 = v5;
  v7 = TUDefaultLog(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TUAudioSystemController _pickableRoutesForPhoneCallWithForceNewRequest:];
    }

    [(TUAudioController *)self _acquireLock];
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__TUAudioSystemController__pickableRoutesForPhoneCallWithForceNewRequest___block_invoke;
    aBlock[3] = &unk_1E7425BA0;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    delegate = [(TUAudioSystemController *)self delegate];
    hasActiveAudioSession = [delegate hasActiveAudioSession];

    if (hasActiveAudioSession)
    {
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v12 = getAVAudioSessionCategoryPhoneCallSymbolLoc_ptr;
      v26 = getAVAudioSessionCategoryPhoneCallSymbolLoc_ptr;
      if (!getAVAudioSessionCategoryPhoneCallSymbolLoc_ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        v19 = 3221225472;
        v20 = __getAVAudioSessionCategoryPhoneCallSymbolLoc_block_invoke;
        v21 = &unk_1E7424CD8;
        v22 = &v23;
        __getAVAudioSessionCategoryPhoneCallSymbolLoc_block_invoke(buf);
        v12 = v24[3];
      }

      _Block_object_dispose(&v23, 8);
      if (!v12)
      {
        [TUAudioSystemController _pickableRoutesForPhoneCallWithForceNewRequest:];
      }

      v13 = *v12;
      if (!v13)
      {
        v14 = 0;
LABEL_15:
        [(TUAudioController *)self _requestUpdatedValueWithBlock:v9 object:&self->_pickableRoutesForPhoneCall isRequestingPointer:&self->_isRequestingPickableRoutesForPhoneCall forceNewRequest:requestCopy scheduleTimePointer:&self->_lastPhoneCallCategoryRoutesScheduleTime notificationString:@"TUAudioSystemAudioPickableRoutesChanged" notificationUserInfo:v14 queue:self->_pickableRoutesQueue];
        v15 = self->_pickableRoutesForPhoneCall;
        [(TUAudioController *)self _releaseLock];

        goto LABEL_16;
      }
    }

    else
    {
      v13 = @"PhoneCall";
    }

    v27 = @"TUAudioSystemCategoryKey";
    v28[0] = v13;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    goto LABEL_15;
  }

  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "_pickableRoutesForPhoneCall is unsupported", buf, 2u);
  }

  v15 = MEMORY[0x1E695E0F0];
LABEL_16:

  return v15;
}

id __74__TUAudioSystemController__pickableRoutesForPhoneCallWithForceNewRequest___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hasActiveAudioSession];

  if (v3)
  {
    v4 = [*(a1 + 32) pickableRoutesForActiveCall];
  }

  else
  {
    v5 = +[TUAudioSystemController sharedSystemController];
    v4 = [v5 pickableRoutesForCategory:@"PhoneCall"];
  }

  v6 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];

  return v6;
}

- (id)currentlyPickedRouteIdForCategory:(id)category andMode:(id)mode
{
  v37 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  [(TUAudioSystemController *)self pickableRoutesForCategory:categoryCopy andMode:?];
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v6 = v24 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v23 objects:v36 count:16];
  if (v7)
  {
    v8 = *v24;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v24 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v23 + 1) + 8 * i);
        v32 = 0;
        v33 = &v32;
        v34 = 0x2020000000;
        v11 = getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr;
        v35 = getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr;
        if (!getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr)
        {
          v27 = MEMORY[0x1E69E9820];
          v28 = 3221225472;
          v29 = __getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_block_invoke;
          v30 = &unk_1E7424CD8;
          v31 = &v32;
          v12 = MediaExperienceLibrary();
          v13 = dlsym(v12, "AVSystemController_RouteDescriptionKey_RouteCurrentlyPicked");
          *(v31[1] + 24) = v13;
          getAVSystemController_RouteDescriptionKey_RouteCurrentlyPickedSymbolLoc_ptr = *(v31[1] + 24);
          v11 = v33[3];
        }

        _Block_object_dispose(&v32, 8);
        if (!v11)
        {
          [TUAudioSystemController currentlyPickedRouteIdForCategory:andMode:];
        }

        v14 = [v10 objectForKeyedSubscript:*v11];
        bOOLValue = [v14 BOOLValue];

        if (bOOLValue)
        {
          v32 = 0;
          v33 = &v32;
          v34 = 0x2020000000;
          v17 = getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr;
          v35 = getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr;
          if (!getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr)
          {
            v27 = MEMORY[0x1E69E9820];
            v28 = 3221225472;
            v29 = __getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_block_invoke;
            v30 = &unk_1E7424CD8;
            v31 = &v32;
            v18 = MediaExperienceLibrary();
            v19 = dlsym(v18, "AVSystemController_RouteDescriptionKey_RouteUID");
            *(v31[1] + 24) = v19;
            getAVSystemController_RouteDescriptionKey_RouteUIDSymbolLoc_ptr = *(v31[1] + 24);
            v17 = v33[3];
          }

          _Block_object_dispose(&v32, 8);
          if (!v17)
          {
            [TUAudioSystemController currentlyPickedRouteIdForCategory:andMode:];
          }

          v16 = [v10 objectForKeyedSubscript:*v17];
          goto LABEL_17;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v23 objects:v36 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_17:

  return v16;
}

+ (id)sourceIdentifierForRouteID:(id)d
{
  dCopy = d;
  if ([dCopy isEqualToString:@"Speaker"])
  {
    v4 = &TUCallSourceIdentifierSpeakerRoute;
  }

  else
  {
    v5 = dCopy;
    if (![dCopy isEqualToString:@"CarAudioOutput"])
    {
      goto LABEL_6;
    }

    v4 = &TUCallSourceIdentifierCarPlay;
  }

  v5 = *v4;

LABEL_6:

  return v5;
}

- (id)_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:(BOOL)request
{
  requestCopy = request;
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:];
  }

  [(TUAudioController *)self _acquireLock];
  if (_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:];
  }

  if (_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___pred__kMXSessionAudioMode_VoiceChat != -1)
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke_3;
  aBlock[3] = &unk_1E7425BA0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = 0;
  if (_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth && _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioMode_VoiceChat)
  {
    v12[0] = @"TUAudioSystemCategoryKey";
    v12[1] = @"TUAudioSystemModeKey";
    v13[0] = _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth;
    v13[1] = _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioMode_VoiceChat;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  [(TUAudioController *)self _requestUpdatedValueWithBlock:v6 object:&self->_pickableRoutesForPlayAndRecordVoice isRequestingPointer:&self->_isRequestingPickableRoutesForPlayAndRecordVoice forceNewRequest:requestCopy scheduleTimePointer:&self->_lastPlayAndRecordVoiceRoutesScheduleTime notificationString:@"TUAudioSystemAudioPickableRoutesChanged" notificationUserInfo:v7 queue:self->_pickableRoutesQueue];
  v8 = self->_pickableRoutesForPlayAndRecordVoice;
  [(TUAudioController *)self _releaseLock];
  v9 = v8;

  return v8;
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioMode_VoiceChat, v1);
}

id __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hasActiveAudioSession];

  if (v3)
  {
    v4 = [*(a1 + 32) pickableRoutesForActiveCall];
  }

  else
  {
    v5 = +[TUAudioSystemController sharedSystemController];
    v4 = [v5 pickableRoutesForCategory:_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth andMode:_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest___kMXSessionAudioMode_VoiceChat];
  }

  v6 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];

  return v6;
}

- (id)_pickableRoutesForPlayAndRecordVideoWithForceNewRequest:(BOOL)request
{
  requestCopy = request;
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:];
  }

  [(TUAudioController *)self _acquireLock];
  if (_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:];
  }

  if (_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___pred__kMXSessionAudioMode_VideoChat != -1)
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3;
  aBlock[3] = &unk_1E7425BA0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = 0;
  if (_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth && _pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioMode_VideoChat)
  {
    v12[0] = @"TUAudioSystemCategoryKey";
    v12[1] = @"TUAudioSystemModeKey";
    v13[0] = _pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth;
    v13[1] = _pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioMode_VideoChat;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  [(TUAudioController *)self _requestUpdatedValueWithBlock:v6 object:&self->_pickableRoutesForPlayAndRecordVideo isRequestingPointer:&self->_isRequestingPickableRoutesForPlayAndRecordVideo forceNewRequest:requestCopy scheduleTimePointer:&self->_lastPlayAndRecordVideoRoutesScheduleTime notificationString:@"TUAudioSystemAudioPickableRoutesChanged" notificationUserInfo:v7 queue:self->_pickableRoutesQueue];
  v8 = self->_pickableRoutesForPlayAndRecordVideo;
  [(TUAudioController *)self _releaseLock];
  v9 = v8;

  return v8;
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordVideoWithForceNewRequest___kMXSessionAudioMode_VideoChat, v1);
}

id __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  if (__sharedController_block_invoke__pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
  {
    __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3_cold_1();
  }

  if (__sharedController_block_invoke__pred__kMXSessionAudioMode_VideoChat != -1)
  {
    __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_3_cold_2();
  }

  v1 = objc_opt_class();
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = [v2 pickableRoutesForCategory:__sharedController_block_invoke__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth andMode:__sharedController_block_invoke__kMXSessionAudioMode_VideoChat];
  v4 = [v1 filteredPickableRoutesFromPickableRoutes:v3];

  return v4;
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&__sharedController_block_invoke__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __83__TUAudioSystemController__pickableRoutesForPlayAndRecordVideoWithForceNewRequest___block_invoke_5()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&__sharedController_block_invoke__kMXSessionAudioMode_VideoChat, v1);
}

- (id)_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:(BOOL)request
{
  requestCopy = request;
  v13[2] = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog(self);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:];
  }

  [(TUAudioController *)self _acquireLock];
  if (_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:];
  }

  if (_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___pred__kMXSessionAudioMode_RemoteVoiceChat != -1)
  {
    [TUAudioSystemController _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:];
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke_3;
  aBlock[3] = &unk_1E7425BA0;
  aBlock[4] = self;
  v6 = _Block_copy(aBlock);
  v7 = 0;
  if (_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth && _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioMode_RemoteVoiceChat)
  {
    v12[0] = @"TUAudioSystemCategoryKey";
    v12[1] = @"TUAudioSystemModeKey";
    v13[0] = _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth;
    v13[1] = _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioMode_RemoteVoiceChat;
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  }

  [(TUAudioController *)self _requestUpdatedValueWithBlock:v6 object:&self->_pickableRoutesForPlayAndRecordRemoteVoice isRequestingPointer:&self->_isRequestingPickableRoutesForPlayAndRecordRemoteVoice forceNewRequest:requestCopy scheduleTimePointer:&self->_lastPlayAndRecordRemoteVoiceRoutesScheduleTime notificationString:@"TUAudioSystemAudioPickableRoutesChanged" notificationUserInfo:v7 queue:self->_pickableRoutesQueue];
  v8 = self->_pickableRoutesForPlayAndRecordRemoteVoice;
  [(TUAudioController *)self _releaseLock];
  v9 = v8;

  return v8;
}

void __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioMode_RemoteVoiceChat, v1);
}

id __89__TUAudioSystemController__pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  v3 = [v2 hasActiveAudioSession];

  if (v3)
  {
    v4 = [*(a1 + 32) pickableRoutesForActiveCall];
  }

  else
  {
    v5 = +[TUAudioSystemController sharedSystemController];
    v4 = [v5 pickableRoutesForCategory:_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth andMode:_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest___kMXSessionAudioMode_RemoteVoiceChat];
  }

  v6 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v4];

  return v6;
}

- (id)_pickableRoutesForVoiceMailWithForceNewRequest:(BOOL)request
{
  requestCopy = request;
  v16[2] = *MEMORY[0x1E69E9840];
  v5 = +[TUCallCapabilities supportsPrimaryCalling];
  v6 = v5;
  v7 = TUDefaultLog(v5);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      [TUAudioSystemController _pickableRoutesForVoiceMailWithForceNewRequest:];
    }

    [(TUAudioController *)self _acquireLock];
    if (_pickableRoutesForVoiceMailWithForceNewRequest___pred__kMXSessionAudioCategory_Voicemail != -1)
    {
      [TUAudioSystemController _pickableRoutesForVoiceMailWithForceNewRequest:];
    }

    if (_pickableRoutesForVoiceMailWithForceNewRequest___pred__kMXSessionAudioMode_VoiceChat != -1)
    {
      [TUAudioSystemController _pickableRoutesForVoiceMailWithForceNewRequest:];
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke_3;
    aBlock[3] = &unk_1E7425BA0;
    aBlock[4] = self;
    v9 = _Block_copy(aBlock);
    v10 = 0;
    if (_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioCategory_Voicemail && _pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioMode_VoiceChat)
    {
      v15[0] = @"TUAudioSystemCategoryKey";
      v15[1] = @"TUAudioSystemModeKey";
      v16[0] = _pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioCategory_Voicemail;
      v16[1] = _pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioMode_VoiceChat;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    }

    [(TUAudioController *)self _requestUpdatedValueWithBlock:v9 object:&self->_pickableRoutesForVoicemail isRequestingPointer:&self->_isRequestingPickableRoutesForVoicemail forceNewRequest:requestCopy scheduleTimePointer:&self->_lastVoicemailRoutesScheduleTime notificationString:@"TUAudioSystemAudioPickableRoutesChanged" notificationUserInfo:v10 queue:self->_pickableRoutesQueue];
    v11 = self->_pickableRoutesForVoicemail;
    [(TUAudioController *)self _releaseLock];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v8, OS_LOG_TYPE_DEFAULT, "_pickableRoutesForVoiceMailWithForceNewRequest is unsupported", buf, 2u);
    }

    v11 = MEMORY[0x1E695E0F0];
  }

  return v11;
}

void __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioCategory_Voicemail, v1);
}

void __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioMode_VoiceChat, v1);
}

id __74__TUAudioSystemController__pickableRoutesForVoiceMailWithForceNewRequest___block_invoke_3(uint64_t a1)
{
  v1 = objc_opt_class();
  v2 = +[TUAudioSystemController sharedSystemController];
  v3 = [v2 pickableRoutesForCategory:_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioCategory_Voicemail andMode:_pickableRoutesForVoiceMailWithForceNewRequest___kMXSessionAudioMode_VoiceChat];
  v4 = [v1 filteredPickableRoutesFromPickableRoutes:v3];

  return v4;
}

- (void)_loadCurrentPickableRoutesWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = completionCopy;
  if (completionCopy)
  {
    pickableRoutesQueue = self->_pickableRoutesQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke;
    v7[3] = &unk_1E7424E20;
    v7[4] = self;
    v8 = completionCopy;
    dispatch_async(pickableRoutesQueue, v7);
  }
}

void __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke(uint64_t a1)
{
  v2 = +[TUAudioSystemController sharedSystemController];
  v6 = getAVSystemController_PickableRoutesAttribute(v2, v3, v4, v5);
  v7 = [v2 attributeForKey:v6];

  [*(a1 + 32) _acquireLock];
  v8 = [objc_opt_class() filteredPickableRoutesFromPickableRoutes:v7];
  v9 = *(a1 + 32);
  v10 = *(v9 + 120);
  *(v9 + 120) = v8;

  [*(a1 + 32) _releaseLock];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke_2;
  block[3] = &unk_1E7424950;
  v13 = v7;
  v11 = v7;
  dispatch_async(MEMORY[0x1E69E96A0], block);
  (*(*(a1 + 40) + 16))();
}

void __68__TUAudioSystemController__loadCurrentPickableRoutesWithCompletion___block_invoke_2(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Fetched current pickable routes %@ and posting TUAudioSystemAudioPickableRoutesChanged", &v5, 0xCu);
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"TUAudioSystemAudioPickableRoutesChanged" object:0];
}

+ (id)filteredPickableRoutesFromPickableRoutes:(id)routes
{
  v32 = *MEMORY[0x1E69E9840];
  routesCopy = routes;
  array = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = routesCopy;
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v31 count:16];
  if (v5)
  {
    v6 = *v19;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v18 + 1) + 8 * i);
        v27 = 0;
        v28 = &v27;
        v29 = 0x2020000000;
        v9 = getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr;
        v30 = getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr;
        if (!getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr)
        {
          v22 = MEMORY[0x1E69E9820];
          v23 = 3221225472;
          v24 = __getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_block_invoke;
          v25 = &unk_1E7424CD8;
          v26 = &v27;
          v10 = MediaExperienceLibrary();
          v11 = dlsym(v10, "AVSystemController_RouteDescriptionKey_AVAudioRouteName");
          *(v26[1] + 24) = v11;
          getAVSystemController_RouteDescriptionKey_AVAudioRouteNameSymbolLoc_ptr = *(v26[1] + 24);
          v9 = v28[3];
        }

        _Block_object_dispose(&v27, 8);
        if (!v9)
        {
          +[TUAudioSystemController filteredPickableRoutesFromPickableRoutes:];
        }

        v12 = *v9;
        if (v12)
        {
          v13 = [v8 objectForKeyedSubscript:v12];
          v14 = [v13 isEqualToString:@"AirTunes"];

          if ((v14 & 1) == 0)
          {
            [array addObject:v8];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v18 objects:v31 count:16];
    }

    while (v5);
  }

  v15 = [array copy];

  return v15;
}

- (id)pickableRoutesForCategory:(id)category andMode:(id)mode
{
  categoryCopy = category;
  modeCopy = mode;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__3;
  v15 = __Block_byref_object_dispose__3;
  v16 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __61__TUAudioSystemController_pickableRoutesForCategory_andMode___block_invoke;
  v10[3] = &unk_1E7425BC8;
  v10[4] = &v11;
  [(TUAudioSystemController *)self _getPickableRoutesForCategory:categoryCopy mode:modeCopy onlyKnownCombinations:1 completion:v10];
  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  return v8;
}

- (void)_getPickableRoutesForCategory:(id)category mode:(id)mode onlyKnownCombinations:(BOOL)combinations completion:(id)completion
{
  v22 = *MEMORY[0x1E69E9840];
  categoryCopy = category;
  modeCopy = mode;
  completionCopy = completion;
  v13 = completionCopy;
  if (!completionCopy)
  {
    goto LABEL_35;
  }

  if (categoryCopy)
  {
    if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioCategory_PlayAndRecord_NoBluetooth != -1)
    {
      [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
    }

    v14 = TUStringsAreEqualOrNil(categoryCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth);
    if (modeCopy && v14)
    {
      if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioMode_VideoChat != -1)
      {
        [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
      }

      if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioMode_VoiceChat != -1)
      {
        [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
      }

      if (_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___pred__kMXSessionAudioMode_RemoteVoiceChat != -1)
      {
        [TUAudioSystemController _getPickableRoutesForCategory:mode:onlyKnownCombinations:completion:];
      }

      if (TUStringsAreEqualOrNil(modeCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VideoChat))
      {
        completionCopy = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVideoWithForceNewRequest:0];
        goto LABEL_23;
      }

      if (TUStringsAreEqualOrNil(modeCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VoiceChat))
      {
        completionCopy = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:0];
        goto LABEL_23;
      }

      completionCopy = TUStringsAreEqualOrNil(modeCopy, _getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_RemoteVoiceChat);
      if (completionCopy)
      {
        completionCopy = [(TUAudioSystemController *)self _pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:0];
LABEL_23:
        bestGuessPickableRoutesForAnyCall = completionCopy;
        if (combinations)
        {
          goto LABEL_29;
        }

LABEL_26:
        if (!bestGuessPickableRoutesForAnyCall)
        {
          [(TUAudioController *)self _acquireLock];
          v16 = self->_currentPickableRoutes;
          [(TUAudioController *)self _releaseLock];
          if (v16)
          {
            (v13)[2](v13, v16);
          }

          else
          {
            [(TUAudioSystemController *)self _loadCurrentPickableRoutesWithCompletion:v13];
          }

          goto LABEL_35;
        }

        goto LABEL_29;
      }
    }

    else
    {
      if ([objc_opt_class() isPhoneCallAudioCategory:categoryCopy])
      {
        completionCopy = [(TUAudioSystemController *)self _pickableRoutesForPhoneCallWithForceNewRequest:0];
        goto LABEL_23;
      }

      completionCopy = [categoryCopy isEqualToString:@"Voicemail"];
      if (completionCopy)
      {
        completionCopy = [(TUAudioSystemController *)self _pickableRoutesForVoiceMailWithForceNewRequest:0];
        goto LABEL_23;
      }
    }
  }

  bestGuessPickableRoutesForAnyCall = 0;
  if (!combinations)
  {
    goto LABEL_26;
  }

LABEL_29:
  if (!bestGuessPickableRoutesForAnyCall)
  {
    v17 = TUDefaultLog(completionCopy);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412546;
      v19 = categoryCopy;
      v20 = 2112;
      v21 = modeCopy;
      _os_log_impl(&dword_1956FD000, v17, OS_LOG_TYPE_DEFAULT, "Unknown category (%@) and mode (%@) combination, using default pickable routes", &v18, 0x16u);
    }

    bestGuessPickableRoutesForAnyCall = [(TUAudioSystemController *)self bestGuessPickableRoutesForAnyCall];
  }

  (v13)[2](v13, bestGuessPickableRoutesForAnyCall);

LABEL_35:
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioCategory_PlayAndRecord_NoBluetooth, v1);
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke_2()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VideoChat, v1);
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke_3()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_VoiceChat, v1);
}

void __95__TUAudioSystemController__getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___block_invoke_4()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&_getPickableRoutesForCategory_mode_onlyKnownCombinations_completion___kMXSessionAudioMode_RemoteVoiceChat, v1);
}

- (BOOL)pickRoute:(id)route error:(id *)error
{
  routeCopy = route;
  v6 = +[TUAudioSystemController sharedSystemController];
  route = [routeCopy route];

  v12 = getAVSystemController_PickedRouteAttribute(v8, v9, v10, v11);
  LOBYTE(error) = [v6 setAttribute:route forKey:v12 error:error];

  return error;
}

- (void)switchBluetoothAudioFormats
{
  v2 = TUDefaultLog(self);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "Notifying AVSystemController to override to partner route", v4, 2u);
  }

  v3 = +[TUAudioSystemController sharedSystemController];
  [v3 overrideToPartnerRoute];
}

- (id)pickableRouteWithUniqueIdentifier:(id)identifier
{
  v28 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = TUDefaultLog(identifierCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = identifierCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "uniqueIdentifier: %@", buf, 0xCu);
  }

  bestGuessPickableRoutesForAnyCall = [(TUAudioSystemController *)self bestGuessPickableRoutesForAnyCall];
  v7 = TUDefaultLog(bestGuessPickableRoutesForAnyCall);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = bestGuessPickableRoutesForAnyCall;
    _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "using pickable routes %@", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = bestGuessPickableRoutesForAnyCall;
  v9 = [(TUAudioRoute *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v22;
LABEL_7:
    v12 = 0;
    while (1)
    {
      if (*v22 != v11)
      {
        objc_enumerationMutation(v8);
      }

      v13 = *(*(&v21 + 1) + 8 * v12);
      v14 = [TUAudioRoute alloc];
      v15 = [(TUAudioRoute *)v14 initWithDictionary:v13, v21];
      uniqueIdentifier = [(TURoute *)v15 uniqueIdentifier];
      v17 = [uniqueIdentifier isEqualToString:identifierCopy];

      if (v17)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [(TUAudioRoute *)v8 countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v10)
        {
          goto LABEL_7;
        }

        v15 = 0;
        break;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  v19 = TUDefaultLog(v18);
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v27 = v15;
    _os_log_impl(&dword_1956FD000, v19, OS_LOG_TYPE_DEFAULT, "returning route %@", buf, 0xCu);
  }

  return v15;
}

- (BOOL)shouldSuppressCallUsingRoute:(id)route
{
  v10 = *MEMORY[0x1E69E9840];
  routeCopy = route;
  v4 = TUDefaultLog(routeCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = routeCopy;
    _os_log_impl(&dword_1956FD000, v4, OS_LOG_TYPE_DEFAULT, "route: %@", &v8, 0xCu);
  }

  identifiersOfOtherConnectedDevices = [routeCopy identifiersOfOtherConnectedDevices];
  v6 = [identifiersOfOtherConnectedDevices count] != 0;

  return v6;
}

- (BOOL)otherSessionsRequestNoRingtoneInterruption
{
  v20 = *MEMORY[0x1E69E9840];
  v2 = +[TUAudioSystemController sharedSystemController];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v3 = getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr;
  v14 = getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr;
  if (!getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr)
  {
    *buf = MEMORY[0x1E69E9820];
    v16 = 3221225472;
    v17 = __getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_block_invoke;
    v18 = &unk_1E7424CD8;
    v19 = &v11;
    v4 = MediaExperienceLibrary();
    v5 = dlsym(v4, "AVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttribute");
    *(v19[1] + 24) = v5;
    getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttributeSymbolLoc_ptr = *(v19[1] + 24);
    v3 = v12[3];
  }

  _Block_object_dispose(&v11, 8);
  if (!v3)
  {
    [TUAudioSystemController otherSessionsRequestNoRingtoneInterruption];
  }

  v6 = [v2 attributeForKey:{*v3, v11}];
  bOOLValue = [v6 BOOLValue];

  v9 = TUDefaultLog(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = bOOLValue;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Other sessions request no ringtone interruption: %d", buf, 8u);
  }

  return bOOLValue;
}

+ (BOOL)isPhoneCallAudioCategory:(id)category
{
  categoryCopy = category;
  if (isPhoneCallAudioCategory___pred__AVAudioSessionCategoryPhoneCall != -1)
  {
    +[TUAudioSystemController isPhoneCallAudioCategory:];
  }

  if ([categoryCopy isEqualToString:@"PhoneCall"])
  {
    v4 = 1;
  }

  else if (isPhoneCallAudioCategory___AVAudioSessionCategoryPhoneCall)
  {
    v4 = [categoryCopy isEqualToString:?];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __52__TUAudioSystemController_isPhoneCallAudioCategory___block_invoke()
{
  v0 = CUTWeakLinkSymbol();
  if (v0)
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  objc_storeStrong(&isPhoneCallAudioCategory___AVAudioSessionCategoryPhoneCall, v1);
}

- (void)triggerEndInterruptionForAudioSessionID:.cold.3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_PostInterruptionEndedNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)isUplinkMuted
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isTTY
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)setUplinkMuted:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__TUAudioSystemController_setUplinkMuted___block_invoke_76_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)isDownlinkMuted
{
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
}

void __44__TUAudioSystemController_setDownlinkMuted___block_invoke_81_cold_1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForTTYWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPhoneCallWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPhoneCallWithForceNewRequest:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"AVAudioSessionCategory getAVAudioSessionCategoryPhoneCall(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:55 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)currentlyPickedRouteIdForCategory:andMode:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteUID(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:42 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)currentlyPickedRouteIdForCategory:andMode:.cold.2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_RouteCurrentlyPicked(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:41 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)_pickableRoutesForPlayAndRecordVoiceWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPlayAndRecordVideoWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForPlayAndRecordRemoteVoiceWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_pickableRoutesForVoiceMailWithForceNewRequest:.cold.1()
{
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0_3();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 2u);
}

+ (void)filteredPickableRoutesFromPickableRoutes:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_RouteDescriptionKey_AVAudioRouteName(void)"];
  [v0 handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:40 description:{@"%s", dlerror()}];

  __break(1u);
}

- (void)otherSessionsRequestNoRingtoneInterruption
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getAVSystemController_SomeSessionIsActiveThatPrefersNoInterruptionsByRingtonesAndAlertsAttribute(void)"];
  [currentHandler handleFailureInFunction:v1 file:@"TUAudioSystemController.m" lineNumber:43 description:{@"%s", dlerror()}];

  __break(1u);
}

@end