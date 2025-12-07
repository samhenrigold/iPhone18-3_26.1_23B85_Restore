@interface HFCameraPlaybackEngine
+ (id)findClipPositionForDate:(id)date inEvents:(id)events options:(unint64_t)options;
+ (unint64_t)hf_indexOfClipForDate:(id)date inEvents:(id)events enumerationOptions:(unint64_t)options searchOptions:(unint64_t)searchOptions;
- (AVPlayer)player;
- (BOOL)hasRecordingEvents;
- (BOOL)isCameraPortraitMode;
- (BOOL)isDeallocating;
- (BOOL)isFirstEventOfTheDay:(id)day;
- (BOOL)isLiveStreamPlaying;
- (BOOL)isLiveStreaming;
- (BOOL)shouldBatchRecordingEvents;
- (BOOL)shouldDisplayVolumeControls;
- (HFCameraPlaybackEngine)initWithConfiguration:(id)configuration;
- (HFCameraPlaybackPosition)playbackPosition;
- (HMCameraClip)clipWithLongestDuration;
- (HMCameraClip)currentClip;
- (HMCameraClipManager)clipManager;
- (HMCameraProfile)cameraProfile;
- (NSArray)cameraClips;
- (NSArray)cameraEvents;
- (NSArray)observers;
- (NSDictionary)batchedRecordingEventsByUUID;
- (NSUUID)notificationCenterClipUUID;
- (id)_derivedPlaybackError;
- (id)_dispatchToObserversDidUpdateEventCache:(id)cache;
- (id)daysWithClips;
- (id)engineModeDescription;
- (id)fetchCameraEvents;
- (id)fetchClipForSignificantEventWithUUID:(id)d;
- (id)fetchClipWithUUID:(id)d;
- (id)findClipPositionForDate:(id)date;
- (id)findClipPositionForDate:(id)date options:(unint64_t)options;
- (id)firstOfTheDayClipForDate:(id)date;
- (id)shortDebugDescription;
- (id)timeControlStatusDescription;
- (id)timelineStateDescription;
- (unint64_t)_derivedTimeControlStatus;
- (unint64_t)engineMode;
- (void)_recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events;
- (void)_resetBatchedRecordingEventsTimer;
- (void)_setMicrophoneEnabled:(BOOL)enabled notifyObservers:(BOOL)observers;
- (void)_setPlayerVolume:(float)volume notifyObservers:(BOOL)observers;
- (void)_setStreamAudioEnabled:(BOOL)enabled notifyObservers:(BOOL)observers;
- (void)_setupClipPlayerWithClipManager:(id)manager;
- (void)_setupLiveStreamController:(id)controller;
- (void)_setupTimeObservationForObserver:(id)observer;
- (void)_updatePlaybackStateNotifyingObservers:(BOOL)observers rebuildClipPlayerIfNeeded:(BOOL)needed;
- (void)_updateStateForRequestedPlaybackPosition:(id)position notifyObservers:(BOOL)observers;
- (void)addObserver:(id)observer withOptions:(id)options;
- (void)beginScrubbing;
- (void)clipPlayer:(id)player didUpdateError:(id)error isFatal:(BOOL)fatal;
- (void)clipPlayer:(id)player didUpdateMuted:(BOOL)muted;
- (void)clipPlayer:(id)player didUpdateTimeControlStatus:(int64_t)status;
- (void)clipPlayerDidPlayToEndTime:(id)time;
- (void)dealloc;
- (void)endScrubbing;
- (void)modifyPlaybackFromSender:(id)sender usingBlock:(id)block;
- (void)recordingEventManager:(id)manager didRemoveRecordingEventsWithUUIDs:(id)ds;
- (void)recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events;
- (void)removeObserver:(id)observer;
- (void)setBatchedRecordingEvents:(id)events;
- (void)setCameraProfile:(id)profile;
- (void)setClipManager:(id)manager;
- (void)setIsDeallocating:(BOOL)deallocating;
- (void)setLiveCameraSource:(id)source;
- (void)setNotificationCenterClipUUID:(id)d;
- (void)setPlaybackPosition:(id)position;
- (void)setPrefersAudioEnabled:(BOOL)enabled;
- (void)setScrubbing:(BOOL)scrubbing;
- (void)setShouldBatchRecordingEvents:(BOOL)events;
- (void)setShouldBypassHighQualityScrubbing:(BOOL)scrubbing;
- (void)setShouldBypassVideoFetchRequest:(BOOL)request;
- (void)setTimelineState:(unint64_t)state;
- (void)setWantsToPlay:(BOOL)play;
- (void)startPlaybackAtDate:(id)date withClip:(id)clip;
- (void)startPlaybackForCurrentClip;
- (void)streamControllerStateDidUpdate:(id)update;
- (void)timerDidFire:(id)fire;
- (void)updateConfiguration:(id)configuration;
- (void)updateLiveStreamForCameraProfile:(id)profile;
- (void)updatePlaybackPositionToDate:(id)date usingClip:(id)clip;
@end

@implementation HFCameraPlaybackEngine

- (HFCameraPlaybackEngine)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v26.receiver = self;
  v26.super_class = HFCameraPlaybackEngine;
  v5 = [(HFCameraPlaybackEngine *)&v26 init];
  if (v5)
  {
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("com.apple.homeFramework.cameraPlaybackEngine.workQueue", v6);
    workQueue = v5->_workQueue;
    v5->_workQueue = v7;

    v9 = objc_alloc(MEMORY[0x277D2C8E8]);
    v10 = HFLogForCategory(0x17uLL);
    v11 = [v9 initWithLog:v10 logType:1 argumentFormatter:0];

    v12 = [MEMORY[0x277D2C8E0] dispatcherWithProtocol:&unk_2825BB148 logSettings:v11];
    observerDispatcher = v5->_observerDispatcher;
    v5->_observerDispatcher = v12;

    weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    observerStates = v5->_observerStates;
    v5->_observerStates = weakToStrongObjectsMapTable;

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v5->_prefersAudioEnabled = [standardUserDefaults BOOLForKey:@"HFCameraPlaybackPrefersAudioEnabled"];

    [(HFCameraPlaybackEngine *)v5 setStreamAudioEnabled:[(HFCameraPlaybackEngine *)v5 prefersAudioEnabled]];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 floatForKey:@"HFCameraPlaybackStreamAudioVolume"];
    v19 = v18;

    standardUserDefaults3 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v21 = [standardUserDefaults3 objectForKey:@"HFCameraPlaybackStreamAudioVolume"];

    LODWORD(v22) = 0.5;
    if (v21)
    {
      *&v22 = v19;
    }

    [(HFCameraPlaybackEngine *)v5 setStreamAudioVolume:v22];
    v23 = objc_opt_new();
    batchedRecordingEventsByUUID = v5->_batchedRecordingEventsByUUID;
    v5->_batchedRecordingEventsByUUID = v23;

    if (configurationCopy)
    {
      [(HFCameraPlaybackEngine *)v5 updateConfiguration:configurationCopy];
    }
  }

  return v5;
}

- (void)updateLiveStreamForCameraProfile:(id)profile
{
  v18 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];

  v6 = HFLogForCategory(0x17uLL);
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (cameraProfile == profileCopy)
  {
    if (v7)
    {
      cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v14 = 138412290;
      v15 = cameraProfile2;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Bypassing live stream update for the current profile:%@", &v14, 0xCu);
    }
  }

  else
  {
    if (v7)
    {
      cameraProfile3 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v14 = 138412546;
      v15 = cameraProfile3;
      v16 = 2112;
      v17 = profileCopy;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Updating from camera profile:%@ to profile:%@", &v14, 0x16u);
    }

    [(HFCameraPlaybackEngine *)self setCameraProfile:profileCopy];
    overrideLiveStreamController = [(HFCameraPlaybackEngine *)self overrideLiveStreamController];
    v10 = overrideLiveStreamController;
    if (overrideLiveStreamController)
    {
      v6 = overrideLiveStreamController;
    }

    else
    {
      v12 = [HFCameraLiveStreamController alloc];
      v13 = objc_msgSend_home(self);
      v6 = [(HFCameraLiveStreamController *)v12 initWithHome:v13 cameraProfile:profileCopy];
    }

    [(HFCameraPlaybackEngine *)self _setupLiveStreamController:v6];
  }
}

- (void)setCameraProfile:(id)profile
{
  profileCopy = profile;
  os_unfair_lock_lock_with_options();
  cameraProfile = self->_cameraProfile;
  self->_cameraProfile = profileCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (HMCameraProfile)cameraProfile
{
  os_unfair_lock_lock_with_options();
  v3 = self->_cameraProfile;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setShouldBatchRecordingEvents:(BOOL)events
{
  os_unfair_lock_lock_with_options();
  self->_shouldBatchRecordingEvents = events;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)shouldBatchRecordingEvents
{
  os_unfair_lock_lock_with_options();
  shouldBatchRecordingEvents = self->_shouldBatchRecordingEvents;
  os_unfair_lock_unlock(&self->_lock);
  return shouldBatchRecordingEvents;
}

- (void)setNotificationCenterClipUUID:(id)d
{
  dCopy = d;
  os_unfair_lock_lock_with_options();
  notificationCenterClipUUID = self->_notificationCenterClipUUID;
  self->_notificationCenterClipUUID = dCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSUUID)notificationCenterClipUUID
{
  os_unfair_lock_lock_with_options();
  v3 = self->_notificationCenterClipUUID;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setIsDeallocating:(BOOL)deallocating
{
  os_unfair_lock_lock_with_options();
  self->_isDeallocating = deallocating;

  os_unfair_lock_unlock(&self->_lock);
}

- (BOOL)isDeallocating
{
  os_unfair_lock_lock_with_options();
  isDeallocating = self->_isDeallocating;
  os_unfair_lock_unlock(&self->_lock);
  return isDeallocating;
}

- (void)setBatchedRecordingEvents:(id)events
{
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  batchedRecordingEventsByUUID = self->_batchedRecordingEventsByUUID;
  self->_batchedRecordingEventsByUUID = eventsCopy;
}

- (NSDictionary)batchedRecordingEventsByUUID
{
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  batchedRecordingEventsByUUID = self->_batchedRecordingEventsByUUID;

  return batchedRecordingEventsByUUID;
}

- (void)_setupLiveStreamController:(id)controller
{
  controllerCopy = controller;
  liveStreamController = self->_liveStreamController;
  if (liveStreamController != controllerCopy)
  {
    [(HFCameraLiveStreamControlling *)self->_liveStreamController setDelegate:0];
    liveStreamController = self->_liveStreamController;
  }

  self->_liveStreamController = controllerCopy;
  v8 = controllerCopy;

  [(HFCameraLiveStreamControlling *)self->_liveStreamController setDelegate:self];
  liveCameraSource = [(HFCameraLiveStreamControlling *)v8 liveCameraSource];
  liveCameraSource = self->_liveCameraSource;
  self->_liveCameraSource = liveCameraSource;
}

- (void)_setupClipPlayerWithClipManager:(id)manager
{
  v47 = *MEMORY[0x277D85DE8];
  if (manager)
  {
    eventCache = [(HFCameraPlaybackEngine *)self eventCache];
    clips = [eventCache clips];

    overrideClipPlayer = [(HFCameraPlaybackEngine *)self overrideClipPlayer];
    v7 = overrideClipPlayer;
    if (overrideClipPlayer)
    {
      v8 = overrideClipPlayer;
      clipPlayer = self->_clipPlayer;
      self->_clipPlayer = v8;
    }

    else
    {
      v15 = [HFCameraClipPlayer alloc];
      clipPlayer = [(HFCameraPlaybackEngine *)self cameraProfile];
      v16 = [(HFCameraClipPlayer *)v15 initWithCameraProfile:clipPlayer clips:clips];
      v17 = self->_clipPlayer;
      self->_clipPlayer = v16;
    }

    [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:self];
    clipScrubber = [(HFCameraPlaybackEngine *)self clipScrubber];
    [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:clipScrubber];

    playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:playbackPosition notifyObservers:0];

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    observerStates = [(HFCameraPlaybackEngine *)self observerStates];
    keyEnumerator = [observerStates keyEnumerator];

    v22 = [keyEnumerator countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v42;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v42 != v24)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:*(*(&v41 + 1) + 8 * i)];
        }

        v23 = [keyEnumerator countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v23);
    }

LABEL_27:

    return;
  }

  if (+[HFUtilities isPressDemoModeEnabled])
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    clips = [HFDemoModeAccessoryManager clipsForCameraProfile:cameraProfile];

    overrideClipPlayer2 = [(HFCameraPlaybackEngine *)self overrideClipPlayer];
    v12 = overrideClipPlayer2;
    if (overrideClipPlayer2)
    {
      v13 = overrideClipPlayer2;
      cameraProfile2 = self->_clipPlayer;
      self->_clipPlayer = v13;
    }

    else
    {
      v27 = [HFCameraClipPlayer alloc];
      cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
      v28 = [(HFCameraClipPlayer *)v27 initWithCameraProfile:cameraProfile2 clips:clips];
      v29 = self->_clipPlayer;
      self->_clipPlayer = v28;
    }

    [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:self];
    clipScrubber2 = [(HFCameraPlaybackEngine *)self clipScrubber];
    [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:clipScrubber2];

    playbackPosition2 = [(HFCameraPlaybackEngine *)self playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:playbackPosition2 notifyObservers:0];

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    observerStates2 = [(HFCameraPlaybackEngine *)self observerStates];
    keyEnumerator = [observerStates2 keyEnumerator];

    v33 = [keyEnumerator countByEnumeratingWithState:&v37 objects:v45 count:16];
    if (v33)
    {
      v34 = v33;
      v35 = *v38;
      do
      {
        for (j = 0; j != v34; ++j)
        {
          if (*v38 != v35)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:*(*(&v37 + 1) + 8 * j)];
        }

        v34 = [keyEnumerator countByEnumeratingWithState:&v37 objects:v45 count:16];
      }

      while (v34);
    }

    goto LABEL_27;
  }

  [(HFCameraClipPlaying *)self->_clipPlayer setDelegate:0];
  [(HFCameraClipPlaying *)self->_clipPlayer setScrubber:0];
  v26 = self->_clipPlayer;
  self->_clipPlayer = 0;
}

- (void)_setupTimeObservationForObserver:(id)observer
{
  observerCopy = observer;
  observerStates = [(HFCameraPlaybackEngine *)self observerStates];
  v6 = [observerStates objectForKey:observerCopy];

  options = [v6 options];
  periodicTimeUpdateInterval = [options periodicTimeUpdateInterval];

  if (periodicTimeUpdateInterval)
  {
    objc_initWeak(&location, self);
    objc_initWeak(&from, observerCopy);
    options2 = [v6 options];
    periodicTimeUpdateInterval2 = [options2 periodicTimeUpdateInterval];
    [periodicTimeUpdateInterval2 doubleValue];
    v12 = v11;

    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __59__HFCameraPlaybackEngine__setupTimeObservationForObserver___block_invoke;
    v18 = &unk_277DF5690;
    objc_copyWeak(&v19, &location);
    objc_copyWeak(&v20, &from);
    v14 = [clipPlayer addPeriodicTimeObserverForInterval:&v15 usingBlock:v12];
    [v6 setTimeObservationToken:{v14, v15, v16, v17, v18}];

    objc_destroyWeak(&v20);
    objc_destroyWeak(&v19);
    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __59__HFCameraPlaybackEngine__setupTimeObservationForObserver___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained && v2 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v3 = [WeakRetained playbackPosition];
    [v2 playbackEngine:WeakRetained didUpdatePlaybackPosition:v3];
  }
}

- (id)fetchCameraEvents
{
  v34 = *MEMORY[0x277D85DE8];
  if (+[HFUtilities isPressDemoModeEnabled])
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    clipManager = [cameraProfile clipManager];
    [(HFCameraPlaybackEngine *)self setClipManager:clipManager];

    cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
    v6 = [HFDemoModeAccessoryManager clipsForCameraProfile:cameraProfile2];
    v7 = v6;
    v8 = MEMORY[0x277CBEBF8];
    if (v6)
    {
      v8 = v6;
    }

    v9 = v8;

    objc_initWeak(location, self);
    eventCache = [(HFCameraPlaybackEngine *)self eventCache];
    v11 = [eventCache updateWithEvents:v9];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke;
    v29[3] = &unk_277E00880;
    objc_copyWeak(&v30, location);
    v12 = [v11 flatMap:v29];
    objc_destroyWeak(&v30);

    objc_destroyWeak(location);
  }

  else
  {
    v13 = MEMORY[0x277CBEAA8];
    v14 = [MEMORY[0x277CBEAA8] now];
    v9 = [v13 dateWithTimeInterval:v14 sinceDate:-950400.0];

    distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
    v16 = [objc_alloc(MEMORY[0x277CCA970]) initWithStartDate:v9 endDate:distantFuture];
    v17 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v16;
      v32 = 2048;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_DEFAULT, "Loading clips with date interval:%@; limit:%lu", location, 0x16u);
    }

    v18 = HFLogForCategory(0xFuLL);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *location = 138412546;
      *&location[4] = v16;
      v32 = 2048;
      v33 = 0x7FFFFFFFFFFFFFFFLL;
      _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Requesting playback engine clips with date interval:%@; limit:%lu", location, 0x16u);
    }

    objc_initWeak(location, self);
    v19 = MEMORY[0x277D2C900];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_82;
    v25[3] = &unk_277E008A8;
    objc_copyWeak(v27, location);
    v20 = v16;
    v26 = v20;
    v27[1] = 0x7FFFFFFFFFFFFFFFLL;
    v28 = 0;
    v21 = [v19 futureWithCompletionHandlerAdapterBlock:v25];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2_84;
    v23[3] = &unk_277DF52E0;
    objc_copyWeak(&v24, location);
    v12 = [v21 flatMap:v23];
    objc_destroyWeak(&v24);

    objc_destroyWeak(v27);
    objc_destroyWeak(location);
  }

  return v12;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2;
  v8[3] = &unk_277E00858;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  return v6;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventCache];
  v4 = [v3 events];
  v5 = [v1 futureWithResult:v4];

  return v5;
}

void __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_82(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 recordingEventManager];
  [v5 fetchEventsWithDateInterval:*(a1 + 32) quality:0 limit:*(a1 + 48) shouldOrderAscending:*(a1 + 56) completion:v3];
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_2_84(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventCache];
  v6 = [v5 updateWithEvents:v3];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_3;
  v9[3] = &unk_277E00880;
  objc_copyWeak(&v10, (a1 + 32));
  v7 = [v6 flatMap:v9];
  objc_destroyWeak(&v10);

  return v7;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_4;
  v8[3] = &unk_277E00858;
  objc_copyWeak(&v9, (a1 + 32));
  v6 = [v5 flatMap:v8];
  objc_destroyWeak(&v9);

  return v6;
}

id __43__HFCameraPlaybackEngine_fetchCameraEvents__block_invoke_4(uint64_t a1)
{
  v1 = MEMORY[0x277D2C900];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained eventCache];
  v4 = [v3 events];
  v5 = [v1 futureWithResult:v4];

  return v5;
}

- (id)fetchClipWithUUID:(id)d
{
  v25 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = dCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Loading engine for clip UUID:%@.", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v6 = MEMORY[0x277D2C900];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke;
  v20[3] = &unk_277E008D0;
  objc_copyWeak(&v22, buf);
  v7 = dCopy;
  v21 = v7;
  v8 = [v6 futureWithCompletionHandlerAdapterBlock:v20];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_2;
  v18[3] = &unk_277E00920;
  objc_copyWeak(&v19, buf);
  v9 = [v8 flatMap:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_5;
  v15[3] = &unk_277DF8400;
  objc_copyWeak(&v17, buf);
  v10 = v7;
  v16 = v10;
  v11 = [v9 addFailureBlock:v15];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v13 = [v11 reschedule:mainThreadScheduler];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);

  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  return v13;
}

void __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 clipManager];
  [v5 fetchClipWithUUID:*(a1 + 32) completion:v3];
}

id __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained eventCache];
  v14[0] = v3;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];
  v7 = [v5 updateWithEvents:v6];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_3;
  v11[3] = &unk_277E008F8;
  objc_copyWeak(&v13, (a1 + 32));
  v8 = v3;
  v12 = v8;
  v9 = [v7 flatMap:v11];

  objc_destroyWeak(&v13);

  return v9;
}

id __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_4;
  v8[3] = &unk_277DF8340;
  v9 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

void __44__HFCameraPlaybackEngine_fetchClipWithUUID___block_invoke_5(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained cameraProfile];
    v7 = [v6 clipManager];
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "Clip manager:%@ failed to fetch clip %@ with error:%@", &v9, 0x20u);
  }
}

- (id)fetchClipForSignificantEventWithUUID:(id)d
{
  v33 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = HFLogForCategory(0x16uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    *buf = 138412546;
    v30 = dCopy;
    v31 = 2112;
    v32 = cameraProfile;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(NC) Request clip for uuid:%@ using profile:%@.", buf, 0x16u);
  }

  objc_initWeak(buf, self);
  v7 = MEMORY[0x277D2C900];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke;
  v26[3] = &unk_277E008D0;
  objc_copyWeak(&v28, buf);
  v8 = dCopy;
  v27 = v8;
  v9 = [v7 futureWithCompletionHandlerAdapterBlock:v26];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_2;
  v23[3] = &unk_277E00948;
  objc_copyWeak(&v25, buf);
  v10 = v8;
  v24 = v10;
  v11 = [v9 flatMap:v23];
  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_3;
  v20 = &unk_277DF8400;
  objc_copyWeak(&v22, buf);
  v12 = v10;
  v21 = v12;
  v13 = [v11 addFailureBlock:&v17];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v15 = [v13 reschedule:mainThreadScheduler];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&v25);

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  return v15;
}

void __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained cameraProfile];
  v5 = [v4 clipManager];
  [v5 fetchClipForSignificantEventWithUUID:*(a1 + 32) completion:v3];
}

id __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_2(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [WeakRetained cameraProfile];
    v7 = [v6 clipManager];
    v8 = *(a1 + 32);
    *buf = 138412802;
    v22 = v7;
    v23 = 2112;
    v24 = v3;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "(NC) Clip manager:%@ found clip:%@ for UUID:%@", buf, 0x20u);
  }

  if ([v3 isComplete])
  {
    v9 = [WeakRetained cameraProfile];
    v10 = [v9 recordingEventManager];
    [v10 removeObserver:WeakRetained];
  }

  v11 = [WeakRetained eventCache];
  v20 = v3;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  v13 = [v11 updateWithEvents:v12];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_90;
  v17[3] = &unk_277E008F8;
  objc_copyWeak(&v19, (a1 + 40));
  v14 = v3;
  v18 = v14;
  v15 = [v13 flatMap:v17];

  objc_destroyWeak(&v19);

  return v15;
}

id __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_90(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_2_91;
  v8[3] = &unk_277DF8340;
  v9 = *(a1 + 32);
  v6 = [v5 flatMap:v8];

  return v6;
}

void __63__HFCameraPlaybackEngine_fetchClipForSignificantEventWithUUID___block_invoke_3(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v6 = [WeakRetained cameraProfile];
    v7 = [v6 clipManager];
    v8 = *(a1 + 32);
    v9 = 138412802;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_error_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_ERROR, "(NC) Clip manager:%@ failed to fetch clip for uuid:%@ with error:%@", &v9, 0x20u);
  }
}

- (id)_dispatchToObserversDidUpdateEventCache:(id)cache
{
  cacheCopy = cache;
  objc_initWeak(&location, self);
  v5 = MEMORY[0x277D2C900];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HFCameraPlaybackEngine__dispatchToObserversDidUpdateEventCache___block_invoke;
  v10[3] = &unk_277DF8428;
  objc_copyWeak(&v12, &location);
  v6 = cacheCopy;
  v11 = v6;
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v8 = [v5 futureWithBlock:v10 scheduler:mainThreadScheduler];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v8;
}

void __66__HFCameraPlaybackEngine__dispatchToObserversDidUpdateEventCache___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained observerDispatcher];
  v5 = [v4 proxy];
  [v5 playbackEngine:WeakRetained didUpdateEventCache:*(a1 + 32)];

  v6 = [WeakRetained cameraProfile];
  v7 = [v6 clipManager];
  [WeakRetained setClipManager:v7];

  [v3 finishWithNoResult];
}

- (void)setClipManager:(id)manager
{
  v16 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);
  v6 = [WeakRetained isEqual:managerCopy];

  if ((v6 & 1) == 0)
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = objc_loadWeakRetained(&self->_clipManager);
      v12 = 138412546;
      v13 = v8;
      v14 = 2112;
      v15 = managerCopy;
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Transitioning from clip manager:%@ to clip manager:%@.", &v12, 0x16u);
    }

    objc_storeWeak(&self->_clipManager, managerCopy);
    [(HFCameraPlaybackEngine *)self _setupClipPlayerWithClipManager:managerCopy];
    observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
    proxy = [observerDispatcher proxy];
    player = [(HFCameraPlaybackEngine *)self player];
    [proxy playbackEngine:self didUpdateClipPlayer:player];
  }
}

- (void)updateConfiguration:(id)configuration
{
  v55 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (!configurationCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:529 description:{@"Invalid parameter not satisfying: %@", @"configuration != nil"}];
  }

  [configurationCopy assertConfigurationIsValid];
  if (+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];

    if (!workQueue)
    {
      v15 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v54 = "[HFCameraPlaybackEngine updateConfiguration:]";
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "%s workQueue is nil! Skipping update", buf, 0xCu);
      }

      goto LABEL_23;
    }
  }

  cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];

  if (cameraProfile)
  {
    cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager = [cameraProfile2 recordingEventManager];
    [recordingEventManager removeObserver:self];

    [(HFCameraPlaybackEngine *)self _resetBatchedRecordingEventsTimer];
    [(HFCameraPlaybackEngine *)self setShouldBatchRecordingEvents:0];
    if (+[HFUtilities isInternalTest])
    {
      v10 = objc_opt_new();
      [(HFCameraPlaybackEngine *)self setBatchedRecordingEvents:v10];
    }

    else
    {
      workQueue2 = [(HFCameraPlaybackEngine *)self workQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke;
      block[3] = &unk_277DF3D38;
      block[4] = self;
      dispatch_async(workQueue2, block);
    }
  }

  v12 = objc_msgSend_home(configurationCopy);
  [(HFCameraPlaybackEngine *)self setHome:v12];

  cameraProfile3 = [configurationCopy cameraProfile];
  [(HFCameraPlaybackEngine *)self setCameraProfile:cameraProfile3];

  if (!+[HFUtilities isInternalTest])
  {
LABEL_15:
    notificationClipUUID = [configurationCopy notificationClipUUID];
    [(HFCameraPlaybackEngine *)self setNotificationCenterClipUUID:notificationClipUUID];

    if (!+[HFUtilities isPressDemoModeEnabled])
    {
      overrideLiveStreamController = [(HFCameraPlaybackEngine *)self overrideLiveStreamController];
      v20 = overrideLiveStreamController;
      if (overrideLiveStreamController)
      {
        v21 = overrideLiveStreamController;
      }

      else
      {
        v22 = [HFCameraLiveStreamController alloc];
        v23 = objc_msgSend_home(self);
        cameraProfile4 = [(HFCameraPlaybackEngine *)self cameraProfile];
        v21 = [(HFCameraLiveStreamController *)v22 initWithHome:v23 cameraProfile:cameraProfile4];
      }

      [(HFCameraPlaybackEngine *)self _setupLiveStreamController:v21];
    }

    v25 = [HFCameraVideoDownloader alloc];
    cameraProfile5 = [configurationCopy cameraProfile];
    v15 = [(HFCameraVideoDownloader *)v25 initWithCameraProfile:cameraProfile5];

    v27 = +[HFCameraTimelapseVideoProvider sharedProvider];
    [v27 setTimelapseVideoDownloader:v15];

    cameraProfile6 = [configurationCopy cameraProfile];
    v29 = +[HFCameraImageManager sharedManager];
    [v29 setCameraProfile:cameraProfile6];

    v30 = [HFCameraPlaybackEngineEventCache alloc];
    debugLogger = [(HFCameraPlaybackEngine *)self debugLogger];
    v32 = [(HFCameraPlaybackEngineEventCache *)v30 initWithDebugLogger:debugLogger];
    [(HFCameraPlaybackEngine *)self setEventCache:v32];

    v33 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v33, OS_LOG_TYPE_DEFAULT, "Batch recording events begin", buf, 2u);
    }

    [(HFCameraPlaybackEngine *)self setShouldBatchRecordingEvents:1];
    v34 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:4 options:1.0];
    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:v34];

    batchedRecordingEventsTimer = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer setDelegate:self];

    workQueue3 = [(HFCameraPlaybackEngine *)self workQueue];
    batchedRecordingEventsTimer2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer2 setDelegateQueue:workQueue3];

    batchedRecordingEventsTimer3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer3 resume];

    cameraProfile7 = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager2 = [cameraProfile7 recordingEventManager];
    workQueue4 = [(HFCameraPlaybackEngine *)self workQueue];
    [recordingEventManager2 addObserver:self queue:workQueue4];

    objc_initWeak(buf, self);
    cameraProfile8 = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager3 = [cameraProfile8 recordingEventManager];
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke_108;
    v50[3] = &unk_277DF3860;
    objc_copyWeak(&v51, buf);
    [recordingEventManager3 performCloudPullWithCompletion:v50];

    clipScrubber = [configurationCopy clipScrubber];
    clipScrubber = self->_clipScrubber;
    self->_clipScrubber = clipScrubber;

    playbackPosition = [configurationCopy playbackPosition];
    v47 = +[HFCameraPlaybackPosition livePosition];
    self->_engineMode = [playbackPosition isEqual:v47] ^ 1;

    playbackPosition2 = [configurationCopy playbackPosition];
    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:playbackPosition2 notifyObservers:0];

    objc_destroyWeak(&v51);
    objc_destroyWeak(buf);
LABEL_23:

    goto LABEL_24;
  }

  v14 = objc_msgSend_home(self);
  if (v14)
  {

    goto LABEL_15;
  }

  cameraProfile9 = [(HFCameraPlaybackEngine *)self cameraProfile];
  v17 = cameraProfile9 == 0;

  if (!v17)
  {
    goto LABEL_15;
  }

LABEL_24:
}

void __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke(uint64_t a1)
{
  v2 = objc_opt_new();
  [*(a1 + 32) setBatchedRecordingEvents:v2];
}

void __46__HFCameraPlaybackEngine_updateConfiguration___block_invoke_108(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setShouldBatchRecordingEvents:0];

  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Batch recording events end, error: %@", &v6, 0xCu);
  }
}

- (AVPlayer)player
{
  clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
  player = [clipPlayer player];

  return player;
}

- (HFCameraPlaybackPosition)playbackPosition
{
  playbackContentType = [(HFCameraPlaybackEngine *)self playbackContentType];
  if (playbackContentType == 1)
  {
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    currentPosition = [clipPlayer currentPosition];
    date = [currentPosition date];

    if (!date || [(HFCameraPlaybackEngine *)self isScrubbing])
    {
      lastRequestedClipPlaybackDate = [(HFCameraPlaybackEngine *)self lastRequestedClipPlaybackDate];

      date = lastRequestedClipPlaybackDate;
    }

    v5 = [HFCameraPlaybackPosition clipPositionWithDate:date];
  }

  else if (playbackContentType)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[HFCameraPlaybackEngine playbackContentType](self, "playbackContentType")}];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:668 description:{@"Unknown playback content type %@", v11}];

    v5 = 0;
  }

  else
  {
    v5 = +[HFCameraPlaybackPosition livePosition];
  }

  return v5;
}

- (void)updatePlaybackPositionToDate:(id)date usingClip:(id)clip
{
  dateCopy = date;
  clipCopy = clip;
  objc_initWeak(&location, self);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__HFCameraPlaybackEngine_updatePlaybackPositionToDate_usingClip___block_invoke;
  v14[3] = &unk_277DF6458;
  objc_copyWeak(&v17, &location);
  v8 = clipCopy;
  v15 = v8;
  v9 = dateCopy;
  v16 = v9;
  v10 = _Block_copy(v14);
  v10[2](v10, v11, v12, v13);

  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __65__HFCameraPlaybackEngine_updatePlaybackPositionToDate_usingClip___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 40);
  if (*(a1 + 32))
  {
    [HFCameraPlaybackPosition clipPositionWithDate:v2 inClip:?];
  }

  else
  {
    [HFCameraPlaybackPosition clipPositionWithDate:v2];
  }
  v3 = ;
  [WeakRetained setPlaybackPosition:v3];
}

- (void)startPlaybackAtDate:(id)date withClip:(id)clip
{
  self->_wantsToPlay = 1;
  if (clip)
  {

    [(HFCameraPlaybackEngine *)self updatePlaybackPositionToDate:date usingClip:?];
  }

  else
  {
    v5 = +[HFCameraPlaybackPosition livePosition];
    [(HFCameraPlaybackEngine *)self setPlaybackPosition:v5];
  }
}

- (void)setPlaybackPosition:(id)position
{
  v15 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = positionCopy;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Setting playback position: %@", &v13, 0xCu);
  }

  if (positionCopy)
  {
    playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
    if ([playbackPosition isEqual:positionCopy])
    {
      v7 = +[HFCameraPlaybackPosition livePosition];
      v8 = [positionCopy isEqual:v7];

      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
    }

    v10 = +[HFCameraPlaybackPosition livePosition];
    v11 = [positionCopy isEqual:v10];

    if (v11)
    {
      v12 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v13) = 0;
      }

      self->_playbackContentType = 1;
      self->_wantsToPlay = 1;
    }

    [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:positionCopy notifyObservers:1];
  }

  else
  {
    v9 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v13) = 0;
      _os_log_error_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_ERROR, "Ignore missing playbackPosition update.", &v13, 2u);
    }
  }

LABEL_16:
}

- (void)addObserver:(id)observer withOptions:(id)options
{
  observerCopy = observer;
  optionsCopy = options;
  if (!optionsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:770 description:{@"Invalid parameter not satisfying: %@", @"options != nil"}];
  }

  v8 = objc_alloc_init(HFCameraPlaybackEngineObservationState);
  [(HFCameraPlaybackEngineObservationState *)v8 setOptions:optionsCopy];
  observerStates = [(HFCameraPlaybackEngine *)self observerStates];
  [observerStates setObject:v8 forKey:observerCopy];

  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  [observerDispatcher addObserver:observerCopy];

  [(HFCameraPlaybackEngine *)self _setupTimeObservationForObserver:observerCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  observerStates = [(HFCameraPlaybackEngine *)self observerStates];
  v5 = [observerStates objectForKey:observerCopy];
  timeObservationToken = [v5 timeObservationToken];

  if (timeObservationToken)
  {
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer removeTimeObserver:timeObservationToken];
  }

  observerStates2 = [(HFCameraPlaybackEngine *)self observerStates];
  [observerStates2 removeObjectForKey:observerCopy];

  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  [observerDispatcher removeObserver:observerCopy];
}

- (NSArray)observers
{
  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  observers = [observerDispatcher observers];

  return observers;
}

- (void)modifyPlaybackFromSender:(id)sender usingBlock:(id)block
{
  blockCopy = block;
  senderCopy = sender;
  observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__HFCameraPlaybackEngine_modifyPlaybackFromSender_usingBlock___block_invoke;
  v10[3] = &unk_277E00970;
  v11 = blockCopy;
  v9 = blockCopy;
  [observerDispatcher dispatchMessageExcludingSender:senderCopy usingBlock:v10];
}

- (HMCameraClip)currentClip
{
  v29 = *MEMORY[0x277D85DE8];
  playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
  if ([playbackPosition contentType])
  {
    clipPlaybackDate = [playbackPosition clipPlaybackDate];
    eventCache = [(HFCameraPlaybackEngine *)self eventCache];
    events = [eventCache events];
    v7 = [HFCameraPlaybackEngine findClipPositionForDate:clipPlaybackDate inEvents:events options:1];

    if (v7)
    {
      clip = [v7 clip];
    }

    else
    {
      notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

      if (notificationCenterClipUUID)
      {
        v10 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          eventCache2 = [(HFCameraPlaybackEngine *)self eventCache];
          clips = [eventCache2 clips];
          firstObject = [clips firstObject];
          v23 = 138412290;
          v24 = firstObject;
          _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(NC) Returning the first event:%@", &v23, 0xCu);
        }

        eventCache3 = [(HFCameraPlaybackEngine *)self eventCache];
        clips2 = [eventCache3 clips];
        clip = [clips2 firstObject];
      }

      else
      {
        eventCache4 = [(HFCameraPlaybackEngine *)self eventCache];
        clips3 = [eventCache4 clips];
        lastObject = [clips3 lastObject];

        hf_endDate = [lastObject hf_endDate];
        v17 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          clipPlaybackDate2 = [playbackPosition clipPlaybackDate];
          v23 = 138412802;
          v24 = clipPlaybackDate2;
          v25 = 2112;
          v26 = hf_endDate;
          v27 = 2112;
          v28 = lastObject;
          _os_log_error_impl(&dword_20D9BF000, v17, OS_LOG_TYPE_ERROR, "Clip playback date (%@) is >= the last clip's playback date (%@) using clip:%@", &v23, 0x20u);
        }

        clip = 0;
      }
    }
  }

  else
  {
    clip = 0;
  }

  return clip;
}

- (void)beginScrubbing
{
  [(HFCameraPlaybackEngine *)self setScrubbingInProgressCount:[(HFCameraPlaybackEngine *)self scrubbingInProgressCount]+ 1];

  [(HFCameraPlaybackEngine *)self setScrubbing:1];
}

- (void)endScrubbing
{
  if ([(HFCameraPlaybackEngine *)self scrubbingInProgressCount])
  {
    [(HFCameraPlaybackEngine *)self setScrubbingInProgressCount:[(HFCameraPlaybackEngine *)self scrubbingInProgressCount]- 1];
    if (![(HFCameraPlaybackEngine *)self scrubbingInProgressCount])
    {

      [(HFCameraPlaybackEngine *)self setScrubbing:0];
    }
  }

  else
  {
    v3 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      *v4 = 0;
      _os_log_error_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_ERROR, "Attempting to end scrubbing when scrubbing is not in progress!", v4, 2u);
    }
  }
}

- (void)setPrefersAudioEnabled:(BOOL)enabled
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_prefersAudioEnabled != enabled)
  {
    enabledCopy = enabled;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
      v8 = 138412546;
      selfCopy = self;
      v10 = 2112;
      v11 = v6;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ preferred audio state changed: %@", &v8, 0x16u);
    }

    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults setBool:enabledCopy forKey:@"HFCameraPlaybackPrefersAudioEnabled"];
    self->_prefersAudioEnabled = enabledCopy;
    [(HFCameraPlaybackEngine *)self setStreamAudioEnabled:enabledCopy];
  }
}

- (BOOL)shouldDisplayVolumeControls
{
  if ([(HFCameraPlaybackEngine *)self isUserScrubbing])
  {
    return 0;
  }

  if (![(HFCameraPlaybackEngine *)self engineMode])
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    userSettings = [cameraProfile userSettings];
    currentAccessMode = [userSettings currentAccessMode];

    cameraProfile2 = [(HFCameraPlaybackEngine *)self cameraProfile];
    userSettings2 = [cameraProfile2 userSettings];
    if (([userSettings2 isCameraManuallyDisabled] & 1) != 0 || !currentAccessMode)
    {
    }

    else
    {

      if (currentAccessMode != 3)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

- (void)setTimelineState:(unint64_t)state
{
  v18 = *MEMORY[0x277D85DE8];
  if (self->_timelineState != state)
  {
    self->_timelineState = state;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      timelineStateDescription = [(HFCameraPlaybackEngine *)self timelineStateDescription];
      scrubbing = self->_scrubbing;
      userScrubbing = self->_userScrubbing;
      *buf = 138413058;
      selfCopy = self;
      v12 = 2112;
      v13 = timelineStateDescription;
      v14 = 1024;
      v15 = scrubbing;
      v16 = 1024;
      v17 = userScrubbing;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Engine:%@ updated timelineState:%@ Scrubbing:%{BOOL}d UserScrubbing:%{BOOL}d", buf, 0x22u);
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__HFCameraPlaybackEngine_setTimelineState___block_invoke;
    v9[3] = &unk_277DF5CD0;
    v9[4] = self;
    v9[5] = state;
    dispatch_async(MEMORY[0x277D85CD0], v9);
  }
}

void __43__HFCameraPlaybackEngine_setTimelineState___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateTimelineState:*(a1 + 40)];
}

- (void)setShouldBypassVideoFetchRequest:(BOOL)request
{
  if (self->_shouldBypassVideoFetchRequest != request)
  {
    self->_shouldBypassVideoFetchRequest = request;
  }
}

- (void)setShouldBypassHighQualityScrubbing:(BOOL)scrubbing
{
  if (self->_shouldBypassHighQualityScrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    self->_shouldBypassHighQualityScrubbing = scrubbing;
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer setShouldBypassScrubbing:scrubbingCopy];
  }
}

- (BOOL)hasRecordingEvents
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clips = [eventCache clips];
  v4 = [clips count] != 0;

  return v4;
}

- (NSArray)cameraEvents
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  events = [eventCache events];

  return events;
}

- (NSArray)cameraClips
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clips = [eventCache clips];

  return clips;
}

- (HMCameraClip)clipWithLongestDuration
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clipWithLongestDuration = [eventCache clipWithLongestDuration];

  return clipWithLongestDuration;
}

- (id)daysWithClips
{
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  daysWithClips = [eventCache daysWithClips];

  return daysWithClips;
}

- (BOOL)isCameraPortraitMode
{
  liveCameraSource = [(HFCameraPlaybackEngine *)self liveCameraSource];
  [liveCameraSource aspectRatio];
  v4 = v3;

  return v4 > 0.0 && v4 < 1.0;
}

- (void)startPlaybackForCurrentClip
{
  playbackSessionEvent = [(HFCameraPlaybackEngine *)self playbackSessionEvent];

  if (playbackSessionEvent)
  {
    playbackSessionEvent2 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
    v5 = [playbackSessionEvent2 sendEventForState:2];
  }

  v6 = [HFCameraAnalyticsCameraClipPlaybackSessionEvent alloc];
  currentClip = [(HFCameraPlaybackEngine *)self currentClip];
  v8 = [(HFCameraAnalyticsEvent *)v6 initWithCameraClip:currentClip];
  [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:v8];

  clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
  [clipPlayer play];
}

- (void)setScrubbing:(BOOL)scrubbing
{
  v21 = *MEMORY[0x277D85DE8];
  if (self->_scrubbing != scrubbing)
  {
    scrubbingCopy = scrubbing;
    v5 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      selfCopy = self;
      v19 = 1024;
      v20 = scrubbingCopy;
      _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "%@ Scrubbing state changed. UserScrubbing:%{BOOL}d", buf, 0x12u);
    }

    playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
    v7 = playbackPosition;
    if (scrubbingCopy)
    {
      clipPlaybackDate = [playbackPosition clipPlaybackDate];
      [(HFCameraPlaybackEngine *)self setLastRequestedClipPlaybackDate:clipPlaybackDate];

      self->_scrubbing = scrubbingCopy;
    }

    else
    {
      self->_scrubbing = 0;
      lastRequestedClipPlaybackDate = [(HFCameraPlaybackEngine *)self lastRequestedClipPlaybackDate];
      currentClip = [(HFCameraPlaybackEngine *)self currentClip];
      dateOfOccurrence = [currentClip dateOfOccurrence];
      [lastRequestedClipPlaybackDate timeIntervalSinceDate:dateOfOccurrence];
      v13 = v12;

      clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
      [clipPlayer endScrubbingWithOffset:v13];

      [(HFCameraPlaybackEngine *)self _updateStateForRequestedPlaybackPosition:v7 notifyObservers:1];
    }

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __39__HFCameraPlaybackEngine_setScrubbing___block_invoke;
    v15[3] = &unk_277E00998;
    v15[4] = self;
    v16 = scrubbingCopy;
    dispatch_async(MEMORY[0x277D85CD0], v15);
  }
}

void __39__HFCameraPlaybackEngine_setScrubbing___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateScrubbingStatus:*(a1 + 40)];
}

- (void)setWantsToPlay:(BOOL)play
{
  playCopy = play;
  v11 = *MEMORY[0x277D85DE8];
  if (self->_wantsToPlay != play || ([(HFCameraPlaybackEngine *)self playbackError], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    self->_wantsToPlay = playCopy;
    v6 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412546;
      selfCopy = self;
      v9 = 1024;
      v10 = playCopy;
      _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "%@ toggled wantsToPlay:%{BOOL}d", &v7, 0x12u);
    }

    if (self->_wantsToPlay)
    {
      [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:0];
    }

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
  }
}

- (unint64_t)_derivedTimeControlStatus
{
  v10 = *MEMORY[0x277D85DE8];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HFCameraPlaybackEngine__derivedTimeControlStatus__block_invoke;
  v7[3] = &unk_277E009C0;
  v7[4] = self;
  v3 = __51__HFCameraPlaybackEngine__derivedTimeControlStatus__block_invoke(v7);
  if (!v3)
  {
    if ([(HFCameraPlaybackEngine *)self wantsToPlay])
    {
      _derivedPlaybackError = [(HFCameraPlaybackEngine *)self _derivedPlaybackError];
      v3 = _derivedPlaybackError == 0;
    }

    else
    {
      v3 = 0;
    }
  }

  v5 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v9 = v3;
    _os_log_debug_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEBUG, "Playback engine current timeControlStatus:%lu", buf, 0xCu);
  }

  return v3;
}

void *__51__HFCameraPlaybackEngine__derivedTimeControlStatus__block_invoke(uint64_t a1)
{
  result = [*(a1 + 32) playbackContentType];
  if (result == 1)
  {
    goto LABEL_5;
  }

  if (result)
  {
    return result;
  }

  v3 = [*(a1 + 32) liveStreamController];
  v4 = [v3 streamState];

  if ((v4 - 1) < 4)
  {
    return qword_20DD977E0[v4 - 1];
  }

LABEL_5:
  v5 = [*(a1 + 32) clipPlayer];
  v6 = [v5 timeControlStatus];

  v7 = 1;
  if (v6 != 1)
  {
    v7 = 2;
  }

  if (v6)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

- (id)_derivedPlaybackError
{
  playbackContentType = [(HFCameraPlaybackEngine *)self playbackContentType];
  if (playbackContentType == 1)
  {
    clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
    error = [clipPlayer error];
  }

  else
  {
    if (playbackContentType)
    {
      goto LABEL_6;
    }

    clipPlayer = [(HFCameraPlaybackEngine *)self liveStreamController];
    error = [clipPlayer streamError];
  }

  v2 = error;

LABEL_6:

  return v2;
}

- (void)_updatePlaybackStateNotifyingObservers:(BOOL)observers rebuildClipPlayerIfNeeded:(BOOL)needed
{
  neededCopy = needed;
  observersCopy = observers;
  v45 = *MEMORY[0x277D85DE8];
  clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
  if (clipPlayer)
  {
    v8 = clipPlayer;
    clipPlayer2 = [(HFCameraPlaybackEngine *)self clipPlayer];
    hasFatalError = [clipPlayer2 hasFatalError];

    if (hasFatalError)
    {
      if (neededCopy)
      {
        v11 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          clipPlayer3 = [(HFCameraPlaybackEngine *)self clipPlayer];
          error = [clipPlayer3 error];
          *buf = 138412290;
          v44 = error;
          _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Rebuilding clip player after fatal error:%@", buf, 0xCu);
        }

        clipManager = [(HFCameraPlaybackEngine *)self clipManager];
        [(HFCameraPlaybackEngine *)self _setupClipPlayerWithClipManager:clipManager];

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke;
        block[3] = &unk_277DF3D38;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  if ([(HFCameraPlaybackEngine *)self wantsToPlay]&& [(HFCameraPlaybackEngine *)self playbackContentType]== 1 && ![(HFCameraPlaybackEngine *)self isScrubbing])
  {
    clipPlayer4 = [(HFCameraPlaybackEngine *)self clipPlayer];
    timeControlStatus = [clipPlayer4 timeControlStatus];

    if (!timeControlStatus)
    {
      if ([(HFCameraPlaybackEngine *)self isPictureInPictureModeActive])
      {
        v37 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20D9BF000, v37, OS_LOG_TYPE_DEFAULT, "PIP - manually setting wantsToPlay = NO after pause selected during PIP.", buf, 2u);
        }

        self->_wantsToPlay = 0;
      }

      else
      {
        [(HFCameraPlaybackEngine *)self startPlaybackForCurrentClip];
      }
    }
  }

  else if ([(HFCameraPlaybackEngine *)self isPictureInPictureModeActive])
  {
    v15 = +[HFUtilities isDeviceUnlocked];
    v16 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v44) = v15;
      _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "PIP - Checking for locked screen; isDeviceUnlocked: %{BOOL}d", buf, 8u);
    }

    if (v15)
    {
      self->_wantsToPlay = 1;
      goto LABEL_18;
    }

    if (self->_wantsToPlay)
    {
LABEL_18:
      clipPlayer6 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(clipPlayer6, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_20D9BF000, clipPlayer6, OS_LOG_TYPE_DEFAULT, "PIP - manually setting wantsToPlay = YES after play selected during PIP.", buf, 2u);
      }

      goto LABEL_20;
    }
  }

  else
  {
    clipPlayer5 = [(HFCameraPlaybackEngine *)self clipPlayer];
    timeControlStatus2 = [clipPlayer5 timeControlStatus];

    if (timeControlStatus2)
    {
      clipPlayer6 = [(HFCameraPlaybackEngine *)self clipPlayer];
      [clipPlayer6 pause];
LABEL_20:
    }
  }

  if ([(HFCameraPlaybackEngine *)self isScrubbing]&& [(HFCameraPlaybackEngine *)self playbackContentType]== 1)
  {
    clipPlayer7 = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer7 setScrubbing:1];
  }

  if ([(HFCameraPlaybackEngine *)self wantsToPlay]&& ![(HFCameraPlaybackEngine *)self playbackContentType])
  {
    liveStreamController = [(HFCameraPlaybackEngine *)self liveStreamController];
    isStreamingEnabled = [liveStreamController isStreamingEnabled];

    if (isStreamingEnabled)
    {
      goto LABEL_29;
    }

    liveStreamController2 = [(HFCameraPlaybackEngine *)self liveStreamController];
    [liveStreamController2 startStreaming];
    goto LABEL_28;
  }

  liveStreamController3 = [(HFCameraPlaybackEngine *)self liveStreamController];
  isStreamingEnabled2 = [liveStreamController3 isStreamingEnabled];

  if (isStreamingEnabled2)
  {
    liveStreamController2 = [(HFCameraPlaybackEngine *)self liveStreamController];
    [liveStreamController2 stopStreaming];
LABEL_28:
  }

LABEL_29:
  timeControlStatus3 = [(HFCameraPlaybackEngine *)self timeControlStatus];
  [(HFCameraPlaybackEngine *)self setTimeControlStatus:[(HFCameraPlaybackEngine *)self _derivedTimeControlStatus]];
  playbackError = [(HFCameraPlaybackEngine *)self playbackError];
  _derivedPlaybackError = [(HFCameraPlaybackEngine *)self _derivedPlaybackError];
  [(HFCameraPlaybackEngine *)self setPlaybackError:_derivedPlaybackError];

  v27 = [(HFCameraPlaybackEngine *)self isStreamAudioEnabled]&& [(HFCameraPlaybackEngine *)self wantsToPlay]&& [(HFCameraPlaybackEngine *)self playbackContentType]== 0;
  liveStreamController4 = [(HFCameraPlaybackEngine *)self liveStreamController];
  [liveStreamController4 setStreamAudioEnabled:v27];

  if (![(HFCameraPlaybackEngine *)self wantsToPlay]|| [(HFCameraPlaybackEngine *)self playbackContentType])
  {
    [(HFCameraPlaybackEngine *)self _setMicrophoneEnabled:0 notifyObservers:observersCopy];
  }

  if (observersCopy)
  {
    if ([(HFCameraPlaybackEngine *)self timeControlStatus]!= timeControlStatus3)
    {
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke_122;
      v41[3] = &unk_277DF3D38;
      v41[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v41);
    }

    playbackError2 = [(HFCameraPlaybackEngine *)self playbackError];
    v30 = playbackError;
    v31 = v30;
    if (playbackError2 == v30)
    {
    }

    else
    {
      if (playbackError2)
      {
        v32 = [playbackError2 isEqual:v30];

        if (v32)
        {
          goto LABEL_55;
        }
      }

      else
      {
      }

      v38 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        playbackError3 = [(HFCameraPlaybackEngine *)self playbackError];
        *buf = 138412290;
        v44 = playbackError3;
        _os_log_error_impl(&dword_20D9BF000, v38, OS_LOG_TYPE_ERROR, "Notifying clients of playback error:%@.", buf, 0xCu);
      }

      v40[0] = MEMORY[0x277D85DD0];
      v40[1] = 3221225472;
      v40[2] = __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke_123;
      v40[3] = &unk_277DF3D38;
      v40[4] = self;
      dispatch_async(MEMORY[0x277D85CD0], v40);
    }
  }

LABEL_55:
}

void __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) observerDispatcher];
  v2 = [v5 proxy];
  v3 = *(a1 + 32);
  v4 = [v3 player];
  [v2 playbackEngine:v3 didUpdateClipPlayer:v4];
}

void __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke_122(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateTimeControlStatus:{objc_msgSend(*(a1 + 32), "timeControlStatus")}];
}

void __91__HFCameraPlaybackEngine__updatePlaybackStateNotifyingObservers_rebuildClipPlayerIfNeeded___block_invoke_123(uint64_t a1)
{
  v5 = [*(a1 + 32) observerDispatcher];
  v2 = [v5 proxy];
  v3 = *(a1 + 32);
  v4 = [v3 playbackError];
  [v2 playbackEngine:v3 didUpdatePlaybackError:v4];
}

- (void)_updateStateForRequestedPlaybackPosition:(id)position notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  v74 = *MEMORY[0x277D85DE8];
  positionCopy = position;
  if (!positionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFCameraPlaybackEngine.m" lineNumber:1209 description:@"No playback position provided!"];

    v8 = 0;
    goto LABEL_47;
  }

  v8 = positionCopy;
  if ([positionCopy contentType] == 1)
  {
    clipManager = [(HFCameraPlaybackEngine *)self clipManager];
    if (clipManager)
    {
    }

    else
    {
      eventCache = [(HFCameraPlaybackEngine *)self eventCache];
      events = [eventCache events];

      if (!events)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        v43 = currentHandler2;
        v44 = @"Attempting to use a clip playback position when there is no clip collection!";
        v45 = a2;
        selfCopy2 = self;
        v47 = 1213;
        goto LABEL_32;
      }
    }

    clipPlaybackDate = [v8 clipPlaybackDate];

    if (clipPlaybackDate)
    {
      goto LABEL_8;
    }

    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    v43 = currentHandler2;
    v44 = @"Attempting to set a nil playback date for clip playback!";
    v45 = a2;
    selfCopy2 = self;
    v47 = 1216;
LABEL_32:
    [currentHandler2 handleFailureInMethod:v45 object:selfCopy2 file:@"HFCameraPlaybackEngine.m" lineNumber:v47 description:v44];

    goto LABEL_47;
  }

LABEL_8:
  playbackContentType = [(HFCameraPlaybackEngine *)self playbackContentType];
  contentType = [v8 contentType];
  -[HFCameraPlaybackEngine setPlaybackContentType:](self, "setPlaybackContentType:", [v8 contentType]);
  if ([v8 contentType] != 1)
  {
    goto LABEL_45;
  }

  clipPlaybackDate2 = [v8 clipPlaybackDate];
  [(HFCameraPlaybackEngine *)self setLastRequestedClipPlaybackDate:clipPlaybackDate2];

  clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
  hasFatalError = [clipPlayer hasFatalError];

  if (hasFatalError)
  {
    v19 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "Clip player had fatal error. Updating and notifying observers.", buf, 2u);
    }

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:observersCopy];
  }

  if ([v8 clipIncludesPlaybackDate])
  {
    clip = [v8 clip];
    clipPlaybackDate3 = [v8 clipPlaybackDate];
    clip2 = [v8 clip];
    dateOfOccurrence = [clip2 dateOfOccurrence];
    [clipPlaybackDate3 timeIntervalSinceDate:dateOfOccurrence];
    v24 = [HFCameraClipPosition positionWithClip:clip offset:?];
  }

  else
  {
    v25 = [(HFCameraPlaybackEngine *)self isScrubbing]^ 1;
    v26 = objc_opt_class();
    clipPlaybackDate4 = [v8 clipPlaybackDate];
    eventCache2 = [(HFCameraPlaybackEngine *)self eventCache];
    events2 = [eventCache2 events];
    v24 = [v26 findClipPositionForDate:clipPlaybackDate4 inEvents:events2 options:v25];

    clip = HFLogForCategory(0x17uLL);
    if (!os_log_type_enabled(clip, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_18;
    }

    clipPlaybackDate3 = [(HFCameraPlaybackEngine *)self eventCache];
    clip2 = [clipPlaybackDate3 events];
    v30 = [clip2 count];
    *buf = 138412546;
    v71 = v24;
    v72 = 2048;
    v73 = v30;
    _os_log_impl(&dword_20D9BF000, clip, OS_LOG_TYPE_DEFAULT, "PlaybackPosition did not include clip. Updating to clipPosition:%@ in events:%lu", buf, 0x16u);
  }

LABEL_18:
  if (v24)
  {
    if ([(HFCameraPlaybackEngine *)self shouldBypassVideoFetchRequest])
    {
      goto LABEL_44;
    }

    eventCache3 = [(HFCameraPlaybackEngine *)self eventCache];
    clips = [eventCache3 clips];
    clipPlayer2 = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer2 setClips:clips];

    clipPlayer3 = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer3 setCurrentPosition:v24];

    clip3 = [v8 clip];

    if (clip3)
    {
      goto LABEL_44;
    }

    date = [v24 date];
    clip4 = [v24 clip];
    v38 = [HFCameraPlaybackPosition clipPositionWithDate:date inClip:clip4];

    firstObject = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(firstObject, OS_LOG_TYPE_DEFAULT))
    {
      clip5 = [v24 clip];
      uniqueIdentifier = [clip5 uniqueIdentifier];
      *buf = 138412290;
      v71 = uniqueIdentifier;
      _os_log_impl(&dword_20D9BF000, firstObject, OS_LOG_TYPE_DEFAULT, "Added missing clip to playbackPosition: %@", buf, 0xCu);
    }

    v8 = v38;
    goto LABEL_43;
  }

  if ([(HFCameraPlaybackEngine *)self isScrubbing])
  {
    v24 = 0;
LABEL_44:

LABEL_45:
    observerDispatcher = [(HFCameraPlaybackEngine *)self observerDispatcher];
    proxy = [observerDispatcher proxy];
    [proxy playbackEngine:self didUpdatePlaybackPosition:v8];

    if (playbackContentType != contentType)
    {
      [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:observersCopy];
    }

    goto LABEL_47;
  }

  notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

  if (!notificationCenterClipUUID)
  {
    v57 = HFLogForCategory(0x17uLL);
    if (!os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_36;
    }

    clipPlaybackDate5 = [v8 clipPlaybackDate];
    *buf = 138412290;
    v71 = clipPlaybackDate5;
    v59 = "Could not find a match for selected playback date %@!";
LABEL_49:
    _os_log_error_impl(&dword_20D9BF000, v57, OS_LOG_TYPE_ERROR, v59, buf, 0xCu);

    goto LABEL_36;
  }

  eventCache4 = [(HFCameraPlaybackEngine *)self eventCache];
  clips2 = [eventCache4 clips];
  firstObject = [clips2 firstObject];

  if (firstObject)
  {
    significantEvents = [firstObject significantEvents];
    if ([significantEvents count])
    {
      hf_sortedSignificantEvents = [firstObject hf_sortedSignificantEvents];
      firstObject2 = [hf_sortedSignificantEvents firstObject];
      dateOfOccurrence2 = [firstObject2 dateOfOccurrence];
      dateOfOccurrence3 = [firstObject dateOfOccurrence];
      [dateOfOccurrence2 timeIntervalSinceDate:dateOfOccurrence3];
      v56 = v55;
    }

    else
    {
      v56 = 0.0;
    }

    eventCache5 = [(HFCameraPlaybackEngine *)self eventCache];
    clips3 = [eventCache5 clips];
    clipPlayer4 = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer4 setClips:clips3];

    v24 = [HFCameraClipPosition positionWithEvent:firstObject offset:v56];
    v64 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
    {
      clipPlaybackDate6 = [v8 clipPlaybackDate];
      *buf = 138412546;
      v71 = clipPlaybackDate6;
      v72 = 2112;
      v73 = firstObject;
      _os_log_impl(&dword_20D9BF000, v64, OS_LOG_TYPE_DEFAULT, "(NC) Starting playback at position:%@ for event:%@", buf, 0x16u);
    }

    clipPlayer5 = [(HFCameraPlaybackEngine *)self clipPlayer];
    [clipPlayer5 setCurrentPosition:v24];

LABEL_43:
    goto LABEL_44;
  }

  v57 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
  {
    clipPlaybackDate5 = [v8 clipPlaybackDate];
    *buf = 138412290;
    v71 = clipPlaybackDate5;
    v59 = "(NC) Could not find a match for selected playback date %@!";
    goto LABEL_49;
  }

LABEL_36:

  v60 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_20D9BF000, v60, OS_LOG_TYPE_ERROR, "Failed to find valid clip position. Ignoring playback position update.", buf, 2u);
  }

LABEL_47:
}

- (void)setLiveCameraSource:(id)source
{
  sourceCopy = source;
  if (self->_liveCameraSource != sourceCopy)
  {
    objc_storeStrong(&self->_liveCameraSource, source);
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __46__HFCameraPlaybackEngine_setLiveCameraSource___block_invoke;
    v6[3] = &unk_277DF3370;
    v6[4] = self;
    v7 = sourceCopy;
    dispatch_async(MEMORY[0x277D85CD0], v6);
  }
}

void __46__HFCameraPlaybackEngine_setLiveCameraSource___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateLiveCameraSource:*(a1 + 40)];
}

- (void)_setMicrophoneEnabled:(BOOL)enabled notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  enabledCopy = enabled;
  if (enabled && [(HFCameraPlaybackEngine *)self playbackContentType])
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_ERROR, "Attempting to enable the microphone when live playback is not active. This doesn't make any sense and will be ignored.", buf, 2u);
    }
  }

  else if (self->_microphoneEnabled != enabledCopy)
  {
    self->_microphoneEnabled = enabledCopy;
    liveStreamController = [(HFCameraPlaybackEngine *)self liveStreamController];
    [liveStreamController setMicrophoneEnabled:enabledCopy];

    if (observersCopy)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __64__HFCameraPlaybackEngine__setMicrophoneEnabled_notifyObservers___block_invoke;
      v9[3] = &unk_277E00998;
      v9[4] = self;
      v10 = enabledCopy;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __64__HFCameraPlaybackEngine__setMicrophoneEnabled_notifyObservers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateMicrophoneEnabled:*(a1 + 40)];
}

- (void)_setPlayerVolume:(float)volume notifyObservers:(BOOL)observers
{
  observersCopy = observers;
  if (self->_streamAudioVolume != volume || +[HFUtilities isAMac])
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    *&v8 = volume;
    [standardUserDefaults setFloat:@"HFCameraPlaybackStreamAudioVolume" forKey:v8];

    self->_streamAudioVolume = volume;
    liveStreamController = [(HFCameraPlaybackEngine *)self liveStreamController];
    *&v10 = volume;
    [liveStreamController setStreamAudioVolume:v10];

    if (observersCopy)
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __59__HFCameraPlaybackEngine__setPlayerVolume_notifyObservers___block_invoke;
      v11[3] = &unk_277DF4438;
      v11[4] = self;
      volumeCopy = volume;
      dispatch_async(MEMORY[0x277D85CD0], v11);
    }
  }
}

void __59__HFCameraPlaybackEngine__setPlayerVolume_notifyObservers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateStreamAudioVolume:*(a1 + 40) != 0.0];
}

- (void)_setStreamAudioEnabled:(BOOL)enabled notifyObservers:(BOOL)observers
{
  if (self->_streamAudioEnabled != enabled)
  {
    v11 = v4;
    v12 = v5;
    observersCopy = observers;
    self->_streamAudioEnabled = enabled;
    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    if (observersCopy)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __65__HFCameraPlaybackEngine__setStreamAudioEnabled_notifyObservers___block_invoke;
      v9[3] = &unk_277E00998;
      v9[4] = self;
      enabledCopy = enabled;
      dispatch_async(MEMORY[0x277D85CD0], v9);
    }
  }
}

void __65__HFCameraPlaybackEngine__setStreamAudioEnabled_notifyObservers___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) observerDispatcher];
  v2 = [v3 proxy];
  [v2 playbackEngine:*(a1 + 32) didUpdateStreamAudioEnabled:*(a1 + 40)];
}

- (unint64_t)engineMode
{
  playbackPosition = [(HFCameraPlaybackEngine *)self playbackPosition];
  clipPlaybackDate = [playbackPosition clipPlaybackDate];
  v4 = clipPlaybackDate != 0;

  return v4;
}

- (BOOL)isLiveStreaming
{
  if (+[HFUtilities isPressDemoModeEnabled]&& ![(HFCameraPlaybackEngine *)self engineMode])
  {
    return 1;
  }

  if ([(HFCameraPlaybackEngine *)self engineMode])
  {
    return 0;
  }

  return [(HFCameraPlaybackEngine *)self timeControlStatus]!= 0;
}

- (BOOL)isLiveStreamPlaying
{
  if (+[HFUtilities isPressDemoModeEnabled]&& ![(HFCameraPlaybackEngine *)self engineMode])
  {
    return 1;
  }

  if ([(HFCameraPlaybackEngine *)self engineMode])
  {
    return 0;
  }

  return [(HFCameraPlaybackEngine *)self timeControlStatus]== 2;
}

- (void)timerDidFire:(id)fire
{
  v27 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HFCameraPlaybackEngine *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  batchedRecordingEventsTimer = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

  if (batchedRecordingEventsTimer == fireCopy && ![(HFCameraPlaybackEngine *)self isDeallocating])
  {
    v7 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = MEMORY[0x277CCABB0];
      batchedRecordingEventsByUUID = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
      v10 = [v8 numberWithUnsignedInteger:{objc_msgSend(batchedRecordingEventsByUUID, "count")}];
      v23 = 138412546;
      v24 = v10;
      v25 = 1024;
      shouldBatchRecordingEvents = [(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents];
      _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Batch recording event throttling timer invoked; batched events: %@; batch in progress: %{BOOL}d", &v23, 0x12u);
    }

    batchedRecordingEventsByUUID2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
    v12 = [batchedRecordingEventsByUUID2 count];

    if (v12)
    {
      cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
      recordingEventManager = [cameraProfile recordingEventManager];
      v15 = MEMORY[0x277CBEB98];
      batchedRecordingEventsByUUID3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
      allValues = [batchedRecordingEventsByUUID3 allValues];
      v18 = [v15 setWithArray:allValues];
      [(HFCameraPlaybackEngine *)self _recordingEventManager:recordingEventManager didUpdateRecordingEvents:v18];

      v19 = objc_opt_new();
      [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsByUUID:v19];
    }

    else if (![(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents])
    {
      batchedRecordingEventsTimer2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

      if (batchedRecordingEventsTimer2)
      {
        v21 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v23) = 0;
          _os_log_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_DEFAULT, "Batch recording event throttling timer invalidated", &v23, 2u);
        }

        batchedRecordingEventsTimer3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
        [batchedRecordingEventsTimer3 cancel];

        [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:0];
      }
    }
  }
}

- (void)recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events
{
  managerCopy = manager;
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  if ([(HFCameraPlaybackEngine *)self shouldBatchRecordingEvents])
  {
    batchedRecordingEventsByUUID = [(HFCameraPlaybackEngine *)self batchedRecordingEventsByUUID];
    v10 = [batchedRecordingEventsByUUID mutableCopy];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __73__HFCameraPlaybackEngine_recordingEventManager_didUpdateRecordingEvents___block_invoke;
    v12[3] = &unk_277DF29C8;
    v13 = v10;
    v11 = v10;
    [eventsCopy na_each:v12];
    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsByUUID:v11];
  }

  else
  {
    [(HFCameraPlaybackEngine *)self _recordingEventManager:managerCopy didUpdateRecordingEvents:eventsCopy];
  }
}

void __73__HFCameraPlaybackEngine_recordingEventManager_didUpdateRecordingEvents___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 uniqueIdentifier];
  [v2 setObject:v3 forKeyedSubscript:v4];
}

- (void)_recordingEventManager:(id)manager didUpdateRecordingEvents:(id)events
{
  v46 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  eventsCopy = events;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    selfCopy3 = "[HFCameraPlaybackEngine _recordingEventManager:didUpdateRecordingEvents:]";
    v40 = 2048;
    v41 = [eventsCopy count];
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "%s, received (%lu) events", buf, 0x16u);
  }

  notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];
  v10 = notificationCenterClipUUID;
  if (notificationCenterClipUUID)
  {
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke;
    v36[3] = &unk_277E009E8;
    v11 = notificationCenterClipUUID;
    v37 = v11;
    v12 = [eventsCopy na_firstObjectPassingTest:v36];
    if (v12)
    {
      v13 = [MEMORY[0x277CBEB98] setWithObject:v12];

      objc_opt_class();
      v14 = v12;
      if (objc_opt_isKindOfClass())
      {
        v15 = v14;
      }

      else
      {
        v15 = 0;
      }

      eventsCopy = v15;

      if ([eventsCopy isComplete])
      {
        v16 = HFLogForCategory(0x16uLL);
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_20D9BF000, v16, OS_LOG_TYPE_DEFAULT, "(NC) No need to listen for a completed clip. Removing observation.", buf, 2u);
        }

        cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
        recordingEventManager = [cameraProfile recordingEventManager];
        [recordingEventManager removeObserver:self];
      }

      v19 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v40 = 2112;
        v41 = managerCopy;
        v42 = 2112;
        v43 = v13;
        v44 = 2112;
        v45 = v11;
        _os_log_impl(&dword_20D9BF000, v19, OS_LOG_TYPE_DEFAULT, "(NC) Playback engine:%@ eventManager:%@ updatedClips:%@ for UUID:%@", buf, 0x2Au);
      }
    }

    else
    {
      v21 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        selfCopy3 = self;
        v40 = 2112;
        v41 = managerCopy;
        v42 = 2112;
        v43 = eventsCopy;
        v44 = 2112;
        v45 = v11;
        _os_log_error_impl(&dword_20D9BF000, v21, OS_LOG_TYPE_ERROR, "(NC) Playback engine:%@ eventManager:%@ ignoring clip updates:%@ because its showing UUID:%@", buf, 0x2Au);
      }

      v13 = [MEMORY[0x277CBEB98] set];
    }

    v20 = v37;
  }

  else
  {
    v20 = HFLogForCategory(0x17uLL);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      selfCopy3 = self;
      v40 = 2112;
      v41 = managerCopy;
      v42 = 2112;
      v43 = eventsCopy;
      _os_log_impl(&dword_20D9BF000, v20, OS_LOG_TYPE_DEFAULT, "Playback engine:%@ eventManager:%@ updatedClips:%@", buf, 0x20u);
    }

    v13 = eventsCopy;
  }

  v22 = [MEMORY[0x277CBEB58] set];
  v23 = [MEMORY[0x277CBEB58] set];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_139;
  v33[3] = &unk_277DF2978;
  v24 = v22;
  v34 = v24;
  v25 = v23;
  v35 = v25;
  [v13 na_each:v33];
  objc_initWeak(buf, self);
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  allObjects = [v24 allObjects];
  v28 = [eventCache updateWithEvents:allObjects];
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_2;
  v31[3] = &unk_277E00A10;
  objc_copyWeak(&v32, buf);
  v29 = [v28 addSuccessBlock:v31];

  objc_destroyWeak(&v32);
  objc_destroyWeak(buf);
}

uint64_t __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 uniqueIdentifier];
  v4 = [v3 isEqual:*(a1 + 32)];

  return v4;
}

void __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_139(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([HFCameraPlaybackEngineEventCache isValidEvent:?])
  {
    [*(a1 + 32) addObject:v6];
  }

  else if ([v6 containerType] == 1)
  {
    objc_opt_class();
    v3 = v6;
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    if ([v5 quality] == 1)
    {
      [*(a1 + 40) addObject:v5];
    }
  }
}

void __74__HFCameraPlaybackEngine__recordingEventManager_didUpdateRecordingEvents___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v5];
}

- (void)recordingEventManager:(id)manager didRemoveRecordingEventsWithUUIDs:(id)ds
{
  v21 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  dsCopy = ds;
  if (!+[HFUtilities isInternalTest])
  {
    workQueue = [(HFCameraPlaybackEngine *)self workQueue];
    dispatch_assert_queue_V2(workQueue);
  }

  v9 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    selfCopy = self;
    v17 = 2112;
    v18 = managerCopy;
    v19 = 2112;
    v20 = dsCopy;
    _os_log_impl(&dword_20D9BF000, v9, OS_LOG_TYPE_DEFAULT, "Playback engine:%@ received eventManager:%@ updatedClips:%@", buf, 0x20u);
  }

  objc_initWeak(buf, self);
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  v11 = [eventCache removeEventUUIDs:dsCopy];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__HFCameraPlaybackEngine_recordingEventManager_didRemoveRecordingEventsWithUUIDs___block_invoke;
  v13[3] = &unk_277E00880;
  objc_copyWeak(&v14, buf);
  v12 = [v11 flatMap:v13];

  objc_destroyWeak(&v14);
  objc_destroyWeak(buf);
}

id __82__HFCameraPlaybackEngine_recordingEventManager_didRemoveRecordingEventsWithUUIDs___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained _dispatchToObserversDidUpdateEventCache:v3];

  return v5;
}

- (void)clipPlayer:(id)player didUpdateTimeControlStatus:(int64_t)status
{
  v25 = *MEMORY[0x277D85DE8];
  if ([(HFCameraPlaybackEngine *)self playbackContentType])
  {
    lastPlayerTimeControlStatus = [(HFCameraPlaybackEngine *)self lastPlayerTimeControlStatus];
    if (!status && lastPlayerTimeControlStatus == 1 && self->_wantsToPlay)
    {
      if ([(HFCameraPlaybackEngine *)self playbackRetryAttempts]> 2)
      {
        playbackSessionEvent = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
        v17 = [playbackSessionEvent sendEventForState:1];

        [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:0];
        v18 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          clipPlayer = [(HFCameraPlaybackEngine *)self clipPlayer];
          error = [clipPlayer error];
          v21 = 138412290;
          selfCopy3 = error;
          _os_log_impl(&dword_20D9BF000, v18, OS_LOG_TYPE_DEFAULT, "Failure occurred while waiting to play. Bailing on the playback attempt. Player error:%@", &v21, 0xCu);
        }

        [(HFCameraPlaybackEngine *)self setLastPlayerTimeControlStatus:0];
        selfCopy2 = self;
        v12 = 0;
      }

      else
      {
        v7 = HFLogForCategory(0x17uLL);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = 3 - [(HFCameraPlaybackEngine *)self playbackRetryAttempts];
          clipPlayer2 = [(HFCameraPlaybackEngine *)self clipPlayer];
          error2 = [clipPlayer2 error];
          v21 = 134218242;
          selfCopy3 = v8;
          v23 = 2112;
          statusCopy = error2;
          _os_log_impl(&dword_20D9BF000, v7, OS_LOG_TYPE_DEFAULT, "Failure occurred while waiting to play. Retrying playback up to %lu more times. Player error:%@", &v21, 0x16u);
        }

        [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:[(HFCameraPlaybackEngine *)self playbackRetryAttempts]+ 1];
        selfCopy2 = self;
        v12 = 1;
      }

      [(HFCameraPlaybackEngine *)selfCopy2 setWantsToPlay:v12];
    }

    else
    {
      [(HFCameraPlaybackEngine *)self setLastPlayerTimeControlStatus:status];
      if ([(HFCameraPlaybackEngine *)self lastPlayerTimeControlStatus]== 2)
      {
        playbackSessionEvent2 = [(HFCameraPlaybackEngine *)self playbackSessionEvent];
        v14 = [playbackSessionEvent2 sendEventForState:0];

        [(HFCameraPlaybackEngine *)self setPlaybackSessionEvent:0];
        [(HFCameraPlaybackEngine *)self setPlaybackRetryAttempts:0];
      }

      v15 = HFLogForCategory(0x17uLL);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412546;
        selfCopy3 = self;
        v23 = 2048;
        statusCopy = status;
        _os_log_impl(&dword_20D9BF000, v15, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer timeControlStatus update: %ld", &v21, 0x16u);
      }

      [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    }
  }
}

- (void)clipPlayer:(id)player didUpdateError:(id)error isFatal:(BOOL)fatal
{
  fatalCopy = fatal;
  v15 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  v8 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412802;
    selfCopy = self;
    v11 = 2112;
    v12 = errorCopy;
    v13 = 1024;
    v14 = fatalCopy;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer error update: %@ (fatal: %d)", &v9, 0x1Cu);
  }

  [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
}

- (void)clipPlayer:(id)player didUpdateMuted:(BOOL)muted
{
  mutedCopy = muted;
  v12 = *MEMORY[0x277D85DE8];
  v6 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [MEMORY[0x277CCABB0] numberWithBool:mutedCopy];
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_20D9BF000, v6, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayer isMuted update: %@", &v8, 0x16u);
  }

  [(HFCameraPlaybackEngine *)self setPrefersAudioEnabled:mutedCopy ^ 1];
}

- (void)clipPlayerDidPlayToEndTime:(id)time
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    selfCopy3 = self;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received clipPlayerDidPlayToEndTime", &v16, 0xCu);
  }

  notificationCenterClipUUID = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];

  if (notificationCenterClipUUID)
  {
    cameraClips = [(HFCameraPlaybackEngine *)self cameraClips];
    firstObject = [cameraClips firstObject];

    dateOfOccurrence = [firstObject dateOfOccurrence];
    v9 = HFLogForCategory(0x17uLL);
    v10 = v9;
    if (dateOfOccurrence)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier = [firstObject uniqueIdentifier];
        v16 = 138412802;
        selfCopy3 = self;
        v18 = 2112;
        v19 = dateOfOccurrence;
        v20 = 2112;
        v21 = uniqueIdentifier;
        _os_log_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_DEFAULT, "(NC) Playback engine: %@ restarting clip playback at start date:%@ clipUUID:%@.", &v16, 0x20u);
      }

      v12 = [HFCameraPlaybackPosition clipPositionWithDate:dateOfOccurrence inClip:firstObject];
      [(HFCameraPlaybackEngine *)self setPlaybackPosition:v12];

      [(HFCameraPlaybackEngine *)self setWantsToPlay:1];
    }

    else
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        notificationCenterClipUUID2 = [(HFCameraPlaybackEngine *)self notificationCenterClipUUID];
        v16 = 138412546;
        selfCopy3 = self;
        v18 = 2112;
        v19 = notificationCenterClipUUID2;
        _os_log_error_impl(&dword_20D9BF000, v10, OS_LOG_TYPE_ERROR, "(NC) Playback engine: %@ failed to find start date for notificationCenterClipUUID:%@. This should never happen.", &v16, 0x16u);
      }

      v14 = +[HFCameraPlaybackPosition livePosition];
      [(HFCameraPlaybackEngine *)self setPlaybackPosition:v14];

      [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
    }
  }

  else
  {
    v13 = +[HFCameraPlaybackPosition livePosition];
    [(HFCameraPlaybackEngine *)self setPlaybackPosition:v13];

    [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1 rebuildClipPlayerIfNeeded:0];
  }
}

- (void)streamControllerStateDidUpdate:(id)update
{
  v12 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  v5 = HFLogForCategory(0x1CuLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [updateCopy debugDescription];
    v8 = 138412546;
    selfCopy = self;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&dword_20D9BF000, v5, OS_LOG_TYPE_DEFAULT, "Playback engine: %@ received liveStreamController state update: %@", &v8, 0x16u);
  }

  liveCameraSource = [updateCopy liveCameraSource];
  [(HFCameraPlaybackEngine *)self setLiveCameraSource:liveCameraSource];

  [(HFCameraPlaybackEngine *)self _updatePlaybackStateNotifyingObservers:1];
}

- (id)timelineStateDescription
{
  v2 = self->_timelineState - 1;
  if (v2 > 5)
  {
    return @"TimelineStateUnknown";
  }

  else
  {
    return off_277E00A80[v2];
  }
}

- (id)timeControlStatusDescription
{
  timeControlStatus = self->_timeControlStatus;
  v3 = @"TimeControlStatusPaused";
  if (timeControlStatus == 1)
  {
    v3 = @"TimeControlStatusWaitingToPlay";
  }

  if (timeControlStatus == 2)
  {
    return @"TimeControlStatusPlaying";
  }

  else
  {
    return v3;
  }
}

- (id)engineModeDescription
{
  if (self->_engineMode)
  {
    return @"EngineModeClipPlayer";
  }

  else
  {
    return @"EngineModeLiveStream";
  }
}

- (id)shortDebugDescription
{
  v3 = MEMORY[0x277CCACA8];
  engineModeDescription = [(HFCameraPlaybackEngine *)self engineModeDescription];
  timeControlStatusDescription = [(HFCameraPlaybackEngine *)self timeControlStatusDescription];
  timelineStateDescription = [(HFCameraPlaybackEngine *)self timelineStateDescription];
  v7 = [v3 stringWithFormat:@"%@ %@ - %@ - %@", self, engineModeDescription, timeControlStatusDescription, timelineStateDescription];

  return v7;
}

- (BOOL)isFirstEventOfTheDay:(id)day
{
  dayCopy = day;
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  v6 = [eventCache isFirstEventOfTheDay:dayCopy];

  return v6;
}

- (id)firstOfTheDayClipForDate:(id)date
{
  dateCopy = date;
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  v6 = [eventCache firstOfTheDayClipForDate:dateCopy];

  return v6;
}

- (id)findClipPositionForDate:(id)date
{
  dateCopy = date;
  v5 = objc_opt_class();
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  clips = [eventCache clips];
  v8 = [v5 findClipPositionForDate:dateCopy inEvents:clips options:1];

  return v8;
}

- (id)findClipPositionForDate:(id)date options:(unint64_t)options
{
  dateCopy = date;
  v7 = objc_opt_class();
  eventCache = [(HFCameraPlaybackEngine *)self eventCache];
  events = [eventCache events];
  v10 = [v7 findClipPositionForDate:dateCopy inEvents:events options:options];

  return v10;
}

+ (id)findClipPositionForDate:(id)date inEvents:(id)events options:(unint64_t)options
{
  dateCopy = date;
  eventsCopy = events;
  v10 = [self hf_indexOfClipForDate:dateCopy inEvents:eventsCopy enumerationOptions:0 searchOptions:options];
  v11 = 0;
  if (v10 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [eventsCopy objectAtIndexedSubscript:v10];
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke;
    v18 = &unk_277E00A38;
    v19 = v12;
    v20 = dateCopy;
    v13 = v12;
    __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke(&v15);
    v11 = [HFCameraClipPosition positionWithEvent:v13 offset:v15, v16, v17, v18];
  }

  return v11;
}

void __67__HFCameraPlaybackEngine_findClipPositionForDate_inEvents_options___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) hf_dateInterval];
  v3 = [v2 hf_searchResultForDate:*(a1 + 40)];

  if (v3 == 1)
  {
    v5 = *(a1 + 40);
    v6 = [*(a1 + 32) dateOfOccurrence];
    [v5 timeIntervalSinceDate:v6];
  }

  else if (v3 == 2)
  {
    v4 = *(a1 + 32);

    objc_msgSend_duration(v4);
  }
}

+ (unint64_t)hf_indexOfClipForDate:(id)date inEvents:(id)events enumerationOptions:(unint64_t)options searchOptions:(unint64_t)searchOptions
{
  dateCopy = date;
  eventsCopy = events;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __90__HFCameraPlaybackEngine_hf_indexOfClipForDate_inEvents_enumerationOptions_searchOptions___block_invoke;
  v15[3] = &unk_277E00A60;
  v17 = eventsCopy;
  searchOptionsCopy = searchOptions;
  v16 = dateCopy;
  v11 = eventsCopy;
  v12 = dateCopy;
  v13 = [v11 indexOfObjectWithOptions:options passingTest:v15];

  return v13;
}

BOOL __90__HFCameraPlaybackEngine_hf_indexOfClipForDate_inEvents_enumerationOptions_searchOptions___block_invoke(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v7 = [a2 hf_dateInterval];
  v8 = [v7 hf_searchResultForDate:*(a1 + 32)];

  if (v8 == 1)
  {
    return 1;
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    return v8 == 0;
  }

  if ((v10 & 2) == 0)
  {
    return 0;
  }

  if (v8)
  {
    if (([*(a1 + 40) count] - 1) == a3)
    {
      return 1;
    }

    v11 = [*(a1 + 40) objectAtIndexedSubscript:a3 + 1];
    v12 = [v11 hf_dateInterval];
    v13 = [v12 hf_searchResultForDate:*(a1 + 32)];

    return !v13;
  }

  result = 0;
  *a4 = 1;
  return result;
}

- (void)_resetBatchedRecordingEventsTimer
{
  batchedRecordingEventsTimer = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];

  if (batchedRecordingEventsTimer)
  {
    batchedRecordingEventsTimer2 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    isRunning = [batchedRecordingEventsTimer2 isRunning];

    if ((isRunning & 1) == 0)
    {
      batchedRecordingEventsTimer3 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
      [batchedRecordingEventsTimer3 resume];
    }

    batchedRecordingEventsTimer4 = [(HFCameraPlaybackEngine *)self batchedRecordingEventsTimer];
    [batchedRecordingEventsTimer4 cancel];

    [(HFCameraPlaybackEngine *)self setBatchedRecordingEventsTimer:0];
  }
}

- (void)dealloc
{
  v15 = *MEMORY[0x277D85DE8];
  [(HFCameraPlaybackEngine *)self setIsDeallocating:1];
  v4 = HFLogForCategory(0x17uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412546;
    selfCopy = self;
    v13 = 2112;
    v14 = v5;
    _os_log_impl(&dword_20D9BF000, v4, OS_LOG_TYPE_DEFAULT, "%@ : %@", buf, 0x16u);
  }

  if (+[HFUtilities isInternalTest])
  {
    clipPlayer = self->_clipPlayer;
    self->_clipPlayer = 0;

    cameraProfile = +[HFCameraTimelapseVideoProvider sharedProvider];
    [cameraProfile waitUntilAllDownloadsAreFinished];
  }

  else
  {
    cameraProfile = [(HFCameraPlaybackEngine *)self cameraProfile];
    recordingEventManager = [cameraProfile recordingEventManager];
    [recordingEventManager removeObserver:self];
  }

  v9 = +[HFCameraTimelapseVideoProvider sharedProvider];
  [v9 setTimelapseVideoDownloader:0];

  v10.receiver = self;
  v10.super_class = HFCameraPlaybackEngine;
  [(HFCameraPlaybackEngine *)&v10 dealloc];
}

- (HMCameraClipManager)clipManager
{
  WeakRetained = objc_loadWeakRetained(&self->_clipManager);

  return WeakRetained;
}

@end