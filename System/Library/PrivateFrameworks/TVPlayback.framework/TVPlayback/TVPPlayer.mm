@interface TVPPlayer
+ (BOOL)automaticallyNotifiesObserversForKey:(id)key;
+ (id)_audioSelectionCriteriaForPreferredAudioLanguageCodes:(id)codes prefersAudioDescriptions:(BOOL)descriptions;
+ (id)_newAVQueuePlayer;
+ (id)_stringForAudioFormat:(int64_t)format;
+ (int64_t)_audioFormatForFormatDescription:(opaqueCMFormatDescription *)description;
+ (int64_t)tvpVideoRangeForVideoDynamicRange:(int)range;
+ (void)_configureAutoSubtitlesForPlayer:(id)player;
+ (void)_playerDidBecomeInactive:(id)inactive;
+ (void)_playerWillBecomeActive:(id)active;
+ (void)_updateAudioSelectionCriteriaForAVQueuePlayer:(id)player isInterstitialPlayer:(BOOL)interstitialPlayer preferredAudioLanguageCodes:(id)codes prefersAudioDescriptions:(BOOL)descriptions;
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampInfiniteTimeToSeekableRange:(SEL)range;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampedElapsedTimeForTime:(SEL)time duration:(id *)duration;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampedSceneTimeForPlayerTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentMediaItemForwardPlaybackEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentMediaItemReversePlaybackEndTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_estimatedCMTimeForPlaybackDate:(SEL)date referenceTime:(id)time referenceDate:(id *)referenceDate;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationCMTime;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)elapsedCMTime;
- (BOOL)_currentPlayerItemCanScanAtRate:(double)rate;
- (BOOL)_currentPlayerItemContainsDates;
- (BOOL)_getStringForTitleLabel:(id *)label subtitleLabel:(id *)subtitleLabel forMediaItem:(id)item;
- (BOOL)_integratedTimelineEnabled;
- (BOOL)_interstitialInProgress;
- (BOOL)_isNetworkAvailable;
- (BOOL)allowsExternalPlayback;
- (BOOL)currentMediaItemPreparedForLoading;
- (BOOL)currentMediaItemSupportsScrubbingUsingPlayer;
- (BOOL)hasInterstitials;
- (BOOL)limitReadAhead;
- (BOOL)muted;
- (BOOL)playerItem:(id)item shouldSeekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after;
- (BOOL)seeking;
- (CGSize)currentMediaItemPresentationSize;
- (CGSize)iFramePrefetchMaxSize;
- (CGSize)preferredMaximumResolution;
- (CGSize)preferredMaximumResolutionForExpensiveNetworks;
- (NSArray)audioOptions;
- (NSArray)subtitleOptions;
- (NSDate)playbackDate;
- (TVPASyncPlaybackDelegate)asyncDelegate;
- (TVPAudioOption)selectedAudioOption;
- (TVPDateRange)seekableDateRange;
- (TVPMediaItem)currentMediaItem;
- (TVPMediaItemLoader)currentMediaItemLoader;
- (TVPPlaybackDelegate)delegate;
- (TVPPlayer)initWithName:(id)name;
- (TVPSubtitleOption)selectedSubtitleOption;
- (TVPTimeRange)bufferedTimeRange;
- (TVPTimeRange)seekableTimeRange;
- (double)cachedElapsedTime;
- (double)duration;
- (double)elapsedTime;
- (double)forwardPlaybackEndTime;
- (double)rate;
- (double)reversePlaybackEndTime;
- (float)volume;
- (id)AVQueuePlayerCreateIfNecessary:(BOOL)necessary;
- (id)_activePlayer;
- (id)_activePlayerItem;
- (id)_assetTracksOfType:(id)type fromTracks:(id)tracks;
- (id)_bitRateString:(double)string;
- (id)_currentDateFromPlayerItem:(id)item;
- (id)_descriptionForVideoRange:(int64_t)range;
- (id)_descriptionForVideoResolutionClass:(int64_t)class;
- (id)_estimatedPlaybackDateForCMTime:(id *)time;
- (id)_soundCheckNormalizationForMediaItem:(id)item;
- (id)_statesThatReturnAVPlayerTime;
- (id)_statesThatReturnSeekTime;
- (id)_statesThatReturnStartTime;
- (id)accessLog;
- (id)addBoundaryTimeObserverForTimes:(id)times withHandler:(id)handler;
- (id)addElapsedTimeObserver:(id)observer;
- (id)beginCoordinatedPlaybackSuspensionWithReason:(id)reason;
- (id)errorLog;
- (id)playbackCoordinator:(id)coordinator identifierForPlayerItem:(id)item;
- (id)playbackErrorFromError:(id)error forMediaItem:(id)item;
- (id)selectedSubtitleOptionWithNoOffOrAutoOption;
- (id)timedMetadata;
- (int)_videoTrackIDFromTracks:(id)tracks;
- (int64_t)_activePlayerTimeControlStatus;
- (int64_t)currentScanMode;
- (int64_t)externalPlaybackType;
- (int64_t)loadingSubstate;
- (void)_addBoundaryTimeObserversToAVQueuePlayer:(id)player;
- (void)_addBoundaryTimeObserversToIntegratedTimeline:(id)timeline;
- (void)_addHighFrequencyTimeObserverIfNecessary;
- (void)_addObserversForMediaItem:(id)item;
- (void)_addObserversForMediaItemLoader:(id)loader;
- (void)_addObserversForPlayerItem:(id)item;
- (void)_addObserversForPlaylist:(id)playlist;
- (void)_addObserversToAVQueuePlayer:(id)player;
- (void)_addObserversToInterstitialEventMonitor:(id)monitor;
- (void)_addPeriodicTimeObserverToAVQueuePlayer:(id)player;
- (void)_addPeriodicTimeObserverToIntegratedTimeline:(id)timeline;
- (void)_audioRouteChanged:(id)changed;
- (void)_avPlayer:(id)player timeControlStatusDidChangeTo:(int64_t)to oldStatusNum:(id)num;
- (void)_avPlayerRateDidChange:(id)change;
- (void)_avPlayerRateDidChangeTo:(float)to;
- (void)_configureSoundCheckForPlayerItem:(id)item tracks:(id)tracks;
- (void)_currentMediaItemMetadataDidChange:(id)change;
- (void)_currentPlayerItemAccessLogDidChange:(id)change;
- (void)_currentPlayerItemBufferEmptyDidChangeTo:(BOOL)to;
- (void)_currentPlayerItemBufferFullDidChangeTo:(BOOL)to;
- (void)_currentPlayerItemDidChangeTo:(id)to;
- (void)_currentPlayerItemDidFailToPlayToEnd:(id)end;
- (void)_currentPlayerItemDidHitBeginningOrEnd:(id)end;
- (void)_currentPlayerItemDidStall:(id)stall;
- (void)_currentPlayerItemErrorLogDidChange:(id)change;
- (void)_currentPlayerItemHasVideoDidChangeTo:(BOOL)to;
- (void)_currentPlayerItemLikelyToKeepUpDidChangeTo:(BOOL)to;
- (void)_currentPlayerItemPresentationSizeDidChangeTo:(CGSize)to;
- (void)_currentPlayerItemReachedTimeToPauseBuffering:(id)buffering;
- (void)_currentPlayerItemReachedTimeToPausePlayback:(id)playback;
- (void)_currentPlayerItemSeekableTimeRangesDidChangeTo:(id)to;
- (void)_currentPlayerItemStatusDidChangeTo:(int64_t)to from:(int64_t)from;
- (void)_currentPlayerItemTimedMetadataDidChange;
- (void)_currentPlayerItemTracksDidChangeTo:(id)to from:(id)from;
- (void)_currentPlayerItemWillChange;
- (void)_currentTimeDidChangeTo:(id *)to;
- (void)_durationDidChangeTo:(id *)to isChangeFromTimeline:(BOOL)timeline;
- (void)_enqueueAsyncDelegateOperation:(id)operation;
- (void)_externalPlaybackActiveDidChange;
- (void)_integratedTimelineSnapshotsOutOfSync:(id)sync;
- (void)_logAccessLogEvents;
- (void)_logExternalPlaybackType;
- (void)_mediaItemLoader:(id)loader stateDidChangeTo:(id)to;
- (void)_notifyListenersOfElapsedTimeChange:(id *)change playbackDate:(id)date dueToTimeJump:(BOOL)jump;
- (void)_notifyOfBoundaryCrossingBetweenPreviousTime:(id *)time updatedTime:(id *)updatedTime;
- (void)_notifyOfMediaSelectionOptionChanges;
- (void)_outputObscuredDidChangeTo:(BOOL)to;
- (void)_playerItemMediaSelectionDidChange:(id)change;
- (void)_playerMutedDidChange;
- (void)_playlistCurrentMediaItemDidChangeWithContext:(id)context;
- (void)_playlistCurrentMediaItemWillChangeWithContext:(id)context;
- (void)_playlistEndActionDidChange;
- (void)_playlistNextMediaItemDidChangeWithContext:(id)context;
- (void)_populatePlayerItem:(id)item withMetadataFromMediaItem:(id)mediaItem;
- (void)_postCurrentMediaItemDidChangeNotificationWithDirection:(id)direction reason:(id)reason didHitBeginningOfPlaylist:(BOOL)playlist didHitEndOfPlaylist:(BOOL)ofPlaylist;
- (void)_postCurrentMediaItemWillChangeNotificationWithDirection:(id)direction reason:(id)reason didHitBeginningOfPlaylist:(BOOL)playlist didHitEndOfPlaylist:(BOOL)ofPlaylist;
- (void)_processNextAsyncDelegateOperation;
- (void)_registerStateMachineHandlers;
- (void)_removeBoundaryTimeObserversFromAVQueuePlayer:(id)player;
- (void)_removeBoundaryTimeObserversFromIntegratedTimeline:(id)timeline;
- (void)_removeHighFrequencyTimeObserverIfNecessary;
- (void)_removeObserversForMediaItem:(id)item;
- (void)_removeObserversForMediaItemLoader:(id)loader;
- (void)_removeObserversForPlayerItem:(id)item;
- (void)_removeObserversForPlaylist:(id)playlist;
- (void)_removeObserversFromAVQueuePlayer:(id)player;
- (void)_removeObserversFromInterstitialEventMonitor:(id)monitor;
- (void)_removePeriodicTimeObserverFromAVQueuePlayer:(id)player;
- (void)_removePeriodicTimeObserverFromIntegratedTimeline:(id)timeline;
- (void)_resetAndReselectAudioOptions;
- (void)_screenRecordingStateDidChange:(id)change;
- (void)_selectMediaArray:(id)array withItem:(id)item;
- (void)_setSelectedSubtitleOption:(id)option userOverridesSystemSubtitleSettings:(BOOL)settings;
- (void)_setState:(id)state updatedRate:(double)rate reason:(id)reason notifyListeners:(BOOL)listeners;
- (void)_subtitleSettingsDidChange;
- (void)_updateAVPlayerActionAtItemEnd;
- (void)_updateCurrentMediaItemAudioInfoForPlayerItem:(id)item tracks:(id)tracks;
- (void)_updateCurrentMediaItemVideoRangeForTracks:(id)tracks;
- (void)_updateIsLiveForElapsedTime:(id *)time;
- (void)_updateSelectedSubtitleForFilteredOptions:(id)options;
- (void)_updateVideoViewsWithAVQueuePlayer:(id)player;
- (void)addWeakReferenceToVideoView:(id)view;
- (void)avKitDidFinishScanning;
- (void)avKitSeekDidComplete;
- (void)changeMediaInDirection:(int64_t)direction reason:(id)reason ignoreDelegate:(BOOL)delegate;
- (void)changeToMediaAtIndex:(unint64_t)index reason:(id)reason ignoreDelegate:(BOOL)delegate;
- (void)continueLoadingCurrentItem;
- (void)dealloc;
- (void)endCoordinatedPlaybackSuspension:(id)suspension;
- (void)integratedTimeline:(id)timeline willSeekToTime:(id *)time currentTime:(id *)currentTime;
- (void)invalidate;
- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)pause;
- (void)pauseIgnoringDelegate:(BOOL)delegate;
- (void)pauseWithAVKitCompletion:(id)completion;
- (void)pauseWithVolumeRampDuration:(double)duration;
- (void)play;
- (void)playIgnoringDelegate:(BOOL)delegate;
- (void)playWithAVKitCompletion:(id)completion;
- (void)playWithVolumeRampDuration:(double)duration;
- (void)playerDidHitBeginningOrEnd;
- (void)removeBoundaryTimeObserverWithToken:(id)token;
- (void)removeElapsedTimeObserverWithToken:(id)token;
- (void)removeWeakReferenceToVideoView:(id)view;
- (void)restartPlaybackWithState:(id)state;
- (void)scanWithRate:(double)rate withAVKitCompletion:(id)completion;
- (void)selectMediaArray:(id)array;
- (void)setAVQueuePlayer:(id)player;
- (void)setAllowsCellularUsage:(BOOL)usage;
- (void)setAllowsConstrainedNetworkUsage:(BOOL)usage;
- (void)setAllowsExternalPlayback:(BOOL)playback;
- (void)setCachedDuration:(id *)duration;
- (void)setCachedElapsedCMTime:(id *)time;
- (void)setCachedLoadedTimeRanges:(id)ranges;
- (void)setCachedSeekableTimeRanges:(id)ranges;
- (void)setChapterCollections:(id)collections;
- (void)setCurrentChapter:(id)chapter;
- (void)setCurrentChapterCollection:(id)collection;
- (void)setCurrentInterstitial:(id)interstitial;
- (void)setCurrentInterstitialCollection:(id)collection;
- (void)setCurrentMediaItem:(id)item;
- (void)setCurrentMediaItemHasDates:(BOOL)dates;
- (void)setCurrentMediaItemHasVideoContent:(BOOL)content;
- (void)setCurrentMediaItemInitialLoadingComplete:(BOOL)complete;
- (void)setCurrentMediaItemIsStreaming:(BOOL)streaming;
- (void)setCurrentMediaItemPresentationSize:(CGSize)size;
- (void)setCurrentPlayerItem:(id)item;
- (void)setElapsedTime:(double)time;
- (void)setElapsedTime:(double)time orPlaybackDate:(id)date withAVKitCompletion:(id)completion;
- (void)setElapsedTime:(double)time precise:(BOOL)precise;
- (void)setElapsedTime:(double)time seekPrecision:(id *)precision ignoreDelegate:(BOOL)delegate withAVKitCompletion:(id)completion;
- (void)setErrorBehavior:(int64_t)behavior;
- (void)setHighFrequencyElapsedTimeObserverBlock:(id)block;
- (void)setInteractive:(BOOL)interactive;
- (void)setInterstitialEventMonitor:(id)monitor;
- (void)setIsLive:(BOOL)live;
- (void)setLastTimeSentToAVKitImageHandler:(id *)handler;
- (void)setLimitReadAhead:(BOOL)ahead;
- (void)setLimitsBandwidthForCellularAccess:(BOOL)access;
- (void)setMaximumBitRate:(double)rate;
- (void)setMediaItemEndAction:(int64_t)action;
- (void)setMediaRemoteUpdatingEnabled:(BOOL)enabled;
- (void)setMuted:(BOOL)muted;
- (void)setPlaybackDate:(id)date withAVKitCompletion:(id)completion;
- (void)setPlaybackHUDString:(id)string;
- (void)setPlaylist:(id)playlist;
- (void)setPlaylistInternal:(id)internal;
- (void)setPostLoadingState:(id)state;
- (void)setPreferredForwardBufferDuration:(double)duration;
- (void)setPreferredMaximumResolution:(CGSize)resolution;
- (void)setPreferredMaximumResolutionForExpensiveNetworks:(CGSize)networks;
- (void)setPrefersSDRVideo:(BOOL)video;
- (void)setPreventsSleepDuringVideoPlayback:(BOOL)playback;
- (void)setRateUsedForPlayback:(double)playback;
- (void)setReportingCategory:(id)category;
- (void)setReportingValueWithNumber:(id)number forKey:(id)key;
- (void)setReportingValueWithString:(id)string forKey:(id)key;
- (void)setRespondsToRemoteControlEvents:(BOOL)events;
- (void)setSelectedAudioOption:(id)option;
- (void)setSendsPlayerReports:(BOOL)reports;
- (void)setStartTime:(id *)time;
- (void)setStartingSeekPrecision:(id *)precision;
- (void)setTimeAtStartOfSeek:(id *)seek;
- (void)setTimeBeingSeekedTo:(id *)to;
- (void)setUpdatesBookmarks:(BOOL)bookmarks;
- (void)setUpdatesMediaRemoteInfoAutomatically:(BOOL)automatically;
- (void)setVolume:(float)volume;
- (void)skipToNextChapterInDirection:(int64_t)direction;
- (void)stop;
- (void)stopWithVolumeRampDuration:(double)duration;
- (void)togglePlayPause;
- (void)updateAudioSelectionCriteria;
- (void)updateSubtitleOptions;
@end

@implementation TVPPlayer

+ (void)initialize
{
  if (initialize_onceToken_5 != -1)
  {
    +[TVPPlayer initialize];
  }
}

uint64_t __23__TVPPlayer_initialize__block_invoke()
{
  v0 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
  v1 = sActivePlayers;
  sActivePlayers = v0;

  v2 = dispatch_queue_create("TVPPlayer AVAudioSession management queue", 0);
  v3 = sAVAudioSessionQueue;
  sAVAudioSessionQueue = v2;

  v4 = os_log_create("com.apple.AppleTV.playback", "TVPPlayer");
  v5 = sPlayerLogObject;
  sPlayerLogObject = v4;

  v6 = MEMORY[0x277CE6598];

  return [v6 setSupportsSharedNetworkCoordination:0];
}

+ (BOOL)automaticallyNotifiesObserversForKey:(id)key
{
  keyCopy = key;
  if (automaticallyNotifiesObserversForKey__onceToken != -1)
  {
    +[TVPPlayer automaticallyNotifiesObserversForKey:];
  }

  if ([automaticallyNotifiesObserversForKey__keysToNotifyManually containsObject:keyCopy])
  {
    v5 = 0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = &OBJC_METACLASS___TVPPlayer;
    v5 = objc_msgSendSuper2(&v7, sel_automaticallyNotifiesObserversForKey_, keyCopy);
  }

  return v5;
}

uint64_t __50__TVPPlayer_automaticallyNotifiesObserversForKey___block_invoke()
{
  automaticallyNotifiesObserversForKey__keysToNotifyManually = [MEMORY[0x277CBEB98] setWithObjects:{@"playlist", @"currentMediaItem", @"currentMediaItemHasVideoContent", @"currentMediaItemIsStreaming", @"currentMediaItemPresentationSize", @"currentMediaItemHasDates", @"state", @"errorBehavior", @"interactive", @"rate", @"rateUsedForPlayback", @"elapsedTime", @"playbackDate", @"duration", @"muted", @"volume", @"bufferedTimeRange", @"seekableTimeRange", @"seekableDateRange", @"mediaItemEndAction", @"maximumBitRate", @"startPosition", @"accessLog", @"errorLog", @"playlistInternal", @"currentPlayerItem", @"cachedDuration", @"cachedLoadedTimeRanges", @"cachedSeekableTimeRanges", @"AVQueuePlayer", @"chapterCollections", @"currentChapterCollection", @"currentChapter", @"currentInterstitialCollection", @"currentInterstitial", @"audioOptions", @"subtitleOptions", @"selectedAudioOption", @"selectedSubtitleOption", @"currentMediaItemInitialLoadingComplete", @"preventsSleepDuringVideoPlayback", @"isLive", @"allowsExternalPlayback", 0}];

  return MEMORY[0x2821F96F8]();
}

+ (int64_t)tvpVideoRangeForVideoDynamicRange:(int)range
{
  if ((range - 1) > 9)
  {
    return 0;
  }

  else
  {
    return qword_26CF4C578[range - 1];
  }
}

+ (void)_playerWillBecomeActive:(id)active
{
  if (active)
  {
    sNeedsAVAudioSessionDeactivation = 0;
    [sActivePlayers addObject:?];
  }
}

+ (void)_playerDidBecomeInactive:(id)inactive
{
  inactiveCopy = inactive;
  if (inactiveCopy)
  {
    v3 = [sActivePlayers count];
    [sActivePlayers removeObject:inactiveCopy];
    if (v3)
    {
      if (![sActivePlayers count] && sShouldDeactivateAVAudioSession == 1)
      {
        sNeedsAVAudioSessionDeactivation = 1;
        v4 = dispatch_time(0, 1000000000);
        dispatch_after(v4, MEMORY[0x277D85CD0], &__block_literal_global_365);
      }
    }
  }
}

void __38__TVPPlayer__playerDidBecomeInactive___block_invoke()
{
  if (sNeedsAVAudioSessionDeactivation == 1)
  {
    sNeedsAVAudioSessionDeactivation = 0;
    dispatch_async(sAVAudioSessionQueue, &__block_literal_global_367);
  }
}

void __38__TVPPlayer__playerDidBecomeInactive___block_invoke_2()
{
  v0 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v0, OS_LOG_TYPE_DEFAULT, "Deactivating audio session since no players are active", buf, 2u);
  }

  v1 = [MEMORY[0x277CB83F8] sharedInstance];
  v5 = 0;
  [v1 setActive:0 error:&v5];
  v2 = v5;

  v3 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Done deactivating audio session", v4, 2u);
  }

  if (v2 && os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
  {
    __38__TVPPlayer__playerDidBecomeInactive___block_invoke_2_cold_1();
  }
}

- (TVPPlayer)initWithName:(id)name
{
  nameCopy = name;
  v49.receiver = self;
  v49.super_class = TVPPlayer;
  v5 = [(TVPPlayer *)&v49 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    v7 = *(v5 + 9);
    *(v5 + 9) = v6;

    v8 = +[TVPPlaybackState stopped];
    v9 = *(v5 + 10);
    *(v5 + 10) = v8;

    *(v5 + 11) = 0;
    *(v5 + 12) = 0x3FF0000000000000;
    *(v5 + 12) = 1065353216;
    *(v5 + 13) = 0;
    *(v5 + 14) = 0x47EFFFFFE0000000;
    v5[12] = 1;
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v11 = *(v5 + 27);
    *(v5 + 27) = dictionary;

    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    v13 = *(v5 + 28);
    *(v5 + 28) = dictionary2;

    v14 = MEMORY[0x277CC0898];
    *(v5 + 744) = *MEMORY[0x277CC0898];
    v15 = MEMORY[0x277CC08F0];
    *(v5 + 95) = *(v14 + 16);
    v47 = *v15;
    *(v5 + 45) = *v15;
    v16 = *(v15 + 2);
    *(v5 + 92) = v16;
    *(v5 + 600) = v47;
    *(v5 + 77) = v16;
    *(v5 + 80) = v16;
    *(v5 + 39) = v47;
    *(v5 + 48) = 0;
    v17 = +[TVPPlaybackState playing];
    v18 = *(v5 + 24);
    *(v5 + 24) = v17;

    v19 = +[TVPPlaybackState playing];
    v20 = *(v5 + 25);
    *(v5 + 25) = v19;

    *(v5 + 42) = v47;
    *(v5 + 86) = v16;
    *(v5 + 696) = v47;
    *(v5 + 89) = v16;
    v5[32] = 1;
    v48 = *MEMORY[0x277CBF3A8];
    *(v5 + 536) = *MEMORY[0x277CBF3A8];
    v5[27] = 1;
    v21 = [[TVPPlayerBookmarkMonitor alloc] initWithPlayer:v5];
    v22 = *(v5 + 33);
    *(v5 + 33) = v21;

    v5[28] = 1;
    v23 = [[TVPPlayerReporter alloc] initWithPlayer:v5];
    v24 = *(v5 + 34);
    *(v5 + 34) = v23;

    *(v5 + 15) = 1;
    v5[41] = 0;
    v5[17] = 0;
    v5[25] = 0;
    *(v5 + 584) = v48;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v26 = *(v5 + 36);
    *(v5 + 36) = weakObjectsHashTable;

    v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v28 = *(v5 + 37);
    *(v5 + 37) = v27;

    v29 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v30 = *(v5 + 54);
    *(v5 + 54) = v29;

    *(v5 + 20) = 0;
    *(v5 + 552) = v48;
    *(v5 + 568) = v48;
    v5[31] = 0;
    v5[22] = 1;
    v31 = dispatch_queue_create("com.apple.TVPlayback.AVAssetTrackInspectionQueue", 0);
    v32 = *(v5 + 43);
    *(v5 + 43) = v31;

    v33 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v34 = *(v5 + 44);
    *(v5 + 44) = v33;

    v5[23] = 1;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    v36 = *MEMORY[0x277CB8210];
    mEMORY[0x277CB83F8] = [MEMORY[0x277CB83F8] sharedInstance];
    [defaultCenter addObserver:v5 selector:sel__audioRouteChanged_ name:v36 object:mEMORY[0x277CB83F8]];

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 addObserver:v5 selector:sel__screenRecordingStateDidChange_ name:*MEMORY[0x277CD6340] object:0];

    v39 = objc_alloc(MEMORY[0x277CCAB68]);
    v40 = objc_opt_class();
    v41 = initWithName__instanceNumber++;
    v42 = [v39 initWithFormat:@"%@ %ld", v40, v41];
    v43 = v42;
    if (nameCopy)
    {
      [v42 appendFormat:@" (%@)", nameCopy];
    }

    v44 = [[TVPStateMachine alloc] initWithName:v43 initialState:@"Stopped" mode:0];
    v45 = *(v5 + 22);
    *(v5 + 22) = v44;

    [*(v5 + 22) setLogObject:sPlayerLogObject];
    [v5 _registerStateMachineHandlers];
    [*(v5 + 22) setShouldAcceptEvents:1];
  }

  return v5;
}

- (void)dealloc
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    stateMachine = self->_stateMachine;
    v5 = v3;
    name = [(TVPStateMachine *)stateMachine name];
    *buf = 138412290;
    v16 = name;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "%@ deallocated", buf, 0xCu);
  }

  if (!self->_invalidated)
  {
    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE648];
    v9 = MEMORY[0x277CCACA8];
    name2 = [(TVPStateMachine *)self->_stateMachine name];
    v11 = [v9 stringWithFormat:@"Instance of TVPPlayer with name [%@] was deallocated without being invalidated", name2];
    v12 = [v7 exceptionWithName:v8 reason:v11 userInfo:0];
    v13 = v12;

    objc_exception_throw(v12);
  }

  v14.receiver = self;
  v14.super_class = TVPPlayer;
  [(TVPPlayer *)&v14 dealloc];
}

- (void)invalidate
{
  v18 = *MEMORY[0x277D85DE8];
  if (![(TVPPlayer *)self invalidated])
  {
    v3 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      stateMachine = self->_stateMachine;
      v5 = v3;
      name = [(TVPStateMachine *)stateMachine name];
      *buf = 138412290;
      v17 = name;
      _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "%@ invalidated", buf, 0xCu);
    }

    [(TVPPlayer *)self setInvalidated:1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self];

    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __23__TVPPlayer_invalidate__block_invoke;
    v15[3] = &unk_279D7BDC8;
    v15[4] = self;
    v8 = MEMORY[0x26D6B0400](v15);
    stateMachine = [(TVPPlayer *)self stateMachine];
    eventCount = [stateMachine eventCount];

    if (eventCount)
    {
      v11 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "During invalidation, deferring cleanup to give stack a chance to unwind", buf, 2u);
      }

      stateMachine2 = [(TVPPlayer *)self stateMachine];
      [stateMachine2 setShouldAcceptEvents:0];

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __23__TVPPlayer_invalidate__block_invoke_397;
      block[3] = &unk_279D7C1B8;
      block[4] = self;
      v14 = v8;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }

    else
    {
      v8[2](v8);
    }
  }
}

void __23__TVPPlayer_invalidate__block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) stateMachine];
  v5 = @"Being invalidated key";
  v6[0] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  [v2 postEvent:@"Set playlist" withContext:0 userInfo:v3];

  v4 = [*(a1 + 32) stateMachine];
  [v4 deregisterHandlers];
}

uint64_t __23__TVPPlayer_invalidate__block_invoke_397(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  [v2 setShouldAcceptEvents:1];

  v3 = *(*(a1 + 40) + 16);

  return v3();
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v74 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (__TVPSettingsPreferVideoDescriptionsKVOContext == context)
  {
    [(TVPPlayer *)self _preferVideoDescriptionsSettingDidChange];
    goto LABEL_58;
  }

  if (__TVPSettingsSubtitleDisplayTypeKVOContext == context || __TVPSettingsPreferredSubtitleLanguageDidChangeKVOContext == context || __TVPSettingsPreferSDHOverRegularSubtitlesKVOContext == context)
  {
    [(TVPPlayer *)self _subtitleSettingsDidChange];
    goto LABEL_58;
  }

  if (__TVPMediaItemLoaderStateKVOContext_0 == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    [(TVPPlayer *)self _mediaItemLoader:objectCopy stateDidChangeTo:playlist];
LABEL_57:

    goto LABEL_58;
  }

  if (__TVPPlaylistEndActionKVOContext == context)
  {
    [(TVPPlayer *)self _playlistEndActionDidChange];
    goto LABEL_58;
  }

  if (__AVPlayerMutedKVOContext == context)
  {
    [(TVPPlayer *)self _playerMutedDidChange];
    goto LABEL_58;
  }

  if (__TVPPlaylistCurrentMediaItemKVOContext == context)
  {
    v15 = [changeCopy objectForKey:*MEMORY[0x277CCA2F8]];
    bOOLValue = [v15 BOOLValue];

    if (bOOLValue)
    {
      playlist = [(TVPPlayer *)self playlist];
      changeContext = [playlist changeContext];
      [(TVPPlayer *)self _playlistCurrentMediaItemWillChangeWithContext:changeContext];
LABEL_56:

      goto LABEL_57;
    }

    playlist = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    null = [MEMORY[0x277CBEB68] null];

    if (playlist == null)
    {

      playlist = 0;
    }

    changeContext = [(TVPPlayer *)self playlist];
    v17ChangeContext = [changeContext changeContext];
    [(TVPPlayer *)self _playlistCurrentMediaItemDidChangeWithContext:v17ChangeContext];
LABEL_42:

    goto LABEL_56;
  }

  if (__TVPPlaylistNextMediaItemKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    null2 = [MEMORY[0x277CBEB68] null];

    if (playlist == null2)
    {

      playlist = 0;
    }

    changeContext = [(TVPPlayer *)self playlist];
    v17ChangeContext = [changeContext changeContext];
    [(TVPPlayer *)self _playlistNextMediaItemDidChangeWithContext:v17ChangeContext];
    goto LABEL_42;
  }

  if (__AVPlayerItemStatusKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    changeContext = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    if (!playlist || ([MEMORY[0x277CBEB68] null], v21 = objc_claimAutoreleasedReturnValue(), v21, playlist == v21))
    {
      integerValue = 0;
    }

    else
    {
      integerValue = [playlist integerValue];
    }

    if (!changeContext || ([MEMORY[0x277CBEB68] null], v24 = objc_claimAutoreleasedReturnValue(), v24, changeContext == v24))
    {
      integerValue2 = 0;
    }

    else
    {
      integerValue2 = [changeContext integerValue];
    }

    [(TVPPlayer *)self _currentPlayerItemStatusDidChangeTo:integerValue2 from:integerValue];
    goto LABEL_56;
  }

  if (__AVPlayerItemDurationKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    *buf = *MEMORY[0x277CC0898];
    v73 = *(MEMORY[0x277CC0898] + 16);
    if (playlist)
    {
      null3 = [MEMORY[0x277CBEB68] null];

      if (playlist != null3)
      {
        objc_msgSend_CMTimeValue(playlist);
      }
    }

    v70 = *buf;
    v71 = v73;
    [(TVPPlayer *)self _durationDidChangeTo:&v70 isChangeFromTimeline:0];
    goto LABEL_57;
  }

  if (__AVPlayerItemHasVideoContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if (!playlist || ([MEMORY[0x277CBEB68] null], v26 = objc_claimAutoreleasedReturnValue(), v26, playlist == v26))
    {
      bOOLValue2 = 0;
    }

    else
    {
      bOOLValue2 = [playlist BOOLValue];
    }

    [(TVPPlayer *)self _currentPlayerItemHasVideoDidChangeTo:bOOLValue2];
    goto LABEL_57;
  }

  if (__AVPlayerItemPresentationSizeContent == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    *buf = *MEMORY[0x277CBF3A8];
    if (playlist)
    {
      null4 = [MEMORY[0x277CBEB68] null];

      if (playlist != null4)
      {
        [playlist getValue:buf size:16];
      }
    }

    [(TVPPlayer *)self _currentPlayerItemPresentationSizeDidChangeTo:*buf, *&buf[8]];
    goto LABEL_57;
  }

  if (__AVPlayerItemLikelyToKeepUpKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if (!playlist || ([MEMORY[0x277CBEB68] null], v29 = objc_claimAutoreleasedReturnValue(), v29, playlist == v29))
    {
      bOOLValue3 = 0;
    }

    else
    {
      bOOLValue3 = [playlist BOOLValue];
    }

    [(TVPPlayer *)self _currentPlayerItemLikelyToKeepUpDidChangeTo:bOOLValue3];
    goto LABEL_57;
  }

  if (__AVPlayerItemBufferFullKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if (!playlist || ([MEMORY[0x277CBEB68] null], v31 = objc_claimAutoreleasedReturnValue(), v31, playlist == v31))
    {
      bOOLValue4 = 0;
    }

    else
    {
      bOOLValue4 = [playlist BOOLValue];
    }

    [(TVPPlayer *)self _currentPlayerItemBufferFullDidChangeTo:bOOLValue4];
    goto LABEL_57;
  }

  if (__AVPlayerItemBufferEmptyKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    if (!playlist || ([MEMORY[0x277CBEB68] null], v33 = objc_claimAutoreleasedReturnValue(), v33, playlist == v33))
    {
      bOOLValue5 = 0;
    }

    else
    {
      bOOLValue5 = [playlist BOOLValue];
    }

    [(TVPPlayer *)self _currentPlayerItemBufferEmptyDidChangeTo:bOOLValue5];
    goto LABEL_57;
  }

  if (__AVPlayerCurrentItemKVOContext == context)
  {
    v35 = [changeCopy objectForKey:*MEMORY[0x277CCA2F8]];
    playlist = v35;
    if (v35 && [v35 BOOLValue])
    {
      [(TVPPlayer *)self _currentPlayerItemWillChange];
      goto LABEL_57;
    }

    changeContext = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    null5 = [MEMORY[0x277CBEB68] null];

    if (changeContext == null5)
    {

      changeContext = 0;
    }

    [(TVPPlayer *)self _currentPlayerItemDidChangeTo:changeContext];
    goto LABEL_56;
  }

  if (__AVInterstitialPlayerCurrentItemKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
    null6 = [MEMORY[0x277CBEB68] null];

    if (playlist == null6)
    {

      playlist = 0;
    }

    v38 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = playlist;
      _os_log_impl(&dword_26CEDD000, v38, OS_LOG_TYPE_DEFAULT, "Interstitial player item did change to %@", buf, 0xCu);
    }

    if (playlist)
    {
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __60__TVPPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke;
      v69[3] = &unk_279D7BDC8;
      v69[4] = self;
      TVPPerformBlockOnMainThreadIfNeeded(v69);
    }

    goto LABEL_57;
  }

  if (__AVInterstitialPlayerItemStatusKVOContext == context)
  {
    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    v40 = !playlist || ([MEMORY[0x277CBEB68] null], v39 = changeContext = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    if (!changeContext || ([MEMORY[0x277CBEB68] null], v44 = objc_claimAutoreleasedReturnValue(), v44, changeContext == v44))
    {
      integerValue3 = 0;
    }

    else
    {
      integerValue3 = [changeContext integerValue];
    }

    v46 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v47 = @"AVPlayerItemStatusFailed";
      if (integerValue3 == 1)
      {
        v47 = @"AVPlayerItemStatusReadyToPlay";
      }

      v48 = @"AVPlayerItemStatusUnknown";
      if (integerValue3)
      {
        v48 = v47;
      }

      *buf = 138412290;
      *&buf[4] = v48;
      _os_log_impl(&dword_26CEDD000, v46, OS_LOG_TYPE_DEFAULT, "Interstitial player item status did change to %@", buf, 0xCu);
    }

    v49 = !v40;
    if (integerValue3 != 1)
    {
      v49 = 1;
    }

    if ((v49 & 1) == 0)
    {
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __60__TVPPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_408;
      v68[3] = &unk_279D7BDC8;
      v68[4] = self;
      TVPPerformBlockOnMainThreadIfNeeded(v68);
    }

    goto LABEL_56;
  }

  if (__AVPlayerTimeControlStatusKVOContext != context && __AVInterstitialPlayerTimeControlStatusKVOContext != context)
  {
    if (__AVPlayerOutputObscuredDueToInsufficientExternalProtectionKVOContext == context)
    {
      playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      if (!playlist || ([MEMORY[0x277CBEB68] null], v56 = objc_claimAutoreleasedReturnValue(), v56, playlist == v56))
      {
        bOOLValue6 = 0;
      }

      else
      {
        bOOLValue6 = [playlist BOOLValue];
      }

      [(TVPPlayer *)self _outputObscuredDidChangeTo:bOOLValue6];
      goto LABEL_57;
    }

    if (__AVPlayerExternalPlaybackActiveKVOContext == context)
    {
      [(TVPPlayer *)self _externalPlaybackActiveDidChange];
      goto LABEL_58;
    }

    if (__AVPlayerItemLoadedTimeRangesKVOContext == context)
    {
      playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      null7 = [MEMORY[0x277CBEB68] null];

      if (playlist == null7)
      {

        playlist = 0;
      }

      [(TVPPlayer *)self _currentPlayerItemLoadedTimeRangesDidChangeTo:playlist];
      goto LABEL_57;
    }

    if (__AVPlayerItemSeekableTimeRangesKVOContext == context)
    {
      playlist = [changeCopy objectForKey:*MEMORY[0x277CCA2F0]];
      null8 = [MEMORY[0x277CBEB68] null];

      if (playlist == null8)
      {

        playlist = 0;
      }

      [(TVPPlayer *)self _currentPlayerItemSeekableTimeRangesDidChangeTo:playlist];
      goto LABEL_57;
    }

    if (__AVPlayerItemTimedMetadataKVOContext == context)
    {
      [(TVPPlayer *)self _currentPlayerItemTimedMetadataDidChange];
      goto LABEL_58;
    }

    if (__AVPlayerItemTracksKVOContext != context)
    {
      v63.receiver = self;
      v63.super_class = TVPPlayer;
      [(TVPPlayer *)&v63 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
      goto LABEL_58;
    }

    playlist = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
    changeContext = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
    null9 = [MEMORY[0x277CBEB68] null];

    if (playlist == null9)
    {

      playlist = 0;
    }

    null10 = [MEMORY[0x277CBEB68] null];

    if (changeContext == null10)
    {

      changeContext = 0;
    }

    [(TVPPlayer *)self _currentPlayerItemTracksDidChangeTo:changeContext from:playlist];
    goto LABEL_56;
  }

  v41 = [changeCopy objectForKey:*MEMORY[0x277CCA300]];
  v42 = [v13 objectForKey:*MEMORY[0x277CCA2F0]];
  if (__AVPlayerTimeControlStatusKVOContext == context)
  {
    interstitialPlayer = objectCopy;
  }

  else
  {
    interstitialPlayer = [objectCopy interstitialPlayer];
  }

  v62 = interstitialPlayer;
  null11 = [MEMORY[0x277CBEB68] null];

  if (v41 == null11)
  {

    v41 = 0;
  }

  if (!v42 || ([MEMORY[0x277CBEB68] null], v51 = objc_claimAutoreleasedReturnValue(), v51, v42 == v51))
  {
    timeControlStatus = [v62 timeControlStatus];
  }

  else
  {
    timeControlStatus = [v42 integerValue];
  }

  v53 = timeControlStatus;
  if (__AVInterstitialPlayerTimeControlStatusKVOContext == context)
  {
    v64[0] = MEMORY[0x277D85DD0];
    v64[1] = 3221225472;
    v64[2] = __60__TVPPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_2;
    v64[3] = &unk_279D7C1E0;
    v64[4] = self;
    v55 = v62;
    v65 = v62;
    v67 = v53;
    v66 = v41;
    TVPPerformBlockOnMainThreadIfNeeded(v64);
  }

  else
  {
    selfCopy = self;
    v55 = v62;
    [(TVPPlayer *)selfCopy _avPlayer:v62 timeControlStatusDidChangeTo:v53 oldStatusNum:v41];
  }

LABEL_58:
}

uint64_t __60__TVPPlayer_observeValueForKeyPath_ofObject_change_context___block_invoke_408(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachine];
  v3 = [*(a1 + 32) interstitialEventMonitor];
  v4 = [v3 interstitialPlayer];
  v5 = [v4 currentItem];
  [v2 postEvent:@"Player item status did become ready to play" withContext:v5];

  v6 = *(a1 + 32);

  return [v6 _notifyOfMediaSelectionOptionChanges];
}

- (void)setPlaylist:(id)playlist
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (playlist)
  {
    v8 = @"Playlist key";
    v9[0] = playlist;
    v4 = MEMORY[0x277CBEAC0];
    playlistCopy = playlist;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Set playlist" withContext:0 userInfo:v6];
}

- (void)setCurrentMediaItem:(id)item
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (item)
  {
    itemCopy = item;
    v5 = [TVPPlaylist alloc];
    v8[0] = itemCopy;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];

    v7 = [(TVPPlaylist *)v5 initWithMediaItems:v6 index:0 isCollection:0];
  }

  else
  {
    v7 = 0;
  }

  [(TVPPlayer *)self setPlaylist:v7];
}

- (TVPMediaItem)currentMediaItem
{
  playlist = [(TVPPlayer *)self playlist];
  currentMediaItem = [playlist currentMediaItem];

  return currentMediaItem;
}

- (BOOL)currentMediaItemPreparedForLoading
{
  currentMediaItemLoader = [(TVPPlayer *)self currentMediaItemLoader];
  state = [currentMediaItemLoader state];

  if ([state isEqual:0x287E4F078] & 1) != 0 || (objc_msgSend(state, "isEqual:", 0x287E4F098) & 1) != 0 || (objc_msgSend(state, "isEqual:", 0x287E4F0B8))
  {
    v5 = 1;
  }

  else
  {
    currentMediaItemLoader2 = [(TVPPlayer *)self currentMediaItemLoader];
    aVAsset = [currentMediaItemLoader2 AVAsset];
    v5 = aVAsset != 0;
  }

  return v5;
}

- (void)setCurrentMediaItemHasVideoContent:(BOOL)content
{
  if (self->_currentMediaItemHasVideoContent != content)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"currentMediaItemHasVideoContent"];
    self->_currentMediaItemHasVideoContent = content;

    [(TVPPlayer *)self didChangeValueForKey:@"currentMediaItemHasVideoContent"];
  }
}

- (void)setCurrentMediaItemIsStreaming:(BOOL)streaming
{
  if (self->_currentMediaItemIsStreaming != streaming)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"currentMediaItemIsStreaming"];
    self->_currentMediaItemIsStreaming = streaming;

    [(TVPPlayer *)self didChangeValueForKey:@"currentMediaItemIsStreaming"];
  }
}

- (void)setCurrentMediaItemPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  if (self->_currentMediaItemPresentationSize.width != size.width || self->_currentMediaItemPresentationSize.height != size.height)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"currentMediaItemPresentationSize"];
    self->_currentMediaItemPresentationSize.width = width;
    self->_currentMediaItemPresentationSize.height = height;

    [(TVPPlayer *)self didChangeValueForKey:@"currentMediaItemPresentationSize"];
  }
}

- (CGSize)currentMediaItemPresentationSize
{
  width = self->_currentMediaItemPresentationSize.width;
  height = self->_currentMediaItemPresentationSize.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setCurrentMediaItemHasDates:(BOOL)dates
{
  if (self->_currentMediaItemHasDates != dates)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"currentMediaItemHasDates"];
    self->_currentMediaItemHasDates = dates;

    [(TVPPlayer *)self didChangeValueForKey:@"currentMediaItemHasDates"];
  }
}

- (void)changeMediaInDirection:(int64_t)direction reason:(id)reason ignoreDelegate:(BOOL)delegate
{
  v33[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (delegate)
  {
    goto LABEL_9;
  }

  delegate = [(TVPPlayer *)self delegate];

  if (delegate)
  {
    delegate2 = [(TVPPlayer *)self delegate];
    v11 = [delegate2 player:self shouldChangeMediaInDirection:direction];

    if ((v11 & 1) == 0)
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  asyncDelegate = [(TVPPlayer *)self asyncDelegate];

  if (!asyncDelegate)
  {
LABEL_9:
    playlist = [(TVPPlayer *)self playlist];
    v17 = playlist;
    if (direction)
    {
      if (reasonCopy)
      {
        v28 = @"TVPPlaybackCurrentMediaItemChangeReasonKey";
        v29 = reasonCopy;
        stateMachine = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      }

      else
      {
        stateMachine = 0;
      }

      [v17 changeMedia:1 withContext:stateMachine];
    }

    else if ([playlist endAction] == 1 && (objc_msgSend(v17, "moreItemsAvailable:", 0) & 1) == 0)
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"TVPPlaybackPlaylistDidFinishNotification" object:self];

      v20 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "Sending pause event on changeMediaInDirection because playlist end action is TVPPlaylistEndActionPause.", &buf, 2u);
      }

      stateMachine = [(TVPPlayer *)self stateMachine];
      v32 = @"Ignore delegate key";
      v33[0] = MEMORY[0x277CBEC38];
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      [stateMachine postEvent:@"Pause" withContext:0 userInfo:v21];
    }

    else
    {
      if (reasonCopy)
      {
        v30 = @"TVPPlaybackCurrentMediaItemChangeReasonKey";
        v31 = reasonCopy;
        stateMachine = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      }

      else
      {
        stateMachine = 0;
      }

      [v17 changeMedia:0 withContext:stateMachine];
    }

    goto LABEL_24;
  }

  v13 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Async delegate: shouldChangeMediaInDirection returning NO until delegate is consulted", &buf, 2u);
  }

  objc_initWeak(&buf, self);
  v14 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
  objc_initWeak(&location, v14);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __58__TVPPlayer_changeMediaInDirection_reason_ignoreDelegate___block_invoke;
  v22[3] = &unk_279D7C258;
  objc_copyWeak(&v24, &buf);
  v25[1] = direction;
  objc_copyWeak(v25, &location);
  v23 = reasonCopy;
  [(TVPAsyncPlayerDelegateOperation *)v14 setBlock:v22];
  v15 = objc_loadWeakRetained(&buf);
  [v15 _enqueueAsyncDelegateOperation:v14];

  objc_destroyWeak(v25);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);

  objc_destroyWeak(&buf);
LABEL_24:
}

void __58__TVPPlayer_changeMediaInDirection_reason_ignoreDelegate___block_invoke(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Async delegate: shouldChangeMediaInDirection calling delegate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained asyncDelegate];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__TVPPlayer_changeMediaInDirection_reason_ignoreDelegate___block_invoke_414;
  v7[3] = &unk_279D7C230;
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(v10, (a1 + 40));
  v10[1] = *(a1 + 56);
  v8 = *(a1 + 32);
  [v4 player:v5 shouldChangeMediaInDirection:v6 completion:v7];

  objc_destroyWeak(v10);
  objc_destroyWeak(&v9);
}

void __58__TVPPlayer_changeMediaInDirection_reason_ignoreDelegate___block_invoke_414(id *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained && (v5 = objc_loadWeakRetained(a1 + 6), [v5 asyncDelegateOperations], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", WeakRetained), v7, v6, v5, v8))
  {
    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Async delegate: shouldChangeMediaInDirection response: %@", buf, 0xCu);
    }

    v11 = objc_loadWeakRetained(a1 + 6);
    v12 = [v11 asyncDelegateOperations];
    [v12 removeObjectAtIndex:0];

    if (a2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__TVPPlayer_changeMediaInDirection_reason_ignoreDelegate___block_invoke_421;
      block[3] = &unk_279D7C208;
      objc_copyWeak(v17, a1 + 6);
      v17[1] = a1[7];
      v16 = a1[4];
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(v17);
    }

    v13 = objc_loadWeakRetained(a1 + 6);
    [v13 _processNextAsyncDelegateOperation];
  }

  else
  {
    v14 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring shouldChangeMediaInDirection response", buf, 2u);
    }
  }
}

void __58__TVPPlayer_changeMediaInDirection_reason_ignoreDelegate___block_invoke_421(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained changeMediaInDirection:*(a1 + 48) reason:*(a1 + 32) ignoreDelegate:1];
}

- (void)changeToMediaAtIndex:(unint64_t)index reason:(id)reason ignoreDelegate:(BOOL)delegate
{
  v25[1] = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  if (delegate)
  {
    goto LABEL_9;
  }

  delegate = [(TVPPlayer *)self delegate];

  if (delegate)
  {
    delegate2 = [(TVPPlayer *)self delegate];
    v11 = [delegate2 player:self shouldChangeToMediaAtIndex:index];

    if ((v11 & 1) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  asyncDelegate = [(TVPPlayer *)self asyncDelegate];

  if (!asyncDelegate)
  {
LABEL_9:
    if (reasonCopy)
    {
      v24 = @"TVPPlaybackCurrentMediaItemChangeReasonKey";
      v25[0] = reasonCopy;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    }

    else
    {
      v16 = 0;
    }

    playlist = [(TVPPlayer *)self playlist];
    [playlist changeToActiveListIndex:index withContext:v16];

    goto LABEL_13;
  }

  v13 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Async delegate: changeToMediaAtIndex returning NO until delegate is consulted", &buf, 2u);
  }

  objc_initWeak(&buf, self);
  v14 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
  objc_initWeak(&location, v14);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __56__TVPPlayer_changeToMediaAtIndex_reason_ignoreDelegate___block_invoke;
  v18[3] = &unk_279D7C258;
  objc_copyWeak(&v20, &buf);
  v21[1] = index;
  objc_copyWeak(v21, &location);
  v19 = reasonCopy;
  [(TVPAsyncPlayerDelegateOperation *)v14 setBlock:v18];
  v15 = objc_loadWeakRetained(&buf);
  [v15 _enqueueAsyncDelegateOperation:v14];

  objc_destroyWeak(v21);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  objc_destroyWeak(&buf);
LABEL_13:
}

void __56__TVPPlayer_changeToMediaAtIndex_reason_ignoreDelegate___block_invoke(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Async delegate: shouldChangeToMediaAtIndex calling delegate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained asyncDelegate];
  v5 = objc_loadWeakRetained((a1 + 40));
  v6 = *(a1 + 56);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__TVPPlayer_changeToMediaAtIndex_reason_ignoreDelegate___block_invoke_423;
  v7[3] = &unk_279D7C230;
  objc_copyWeak(&v9, (a1 + 48));
  objc_copyWeak(v10, (a1 + 40));
  v10[1] = *(a1 + 56);
  v8 = *(a1 + 32);
  [v4 player:v5 shouldChangeToMediaAtIndex:v6 completion:v7];

  objc_destroyWeak(v10);
  objc_destroyWeak(&v9);
}

void __56__TVPPlayer_changeToMediaAtIndex_reason_ignoreDelegate___block_invoke_423(id *a1, int a2)
{
  v20 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 5);
  if (WeakRetained && (v5 = objc_loadWeakRetained(a1 + 6), [v5 asyncDelegateOperations], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", WeakRetained), v7, v6, v5, v8))
  {
    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Async delegate: shouldChangeToMediaAtIndex response: %@", buf, 0xCu);
    }

    v11 = objc_loadWeakRetained(a1 + 6);
    v12 = [v11 asyncDelegateOperations];
    [v12 removeObjectAtIndex:0];

    if (a2)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __56__TVPPlayer_changeToMediaAtIndex_reason_ignoreDelegate___block_invoke_424;
      block[3] = &unk_279D7C208;
      objc_copyWeak(v17, a1 + 6);
      v17[1] = a1[7];
      v16 = a1[4];
      dispatch_async(MEMORY[0x277D85CD0], block);

      objc_destroyWeak(v17);
    }

    v13 = objc_loadWeakRetained(a1 + 6);
    [v13 _processNextAsyncDelegateOperation];
  }

  else
  {
    v14 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring shouldChangeToMediaAtIndex response", buf, 2u);
    }
  }
}

void __56__TVPPlayer_changeToMediaAtIndex_reason_ignoreDelegate___block_invoke_424(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained changeToMediaAtIndex:*(a1 + 48) reason:*(a1 + 32) ignoreDelegate:1];
}

- (void)setErrorBehavior:(int64_t)behavior
{
  if (self->_errorBehavior != behavior)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"errorBehavior"];
    self->_errorBehavior = behavior;

    [(TVPPlayer *)self didChangeValueForKey:@"errorBehavior"];
  }
}

- (void)setInteractive:(BOOL)interactive
{
  v19 = *MEMORY[0x277D85DE8];
  if (self->_interactive != interactive)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"interactive"];
    self->_interactive = interactive;
    [(TVPPlayer *)self didChangeValueForKey:@"interactive"];
    memset(&v17, 0, sizeof(v17));
    if ([(TVPPlayer *)self interactive])
    {
      CMTimeMakeWithSeconds(&v17, -1.0, 1000000);
    }

    else
    {
      v17 = **&MEMORY[0x277CC08F0];
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    items = [aVQueuePlayer items];

    v7 = [items countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v14 != v9)
          {
            objc_enumerationMutation(items);
          }

          v11 = *(*(&v13 + 1) + 8 * i);
          v12 = v17;
          [v11 setMaximumTrailingBufferDuration:&v12];
        }

        v8 = [items countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (double)rate
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  currentState = [stateMachine currentState];

  if (([currentState isEqualToString:@"Scanning using external images"] & 1) != 0 || (objc_msgSend(currentState, "isEqualToString:", @"Scanning using external images driven by AVKit") & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Waiting for AVKit seek after finishing external image scanning"))
  {
    externalImagePlayer = [(TVPPlayer *)self externalImagePlayer];
LABEL_5:
    aVQueuePlayer = externalImagePlayer;
    [externalImagePlayer rate];
    v8 = v7;
    goto LABEL_6;
  }

  if (([currentState isEqualToString:@"Scrubbing using progressive jumping"] & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Scrubbing using progressive jumping waiting for seek"))
  {
    externalImagePlayer = [(TVPPlayer *)self progressiveJumpingScrubber];
    goto LABEL_5;
  }

  state = [(TVPPlayer *)self state];
  v11 = +[TVPPlaybackState playing];
  v12 = v11;
  if (state == v11)
  {
  }

  else
  {
    state2 = [(TVPPlayer *)self state];
    v14 = +[TVPPlaybackState scanning];

    v8 = 0.0;
    if (state2 != v14)
    {
      goto LABEL_7;
    }
  }

  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  [aVQueuePlayer rate];
  v8 = v15;
LABEL_6:

LABEL_7:
  return v8;
}

- (void)setRateUsedForPlayback:(double)playback
{
  if (self->_rateUsedForPlayback != playback)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"rateUsedForPlayback"];
    self->_rateUsedForPlayback = playback;
    [(TVPPlayer *)self didChangeValueForKey:@"rateUsedForPlayback"];
    stateMachine = [(TVPPlayer *)self stateMachine];
    [stateMachine postEvent:@"Rate used for playback did change"];
  }
}

- (void)continueLoadingCurrentItem
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Continue loading current item"];
}

- (void)play
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Play"];
}

- (void)playIgnoringDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v8[1] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPPlayer *)self stateMachine];
  v7 = @"Ignore delegate key";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:delegateCopy];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [stateMachine postEvent:@"Play" withContext:0 userInfo:v6];
}

- (void)playWithVolumeRampDuration:(double)duration
{
  v8[1] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPPlayer *)self stateMachine];
  v7 = @"Volume ramp duration key";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [stateMachine postEvent:@"Play" withContext:0 userInfo:v6];
}

- (void)playWithAVKitCompletion:(id)completion
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (completion)
  {
    v7 = @"Play completion key";
    v4 = [completion copy];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Play" withContext:0 userInfo:v5];
}

- (void)pause
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Pause"];
}

- (void)pauseWithVolumeRampDuration:(double)duration
{
  v8[1] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPPlayer *)self stateMachine];
  v7 = @"Volume ramp duration key";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [stateMachine postEvent:@"Pause" withContext:0 userInfo:v6];
}

- (void)pauseIgnoringDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  v8[1] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPPlayer *)self stateMachine];
  v7 = @"Ignore delegate key";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:delegateCopy];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [stateMachine postEvent:@"Pause" withContext:0 userInfo:v6];
}

- (void)pauseWithAVKitCompletion:(id)completion
{
  v8[1] = *MEMORY[0x277D85DE8];
  if (completion)
  {
    v7 = @"Play completion key";
    v4 = [completion copy];
    v8[0] = v4;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  }

  else
  {
    v5 = 0;
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Pause" withContext:0 userInfo:v5];
}

- (void)togglePlayPause
{
  state = [(TVPPlayer *)self state];
  v3 = +[TVPPlaybackState paused];

  if (state == v3)
  {
    stateMachine = [(TVPPlayer *)self stateMachine];
    v11 = stateMachine;
    v12 = @"Play";
    goto LABEL_10;
  }

  v4 = +[TVPPlaybackState playing];
  if (state == v4)
  {

    goto LABEL_9;
  }

  v5 = +[TVPPlaybackState loading];

  if (state == v5)
  {
LABEL_9:
    stateMachine = [(TVPPlayer *)self stateMachine];
    v11 = stateMachine;
    v12 = @"Pause";
    goto LABEL_10;
  }

  v6 = +[TVPPlaybackState scanning];

  v7 = state;
  if (state != v6)
  {
    goto LABEL_11;
  }

  [(TVPPlayer *)self rate];
  v9 = fabs(v8);
  stateMachine = [(TVPPlayer *)self stateMachine];
  v11 = stateMachine;
  if (v9 >= 1.0)
  {
    v12 = @"Play";
  }

  else
  {
    v12 = @"Pause";
  }

LABEL_10:
  [stateMachine postEvent:v12];

  v7 = state;
LABEL_11:
}

- (void)scanWithRate:(double)rate withAVKitCompletion:(id)completion
{
  v16[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v15 = @"Rate key";
  v7 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
  v16[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
  v9 = [v8 mutableCopy];

  if (completionCopy)
  {
    state = [(TVPPlayer *)self state];
    v11 = +[TVPPlaybackState paused];

    if (state == v11)
    {
      +[TVPPlaybackState paused];
    }

    else
    {
      +[TVPPlaybackState playing];
    }
    v12 = ;
    [(TVPPlayer *)self setPostAVKitScanningState:v12];

    v13 = [completionCopy copy];
    [v9 setObject:v13 forKey:@"Play completion key"];
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Scan with rate" withContext:0 userInfo:v9];
}

- (void)stop
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Stop"];
}

- (void)stopWithVolumeRampDuration:(double)duration
{
  v8[1] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPPlayer *)self stateMachine];
  v7 = @"Volume ramp duration key";
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:duration];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [stateMachine postEvent:@"Stop" withContext:0 userInfo:v6];
}

- (void)setElapsedTime:(double)time
{
  v3 = *MEMORY[0x277CC08F0];
  v4 = *(MEMORY[0x277CC08F0] + 16);
  [(TVPPlayer *)self setElapsedTime:&v3 seekPrecision:0 ignoreDelegate:0 withAVKitCompletion:time];
}

- (void)setElapsedTime:(double)time precise:(BOOL)precise
{
  if (precise)
  {
    v4 = MEMORY[0x277CC08F0];
  }

  else
  {
    v4 = MEMORY[0x277CC08B0];
  }

  v5 = *v4;
  v6 = *(v4 + 2);
  [(TVPPlayer *)self setElapsedTime:&v5 seekPrecision:0 ignoreDelegate:0 withAVKitCompletion:time];
}

- (void)setElapsedTime:(double)time orPlaybackDate:(id)date withAVKitCompletion:(id)completion
{
  if (date)
  {

    [(TVPPlayer *)self setPlaybackDate:time withAVKitCompletion:?];
  }

  else
  {
    v9 = v5;
    v10 = v6;
    v7 = *MEMORY[0x277CC08F0];
    v8 = *(MEMORY[0x277CC08F0] + 16);
    [(TVPPlayer *)self setElapsedTime:&v7 seekPrecision:0 ignoreDelegate:completion withAVKitCompletion:time];
  }
}

- (void)setElapsedTime:(double)time seekPrecision:(id *)precision ignoreDelegate:(BOOL)delegate withAVKitCompletion:(id)completion
{
  delegateCopy = delegate;
  v31[3] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  memset(&v29, 0, sizeof(v29));
  CMTimeMakeWithSeconds(&v29, time, 1000000);
  if (time == -1000000000.0)
  {
    objc_msgSend_duration(self, -1000000000.0);
    if (v11 == 3.40282347e38)
    {
      v27 = 0u;
      v28 = 0u;
      v26 = 0u;
      cachedSeekableTimeRanges = [(TVPPlayer *)self cachedSeekableTimeRanges];
      objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
    }

    else
    {
      objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    }

    *&v29.value = v26;
    epoch = v27;
    goto LABEL_8;
  }

  if (time == INFINITY)
  {
    *&v29.value = *MEMORY[0x277CC08B0];
    epoch = *(MEMORY[0x277CC08B0] + 16);
LABEL_8:
    v29.epoch = epoch;
    goto LABEL_9;
  }

  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v22 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsScene"];

  if (!completionCopy && v22)
  {
    v26 = 0uLL;
    *&v27 = 0;
    objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    *&lhs.value = v26;
    lhs.epoch = v27;
    v23 = v29;
    CMTimeAdd(&v25, &lhs, &v23);
    *&v29.value = *&v25.value;
    epoch = v25.epoch;
    goto LABEL_8;
  }

LABEL_9:
  v26 = *&v29.value;
  *&v27 = v29.epoch;
  v14 = [MEMORY[0x277CCAE60] valueWithCMTime:&v26];
  v31[0] = v14;
  v30[0] = @"Elapsed CMTime key";
  v30[1] = @"Seek precision key";
  v26 = *&precision->var0;
  *&v27 = precision->var3;
  v15 = [MEMORY[0x277CCAE60] valueWithCMTime:&v26];
  v31[1] = v15;
  v30[2] = @"Ignore delegate key";
  v16 = [MEMORY[0x277CCABB0] numberWithBool:delegateCopy];
  v31[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  v18 = [v17 mutableCopy];

  if (completionCopy)
  {
    v19 = [completionCopy copy];
    [v18 setObject:v19 forKey:@"Play completion key"];
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Set elapsed time or date" withContext:0 userInfo:v18];
}

- (double)elapsedTime
{
  memset(&v3[1], 0, sizeof(CMTime));
  objc_msgSend_elapsedCMTime(self, a2);
  v3[0] = v3[1];
  return CMTimeGetSeconds(v3);
}

- (double)cachedElapsedTime
{
  memset(&v3[1], 0, sizeof(CMTime));
  objc_msgSend_cachedElapsedCMTime(self, a2);
  result = 0.0;
  if (0 >> 96 == 1)
  {
    v3[0] = v3[1];
    return CMTimeGetSeconds(v3);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)elapsedCMTime
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  currentState = [stateMachine currentState];

  v7 = MEMORY[0x277CC08F0];
  v38 = *MEMORY[0x277CC08F0];
  *&retstr->var0 = *MEMORY[0x277CC08F0];
  v8 = *(v7 + 16);
  retstr->var3 = v8;
  _statesThatReturnStartTime = [(TVPPlayer *)self _statesThatReturnStartTime];
  v10 = [_statesThatReturnStartTime containsObject:currentState];

  if (v10)
  {
    [(TVPPlayer *)self startPosition];
    if (v11 > 0.0)
    {
      v12 = v11;
      currentMediaItemLoader = [(TVPPlayer *)self currentMediaItemLoader];
      aVAsset = [currentMediaItemLoader AVAsset];

      if (aVAsset)
      {
        memset(&v41, 0, sizeof(v41));
        objc_msgSend_duration(aVAsset);
        time = v41;
        CMTimeMultiplyByFloat64(retstr, &time, v12);
      }

LABEL_33:

      goto LABEL_34;
    }

    memset(&v41, 0, sizeof(v41));
    objc_msgSend_startTime(self);
    time = v41;
    *&time2.value = v38;
    time2.epoch = v8;
    if (!CMTimeCompare(&time, &time2))
    {
      currentMediaItem = [(TVPPlayer *)self currentMediaItem];
      v20 = [currentMediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataStartTime"];

      currentMediaItem2 = [(TVPPlayer *)self currentMediaItem];
      v22 = [currentMediaItem2 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStartTimeIsRelativeToMainContent"];
      bOOLValue = [v22 BOOLValue];

      if (bOOLValue)
      {
        currentMediaItem3 = [(TVPPlayer *)self currentMediaItem];
        v25 = [currentMediaItem3 mediaItemMetadataForProperty:@"TVPMediaItemMetadataFeatureStartTime"];

        [v20 doubleValue];
        v27 = v26;
        [v25 doubleValue];
        CMTimeMakeWithSeconds(&time, v27 + v28, 1000000);
        v41 = time;
      }

      else if (v20)
      {
        [v20 floatValue];
        CMTimeMakeWithSeconds(&time, v34, 1000000);
        v41 = time;
      }
    }

    time = v41;
    objc_msgSend__clampInfiniteTimeToSeekableRange_(self);
  }

  else
  {
    _statesThatReturnAVPlayerTime = [(TVPPlayer *)self _statesThatReturnAVPlayerTime];
    v16 = [_statesThatReturnAVPlayerTime containsObject:currentState];

    if (v16)
    {
      aVAsset = [(TVPPlayer *)self currentPlayerItem];
      v41 = **&MEMORY[0x277CC0898];
      if ([(TVPPlayer *)self _integratedTimelineEnabled])
      {
        integratedTimeline = [aVAsset integratedTimeline];
        v18 = integratedTimeline;
        if (integratedTimeline)
        {
          objc_msgSend_currentTime(integratedTimeline);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v41 = time;
      }

      else if ([aVAsset status])
      {
        if (aVAsset)
        {
          objc_msgSend_currentTime(aVAsset);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v41 = time;
      }

      memset(&time, 0, sizeof(time));
      objc_msgSend_cachedDuration(self);
      objc_msgSend__clampedElapsedTimeForTime_duration_(self);
      goto LABEL_33;
    }

    _statesThatReturnSeekTime = [(TVPPlayer *)self _statesThatReturnSeekTime];
    v30 = [_statesThatReturnSeekTime containsObject:currentState];

    if (v30)
    {
      objc_msgSend_timeBeingSeekedTo(self);
      memset(&time2, 0, sizeof(time2));
      objc_msgSend__clampInfiniteTimeToSeekableRange_(self);
      epoch = time.epoch;
      v41 = time;
      *&retstr->var0 = *&time.value;
      retstr->var3 = epoch;
    }

    else if (([currentState isEqualToString:@"Scanning using external images"] & 1) != 0 || (objc_msgSend(currentState, "isEqualToString:", @"Scanning using external images driven by AVKit") & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Waiting for AVKit seek after finishing external image scanning"))
    {
      memset(&v41, 0, sizeof(v41));
      externalImagePlayer = [(TVPPlayer *)self externalImagePlayer];
      v33 = externalImagePlayer;
      if (externalImagePlayer)
      {
        objc_msgSend_elapsedTime(externalImagePlayer);
      }

      else
      {
        memset(&v41, 0, sizeof(v41));
      }

      memset(&time, 0, sizeof(time));
      objc_msgSend_cachedDuration(self);
      objc_msgSend__clampedElapsedTimeForTime_duration_(self);
    }
  }

LABEL_34:
  currentMediaItem4 = [(TVPPlayer *)self currentMediaItem];
  v36 = [currentMediaItem4 hasTrait:@"TVPMediaItemTraitIsScene"];

  if (v36)
  {
    time = *retstr;
    objc_msgSend__clampedSceneTimeForPlayerTime_(self);
    *retstr = v41;
  }

  return result;
}

- (void)setPlaybackDate:(id)date withAVKitCompletion:(id)completion
{
  v14[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if (date)
  {
    v13 = @"Playback date key";
    v14[0] = date;
    v7 = MEMORY[0x277CBEAC0];
    dateCopy = date;
    v9 = [v7 dictionaryWithObjects:v14 forKeys:&v13 count:1];

    v10 = [v9 mutableCopy];
    if (completionCopy)
    {
      v11 = [completionCopy copy];
      [v10 setObject:v11 forKey:@"Play completion key"];
    }

    stateMachine = [(TVPPlayer *)self stateMachine];
    [stateMachine postEvent:@"Set elapsed time or date" withContext:0 userInfo:v10];
  }
}

- (NSDate)playbackDate
{
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v4 = [currentMediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataTreatAsTimeBasedNotDateBased"];
  bOOLValue = [v4 BOOLValue];

  if (bOOLValue)
  {
    v6 = 0;
    goto LABEL_16;
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  currentState = [stateMachine currentState];

  _statesThatReturnStartTime = [(TVPPlayer *)self _statesThatReturnStartTime];
  v10 = [_statesThatReturnStartTime containsObject:currentState];

  if (!v10)
  {
    _statesThatReturnAVPlayerTime = [(TVPPlayer *)self _statesThatReturnAVPlayerTime];
    v13 = [_statesThatReturnAVPlayerTime containsObject:currentState];

    if (v13)
    {
      currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
      playbackDate = [(TVPPlayer *)self _currentDateFromPlayerItem:currentPlayerItem];
    }

    else
    {
      _statesThatReturnSeekTime = [(TVPPlayer *)self _statesThatReturnSeekTime];
      v17 = [_statesThatReturnSeekTime containsObject:currentState];

      if (v17)
      {
        dateBeingSeekedTo = [(TVPPlayer *)self dateBeingSeekedTo];
        goto LABEL_5;
      }

      if (([currentState isEqualToString:@"Scanning using external images"] & 1) == 0 && (objc_msgSend(currentState, "isEqualToString:", @"Scanning using external images driven by AVKit") & 1) == 0 && !objc_msgSend(currentState, "isEqualToString:", @"Waiting for AVKit seek after finishing external image scanning"))
      {
        v6 = 0;
        goto LABEL_15;
      }

      currentPlayerItem = [(TVPPlayer *)self externalImagePlayer];
      playbackDate = [currentPlayerItem playbackDate];
    }

    v6 = playbackDate;

    goto LABEL_15;
  }

  dateBeingSeekedTo = [(TVPPlayer *)self startDate];
LABEL_5:
  v6 = dateBeingSeekedTo;
LABEL_15:

LABEL_16:

  return v6;
}

- (void)avKitSeekDidComplete
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Seek completed"];
}

- (void)avKitDidFinishScanning
{
  postAVKitScanningState = [(TVPPlayer *)self postAVKitScanningState];
  v4 = +[TVPPlaybackState paused];

  if (postAVKitScanningState == v4)
  {

    [(TVPPlayer *)self pauseWithAVKitCompletion:&__block_literal_global_429];
  }

  else
  {

    [(TVPPlayer *)self playWithAVKitCompletion:&__block_literal_global_432];
  }
}

- (id)addElapsedTimeObserver:(id)observer
{
  if (observer)
  {
    v4 = MEMORY[0x277CCAD78];
    observerCopy = observer;
    uUID = [v4 UUID];
    elapsedTimeObserverBlocks = [(TVPPlayer *)self elapsedTimeObserverBlocks];
    v8 = [observerCopy copy];

    [elapsedTimeObserverBlocks setObject:v8 forKey:uUID];
  }

  else
  {
    uUID = 0;
  }

  return uUID;
}

- (void)removeElapsedTimeObserverWithToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    elapsedTimeObserverBlocks = [(TVPPlayer *)self elapsedTimeObserverBlocks];
    [elapsedTimeObserverBlocks removeObjectForKey:tokenCopy];
  }
}

- (id)addBoundaryTimeObserverForTimes:(id)times withHandler:(id)handler
{
  v42 = *MEMORY[0x277D85DE8];
  timesCopy = times;
  handlerCopy = handler;
  if (timesCopy)
  {
    v8 = [timesCopy count];
    uUID = 0;
    if (handlerCopy && v8)
    {
      v33 = objc_alloc_init(TVPBoundaryTimeObserverInfo);
      array = [MEMORY[0x277CBEB18] array];
      currentMediaItem = [(TVPPlayer *)self currentMediaItem];
      v12 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsScene"];

      v34 = handlerCopy;
      if (v12)
      {
        v13 = MEMORY[0x277CCABB0];
        objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
        v14 = [v13 numberWithDouble:CMTimeGetSeconds(&time)];
      }

      else
      {
        v14 = 0;
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = timesCopy;
      v15 = timesCopy;
      v16 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v37;
        do
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v36 + 1) + 8 * i);
            if (v14)
            {
              v21 = MEMORY[0x277CCABB0];
              [v14 doubleValue];
              v23 = v22;
              [v20 doubleValue];
              v25 = [v21 numberWithDouble:v23 + v24];

              v20 = v25;
            }

            v26 = MEMORY[0x277CCAE60];
            [v20 doubleValue];
            CMTimeMakeWithSeconds(&time, v27, 1000000);
            v28 = [v26 valueWithCMTime:&time];
            [array addObject:v28];
          }

          v17 = [v15 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v17);
      }

      [(TVPBoundaryTimeObserverInfo *)v33 setTimes:array];
      handlerCopy = v34;
      [(TVPBoundaryTimeObserverInfo *)v33 setHandler:v34];
      uUID = [MEMORY[0x277CCAD78] UUID];
      boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
      [boundaryTimeObserverInfos setObject:v33 forKey:uUID];

      if ([(TVPPlayer *)self _integratedTimelineEnabled])
      {
        currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
        integratedTimeline = [currentPlayerItem integratedTimeline];
        [(TVPPlayer *)self _addBoundaryTimeObserversToIntegratedTimeline:integratedTimeline];
      }

      else
      {
        currentPlayerItem = [(TVPPlayer *)self AVQueuePlayer];
        [(TVPPlayer *)self _addBoundaryTimeObserversToAVQueuePlayer:currentPlayerItem];
      }

      timesCopy = v35;
    }
  }

  else
  {
    uUID = 0;
  }

  return uUID;
}

- (void)removeBoundaryTimeObserverWithToken:(id)token
{
  v21 = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  if (tokenCopy)
  {
    boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
    v6 = [boundaryTimeObserverInfos objectForKey:tokenCopy];
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
      integratedTimeline = [currentPlayerItem integratedTimeline];

      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      tokensFromIntegratedTimeline = [v6 tokensFromIntegratedTimeline];
      v10 = [tokensFromIntegratedTimeline countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(tokensFromIntegratedTimeline);
            }

            [integratedTimeline removeTimeObserver:*(*(&v16 + 1) + 8 * v13++)];
          }

          while (v11 != v13);
          v11 = [tokensFromIntegratedTimeline countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v11);
      }
    }

    else
    {
      tokenFromAVPlayer = [v6 tokenFromAVPlayer];
      if (tokenFromAVPlayer)
      {
        aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
        [aVQueuePlayer removeTimeObserver:tokenFromAVPlayer];
      }
    }

    [boundaryTimeObserverInfos removeObjectForKey:tokenCopy];
  }
}

- (double)duration
{
  memset(&v3[1], 0, sizeof(CMTime));
  objc_msgSend_durationCMTime(self, a2);
  result = 0.0;
  if (0 >> 96)
  {
    if ((v3[1].flags & 0x1D) == 1)
    {
      v3[0] = v3[1];
      return CMTimeGetSeconds(v3);
    }

    else if ((v3[1].flags & 0x10) != 0)
    {
      return 3.40282347e38;
    }
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)durationCMTime
{
  retstr->var0 = 0;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  objc_msgSend_cachedDuration(self, a3);
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v6 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsScene"];

  if (v6)
  {
    objc_msgSend__currentMediaItemForwardPlaybackEndTime(self);
    objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    result = CMTimeSubtract(&v10, &lhs, &rhs);
    *retstr = v10;
  }

  return result;
}

- (void)setIsLive:(BOOL)live
{
  if (self->_isLive != live)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"isLive"];
    self->_isLive = live;

    [(TVPPlayer *)self didChangeValueForKey:@"isLive"];
  }
}

- (void)setMuted:(BOOL)muted
{
  [(TVPPlayer *)self willChangeValueForKey:@"muted"];
  self->_muted = muted;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  [aVQueuePlayer setMuted:self->_muted];
  [(TVPPlayer *)self didChangeValueForKey:@"muted"];
}

- (BOOL)muted
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];

  if (!aVQueuePlayer)
  {
    return self->_muted;
  }

  aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
  isMuted = [aVQueuePlayer2 isMuted];

  return isMuted;
}

- (void)setAllowsExternalPlayback:(BOOL)playback
{
  [(TVPPlayer *)self willChangeValueForKey:@"allowsExternalPlayback"];
  self->_allowsExternalPlayback = playback;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  [aVQueuePlayer setAllowsExternalPlayback:self->_allowsExternalPlayback];
  [(TVPPlayer *)self didChangeValueForKey:@"allowsExternalPlayback"];
}

- (BOOL)allowsExternalPlayback
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];

  if (!aVQueuePlayer)
  {
    return self->_allowsExternalPlayback;
  }

  aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
  allowsExternalPlayback = [aVQueuePlayer2 allowsExternalPlayback];

  return allowsExternalPlayback;
}

- (void)setVolume:(float)volume
{
  [(TVPPlayer *)self willChangeValueForKey:@"volume"];
  self->_volume = volume;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  *&v6 = self->_volume;
  [aVQueuePlayer setVolume:v6];

  [(TVPPlayer *)self didChangeValueForKey:@"volume"];
}

- (float)volume
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];

  if (!aVQueuePlayer)
  {
    return self->_volume;
  }

  aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
  [aVQueuePlayer2 volume];
  v6 = v5;

  return v6;
}

- (void)setChapterCollections:(id)collections
{
  collectionsCopy = collections;
  if (self->_chapterCollections != collectionsCopy)
  {
    v6 = collectionsCopy;
    [(TVPPlayer *)self willChangeValueForKey:@"chapterCollections"];
    objc_storeStrong(&self->_chapterCollections, collections);
    [(TVPPlayer *)self didChangeValueForKey:@"chapterCollections"];
    collectionsCopy = v6;
  }
}

- (void)setCurrentChapter:(id)chapter
{
  chapterCopy = chapter;
  if (self->_currentChapter != chapterCopy)
  {
    v6 = chapterCopy;
    [(TVPPlayer *)self willChangeValueForKey:@"currentChapter"];
    objc_storeStrong(&self->_currentChapter, chapter);
    [(TVPPlayer *)self didChangeValueForKey:@"currentChapter"];
    chapterCopy = v6;
  }
}

- (void)setCurrentChapterCollection:(id)collection
{
  v30 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  v6 = collectionCopy;
  if (self->_currentChapterCollection != collectionCopy)
  {
    if (!collectionCopy || (-[TVPPlayer chapterCollections](self, "chapterCollections"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 containsObject:v6], v7, v8))
    {
      [(TVPPlayer *)self willChangeValueForKey:@"currentChapterCollection"];
      objc_storeStrong(&self->_currentChapterCollection, collection);
      [(TVPPlayer *)self didChangeValueForKey:@"currentChapterCollection"];
      chapterBoundaryTimeObserverToken = [(TVPPlayer *)self chapterBoundaryTimeObserverToken];
      [(TVPPlayer *)self removeBoundaryTimeObserverWithToken:chapterBoundaryTimeObserverToken];

      [(TVPPlayer *)self setChapterBoundaryTimeObserverToken:0];
      objc_msgSend_elapsedTime(self);
      v10 = [(TVPChapterCollection *)v6 chapterForTime:?];
      [(TVPPlayer *)self setCurrentChapter:v10];

      chapters = [(TVPChapterCollection *)v6 chapters];
      if ([chapters count])
      {
        array = [MEMORY[0x277CBEB18] array];
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v12 = chapters;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
        if (v13)
        {
          v14 = *v26;
          do
          {
            v15 = 0;
            do
            {
              if (*v26 != v14)
              {
                objc_enumerationMutation(v12);
              }

              v16 = MEMORY[0x277CCABB0];
              v17 = objc_msgSend_timeRange(*(*(&v25 + 1) + 8 * v15));
              objc_msgSend_startTime(v17);
              v18 = [v16 numberWithDouble:?];
              [array addObject:v18];

              ++v15;
            }

            while (v13 != v15);
            v13 = [v12 countByEnumeratingWithState:&v25 objects:v29 count:16];
          }

          while (v13);
        }

        objc_initWeak(&location, self);
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __41__TVPPlayer_setCurrentChapterCollection___block_invoke;
        v21[3] = &unk_279D7C2C0;
        objc_copyWeak(&v23, &location);
        v22 = v6;
        v19 = [(TVPPlayer *)self addBoundaryTimeObserverForTimes:array withHandler:v21];
        [(TVPPlayer *)self setChapterBoundaryTimeObserverToken:v19];

        objc_destroyWeak(&v23);
        objc_destroyWeak(&location);
      }
    }
  }
}

void __41__TVPPlayer_setCurrentChapterCollection___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v5 = WeakRetained;
  objc_msgSend_elapsedTime(v5);
  v4 = [v3 chapterForTime:?];
  [v5 setCurrentChapter:v4];
}

- (void)skipToNextChapterInDirection:(int64_t)direction
{
  v37 = *MEMORY[0x277D85DE8];
  objc_msgSend_elapsedTime(self, a2);
  v6 = v5;
  playbackDate = [(TVPPlayer *)self playbackDate];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  currentChapterCollection = [(TVPPlayer *)self currentChapterCollection];
  chapters = [currentChapterCollection chapters];

  v10 = [chapters countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (!v10)
  {
    v12 = 0;
LABEL_38:

    goto LABEL_39;
  }

  v11 = v10;
  selfCopy = self;
  v12 = 0;
  if (direction == 1)
  {
    v13 = -1.79769313e308;
  }

  else
  {
    v13 = 1.79769313e308;
  }

  v14 = *v33;
  do
  {
    for (i = 0; i != v11; ++i)
    {
      if (*v33 != v14)
      {
        objc_enumerationMutation(chapters);
      }

      v16 = *(*(&v32 + 1) + 8 * i);
      dateRange = [v16 dateRange];

      if (dateRange)
      {
        v18 = playbackDate == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        dateRange2 = objc_msgSend_timeRange(v16);
        objc_msgSend_startTime(dateRange2);
        v23 = v19 - v6;
      }

      else
      {
        dateRange2 = [v16 dateRange];
        startDate = [dateRange2 startDate];
        [startDate timeIntervalSinceDate:playbackDate];
        v23 = v22;
      }

      v24 = -v23;
      if (v23 >= 0.0)
      {
        v24 = v23;
      }

      if (v24 > 2.0)
      {
        if (!direction && (v23 > 0.0 ? (v25 = v23 < v13) : (v25 = 0), v25) || direction == 1 && (v23 < 0.0 ? (v26 = v23 <= v13) : (v26 = 1), !v26))
        {
          v27 = v16;

          v13 = v23;
          v12 = v27;
        }
      }
    }

    v11 = [chapters countByEnumeratingWithState:&v32 objects:v36 count:16];
  }

  while (v11);

  if (v12)
  {
    chapters = objc_msgSend_timeRange(v12);
    dateRange3 = [v12 dateRange];
    v29 = dateRange3;
    if (dateRange3)
    {
      startDate2 = [dateRange3 startDate];
      [(TVPPlayer *)selfCopy setPlaybackDate:startDate2];
    }

    else if (chapters)
    {
      objc_msgSend_startTime(chapters);
      [(TVPPlayer *)selfCopy setElapsedTime:?];
    }

    goto LABEL_38;
  }

LABEL_39:
}

- (void)setCurrentInterstitial:(id)interstitial
{
  interstitialCopy = interstitial;
  if (self->_currentInterstitial != interstitialCopy)
  {
    v6 = interstitialCopy;
    [(TVPPlayer *)self willChangeValueForKey:@"currentInterstitial"];
    objc_storeStrong(&self->_currentInterstitial, interstitial);
    [(TVPPlayer *)self didChangeValueForKey:@"currentInterstitial"];
    interstitialCopy = v6;
  }
}

- (void)setCurrentInterstitialCollection:(id)collection
{
  v29 = *MEMORY[0x277D85DE8];
  collectionCopy = collection;
  if (self->_currentInterstitialCollection != collectionCopy)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"currentInterstitialCollection"];
    objc_storeStrong(&self->_currentInterstitialCollection, collection);
    [(TVPPlayer *)self didChangeValueForKey:@"currentInterstitialCollection"];
    interstitialBoundaryTimeObserverToken = [(TVPPlayer *)self interstitialBoundaryTimeObserverToken];
    [(TVPPlayer *)self removeBoundaryTimeObserverWithToken:interstitialBoundaryTimeObserverToken];

    [(TVPPlayer *)self setInterstitialBoundaryTimeObserverToken:0];
    objc_msgSend_elapsedTime(self);
    v7 = [(TVPInterstitialCollection *)collectionCopy interstitialForTime:?];
    [(TVPPlayer *)self setCurrentInterstitial:v7];

    interstitials = [(TVPInterstitialCollection *)collectionCopy interstitials];
    if ([interstitials count])
    {
      v8 = [MEMORY[0x277CBEB58] set];
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v9 = interstitials;
      v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v10)
      {
        v11 = *v25;
        do
        {
          v12 = 0;
          do
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = objc_msgSend_timeRange(*(*(&v24 + 1) + 8 * v12));
            v14 = MEMORY[0x277CCABB0];
            objc_msgSend_startTime(v13);
            v15 = [v14 numberWithDouble:?];
            [v8 addObject:v15];

            v16 = MEMORY[0x277CCABB0];
            [v13 endTime];
            v17 = [v16 numberWithDouble:?];
            [v8 addObject:v17];

            ++v12;
          }

          while (v10 != v12);
          v10 = [v9 countByEnumeratingWithState:&v24 objects:v28 count:16];
        }

        while (v10);
      }

      objc_initWeak(&location, self);
      allObjects = [v8 allObjects];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __46__TVPPlayer_setCurrentInterstitialCollection___block_invoke;
      v21[3] = &unk_279D7C2E8;
      objc_copyWeak(&v22, &location);
      v19 = [(TVPPlayer *)self addBoundaryTimeObserverForTimes:allObjects withHandler:v21];

      [(TVPPlayer *)self setInterstitialBoundaryTimeObserverToken:v19];
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }
}

void __46__TVPPlayer_setCurrentInterstitialCollection___block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = [WeakRetained stateMachine];
  v7 = @"Due to time jump key";
  v5 = [MEMORY[0x277CCABB0] numberWithBool:a2];
  v8[0] = v5;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [v4 postEvent:@"Interstitial boundary crossed" withContext:0 userInfo:v6];
}

- (NSArray)audioOptions
{
  v20 = *MEMORY[0x277D85DE8];
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  if ([_activePlayerItem status] == 1)
  {
    asset = [_activePlayerItem asset];
    tvp_sortedAudioAVMediaSelectionOptions = [asset tvp_sortedAudioAVMediaSelectionOptions];

    array = [MEMORY[0x277CBEB18] array];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v6 = tvp_sortedAudioAVMediaSelectionOptions;
    v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          v12 = [TVPAudioOption alloc];
          v13 = [(TVPAudioOption *)v12 initWithOption:v11, v15];
          [array addObject:v13];
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v8);
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (void)setSelectedAudioOption:(id)option
{
  optionCopy = option;
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  avMediaSelectionOption = [optionCopy avMediaSelectionOption];

  asset = [_activePlayerItem asset];
  v7 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];

  [(TVPPlayer *)self willChangeValueForKey:@"selectedAudioOption"];
  if (avMediaSelectionOption)
  {
    [_activePlayerItem selectMediaOption:avMediaSelectionOption inMediaSelectionGroup:v7];
  }

  else
  {
    [_activePlayerItem selectMediaOptionAutomaticallyInMediaSelectionGroup:v7];
  }

  [(TVPPlayer *)self didChangeValueForKey:@"selectedAudioOption"];
}

- (TVPAudioOption)selectedAudioOption
{
  v24 = *MEMORY[0x277D85DE8];
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  v4 = _activePlayerItem;
  if (_activePlayerItem)
  {
    if ([_activePlayerItem status] == 1 && (objc_msgSend(v4, "asset"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "statusOfValueForKey:error:", @"availableMediaCharacteristicsWithMediaSelectionOptions", 0), v5, v6 == 2))
    {
      asset = [v4 asset];
      v8 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];

      currentMediaSelection = [v4 currentMediaSelection];
      v10 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v8];

      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      audioOptions = [(TVPPlayer *)self audioOptions];
      cachedSelectedAudioOption = [audioOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (cachedSelectedAudioOption)
      {
        v13 = *v20;
        while (2)
        {
          for (i = 0; i != cachedSelectedAudioOption; i = i + 1)
          {
            if (*v20 != v13)
            {
              objc_enumerationMutation(audioOptions);
            }

            v15 = *(*(&v19 + 1) + 8 * i);
            avMediaSelectionOption = [v15 avMediaSelectionOption];
            v17 = [avMediaSelectionOption isEqual:v10];

            if (v17)
            {
              cachedSelectedAudioOption = v15;
              goto LABEL_16;
            }
          }

          cachedSelectedAudioOption = [audioOptions countByEnumeratingWithState:&v19 objects:v23 count:16];
          if (cachedSelectedAudioOption)
          {
            continue;
          }

          break;
        }
      }

LABEL_16:
    }

    else
    {
      cachedSelectedAudioOption = [(TVPPlayer *)self cachedSelectedAudioOption];
    }
  }

  else
  {
    cachedSelectedAudioOption = 0;
  }

  return cachedSelectedAudioOption;
}

- (NSArray)subtitleOptions
{
  v27 = *MEMORY[0x277D85DE8];
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  v4 = _activePlayerItem;
  if (_activePlayerItem && [_activePlayerItem status] == 1)
  {
    asset = [v4 asset];
    tvp_sortedSubtitleAVMediaSelectionOptions = [asset tvp_sortedSubtitleAVMediaSelectionOptions];

    array = [MEMORY[0x277CBEB18] array];
    v8 = +[TVPSubtitleOption offSubtitleOption];
    [array addObject:v8];

    if ([tvp_sortedSubtitleAVMediaSelectionOptions count])
    {
      v9 = +[TVPSubtitleOption autoSubtitleOption];
      [array addObject:v9];

      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v10 = tvp_sortedSubtitleAVMediaSelectionOptions;
      v11 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v23;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v23 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v22 + 1) + 8 * i);
            v16 = [TVPSubtitleOption alloc];
            v17 = [(TVPSubtitleOption *)v16 initWithAVMediaSelectionOption:v15, v22];
            [array addObject:v17];
          }

          v12 = [v10 countByEnumeratingWithState:&v22 objects:v26 count:16];
        }

        while (v12);
      }
    }

    delegate = [(TVPPlayer *)self delegate];
    if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v19 = [delegate player:self filteredSubtitleOptionsFromOptions:array];
      if (([array isEqual:v19] & 1) == 0)
      {
        v20 = [MEMORY[0x277CBEB18] arrayWithArray:v19];

        [(TVPPlayer *)self performSelector:sel__updateSelectedSubtitleForFilteredOptions_ withObject:v19 afterDelay:0.0];
        array = v20;
      }
    }
  }

  else
  {
    array = 0;
  }

  return array;
}

- (TVPSubtitleOption)selectedSubtitleOption
{
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  v4 = _activePlayerItem;
  if (!_activePlayerItem || [_activePlayerItem status] != 1 || (objc_msgSend(v4, "asset"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "statusOfValueForKey:error:", @"availableMediaCharacteristicsWithMediaSelectionOptions", 0), v5, v6 != 2))
  {
    v17 = 0;
    goto LABEL_9;
  }

  asset = [v4 asset];
  v8 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5E30]];

  currentMediaSelection = [v4 currentMediaSelection];
  v10 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v8];

  DisplayType = MACaptionAppearanceGetDisplayType(kMACaptionAppearanceDomainUser);
  v12 = [(TVPSubtitleOption *)[TVPAutoSubtitleOption alloc] initWithAVMediaSelectionOption:v10];
  temporarySubtitleOverrideType = [(TVPPlayer *)self temporarySubtitleOverrideType];
  if (temporarySubtitleOverrideType || DisplayType != kMACaptionAppearanceDisplayTypeAutomatic)
  {

LABEL_13:
    if (v10 && (![v10 hasMediaCharacteristic:*MEMORY[0x277CE5DF8]] || (objc_msgSend(v10, "hasMediaCharacteristic:", *MEMORY[0x277CE5E18]) & 1) != 0))
    {
      v19 = TVPSubtitleOption;
    }

    else
    {
      v19 = TVPOffSubtitleOption;
    }

    v16 = [[v19 alloc] initWithAVMediaSelectionOption:v10];
    goto LABEL_19;
  }

  subtitleOptions = [(TVPPlayer *)self subtitleOptions];
  v15 = [subtitleOptions containsObject:v12];

  if (!v15)
  {
    goto LABEL_13;
  }

  v16 = v12;
LABEL_19:
  v17 = v16;

LABEL_9:

  return v17;
}

- (id)selectedSubtitleOptionWithNoOffOrAutoOption
{
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  v3 = _activePlayerItem;
  if (_activePlayerItem && [_activePlayerItem status] == 1 && (objc_msgSend(v3, "asset"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "statusOfValueForKey:error:", @"availableMediaCharacteristicsWithMediaSelectionOptions", 0), v4, v5 == 2))
  {
    asset = [v3 asset];
    v7 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5E30]];

    currentMediaSelection = [v3 currentMediaSelection];
    v9 = [currentMediaSelection selectedMediaOptionInMediaSelectionGroup:v7];

    v10 = [[TVPSubtitleOption alloc] initWithAVMediaSelectionOption:v9];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)updateSubtitleOptions
{
  [(TVPPlayer *)self willChangeValueForKey:@"subtitleOptions"];
  delegate = [(TVPPlayer *)self delegate];
  if (delegate)
  {
    v4 = delegate;
    delegate2 = [(TVPPlayer *)self delegate];
    v6 = objc_opt_respondsToSelector();

    if (v6)
    {
      subtitleOptions = [(TVPPlayer *)self subtitleOptions];
    }
  }

  [(TVPPlayer *)self didChangeValueForKey:@"subtitleOptions"];
}

- (void)setCurrentMediaItemInitialLoadingComplete:(BOOL)complete
{
  [(TVPPlayer *)self willChangeValueForKey:@"currentMediaItemInitialLoadingComplete"];
  self->_currentMediaItemInitialLoadingComplete = complete;

  [(TVPPlayer *)self didChangeValueForKey:@"currentMediaItemInitialLoadingComplete"];
}

- (TVPTimeRange)bufferedTimeRange
{
  cachedLoadedTimeRanges = [(TVPPlayer *)self cachedLoadedTimeRanges];
  memset(&v14, 0, sizeof(v14));
  objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v5 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsScene"];

  if (v5)
  {
    memset(&v13, 0, sizeof(v13));
    objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    objc_msgSend__currentMediaItemForwardPlaybackEndTime(self);
    CMTimeRangeFromTimeToTime(&v13, &start.start, &end.start);
    end = v14;
    memset(&start, 0, sizeof(start));
    otherRange = v13;
    CMTimeRangeGetIntersection(&start, &end, &otherRange);
    objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    duration = start.start;
    CMTimeSubtract(&otherRange.start, &duration, &end.start);
    duration = start.duration;
    CMTimeRangeMake(&end, &otherRange.start, &duration);
    v14 = end;
  }

  v6 = [TVPTimeRange alloc];
  v13 = v14;
  v7 = [(TVPTimeRange *)v6 initWithCMTimeRange:&v13];

  return v7;
}

- (TVPTimeRange)seekableTimeRange
{
  cachedSeekableTimeRanges = [(TVPPlayer *)self cachedSeekableTimeRanges];
  memset(&v14, 0, sizeof(v14));
  objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v5 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsScene"];

  if (v5)
  {
    memset(&v13, 0, sizeof(v13));
    objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    objc_msgSend__currentMediaItemForwardPlaybackEndTime(self);
    CMTimeRangeFromTimeToTime(&v13, &start.start, &end.start);
    end = v14;
    memset(&start, 0, sizeof(start));
    otherRange = v13;
    CMTimeRangeGetIntersection(&start, &end, &otherRange);
    objc_msgSend__currentMediaItemReversePlaybackEndTime(self);
    duration = start.start;
    CMTimeSubtract(&otherRange.start, &duration, &end.start);
    duration = start.duration;
    CMTimeRangeMake(&end, &otherRange.start, &duration);
    v14 = end;
  }

  v6 = [TVPTimeRange alloc];
  v13 = v14;
  v7 = [(TVPTimeRange *)v6 initWithCMTimeRange:&v13];

  return v7;
}

- (TVPDateRange)seekableDateRange
{
  if ([(TVPPlayer *)self _currentPlayerItemContainsDates])
  {
    cachedSeekableTimeRanges = [(TVPPlayer *)self cachedSeekableTimeRanges];
    memset(v9, 0, sizeof(v9));
    v8 = 0u;
    objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
    *&v7.value = v8;
    v7.epoch = *&v9[0];
    v4 = [(TVPPlayer *)self _estimatedPlaybackDateForCMTime:&v7];
    v7 = *(v9 + 8);
    v5 = [[TVPDateRange alloc] initWithStartDate:v4 duration:CMTimeGetSeconds(&v7)];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (double)forwardPlaybackEndTime
{
  memset(&v3[1], 0, sizeof(CMTime));
  objc_msgSend__currentMediaItemForwardPlaybackEndTime(self, a2);
  result = 0.0;
  if (0 >> 96)
  {
    v3[0] = v3[1];
    return CMTimeGetSeconds(v3);
  }

  return result;
}

- (double)reversePlaybackEndTime
{
  memset(&v3[1], 0, sizeof(CMTime));
  objc_msgSend__currentMediaItemReversePlaybackEndTime(self, a2);
  result = 0.0;
  if (0 >> 96)
  {
    v3[0] = v3[1];
    return CMTimeGetSeconds(v3);
  }

  return result;
}

- (void)setMediaItemEndAction:(int64_t)action
{
  if (self->_mediaItemEndAction != action)
  {
    [(TVPPlayer *)self willChangeValueForKey:@"mediaItemEndAction"];
    self->_mediaItemEndAction = action;
    [(TVPPlayer *)self didChangeValueForKey:@"mediaItemEndAction"];

    [(TVPPlayer *)self _updateAVPlayerActionAtItemEnd];
  }
}

- (void)setMaximumBitRate:(double)rate
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_maximumBitRate != rate)
  {
    self->_maximumBitRate = rate;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    items = [aVQueuePlayer items];

    v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(items);
          }

          [*(*(&v10 + 1) + 8 * v9++) setPreferredPeakBitRate:self->_maximumBitRate];
        }

        while (v7 != v9);
        v7 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)playerDidHitBeginningOrEnd
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Hit beginning or end"];
}

- (BOOL)currentMediaItemSupportsScrubbingUsingPlayer
{
  if (![(TVPPlayer *)self currentMediaItemIsStreaming])
  {
    return 0;
  }

  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  v4 = currentPlayerItem;
  if (currentPlayerItem && [currentPlayerItem status] == 1)
  {
    canPlayFastForward = [v4 canPlayFastForward];
  }

  else
  {
    canPlayFastForward = 0;
  }

  return canPlayFastForward;
}

- (BOOL)hasInterstitials
{
  v17 = *MEMORY[0x277D85DE8];
  if ([(TVPPlayer *)self _integratedTimelineEnabled])
  {
    currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
    integratedTimeline = [currentPlayerItem integratedTimeline];
    currentSnapshot = [integratedTimeline currentSnapshot];
    segments = [currentSnapshot segments];

    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v7 = segments;
    v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v8)
    {
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v7);
          }

          if ([*(*(&v12 + 1) + 8 * i) segmentType] == 1)
          {
            LOBYTE(v8) = 1;
            goto LABEL_13;
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8;
}

- (BOOL)seeking
{
  if ([(TVPPlayer *)self numOutstandingSeeks]> 0)
  {
    return 1;
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  currentState = [stateMachine currentState];
  v6 = [currentState isEqualToString:@"Waiting for seek"];

  return v6;
}

- (void)setPreventsSleepDuringVideoPlayback:(BOOL)playback
{
  self->_preventsSleepDuringVideoPlayback = playback;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  if (aVQueuePlayer)
  {
    v5 = aVQueuePlayer;
    [aVQueuePlayer setPreventsDisplaySleepDuringVideoPlayback:self->_preventsSleepDuringVideoPlayback];
    aVQueuePlayer = v5;
  }
}

- (void)addWeakReferenceToVideoView:(id)view
{
  if (view)
  {
    [(NSHashTable *)self->_videoViewWeakReferences addObject:?];
  }
}

- (void)removeWeakReferenceToVideoView:(id)view
{
  if (view)
  {
    [(NSHashTable *)self->_videoViewWeakReferences removeObject:?];
  }
}

- (void)setHighFrequencyElapsedTimeObserverBlock:(id)block
{
  v4 = [block copy];
  highFrequencyElapsedTimeObserverBlock = self->_highFrequencyElapsedTimeObserverBlock;
  self->_highFrequencyElapsedTimeObserverBlock = v4;

  if (self->_highFrequencyElapsedTimeObserverBlock)
  {

    [(TVPPlayer *)self _addHighFrequencyTimeObserverIfNecessary];
  }

  else
  {

    [(TVPPlayer *)self _removeHighFrequencyTimeObserverIfNecessary];
  }
}

- (int64_t)currentScanMode
{
  stateMachine = [(TVPPlayer *)self stateMachine];
  currentState = [stateMachine currentState];

  if (([currentState isEqualToString:@"Scanning using AVPlayer"] & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Scanning using AVPlayer driven by AVKit"))
  {
    if ([(TVPPlayer *)self currentMediaItemIsStreaming])
    {
      currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
      canPlayFastForward = [currentPlayerItem canPlayFastForward];

      if (canPlayFastForward)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }
    }

    else
    {
      v7 = 2;
    }
  }

  else if (([currentState isEqualToString:@"Scanning using external images"] & 1) != 0 || objc_msgSend(currentState, "isEqualToString:", @"Scanning using external images driven by AVKit"))
  {
    v7 = 3;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)setUpdatesBookmarks:(BOOL)bookmarks
{
  if (self->_updatesBookmarks != bookmarks)
  {
    self->_updatesBookmarks = bookmarks;
    if (bookmarks)
    {
      v4 = [[TVPPlayerBookmarkMonitor alloc] initWithPlayer:self];
      [(TVPPlayer *)self setBookmarkMonitor:v4];
    }

    else
    {

      [(TVPPlayer *)self setBookmarkMonitor:0];
    }
  }
}

- (void)setSendsPlayerReports:(BOOL)reports
{
  if (self->_sendsPlayerReports != reports)
  {
    self->_sendsPlayerReports = reports;
    if (reports)
    {
      v4 = [[TVPPlayerReporter alloc] initWithPlayer:self];
      [(TVPPlayer *)self setPlayerReporter:v4];
    }

    else
    {

      [(TVPPlayer *)self setPlayerReporter:0];
    }
  }
}

- (void)selectMediaArray:(id)array
{
  arrayCopy = array;
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  [(TVPPlayer *)self _selectMediaArray:arrayCopy withItem:currentPlayerItem];
}

- (id)AVQueuePlayerCreateIfNecessary:(BOOL)necessary
{
  necessaryCopy = necessary;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  if (!aVQueuePlayer)
  {
    aVQueuePlayer = [(TVPPlayer *)self earlyAVQueuePlayer];
    if (!aVQueuePlayer && necessaryCopy)
    {
      v6 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Creating AVQueuePlayer earlier than normal upon request", v8, 2u);
      }

      aVQueuePlayer = +[TVPPlayer _newAVQueuePlayer];
      [(TVPPlayer *)self setEarlyAVQueuePlayer:aVQueuePlayer];
    }
  }

  return aVQueuePlayer;
}

- (void)restartPlaybackWithState:(id)state
{
  v9[1] = *MEMORY[0x277D85DE8];
  if (state)
  {
    v8 = @"Post loading state key";
    v9[0] = state;
    v4 = MEMORY[0x277CBEAC0];
    stateCopy = state;
    v6 = [v4 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Restart playback" withContext:0 userInfo:v6];
}

- (void)_selectMediaArray:(id)array withItem:(id)item
{
  v28 = *MEMORY[0x277D85DE8];
  arrayCopy = array;
  itemCopy = item;
  v8 = itemCopy;
  if (itemCopy)
  {
    pendingSelectedMediaArray = [itemCopy asset];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v10 = arrayCopy;
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v20 = 0;
          v16 = [pendingSelectedMediaArray mediaSelectionGroupForPropertyList:v15 mediaSelectionOption:&v20];
          v17 = v20;
          if (v16)
          {
            [v8 selectMediaOption:v17 inMediaSelectionGroup:v16];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }
  }

  else
  {
    v18 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Player item %p is not ready to receive the selectedMediaArray. Holding it until it is ready...", buf, 0xCu);
    }

    v19 = arrayCopy;
    pendingSelectedMediaArray = self->_pendingSelectedMediaArray;
    self->_pendingSelectedMediaArray = v19;
  }
}

- (void)setAVQueuePlayer:(id)player
{
  playerCopy = player;
  if (self->_AVQueuePlayer != playerCopy)
  {
    [(TVPPlayer *)self _removeObserversFromAVQueuePlayer:?];
    if (![(TVPPlayer *)self _integratedTimelineEnabled])
    {
      [(TVPPlayer *)self _removePeriodicTimeObserverFromAVQueuePlayer:self->_AVQueuePlayer];
      [(TVPPlayer *)self _removeHighFrequencyTimeObserverIfNecessary];
      [(TVPPlayer *)self _removeBoundaryTimeObserversFromAVQueuePlayer:self->_AVQueuePlayer];
    }

    [self->_AVQueuePlayer removeAllItems];
    [(TVPPlayer *)self willChangeValueForKey:@"AVQueuePlayer"];
    [(TVPPlayer *)self willChangeValueForKey:@"avPlayer"];
    objc_storeStrong(&self->_AVQueuePlayer, player);
    [(TVPPlayer *)self didChangeValueForKey:@"AVQueuePlayer"];
    [(TVPPlayer *)self didChangeValueForKey:@"avPlayer"];
    [(TVPPlayer *)self _updateVideoViewsWithAVQueuePlayer:self->_AVQueuePlayer];
    [(TVPPlayer *)self _addObserversToAVQueuePlayer:self->_AVQueuePlayer];
    if (![(TVPPlayer *)self _integratedTimelineEnabled])
    {
      [(TVPPlayer *)self _addPeriodicTimeObserverToAVQueuePlayer:self->_AVQueuePlayer];
      [(TVPPlayer *)self _addHighFrequencyTimeObserverIfNecessary];
      boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
      v7 = [boundaryTimeObserverInfos count];

      if (v7)
      {
        [(TVPPlayer *)self _addBoundaryTimeObserversToAVQueuePlayer:self->_AVQueuePlayer];
      }
    }

    [self->_AVQueuePlayer setMinRateForAudioPlayback:0.0];
    if ([(TVPPlayer *)self _isScreenBeingRecorded])
    {
      v8 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Screen is being recorded.  Muting AVQueuePlayer", v12, 2u);
      }

      [(TVPPlayer *)self setWasMutedPriorToScreenRecording:self->_muted];
      AVQueuePlayer = self->_AVQueuePlayer;
      muted = 1;
    }

    else
    {
      AVQueuePlayer = self->_AVQueuePlayer;
      muted = self->_muted;
    }

    [AVQueuePlayer setMuted:muted];
    *&v11 = self->_volume;
    [self->_AVQueuePlayer setVolume:v11];
    [self->_AVQueuePlayer setAllowsExternalPlayback:self->_allowsExternalPlayback];
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      [self->_AVQueuePlayer setExternalPlaybackInterstitialSchedulingStrategy:1];
    }

    if ([(TVPPlayer *)self limitsBandwidthForCellularAccess])
    {
      [self->_AVQueuePlayer _setLimitsBandwidthForCellularAccess:1];
    }

    [self->_AVQueuePlayer setPreventsDisplaySleepDuringVideoPlayback:[(TVPPlayer *)self preventsSleepDuringVideoPlayback]];
    [(TVPPlayer *)self _updateAVPlayerActionAtItemEnd];
  }
}

- (void)setInterstitialEventMonitor:(id)monitor
{
  monitorCopy = monitor;
  if (self->_interstitialEventMonitor != monitorCopy)
  {
    v6 = monitorCopy;
    [(TVPPlayer *)self _removeObserversFromInterstitialEventMonitor:?];
    objc_storeStrong(&self->_interstitialEventMonitor, monitor);
    [(TVPPlayer *)self _addObserversToInterstitialEventMonitor:self->_interstitialEventMonitor];
    monitorCopy = v6;
  }
}

- (id)accessLog
{
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  accessLog = [currentPlayerItem accessLog];

  return accessLog;
}

- (id)errorLog
{
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  errorLog = [currentPlayerItem errorLog];

  return errorLog;
}

- (id)timedMetadata
{
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  if ([currentPlayerItem status] == 1)
  {
    timedMetadata = [currentPlayerItem timedMetadata];
  }

  else
  {
    timedMetadata = 0;
  }

  return timedMetadata;
}

- (void)setCurrentPlayerItem:(id)item
{
  v17 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if (self->_currentPlayerItem != itemCopy)
  {
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      integratedTimeline = [(TVPPlayerItem *)self->_currentPlayerItem integratedTimeline];
      [(TVPPlayer *)self _removePeriodicTimeObserverFromIntegratedTimeline:integratedTimeline];

      [(TVPPlayer *)self _removeHighFrequencyTimeObserverIfNecessary];
      integratedTimeline2 = [(TVPPlayerItem *)self->_currentPlayerItem integratedTimeline];
      [(TVPPlayer *)self _removeBoundaryTimeObserversFromIntegratedTimeline:integratedTimeline2];
    }

    if (self->_currentPlayerItem)
    {
      v8 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        currentPlayerItem = self->_currentPlayerItem;
        v15 = 138412290;
        v16 = currentPlayerItem;
        _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Setting AVPlayerItem delegate to nil for %@", &v15, 0xCu);
      }

      [(TVPPlayerItem *)self->_currentPlayerItem setDelegate:0];
      v10 = self->_currentPlayerItem;
    }

    else
    {
      v10 = 0;
    }

    [(TVPPlayer *)self _removeObserversForPlayerItem:v10];
    [(TVPPlayerItem *)self->_currentPlayerItem cancelPendingSeeks];
    [(TVPPlayer *)self willChangeValueForKey:@"currentPlayerItem"];
    objc_storeStrong(&self->_currentPlayerItem, item);
    [(TVPPlayer *)self didChangeValueForKey:@"currentPlayerItem"];
    [(TVPPlayer *)self _addObserversForPlayerItem:self->_currentPlayerItem];
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      integratedTimeline3 = [(TVPPlayerItem *)self->_currentPlayerItem integratedTimeline];
      [(TVPPlayer *)self _addPeriodicTimeObserverToIntegratedTimeline:integratedTimeline3];

      [(TVPPlayer *)self _addHighFrequencyTimeObserverIfNecessary];
      integratedTimeline4 = [(TVPPlayerItem *)self->_currentPlayerItem integratedTimeline];
      [integratedTimeline4 setSeekDelegate:self];
    }

    if (self->_currentPlayerItem)
    {
      v13 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v14 = self->_currentPlayerItem;
        v15 = 138412290;
        v16 = v14;
        _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Setting AVPlayerItem delegate to self for %@", &v15, 0xCu);
      }

      [(TVPPlayerItem *)self->_currentPlayerItem setDelegate:self];
    }
  }
}

- (void)setCachedDuration:(id *)duration
{
  p_cachedDuration = &self->_cachedDuration;
  time1 = *duration;
  cachedDuration = self->_cachedDuration;
  if (CMTimeCompare(&time1, &cachedDuration))
  {
    [(TVPPlayer *)self willChangeValueForKey:@"cachedDuration"];
    [(TVPPlayer *)self willChangeValueForKey:@"duration"];
    v6 = *&duration->var0;
    p_cachedDuration->epoch = duration->var3;
    *&p_cachedDuration->value = v6;
    [(TVPPlayer *)self didChangeValueForKey:@"cachedDuration"];
    [(TVPPlayer *)self didChangeValueForKey:@"duration"];
  }
}

- (void)setCachedLoadedTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  if (self->_cachedLoadedTimeRanges != rangesCopy)
  {
    v6 = rangesCopy;
    [(TVPPlayer *)self willChangeValueForKey:@"cachedLoadedTimeRanges"];
    [(TVPPlayer *)self willChangeValueForKey:@"bufferedTimeRange"];
    objc_storeStrong(&self->_cachedLoadedTimeRanges, ranges);
    [(TVPPlayer *)self didChangeValueForKey:@"cachedLoadedTimeRanges"];
    [(TVPPlayer *)self didChangeValueForKey:@"bufferedTimeRange"];
    rangesCopy = v6;
  }
}

- (void)setCachedSeekableTimeRanges:(id)ranges
{
  rangesCopy = ranges;
  if (self->_cachedSeekableTimeRanges != rangesCopy)
  {
    v6 = rangesCopy;
    [(TVPPlayer *)self willChangeValueForKey:@"cachedSeekableTimeRanges"];
    [(TVPPlayer *)self willChangeValueForKey:@"seekableTimeRange"];
    [(TVPPlayer *)self willChangeValueForKey:@"seekableDateRange"];
    objc_storeStrong(&self->_cachedSeekableTimeRanges, ranges);
    [(TVPPlayer *)self didChangeValueForKey:@"cachedSeekableTimeRanges"];
    [(TVPPlayer *)self didChangeValueForKey:@"seekableTimeRange"];
    [(TVPPlayer *)self didChangeValueForKey:@"seekableDateRange"];
    rangesCopy = v6;
  }
}

- (void)setLimitReadAhead:(BOOL)ahead
{
  aheadCopy = ahead;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  [aVQueuePlayer setResourceConservationLevelWhilePaused:aheadCopy];
}

- (BOOL)limitReadAhead
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  v3 = [aVQueuePlayer resourceConservationLevelWhilePaused] == 1;

  return v3;
}

- (void)setPlaylistInternal:(id)internal
{
  internalCopy = internal;
  if (self->_playlistInternal != internalCopy)
  {
    v6 = internalCopy;
    [(TVPPlayer *)self _removeObserversForPlaylist:?];
    objc_storeStrong(&self->_playlistInternal, internal);
    [(TVPPlayer *)self _addObserversForPlaylist:self->_playlistInternal];
    [(TVPPlayer *)self _updateAVPlayerActionAtItemEnd];
    [(TVPPlayer *)self setLoadingInitialItemInPlaylist:1];
    [(TVPPlayer *)self setInitialMediaItemHasCompletedInitialLoading:0];
    [(TVPPlayer *)self setCurrentDirectionOfPlaylistChange:0];
    internalCopy = v6;
  }
}

- (void)setPostLoadingState:(id)state
{
  v9 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = stateCopy;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Setting post loading state to %@", &v7, 0xCu);
  }

  postLoadingState = self->_postLoadingState;
  self->_postLoadingState = stateCopy;
}

- (TVPMediaItemLoader)currentMediaItemLoader
{
  v17 = *MEMORY[0x277D85DE8];
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  mediaItemLoaders = [(TVPPlayer *)self mediaItemLoaders];
  v5 = [mediaItemLoaders countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(mediaItemLoaders);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        mediaItem = [v8 mediaItem];
        v10 = [mediaItem isEqualToMediaItem:currentMediaItem];

        if (v10)
        {
          v5 = v8;
          goto LABEL_11;
        }
      }

      v5 = [mediaItemLoaders countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)setTimeBeingSeekedTo:(id *)to
{
  v3 = *&to->var0;
  self->_timeBeingSeekedTo.epoch = to->var3;
  *&self->_timeBeingSeekedTo.value = v3;
}

- (void)setMediaRemoteUpdatingEnabled:(BOOL)enabled
{
  if (self->_mediaRemoteUpdatingEnabled != enabled)
  {
    self->_mediaRemoteUpdatingEnabled = enabled;
    [(TVPPlayer *)self _updateMediaRemoteManager];
  }
}

- (void)setUpdatesMediaRemoteInfoAutomatically:(BOOL)automatically
{
  if (self->_updatesMediaRemoteInfoAutomatically != automatically)
  {
    self->_updatesMediaRemoteInfoAutomatically = automatically;
    [(TVPPlayer *)self _updateMediaRemoteManager];
  }
}

- (void)setRespondsToRemoteControlEvents:(BOOL)events
{
  if (self->_respondsToRemoteControlEvents != events)
  {
    self->_respondsToRemoteControlEvents = events;
    [(TVPPlayer *)self _updateMediaRemoteManager];
  }
}

- (void)setPlaybackHUDString:(id)string
{
  stringCopy = string;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  [aVQueuePlayer _setAncillaryPerformanceInformationForDisplay:stringCopy];
}

- (void)setPreferredForwardBufferDuration:(double)duration
{
  v15 = *MEMORY[0x277D85DE8];
  if (duration >= 0.0 && self->_preferredForwardBufferDuration != duration)
  {
    self->_preferredForwardBufferDuration = duration;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    items = [aVQueuePlayer items];

    v6 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
            objc_enumerationMutation(items);
          }

          [*(*(&v10 + 1) + 8 * v9++) setPreferredForwardBufferDuration:self->_preferredForwardBufferDuration];
        }

        while (v7 != v9);
        v7 = [items countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)setPreferredMaximumResolution:(CGSize)resolution
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_preferredMaximumResolution.width != resolution.width || self->_preferredMaximumResolution.height != resolution.height)
  {
    self->_preferredMaximumResolution = resolution;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    items = [aVQueuePlayer items];

    v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v11 + 1) + 8 * i) setPreferredMaximumResolution:{self->_preferredMaximumResolution.width, self->_preferredMaximumResolution.height}];
        }

        v8 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (CGSize)preferredMaximumResolution
{
  width = self->_preferredMaximumResolution.width;
  height = self->_preferredMaximumResolution.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setReportingCategory:(id)category
{
  v11 = *MEMORY[0x277D85DE8];
  categoryCopy = category;
  objc_storeStrong(&self->_reportingCategory, category);
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  currentItem = [aVQueuePlayer currentItem];

  if (currentItem)
  {
    v8 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 138412290;
      v10 = categoryCopy;
      _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Setting AVPlayerItem reportingCategory to %@", &v9, 0xCu);
    }

    [currentItem setReportingCategory:categoryCopy];
  }
}

- (void)setReportingValueWithString:(id)string forKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  keyCopy = key;
  v8 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    *buf = 138412802;
    v25 = stringCopy;
    v26 = 2112;
    v27 = keyCopy;
    v28 = 2112;
    v29 = aVQueuePlayer;
    _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Setting reporting value %@ for key %@; player %@", buf, 0x20u);
  }

  if (keyCopy)
  {
    reportingValues = [(TVPPlayer *)self reportingValues];
    v12 = reportingValues;
    if (stringCopy)
    {
      [reportingValues setObject:stringCopy forKey:keyCopy];
    }

    else
    {
      [reportingValues removeObjectForKey:keyCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
  items = [aVQueuePlayer2 items];

  v15 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v19 + 1) + 8 * v18++) setReportingValueWithString:stringCopy forKey:keyCopy];
      }

      while (v16 != v18);
      v16 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)setReportingValueWithNumber:(id)number forKey:(id)key
{
  v30 = *MEMORY[0x277D85DE8];
  numberCopy = number;
  keyCopy = key;
  v8 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    *buf = 138412802;
    v25 = numberCopy;
    v26 = 2112;
    v27 = keyCopy;
    v28 = 2112;
    v29 = aVQueuePlayer;
    _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Setting reporting value %@ for key %@; player %@", buf, 0x20u);
  }

  if (keyCopy)
  {
    reportingValues = [(TVPPlayer *)self reportingValues];
    v12 = reportingValues;
    if (numberCopy)
    {
      [reportingValues setObject:numberCopy forKey:keyCopy];
    }

    else
    {
      [reportingValues removeObjectForKey:keyCopy];
    }
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
  items = [aVQueuePlayer2 items];

  v15 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v20;
    do
    {
      v18 = 0;
      do
      {
        if (*v20 != v17)
        {
          objc_enumerationMutation(items);
        }

        [*(*(&v19 + 1) + 8 * v18++) setReportingValueWithNumber:numberCopy forKey:keyCopy];
      }

      while (v16 != v18);
      v16 = [items countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v16);
  }
}

- (void)setPreferredMaximumResolutionForExpensiveNetworks:(CGSize)networks
{
  v16 = *MEMORY[0x277D85DE8];
  if (self->_preferredMaximumResolutionForExpensiveNetworks.width != networks.width || self->_preferredMaximumResolutionForExpensiveNetworks.height != networks.height)
  {
    self->_preferredMaximumResolutionForExpensiveNetworks = networks;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    items = [aVQueuePlayer items];

    v7 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(items);
          }

          [*(*(&v11 + 1) + 8 * i) setPreferredMaximumResolutionForExpensiveNetworks:{self->_preferredMaximumResolutionForExpensiveNetworks.width, self->_preferredMaximumResolutionForExpensiveNetworks.height}];
        }

        v8 = [items countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (CGSize)preferredMaximumResolutionForExpensiveNetworks
{
  width = self->_preferredMaximumResolutionForExpensiveNetworks.width;
  height = self->_preferredMaximumResolutionForExpensiveNetworks.height;
  result.height = height;
  result.width = width;
  return result;
}

- (void)setPrefersSDRVideo:(BOOL)video
{
  if (self->_prefersSDRVideo != video)
  {
    self->_prefersSDRVideo = video;
  }
}

- (void)setLimitsBandwidthForCellularAccess:(BOOL)access
{
  if (self->_limitsBandwidthForCellularAccess != access)
  {
    self->_limitsBandwidthForCellularAccess = access;
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    [aVQueuePlayer _setLimitsBandwidthForCellularAccess:self->_limitsBandwidthForCellularAccess];
  }
}

- (void)setAllowsCellularUsage:(BOOL)usage
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_allowsCellularUsage != usage)
  {
    usageCopy = usage;
    self->_allowsCellularUsage = usage;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    mediaItemLoaders = [(TVPPlayer *)self mediaItemLoaders];
    v5 = [mediaItemLoaders countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(mediaItemLoaders);
          }

          [*(*(&v9 + 1) + 8 * v8++) setAllowsCellularUsage:usageCopy];
        }

        while (v6 != v8);
        v6 = [mediaItemLoaders countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)setAllowsConstrainedNetworkUsage:(BOOL)usage
{
  v14 = *MEMORY[0x277D85DE8];
  if (self->_allowsConstrainedNetworkUsage != usage)
  {
    usageCopy = usage;
    self->_allowsConstrainedNetworkUsage = usage;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    mediaItemLoaders = [(TVPPlayer *)self mediaItemLoaders];
    v5 = [mediaItemLoaders countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(mediaItemLoaders);
          }

          [*(*(&v9 + 1) + 8 * v8++) setAllowsConstrainedNetworkUsage:usageCopy];
        }

        while (v6 != v8);
        v6 = [mediaItemLoaders countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (int64_t)externalPlaybackType
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  externalPlaybackType = [aVQueuePlayer externalPlaybackType];

  if (externalPlaybackType == 2)
  {
    return 2;
  }

  else
  {
    return externalPlaybackType == 1;
  }
}

- (int64_t)loadingSubstate
{
  state = [(TVPPlayer *)self state];
  v4 = +[TVPPlaybackState stopped];

  if (state == v4)
  {
    return 0;
  }

  state2 = [(TVPPlayer *)self state];
  v6 = +[TVPPlaybackState loading];

  if (state2 != v6)
  {
    return 3;
  }

  currentMediaItemLoader = [(TVPPlayer *)self currentMediaItemLoader];
  state3 = [currentMediaItemLoader state];

  if ([state3 isEqualToString:0x287E4F038] & 1) != 0 || (objc_msgSend(state3, "isEqualToString:", 0x287E4AA38))
  {
    v7 = 0;
  }

  else if ([state3 isEqualToString:0x287E4F118])
  {
    v7 = 2;
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

- (id)playbackCoordinator:(id)coordinator identifierForPlayerItem:(id)item
{
  v24 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    mediaItem = 0;
    goto LABEL_5;
  }

  v6 = objc_msgSend_mediaItemLoader(itemCopy);
  mediaItem = [v6 mediaItem];

  playlist = [(TVPPlayer *)self playlist];
  currentMediaItem = [playlist currentMediaItem];
  v10 = [mediaItem isEqualToMediaItem:currentMediaItem];

  playlist2 = [(TVPPlayer *)self playlist];
  playlist3 = playlist2;
  if (!v10)
  {
    nextMediaItem = [playlist2 nextMediaItem];
    v16 = [mediaItem isEqualToMediaItem:nextMediaItem];

    if (v16)
    {
      playlist3 = [(TVPPlayer *)self playlist];
      nextMediaItem2 = [playlist3 nextMediaItem];
      goto LABEL_8;
    }

LABEL_5:
    v14 = 0;
    goto LABEL_9;
  }

  nextMediaItem2 = [playlist2 currentMediaItem];
LABEL_8:
  v17 = nextMediaItem2;
  v14 = [nextMediaItem2 mediaItemMetadataForProperty:@"TVPMediaItemMetadataPlaybackCoordinatorIdentifier"];

LABEL_9:
  v18 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v14;
    v22 = 2112;
    v23 = mediaItem;
    _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Delegate callback playbackCoordinator:identifierForPlayerItem: returning identifier %@ for media item %@", &v20, 0x16u);
  }

  return v14;
}

- (BOOL)playerItem:(id)item shouldSeekToTime:(id *)time toleranceBefore:(id *)before toleranceAfter:(id *)after
{
  v33 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  if ([itemCopy status] == 1)
  {
    var0 = *MEMORY[0x277CC0898];
    var1 = *(MEMORY[0x277CC0898] + 8);
    if (time)
    {
      var0 = time->var0;
      var1 = time->var1;
      p_var2 = &time->var2;
      p_var3 = &time->var3;
    }

    else
    {
      p_var2 = (MEMORY[0x277CC0898] + 12);
      p_var3 = (MEMORY[0x277CC0898] + 16);
    }

    v11 = *p_var2;
    v12 = *p_var3;
    memset(&v26, 0, sizeof(v26));
    if (itemCopy)
    {
      objc_msgSend_currentTime(itemCopy);
    }

    currentDate = [itemCopy currentDate];
    v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v15 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      time.value = var0;
      time.timescale = var1;
      time.flags = v11;
      time.epoch = v12;
      v16 = v15;
      v17 = CMTimeCopyDescription(0, &time);
      time = v26;
      v18 = v17;
      v19 = CMTimeCopyDescription(0, &time);
      LODWORD(time.value) = 138413058;
      *(&time.value + 4) = itemCopy;
      LOWORD(time.flags) = 2112;
      *(&time.flags + 2) = v17;
      HIWORD(time.epoch) = 2112;
      v28 = v19;
      v29 = 2112;
      v30 = currentDate;
      _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "playerItem %@ shouldSeekToTime:%@ currentTime:%@ currentDate:%@", &time, 0x2Au);
    }

    if ((v26.flags & 0x1D) == 1)
    {
      time = v26;
      v20 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
      [v14 setObject:v20 forKey:@"TVPPlaybackTimePriorToSeekKey"];
    }

    if ((v11 & 0x1D) == 1)
    {
      time.value = var0;
      time.timescale = var1;
      time.flags = v11;
      time.epoch = v12;
      v21 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
      [v14 setObject:v21 forKey:@"TVPPlaybackSeekTargetTimeKey"];
    }

    if (currentDate)
    {
      [v14 setObject:currentDate forKey:@"TVPPlaybackDatePriorToSeekKey"];
    }

    if ([MEMORY[0x277CCACC8] isMainThread])
    {
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"TVPPlayerCurrentMediaItemWillSeekNotification" object:self userInfo:v14];
    }

    else
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __72__TVPPlayer_playerItem_shouldSeekToTime_toleranceBefore_toleranceAfter___block_invoke;
      block[3] = &unk_279D7BC20;
      block[4] = self;
      v25 = v14;
      dispatch_async(MEMORY[0x277D85CD0], block);
    }
  }

  return 1;
}

void __72__TVPPlayer_playerItem_shouldSeekToTime_toleranceBefore_toleranceAfter___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"TVPPlayerCurrentMediaItemWillSeekNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)integratedTimeline:(id)timeline willSeekToTime:(id *)time currentTime:(id *)currentTime
{
  v25 = *MEMORY[0x277D85DE8];
  timelineCopy = timeline;
  currentDate = [timelineCopy currentDate];
  v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v11 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    time = *time;
    v12 = v11;
    v13 = CMTimeCopyDescription(0, &time);
    time = *currentTime;
    v14 = v13;
    v15 = CMTimeCopyDescription(0, &time);
    LODWORD(time.value) = 138413058;
    *(&time.value + 4) = timelineCopy;
    LOWORD(time.flags) = 2112;
    *(&time.flags + 2) = v13;
    HIWORD(time.epoch) = 2112;
    v22 = v15;
    v23 = 2112;
    v24 = currentDate;
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "integratedTimeline %@ willSeekToTime:%@ currentTime:%@ currentDate:%@", &time, 0x2Au);
  }

  if ((currentTime->var2 & 0x1D) == 1)
  {
    time = *currentTime;
    v16 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
    [v10 setObject:v16 forKey:@"TVPPlaybackTimePriorToSeekKey"];
  }

  if ((time->var2 & 0x1D) == 1)
  {
    time = *time;
    v17 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
    [v10 setObject:v17 forKey:@"TVPPlaybackSeekTargetTimeKey"];
  }

  if (currentDate)
  {
    [v10 setObject:currentDate forKey:@"TVPPlaybackDatePriorToSeekKey"];
  }

  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __59__TVPPlayer_integratedTimeline_willSeekToTime_currentTime___block_invoke;
  v19[3] = &unk_279D7BC20;
  v19[4] = self;
  v20 = v10;
  v18 = v10;
  TVPPerformBlockOnMainThreadIfNeeded(v19);
}

void __59__TVPPlayer_integratedTimeline_willSeekToTime_currentTime___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 postNotificationName:@"TVPPlayerCurrentMediaItemWillSeekNotification" object:*(a1 + 32) userInfo:*(a1 + 40)];
}

- (void)metadataCollector:(id)collector didCollectDateRangeMetadataGroups:(id)groups indexesOfNewGroups:(id)newGroups indexesOfModifiedGroups:(id)modifiedGroups
{
  groupsCopy = groups;
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v8 = currentMediaItem;
  if (groupsCopy)
  {
    [currentMediaItem setMediaItemMetadata:groupsCopy forProperty:@"TVPMediaItemMetadataDateRangeMetadataGroups"];
  }

  else
  {
    [currentMediaItem removeMediaItemMetadataForProperty:@"TVPMediaItemMetadataDateRangeMetadataGroups"];
  }
}

- (void)_subtitleSettingsDidChange
{
  [MEMORY[0x277D82BB8] cancelPreviousPerformRequestsWithTarget:self selector:sel__notifyOfMediaSelectionOptionChanges object:0];

  [(TVPPlayer *)self performSelector:sel__notifyOfMediaSelectionOptionChanges withObject:0 afterDelay:0.0];
}

- (void)_playerMutedDidChange
{
  [(TVPPlayer *)self willChangeValueForKey:@"muted"];

  [(TVPPlayer *)self didChangeValueForKey:@"muted"];
}

- (void)_addObserversForMediaItemLoader:(id)loader
{
  if (loader)
  {
    [loader addObserver:self forKeyPath:@"state" options:1 context:__TVPMediaItemLoaderStateKVOContext_0];
  }
}

- (void)_removeObserversForMediaItemLoader:(id)loader
{
  if (loader)
  {
    [loader removeObserver:self forKeyPath:@"state" context:__TVPMediaItemLoaderStateKVOContext_0];
  }
}

- (void)_addObserversToAVQueuePlayer:(id)player
{
  if (player)
  {
    v4 = __AVPlayerCurrentItemKVOContext;
    playerCopy = player;
    [playerCopy addObserver:self forKeyPath:@"currentItem" options:9 context:v4];
    [playerCopy addObserver:self forKeyPath:@"timeControlStatus" options:3 context:__AVPlayerTimeControlStatusKVOContext];
    [playerCopy addObserver:self forKeyPath:@"outputObscuredDueToInsufficientExternalProtection" options:1 context:__AVPlayerOutputObscuredDueToInsufficientExternalProtectionKVOContext];
    [playerCopy addObserver:self forKeyPath:@"externalPlaybackActive" options:0 context:__AVPlayerExternalPlaybackActiveKVOContext];
    [playerCopy addObserver:self forKeyPath:@"muted" options:0 context:__AVPlayerMutedKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.status" options:3 context:__AVPlayerItemStatusKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.duration" options:1 context:__AVPlayerItemDurationKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.hasVideo" options:1 context:__AVPlayerItemHasVideoContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.presentationSize" options:1 context:__AVPlayerItemPresentationSizeContent];
    [playerCopy addObserver:self forKeyPath:@"currentItem.playbackLikelyToKeepUp" options:1 context:__AVPlayerItemLikelyToKeepUpKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.playbackBufferFull" options:1 context:__AVPlayerItemBufferFullKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.playbackBufferEmpty" options:1 context:__AVPlayerItemBufferEmptyKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.loadedTimeRanges" options:1 context:__AVPlayerItemLoadedTimeRangesKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.seekableTimeRanges" options:1 context:__AVPlayerItemSeekableTimeRangesKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.timedMetadata" options:0 context:__AVPlayerItemTimedMetadataKVOContext];
    [playerCopy addObserver:self forKeyPath:@"currentItem.tracks" options:3 context:__AVPlayerItemTracksKVOContext];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__avPlayerRateDidChange_ name:*MEMORY[0x277CE6158] object:playerCopy];
  }
}

- (void)_removeObserversFromAVQueuePlayer:(id)player
{
  if (player)
  {
    v4 = __AVPlayerCurrentItemKVOContext;
    playerCopy = player;
    [playerCopy removeObserver:self forKeyPath:@"currentItem" context:v4];
    [playerCopy removeObserver:self forKeyPath:@"timeControlStatus" context:__AVPlayerTimeControlStatusKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"outputObscuredDueToInsufficientExternalProtection" context:__AVPlayerOutputObscuredDueToInsufficientExternalProtectionKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"externalPlaybackActive" context:__AVPlayerExternalPlaybackActiveKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"muted" context:__AVPlayerMutedKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.status" context:__AVPlayerItemStatusKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.duration" context:__AVPlayerItemDurationKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.hasVideo" context:__AVPlayerItemHasVideoContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.presentationSize" context:__AVPlayerItemPresentationSizeContent];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.playbackLikelyToKeepUp" context:__AVPlayerItemLikelyToKeepUpKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.playbackBufferFull" context:__AVPlayerItemBufferFullKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.playbackBufferEmpty" context:__AVPlayerItemBufferEmptyKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.loadedTimeRanges" context:__AVPlayerItemLoadedTimeRangesKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.seekableTimeRanges" context:__AVPlayerItemSeekableTimeRangesKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.timedMetadata" context:__AVPlayerItemTimedMetadataKVOContext];
    [playerCopy removeObserver:self forKeyPath:@"currentItem.tracks" context:__AVPlayerItemTracksKVOContext];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE6158] object:playerCopy];
  }
}

- (void)_addObserversToInterstitialEventMonitor:(id)monitor
{
  if (monitor)
  {
    v4 = __AVInterstitialPlayerItemStatusKVOContext;
    monitorCopy = monitor;
    [monitorCopy addObserver:self forKeyPath:@"interstitialPlayer.currentItem.status" options:1 context:v4];
    [monitorCopy addObserver:self forKeyPath:@"interstitialPlayer.timeControlStatus" options:3 context:__AVInterstitialPlayerTimeControlStatusKVOContext];
    [monitorCopy addObserver:self forKeyPath:@"interstitialPlayer.currentItem" options:3 context:__AVInterstitialPlayerCurrentItemKVOContext];
  }
}

- (void)_removeObserversFromInterstitialEventMonitor:(id)monitor
{
  if (monitor)
  {
    v4 = __AVInterstitialPlayerItemStatusKVOContext;
    monitorCopy = monitor;
    [monitorCopy removeObserver:self forKeyPath:@"interstitialPlayer.currentItem.status" context:v4];
    [monitorCopy removeObserver:self forKeyPath:@"interstitialPlayer.timeControlStatus" context:__AVInterstitialPlayerTimeControlStatusKVOContext];
    [monitorCopy removeObserver:self forKeyPath:@"interstitialPlayer.currentItem" context:__AVInterstitialPlayerCurrentItemKVOContext];
  }
}

- (void)_addObserversForPlaylist:(id)playlist
{
  if (playlist)
  {
    v4 = __TVPPlaylistEndActionKVOContext;
    playlistCopy = playlist;
    [playlistCopy addObserver:self forKeyPath:@"endAction" options:1 context:v4];
    [playlistCopy addObserver:self forKeyPath:@"currentMediaItem" options:9 context:__TVPPlaylistCurrentMediaItemKVOContext];
    [playlistCopy addObserver:self forKeyPath:@"nextMediaItem" options:1 context:__TVPPlaylistNextMediaItemKVOContext];
  }
}

- (void)_removeObserversForPlaylist:(id)playlist
{
  if (playlist)
  {
    v4 = __TVPPlaylistEndActionKVOContext;
    playlistCopy = playlist;
    [playlistCopy removeObserver:self forKeyPath:@"endAction" context:v4];
    [playlistCopy removeObserver:self forKeyPath:@"currentMediaItem" context:__TVPPlaylistCurrentMediaItemKVOContext];
    [playlistCopy removeObserver:self forKeyPath:@"nextMediaItem" context:__TVPPlaylistNextMediaItemKVOContext];
  }
}

- (void)_addPeriodicTimeObserverToAVQueuePlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    periodicTimeObserverToken = [(TVPPlayer *)self periodicTimeObserverToken];
    if (!periodicTimeObserverToken)
    {
      objc_initWeak(&location, self);
      memset(&v17, 0, sizeof(v17));
      CMTimeMakeWithSeconds(&v17, 1.0, 1000000);
      v6 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __53__TVPPlayer__addPeriodicTimeObserverToAVQueuePlayer___block_invoke;
      v15[3] = &unk_279D7C310;
      objc_copyWeak(&v16, &location);
      v14 = v17;
      v8 = [playerCopy addPeriodicTimeObserverForInterval:&v14 queue:v6 usingBlock:v15];

      [(TVPPlayer *)self setPeriodicTimeObserverToken:v8];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    timeJumpPeriodicObserverToken = [(TVPPlayer *)self timeJumpPeriodicObserverToken];
    if (!timeJumpPeriodicObserverToken)
    {
      memset(&v17, 0, sizeof(v17));
      CMTimeMakeWithSeconds(&v17, 10000000.0, 1000);
      objc_initWeak(&location, self);
      v10 = MEMORY[0x277D85CD0];
      v11 = MEMORY[0x277D85CD0];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __53__TVPPlayer__addPeriodicTimeObserverToAVQueuePlayer___block_invoke_2;
      v12[3] = &unk_279D7C310;
      objc_copyWeak(&v13, &location);
      v14 = v17;
      timeJumpPeriodicObserverToken = [playerCopy addPeriodicTimeObserverForInterval:&v14 queue:v10 usingBlock:v12];

      [(TVPPlayer *)self setTimeJumpPeriodicObserverToken:timeJumpPeriodicObserverToken];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __53__TVPPlayer__addPeriodicTimeObserverToAVQueuePlayer___block_invoke(uint64_t a1, __int128 *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = *a2;
  v5 = *(a2 + 2);
  [WeakRetained _currentTimeDidChangeTo:&v4];
}

void __53__TVPPlayer__addPeriodicTimeObserverToAVQueuePlayer___block_invoke_2(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Current player item time did jump", v5, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlayerTimeDidJumpNotification" object:WeakRetained];
}

- (void)_addPeriodicTimeObserverToIntegratedTimeline:(id)timeline
{
  timelineCopy = timeline;
  if (timelineCopy)
  {
    periodicTimeObserverToken = [(TVPPlayer *)self periodicTimeObserverToken];
    if (!periodicTimeObserverToken)
    {
      objc_initWeak(&location, self);
      memset(&v17, 0, sizeof(v17));
      CMTimeMakeWithSeconds(&v17, 1.0, 1000000);
      v6 = MEMORY[0x277D85CD0];
      v7 = MEMORY[0x277D85CD0];
      v15[0] = MEMORY[0x277D85DD0];
      v15[1] = 3221225472;
      v15[2] = __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke;
      v15[3] = &unk_279D7C310;
      objc_copyWeak(&v16, &location);
      v14 = v17;
      v8 = [timelineCopy addPeriodicTimeObserverForInterval:&v14 queue:v6 usingBlock:v15];

      [(TVPPlayer *)self setPeriodicTimeObserverToken:v8];
      objc_destroyWeak(&v16);
      objc_destroyWeak(&location);
    }

    timeJumpPeriodicObserverToken = [(TVPPlayer *)self timeJumpPeriodicObserverToken];
    if (!timeJumpPeriodicObserverToken)
    {
      memset(&v17, 0, sizeof(v17));
      CMTimeMakeWithSeconds(&v17, 10000000.0, 1000);
      objc_initWeak(&location, self);
      v10 = MEMORY[0x277D85CD0];
      v11 = MEMORY[0x277D85CD0];
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke_3;
      v12[3] = &unk_279D7C310;
      objc_copyWeak(&v13, &location);
      v14 = v17;
      timeJumpPeriodicObserverToken = [timelineCopy addPeriodicTimeObserverForInterval:&v14 queue:v10 usingBlock:v12];

      [(TVPPlayer *)self setTimeJumpPeriodicObserverToken:timeJumpPeriodicObserverToken];
      objc_destroyWeak(&v13);
      objc_destroyWeak(&location);
    }
  }
}

void __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke(uint64_t a1, __int128 *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke_2;
  v3[3] = &unk_279D7C338;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = *a2;
  v6 = *(a2 + 2);
  TVPPerformBlockOnMainThreadIfNeeded(v3);
  objc_destroyWeak(&v4);
}

void __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  [WeakRetained _currentTimeDidChangeTo:&v3];
}

void __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke_3(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke_4;
  v1[3] = &unk_279D7BF80;
  objc_copyWeak(&v2, (a1 + 32));
  TVPPerformBlockOnMainThreadIfNeeded(v1);
  objc_destroyWeak(&v2);
}

void __58__TVPPlayer__addPeriodicTimeObserverToIntegratedTimeline___block_invoke_4(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Integrated timeline time did jump", v5, 2u);
  }

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlayerTimeDidJumpNotification" object:WeakRetained];
}

- (void)_removePeriodicTimeObserverFromAVQueuePlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    periodicTimeObserverToken = [(TVPPlayer *)self periodicTimeObserverToken];
    if (periodicTimeObserverToken)
    {
      [playerCopy removeTimeObserver:periodicTimeObserverToken];
      [(TVPPlayer *)self setPeriodicTimeObserverToken:0];
    }

    timeJumpPeriodicObserverToken = [(TVPPlayer *)self timeJumpPeriodicObserverToken];
    if (timeJumpPeriodicObserverToken)
    {
      [playerCopy removeTimeObserver:timeJumpPeriodicObserverToken];
      [(TVPPlayer *)self setTimeJumpPeriodicObserverToken:0];
    }
  }
}

- (void)_removePeriodicTimeObserverFromIntegratedTimeline:(id)timeline
{
  timelineCopy = timeline;
  if (timelineCopy)
  {
    periodicTimeObserverToken = [(TVPPlayer *)self periodicTimeObserverToken];
    if (periodicTimeObserverToken)
    {
      [timelineCopy removeTimeObserver:periodicTimeObserverToken];
      [(TVPPlayer *)self setPeriodicTimeObserverToken:0];
    }

    timeJumpPeriodicObserverToken = [(TVPPlayer *)self timeJumpPeriodicObserverToken];
    if (timeJumpPeriodicObserverToken)
    {
      [timelineCopy removeTimeObserver:timeJumpPeriodicObserverToken];
      [(TVPPlayer *)self setTimeJumpPeriodicObserverToken:0];
    }
  }
}

- (void)_addHighFrequencyTimeObserverIfNecessary
{
  if ([(TVPPlayer *)self _integratedTimelineEnabled])
  {
    currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
    integratedTimeline = [currentPlayerItem integratedTimeline];
    if (integratedTimeline)
    {
      v4 = integratedTimeline;
      highFrequencyElapsedTimeObserverBlock = [(TVPPlayer *)self highFrequencyElapsedTimeObserverBlock];
      if (highFrequencyElapsedTimeObserverBlock)
      {
        v6 = highFrequencyElapsedTimeObserverBlock;
        highFrequencyTimeObserverToken = [(TVPPlayer *)self highFrequencyTimeObserverToken];

        if (highFrequencyTimeObserverToken)
        {
          return;
        }

        objc_initWeak(&location, self);
        currentPlayerItem2 = [(TVPPlayer *)self currentPlayerItem];
        integratedTimeline2 = [currentPlayerItem2 integratedTimeline];
        CMTimeMakeWithSeconds(&v27, 0.1, 1000000);
        v10 = MEMORY[0x277D85CD0];
        v11 = MEMORY[0x277D85CD0];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __53__TVPPlayer__addHighFrequencyTimeObserverIfNecessary__block_invoke;
        v25[3] = &unk_279D7C310;
        objc_copyWeak(&v26, &location);
        v12 = [integratedTimeline2 addPeriodicTimeObserverForInterval:&v27 queue:v10 usingBlock:v25];

        [(TVPPlayer *)self setHighFrequencyTimeObserverToken:v12];
        v13 = &v26;
LABEL_10:
        objc_destroyWeak(v13);
        objc_destroyWeak(&location);
        return;
      }
    }
  }

  else
  {
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    if (!aVQueuePlayer)
    {
      return;
    }

    currentPlayerItem = aVQueuePlayer;
    highFrequencyElapsedTimeObserverBlock2 = [(TVPPlayer *)self highFrequencyElapsedTimeObserverBlock];
    if (highFrequencyElapsedTimeObserverBlock2)
    {
      v16 = highFrequencyElapsedTimeObserverBlock2;
      highFrequencyTimeObserverToken2 = [(TVPPlayer *)self highFrequencyTimeObserverToken];

      if (highFrequencyTimeObserverToken2)
      {
        return;
      }

      objc_initWeak(&location, self);
      aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
      CMTimeMakeWithSeconds(&v27, 0.1, 1000000);
      v19 = MEMORY[0x277D85CD0];
      v20 = MEMORY[0x277D85CD0];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __53__TVPPlayer__addHighFrequencyTimeObserverIfNecessary__block_invoke_3;
      v23[3] = &unk_279D7C310;
      objc_copyWeak(&v24, &location);
      v21 = [aVQueuePlayer2 addPeriodicTimeObserverForInterval:&v27 queue:v19 usingBlock:v23];

      [(TVPPlayer *)self setHighFrequencyTimeObserverToken:v21];
      v13 = &v24;
      goto LABEL_10;
    }
  }
}

void __53__TVPPlayer__addHighFrequencyTimeObserverIfNecessary__block_invoke(uint64_t a1, __int128 *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __53__TVPPlayer__addHighFrequencyTimeObserverIfNecessary__block_invoke_2;
  v3[3] = &unk_279D7C338;
  objc_copyWeak(&v4, (a1 + 32));
  v5 = *a2;
  v6 = *(a2 + 2);
  TVPPerformBlockOnMainThreadIfNeeded(v3);
  objc_destroyWeak(&v4);
}

void __53__TVPPlayer__addHighFrequencyTimeObserverIfNecessary__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained highFrequencyElapsedTimeObserverBlock];

  if (v3)
  {
    v4 = objc_loadWeakRetained((a1 + 32));
    v5 = [v4 _statesThatReturnAVPlayerTime];
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 stateMachine];
    v8 = [v7 currentState];
    v9 = [v5 containsObject:v8];

    if (v9)
    {
      memset(&v26, 0, sizeof(v26));
      v10 = objc_loadWeakRetained((a1 + 32));
      v11 = v10;
      if (v10)
      {
        objc_msgSend_cachedDuration(v10);
        time = *(a1 + 40);
        objc_msgSend__clampedElapsedTimeForTime_duration_(v11);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        memset(&v26, 0, sizeof(v26));
      }

      v12 = objc_loadWeakRetained((a1 + 32));
      v13 = [v12 currentMediaItem];
      v14 = [v13 hasTrait:@"TVPMediaItemTraitIsScene"];

      if (v14)
      {
        v15 = objc_loadWeakRetained((a1 + 32));
        v16 = v15;
        if (v15)
        {
          objc_msgSend__clampedSceneTimeForPlayerTime_(v15, *&v26.value, v26.epoch);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v26 = time;
      }

      v17 = objc_loadWeakRetained((a1 + 32));
      v18 = v17;
      if (v17)
      {
        objc_msgSend__clampInfiniteTimeToSeekableRange_(v17, *&v26.value, v26.epoch);
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v26 = time;

      v19 = objc_loadWeakRetained((a1 + 32));
      v20 = [v19 highFrequencyElapsedTimeObserverBlock];
      time = v26;
      Seconds = CMTimeGetSeconds(&time);
      v20[2](v20, Seconds);
    }
  }
}

void __53__TVPPlayer__addHighFrequencyTimeObserverIfNecessary__block_invoke_3(uint64_t a1, CMTime *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained highFrequencyElapsedTimeObserverBlock];

  if (v5)
  {
    v6 = objc_loadWeakRetained((a1 + 32));
    v7 = [v6 _statesThatReturnAVPlayerTime];
    v8 = objc_loadWeakRetained((a1 + 32));
    v9 = [v8 stateMachine];
    v10 = [v9 currentState];
    v11 = [v7 containsObject:v10];

    if (v11)
    {
      memset(&v28, 0, sizeof(v28));
      v12 = objc_loadWeakRetained((a1 + 32));
      v13 = v12;
      if (v12)
      {
        objc_msgSend_cachedDuration(v12);
        time = *a2;
        objc_msgSend__clampedElapsedTimeForTime_duration_(v13);
      }

      else
      {
        v25 = 0;
        v26 = 0;
        v27 = 0;
        memset(&v28, 0, sizeof(v28));
      }

      v14 = objc_loadWeakRetained((a1 + 32));
      v15 = [v14 currentMediaItem];
      v16 = [v15 hasTrait:@"TVPMediaItemTraitIsScene"];

      if (v16)
      {
        v17 = objc_loadWeakRetained((a1 + 32));
        v18 = v17;
        if (v17)
        {
          objc_msgSend__clampedSceneTimeForPlayerTime_(v17, *&v28.value, v28.epoch);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v28 = time;
      }

      v19 = objc_loadWeakRetained((a1 + 32));
      v20 = v19;
      if (v19)
      {
        objc_msgSend__clampInfiniteTimeToSeekableRange_(v19, *&v28.value, v28.epoch);
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      v28 = time;

      v21 = objc_loadWeakRetained((a1 + 32));
      v22 = [v21 highFrequencyElapsedTimeObserverBlock];
      time = v28;
      Seconds = CMTimeGetSeconds(&time);
      v22[2](v22, Seconds);
    }
  }
}

- (void)_removeHighFrequencyTimeObserverIfNecessary
{
  if (![(TVPPlayer *)self _integratedTimelineEnabled])
  {
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    if (!aVQueuePlayer)
    {
      return;
    }

    v10 = aVQueuePlayer;
    highFrequencyTimeObserverToken = [(TVPPlayer *)self highFrequencyTimeObserverToken];

    if (!highFrequencyTimeObserverToken)
    {
      return;
    }

    aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
    highFrequencyTimeObserverToken2 = [(TVPPlayer *)self highFrequencyTimeObserverToken];
    [aVQueuePlayer2 removeTimeObserver:highFrequencyTimeObserverToken2];
    goto LABEL_8;
  }

  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  integratedTimeline = [currentPlayerItem integratedTimeline];
  if (integratedTimeline)
  {
    v4 = integratedTimeline;
    highFrequencyTimeObserverToken3 = [(TVPPlayer *)self highFrequencyTimeObserverToken];

    if (!highFrequencyTimeObserverToken3)
    {
      return;
    }

    aVQueuePlayer2 = [(TVPPlayer *)self currentPlayerItem];
    highFrequencyTimeObserverToken2 = [aVQueuePlayer2 integratedTimeline];
    highFrequencyTimeObserverToken4 = [(TVPPlayer *)self highFrequencyTimeObserverToken];
    [highFrequencyTimeObserverToken2 removeTimeObserver:highFrequencyTimeObserverToken4];

LABEL_8:

    [(TVPPlayer *)self setHighFrequencyTimeObserverToken:0];
    return;
  }
}

- (void)_addBoundaryTimeObserversToAVQueuePlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __54__TVPPlayer__addBoundaryTimeObserversToAVQueuePlayer___block_invoke;
    v6[3] = &unk_279D7C360;
    v7 = playerCopy;
    [boundaryTimeObserverInfos enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __54__TVPPlayer__addBoundaryTimeObserversToAVQueuePlayer___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v6 tokenFromAVPlayer];

  if (!v7)
  {
    objc_initWeak(&location, v6);
    v8 = *(a1 + 32);
    v9 = [v6 times];
    v10 = MEMORY[0x277D85CD0];
    v11 = MEMORY[0x277D85CD0];
    v13 = MEMORY[0x277D85DD0];
    v14 = 3221225472;
    v15 = __54__TVPPlayer__addBoundaryTimeObserversToAVQueuePlayer___block_invoke_2;
    v16 = &unk_279D7BF80;
    objc_copyWeak(&v17, &location);
    v12 = [v8 addBoundaryTimeObserverForTimes:v9 queue:v10 usingBlock:&v13];

    [v6 setTokenFromAVPlayer:{v12, v13, v14, v15, v16}];
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }
}

void __54__TVPPlayer__addBoundaryTimeObserversToAVQueuePlayer___block_invoke_2(uint64_t a1)
{
  v1[0] = MEMORY[0x277D85DD0];
  v1[1] = 3221225472;
  v1[2] = __54__TVPPlayer__addBoundaryTimeObserversToAVQueuePlayer___block_invoke_3;
  v1[3] = &unk_279D7BF80;
  objc_copyWeak(&v2, (a1 + 32));
  TVPPerformBlockOnMainThreadIfNeeded(v1);
  objc_destroyWeak(&v2);
}

void __54__TVPPlayer__addBoundaryTimeObserversToAVQueuePlayer___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained handler];

  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
    v2 = v3;
  }
}

- (void)_addBoundaryTimeObserversToIntegratedTimeline:(id)timeline
{
  v59 = *MEMORY[0x277D85DE8];
  timelineCopy = timeline;
  if (timelineCopy)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
    obj = [boundaryTimeObserverInfos objectEnumerator];

    v32 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
    if (v32)
    {
      v31 = *v47;
      do
      {
        v5 = 0;
        do
        {
          if (*v47 != v31)
          {
            v6 = v5;
            objc_enumerationMutation(obj);
            v5 = v6;
          }

          v33 = v5;
          val = *(*(&v46 + 1) + 8 * v5);
          tokensFromIntegratedTimeline = [val tokensFromIntegratedTimeline];
          v8 = [tokensFromIntegratedTimeline count] == 0;

          if (v8)
          {
            objc_initWeak(&location, val);
            currentSnapshot = [timelineCopy currentSnapshot];
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            times = [val times];
            v11 = [times countByEnumeratingWithState:&v41 objects:v57 count:16];
            if (v11)
            {
              v12 = *v42;
              v36 = times;
              do
              {
                for (i = 0; i != v11; ++i)
                {
                  if (*v42 != v12)
                  {
                    objc_enumerationMutation(v36);
                  }

                  v14 = *(*(&v41 + 1) + 8 * i);
                  v40 = **&MEMORY[0x277CC0898];
                  segments = [currentSnapshot segments];
                  v16 = [segments count] == 1;

                  if (v16)
                  {
                    segments2 = [currentSnapshot segments];
                    firstObject = [segments2 firstObject];

                    if (v14)
                    {
                      objc_msgSend_CMTimeValue(v14);
                    }

                    else
                    {
                      memset(&time, 0, sizeof(time));
                    }

                    v40 = time;
                  }

                  else
                  {
                    if (v14)
                    {
                      objc_msgSend_CMTimeValue(v14);
                    }

                    else
                    {
                      memset(&time, 0, sizeof(time));
                    }

                    v39 = 0;
                    [currentSnapshot mapTime:&time toSegment:&v39 atSegmentOffset:&v40];
                    firstObject = v39;
                  }

                  time = v40;
                  v19 = [MEMORY[0x277CCAE60] valueWithCMTime:&time];
                  v20 = sPlayerLogObject;
                  v21 = v20;
                  if (firstObject && v19)
                  {
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                    {
                      time = v40;
                      v22 = CMTimeCopyDescription(0, &time);
                      *buf = 138412546;
                      v54 = firstObject;
                      v55 = 2112;
                      v56 = v22;
                      _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Adding boundary observer to segment %@ for time %@", buf, 0x16u);
                    }

                    v52 = v19;
                    v23 = [MEMORY[0x277CBEA60] arrayWithObjects:&v52 count:1];
                    v24 = MEMORY[0x277D85CD0];
                    v37[0] = MEMORY[0x277D85DD0];
                    v37[1] = 3221225472;
                    v37[2] = __59__TVPPlayer__addBoundaryTimeObserversToIntegratedTimeline___block_invoke;
                    v37[3] = &unk_279D7C2E8;
                    objc_copyWeak(&v38, &location);
                    v25 = MEMORY[0x277D85CD0];
                    v26 = [timelineCopy addBoundaryTimeObserverForSegment:firstObject offsetsIntoSegment:v23 queue:MEMORY[0x277D85CD0] usingBlock:v37];

                    tokensFromIntegratedTimeline2 = [val tokensFromIntegratedTimeline];
                    [tokensFromIntegratedTimeline2 addObject:v26];

                    objc_destroyWeak(&v38);
                  }

                  else
                  {
                    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                    {
                      segments3 = [currentSnapshot segments];
                      currentSegment = [currentSnapshot currentSegment];
                      LODWORD(time.value) = 138412802;
                      *(&time.value + 4) = v14;
                      LOWORD(time.flags) = 2112;
                      *(&time.flags + 2) = segments3;
                      HIWORD(time.epoch) = 2112;
                      v51 = currentSegment;
                      _os_log_error_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_ERROR, "Unable to add boundary time observer to timeline.  Desired time is %@, segments are %@, currentSegment is %@", &time, 0x20u);
                    }
                  }
                }

                times = v36;
                v11 = [v36 countByEnumeratingWithState:&v41 objects:v57 count:16];
              }

              while (v11);
            }

            objc_destroyWeak(&location);
          }

          v5 = v33 + 1;
        }

        while (v33 + 1 != v32);
        v32 = [obj countByEnumeratingWithState:&v46 objects:v58 count:16];
      }

      while (v32);
    }
  }
}

void __59__TVPPlayer__addBoundaryTimeObserversToIntegratedTimeline___block_invoke(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TVPPlayer__addBoundaryTimeObserversToIntegratedTimeline___block_invoke_2;
  block[3] = &unk_279D7BF80;
  objc_copyWeak(&v2, (a1 + 32));
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v2);
}

void __59__TVPPlayer__addBoundaryTimeObserversToIntegratedTimeline___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained handler];

  v2 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, 0);
    v2 = v3;
  }
}

- (void)_removeBoundaryTimeObserversFromAVQueuePlayer:(id)player
{
  playerCopy = player;
  if (playerCopy)
  {
    boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__TVPPlayer__removeBoundaryTimeObserversFromAVQueuePlayer___block_invoke;
    v6[3] = &unk_279D7C360;
    v7 = playerCopy;
    [boundaryTimeObserverInfos enumerateKeysAndObjectsUsingBlock:v6];
  }
}

void __59__TVPPlayer__removeBoundaryTimeObserversFromAVQueuePlayer___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v4 = [v5 tokenFromAVPlayer];
  if (v4)
  {
    [*(a1 + 32) removeTimeObserver:v4];
    [v5 setTokenFromAVPlayer:0];
  }
}

- (void)_removeBoundaryTimeObserversFromIntegratedTimeline:(id)timeline
{
  v28 = *MEMORY[0x277D85DE8];
  timelineCopy = timeline;
  if (timelineCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
    objectEnumerator = [boundaryTimeObserverInfos objectEnumerator];

    v7 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(objectEnumerator);
          }

          v11 = *(*(&v22 + 1) + 8 * v10);
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          tokensFromIntegratedTimeline = [v11 tokensFromIntegratedTimeline];
          v13 = [tokensFromIntegratedTimeline countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v19;
            do
            {
              v16 = 0;
              do
              {
                if (*v19 != v15)
                {
                  objc_enumerationMutation(tokensFromIntegratedTimeline);
                }

                [timelineCopy removeTimeObserver:*(*(&v18 + 1) + 8 * v16++)];
              }

              while (v14 != v16);
              v14 = [tokensFromIntegratedTimeline countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v14);
          }

          tokensFromIntegratedTimeline2 = [v11 tokensFromIntegratedTimeline];
          [tokensFromIntegratedTimeline2 removeAllObjects];

          ++v10;
        }

        while (v10 != v8);
        v8 = [objectEnumerator countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }
  }
}

- (void)_addObserversForPlayerItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v8 = itemCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemDidHitBeginningOrEnd_ name:*MEMORY[0x277CE60C0] object:v8];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemAccessLogDidChange_ name:*MEMORY[0x277CE6108] object:v8];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemErrorLogDidChange_ name:*MEMORY[0x277CE6110] object:v8];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemDidStall_ name:*MEMORY[0x277CE6118] object:v8];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemDidFailToPlayToEnd_ name:*MEMORY[0x277CE60D0] object:v8];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemReachedTimeToPauseBuffering_ name:*MEMORY[0x277CE6120] object:v8];
    [defaultCenter addObserver:self selector:sel__currentPlayerItemReachedTimeToPausePlayback_ name:*MEMORY[0x277CE6128] object:v8];
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      v6 = *MEMORY[0x277CE6090];
      integratedTimeline = [v8 integratedTimeline];
      [defaultCenter addObserver:self selector:sel__integratedTimelineSnapshotsOutOfSync_ name:v6 object:integratedTimeline];
    }

    else
    {
      [defaultCenter addObserver:self selector:sel__playerItemMediaSelectionDidChange_ name:*MEMORY[0x277CE6100] object:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_removeObserversForPlayerItem:(id)item
{
  itemCopy = item;
  if (itemCopy)
  {
    v8 = itemCopy;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60C0] object:v8];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE6108] object:v8];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE6110] object:v8];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE6118] object:v8];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE60D0] object:v8];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE6120] object:v8];
    [defaultCenter removeObserver:self name:*MEMORY[0x277CE6128] object:v8];
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      v6 = *MEMORY[0x277CE6090];
      integratedTimeline = [v8 integratedTimeline];
      [defaultCenter removeObserver:self name:v6 object:integratedTimeline];
    }

    else
    {
      [defaultCenter removeObserver:self name:*MEMORY[0x277CE6100] object:v8];
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)_addObserversForMediaItem:(id)item
{
  if (item)
  {
    v4 = MEMORY[0x277CCAB98];
    itemCopy = item;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter addObserver:self selector:sel__currentMediaItemMetadataDidChange_ name:@"TVPMediaItemMetadataDidChangeNotification" object:itemCopy];
  }
}

- (void)_removeObserversForMediaItem:(id)item
{
  if (item)
  {
    v4 = MEMORY[0x277CCAB98];
    itemCopy = item;
    defaultCenter = [v4 defaultCenter];
    [defaultCenter removeObserver:self name:@"TVPMediaItemMetadataDidChangeNotification" object:itemCopy];
  }
}

- (void)_mediaItemLoader:(id)loader stateDidChangeTo:(id)to
{
  v55[1] = *MEMORY[0x277D85DE8];
  loaderCopy = loader;
  toCopy = to;
  if ([toCopy isEqualToString:0x287E4F078])
  {
    v54 = @"Media item loader key";
    v55[0] = loaderCopy;
    mediaItem2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:&v54 count:1];
    stateMachine = [(TVPPlayer *)self stateMachine];
    [stateMachine postEvent:@"Media item loader did prepare item for loading" withContext:0 userInfo:mediaItem2];

    mediaItem = [loaderCopy mediaItem];
    reportingDelegate = [mediaItem reportingDelegate];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      timingData = [loaderCopy timingData];
      [timingData startTimeForPreparingForLoading];
      v14 = v13;
      [timingData endTimeForPreparingForLoading];
      [reportingDelegate mediaItemDidPrepareForLoading:mediaItem timeTakenForOperation:self player:v15 - v14];
    }

    goto LABEL_31;
  }

  if ([toCopy isEqualToString:0x287E4F0D8])
  {
    mediaItem2 = [loaderCopy mediaItem];
    mediaItem = [mediaItem2 reportingDelegate];
    if (objc_opt_respondsToSelector())
    {
      timingData2 = [loaderCopy timingData];
      [timingData2 startTimeForLoadingAVAssetKeys];
      v18 = v17;
      [timingData2 endTimeForLoadingAVAssetKeys];
      [mediaItem mediaItemDidLoadAVAssetKeys:mediaItem2 timeTakenForOperation:self player:v19 - v18];
    }

    currentMediaItem = [(TVPPlayer *)self currentMediaItem];
    if ([mediaItem2 isEqualToMediaItem:currentMediaItem])
    {
      objc_msgSend_cachedDuration(self);

      if ((v45 & 1) == 0)
      {
        memset(&buf, 0, sizeof(buf));
        aVAsset = [loaderCopy AVAsset];
        v22 = aVAsset;
        if (aVAsset)
        {
          objc_msgSend_duration(aVAsset);
        }

        else
        {
          memset(&buf, 0, sizeof(buf));
        }

        v42 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          time = buf;
          v43 = v42;
          v44 = CMTimeCopyDescription(0, &time);
          LODWORD(time.value) = 138412290;
          *(&time.value + 4) = v44;
          _os_log_impl(&dword_26CEDD000, v43, OS_LOG_TYPE_DEFAULT, "AVAsset duration did change to %@", &time, 0xCu);
        }

        time = buf;
        [(TVPPlayer *)self setCachedDuration:&time];
      }
    }

    else
    {
    }

    v50 = @"Media item loader key";
    v51 = loaderCopy;
    reportingDelegate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    stateMachine2 = [(TVPPlayer *)self stateMachine];
    v28 = stateMachine2;
    v29 = @"Media item loader did load AVAsset keys";
LABEL_30:
    [stateMachine2 postEvent:v29 withContext:0 userInfo:reportingDelegate];

LABEL_31:
    goto LABEL_32;
  }

  if ([toCopy isEqualToString:0x287E4F118])
  {
    mediaItem2 = [loaderCopy mediaItem];
    mediaItem = [mediaItem2 reportingDelegate];
    if (objc_opt_respondsToSelector() & 1) != 0 && (objc_opt_respondsToSelector())
    {
      timingData3 = [loaderCopy timingData];
      [timingData3 startTimeForPreparingForPlaybackInitiation];
      v25 = v24;
      [timingData3 endTimeForPreparingForPlaybackInitiation];
      [mediaItem mediaItemDidPrepareForPlaybackInitiation:mediaItem2 timeTakenForOperation:self player:v26 - v25];
    }

    v48 = @"Media item loader key";
    v49 = loaderCopy;
    reportingDelegate = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
    stateMachine2 = [(TVPPlayer *)self stateMachine];
    v28 = stateMachine2;
    v29 = @"Media item did prepare for playback initiation";
    goto LABEL_30;
  }

  if ([toCopy isEqualToString:0x287E4AA38])
  {
    mediaItem3 = [loaderCopy mediaItem];
    playlist = [(TVPPlayer *)self playlist];
    currentMediaItem2 = [playlist currentMediaItem];
    v33 = [mediaItem3 isEqualToMediaItem:currentMediaItem2];

    if (v33)
    {
      error = [loaderCopy error];
      mediaItem4 = [loaderCopy mediaItem];
      mediaItem2 = [(TVPPlayer *)self playbackErrorFromError:error forMediaItem:mediaItem4];

      v46 = @"Error key";
      v47 = mediaItem2;
      mediaItem = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v47 forKeys:&v46 count:1];
      stateMachine3 = [(TVPPlayer *)self stateMachine];
      [stateMachine3 postEvent:@"Error did occur" withContext:0 userInfo:mediaItem];

LABEL_32:
LABEL_33:

      goto LABEL_34;
    }

    mediaItem5 = [loaderCopy mediaItem];
    playlist2 = [(TVPPlayer *)self playlist];
    nextMediaItem = [playlist2 nextMediaItem];
    v40 = [mediaItem5 isEqualToMediaItem:nextMediaItem];

    if (v40)
    {
      v41 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = loaderCopy;
        _os_log_impl(&dword_26CEDD000, v41, OS_LOG_TYPE_DEFAULT, "Cleaning up next item's media item loader that has failed: %@", &buf, 0xCu);
      }

      [(TVPPlayer *)self _removeObserversForMediaItemLoader:loaderCopy];
      [loaderCopy cleanupIfNecessary];
      mediaItem2 = [(TVPPlayer *)self mediaItemLoaders];
      [mediaItem2 removeObject:loaderCopy];
      goto LABEL_33;
    }
  }

LABEL_34:
}

- (void)_playlistEndActionDidChange
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    playlist = [(TVPPlayer *)self playlist];
    v6 = 134217984;
    endAction = [playlist endAction];
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Playlist end action did change to %ld", &v6, 0xCu);
  }

  [(TVPPlayer *)self _updateAVPlayerActionAtItemEnd];
}

- (void)_playlistCurrentMediaItemWillChangeWithContext:(id)context
{
  v35 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [contextCopy objectForKey:@"Changing media because AVFoundation advanced key"];
  bOOLValue = [v5 BOOLValue];

  v7 = [contextCopy objectForKey:@"TVPPlaylistDidHitBeginningKey"];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [contextCopy objectForKey:@"TVPPlaylistDidHitEndKey"];
  bOOLValue3 = [v9 BOOLValue];

  v11 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = @"NO";
    if (bOOLValue)
    {
      v13 = @"YES";
    }

    else
    {
      v13 = @"NO";
    }

    if (bOOLValue2)
    {
      v14 = @"YES";
    }

    else
    {
      v14 = @"NO";
    }

    *buf = 138412802;
    v30 = v13;
    v31 = 2112;
    v32 = v14;
    if (bOOLValue3)
    {
      v12 = @"YES";
    }

    v33 = 2112;
    v34 = v12;
    _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Playlist's current media item will change.  Due to AVFoundation advancing? %@  Did hit beginning of playlist? %@  Did hit end of playlist? %@", buf, 0x20u);
  }

  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  [(TVPPlayer *)self _removeObserversForMediaItem:currentMediaItem];

  v16 = [contextCopy objectForKey:@"direction"];
  integerValue = [v16 integerValue];

  playlist = [(TVPPlayer *)self playlist];
  currentMediaItem2 = [playlist currentMediaItem];

  playlist2 = [(TVPPlayer *)self playlist];
  v21 = playlist2;
  if (integerValue)
  {
    [playlist2 previousMediaItem];
  }

  else
  {
    [playlist2 nextMediaItem];
  }
  v22 = ;

  v23 = [currentMediaItem2 mediaItemMetadataForProperty:@"TVPMediaItemMetadataShowCanonicalID"];
  v24 = [v22 mediaItemMetadataForProperty:@"TVPMediaItemMetadataShowCanonicalID"];
  v25 = v24;
  if (!v23 || !v24 || ([v23 isEqualToString:v24] & 1) == 0)
  {
    v26 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "Not the same show; setting preferred audio language to nil", buf, 2u);
    }

    [(TVPPlayer *)self setPreferredAudioLanguageCode:0];
  }

  if ((bOOLValue & 1) == 0)
  {
    v27 = [contextCopy objectForKey:@"direction"];
    v28 = [contextCopy objectForKey:@"TVPPlaybackCurrentMediaItemChangeReasonKey"];
    [(TVPPlayer *)self _postCurrentMediaItemWillChangeNotificationWithDirection:v27 reason:v28 didHitBeginningOfPlaylist:bOOLValue2 didHitEndOfPlaylist:bOOLValue3];
  }
}

- (void)_playlistCurrentMediaItemDidChangeWithContext:(id)context
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [contextCopy objectForKey:@"Changing media because AVFoundation advanced key"];
  bOOLValue = [v5 BOOLValue];

  v7 = [contextCopy objectForKey:@"TVPPlaylistDidHitBeginningKey"];
  bOOLValue2 = [v7 BOOLValue];

  v9 = [contextCopy objectForKey:@"TVPPlaylistDidHitEndKey"];
  bOOLValue3 = [v9 BOOLValue];

  v11 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v11;
    currentMediaItem = [(TVPPlayer *)self currentMediaItem];
    v14 = currentMediaItem;
    v15 = @"NO";
    if (bOOLValue)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    *v23 = 138413058;
    *&v23[4] = currentMediaItem;
    if (bOOLValue2)
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    *&v23[14] = v16;
    *&v23[12] = 2112;
    *&v23[22] = 2112;
    if (bOOLValue3)
    {
      v15 = @"YES";
    }

    v24 = v17;
    v25 = 2112;
    v26 = v15;
    _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Playlist's current media item did change to %@.  Due to AVFoundation advancing? %@  Did hit beginning of playlist? %@  Did hit end of playlist? %@", v23, 0x2Au);
  }

  v18 = [(TVPPlayer *)self currentMediaItem:*v23];
  -[TVPPlayer setCurrentMediaItemIsStreaming:](self, "setCurrentMediaItemIsStreaming:", [v18 hasTrait:@"TVPMediaItemTraitIsStreaming"]);

  [(TVPPlayer *)self setCurrentMediaItemInitialLoadingComplete:0];
  [(TVPPlayer *)self setInitialMediaItemHasCompletedInitialLoading:0];
  currentMediaItem2 = [(TVPPlayer *)self currentMediaItem];
  [(TVPPlayer *)self _addObserversForMediaItem:currentMediaItem2];

  v20 = [contextCopy objectForKey:@"direction"];
  v21 = [contextCopy objectForKey:@"TVPPlaybackCurrentMediaItemChangeReasonKey"];
  [(TVPPlayer *)self _postCurrentMediaItemDidChangeNotificationWithDirection:v20 reason:v21 didHitBeginningOfPlaylist:bOOLValue2 didHitEndOfPlaylist:bOOLValue3];

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Playlist current media item did change" withContext:0 userInfo:contextCopy];
}

- (void)_postCurrentMediaItemWillChangeNotificationWithDirection:(id)direction reason:(id)reason didHitBeginningOfPlaylist:(BOOL)playlist didHitEndOfPlaylist:(BOOL)ofPlaylist
{
  ofPlaylistCopy = ofPlaylist;
  playlistCopy = playlist;
  directionCopy = direction;
  reasonCopy = reason;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v11;
  if (directionCopy)
  {
    [v11 setObject:directionCopy forKey:@"TVPPlaybackCurrentMediaItemChangeDirectionKey"];
  }

  if (reasonCopy)
  {
    [v12 setObject:reasonCopy forKey:@"TVPPlaybackCurrentMediaItemChangeReasonKey"];
  }

  if (playlistCopy || ofPlaylistCopy)
  {
    v13 = TVPPlaybackCurrentMediaItemChangeDitHitBeginningOfPlaylistKey;
    if (!playlistCopy)
    {
      v13 = TVPPlaybackCurrentMediaItemChangeDidHitEndOfPlaylistKey;
    }

    [v12 setObject:MEMORY[0x277CBEC38] forKey:*v13];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVPPlaybackCurrentMediaItemWillChangeNotification" object:self userInfo:v12];

  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  reportingDelegate = [currentMediaItem reportingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [reportingDelegate mediaItemWillNoLongerBeCurrentItem:currentMediaItem player:self reason:reasonCopy];
  }
}

- (void)_postCurrentMediaItemDidChangeNotificationWithDirection:(id)direction reason:(id)reason didHitBeginningOfPlaylist:(BOOL)playlist didHitEndOfPlaylist:(BOOL)ofPlaylist
{
  ofPlaylistCopy = ofPlaylist;
  playlistCopy = playlist;
  directionCopy = direction;
  reasonCopy = reason;
  v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v12 = v11;
  if (directionCopy)
  {
    [v11 setObject:directionCopy forKey:@"TVPPlaybackCurrentMediaItemChangeDirectionKey"];
  }

  if (reasonCopy)
  {
    [v12 setObject:reasonCopy forKey:@"TVPPlaybackCurrentMediaItemChangeReasonKey"];
  }

  if (playlistCopy || ofPlaylistCopy)
  {
    v13 = TVPPlaybackCurrentMediaItemChangeDitHitBeginningOfPlaylistKey;
    if (!playlistCopy)
    {
      v13 = TVPPlaybackCurrentMediaItemChangeDidHitEndOfPlaylistKey;
    }

    [v12 setObject:MEMORY[0x277CBEC38] forKey:*v13];
  }

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVPPlaybackCurrentMediaItemDidChangeNotification" object:self userInfo:v12];

  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  reportingDelegate = [currentMediaItem reportingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [reportingDelegate mediaItemDidBecomeCurrentItem:currentMediaItem player:self reason:reasonCopy];
  }
}

- (void)_playlistNextMediaItemDidChangeWithContext:(id)context
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    playlist = [(TVPPlayer *)self playlist];
    nextMediaItem = [playlist nextMediaItem];
    v9 = 138412290;
    v10 = nextMediaItem;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Playlist's next media item did change to %@", &v9, 0xCu);
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Playlist next media item did change"];
}

- (void)_avPlayerRateDidChangeTo:(float)to
{
  v10 = *MEMORY[0x277D85DE8];
  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    toCopy2 = to;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "AVPlayer rate did change to %f", &v8, 0xCu);
  }

  if (![(TVPPlayer *)self modifyingAVPlayerRate])
  {
    v6 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8) = 0;
      _os_log_impl(&dword_26CEDD000, v6, OS_LOG_TYPE_DEFAULT, "Rate change was external", &v8, 2u);
    }

    if (to >= 0.5 && to <= 2.0)
    {
      v7 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 134217984;
        toCopy2 = to;
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Rate used for playback was set to %f", &v8, 0xCu);
      }

      [(TVPPlayer *)self setRateUsedForPlayback:to];
    }
  }
}

- (void)_avPlayer:(id)player timeControlStatusDidChangeTo:(int64_t)to oldStatusNum:(id)num
{
  v44 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  numCopy = num;
  v10 = sPlayerLogObject;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    if (aVQueuePlayer == playerCopy)
    {
      v12 = @"main";
    }

    else
    {
      v12 = @"interstitial";
    }

    if (to)
    {
      if (to == 2)
      {
        v13 = @"AVPlayerTimeControlStatusPlaying";
      }

      else if (to == 1)
      {
        v13 = @"AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate";
      }

      else
      {
        v13 = @"Unknown";
      }
    }

    else
    {
      v13 = @"AVPlayerTimeControlStatusPaused";
    }

    reasonForWaitingToPlay = [(__CFString *)playerCopy reasonForWaitingToPlay];
    v36 = 138413058;
    v37 = playerCopy;
    v38 = 2112;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2112;
    v43 = reasonForWaitingToPlay;
    _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, "AVPlayer %@ %@ player timeControlStatus did change to %@.  reasonForWaiting is %@", &v36, 0x2Au);
  }

  if (![(TVPPlayer *)self _integratedTimelineEnabled])
  {
    goto LABEL_37;
  }

  _interstitialInProgress = [(TVPPlayer *)self _interstitialInProgress];
  aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];

  if (aVQueuePlayer2 == playerCopy)
  {
    if (!_interstitialInProgress)
    {
      if (![(TVPPlayer *)self isPlayingInterstitial])
      {
        goto LABEL_37;
      }

      goto LABEL_28;
    }

    v19 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Using interstitial player's time control status since an interstitial is in progress", &v36, 2u);
    }

    interstitialEventMonitor = [(TVPPlayer *)self interstitialEventMonitor];
    interstitialPlayer = [interstitialEventMonitor interstitialPlayer];
    to = [interstitialPlayer timeControlStatus];

    numCopy = 0;
    goto LABEL_25;
  }

  interstitialEventMonitor2 = [(TVPPlayer *)self interstitialEventMonitor];
  interstitialPlayer2 = [interstitialEventMonitor2 interstitialPlayer];

  if (interstitialPlayer2 != playerCopy)
  {
    if (_interstitialInProgress == [(TVPPlayer *)self isPlayingInterstitial])
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

  v22 = sPlayerLogObject;
  v23 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (_interstitialInProgress)
  {
    if (v23)
    {
      LOWORD(v36) = 0;
      _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Using interstitial player's time control status since an interstitial is in progress", &v36, 2u);
    }

LABEL_25:
    if ([(TVPPlayer *)self isPlayingInterstitial])
    {
LABEL_37:
      if (to == 2)
      {
        stateMachine = [(TVPPlayer *)self stateMachine];
        currentState = [stateMachine currentState];
        v31 = [currentState isEqualToString:@"Waiting for seek"];

        if (v31)
        {
          v32 = sPlayerLogObject;
          if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v36) = 0;
            _os_log_impl(&dword_26CEDD000, v32, OS_LOG_TYPE_DEFAULT, "Sending seek complete event because playback has started while waiting for a seek", &v36, 2u);
          }

          stateMachine2 = [(TVPPlayer *)self stateMachine];
          [stateMachine2 postEvent:@"Seek completed"];
        }
      }

      if (!numCopy || [numCopy integerValue] != to)
      {
        stateMachine3 = [(TVPPlayer *)self stateMachine];
        v35 = [MEMORY[0x277CCABB0] numberWithInteger:to];
        [stateMachine3 postEvent:@"Time control status did change" withContext:v35];
      }

      goto LABEL_45;
    }

LABEL_28:
    v24 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v25 = @"NO";
      if (_interstitialInProgress)
      {
        v25 = @"YES";
      }

      v36 = 138412290;
      v37 = v25;
      _os_log_impl(&dword_26CEDD000, v24, OS_LOG_TYPE_DEFAULT, "Interstitial in progress: %@", &v36, 0xCu);
    }

    [(TVPPlayer *)self setIsPlayingInterstitial:_interstitialInProgress];
    _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
    if ([(__CFString *)_activePlayerItem status]== 1)
    {
      selectedAudioOption = [(TVPPlayer *)self selectedAudioOption];
      v28 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v36 = 138412546;
        v37 = _activePlayerItem;
        v38 = 2112;
        v39 = selectedAudioOption;
        _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "Setting cached audio option from active player item %@ to %@.", &v36, 0x16u);
      }

      [(TVPPlayer *)self setCachedSelectedAudioOption:selectedAudioOption];
    }

    [(TVPPlayer *)self _notifyOfMediaSelectionOptionChanges];

    goto LABEL_37;
  }

  if (v23)
  {
    LOWORD(v36) = 0;
    _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Interstitial player's time control status changed while an interstitial is not in progress.  Ignoring", &v36, 2u);
  }

LABEL_45:
}

- (void)_outputObscuredDidChangeTo:(BOOL)to
{
  toCopy = to;
  v15 = *MEMORY[0x277D85DE8];
  if ([(TVPPlayer *)self outputObscuredDueToInsufficientExternalProtection]!= to)
  {
    v5 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (toCopy)
      {
        v6 = @"YES";
      }

      *buf = 138412290;
      v14 = v6;
      _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "outputObscuredDueToInsufficientExternalProtection did change to %@ due to AVPlayer KVO notification", buf, 0xCu);
    }

    [(TVPPlayer *)self setOutputObscuredDueToInsufficientExternalProtection:toCopy];
    if (toCopy && [(TVPPlayer *)self externalPlaybackType]== 2)
    {
      v7 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Stopping with error because external playack type is TVOut", buf, 2u);
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVPlaybackErrorDomain" code:807 userInfo:0];
      stateMachine = [(TVPPlayer *)self stateMachine];
      v11 = @"Error key";
      v12 = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      [stateMachine postEvent:@"Error did occur" withContext:0 userInfo:v10];
    }
  }
}

- (void)_externalPlaybackActiveDidChange
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "externalPlaybackActive did change", v11, 2u);
  }

  [(TVPPlayer *)self _logExternalPlaybackType];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"TVPPlayerExternalPlaybackTypeDidChangeNotification" object:self];

  if ([(TVPPlayer *)self externalPlaybackType]== 2)
  {
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    outputObscuredDueToInsufficientExternalProtection = [aVQueuePlayer outputObscuredDueToInsufficientExternalProtection];

    if (outputObscuredDueToInsufficientExternalProtection)
    {
      v7 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Stopping with error because external playack type is TVOut", v11, 2u);
      }

      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVPlaybackErrorDomain" code:807 userInfo:0];
      stateMachine = [(TVPPlayer *)self stateMachine];
      v12 = @"Error key";
      v13[0] = v8;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [stateMachine postEvent:@"Error did occur" withContext:0 userInfo:v10];
    }
  }
}

- (void)_logExternalPlaybackType
{
  v10 = *MEMORY[0x277D85DE8];
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];

  if (aVQueuePlayer && (-[TVPPlayer AVQueuePlayer](self, "AVQueuePlayer"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 externalPlaybackType], v4, v5 <= 2))
  {
    v6 = off_279D7CE60[v5];
  }

  else
  {
    v6 = @"unknown (no AVPlayer)";
  }

  v7 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "externalPlaybackType is %@", &v8, 0xCu);
  }
}

- (void)_currentTimeDidChangeTo:(id *)to
{
  objc_msgSend_cachedElapsedCMTime(self, a2);
  v6 = floor(CMTimeGetSeconds(&time));
  time = *to;
  if (v6 != floor(CMTimeGetSeconds(&time)))
  {
    _statesThatReturnAVPlayerTime = [(TVPPlayer *)self _statesThatReturnAVPlayerTime];
    stateMachine = [(TVPPlayer *)self stateMachine];
    currentState = [stateMachine currentState];
    v10 = [_statesThatReturnAVPlayerTime containsObject:currentState];

    if (v10)
    {
      memset(&time, 0, sizeof(time));
      objc_msgSend_cachedDuration(self);
      objc_msgSend__clampedElapsedTimeForTime_duration_(self);
      currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
      objc_msgSend_cachedDuration(self);
      if ((v23 & 1) != 0 && (objc_msgSend_cachedDuration(self), (v22 & 0x10) != 0))
      {
        v12 = [(TVPPlayer *)self _currentDateFromPlayerItem:currentPlayerItem];
      }

      else
      {
        v12 = 0;
      }

      stateMachine2 = [(TVPPlayer *)self stateMachine];
      currentState2 = [stateMachine2 currentState];
      v15 = [currentState2 isEqualToString:@"Scanning using AVPlayer"];
      if ((v15 & 1) == 0)
      {
        stateMachine3 = [(TVPPlayer *)self stateMachine];
        currentState3 = [stateMachine3 currentState];
        if (![currentState3 isEqualToString:@"Scanning using AVPlayer driven by AVKit"])
        {

LABEL_15:
          v24 = time;
          [(TVPPlayer *)self _notifyListenersOfElapsedTimeChange:&v24 playbackDate:v12 dueToTimeJump:0];
LABEL_16:

          goto LABEL_17;
        }

        v21 = stateMachine3;
      }

      v17 = v12;
      v18 = currentPlayerItem;
      currentInterstitialCollection = [(TVPPlayer *)self currentInterstitialCollection];
      v24 = time;
      v20 = [currentInterstitialCollection interstitialForTime:CMTimeGetSeconds(&v24)];

      if ((v15 & 1) == 0)
      {
      }

      currentPlayerItem = v18;
      v12 = v17;
      if (v20)
      {
        goto LABEL_16;
      }

      goto LABEL_15;
    }
  }

LABEL_17:
  time = *to;
  [(TVPPlayer *)self setCachedElapsedCMTime:&time];
}

- (void)_currentPlayerItemWillChange
{
  v3 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "Current player item will change", v6, 2u);
  }

  [(TVPPlayer *)self setPlayerItemChangeIsHappening:1];
  if (![(TVPPlayer *)self modifyingAVPlayerQueue])
  {
    mediaItemChangeReason = [(TVPPlayer *)self mediaItemChangeReason];
    playlist = [(TVPPlayer *)self playlist];
    -[TVPPlayer _postCurrentMediaItemWillChangeNotificationWithDirection:reason:didHitBeginningOfPlaylist:didHitEndOfPlaylist:](self, "_postCurrentMediaItemWillChangeNotificationWithDirection:reason:didHitBeginningOfPlaylist:didHitEndOfPlaylist:", &unk_287E59708, mediaItemChangeReason, 0, [playlist moreItemsAvailable:0] ^ 1);
  }
}

- (void)_currentPlayerItemDidChangeTo:(id)to
{
  v23 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    *&buf[4] = toCopy;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item did change to %@", buf, 0xCu);
  }

  [(TVPPlayer *)self setPlayerItemChangeIsHappening:0];
  [(TVPPlayer *)self setCurrentPlayerItem:toCopy];
  [(TVPPlayer *)self setCurrentMediaItemHasDates:0];
  [(TVPPlayer *)self setChapterCollections:0];
  [(TVPPlayer *)self setCurrentChapterCollection:0];
  [(TVPPlayer *)self setCurrentChapter:0];
  [(TVPPlayer *)self setCurrentInterstitialCollection:0];
  [(TVPPlayer *)self setCurrentInterstitial:0];
  *buf = *MEMORY[0x277CC08F0];
  v15 = *buf;
  v22 = *(MEMORY[0x277CC08F0] + 16);
  v6 = v22;
  [(TVPPlayer *)self setTimeBeingSeekedTo:buf];
  [(TVPPlayer *)self setDateBeingSeekedTo:0];
  *buf = v15;
  v22 = v6;
  [(TVPPlayer *)self setTimeAtStartOfSeek:buf];
  [(TVPPlayer *)self setPlaybackDateAtStartOfSeek:0];
  externalImagePlayer = [(TVPPlayer *)self externalImagePlayer];
  [externalImagePlayer invalidate];

  [(TVPPlayer *)self setExternalImagePlayer:0];
  [(TVPPlayer *)self setCachedSelectedAudioOption:0];
  [(TVPPlayer *)self setIsPlayingInterstitial:0];
  [(TVPPlayer *)self _notifyOfMediaSelectionOptionChanges];
  if (![(TVPPlayer *)self modifyingAVPlayerQueue])
  {
    playlist = [(TVPPlayer *)self playlist];
    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [v9 setObject:MEMORY[0x277CBEC38] forKey:@"Changing media because AVFoundation advanced key"];
    mediaItemChangeReason = [(TVPPlayer *)self mediaItemChangeReason];

    if (mediaItemChangeReason)
    {
      mediaItemChangeReason2 = [(TVPPlayer *)self mediaItemChangeReason];
      [v9 setObject:mediaItemChangeReason2 forKey:@"TVPPlaybackCurrentMediaItemChangeReasonKey"];

      [(TVPPlayer *)self setMediaItemChangeReason:0];
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __43__TVPPlayer__currentPlayerItemDidChangeTo___block_invoke;
    block[3] = &unk_279D7BC20;
    v19 = playlist;
    v20 = v9;
    v12 = v9;
    v13 = playlist;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  if ([toCopy status] == 2)
  {
    v14 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Player item changed to an item that has already failed", buf, 2u);
    }

    objc_initWeak(buf, self);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __43__TVPPlayer__currentPlayerItemDidChangeTo___block_invoke_589;
    v16[3] = &unk_279D7BF80;
    objc_copyWeak(&v17, buf);
    dispatch_async(MEMORY[0x277D85CD0], v16);
    objc_destroyWeak(&v17);
    objc_destroyWeak(buf);
  }
}

void __43__TVPPlayer__currentPlayerItemDidChangeTo___block_invoke_589(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained currentPlayerItem];
  v4 = [v3 status];

  v5 = sPlayerLogObject;
  v6 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (v4 == 2)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item is still failed after item transition", buf, 2u);
    }

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 _currentPlayerItemStatusDidChangeTo:2 from:0];
  }

  else if (v6)
  {
    *v8 = 0;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item is no longer failed", v8, 2u);
  }
}

- (void)_currentPlayerItemStatusDidChangeTo:(int64_t)to from:(int64_t)from
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"AVPlayerItemStatusFailed";
    if (to == 1)
    {
      v8 = @"AVPlayerItemStatusReadyToPlay";
    }

    if (!to)
    {
      v8 = @"AVPlayerItemStatusUnknown";
    }

    *buf = 138412290;
    v25 = v8;
    _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Current player item status did change to %@", buf, 0xCu);
  }

  playerItemChangeIsHappening = [(TVPPlayer *)self playerItemChangeIsHappening];
  if (to == 2 && playerItemChangeIsHappening)
  {
    v10 = sPlayerLogObject;
    if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v11 = "Temporarily ignoring player item status change to AVPlayerItemStatusFailed since item transition is in progress.  Will handle when transition completes";
LABEL_14:
    _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
    return;
  }

  if (to == from)
  {
    v10 = sPlayerLogObject;
    if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v11 = "Ignoring player item status change since it hasn't actually changed";
    goto LABEL_14;
  }

  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  [currentPlayerItem setPreviousStatus:from];

  if (to == 1)
  {
    stateMachine = [(TVPPlayer *)self stateMachine];
    currentPlayerItem2 = [(TVPPlayer *)self currentPlayerItem];
    [stateMachine postEvent:@"Player item status did become ready to play" withContext:currentPlayerItem2];
  }

  else
  {
    if (to != 2)
    {
      return;
    }

    currentPlayerItem3 = [(TVPPlayer *)self currentPlayerItem];
    error = [currentPlayerItem3 error];
    currentMediaItem = [(TVPPlayer *)self currentMediaItem];
    stateMachine = [(TVPPlayer *)self playbackErrorFromError:error forMediaItem:currentMediaItem];

    domain = [stateMachine domain];
    if ([domain isEqualToString:*MEMORY[0x277CE5DC0]])
    {
      code = [stateMachine code];

      if (code == -11819)
      {
        v20 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "Ignoring player item failure due to media services reset.  Error from media item loader should be sent shortly.", buf, 2u);
        }

        goto LABEL_25;
      }
    }

    else
    {
    }

    currentPlayerItem2 = [(TVPPlayer *)self stateMachine];
    v22 = @"Error key";
    v23 = stateMachine;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    [currentPlayerItem2 postEvent:@"Error did occur" withContext:0 userInfo:v21];
  }

LABEL_25:
}

- (void)_durationDidChangeTo:(id *)to isChangeFromTimeline:(BOOL)timeline
{
  timelineCopy = timeline;
  v17 = *MEMORY[0x277D85DE8];
  objc_msgSend_cachedDuration(self, a2);
  v15 = *to;
  if (CMTimeCompare(&time1, &v15))
  {
    _integratedTimelineEnabled = [(TVPPlayer *)self _integratedTimelineEnabled];
    v8 = sPlayerLogObject;
    v9 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
    if (!_integratedTimelineEnabled)
    {
      if (v9)
      {
        time1 = *to;
        v10 = v8;
        v11 = CMTimeCopyDescription(0, &time1);
        LODWORD(time1.value) = 138412290;
        *(&time1.value + 4) = v11;
        v12 = "Current player item duration did change to %@";
        goto LABEL_8;
      }

LABEL_9:
      time1 = *to;
      [(TVPPlayer *)self setCachedDuration:&time1];
      return;
    }

    if (timelineCopy)
    {
      if (v9)
      {
        time1 = *to;
        v10 = v8;
        v11 = CMTimeCopyDescription(0, &time1);
        LODWORD(time1.value) = 138412290;
        *(&time1.value + 4) = v11;
        v12 = "Integrated timeline duration did change to %@";
LABEL_8:
        _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, v12, &time1, 0xCu);

        goto LABEL_9;
      }

      goto LABEL_9;
    }

    if (v9)
    {
      time1 = *to;
      v13 = v8;
      v14 = CMTimeCopyDescription(0, &time1);
      LODWORD(time1.value) = 138412290;
      *(&time1.value + 4) = v14;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Current player item duration did change to %@", &time1, 0xCu);
    }
  }
}

- (void)_currentPlayerItemHasVideoDidChangeTo:(BOOL)to
{
  toCopy = to;
  v12 = *MEMORY[0x277D85DE8];
  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (toCopy)
    {
      v6 = @"YES";
    }

    v10 = 138412290;
    v11 = v6;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item hasVideo did change to %@", &v10, 0xCu);
  }

  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v8 = [currentMediaItem hasTrait:@"TVPMediaItemTraitTreatAsVideo"];

  if (v8)
  {
    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10) = 0;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Treating as video since it has TVPMediaItemTraitTreatAsVideo", &v10, 2u);
    }

    toCopy = 1;
  }

  [(TVPPlayer *)self setCurrentMediaItemHasVideoContent:toCopy];
}

- (void)_currentPlayerItemPresentationSizeDidChangeTo:(CGSize)to
{
  height = to.height;
  width = to.width;
  v11 = *MEMORY[0x277D85DE8];
  v6 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v12.width = width;
    v12.height = height;
    v8 = NSStringFromCGSize(v12);
    v9 = 138412290;
    v10 = v8;
    _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Current player item presentationSize did change to %@", &v9, 0xCu);
  }

  [(TVPPlayer *)self setCurrentMediaItemPresentationSize:width, height];
}

- (void)_currentPlayerItemLikelyToKeepUpDidChangeTo:(BOOL)to
{
  toCopy = to;
  v8 = *MEMORY[0x277D85DE8];
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (toCopy)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Current player item playbackLikelyToKeepUp did change to %@", &v6, 0xCu);
  }
}

- (void)_currentPlayerItemBufferFullDidChangeTo:(BOOL)to
{
  toCopy = to;
  v8 = *MEMORY[0x277D85DE8];
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"NO";
    if (toCopy)
    {
      v5 = @"YES";
    }

    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Current player item playbackBufferFull did change to %@", &v6, 0xCu);
  }
}

- (void)_currentPlayerItemBufferEmptyDidChangeTo:(BOOL)to
{
  toCopy = to;
  v17 = *MEMORY[0x277D85DE8];
  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (toCopy)
    {
      v6 = @"YES";
    }

    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item playbackBufferEmpty did change to %@", buf, 0xCu);
  }

  if (toCopy)
  {
    aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
    [aVQueuePlayer rate];
    v9 = v8;

    stateMachine = [(TVPPlayer *)self stateMachine];
    v11 = [MEMORY[0x277CCABB0] numberWithDouble:{v9, @"Rate key"}];
    v14 = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    [stateMachine postEvent:@"Buffer did become empty" withContext:0 userInfo:v12];
  }
}

- (void)_currentPlayerItemDidHitBeginningOrEnd:(id)end
{
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Current player item did hit beginning or end", v6, 2u);
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Hit beginning or end"];
}

- (void)_currentPlayerItemAccessLogDidChange:(id)change
{
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Current player item access log did change", v5, 2u);
  }

  [(TVPPlayer *)self willChangeValueForKey:@"accessLog"];
  [(TVPPlayer *)self didChangeValueForKey:@"accessLog"];
}

- (void)_currentPlayerItemErrorLogDidChange:(id)change
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    errorLog = [(TVPPlayer *)self errorLog];
    v7 = 138412290;
    v8 = errorLog;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item error log did change: %@", &v7, 0xCu);
  }

  [(TVPPlayer *)self willChangeValueForKey:@"errorLog"];
  [(TVPPlayer *)self didChangeValueForKey:@"errorLog"];
}

- (void)_currentPlayerItemDidStall:(id)stall
{
  v4 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Current player item did stall", v6, 2u);
  }

  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Current player item did stall"];
}

- (void)_currentPlayerItemDidFailToPlayToEnd:(id)end
{
  v14[1] = *MEMORY[0x277D85DE8];
  endCopy = end;
  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current player item did fail to play to end", v12, 2u);
  }

  userInfo = [endCopy userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x277CE60C8]];
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v9 = [(TVPPlayer *)self playbackErrorFromError:v7 forMediaItem:currentMediaItem];

  v13 = @"Error key";
  v14[0] = v9;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
  stateMachine = [(TVPPlayer *)self stateMachine];
  [stateMachine postEvent:@"Error did occur" withContext:0 userInfo:v10];
}

- (void)_currentPlayerItemSeekableTimeRangesDidChangeTo:(id)to
{
  [(TVPPlayer *)self setCachedSeekableTimeRanges:to];
  objc_msgSend_elapsedTime(self);
  CMTimeMakeWithSeconds(&v5, v4, 1000000);
  [(TVPPlayer *)self _updateIsLiveForElapsedTime:&v5];
}

- (void)_currentPlayerItemTimedMetadataDidChange
{
  [(TVPPlayer *)self willChangeValueForKey:@"timedMetadata"];

  [(TVPPlayer *)self didChangeValueForKey:@"timedMetadata"];
}

- (void)_currentPlayerItemTracksDidChangeTo:(id)to from:(id)from
{
  v31 = *MEMORY[0x277D85DE8];
  toCopy = to;
  fromCopy = from;
  v8 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v28 = fromCopy;
    v29 = 2112;
    v30 = toCopy;
    _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Current player item tracks did change.  Old tracks: %@ New tracks: %@", buf, 0x16u);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  items = [aVQueuePlayer items];

  v11 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v23;
    while (2)
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v23 != v13)
        {
          objc_enumerationMutation(items);
        }

        v15 = *(*(&v22 + 1) + 8 * i);
        tracks = [v15 tracks];
        v17 = [toCopy isEqual:tracks];

        if (v17)
        {
          if (![fromCopy count] && objc_msgSend(toCopy, "count"))
          {
            [(TVPPlayer *)self _configureSoundCheckForPlayerItem:v15 tracks:toCopy];
            [(TVPPlayer *)self _updateCurrentMediaItemVideoRangeForTracks:toCopy];
          }

          if ([toCopy count])
          {
            [(TVPPlayer *)self _updateCurrentMediaItemAudioInfoForPlayerItem:v15 tracks:toCopy];
          }

          goto LABEL_17;
        }
      }

      v12 = [items countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v12)
      {
        continue;
      }

      break;
    }
  }

LABEL_17:

  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  reportingDelegate = [currentMediaItem reportingDelegate];
  if (objc_opt_respondsToSelector())
  {
    if ([toCopy count])
    {
      if ([fromCopy count])
      {
        if ([(TVPPlayer *)self currentMediaItemIsStreaming])
        {
          v20 = [(TVPPlayer *)self _videoTrackIDFromTracks:fromCopy];
          v21 = [(TVPPlayer *)self _videoTrackIDFromTracks:toCopy];
          if (v20)
          {
            if (v21 && v20 != v21)
            {
              [reportingDelegate mediaItemDidSwitchVariantStreams:currentMediaItem player:self];
            }
          }
        }
      }
    }
  }
}

- (void)_playerItemMediaSelectionDidChange:(id)change
{
  v57 = *MEMORY[0x277D85DE8];
  object = [change object];
  _activePlayer = [(TVPPlayer *)self _activePlayer];
  _activePlayerItem = [(TVPPlayer *)self _activePlayerItem];
  if (![(TVPPlayer *)self _integratedTimelineEnabled])
  {
    v11 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Current player item media selection did change", buf, 2u);
    }

LABEL_21:
    [(TVPPlayer *)self willChangeValueForKey:@"selectedAudioOption"];
    [(TVPPlayer *)self didChangeValueForKey:@"selectedAudioOption"];
    [(TVPPlayer *)self willChangeValueForKey:@"selectedSubtitleOption"];
    [(TVPPlayer *)self didChangeValueForKey:@"selectedSubtitleOption"];
    selectedAudioOption = [(TVPPlayer *)self selectedAudioOption];
    cachedSelectedAudioOption = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v54 = selectedAudioOption;
      _os_log_impl(&dword_26CEDD000, cachedSelectedAudioOption, OS_LOG_TYPE_DEFAULT, "Selected audio option: %@", buf, 0xCu);
    }

    if (!selectedAudioOption)
    {
      cachedSelectedAudioOption = [(TVPPlayer *)self cachedSelectedAudioOption];
      if (!cachedSelectedAudioOption)
      {
        goto LABEL_53;
      }
    }

    cachedSelectedAudioOption2 = [(TVPPlayer *)self cachedSelectedAudioOption];
    v22 = [(__CFString *)selectedAudioOption isEqual:cachedSelectedAudioOption2];

    if (selectedAudioOption)
    {
      if (v22)
      {
        goto LABEL_53;
      }
    }

    else
    {

      if (v22)
      {
LABEL_53:

        goto LABEL_54;
      }
    }

    v23 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v54 = _activePlayerItem;
      v55 = 2112;
      v56 = selectedAudioOption;
      _os_log_impl(&dword_26CEDD000, v23, OS_LOG_TYPE_DEFAULT, "Setting cached audio option from active player item %@ to %@.", buf, 0x16u);
    }

    [(TVPPlayer *)self setCachedSelectedAudioOption:selectedAudioOption];
    v24 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v25 = v24;
      hasAudioDescriptions = [(__CFString *)selectedAudioOption hasAudioDescriptions];
      v27 = @"NO";
      if (hasAudioDescriptions)
      {
        v27 = @"YES";
      }

      *buf = 138412290;
      v54 = v27;
      _os_log_impl(&dword_26CEDD000, v25, OS_LOG_TYPE_DEFAULT, "Setting player prefers audio descriptions %@", buf, 0xCu);
    }

    [(TVPPlayer *)self setPrefersAudioDescriptions:[(__CFString *)selectedAudioOption hasAudioDescriptions]];
    v28 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v29 = v28;
      languageCodeBCP47 = [(__CFString *)selectedAudioOption languageCodeBCP47];
      *buf = 138412290;
      v54 = languageCodeBCP47;
      _os_log_impl(&dword_26CEDD000, v29, OS_LOG_TYPE_DEFAULT, "Setting player's preferred audio language code to %@", buf, 0xCu);
    }

    languageCodeBCP472 = [(__CFString *)selectedAudioOption languageCodeBCP47];
    [(TVPPlayer *)self setPreferredAudioLanguageCode:languageCodeBCP472];

    [(TVPPlayer *)self updateAudioSelectionCriteria];
    if ([(TVPPlayer *)self _integratedTimelineEnabled])
    {
      aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
      v44 = _activePlayer;
      if (_activePlayer == aVQueuePlayer)
      {
        interstitialEventMonitor = [(TVPPlayer *)self interstitialEventMonitor];
        interstitialPlayer = [interstitialEventMonitor interstitialPlayer];
      }

      else
      {
        interstitialPlayer = [(TVPPlayer *)self AVQueuePlayer];
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      items = [(__CFString *)interstitialPlayer items];
      v36 = [items countByEnumeratingWithState:&v48 objects:v52 count:16];
      if (v36)
      {
        v37 = v36;
        v38 = *v49;
        v39 = *MEMORY[0x277CE5DE0];
        do
        {
          for (i = 0; i != v37; ++i)
          {
            if (*v49 != v38)
            {
              objc_enumerationMutation(items);
            }

            v41 = *(*(&v48 + 1) + 8 * i);
            if (v41 != _activePlayerItem)
            {
              v42 = sPlayerLogObject;
              if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                v54 = v41;
                v55 = 2112;
                v56 = interstitialPlayer;
                _os_log_impl(&dword_26CEDD000, v42, OS_LOG_TYPE_DEFAULT, "Will perform automatic re-selection of audio for player item %@ in player %@", buf, 0x16u);
              }

              asset = [(__CFString *)v41 asset];
              v46[0] = MEMORY[0x277D85DD0];
              v46[1] = 3221225472;
              v46[2] = __48__TVPPlayer__playerItemMediaSelectionDidChange___block_invoke;
              v46[3] = &unk_279D7C388;
              v46[4] = v41;
              v47 = interstitialPlayer;
              [asset loadMediaSelectionGroupForMediaCharacteristic:v39 completionHandler:v46];
            }
          }

          v37 = [items countByEnumeratingWithState:&v48 objects:v52 count:16];
        }

        while (v37);
      }

      _activePlayer = v44;
    }

    goto LABEL_53;
  }

  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  v7 = currentPlayerItem;
  if (object == currentPlayerItem)
  {
  }

  else
  {
    interstitialEventMonitor2 = [(TVPPlayer *)self interstitialEventMonitor];
    interstitialPlayer2 = [interstitialEventMonitor2 interstitialPlayer];
    currentItem = [interstitialPlayer2 currentItem];

    if (object != currentItem)
    {
      goto LABEL_54;
    }
  }

  currentPlayerItem2 = [(TVPPlayer *)self currentPlayerItem];

  v13 = sPlayerLogObject;
  v14 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (object == currentPlayerItem2)
  {
    if (!v14)
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Primary player item media selection did change";
  }

  else
  {
    if (!v14)
    {
      goto LABEL_14;
    }

    *buf = 0;
    v15 = "Interstitial player item media selection did change";
  }

  _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, v15, buf, 2u);
LABEL_14:
  v16 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = _activePlayer;
    _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Active player is %@", buf, 0xCu);
  }

  v17 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = _activePlayerItem;
    _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Active player item is %@", buf, 0xCu);
  }

  if (object == _activePlayerItem)
  {
    goto LABEL_21;
  }

  v18 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v54 = object;
    _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Ignoring media selection change for non-active player item %@", buf, 0xCu);
  }

LABEL_54:
}

void __48__TVPPlayer__playerItemMediaSelectionDidChange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = sPlayerLogObject;
  if (v5)
  {
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v9 = *(a1 + 40);
      v10 = 138412546;
      v11 = v8;
      v12 = 2112;
      v13 = v9;
      _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Performing automatic re-selection of audio for player item %@ in player %@", &v10, 0x16u);
    }

    [*(a1 + 32) selectMediaOptionAutomaticallyInMediaSelectionGroup:v5];
  }

  else if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
  {
    __48__TVPPlayer__playerItemMediaSelectionDidChange___block_invoke_cold_1();
  }
}

- (void)_currentPlayerItemReachedTimeToPauseBuffering:(id)buffering
{
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  if (currentMediaItem)
  {
    v5 = currentMediaItem;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TVPPlayerItemReachedTimeToPauseBufferingNotification" object:v5];

    currentMediaItem = v5;
  }
}

- (void)_currentPlayerItemReachedTimeToPausePlayback:(id)playback
{
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  if (currentMediaItem)
  {
    v5 = currentMediaItem;
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"TVPPlayerItemReachedTimeToPausePlaybackNotification" object:v5];

    currentMediaItem = v5;
  }
}

- (void)_integratedTimelineSnapshotsOutOfSync:(id)sync
{
  syncCopy = sync;
  userInfo = [syncCopy userInfo];
  v6 = [userInfo objectForKey:*MEMORY[0x277CE6098]];

  objc_initWeak(&location, self);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__TVPPlayer__integratedTimelineSnapshotsOutOfSync___block_invoke;
  block[3] = &unk_279D7BA58;
  objc_copyWeak(&v15, &location);
  v7 = v6;
  v14 = v7;
  dispatch_async(MEMORY[0x277D85CD0], block);
  if ([v7 isEqualToString:*MEMORY[0x277CE60A8]])
  {
    object = [syncCopy object];
    if (object)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __51__TVPPlayer__integratedTimelineSnapshotsOutOfSync___block_invoke_596;
      v10[3] = &unk_279D7BA58;
      objc_copyWeak(&v12, &location);
      v11 = object;
      v9 = MEMORY[0x277D85CD0];
      dispatch_async(MEMORY[0x277D85CD0], v10);

      objc_destroyWeak(&v12);
    }
  }

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __51__TVPPlayer__integratedTimelineSnapshotsOutOfSync___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (([*(a1 + 32) isEqualToString:*MEMORY[0x277CE60A0]] & 1) == 0)
  {
    objc_msgSend_duration(WeakRetained);
    if (v3 != 3.40282347e38)
    {
      v4 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(a1 + 32);
        v6 = 138412290;
        v7 = v5;
        _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Integrated timeline snapshots out of sync with reason %@", &v6, 0xCu);
      }
    }
  }
}

void __51__TVPPlayer__integratedTimelineSnapshotsOutOfSync___block_invoke_596(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(a1 + 32) currentSnapshot];
  v4 = v3;
  if (v3)
  {
    objc_msgSend_duration(v3);
  }

  else
  {
    memset(v5, 0, sizeof(v5));
  }

  [WeakRetained _durationDidChangeTo:v5 isChangeFromTimeline:1];
}

- (void)_currentMediaItemMetadataDidChange:(id)change
{
  v60 = *MEMORY[0x277D85DE8];
  userInfo = [change userInfo];
  v5 = [userInfo objectForKey:@"TVPMediaItemMetadataChangesKey"];

  if ([v5 containsObject:@"TVPMediaItemMetadataChapterCollections"])
  {
    currentMediaItem = [(TVPPlayer *)self currentMediaItem];
    v7 = [currentMediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataChapterCollections"];

    array = [MEMORY[0x277CBEB18] array];
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    chapterCollections = [(TVPPlayer *)self chapterCollections];
    v10 = [chapterCollections countByEnumeratingWithState:&v54 objects:v59 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v55;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v55 != v12)
          {
            objc_enumerationMutation(chapterCollections);
          }

          v14 = *(*(&v54 + 1) + 8 * i);
          if ([v14 type] != 2)
          {
            [array addObject:v14];
          }
        }

        v11 = [chapterCollections countByEnumeratingWithState:&v54 objects:v59 count:16];
      }

      while (v11);
    }

    [array addObjectsFromArray:v7];
    currentChapterCollection = [(TVPPlayer *)self currentChapterCollection];
    name = [currentChapterCollection name];

    firstObject = [array firstObject];
    if (name)
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = v7;
      v18 = v7;
      v19 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
      if (v19)
      {
        v20 = v19;
        v46 = firstObject;
        v47 = v5;
        v21 = *v51;
        while (2)
        {
          for (j = 0; j != v20; ++j)
          {
            if (*v51 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v50 + 1) + 8 * j);
            name2 = [v23 name];
            v25 = [name2 isEqual:name];

            if (v25)
            {
              firstObject = v23;

              v5 = v47;
              goto LABEL_22;
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v50 objects:v58 count:16];
          if (v20)
          {
            continue;
          }

          break;
        }

        firstObject = v46;
        v5 = v47;
      }

LABEL_22:

      v7 = v48;
    }

    [(TVPPlayer *)self setChapterCollections:array];
    [(TVPPlayer *)self setCurrentChapterCollection:firstObject];
  }

  if ([v5 containsObject:@"TVPMediaItemMetadataWebVTTStyles"])
  {
    currentMediaItem2 = [(TVPPlayer *)self currentMediaItem];
    v27 = [currentMediaItem2 mediaItemMetadataForProperty:@"TVPMediaItemMetadataWebVTTStyles"];

    currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
    v29 = [MEMORY[0x277CE6638] textStyleRulesFromPropertyList:v27];
    [currentPlayerItem setTextStyleRules:v29];
  }

  if ([v5 containsObject:@"TVPMediaItemMetadataScrubPlayerItem"])
  {
    currentMediaItem3 = [(TVPPlayer *)self currentMediaItem];
    v31 = [currentMediaItem3 mediaItemMetadataForProperty:@"TVPMediaItemMetadataScrubPlayerItem"];

    currentPlayerItem2 = [(TVPPlayer *)self currentPlayerItem];
    [(TVPPlayer *)self _setScrubPlayerItem:v31 onPlayerItem:currentPlayerItem2];
  }

  if (([v5 containsObject:@"TVPMediaItemMetadataUpNextPresentationTime"] & 1) != 0 || objc_msgSend(v5, "containsObject:", @"TVPMediaItemMetadataUpNextAutomaticAcceptanceInterval"))
  {
    [(TVPPlayer *)self _populateCurrentPlayerItemWithUpNextMetadata];
  }

  if ([v5 containsObject:@"TVPMediaItemMetadataTimeToPauseBuffering"])
  {
    currentMediaItem4 = [(TVPPlayer *)self currentMediaItem];
    v34 = [currentMediaItem4 mediaItemMetadataForProperty:@"TVPMediaItemMetadataTimeToPauseBuffering"];

    if (v34)
    {
      currentPlayerItem3 = [(TVPPlayer *)self currentPlayerItem];
      CMTimeMakeFromDictionary(&v49, v34);
      [currentPlayerItem3 setTimeToPauseBuffering:&v49];
    }
  }

  if ([v5 containsObject:@"TVPMediaItemMetadataTimeToPausePlayback"])
  {
    currentMediaItem5 = [(TVPPlayer *)self currentMediaItem];
    v37 = [currentMediaItem5 mediaItemMetadataForProperty:@"TVPMediaItemMetadataTimeToPausePlayback"];

    if (v37)
    {
      currentPlayerItem4 = [(TVPPlayer *)self currentPlayerItem];
      CMTimeMakeFromDictionary(&v49, v37);
      [currentPlayerItem4 setTimeToPausePlayback:&v49];
    }
  }

  if (_currentMediaItemMetadataDidChange__onceToken != -1)
  {
    [TVPPlayer _currentMediaItemMetadataDidChange:];
  }

  currentPlayerItem5 = [(TVPPlayer *)self currentPlayerItem];
  if (currentPlayerItem5)
  {
    currentPlayerItem6 = currentPlayerItem5;
    currentMediaItem6 = [(TVPPlayer *)self currentMediaItem];
    if (!currentMediaItem6)
    {
LABEL_45:

      goto LABEL_46;
    }

    v42 = currentMediaItem6;
    v43 = [MEMORY[0x277CBEB98] setWithArray:v5];
    v44 = [v43 intersectsSet:_currentMediaItemMetadataDidChange__metadataKeysUsedByAVKit];

    if (v44)
    {
      currentPlayerItem6 = [(TVPPlayer *)self currentPlayerItem];
      currentMediaItem7 = [(TVPPlayer *)self currentMediaItem];
      [(TVPPlayer *)self _populatePlayerItem:currentPlayerItem6 withMetadataFromMediaItem:currentMediaItem7];

      goto LABEL_45;
    }
  }

LABEL_46:
}

uint64_t __48__TVPPlayer__currentMediaItemMetadataDidChange___block_invoke()
{
  _currentMediaItemMetadataDidChange__metadataKeysUsedByAVKit = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{@"TVPMediaItemMetadataStoreItemIdentifier", @"TVPMediaItemMetadataTitle", @"TVPMediaItemMetadataSeriesTitle", @"TVPMediaItemMetadataSubtitle", @"TVPMediaItemMetadataLongDescription", @"TVPMediaItemMetadataContentRating", @"TVPMediaItemMetadataGenre", @"TVPMediaItemMetadataDateReleased", @"TVPMediaItemMetadataAlbum", @"TVPMediaItemMetadataTomatoPercentage", @"TVPMediaItemMetadataTomatoFreshness", @"TVPMediaItemMetadataArtworkURLString", @"TVPMediaItemMetadataArtworkImageProxy", @"TVPMediaItemMetadataInterstitialCollection", @"TVPMediaItemMetadataScrubImageVideoMediaItem", @"TVPMediaItemMetadataExternalImageConfig", @"TVPMediaItemMetadataExternalImageConfigURL", @"TVPMediaItemMetadataExternalIdentifier", @"TVPMediaItemMetadataExternalProfileIdentifier", @"TVPMediaItemMetadataExternalServiceIdentifier", @"TVPMediaItemMetadataPlaybackProgress", @"TVPMediaItemMetadataExactStartTime", @"TVPMediaItemMetadataExactEndTime", @"TVPMediaItemMetadataProgramScheduleStartTime", @"TVPMediaItemMetadataProgramScheduleEndTime", @"TVPMediaItemMetadataSportingVenueName", @"TVPMediaItemMetadataSportingVenueAddress", @"TVPMediaItemMetadataSportingLeagueName", @"TVPMediaItemMetadataSportingLeagueShortName", @"TVPMediaItemMetadataSportingEventType", @"TVPMediaItemMetadataCurrentEmbeddedSongAdamID", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_audioRouteChanged:(id)changed
{
  changedCopy = changed;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __32__TVPPlayer__audioRouteChanged___block_invoke;
  v6[3] = &unk_279D7BC20;
  v6[4] = self;
  v7 = changedCopy;
  v5 = changedCopy;
  dispatch_async(MEMORY[0x277D85CD0], v6);
}

void __32__TVPPlayer__audioRouteChanged___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) pausesOnRouteChange])
  {
    v2 = [*(a1 + 32) state];
    v3 = +[TVPPlaybackState playing];
    v4 = v3;
    if (v2 == v3)
    {
    }

    else
    {
      v5 = [*(a1 + 32) state];
      v6 = +[TVPPlaybackState loading];

      if (v5 != v6)
      {
        return;
      }
    }

    v7 = [*(a1 + 40) userInfo];
    v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277CB8220]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 unsignedIntegerValue] == 2)
    {
      v9 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v10 = 0;
        _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Pausing for audio route change", v10, 2u);
      }

      [*(a1 + 32) pause];
    }
  }
}

- (void)_screenRecordingStateDidChange:(id)change
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __44__TVPPlayer__screenRecordingStateDidChange___block_invoke;
  block[3] = &unk_279D7BDC8;
  block[4] = self;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __44__TVPPlayer__screenRecordingStateDidChange___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _isScreenBeingRecorded];
  v3 = [*(a1 + 32) AVQueuePlayer];

  v4 = sPlayerLogObject;
  v5 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v2)
    {
      if (v5)
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Screen is being recorded.  Muting AVQueuePlayer", &v13, 2u);
      }

      [*(a1 + 32) setWasMutedPriorToScreenRecording:{objc_msgSend(*(a1 + 32), "muted")}];
      v6 = [*(a1 + 32) AVQueuePlayer];
      [v6 setMuted:1];
    }

    else
    {
      if (v5)
      {
        v8 = *(a1 + 32);
        v9 = v4;
        v10 = [v8 muted];
        v11 = @"NO";
        if (v10)
        {
          v11 = @"YES";
        }

        v13 = 138412290;
        v14 = v11;
        _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Screen is NOT being recorded.  Restoring previous mute value of %@", &v13, 0xCu);
      }

      v12 = [*(a1 + 32) AVQueuePlayer];
      [v12 setMuted:{objc_msgSend(*(a1 + 32), "wasMutedPriorToScreenRecording")}];
    }
  }

  else if (v5)
  {
    v7 = @"NOT ";
    if (v2)
    {
      v7 = &stru_287E49338;
    }

    v13 = 138412290;
    v14 = v7;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Screen is %@being recorded, but AVQueuePlayer does not exist yet.  Will handle when AVQueuePlayer is created.", &v13, 0xCu);
  }
}

- (void)_avPlayerRateDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  [object rate];
  [(TVPPlayer *)self _avPlayerRateDidChangeTo:?];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  userInfo = [changeCopy userInfo];

  [defaultCenter postNotificationName:@"TVPPlaybackRateDidChangeNotification" object:self userInfo:userInfo];
}

+ (id)_newAVQueuePlayer
{
  v8[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(TVPBackgroundQueuePlayer);
  [(TVPBackgroundQueuePlayer *)v3 setUsesExternalPlaybackWhileExternalScreenIsActive:1];
  [(TVPBackgroundQueuePlayer *)v3 setAllowsOutOfBandTextTrackRendering:1];
  savedPreferredAudioLanguageCode = [objc_opt_class() savedPreferredAudioLanguageCode];
  v5 = savedPreferredAudioLanguageCode;
  if (savedPreferredAudioLanguageCode)
  {
    v8[0] = savedPreferredAudioLanguageCode;
    v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  }

  else
  {
    v6 = 0;
  }

  [self _updateAudioSelectionCriteriaForAVQueuePlayer:v3 isInterstitialPlayer:0 preferredAudioLanguageCodes:v6 prefersAudioDescriptions:0];
  [self _configureAutoSubtitlesForPlayer:v3];

  return v3;
}

+ (void)_configureAutoSubtitlesForPlayer:(id)player
{
  v3 = MEMORY[0x277CBEAF8];
  playerCopy = player;
  preferredLanguages = [v3 preferredLanguages];
  v5 = [objc_alloc(MEMORY[0x277CE65E8]) initWithPreferredLanguages:preferredLanguages preferredMediaCharacteristics:0];
  [playerCopy setAllowsLegibleFallbackForAllAudibleMediaSelections:1];
  [playerCopy setLegibleFallbackMediaSelectionCriteria:v5];
}

+ (id)_audioSelectionCriteriaForPreferredAudioLanguageCodes:(id)codes prefersAudioDescriptions:(BOOL)descriptions
{
  v23[1] = *MEMORY[0x277D85DE8];
  codesCopy = codes;
  if (descriptions || (v6 = MAAudibleMediaPrefCopyPreferDescriptiveVideo(), v7 = [v6 BOOLValue], v6, v7))
  {
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    if (firstObject)
    {
      if (codesCopy)
      {
        v10 = [codesCopy arrayByAddingObject:firstObject];

        codesCopy = v10;
      }

      else
      {
        v23[0] = firstObject;
        codesCopy = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
      }
    }

    v17 = objc_alloc(MEMORY[0x277CE65E8]);
    v18 = *MEMORY[0x277CE5E08];
    v22[0] = *MEMORY[0x277CE5E20];
    v22[1] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
    v16 = [v17 initWithPreferredLanguages:codesCopy preferredMediaCharacteristics:v19];
  }

  else
  {
    v11 = [codesCopy count];
    v12 = objc_alloc(MEMORY[0x277CE65E8]);
    v13 = v12;
    if (v11)
    {
      v14 = *MEMORY[0x277CE5E28];
      v21[0] = @"com.apple.amp.tv.is-default";
      v21[1] = v14;
      v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
      v16 = [v13 initWithPreferredLanguages:codesCopy preferredMediaCharacteristics:v15];
    }

    else
    {
      v16 = [v12 initWithPremiumMediaCharacteristics:&unk_287E59AC8 preferredLanguages:0 preferredMediaCharacteristics:0];
    }
  }

  return v16;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampedElapsedTimeForTime:(SEL)time duration:(id *)duration
{
  *retstr = *duration;
  if ((duration->var2 & 0x1D) == 1 && (a5->var2 & 0x1D) == 1)
  {
    time1 = *a5;
    v8 = *MEMORY[0x277CC08F0];
    *&time2.value = *MEMORY[0x277CC08F0];
    v7 = *(MEMORY[0x277CC08F0] + 16);
    time2.epoch = v7;
    self = CMTimeCompare(&time1, &time2);
    if (self >= 1)
    {
      time1 = *retstr;
      *&time2.value = v8;
      time2.epoch = v7;
      CMTimeMaximum(retstr, &time1, &time2);
      time2 = *retstr;
      v9 = *a5;
      self = CMTimeMinimum(&time1, &time2, &v9);
      *retstr = time1;
    }
  }

  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampedSceneTimeForPlayerTime:(SEL)time
{
  memset(&v11[1], 0, sizeof(CMTime));
  objc_msgSend__currentMediaItemReversePlaybackEndTime(self, time);
  memset(v11, 0, 24);
  objc_msgSend__currentMediaItemForwardPlaybackEndTime(self);
  memset(&v10, 0, sizeof(v10));
  lhs = v11[0];
  rhs = v11[1];
  CMTimeSubtract(&v10, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  rhs = *a4;
  v7 = v11[1];
  CMTimeSubtract(&lhs, &rhs, &v7);
  rhs = lhs;
  return objc_msgSend__clampedElapsedTimeForTime_duration_(self, v10.value, *&v10.timescale, v10.epoch);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_clampInfiniteTimeToSeekableRange:(SEL)range
{
  *retstr = *a4;
  if ((~a4->var2 & 5) == 0 || (a4->var2 & 9) == 9)
  {
    cachedSeekableTimeRanges = [($3CC8671D27C23BF42ADDB32F2B5E48AE *)self cachedSeekableTimeRanges];
    memset(&v11, 0, sizeof(v11));
    objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
    v8 = *&a4->var0;
    time.epoch = a4->var3;
    v9 = v11;
    *&time.value = v8;
    CMTimeClampToRange(retstr, &time, &v9);
  }

  return self;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_estimatedCMTimeForPlaybackDate:(SEL)date referenceTime:(id)time referenceDate:(id *)referenceDate
{
  [time timeIntervalSinceDate:a6];
  CMTimeMakeWithSeconds(&rhs, v8, 1000000);
  v10 = *referenceDate;
  return CMTimeAdd(retstr, &v10, &rhs);
}

- (id)_estimatedPlaybackDateForCMTime:(id *)time
{
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  v6 = currentPlayerItem;
  if ((time->var2 & 0x1D) == 1 && [currentPlayerItem status] == 1 && -[TVPPlayer _currentPlayerItemContainsDates](self, "_currentPlayerItemContainsDates"))
  {
    v7 = [(TVPPlayer *)self _currentDateFromPlayerItem:v6];
    if (v7)
    {
      if ([(TVPPlayer *)self _integratedTimelineEnabled])
      {
        integratedTimeline = [v6 integratedTimeline];
        v9 = integratedTimeline;
        if (integratedTimeline)
        {
          objc_msgSend_currentTime(integratedTimeline);
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        v15 = v14;
      }

      else
      {
        if (v6)
        {
          objc_msgSend_currentTime(v6);
        }

        else
        {
          memset(&v14, 0, sizeof(v14));
        }

        v15 = v14;
      }

      memset(&v14, 0, sizeof(v14));
      lhs = *time;
      v12 = v15;
      CMTimeSubtract(&v14, &lhs, &v12);
      lhs = v14;
      v10 = [v7 dateByAddingTimeInterval:CMTimeGetSeconds(&lhs)];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)_notifyListenersOfElapsedTimeChange:(id *)change playbackDate:(id)date dueToTimeJump:(BOOL)jump
{
  jumpCopy = jump;
  v33 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  objc_msgSend_cachedDuration(self);
  v28 = *change;
  objc_msgSend__clampedElapsedTimeForTime_duration_(self);
  *&change->var0 = *&time.value;
  epoch = time.epoch;
  change->var3 = time.epoch;
  v29 = *&change->var0;
  var3 = epoch;
  objc_msgSend__clampInfiniteTimeToSeekableRange_(self);
  *change = time;
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v11 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsScene"];

  if (v11)
  {
    v29 = *&change->var0;
    var3 = change->var3;
    objc_msgSend__clampedSceneTimeForPlayerTime_(self);
    *change = time;
  }

  time = *change;
  Seconds = CMTimeGetSeconds(&time);
  elapsedTimeObserverBlocks = [(TVPPlayer *)self elapsedTimeObserverBlocks];
  v14 = [elapsedTimeObserverBlocks copy];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  objectEnumerator = [v14 objectEnumerator];
  v16 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v25;
    do
    {
      v19 = 0;
      do
      {
        if (*v25 != v18)
        {
          objc_enumerationMutation(objectEnumerator);
        }

        v20 = *(*(&v24 + 1) + 8 * v19);
        [(TVPPlayer *)self rate];
        (*(v20 + 16))(v20, dateCopy, jumpCopy, Seconds, v21);
        ++v19;
      }

      while (v17 != v19);
      v17 = [objectEnumerator countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v17);
  }

  currentMediaItem2 = [(TVPPlayer *)self currentMediaItem];
  reportingDelegate = [currentMediaItem2 reportingDelegate];
  if (objc_opt_respondsToSelector())
  {
    [reportingDelegate mediaItem:currentMediaItem2 elapsedTimeDidChangeTo:dateCopy playbackDateDidChangeTo:jumpCopy dueToTimeJump:Seconds];
  }

  time = *change;
  [(TVPPlayer *)self _updateIsLiveForElapsedTime:&time];
}

- (void)_updateAVPlayerActionAtItemEnd
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  if (aVQueuePlayer)
  {
    playlist = [(TVPPlayer *)self playlist];
    mediaItemEndAction = [(TVPPlayer *)self mediaItemEndAction];
    objc_msgSend_duration(self);
    if (v6 == 3.40282347e38)
    {
      v7 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Setting AVPlayer's actionAtItemEnd to AVPlayerActionAtItemEndNone since this is a live stream", v11, 2u);
      }

      goto LABEL_5;
    }

    if ([playlist moreItemsAvailable:0])
    {
      if (mediaItemEndAction != 2)
      {
        if (mediaItemEndAction)
        {
LABEL_16:
          v8 = aVQueuePlayer;
          v9 = 1;
          goto LABEL_6;
        }

        goto LABEL_15;
      }
    }

    else
    {
      endAction = [playlist endAction];
      if (mediaItemEndAction == 1 || endAction == 1)
      {
        goto LABEL_16;
      }

      if (mediaItemEndAction != 2)
      {
LABEL_15:
        v8 = aVQueuePlayer;
        v9 = 0;
        goto LABEL_6;
      }
    }

LABEL_5:
    v8 = aVQueuePlayer;
    v9 = 2;
LABEL_6:
    [v8 setActionAtItemEnd:v9];
  }
}

- (id)_statesThatReturnStartTime
{
  if (_statesThatReturnStartTime_onceToken != -1)
  {
    [TVPPlayer _statesThatReturnStartTime];
  }

  v3 = _statesThatReturnStartTime_states;

  return v3;
}

uint64_t __39__TVPPlayer__statesThatReturnStartTime__block_invoke()
{
  _statesThatReturnStartTime_states = [MEMORY[0x277CBEB98] setWithObjects:{@"Stopped", @"Waiting for media item to prepare for loading", @"Waiting for signal after preparing item", @"Waiting for AVAsset to load", @"Waiting for media item to prepare for playback initiation", @"Waiting for initial AVPlayerItem status to become ready to play", @"Waiting for more playlist items", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)_statesThatReturnAVPlayerTime
{
  if (_statesThatReturnAVPlayerTime_onceToken != -1)
  {
    [TVPPlayer _statesThatReturnAVPlayerTime];
  }

  v3 = _statesThatReturnAVPlayerTime_states;

  return v3;
}

uint64_t __42__TVPPlayer__statesThatReturnAVPlayerTime__block_invoke()
{
  _statesThatReturnAVPlayerTime_states = [MEMORY[0x277CBEB98] setWithObjects:{@"Waiting for non-initial AVPlayerItem status to become ready to play", @"Waiting for time control status to be done waiting", @"Playing", @"Paused", @"Scanning using AVPlayer", @"Scanning using AVPlayer driven by AVKit", @"Scrubbing using progressive jumping", 0}];

  return MEMORY[0x2821F96F8]();
}

- (id)_statesThatReturnSeekTime
{
  if (_statesThatReturnSeekTime_onceToken != -1)
  {
    [TVPPlayer _statesThatReturnSeekTime];
  }

  v3 = _statesThatReturnSeekTime_states;

  return v3;
}

uint64_t __38__TVPPlayer__statesThatReturnSeekTime__block_invoke()
{
  _statesThatReturnSeekTime_states = [MEMORY[0x277CBEB98] setWithObjects:{@"Waiting for seek", @"Scrubbing using progressive jumping waiting for seek", 0}];

  return MEMORY[0x2821F96F8]();
}

- (void)_notifyOfBoundaryCrossingBetweenPreviousTime:(id *)time updatedTime:(id *)updatedTime
{
  if ((time->var2 & 0x1D) == 1)
  {
    v17 = v4;
    v18 = v5;
    if ((updatedTime->var2 & 0x1D) == 1)
    {
      memset(&v16, 0, sizeof(v16));
      time1.start = *time;
      v15 = *updatedTime;
      CMTimeMinimum(&v16, &time1.start, &v15);
      memset(&v15, 0, sizeof(v15));
      time1.start = *time;
      v14 = *updatedTime;
      CMTimeMaximum(&v15, &time1.start, &v14);
      memset(&time1, 0, sizeof(time1));
      v14 = v16;
      end = v15;
      CMTimeRangeFromTimeToTime(&time1, &v14, &end);
      boundaryTimeObserverInfos = [(TVPPlayer *)self boundaryTimeObserverInfos];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __70__TVPPlayer__notifyOfBoundaryCrossingBetweenPreviousTime_updatedTime___block_invoke;
      v10[3] = &__block_descriptor_80_e52_v32__0__NSUUID_8__TVPBoundaryTimeObserverInfo_16_B24l;
      v11 = time1;
      [boundaryTimeObserverInfos enumerateKeysAndObjectsUsingBlock:v10];
    }
  }
}

void __70__TVPPlayer__notifyOfBoundaryCrossingBetweenPreviousTime_updatedTime___block_invoke(_OWORD *a1, uint64_t a2, void *a3)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 times];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        if (v10)
        {
          objc_msgSend_CMTimeValue(v10);
        }

        else
        {
          memset(&time, 0, sizeof(time));
        }

        v11 = a1[3];
        *&v14.start.value = a1[2];
        *&v14.start.epoch = v11;
        *&v14.duration.timescale = a1[4];
        if (CMTimeRangeContainsTime(&v14, &time))
        {
          v12 = [v4 handler];
          v13 = v12;
          if (v12)
          {
            (*(v12 + 16))(v12, 1);
          }

          goto LABEL_16;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:
}

- (BOOL)_currentPlayerItemCanScanAtRate:(double)rate
{
  if (rate != 0.0 && rate != 1.0)
  {
    currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
    v7 = currentPlayerItem;
    if (rate > 0.0 && rate < 1.0)
    {
      canPlaySlowForward = [currentPlayerItem canPlaySlowForward];
    }

    else
    {
      if (rate >= 1.0 && rate <= 2.0)
      {
        goto LABEL_27;
      }

      if (rate <= 2.0)
      {
        if (rate == -1.0)
        {
          canPlaySlowForward = [currentPlayerItem canPlayReverse];
        }

        else if (rate <= -1.0 || rate >= 0.0)
        {
          if (rate >= -1.0)
          {
LABEL_27:
            v4 = 1;
            goto LABEL_28;
          }

          canPlaySlowForward = [currentPlayerItem canPlayFastReverse];
        }

        else
        {
          canPlaySlowForward = [currentPlayerItem canPlaySlowReverse];
        }
      }

      else
      {
        canPlaySlowForward = [currentPlayerItem canPlayFastForward];
      }
    }

    v4 = canPlaySlowForward;
LABEL_28:

    return v4;
  }

  return 0;
}

- (void)_setState:(id)state updatedRate:(double)rate reason:(id)reason notifyListeners:(BOOL)listeners
{
  listenersCopy = listeners;
  v39 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  reasonCopy = reason;
  p_state = &self->_state;
  if (self->_state != stateCopy || (+[TVPPlaybackState scanning], v28 = objc_claimAutoreleasedReturnValue(), v28, v28 == stateCopy))
  {
    v13 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v38 = stateCopy;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Setting state to %@", buf, 0xCu);
    }

    v14 = *p_state;
    v15 = stateCopy;
    v16 = v15;
    if (listenersCopy)
    {
      v35[0] = @"TVPPlaybackStateOldStateKey";
      v35[1] = @"TVPPlaybackStateNewStateKey";
      v36[0] = v14;
      v36[1] = v15;
      v35[2] = @"TVPPlaybackStateNewRateKey";
      v17 = [MEMORY[0x277CCABB0] numberWithDouble:rate];
      v36[2] = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];

      v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:v18];
      v20 = v19;
      if (reasonCopy)
      {
        [v19 setObject:reasonCopy forKey:@"TVPPlaybackStateChangeReasonKey"];
      }

      v21 = v20;
      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:@"TVPPlaybackStateWillChangeNotification" object:self userInfo:v21];

      currentMediaItem = [(TVPPlayer *)self currentMediaItem];
      reportingDelegate = [currentMediaItem reportingDelegate];
      if (objc_opt_respondsToSelector())
      {
        [reportingDelegate mediaItem:currentMediaItem willChangeFromPlaybackState:v14 toPlaybackState:v16 updatedRate:self player:rate];
      }

      [(TVPPlayer *)self willChangeValueForKey:@"rate", reasonCopy];

      objc_storeStrong(&self->_state, state);
      objc_initWeak(buf, self);
      stateMachine = [(TVPPlayer *)self stateMachine];
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __58__TVPPlayer__setState_updatedRate_reason_notifyListeners___block_invoke;
      v30[3] = &unk_279D7C3D0;
      objc_copyWeak(v34, buf);
      v26 = v21;
      v31 = v26;
      v32 = v14;
      v33 = v16;
      v34[1] = *&rate;
      [stateMachine executeBlockAfterCurrentStateTransition:v30];

      objc_destroyWeak(v34);
      objc_destroyWeak(buf);
    }

    else
    {
      v27 = v15;
      v26 = *p_state;
      *p_state = v27;
    }
  }
}

void __58__TVPPlayer__setState_updatedRate_reason_notifyListeners___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [v2 postNotificationName:@"TVPPlaybackStateDidChangeNotification" object:WeakRetained userInfo:*(a1 + 32)];

  v4 = objc_loadWeakRetained((a1 + 56));
  v11 = [v4 currentMediaItem];

  v5 = [v11 reportingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 64);
    v9 = objc_loadWeakRetained((a1 + 56));
    [v5 mediaItem:v11 didChangeFromPlaybackState:v6 toPlaybackState:v7 updatedRate:v9 player:v8];
  }

  v10 = objc_loadWeakRetained((a1 + 56));
  [v10 didChangeValueForKey:@"rate"];
}

- (int)_videoTrackIDFromTracks:(id)tracks
{
  v18 = *MEMORY[0x277D85DE8];
  tracksCopy = tracks;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [tracksCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    trackID = 0;
    v7 = *v14;
    v8 = *MEMORY[0x277CE5EA8];
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(tracksCopy);
        }

        assetTrack = [*(*(&v13 + 1) + 8 * i) assetTrack];
        if ([assetTrack statusOfValueForKey:@"mediaType" error:0] == 2)
        {
          mediaType = [assetTrack mediaType];
          if ([mediaType isEqualToString:v8] && objc_msgSend(assetTrack, "statusOfValueForKey:error:", @"trackID", 0) == 2)
          {
            trackID = [assetTrack trackID];
          }
        }
      }

      v5 = [tracksCopy countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    trackID = 0;
  }

  return trackID;
}

- (void)updateAudioSelectionCriteria
{
  savedPreferredAudioLanguageCode = [objc_opt_class() savedPreferredAudioLanguageCode];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  preferredAudioLanguageCode = [(TVPPlayer *)self preferredAudioLanguageCode];

  if (preferredAudioLanguageCode)
  {
    preferredAudioLanguageCode2 = [(TVPPlayer *)self preferredAudioLanguageCode];
    [v3 addObject:preferredAudioLanguageCode2];
  }

  if (savedPreferredAudioLanguageCode)
  {
    [v3 addObject:?];
  }

  v6 = objc_opt_class();
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  [v6 _updateAudioSelectionCriteriaForAVQueuePlayer:aVQueuePlayer isInterstitialPlayer:0 preferredAudioLanguageCodes:v3 prefersAudioDescriptions:{-[TVPPlayer prefersAudioDescriptions](self, "prefersAudioDescriptions")}];

  if ([(TVPPlayer *)self _integratedTimelineEnabled])
  {
    v8 = objc_opt_class();
    interstitialEventMonitor = [(TVPPlayer *)self interstitialEventMonitor];
    interstitialPlayer = [interstitialEventMonitor interstitialPlayer];
    [v8 _updateAudioSelectionCriteriaForAVQueuePlayer:interstitialPlayer isInterstitialPlayer:1 preferredAudioLanguageCodes:v3 prefersAudioDescriptions:{-[TVPPlayer prefersAudioDescriptions](self, "prefersAudioDescriptions")}];
  }
}

+ (void)_updateAudioSelectionCriteriaForAVQueuePlayer:(id)player isInterstitialPlayer:(BOOL)interstitialPlayer preferredAudioLanguageCodes:(id)codes prefersAudioDescriptions:(BOOL)descriptions
{
  descriptionsCopy = descriptions;
  interstitialPlayerCopy = interstitialPlayer;
  v18 = *MEMORY[0x277D85DE8];
  playerCopy = player;
  if (playerCopy)
  {
    codesCopy = codes;
    tvp_cachedAudioSelectionCriteria = [playerCopy tvp_cachedAudioSelectionCriteria];
    v12 = [objc_opt_class() _audioSelectionCriteriaForPreferredAudioLanguageCodes:codesCopy prefersAudioDescriptions:descriptionsCopy];

    if (tvp_cachedAudioSelectionCriteria != v12 && ([tvp_cachedAudioSelectionCriteria tvp_isEqualToCriteria:v12] & 1) == 0)
    {
      v13 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v14 = @"NO";
        *v15 = 138412802;
        *&v15[4] = playerCopy;
        *&v15[12] = 2112;
        if (interstitialPlayerCopy)
        {
          v14 = @"YES";
        }

        *&v15[14] = v14;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Setting audible media selection criteria on %@ (is interstitial player: %@) to %@", v15, 0x20u);
      }

      [playerCopy setTvp_cachedAudioSelectionCriteria:{v12, *v15, *&v15[8]}];
      [playerCopy setMediaSelectionCriteria:v12 forMediaCharacteristic:*MEMORY[0x277CE5DE0]];
    }
  }
}

- (void)_resetAndReselectAudioOptions
{
  [(TVPPlayer *)self updateAudioSelectionCriteria];
  [(TVPPlayer *)self willChangeValueForKey:@"audioOptions"];
  [(TVPPlayer *)self didChangeValueForKey:@"audioOptions"];

  [(TVPPlayer *)self setSelectedAudioOption:0];
}

- (void)_updateSelectedSubtitleForFilteredOptions:(id)options
{
  optionsCopy = options;
  selectedSubtitleOption = [(TVPPlayer *)self selectedSubtitleOption];
  if (([optionsCopy containsObject:selectedSubtitleOption] & 1) == 0)
  {
    firstObject = [optionsCopy firstObject];
    if (firstObject)
    {
      v6 = +[TVPSubtitleOption autoSubtitleOption];
      v7 = [selectedSubtitleOption isEqual:v6];

      if (v7)
      {
        avMediaSelectionOption = [selectedSubtitleOption avMediaSelectionOption];
        v9 = avMediaSelectionOption;
        if (avMediaSelectionOption && ![avMediaSelectionOption hasMediaCharacteristic:*MEMORY[0x277CE5DF8]])
        {
          v10 = [[TVPSubtitleOption alloc] initWithAVMediaSelectionOption:v9];
        }

        else
        {
          v10 = +[TVPSubtitleOption offSubtitleOption];
        }

        v11 = v10;
        if ([optionsCopy containsObject:v10])
        {
          v12 = v11;

          firstObject = v12;
        }
      }
    }

    else
    {
      firstObject = +[TVPSubtitleOption offSubtitleOption];
    }

    [(TVPPlayer *)self _setSelectedSubtitleOption:firstObject userOverridesSystemSubtitleSettings:0];
  }
}

- (void)_setSelectedSubtitleOption:(id)option userOverridesSystemSubtitleSettings:(BOOL)settings
{
  settingsCopy = settings;
  v28[1] = *MEMORY[0x277D85DE8];
  optionCopy = option;
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  if ([currentPlayerItem status] == 1)
  {
    asset = [currentPlayerItem asset];
    v9 = *MEMORY[0x277CE5E30];
    v10 = [asset tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5E30]];

    [(TVPPlayer *)self willChangeValueForKey:@"selectedSubtitleOption"];
    if (optionCopy)
    {
      v11 = +[TVPSubtitleOption offSubtitleOption];
      v12 = [optionCopy isEqual:v11];

      if (v12 || (+[TVPSubtitleOption autoSubtitleOption](TVPSubtitleOption, "autoSubtitleOption"), v13 = objc_claimAutoreleasedReturnValue(), v14 = [optionCopy isEqual:v13], v13, v14))
      {
        [(TVPPlayer *)self setTemporarySubtitleOverrideType:0];
        aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
        [aVQueuePlayer setMediaSelectionCriteria:0 forMediaCharacteristic:v9];

        MACaptionAppearancePrefSetDisplayType();
        MACaptionAppearancePrefSetPreferredLanguages();
        [currentPlayerItem selectMediaOptionAutomaticallyInMediaSelectionGroup:v10];
      }

      else
      {
        languageCodeFromLocale = [optionCopy languageCodeFromLocale];
        v17 = languageCodeFromLocale;
        if (settingsCopy)
        {
          MACaptionAppearancePrefSetDisplayType();
          MACaptionAppearancePrefSetPreferredLanguages();
          v18 = [MEMORY[0x277CBEAF8] localeWithLocaleIdentifier:v17];
          tvp_subtitleLanguageCode = [v18 tvp_subtitleLanguageCode];
          if (tvp_subtitleLanguageCode)
          {
            MACaptionAppearanceAddSelectedLanguage(kMACaptionAppearanceDomainUser, tvp_subtitleLanguageCode);
          }

          v20 = 0;
          v21 = 0;
        }

        else
        {
          if (languageCodeFromLocale)
          {
            v22 = objc_alloc(MEMORY[0x277CE65E8]);
            v28[0] = v17;
            v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:1];
            v27 = *MEMORY[0x277CE5E20];
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v27 count:1];
            v21 = [v22 initWithPreferredLanguages:v23 preferredMediaCharacteristics:v24];
          }

          else
          {
            v21 = 0;
          }

          v20 = &unk_287E59768;
        }

        [(TVPPlayer *)self setTemporarySubtitleOverrideType:v20];
        aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
        [aVQueuePlayer2 setMediaSelectionCriteria:v21 forMediaCharacteristic:v9];

        avMediaSelectionOption = [optionCopy avMediaSelectionOption];
        [currentPlayerItem selectMediaOption:avMediaSelectionOption inMediaSelectionGroup:v10];
      }
    }

    else
    {
      [currentPlayerItem selectMediaOption:0 inMediaSelectionGroup:v10];
    }

    [(TVPPlayer *)self didChangeValueForKey:@"selectedSubtitleOption"];
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentMediaItemForwardPlaybackEndTime
{
  v12 = 0uLL;
  v13 = 0;
  objc_msgSend_cachedDuration(self, a3);
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  v6 = currentMediaItem;
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  if ((~HIDWORD(v12) & 0x11) != 0)
  {
    v8 = [currentMediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataForwardPlaybackEndTime"];
    cachedSeekableTimeRanges = v8;
    if (v8)
    {
      [v8 doubleValue];
      CMTimeMakeWithSeconds(retstr, v9, 1000000);
    }

    else
    {
      *&retstr->var0 = v12;
      retstr->var3 = v13;
    }
  }

  else
  {
    cachedSeekableTimeRanges = [(TVPPlayer *)self cachedSeekableTimeRanges];
    memset(&v11[1], 0, sizeof(CMTimeRange));
    objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
    v11[0] = v11[1];
    CMTimeRangeGetEnd(retstr, v11);
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)_currentMediaItemReversePlaybackEndTime
{
  currentMediaItem = [(TVPPlayer *)self currentMediaItem];
  *&retstr->var1 = 0;
  retstr->var3 = 0;
  retstr->var0 = 0;
  objc_msgSend_cachedDuration(self);
  if (v13)
  {
    objc_msgSend_cachedDuration(self);
    if ((v12 & 0x10) != 0)
    {
      cachedSeekableTimeRanges = [(TVPPlayer *)self cachedSeekableTimeRanges];
      objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);
      *&retstr->var0 = 0u;
      v10 = 0;
      goto LABEL_7;
    }
  }

  v6 = [currentMediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataReversePlaybackEndTime"];
  cachedSeekableTimeRanges = v6;
  if (!v6)
  {
    v9 = MEMORY[0x277CC08F0];
    *&retstr->var0 = *MEMORY[0x277CC08F0];
    v10 = *(v9 + 16);
LABEL_7:
    retstr->var3 = v10;
    goto LABEL_8;
  }

  [v6 doubleValue];
  CMTimeMakeWithSeconds(retstr, v8, 1000000);
LABEL_8:

  return result;
}

- (void)_updateVideoViewsWithAVQueuePlayer:(id)player
{
  playerCopy = player;
  videoViewWeakReferences = [(TVPPlayer *)self videoViewWeakReferences];
  allObjects = [videoViewWeakReferences allObjects];

  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0x7FFFFFFFFFFFFFFFLL;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __48__TVPPlayer__updateVideoViewsWithAVQueuePlayer___block_invoke;
  v12[3] = &unk_279D7C3F8;
  v12[4] = &v13;
  [allObjects enumerateObjectsUsingBlock:v12];
  if (v14[3] != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [allObjects objectAtIndex:?];
    [v7 setAVPlayer:playerCopy];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__TVPPlayer__updateVideoViewsWithAVQueuePlayer___block_invoke_2;
  v9[3] = &unk_279D7C420;
  v11 = &v13;
  v8 = playerCopy;
  v10 = v8;
  [allObjects enumerateObjectsUsingBlock:v9];

  _Block_object_dispose(&v13, 8);
}

void *__48__TVPPlayer__updateVideoViewsWithAVQueuePlayer___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 isPrimarySubtitleDisplayer];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = a3;
    *a4 = 1;
  }

  return result;
}

void *__48__TVPPlayer__updateVideoViewsWithAVQueuePlayer___block_invoke_2(void *result, void *a2, uint64_t a3)
{
  if (*(*(result[5] + 8) + 24) != a3)
  {
    return [a2 setAVPlayer:result[4]];
  }

  return result;
}

- (id)playbackErrorFromError:(id)error forMediaItem:(id)item
{
  v74[1] = *MEMORY[0x277D85DE8];
  errorCopy = error;
  itemCopy = item;
  if (!errorCopy)
  {
    v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TVPlaybackErrorDomain" code:801 userInfo:0];
    goto LABEL_47;
  }

  domain = [errorCopy domain];
  if ([domain isEqualToString:*MEMORY[0x277CCA738]] && (objc_msgSend(errorCopy, "code") == -1009 || objc_msgSend(errorCopy, "code") == -1018))
  {

    goto LABEL_8;
  }

  domain2 = [errorCopy domain];
  if ([domain2 isEqualToString:@"SSErrorDomain"])
  {
    code = [errorCopy code];

    if (code == 110)
    {
LABEL_8:
      v73 = *MEMORY[0x277CCA7E8];
      v74[0] = errorCopy;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:&v73 count:1];
      v12 = [v11 mutableCopy];

      userInfo = [errorCopy userInfo];
      v14 = [userInfo objectForKey:*MEMORY[0x277CCA770]];

      if (v14)
      {
        if ([v14 integerValue])
        {
          if ([v14 integerValue] == 2)
          {
LABEL_38:
            v36 = 834;
            goto LABEL_46;
          }

          goto LABEL_35;
        }

LABEL_45:
        v41 = [itemCopy hasTrait:@"TVPMediaItemTraitCellularPlaybackProhibited"];
        v42 = [MEMORY[0x277CCABB0] numberWithInteger:v41];
        [v12 setObject:v42 forKey:@"TVPlaybackCellularPlaybackProhibitedErrorReasonKey"];

        v36 = 824;
        goto LABEL_46;
      }

      v29 = +[TVPReachabilityMonitor sharedInstance];
      if ([v29 networkType] == 2)
      {
        if (![(TVPPlayer *)self allowsCellularUsage])
        {

          goto LABEL_43;
        }

        v30 = [itemCopy hasTrait:@"TVPMediaItemTraitCellularPlaybackProhibited"];

        if (v30)
        {
LABEL_43:
          v40 = sPlayerLogObject;
          if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CEDD000, v40, OS_LOG_TYPE_DEFAULT, "Network type is cellular and cellular playback is prohibited.  Assuming internet not connected error occurred due to cellular policy", buf, 2u);
          }

          goto LABEL_45;
        }
      }

      else
      {
      }

      if (![(TVPPlayer *)self allowsConstrainedNetworkUsage])
      {
        v37 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v37, OS_LOG_TYPE_DEFAULT, "Constrained network playback is prohibited. Assuming internet not connected error occurred due to constrained network policy", buf, 2u);
        }

        goto LABEL_38;
      }

LABEL_35:
      v36 = 808;
LABEL_46:
      v15 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TVPlaybackErrorDomain" code:v36 userInfo:v12];

      goto LABEL_47;
    }
  }

  else
  {
  }

  domain3 = [errorCopy domain];
  v17 = [domain3 isEqualToString:*MEMORY[0x277CE5DC0]];

  if (v17)
  {
    v15 = errorCopy;
    if ([v15 code] == -11835)
    {
      currentMediaItem = [(TVPPlayer *)self currentMediaItem];
      v19 = [currentMediaItem hasTrait:@"TVPMediaItemTraitIsHomeSharingContent"];

      if (v19)
      {
        v71 = *MEMORY[0x277CCA7E8];
        v72 = v15;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v72;
        v22 = &v71;
      }

      else
      {
        v69 = *MEMORY[0x277CCA7E8];
        v70 = v15;
        v20 = MEMORY[0x277CBEAC0];
        v21 = &v70;
        v22 = &v69;
      }

      v38 = [v20 dictionaryWithObjects:v21 forKeys:v22 count:1];
      v39 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TVPlaybackErrorDomain" code:811 userInfo:v38];

LABEL_41:
      v15 = v39;
      goto LABEL_47;
    }

    if ([v15 code] == -11807 || (objc_msgSend(v15, "userInfo"), v31 = objc_claimAutoreleasedReturnValue(), v32 = *MEMORY[0x277CCA7E8], objc_msgSend(v31, "objectForKey:", *MEMORY[0x277CCA7E8]), v33 = objc_claimAutoreleasedReturnValue(), v34 = objc_msgSend(v33, "code"), v33, v31, v34 == -12541))
    {
      v35 = [objc_alloc(MEMORY[0x277CCA9B8]) initWithDomain:@"TVPlaybackErrorDomain" code:825 userInfo:0];

LABEL_32:
      v15 = v35;
      goto LABEL_47;
    }

    if ([v15 code] == -11868)
    {
      v44 = objc_alloc(MEMORY[0x277CCA9B8]);
      v67 = v32;
      v68 = v15;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
      v46 = v44;
      v47 = 826;
LABEL_52:
      v35 = [v46 initWithDomain:@"TVPlaybackErrorDomain" code:v47 userInfo:v45];

      goto LABEL_32;
    }

    if ([v15 code] == -11870)
    {
      v48 = objc_alloc(MEMORY[0x277CCA9B8]);
      v65 = v32;
      v66 = v15;
      v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      v39 = [v48 initWithDomain:@"TVPlaybackErrorDomain" code:827 userInfo:v49];

      currentMediaItem2 = [(TVPPlayer *)self currentMediaItem];
      LOBYTE(v48) = objc_opt_respondsToSelector();

      if (v48)
      {
        currentMediaItem3 = [(TVPPlayer *)self currentMediaItem];
        v52 = [currentMediaItem3 replacementErrorForPlaybackError:v39];

        if (v52 && v52 != v39)
        {
          v53 = sPlayerLogObject;
          if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v62 = v39;
            v63 = 2112;
            v64 = v52;
            _os_log_impl(&dword_26CEDD000, v53, OS_LOG_TYPE_DEFAULT, "Media item replaced original error %@ with %@", buf, 0x16u);
          }

          v54 = v52;

          v39 = v54;
        }
      }

      goto LABEL_41;
    }

    userInfo2 = [v15 userInfo];
    v56 = [userInfo2 objectForKey:v32];
    code2 = [v56 code];

    if ((code2 & 0xFFFFFFFFFFFFFFFBLL) == 0xFFFFFFFFFFFFBCB8)
    {
      v58 = objc_alloc(MEMORY[0x277CCA9B8]);
      v59 = v32;
      v60 = v15;
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v60 forKeys:&v59 count:1];
      v46 = v58;
      v47 = 830;
      goto LABEL_52;
    }
  }

  else
  {
    currentMediaItem4 = [(TVPPlayer *)self currentMediaItem];
    v24 = objc_opt_respondsToSelector();

    v15 = errorCopy;
    if (v24)
    {
      currentMediaItem5 = [(TVPPlayer *)self currentMediaItem];
      v26 = [currentMediaItem5 replacementErrorForPlaybackError:v15];

      if (v26 && v26 != v15)
      {
        v27 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v62 = v15;
          v63 = 2112;
          v64 = v26;
          _os_log_impl(&dword_26CEDD000, v27, OS_LOG_TYPE_DEFAULT, "Media item replaced original error %@ with %@", buf, 0x16u);
        }

        v28 = v26;

        v15 = v28;
      }
    }
  }

LABEL_47:

  return v15;
}

- (id)beginCoordinatedPlaybackSuspensionWithReason:(id)reason
{
  v14 = *MEMORY[0x277D85DE8];
  reasonCopy = reason;
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];

  if (aVQueuePlayer)
  {
    aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
    playbackCoordinator = [aVQueuePlayer2 playbackCoordinator];
    v8 = [playbackCoordinator beginSuspensionForReason:reasonCopy];

    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Beginning coordinated playback suspension: %@", &v12, 0xCu);
    }
  }

  else
  {
    v10 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v12) = 0;
      _os_log_impl(&dword_26CEDD000, v10, OS_LOG_TYPE_DEFAULT, "Unable to begin playback suspension because AVPlayer has not been created yet", &v12, 2u);
    }

    v8 = 0;
  }

  return v8;
}

- (void)endCoordinatedPlaybackSuspension:(id)suspension
{
  v8 = *MEMORY[0x277D85DE8];
  suspensionCopy = suspension;
  v4 = sPlayerLogObject;
  v5 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (suspensionCopy)
  {
    if (v5)
    {
      v6 = 138412290;
      v7 = suspensionCopy;
      _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Ending coordinated playback suspension: %@", &v6, 0xCu);
    }

    [suspensionCopy end];
  }

  else if (v5)
  {
    LOWORD(v6) = 0;
    _os_log_impl(&dword_26CEDD000, v4, OS_LOG_TYPE_DEFAULT, "Unable to end playback suspension because suspension is nil", &v6, 2u);
  }
}

- (id)_soundCheckNormalizationForMediaItem:(id)item
{
  v3 = [item mediaItemMetadataForProperty:@"TVPMediaItemMetadataSoundCheckVolumeNormalization"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || ((v4 = [v3 intValue]) != 0 ? (v6 = v4 == 0xFFFF) : (v6 = 1), v6))
  {
    v7 = 0;
  }

  else
  {
    if (v4 < 1)
    {
      LODWORD(v5) = 1.0;
    }

    else
    {
      *&v5 = sqrtf(1000.0 / v4);
    }

    v7 = [MEMORY[0x277CCABB0] numberWithFloat:v5];
  }

  return v7;
}

- (void)_updateIsLiveForElapsedTime:(id *)time
{
  objc_msgSend_cachedDuration(self, a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_5;
  }

  objc_msgSend_cachedDuration(self);
  if ((v12 & 0x10) == 0)
  {
    goto LABEL_5;
  }

  memset(&v11, 0, sizeof(v11));
  cachedSeekableTimeRanges = [(TVPPlayer *)self cachedSeekableTimeRanges];
  objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);

  if ((time->var2 & 1) == 0 || (v11.start.flags & 1) == 0)
  {
    goto LABEL_5;
  }

  v6 = 0;
  if ((v11.duration.flags & 1) != 0 && !v11.duration.epoch && (v11.duration.value & 0x8000000000000000) == 0)
  {
    v7.start = v11.duration;
    time2 = **&MEMORY[0x277CC08F0];
    if (!CMTimeCompare(&v7.start, &time2))
    {
LABEL_5:
      v6 = 0;
      goto LABEL_6;
    }

    memset(&time2, 0, sizeof(time2));
    CMTimeMakeWithSeconds(&time2, 10.0, 1000000);
    v7.start = v11.duration;
    v9 = time2;
    if (CMTimeCompare(&v7.start, &v9) < 1)
    {
      v6 = 1;
    }

    else
    {
      memset(&v9, 0, sizeof(v9));
      v7 = v11;
      CMTimeRangeGetEnd(&lhs, &v7);
      v7.start = time2;
      CMTimeSubtract(&v9, &lhs, &v7.start);
      *&v7.start.value = *&time->var0;
      v7.start.epoch = time->var3;
      lhs = v9;
      v6 = CMTimeCompare(&v7.start, &lhs) >= 0;
    }
  }

LABEL_6:
  [(TVPPlayer *)self setIsLive:v6];
}

- (void)_enqueueAsyncDelegateOperation:(id)operation
{
  operationCopy = operation;
  asyncDelegateOperations = [(TVPPlayer *)self asyncDelegateOperations];
  [asyncDelegateOperations addObject:operationCopy];

  asyncDelegateOperations2 = [(TVPPlayer *)self asyncDelegateOperations];
  v7 = [asyncDelegateOperations2 count];

  if (v7 == 1)
  {
    [(TVPPlayer *)self setAsyncDelegateInProgress:1];

    [(TVPPlayer *)self _processNextAsyncDelegateOperation];
  }
}

- (void)_processNextAsyncDelegateOperation
{
  v2 = sTVPPlaybackPerfToken++;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __47__TVPPlayer__processNextAsyncDelegateOperation__block_invoke;
  v3[3] = &unk_279D7BE68;
  v3[4] = self;
  v3[5] = v2;
  dispatch_async(MEMORY[0x277D85CD0], v3);
}

void __47__TVPPlayer__processNextAsyncDelegateOperation__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) asyncDelegateOperations];
  v3 = [v2 count];

  v4 = *(a1 + 32);
  if (v3)
  {
    v5 = [v4 asyncDelegateOperations];
    v8 = [v5 firstObject];

    v6 = [v8 block];

    if (v6)
    {
      v7 = [v8 block];
      v7[2]();
    }
  }

  else
  {

    [v4 setAsyncDelegateInProgress:0];
  }
}

- (void)_configureSoundCheckForPlayerItem:(id)item tracks:(id)tracks
{
  v33 = *MEMORY[0x277D85DE8];
  tracksCopy = tracks;
  v6 = objc_msgSend_mediaItemLoader(item);
  mediaItem = [v6 mediaItem];

  v8 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataSoundCheckDictionary"];
  if ([v8 count])
  {
    v23 = v8;
    v9 = [v8 mutableCopy];
    v24 = mediaItem;
    v10 = [mediaItem mediaItemMetadataForProperty:@"TVPMediaItemMetadataSoundCheckMediaKind"];
    if (v10)
    {
      [v9 setObject:v10 forKey:*MEMORY[0x277CEFE10]];
    }

    v22 = v10;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v25 = tracksCopy;
    v11 = tracksCopy;
    v12 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v27;
      v15 = *MEMORY[0x277CE5E48];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v27 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          if ([v17 isEnabled])
          {
            assetTrack = [v17 assetTrack];
            mediaType = [assetTrack mediaType];
            v20 = [mediaType isEqualToString:v15];

            if (v20)
            {
              v21 = sPlayerLogObject;
              if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v31 = v9;
                _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Sound check: setting AVPlayerItemTrack loudnessInfo to %@", buf, 0xCu);
              }

              [v17 setLoudnessInfo:v9];
            }
          }
        }

        v13 = [v11 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v13);
    }

    mediaItem = v24;
    tracksCopy = v25;
    v8 = v23;
  }
}

- (id)_currentDateFromPlayerItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    goto LABEL_6;
  }

  if ([(TVPPlayer *)self _integratedTimelineEnabled])
  {
    integratedTimeline = [itemCopy integratedTimeline];
    currentDate = [integratedTimeline currentDate];

    goto LABEL_7;
  }

  if ([itemCopy status] == 1)
  {
    currentDate = [itemCopy currentDate];
  }

  else
  {
LABEL_6:
    currentDate = 0;
  }

LABEL_7:

  return currentDate;
}

- (void)_logAccessLogEvents
{
  v28 = *MEMORY[0x277D85DE8];
  accessLog = [(TVPPlayer *)self accessLog];
  events = [accessLog events];
  lastObject = [events lastObject];

  [lastObject observedBitrate];
  if (v6 > 0.0)
  {
    v7 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v7;
      [lastObject observedBitrate];
      v9 = [(TVPPlayer *)self _bitRateString:?];
      v26 = 138412290;
      v27 = v9;
      _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "network bandwidth: %@", &v26, 0xCu);
    }
  }

  [lastObject averageVideoBitrate];
  if (v10 > 0.0)
  {
    v11 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = v11;
      [lastObject averageVideoBitrate];
      v13 = [(TVPPlayer *)self _bitRateString:?];
      v26 = 138412290;
      v27 = v13;
      _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "average bitrate video: %@", &v26, 0xCu);
    }
  }

  [lastObject averageAudioBitrate];
  if (v14 > 0.0)
  {
    v15 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      [lastObject averageAudioBitrate];
      v17 = [(TVPPlayer *)self _bitRateString:?];
      v26 = 138412290;
      v27 = v17;
      _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "average bitrate audio: %@", &v26, 0xCu);
    }
  }

  [lastObject indicatedBitrate];
  if (v18 > 0.0)
  {
    v19 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v20 = v19;
      [lastObject indicatedBitrate];
      v21 = [(TVPPlayer *)self _bitRateString:?];
      v26 = 138412290;
      v27 = v21;
      _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "indicated bitrate peak: %@", &v26, 0xCu);
    }
  }

  [lastObject indicatedAverageBitrate];
  if (v22 > 0.0)
  {
    v23 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v24 = v23;
      [lastObject indicatedAverageBitrate];
      v25 = [(TVPPlayer *)self _bitRateString:?];
      v26 = 138412290;
      v27 = v25;
      _os_log_impl(&dword_26CEDD000, v24, OS_LOG_TYPE_DEFAULT, "indicated bitrate avg: %@", &v26, 0xCu);
    }
  }
}

- (id)_bitRateString:(double)string
{
  v5 = string / 1000.0;
  if (string / 1000.0 <= 1.0)
  {
    v6 = @"bps";
  }

  else
  {
    string = v5 / 1000.0;
    if (v5 / 1000.0 <= 1.0)
    {
      v6 = @"kbps";
      string = v5;
    }

    else
    {
      v6 = @"Mbps";
    }
  }

  return [MEMORY[0x277CCACA8] stringWithFormat:@"%0.2f%@", *&string, v6, v3, v4];
}

- (id)_assetTracksOfType:(id)type fromTracks:(id)tracks
{
  v22 = *MEMORY[0x277D85DE8];
  typeCopy = type;
  tracksCopy = tracks;
  array = [MEMORY[0x277CBEB18] array];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v8 = tracksCopy;
  v9 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        assetTrack = [*(*(&v17 + 1) + 8 * i) assetTrack];
        if ([assetTrack statusOfValueForKey:@"mediaType" error:0] == 2)
        {
          mediaType = [assetTrack mediaType];
          v15 = [mediaType isEqualToString:typeCopy];

          if (v15)
          {
            [array addObject:assetTrack];
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  return array;
}

- (id)_descriptionForVideoResolutionClass:(int64_t)class
{
  if ((class - 1) > 2)
  {
    return @"TVPVideoResolutionClassUnknown";
  }

  else
  {
    return off_279D7CE78[class - 1];
  }
}

- (id)_descriptionForVideoRange:(int64_t)range
{
  if ((range - 1) > 3)
  {
    return @"TVPVideoRangeUnknown";
  }

  else
  {
    return off_279D7CE90[range - 1];
  }
}

- (void)_updateCurrentMediaItemAudioInfoForPlayerItem:(id)item tracks:(id)tracks
{
  v32 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  tracksCopy = tracks;
  val = self;
  v6 = [(TVPPlayer *)self _assetTracksOfType:*MEMORY[0x277CE5E48] fromTracks:?];
  v7 = dispatch_group_create();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = v6;
  v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = *v27;
    v10 = MEMORY[0x277D85DD0];
    do
    {
      v11 = 0;
      do
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        dispatch_group_enter(v7);
        v30[0] = @"enabled";
        v30[1] = @"formatDescriptions";
        v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:{2, itemCopy}];
        v24[0] = v10;
        v24[1] = 3221225472;
        v24[2] = __66__TVPPlayer__updateCurrentMediaItemAudioInfoForPlayerItem_tracks___block_invoke;
        v24[3] = &unk_279D7BDC8;
        v25 = v7;
        [v12 loadValuesAsynchronouslyForKeys:v13 completionHandler:v24];

        ++v11;
      }

      while (v8 != v11);
      v8 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v8);
  }

  objc_initWeak(&location, val);
  avAssetTrackInspectionQueue = [(TVPPlayer *)val avAssetTrackInspectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TVPPlayer__updateCurrentMediaItemAudioInfoForPlayerItem_tracks___block_invoke_2;
  block[3] = &unk_279D7C080;
  v21 = obj;
  v15 = obj;
  objc_copyWeak(&v22, &location);
  dispatch_group_notify(v7, avAssetTrackInspectionQueue, block);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

void __66__TVPPlayer__updateCurrentMediaItemAudioInfoForPlayerItem_tracks___block_invoke_2(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v28;
    mChannelLayoutTag_low = -1;
    v18 = *v28;
    v19 = v1;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v28 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v8 = *(*(&v27 + 1) + 8 * i);
        if ([v8 statusOfValueForKey:@"enabled" error:0] == 2 && objc_msgSend(v8, "isEnabled") && objc_msgSend(v8, "statusOfValueForKey:error:", @"formatDescriptions", 0) == 2)
        {
          v9 = [v8 formatDescriptions];
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v10 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
          if (v10)
          {
            v11 = v10;
            v12 = *v24;
            do
            {
              for (j = 0; j != v11; ++j)
              {
                if (*v24 != v12)
                {
                  objc_enumerationMutation(v9);
                }

                v14 = *(*(&v23 + 1) + 8 * j);
                v15 = [TVPPlayer _audioFormatForFormatDescription:v14];
                if (v15 > v4)
                {
                  v4 = v15;
                }

                sizeOut = 0;
                FormatList = CMAudioFormatDescriptionGetFormatList(v14, &sizeOut);
                if (FormatList && mChannelLayoutTag_low <= LOWORD(FormatList->mChannelLayoutTag))
                {
                  mChannelLayoutTag_low = LOWORD(FormatList->mChannelLayoutTag);
                }
              }

              v11 = [v9 countByEnumeratingWithState:&v23 objects:v31 count:16];
            }

            while (v11);
          }

          v5 = v18;
          v1 = v19;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    mChannelLayoutTag_low = -1;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__TVPPlayer__updateCurrentMediaItemAudioInfoForPlayerItem_tracks___block_invoke_3;
  block[3] = &unk_279D7C448;
  objc_copyWeak(v21, (a1 + 40));
  v21[1] = v4;
  v21[2] = mChannelLayoutTag_low;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(v21);
}

void __66__TVPPlayer__updateCurrentMediaItemAudioInfoForPlayerItem_tracks___block_invoke_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if ([WeakRetained currentMediaItemAudioFormat] != *(a1 + 40))
    {
      v4 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        v6 = [objc_opt_class() _stringForAudioFormat:*(a1 + 40)];
        v9 = 138412290;
        v10 = v6;
        _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Audio format: %@", &v9, 0xCu);
      }

      [v3 setCurrentMediaItemAudioFormat:*(a1 + 40)];
    }

    if ([v3 currentMediaItemAudioChannels] != *(a1 + 48))
    {
      v7 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 48);
        v9 = 134217984;
        v10 = v8;
        _os_log_impl(&dword_26CEDD000, v7, OS_LOG_TYPE_DEFAULT, "Audio channels: %ld", &v9, 0xCu);
      }

      [v3 setCurrentMediaItemAudioChannels:*(a1 + 48)];
    }
  }
}

- (void)_updateCurrentMediaItemVideoRangeForTracks:(id)tracks
{
  v28 = *MEMORY[0x277D85DE8];
  tracksCopy = tracks;
  v4 = [(TVPPlayer *)self _assetTracksOfType:*MEMORY[0x277CE5EA8] fromTracks:?];
  v5 = dispatch_group_create();
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = v4;
  v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v6)
  {
    v7 = *v23;
    v8 = MEMORY[0x277D85DD0];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v23 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        dispatch_group_enter(v5);
        v26[0] = @"enabled";
        v26[1] = @"formatDescriptions";
        v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
        v20[0] = v8;
        v20[1] = 3221225472;
        v20[2] = __56__TVPPlayer__updateCurrentMediaItemVideoRangeForTracks___block_invoke;
        v20[3] = &unk_279D7BDC8;
        v21 = v5;
        [v10 loadValuesAsynchronouslyForKeys:v11 completionHandler:v20];
      }

      v6 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v6);
  }

  objc_initWeak(&location, self);
  avAssetTrackInspectionQueue = [(TVPPlayer *)self avAssetTrackInspectionQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TVPPlayer__updateCurrentMediaItemVideoRangeForTracks___block_invoke_2;
  block[3] = &unk_279D7C080;
  v17 = obj;
  v13 = obj;
  objc_copyWeak(&v18, &location);
  dispatch_group_notify(v5, avAssetTrackInspectionQueue, block);

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

void __56__TVPPlayer__updateCurrentMediaItemVideoRangeForTracks___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v5)
        {
          objc_enumerationMutation(v1);
        }

        v7 = *(*(&v22 + 1) + 8 * i);
        if ([v7 statusOfValueForKey:@"enabled" error:0] == 2 && objc_msgSend(v7, "isEnabled") && objc_msgSend(v7, "statusOfValueForKey:error:", @"formatDescriptions", 0) == 2)
        {
          v8 = [v7 formatDescriptions];
          v18 = 0u;
          v19 = 0u;
          v20 = 0u;
          v21 = 0u;
          v9 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v19;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v19 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                VideoDynamicRange = CMVideoFormatDescriptionGetVideoDynamicRange();
              }

              v4 = VideoDynamicRange;
              v10 = [v8 countByEnumeratingWithState:&v18 objects:v26 count:16];
            }

            while (v10);
          }
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __56__TVPPlayer__updateCurrentMediaItemVideoRangeForTracks___block_invoke_3;
  block[3] = &unk_279D7C470;
  objc_copyWeak(&v16, (a1 + 40));
  v17 = v4;
  dispatch_async(MEMORY[0x277D85CD0], block);
  objc_destroyWeak(&v16);
}

void __56__TVPPlayer__updateCurrentMediaItemVideoRangeForTracks___block_invoke_3(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = [objc_opt_class() tvpVideoRangeForVideoDynamicRange:*(a1 + 40)];
    [WeakRetained setCurrentMediaItemVideoRange:v3];
    v4 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      v6 = [WeakRetained _descriptionForVideoRange:v3];
      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Current video range: <%@>", &v7, 0xCu);
    }
  }
}

+ (int64_t)_audioFormatForFormatDescription:(opaqueCMFormatDescription *)description
{
  MediaSubType = CMFormatDescriptionGetMediaSubType(description);
  result = 4;
  if (MediaSubType <= 1885692722)
  {
    if (MediaSubType > 1700997938)
    {
      if (MediaSubType == 1700997939)
      {
        return result;
      }

      if (MediaSubType != 1700998451)
      {
        v6 = 1885547315;
        goto LABEL_16;
      }

LABEL_18:
      sizeOut = 0;
      FormatList = CMAudioFormatDescriptionGetFormatList(description, &sizeOut);
      if (!FormatList || sizeOut <= 0x2F)
      {
        goto LABEL_28;
      }

      mFormatID = FormatList->mASBD.mFormatID;
      if (mFormatID <= 1885547314)
      {
        if (mFormatID == 1667574579)
        {
          return 4;
        }

        v10 = 1700997939;
      }

      else
      {
        if (mFormatID == 1885547315 || mFormatID == 1902324531)
        {
          return 4;
        }

        v10 = 2053319475;
      }

      if (mFormatID != v10)
      {
        goto LABEL_28;
      }

      return 4;
    }

    if (MediaSubType == 1667574579)
    {
      return result;
    }

    v7 = 1667575091;
LABEL_12:
    if (MediaSubType != v7)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if (MediaSubType > 1902469938)
  {
    if (MediaSubType == 2053464883)
    {
      goto LABEL_18;
    }

    if (MediaSubType == 2053319475)
    {
      return result;
    }

    v7 = 1902469939;
    goto LABEL_12;
  }

  if (MediaSubType == 1885692723)
  {
    goto LABEL_18;
  }

  v6 = 1902324531;
LABEL_16:
  if (MediaSubType == v6)
  {
    return result;
  }

LABEL_28:
  v11 = CMFormatDescriptionGetMediaSubType(description);
  v12 = 4;
  result = 1;
  if (v11 > 1885430114)
  {
    if (v11 <= 1902207855)
    {
      if (v11 > 1885547314)
      {
        if (v11 > 1902207330)
        {
          if (v11 == 1902207331)
          {
            return result;
          }

          if (v11 != 1902207795)
          {
            v13 = 1902207848;
            goto LABEL_77;
          }

          return 2;
        }

        if (v11 != 1885547315)
        {
          v14 = 1885692723;
          goto LABEL_72;
        }

        return v12;
      }

      if (v11 <= 1885430631)
      {
        if (v11 == 1885430115)
        {
          return result;
        }

        v15 = 1885430579;
LABEL_53:
        if (v11 == v15)
        {
          return 2;
        }

        return 0;
      }

      if (v11 == 1885430632)
      {
        return result;
      }

      v13 = 1885430640;
LABEL_77:
      if (v11 == v13)
      {
        return result;
      }

      return 0;
    }

    if (v11 > 2053202738)
    {
      if (v11 > 2053202799)
      {
        if (v11 == 2053202800)
        {
          return result;
        }

        if (v11 == 2053319475)
        {
          return v12;
        }

        v14 = 2053464883;
LABEL_72:
        if (v11 == v14)
        {
          return 3;
        }

        return 0;
      }

      if (v11 == 2053202739)
      {
        return 2;
      }

      v18 = 25448;
      goto LABEL_76;
    }

    if (v11 <= 1902469938)
    {
      if (v11 == 1902207856)
      {
        return result;
      }

      v16 = 1902324531;
      goto LABEL_82;
    }

    if (v11 != 1902469939)
    {
      v18 = 24931;
LABEL_76:
      v13 = v18 | 0x7A610000;
      goto LABEL_77;
    }

    return 3;
  }

  if (v11 > 1667312946)
  {
    if (v11 <= 1667326831)
    {
      if (v11 > 1667326770)
      {
        if (v11 == 1667326771)
        {
          return 2;
        }

        v17 = 25448;
      }

      else
      {
        if (v11 == 1667312947)
        {
          return 2;
        }

        v17 = 24931;
      }

      v13 = v17 | 0x63610000;
      goto LABEL_77;
    }

    if (v11 <= 1667575090)
    {
      if (v11 == 1667326832)
      {
        return result;
      }

      v16 = 1667574579;
LABEL_82:
      if (v11 != v16)
      {
        return 0;
      }

      return v12;
    }

    if (v11 != 1667575091)
    {
      if (v11 != 1700997939)
      {
        v14 = 1700998451;
        goto LABEL_72;
      }

      return v12;
    }

    return 3;
  }

  if (v11 <= 1633772388)
  {
    if (v11 == 1633771875)
    {
      return result;
    }

    v13 = 1633772320;
    goto LABEL_77;
  }

  if ((v11 - 1633772389) > 0xB || ((1 << (v11 - 101)) & 0x80F) == 0)
  {
    v15 = 1633889587;
    goto LABEL_53;
  }

  return result;
}

+ (id)_stringForAudioFormat:(int64_t)format
{
  if ((format - 1) > 3)
  {
    return @"Unknown";
  }

  else
  {
    return off_279D7CEB0[format - 1];
  }
}

- (BOOL)_getStringForTitleLabel:(id *)label subtitleLabel:(id *)subtitleLabel forMediaItem:(id)item
{
  itemCopy = item;
  v8 = [itemCopy mediaItemMetadataForProperty:@"TVPMediaItemMetadataTitle"];
  v9 = [itemCopy mediaItemMetadataForProperty:@"TVPMediaItemMetadataSeriesTitle"];
  v10 = [itemCopy mediaItemMetadataForProperty:@"TVPMediaItemMetadataSubtitle"];

  if ([v9 length])
  {
    v11 = v9;
    *label = v9;
    v12 = v8;
    v13 = v8;
  }

  else if ([v8 length])
  {
    v14 = v8;
    *label = v8;
    v15 = v10;
    v13 = v10;
  }

  else
  {
    v16 = v10;
    v13 = 0;
    *label = v10;
  }

  *subtitleLabel = v13;

  return 1;
}

- (BOOL)_currentPlayerItemContainsDates
{
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  if ([currentPlayerItem status] == 1)
  {
    objc_msgSend_cachedDuration(self);
    if ((v9 & 1) != 0 && (objc_msgSend_cachedDuration(self), (v8 & 0x10) != 0))
    {
      v6 = 1;
    }

    else
    {
      currentPlayerItem2 = [(TVPPlayer *)self currentPlayerItem];
      currentDate = [currentPlayerItem2 currentDate];
      v6 = currentDate != 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_populatePlayerItem:(id)item withMetadataFromMediaItem:(id)mediaItem
{
  v115 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  mediaItemCopy = mediaItem;
  v7 = mediaItemCopy;
  if (itemCopy && mediaItemCopy)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v106 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStoreItemIdentifier"];
    if (v106 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      v9 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v9 setIdentifier:*MEMORY[0x277CB8560]];
      [v9 setExtendedLanguageTag:@"und"];
      v10 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(v106, "longLongValue")}];
      [v9 setValue:v10];

      [v8 addObject:v9];
    }

    v93 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExternalIdentifier"];
    if (v93)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v11 setIdentifier:*MEMORY[0x277CB8518]];
        [v11 setExtendedLanguageTag:@"und"];
        [v11 setValue:v93];
        [v8 addObject:v11];
      }
    }

    v92 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExternalProfileIdentifier"];
    if (v92)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v12 setIdentifier:*MEMORY[0x277CB8520]];
        [v12 setExtendedLanguageTag:@"und"];
        [v12 setValue:v92];
        [v8 addObject:v12];
      }
    }

    v91 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExternalServiceIdentifier"];
    if (v91)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v13 setIdentifier:*MEMORY[0x277CB8558]];
        [v13 setExtendedLanguageTag:@"und"];
        [v13 setValue:v91];
        [v8 addObject:v13];
      }
    }

    v90 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataBrandID"];
    if (v90)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v14 setIdentifier:*MEMORY[0x277CB8508]];
        [v14 setExtendedLanguageTag:@"und"];
        [v14 setValue:v90];
        [v8 addObject:v14];
      }
    }

    v89 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataPlaybackProgress"];
    if (v89)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v15 setIdentifier:*MEMORY[0x277CB8530]];
        [v15 setExtendedLanguageTag:@"und"];
        [v15 setValue:v89];
        [v8 addObject:v15];
      }
    }

    v104 = objc_alloc_init(MEMORY[0x277CCABB8]);
    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    [v104 setLocale:currentLocale];
    v96 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataSeasonNumber"];
    if (v96)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v16 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v16 setIdentifier:*MEMORY[0x277CB8550]];
        [v16 setExtendedLanguageTag:@"und"];
        v17 = [v104 stringFromNumber:v96];
        v18 = v17;
        if (v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v96;
        }

        [v16 setValue:v19];
        [v8 addObject:v16];
      }
    }

    v95 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataEpisodeNumber"];
    if (v95)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v20 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v20 setIdentifier:*MEMORY[0x277CB8510]];
        [v20 setExtendedLanguageTag:@"und"];
        v21 = [v104 stringFromNumber:v95];
        v22 = v21;
        if (v21)
        {
          v23 = v21;
        }

        else
        {
          v23 = v95;
        }

        [v20 setValue:v23];
        [v8 addObject:v20];
      }
    }

    v109 = 0;
    v110 = 0;
    v24 = [(TVPPlayer *)self _getStringForTitleLabel:&v110 subtitleLabel:&v109 forMediaItem:v7];
    v87 = v110;
    v86 = v109;
    if (v24)
    {
      if ([v87 length])
      {
        v25 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v25 setIdentifier:*MEMORY[0x277CE5EF0]];
        [v25 setExtendedLanguageTag:@"und"];
        [v25 setValue:v87];
        [v8 addObject:v25];
      }

      if ([v86 length])
      {
        v26 = objc_alloc_init(MEMORY[0x277CE6558]);
        [v26 setIdentifier:*MEMORY[0x277CE5F90]];
        [v26 setExtendedLanguageTag:@"und"];
        [v26 setValue:v86];
        [v8 addObject:v26];
      }
    }

    v103 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataLongDescription"];
    if ([v103 length])
    {
      v27 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v27 setIdentifier:*MEMORY[0x277CE5ED8]];
      [v27 setExtendedLanguageTag:@"und"];
      [v27 setValue:v103];
      [v8 addObject:v27];
    }

    v28 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentRatingDisplayName"];
    if ([v28 length])
    {
      v29 = v28;
    }

    else
    {
      v30 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataContentRating"];

      v29 = v30;
    }

    if ([v29 length])
    {
      v31 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v31 setIdentifier:*MEMORY[0x277CE5F80]];
      [v31 setExtendedLanguageTag:@"und"];
      [v31 setValue:v85];
      [v8 addObject:v31];
    }

    v102 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataGenre"];
    if ([v102 length])
    {
      v32 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v32 setIdentifier:*MEMORY[0x277CE5F70]];
      [v32 setExtendedLanguageTag:@"und"];
      [v32 setValue:v102];
      [v8 addObject:v32];
    }

    v101 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataDateReleased"];
    if (v101)
    {
      v33 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v33 setIdentifier:*MEMORY[0x277CE5F88]];
      [v33 setExtendedLanguageTag:@"und"];
      [v33 setValue:v101];
      [v8 addObject:v33];
    }

    v100 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataAlbum"];
    if ([v100 length])
    {
      v34 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v34 setIdentifier:*MEMORY[0x277CE5EB0]];
      [v34 setExtendedLanguageTag:@"und"];
      [v34 setValue:v100];
      [v8 addObject:v34];
    }

    v97 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataTomatoPercentage"];
    v94 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataTomatoFreshness"];
    if (v97 && v94)
    {
      v35 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v35 setIdentifier:*MEMORY[0x277CB8548]];
      [v35 setExtendedLanguageTag:@"und"];
      [v35 setValue:v97];
      v36 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v36 setIdentifier:*MEMORY[0x277CB8540]];
      [v36 setExtendedLanguageTag:@"und"];
      [v36 setValue:v94];
      [v8 addObject:v35];
      [v8 addObject:v36];
    }

    v99 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataLocalizedScheduledTimeString"];
    if (v99)
    {
      v37 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v37 setIdentifier:*MEMORY[0x277CB8538]];
      [v37 setExtendedLanguageTag:@"und"];
      [v37 setValue:v99];
      [v8 addObject:v37];
    }

    v98 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataSportingLeagueShortName"];
    if ([v98 length])
    {
      v38 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v38 setIdentifier:*MEMORY[0x277CB8528]];
      [v38 setExtendedLanguageTag:@"und"];
      [v38 setValue:v98];
      [v8 addObject:v38];
    }

    v39 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExactStartTime"];
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults doubleForKey:@"ExactStartTimeOverrideInMS"];
    v42 = v41;

    if (v42 > 0.0)
    {
      v43 = sPlayerLogObject;
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v42 / 1000.0];
        *buf = 138412290;
        v112 = v44;
        _os_log_impl(&dword_26CEDD000, v43, OS_LOG_TYPE_DEFAULT, "Overriding exact start time with date %@", buf, 0xCu);
      }

      v45 = [MEMORY[0x277CCABB0] numberWithDouble:v42];

      v39 = v45;
    }

    if (v39)
    {
      v46 = MEMORY[0x277CBEAA8];
      [v39 doubleValue];
      v48 = [v46 dateWithTimeIntervalSince1970:v47 / 1000.0];
      v49 = sPlayerLogObject;
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        seekableDateRange = [(TVPPlayer *)self seekableDateRange];
        startDate = [seekableDateRange startDate];
        *buf = 138412546;
        v112 = v48;
        v113 = 2112;
        v114 = startDate;
        _os_log_impl(&dword_26CEDD000, v49, OS_LOG_TYPE_DEFAULT, "Setting approximate start date %@ with seekable start date %@", buf, 0x16u);
      }

      v52 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v52 setIdentifier:*MEMORY[0x277CB8500]];
      [v52 setExtendedLanguageTag:@"und"];
      [v52 setValue:v48];
      [v8 addObject:v52];
    }

    else
    {
      v48 = sPlayerLogObject;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v48, OS_LOG_TYPE_DEFAULT, "Not setting approximate start date because none was provided", buf, 2u);
      }
    }

    v53 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataExactEndTime"];
    standardUserDefaults2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    [standardUserDefaults2 doubleForKey:@"ExactEndTimeOverrideInMS"];
    v56 = v55;

    if (v56 > 0.0)
    {
      v57 = sPlayerLogObject;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
      {
        v58 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSince1970:v56 / 1000.0];
        *buf = 138412290;
        v112 = v58;
        _os_log_impl(&dword_26CEDD000, v57, OS_LOG_TYPE_DEFAULT, "Overriding exact end time with date %@", buf, 0xCu);
      }

      v59 = [MEMORY[0x277CCABB0] numberWithDouble:v56];

      v53 = v59;
    }

    if (v53)
    {
      v60 = MEMORY[0x277CBEAA8];
      [v53 doubleValue];
      v62 = [v60 dateWithTimeIntervalSince1970:v61 / 1000.0];
      v63 = sPlayerLogObject;
      if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        seekableDateRange2 = [(TVPPlayer *)self seekableDateRange];
        endDate = [seekableDateRange2 endDate];
        *buf = 138412546;
        v112 = v62;
        v113 = 2112;
        v114 = endDate;
        _os_log_impl(&dword_26CEDD000, v63, OS_LOG_TYPE_DEFAULT, "Setting approximate end date %@ with seekable end date %@", buf, 0x16u);
      }

      v66 = objc_alloc_init(MEMORY[0x277CE6558]);
      [v66 setIdentifier:*MEMORY[0x277CB84F8]];
      [v66 setExtendedLanguageTag:@"und"];
      [v66 setValue:v62];
      [v8 addObject:v66];
    }

    else
    {
      v62 = sPlayerLogObject;
      if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v62, OS_LOG_TYPE_DEFAULT, "Not setting approximate end date because none was provided", buf, 2u);
      }
    }

    v67 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataArtworkURLString"];
    if (![v67 length])
    {
      v68 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataTallArtworkURLFormat"];
      if ([v68 length])
      {
        v69 = 73.326;
      }

      else
      {
        v70 = [v7 mediaItemMetadataForProperty:@"TVPMediaItemMetadataArtworkURLFormat"];

        v69 = 195.547;
        v68 = v70;
      }

      if ([v68 length])
      {
        if (+[TVPHeicUtil isHeicFormatAllowed])
        {
          v71 = @"heic";
        }

        else
        {
          v71 = @"jpeg";
        }

        v72 = [objc_alloc(MEMORY[0x277D6C498]) initUrlWithProperties:v68 imageSize:0 focusSizeIncrease:v71 cropCode:v69 urlFormat:110.0, 0.0];
        v73 = [MEMORY[0x277D6C4B0] imageURLWithDescription:v72];
        absoluteString = [v73 absoluteString];

        v67 = absoluteString;
      }
    }

    if ([v67 length] && (+[TVPReachabilityMonitor sharedInstance](TVPReachabilityMonitor, "sharedInstance"), v75 = objc_claimAutoreleasedReturnValue(), v76 = objc_msgSend(v75, "isNetworkReachable"), v75, v76) && (v77 = v67, v78 = objc_alloc(MEMORY[0x277D6C4A8]), objc_msgSend(MEMORY[0x277CBEBC0], "URLWithString:", v77), v79 = objc_claimAutoreleasedReturnValue(), v80 = objc_msgSend(v78, "initWithURL:headers:identifier:decrypter:", v79, 0, v77, 0), v79, v81 = objc_alloc(MEMORY[0x277D6C490]), objc_msgSend(MEMORY[0x277D6C4A0], "sharedInstance"), v82 = objc_claimAutoreleasedReturnValue(), v83 = objc_msgSend(v81, "initWithObject:imageLoader:groupType:", v80, v82, 0), v82, v80, v77, v83) || (objc_msgSend(v7, "mediaItemMetadataForProperty:", @"TVPMediaItemMetadataArtworkImageProxy"), (v83 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      [itemCopy setPosterProxy:v83];
      objc_initWeak(buf, itemCopy);
      v107[0] = MEMORY[0x277D85DD0];
      v107[1] = 3221225472;
      v107[2] = __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke;
      v107[3] = &unk_279D7BA80;
      objc_copyWeak(&v108, buf);
      [v83 setCompletionHandler:v107];
      [v83 load];
      objc_destroyWeak(&v108);
      objc_destroyWeak(buf);
    }

    v84 = sPlayerLogObject;
    if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v84, OS_LOG_TYPE_DEFAULT, "Updating player item external metadata", buf, 2u);
    }

    [itemCopy setExternalMetadata:v8];
  }
}

void __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v6 = a2;
  v7 = dispatch_get_global_queue(21, 0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke_2;
  block[3] = &unk_279D7C4E8;
  v12 = a4;
  v10 = v6;
  v8 = v6;
  objc_copyWeak(&v11, (a1 + 32));
  dispatch_async(v7, block);

  objc_destroyWeak(&v11);
}

void __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v25 = v1;
    v26 = v2;
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = [v4 uiImage];
      v6 = objc_alloc_init(MEMORY[0x277D75568]);
      [v6 setPreferredRange:1];
      v7 = objc_alloc(MEMORY[0x277D75560]);
      [(UIImage *)v5 size];
      v8 = [v7 initWithSize:v6 format:?];
      v9 = [*(a1 + 32) imageType];
      if (!v9)
      {
        v11 = 0;
        v12 = 0;
LABEL_11:
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke_5;
        block[3] = &unk_279D7C4C0;
        objc_copyWeak(&v20, (a1 + 40));
        v18 = v12;
        v19 = v11;
        v14 = v11;
        v15 = v12;
        dispatch_async(MEMORY[0x277D85CD0], block);

        objc_destroyWeak(&v20);
        return;
      }

      v10 = [MEMORY[0x277CE1CB8] typeWithIdentifier:v9];
      if ([v10 conformsToType:*MEMORY[0x277CE1E10]])
      {
        v11 = *MEMORY[0x277CC05A0];
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke_3;
        v23[3] = &unk_279D7C498;
        v24 = v5;
        v12 = [v8 PNGDataWithActions:v23];
        v13 = v24;
      }

      else
      {
        if (![v10 conformsToType:*MEMORY[0x277CE1DC0]])
        {
          if (+[TVPHeicUtil isHeicFormatAllowed](TVPHeicUtil, "isHeicFormatAllowed") && (v16 = *MEMORY[0x277CE1D90], [v10 conformsToType:*MEMORY[0x277CE1D90]]))
          {
            v11 = [v16 identifier];
            v12 = UIImageHEICRepresentation(v5);
          }

          else
          {
            v11 = 0;
            v12 = 0;
          }

          goto LABEL_10;
        }

        v11 = *MEMORY[0x277CC0590];
        v21[0] = MEMORY[0x277D85DD0];
        v21[1] = 3221225472;
        v21[2] = __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke_4;
        v21[3] = &unk_279D7C498;
        v22 = v5;
        v12 = [v8 JPEGDataWithCompressionQuality:v21 actions:1.0];
        v13 = v22;
      }

LABEL_10:
      goto LABEL_11;
    }
  }
}

void __59__TVPPlayer__populatePlayerItem_withMetadataFromMediaItem___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v3 = objc_alloc_init(MEMORY[0x277CE6558]);
    if ([*(a1 + 32) length])
    {
      [v3 setIdentifier:*MEMORY[0x277CE5EC0]];
      [v3 setExtendedLanguageTag:@"und"];
      [v3 setValue:*(a1 + 32)];
      [v3 setDataType:*(a1 + 40)];
      v4 = MEMORY[0x277CBEB18];
      v5 = [v7 externalMetadata];
      v6 = [v4 arrayWithArray:v5];

      [v6 addObject:v3];
      [v7 setExternalMetadata:v6];
      [v7 setPosterProxy:0];
    }

    WeakRetained = v7;
  }
}

- (BOOL)_integratedTimelineEnabled
{
  if (_os_feature_enabled_impl())
  {
    standardUserDefaults = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v3 = [standardUserDefaults BOOLForKey:@"DisableIntegratedTimeline"] ^ 1;
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (BOOL)_interstitialInProgress
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  if ([aVQueuePlayer timeControlStatus] == 1)
  {
    aVQueuePlayer2 = [(TVPPlayer *)self AVQueuePlayer];
    reasonForWaitingToPlay = [aVQueuePlayer2 reasonForWaitingToPlay];
    v6 = [reasonForWaitingToPlay isEqualToString:*MEMORY[0x277CE6170]];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_activePlayer
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  if ([(TVPPlayer *)self _integratedTimelineEnabled]&& [(TVPPlayer *)self _interstitialInProgress])
  {
    interstitialEventMonitor = [(TVPPlayer *)self interstitialEventMonitor];
    interstitialPlayer = [interstitialEventMonitor interstitialPlayer];

    aVQueuePlayer = interstitialPlayer;
  }

  return aVQueuePlayer;
}

- (int64_t)_activePlayerTimeControlStatus
{
  aVQueuePlayer = [(TVPPlayer *)self AVQueuePlayer];
  timeControlStatus = [aVQueuePlayer timeControlStatus];

  if ([(TVPPlayer *)self _integratedTimelineEnabled])
  {
    _activePlayer = [(TVPPlayer *)self _activePlayer];
    timeControlStatus = [_activePlayer timeControlStatus];
  }

  return timeControlStatus;
}

- (id)_activePlayerItem
{
  currentPlayerItem = [(TVPPlayer *)self currentPlayerItem];
  if ([(TVPPlayer *)self _integratedTimelineEnabled])
  {
    _activePlayer = [(TVPPlayer *)self _activePlayer];
    currentItem = [_activePlayer currentItem];

    currentPlayerItem = currentItem;
  }

  return currentPlayerItem;
}

- (void)_notifyOfMediaSelectionOptionChanges
{
  [(TVPPlayer *)self willChangeValueForKey:@"selectedAudioOption"];
  [(TVPPlayer *)self didChangeValueForKey:@"selectedAudioOption"];
  [(TVPPlayer *)self willChangeValueForKey:@"selectedSubtitleOption"];
  [(TVPPlayer *)self didChangeValueForKey:@"selectedSubtitleOption"];
  [(TVPPlayer *)self willChangeValueForKey:@"audioOptions"];
  [(TVPPlayer *)self didChangeValueForKey:@"audioOptions"];
  [(TVPPlayer *)self willChangeValueForKey:@"subtitleOptions"];

  [(TVPPlayer *)self didChangeValueForKey:@"subtitleOptions"];
}

- (BOOL)_isNetworkAvailable
{
  v8 = *MEMORY[0x277D85DE8];
  *&address.sa_data[6] = 0;
  *&address.sa_len = 528;
  v2 = SCNetworkReachabilityCreateWithAddress(*MEMORY[0x277CBECE8], &address);
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  flags = 0;
  if (SCNetworkReachabilityGetFlags(v2, &flags))
  {
    v4 = (flags & 6) == 2 && (flags & 0x10) == 0;
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v3);
  return v4;
}

- (void)_registerStateMachineHandlers
{
  v525[5] = *MEMORY[0x277D85DE8];
  stateMachine = [(TVPPlayer *)self stateMachine];
  objc_initWeak(&v499, self);
  v497[0] = MEMORY[0x277D85DD0];
  v497[1] = 3221225472;
  v497[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke;
  v497[3] = &unk_279D7C538;
  objc_copyWeak(&v498, &v499);
  v187 = MEMORY[0x26D6B0400](v497);
  v495[0] = MEMORY[0x277D85DD0];
  v495[1] = 3221225472;
  v495[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3;
  v495[3] = &unk_279D7C588;
  objc_copyWeak(&v496, &v499);
  v184 = MEMORY[0x26D6B0400](v495);
  v493[0] = MEMORY[0x277D85DD0];
  v493[1] = 3221225472;
  v493[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5;
  v493[3] = &unk_279D7C588;
  objc_copyWeak(&v494, &v499);
  v182 = MEMORY[0x26D6B0400](v493);
  v491[0] = MEMORY[0x277D85DD0];
  v491[1] = 3221225472;
  v491[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7;
  v491[3] = &unk_279D7C5D8;
  objc_copyWeak(&v492, &v499);
  v160 = MEMORY[0x26D6B0400](v491);
  v489[0] = MEMORY[0x277D85DD0];
  v489[1] = 3221225472;
  v489[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9;
  v489[3] = &unk_279D7C600;
  objc_copyWeak(&v490, &v499);
  v4 = MEMORY[0x26D6B0400](v489);
  v487[0] = MEMORY[0x277D85DD0];
  v487[1] = 3221225472;
  v487[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_746;
  v487[3] = &unk_279D7C628;
  objc_copyWeak(&v488, &v499);
  v172 = MEMORY[0x26D6B0400](v487);
  v485[0] = MEMORY[0x277D85DD0];
  v485[1] = 3221225472;
  v485[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_748;
  v485[3] = &unk_279D7C650;
  objc_copyWeak(&v486, &v499);
  v5 = MEMORY[0x26D6B0400](v485);
  v483[0] = MEMORY[0x277D85DD0];
  v483[1] = 3221225472;
  v483[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_750;
  v483[3] = &unk_279D7C678;
  objc_copyWeak(&v484, &v499);
  v6 = MEMORY[0x26D6B0400](v483);
  v477[0] = MEMORY[0x277D85DD0];
  v477[1] = 3221225472;
  v477[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_752;
  v477[3] = &unk_279D7C6A0;
  v7 = stateMachine;
  v478 = v7;
  objc_copyWeak(&v482, &v499);
  v8 = v4;
  v479 = v8;
  v145 = v5;
  v480 = v145;
  v146 = v6;
  v481 = v146;
  v178 = MEMORY[0x26D6B0400](v477);
  v475[0] = MEMORY[0x277D85DD0];
  v475[1] = 3221225472;
  v475[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_757;
  v475[3] = &unk_279D7BF80;
  objc_copyWeak(&v476, &v499);
  v9 = MEMORY[0x26D6B0400](v475);
  v473[0] = MEMORY[0x277D85DD0];
  v473[1] = 3221225472;
  v473[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_758;
  v473[3] = &unk_279D7BF80;
  objc_copyWeak(&v474, &v499);
  v10 = MEMORY[0x26D6B0400](v473);
  v471[0] = MEMORY[0x277D85DD0];
  v471[1] = 3221225472;
  v471[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_759;
  v471[3] = &unk_279D7C6C8;
  objc_copyWeak(&v472, &v499);
  v11 = MEMORY[0x26D6B0400](v471);
  v468[0] = MEMORY[0x277D85DD0];
  v468[1] = 3221225472;
  v468[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_771;
  v468[3] = &unk_279D7C6F0;
  objc_copyWeak(&v470, &v499);
  v168 = v11;
  v469 = v168;
  v170 = MEMORY[0x26D6B0400](v468);
  v465[0] = MEMORY[0x277D85DD0];
  v465[1] = 3221225472;
  v465[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_773;
  v465[3] = &unk_279D7C790;
  objc_copyWeak(&v467, &v499);
  v12 = v7;
  v466 = v12;
  v13 = MEMORY[0x26D6B0400](v465);
  v463[0] = MEMORY[0x277D85DD0];
  v463[1] = 3221225472;
  v463[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_783;
  v463[3] = &unk_279D7C808;
  objc_copyWeak(&v464, &v499);
  v14 = MEMORY[0x26D6B0400](v463);
  v461[0] = MEMORY[0x277D85DD0];
  v461[1] = 3221225472;
  v461[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_788;
  v461[3] = &unk_279D7C880;
  objc_copyWeak(&v462, &v499);
  v15 = MEMORY[0x26D6B0400](v461);
  v459[0] = MEMORY[0x277D85DD0];
  v459[1] = 3221225472;
  v459[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_793;
  v459[3] = &unk_279D7C8D0;
  objc_copyWeak(&v460, &v499);
  v174 = MEMORY[0x26D6B0400](v459);
  v457[0] = MEMORY[0x277D85DD0];
  v457[1] = 3221225472;
  v457[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_797;
  v457[3] = &unk_279D7C920;
  objc_copyWeak(&v458, &v499);
  v176 = MEMORY[0x26D6B0400](v457);
  v455[0] = MEMORY[0x277D85DD0];
  v455[1] = 3221225472;
  v455[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_801;
  v455[3] = &unk_279D7C970;
  objc_copyWeak(&v456, &v499);
  v16 = MEMORY[0x26D6B0400](v455);
  v452[0] = MEMORY[0x277D85DD0];
  v452[1] = 3221225472;
  v452[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_805;
  v452[3] = &unk_279D7C998;
  objc_copyWeak(&v454, &v499);
  v158 = v13;
  v453 = v158;
  v17 = MEMORY[0x26D6B0400](v452);
  v446[0] = MEMORY[0x277D85DD0];
  v446[1] = 3221225472;
  v446[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_807;
  v446[3] = &unk_279D7C9C0;
  objc_copyWeak(&v451, &v499);
  v154 = v15;
  v447 = v154;
  v147 = v17;
  v448 = v147;
  v152 = v14;
  v449 = v152;
  v18 = v16;
  v450 = v18;
  v180 = MEMORY[0x26D6B0400](v446);
  v444[0] = MEMORY[0x277D85DD0];
  v444[1] = 3221225472;
  v444[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_809;
  v444[3] = &unk_279D7C9E8;
  objc_copyWeak(&v445, &v499);
  v166 = MEMORY[0x26D6B0400](v444);
  v442[0] = MEMORY[0x277D85DD0];
  v442[1] = 3221225472;
  v442[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_816;
  v442[3] = &unk_279D7BF80;
  objc_copyWeak(&v443, &v499);
  v19 = MEMORY[0x26D6B0400](v442);
  v437[0] = MEMORY[0x277D85DD0];
  v437[1] = 3221225472;
  v437[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_818;
  v437[3] = &unk_279D7CA10;
  v151 = v9;
  v438 = v151;
  v20 = v10;
  v439 = v20;
  objc_copyWeak(&v441, &v499);
  v21 = v19;
  v440 = v21;
  v22 = MEMORY[0x26D6B0400](v437);
  v432[0] = MEMORY[0x277D85DD0];
  v432[1] = 3221225472;
  v432[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_820;
  v432[3] = &unk_279D7CA38;
  objc_copyWeak(&v436, &v499);
  v150 = v21;
  v434 = v150;
  v23 = v12;
  v433 = v23;
  v24 = v22;
  v435 = v24;
  v25 = MEMORY[0x26D6B0400](v432);
  v429[0] = MEMORY[0x277D85DD0];
  v429[1] = 3221225472;
  v429[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_824;
  v429[3] = &unk_279D7CA60;
  objc_copyWeak(&v431, &v499);
  v26 = v23;
  v430 = v26;
  v27 = MEMORY[0x26D6B0400](v429);
  v423[0] = MEMORY[0x277D85DD0];
  v423[1] = 3221225472;
  v423[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_838;
  v423[3] = &unk_279D7CA88;
  objc_copyWeak(&v428, &v499);
  v28 = v24;
  v425 = v28;
  v148 = v25;
  v426 = v148;
  v29 = v26;
  v424 = v29;
  v30 = v27;
  v427 = v30;
  v156 = MEMORY[0x26D6B0400](v423);
  v420[0] = MEMORY[0x277D85DD0];
  v420[1] = 3221225472;
  v420[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_841;
  v420[3] = &unk_279D7CAD0;
  objc_copyWeak(&v422, &v499);
  v164 = v30;
  v421 = v164;
  v31 = MEMORY[0x26D6B0400](v420);
  v418[0] = MEMORY[0x277D85DD0];
  v418[1] = 3221225472;
  v418[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_844;
  v418[3] = &unk_279D7C020;
  v32 = v28;
  v419 = v32;
  [v29 registerDefaultHandlerForEvent:@"Stop" withBlock:v418];
  v413[0] = MEMORY[0x277D85DD0];
  v413[1] = 3221225472;
  v413[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_846;
  v413[3] = &unk_279D7CAF8;
  objc_copyWeak(&v417, &v499);
  v33 = v29;
  v414 = v33;
  v162 = v20;
  v415 = v162;
  v149 = v32;
  v416 = v149;
  [v33 registerDefaultHandlerForEvent:@"Set playlist" withBlock:v413];
  v410[0] = MEMORY[0x277D85DD0];
  v410[1] = 3221225472;
  v410[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_848;
  v410[3] = &unk_279D7CB20;
  objc_copyWeak(&v412, &v499);
  v34 = v33;
  v411 = v34;
  [v34 registerHandlerForEvent:@"Continue loading current item" onState:@"Waiting for signal after preparing item" withBlock:v410];
  v407[0] = MEMORY[0x277D85DD0];
  v407[1] = 3221225472;
  v407[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_850;
  v407[3] = &unk_279D7CB48;
  v35 = v187;
  v408 = v35;
  v36 = v31;
  v409 = v36;
  [v34 registerHandlerForEvent:@"Play" onState:@"Stopped" withBlock:v407];
  v525[0] = @"Waiting for media item to prepare for loading";
  v525[1] = @"Waiting for AVAsset to load";
  v525[2] = @"Waiting for media item to prepare for playback initiation";
  v525[3] = @"Waiting for more playlist items";
  v525[4] = @"Waiting for signal after preparing item";
  v37 = [MEMORY[0x277CBEA60] arrayWithObjects:v525 count:5];
  v402[0] = MEMORY[0x277D85DD0];
  v402[1] = 3221225472;
  v402[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_851;
  v402[3] = &unk_279D7CB70;
  objc_copyWeak(&v406, &v499);
  v38 = v18;
  v403 = v38;
  v39 = v8;
  v404 = v39;
  v40 = v35;
  v405 = v40;
  [v34 registerHandlerForEvent:@"Play" onStates:v37 withBlock:v402];

  v524[0] = @"Waiting for initial AVPlayerItem status to become ready to play";
  v524[1] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v524[2] = @"Waiting for time control status to be done waiting";
  v524[3] = @"Waiting for seek";
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v524 count:4];
  v397[0] = MEMORY[0x277D85DD0];
  v397[1] = 3221225472;
  v397[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_853;
  v397[3] = &unk_279D7CB70;
  objc_copyWeak(&v401, &v499);
  v42 = v38;
  v398 = v42;
  v43 = v39;
  v399 = v43;
  v44 = v40;
  v400 = v44;
  [v34 registerHandlerForEvent:@"Play" onStates:v41 withBlock:v397];

  v523[0] = @"Playing";
  v523[1] = @"Paused";
  v523[2] = @"Scanning using AVPlayer";
  v523[3] = @"Scanning using AVPlayer driven by AVKit";
  v45 = [MEMORY[0x277CBEA60] arrayWithObjects:v523 count:4];
  v392[0] = MEMORY[0x277D85DD0];
  v392[1] = 3221225472;
  v392[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_855;
  v392[3] = &unk_279D7CB70;
  objc_copyWeak(&v396, &v499);
  v144 = v42;
  v393 = v144;
  v46 = v43;
  v394 = v46;
  v47 = v44;
  v395 = v47;
  [v34 registerHandlerForEvent:@"Play" onStates:v45 withBlock:v392];

  v389[0] = MEMORY[0x277D85DD0];
  v389[1] = 3221225472;
  v389[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_860;
  v389[3] = &unk_279D7CBC0;
  v48 = v180;
  v390 = v48;
  objc_copyWeak(&v391, &v499);
  [v34 registerHandlerForEvent:@"Play" onState:@"Scanning using external images" withBlock:v389];
  v387[0] = MEMORY[0x277D85DD0];
  v387[1] = 3221225472;
  v387[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_861;
  v387[3] = &unk_279D7BFD0;
  objc_copyWeak(&v388, &v499);
  [v34 registerHandlerForEvent:@"Play" onState:@"Scanning using external images driven by AVKit" withBlock:v387];
  v384[0] = MEMORY[0x277D85DD0];
  v384[1] = 3221225472;
  v384[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_862;
  v384[3] = &unk_279D7BF58;
  objc_copyWeak(&v386, &v499);
  v49 = v46;
  v385 = v49;
  [v34 registerHandlerForEvent:@"Play" onState:@"Scrubbing using progressive jumping" withBlock:v384];
  v381[0] = MEMORY[0x277D85DD0];
  v381[1] = 3221225472;
  v381[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_864;
  v381[3] = &unk_279D7BF58;
  objc_copyWeak(&v383, &v499);
  v50 = v49;
  v382 = v50;
  [v34 registerHandlerForEvent:@"Play" onState:@"Scrubbing using progressive jumping waiting for seek" withBlock:v381];
  v377[0] = MEMORY[0x277D85DD0];
  v377[1] = 3221225472;
  v377[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_865;
  v377[3] = &unk_279D7CBE8;
  v51 = v50;
  v378 = v51;
  objc_copyWeak(&v380, &v499);
  v52 = v47;
  v379 = v52;
  [v34 registerDefaultHandlerForEvent:@"Play" withBlock:v377];
  v143 = v52;
  v374[0] = MEMORY[0x277D85DD0];
  v374[1] = 3221225472;
  v374[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_866;
  v374[3] = &unk_279D7CB48;
  v53 = v184;
  v375 = v53;
  v181 = v36;
  v376 = v181;
  [v34 registerHandlerForEvent:@"Pause" onState:@"Stopped" withBlock:v374];
  v522[0] = @"Waiting for media item to prepare for loading";
  v522[1] = @"Waiting for AVAsset to load";
  v522[2] = @"Waiting for media item to prepare for playback initiation";
  v522[3] = @"Waiting for initial AVPlayerItem status to become ready to play";
  v522[4] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v522[5] = @"Waiting for time control status to be done waiting";
  v522[6] = @"Waiting for seek";
  v522[7] = @"Waiting for more playlist items";
  v522[8] = @"Waiting for signal after preparing item";
  v54 = [MEMORY[0x277CBEA60] arrayWithObjects:v522 count:9];
  v369[0] = MEMORY[0x277D85DD0];
  v369[1] = 3221225472;
  v369[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_867;
  v369[3] = &unk_279D7CC10;
  v55 = v176;
  v370 = v55;
  objc_copyWeak(&v373, &v499);
  v56 = v51;
  v371 = v56;
  v57 = v53;
  v372 = v57;
  [v34 registerHandlerForEvent:@"Pause" onStates:v54 withBlock:v369];

  v521[0] = @"Paused";
  v521[1] = @"Playing";
  v521[2] = @"Scanning using AVPlayer";
  v521[3] = @"Scanning using AVPlayer driven by AVKit";
  v58 = [MEMORY[0x277CBEA60] arrayWithObjects:v521 count:4];
  v365[0] = MEMORY[0x277D85DD0];
  v365[1] = 3221225472;
  v365[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_868;
  v365[3] = &unk_279D7CC38;
  v177 = v55;
  v366 = v177;
  v59 = v56;
  v367 = v59;
  v60 = v57;
  v368 = v60;
  [v34 registerHandlerForEvent:@"Pause" onStates:v58 withBlock:v365];

  v362[0] = MEMORY[0x277D85DD0];
  v362[1] = 3221225472;
  v362[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_869;
  v362[3] = &unk_279D7CBC0;
  v188 = v48;
  v363 = v188;
  objc_copyWeak(&v364, &v499);
  [v34 registerHandlerForEvent:@"Pause" onState:@"Scanning using external images" withBlock:v362];
  v360[0] = MEMORY[0x277D85DD0];
  v360[1] = 3221225472;
  v360[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_870;
  v360[3] = &unk_279D7BFD0;
  objc_copyWeak(&v361, &v499);
  [v34 registerHandlerForEvent:@"Pause" onState:@"Scanning using external images driven by AVKit" withBlock:v360];
  v357[0] = MEMORY[0x277D85DD0];
  v357[1] = 3221225472;
  v357[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_871;
  v357[3] = &unk_279D7BF58;
  objc_copyWeak(&v359, &v499);
  v61 = v59;
  v358 = v61;
  [v34 registerHandlerForEvent:@"Pause" onState:@"Scrubbing using progressive jumping" withBlock:v357];
  v354[0] = MEMORY[0x277D85DD0];
  v354[1] = 3221225472;
  v354[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_873;
  v354[3] = &unk_279D7BF58;
  objc_copyWeak(&v356, &v499);
  v62 = v61;
  v355 = v62;
  [v34 registerHandlerForEvent:@"Pause" onState:@"Scrubbing using progressive jumping waiting for seek" withBlock:v354];
  v351[0] = MEMORY[0x277D85DD0];
  v351[1] = 3221225472;
  v351[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_874;
  v351[3] = &unk_279D7CB48;
  v63 = v62;
  v352 = v63;
  v142 = v60;
  v353 = v142;
  [v34 registerDefaultHandlerForEvent:@"Pause" withBlock:v351];
  v520[0] = @"Playing";
  v520[1] = @"Scanning using AVPlayer";
  v520[2] = @"Scanning using AVPlayer driven by AVKit";
  v64 = [MEMORY[0x277CBEA60] arrayWithObjects:v520 count:3];
  v346[0] = MEMORY[0x277D85DD0];
  v346[1] = 3221225472;
  v346[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_875;
  v346[3] = &unk_279D7CC10;
  v65 = v174;
  v347 = v65;
  objc_copyWeak(&v350, &v499);
  v66 = v178;
  v348 = v66;
  v67 = v182;
  v349 = v67;
  [v34 registerHandlerForEvent:@"Scan with rate" onStates:v64 withBlock:v346];

  v341[0] = MEMORY[0x277D85DD0];
  v341[1] = 3221225472;
  v341[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_876;
  v341[3] = &unk_279D7CC10;
  v68 = v65;
  v342 = v68;
  objc_copyWeak(&v345, &v499);
  v69 = v66;
  v343 = v69;
  v70 = v67;
  v344 = v70;
  [v34 registerHandlerForEvent:@"Scan with rate" onState:@"Paused" withBlock:v341];
  v519[0] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v519[1] = @"Waiting for time control status to be done waiting";
  v71 = [MEMORY[0x277CBEA60] arrayWithObjects:v519 count:2];
  v336[0] = MEMORY[0x277D85DD0];
  v336[1] = 3221225472;
  v336[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_877;
  v336[3] = &unk_279D7CC10;
  v72 = v68;
  v337 = v72;
  objc_copyWeak(&v340, &v499);
  v73 = v69;
  v338 = v73;
  v74 = v70;
  v339 = v74;
  [v34 registerHandlerForEvent:@"Scan with rate" onStates:v71 withBlock:v336];

  v518[0] = @"Scanning using external images";
  v518[1] = @"Scanning using external images driven by AVKit";
  v75 = [MEMORY[0x277CBEA60] arrayWithObjects:v518 count:2];
  v331[0] = MEMORY[0x277D85DD0];
  v331[1] = 3221225472;
  v331[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_878;
  v331[3] = &unk_279D7CC60;
  v76 = v72;
  v332 = v76;
  v77 = v73;
  v333 = v77;
  objc_copyWeak(&v335, &v499);
  v78 = v74;
  v334 = v78;
  [v34 registerHandlerForEvent:@"Scan with rate" onStates:v75 withBlock:v331];

  v329[0] = MEMORY[0x277D85DD0];
  v329[1] = 3221225472;
  v329[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_879;
  v329[3] = &unk_279D7C020;
  v79 = v78;
  v330 = v79;
  [v34 registerHandlerForEvent:@"Scan with rate" onState:@"Waiting for AVKit seek after finishing external image scanning" withBlock:v329];
  v324[0] = MEMORY[0x277D85DD0];
  v324[1] = 3221225472;
  v324[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_880;
  v324[3] = &unk_279D7CC10;
  v183 = v76;
  v325 = v183;
  objc_copyWeak(&v328, &v499);
  v80 = v77;
  v326 = v80;
  v81 = v79;
  v327 = v81;
  [v34 registerHandlerForEvent:@"Scan with rate" onState:@"Waiting for seek" withBlock:v324];
  v322[0] = MEMORY[0x277D85DD0];
  v322[1] = 3221225472;
  v322[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_881;
  v322[3] = &unk_279D7C020;
  v141 = v81;
  v323 = v141;
  [v34 registerDefaultHandlerForEvent:@"Scan with rate" withBlock:v322];
  v319[0] = MEMORY[0x277D85DD0];
  v319[1] = 3221225472;
  v319[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_882;
  v319[3] = &unk_279D7CB20;
  objc_copyWeak(&v321, &v499);
  v82 = v34;
  v320 = v82;
  [v82 registerHandlerForEvent:@"Media item loader did prepare item for loading" onState:@"Waiting for media item to prepare for loading" withBlock:v319];
  v316[0] = MEMORY[0x277D85DD0];
  v316[1] = 3221225472;
  v316[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_10_884;
  v316[3] = &unk_279D7CB20;
  objc_copyWeak(&v318, &v499);
  v83 = v82;
  v317 = v83;
  [v83 registerHandlerForEvent:@"Media item loader did load AVAsset keys" onState:@"Waiting for AVAsset to load" withBlock:v316];
  v517[0] = @"Paused";
  v517[1] = @"Playing";
  v517[2] = @"Scanning using AVPlayer";
  v517[3] = @"Scanning using AVPlayer driven by AVKit";
  v517[4] = @"Scanning using external images";
  v517[5] = @"Scanning using external images driven by AVKit";
  v517[6] = @"Waiting for AVKit seek after finishing external image scanning";
  v517[7] = @"Scrubbing using progressive jumping";
  v517[8] = @"Scrubbing using progressive jumping waiting for seek";
  v517[9] = @"Waiting for seek";
  v517[10] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v517[11] = @"Waiting for time control status to be done waiting";
  v84 = [MEMORY[0x277CBEA60] arrayWithObjects:v517 count:12];
  v314[0] = MEMORY[0x277D85DD0];
  v314[1] = 3221225472;
  v314[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_12;
  v314[3] = &unk_279D7BFD0;
  objc_copyWeak(&v315, &v499);
  [v83 registerHandlerForEvent:@"Media item loader did load AVAsset keys" onStates:v84 withBlock:v314];

  v308[0] = MEMORY[0x277D85DD0];
  v308[1] = 3221225472;
  v308[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_13;
  v308[3] = &unk_279D7CC88;
  objc_copyWeak(&v313, &v499);
  v175 = v168;
  v310 = v175;
  v85 = v83;
  v309 = v85;
  v86 = v63;
  v311 = v86;
  v87 = v170;
  v312 = v87;
  [v85 registerHandlerForEvent:@"Media item did prepare for playback initiation" onState:@"Waiting for media item to prepare for playback initiation" withBlock:v308];
  v516[0] = @"Paused";
  v516[1] = @"Playing";
  v516[2] = @"Scanning using AVPlayer";
  v516[3] = @"Scanning using AVPlayer driven by AVKit";
  v516[4] = @"Scanning using external images";
  v516[5] = @"Scanning using external images driven by AVKit";
  v516[6] = @"Waiting for AVKit seek after finishing external image scanning";
  v516[7] = @"Scrubbing using progressive jumping";
  v516[8] = @"Scrubbing using progressive jumping waiting for seek";
  v516[9] = @"Waiting for seek";
  v516[10] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v516[11] = @"Waiting for time control status to be done waiting";
  v88 = [MEMORY[0x277CBEA60] arrayWithObjects:v516 count:12];
  v305[0] = MEMORY[0x277D85DD0];
  v305[1] = 3221225472;
  v305[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_888;
  v305[3] = &unk_279D7BF58;
  objc_copyWeak(&v307, &v499);
  v171 = v87;
  v306 = v171;
  [v85 registerHandlerForEvent:@"Media item did prepare for playback initiation" onStates:v88 withBlock:v305];

  v299[0] = MEMORY[0x277D85DD0];
  v299[1] = 3221225472;
  v299[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_889;
  v299[3] = &unk_279D7CCD8;
  objc_copyWeak(&v304, &v499);
  v169 = v162;
  v301 = v169;
  v179 = v166;
  v302 = v179;
  v89 = v85;
  v300 = v89;
  v90 = v164;
  v303 = v90;
  [v89 registerHandlerForEvent:@"Player item status did become ready to play" onState:@"Waiting for initial AVPlayerItem status to become ready to play" withBlock:v299];
  v297[0] = MEMORY[0x277D85DD0];
  v297[1] = 3221225472;
  v297[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_901;
  v297[3] = &unk_279D7BFD0;
  objc_copyWeak(&v298, &v499);
  [v89 registerHandlerForEvent:@"Player item status did become ready to play" onState:@"Waiting for non-initial AVPlayerItem status to become ready to play" withBlock:v297];
  v295[0] = MEMORY[0x277D85DD0];
  v295[1] = 3221225472;
  v295[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_903;
  v295[3] = &unk_279D7BFD0;
  objc_copyWeak(&v296, &v499);
  [v89 registerDefaultHandlerForEvent:@"Player item status did become ready to play" withBlock:v295];
  v293[0] = MEMORY[0x277D85DD0];
  v293[1] = 3221225472;
  v293[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_904;
  v293[3] = &unk_279D7BFD0;
  objc_copyWeak(&v294, &v499);
  [v89 registerHandlerForEvent:@"Time control status did change" onState:@"Waiting for initial AVPlayerItem status to become ready to play" withBlock:v293];
  v289[0] = MEMORY[0x277D85DD0];
  v289[1] = 3221225472;
  v289[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_906;
  v289[3] = &unk_279D7CD00;
  objc_copyWeak(&v292, &v499);
  v91 = v89;
  v290 = v91;
  v92 = v172;
  v291 = v92;
  [v91 registerHandlerForEvent:@"Time control status did change" onState:@"Waiting for time control status to be done waiting" withBlock:v289];
  v286[0] = MEMORY[0x277D85DD0];
  v286[1] = 3221225472;
  v286[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_915;
  v286[3] = &unk_279D7CB20;
  objc_copyWeak(&v288, &v499);
  v93 = v91;
  v287 = v93;
  [v93 registerHandlerForEvent:@"Time control status did change" onState:@"Playing" withBlock:v286];
  v283[0] = MEMORY[0x277D85DD0];
  v283[1] = 3221225472;
  v283[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_917;
  v283[3] = &unk_279D7BF58;
  objc_copyWeak(&v285, &v499);
  v163 = v92;
  v284 = v163;
  [v93 registerHandlerForEvent:@"Time control status did change" onState:@"Paused" withBlock:v283];
  v515[0] = @"Scanning using AVPlayer";
  v515[1] = @"Scanning using AVPlayer driven by AVKit";
  v94 = [MEMORY[0x277CBEA60] arrayWithObjects:v515 count:2];
  v281[0] = MEMORY[0x277D85DD0];
  v281[1] = 3221225472;
  v281[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_918;
  v281[3] = &unk_279D7BFD0;
  objc_copyWeak(&v282, &v499);
  [v93 registerHandlerForEvent:@"Time control status did change" onStates:v94 withBlock:v281];

  v514[0] = @"Scanning using AVPlayer";
  v514[1] = @"Scanning using AVPlayer driven by AVKit";
  v95 = [MEMORY[0x277CBEA60] arrayWithObjects:v514 count:2];
  v277[0] = MEMORY[0x277D85DD0];
  v277[1] = 3221225472;
  v277[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_919;
  v277[3] = &unk_279D7CD28;
  objc_copyWeak(&v280, &v499);
  v165 = v80;
  v279 = v165;
  v96 = v93;
  v278 = v96;
  [v96 registerHandlerForEvent:@"Buffer did become empty" onStates:v95 withBlock:v277];

  v513[0] = @"Playing";
  v513[1] = @"Paused";
  v513[2] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v513[3] = @"Waiting for time control status to be done waiting";
  v97 = [MEMORY[0x277CBEA60] arrayWithObjects:v513 count:4];
  v274[0] = MEMORY[0x277D85DD0];
  v274[1] = 3221225472;
  v274[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_920;
  v274[3] = &unk_279D7CD50;
  v98 = v96;
  v275 = v98;
  objc_copyWeak(&v276, &v499);
  [v98 registerHandlerForEvent:@"Hit beginning or end" onStates:v97 withBlock:v274];

  v512[0] = @"Scanning using AVPlayer";
  v512[1] = @"Scanning using AVPlayer driven by AVKit";
  v99 = [MEMORY[0x277CBEA60] arrayWithObjects:v512 count:2];
  v271[0] = MEMORY[0x277D85DD0];
  v271[1] = 3221225472;
  v271[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_924;
  v271[3] = &unk_279D7BF58;
  objc_copyWeak(&v273, &v499);
  v100 = v86;
  v272 = v100;
  [v98 registerHandlerForEvent:@"Hit beginning or end" onStates:v99 withBlock:v271];

  v511[0] = @"Scanning using external images";
  v511[1] = @"Scanning using external images driven by AVKit";
  v101 = [MEMORY[0x277CBEA60] arrayWithObjects:v511 count:2];
  v268[0] = MEMORY[0x277D85DD0];
  v268[1] = 3221225472;
  v268[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_929;
  v268[3] = &unk_279D7BF58;
  objc_copyWeak(&v270, &v499);
  v189 = v188;
  v269 = v189;
  [v98 registerHandlerForEvent:@"Hit beginning or end" onStates:v101 withBlock:v268];

  v510[0] = @"Scrubbing using progressive jumping";
  v510[1] = @"Scrubbing using progressive jumping waiting for seek";
  v102 = [MEMORY[0x277CBEA60] arrayWithObjects:v510 count:2];
  v265[0] = MEMORY[0x277D85DD0];
  v265[1] = 3221225472;
  v265[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_930;
  v265[3] = &unk_279D7BF58;
  objc_copyWeak(&v267, &v499);
  v103 = v158;
  v266 = v103;
  [v98 registerHandlerForEvent:@"Hit beginning or end" onStates:v102 withBlock:v265];

  v509[0] = @"Playing";
  v509[1] = @"Scanning using AVPlayer";
  v509[2] = @"Scanning using AVPlayer driven by AVKit";
  v509[3] = @"Scanning using external images";
  v509[4] = @"Scanning using external images driven by AVKit";
  v509[5] = @"Waiting for AVKit seek after finishing external image scanning";
  v509[6] = @"Scrubbing using progressive jumping";
  v509[7] = @"Scrubbing using progressive jumping waiting for seek";
  v104 = [MEMORY[0x277CBEA60] arrayWithObjects:v509 count:8];
  v263[0] = MEMORY[0x277D85DD0];
  v263[1] = 3221225472;
  v263[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_932;
  v263[3] = &unk_279D7C020;
  v105 = v156;
  v264 = v105;
  [v98 registerHandlerForEvent:@"Playlist current media item did change" onStates:v104 withBlock:v263];

  v261[0] = MEMORY[0x277D85DD0];
  v261[1] = 3221225472;
  v261[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_933;
  v261[3] = &unk_279D7C020;
  v106 = v105;
  v262 = v106;
  [v98 registerHandlerForEvent:@"Playlist current media item did change" onState:@"Paused" withBlock:v261];
  v508[0] = @"Waiting for media item to prepare for loading";
  v508[1] = @"Waiting for AVAsset to load";
  v508[2] = @"Waiting for signal after preparing item";
  v508[3] = @"Waiting for media item to prepare for playback initiation";
  v508[4] = @"Waiting for initial AVPlayerItem status to become ready to play";
  v508[5] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v508[6] = @"Waiting for time control status to be done waiting";
  v508[7] = @"Waiting for seek";
  v508[8] = @"Waiting for more playlist items";
  v107 = [MEMORY[0x277CBEA60] arrayWithObjects:v508 count:9];
  v258[0] = MEMORY[0x277D85DD0];
  v258[1] = 3221225472;
  v258[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_934;
  v258[3] = &unk_279D7CBC0;
  v173 = v106;
  v259 = v173;
  objc_copyWeak(&v260, &v499);
  [v98 registerHandlerForEvent:@"Playlist current media item did change" onStates:v107 withBlock:v258];

  v507[0] = @"Paused";
  v507[1] = @"Playing";
  v507[2] = @"Scanning using AVPlayer";
  v507[3] = @"Scanning using AVPlayer driven by AVKit";
  v507[4] = @"Scanning using external images";
  v507[5] = @"Scanning using external images driven by AVKit";
  v507[6] = @"Waiting for AVKit seek after finishing external image scanning";
  v507[7] = @"Scrubbing using progressive jumping";
  v507[8] = @"Scrubbing using progressive jumping waiting for seek";
  v507[9] = @"Waiting for seek";
  v507[10] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v507[11] = @"Waiting for time control status to be done waiting";
  v108 = [MEMORY[0x277CBEA60] arrayWithObjects:v507 count:12];
  v255[0] = MEMORY[0x277D85DD0];
  v255[1] = 3221225472;
  v255[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_935;
  v255[3] = &unk_279D7BF58;
  objc_copyWeak(&v257, &v499);
  v167 = v90;
  v256 = v167;
  [v98 registerHandlerForEvent:@"Playlist next media item did change" onStates:v108 withBlock:v255];

  v252[0] = MEMORY[0x277D85DD0];
  v252[1] = 3221225472;
  v252[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_937;
  v252[3] = &unk_279D7CBC0;
  v185 = v100;
  v253 = v185;
  objc_copyWeak(&v254, &v499);
  [v98 registerHandlerForEvent:@"Rate used for playback did change" onState:@"Playing" withBlock:v252];
  v506[0] = @"Stopped";
  v506[1] = @"Waiting for media item to prepare for loading";
  v506[2] = @"Waiting for signal after preparing item";
  v506[3] = @"Waiting for AVAsset to load";
  v506[4] = @"Waiting for media item to prepare for playback initiation";
  v506[5] = @"Waiting for more playlist items";
  v109 = [MEMORY[0x277CBEA60] arrayWithObjects:v506 count:6];
  v246[0] = MEMORY[0x277D85DD0];
  v246[1] = 3221225472;
  v246[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_938;
  v246[3] = &unk_279D7CC88;
  objc_copyWeak(&v251, &v499);
  v110 = v152;
  v248 = v110;
  v111 = v98;
  v247 = v111;
  v112 = v160;
  v249 = v112;
  v113 = v154;
  v250 = v113;
  [v111 registerHandlerForEvent:@"Set elapsed time or date" onStates:v109 withBlock:v246];

  v240[0] = MEMORY[0x277D85DD0];
  v240[1] = 3221225472;
  v240[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_941;
  v240[3] = &unk_279D7CC88;
  objc_copyWeak(&v245, &v499);
  v114 = v113;
  v242 = v114;
  v115 = v111;
  v241 = v115;
  v116 = v112;
  v243 = v116;
  v117 = v110;
  v244 = v117;
  [v115 registerHandlerForEvent:@"Set elapsed time or date" onState:@"Waiting for initial AVPlayerItem status to become ready to play" withBlock:v240];
  v505[0] = @"Playing";
  v505[1] = @"Paused";
  v505[2] = @"Scanning using AVPlayer";
  v505[3] = @"Scanning using AVPlayer driven by AVKit";
  v505[4] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v505[5] = @"Waiting for time control status to be done waiting";
  v118 = [MEMORY[0x277CBEA60] arrayWithObjects:v505 count:6];
  v234[0] = MEMORY[0x277D85DD0];
  v234[1] = 3221225472;
  v234[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_944;
  v234[3] = &unk_279D7CDC8;
  v119 = v117;
  v235 = v119;
  v120 = v114;
  v236 = v120;
  objc_copyWeak(&v239, &v499);
  v121 = v103;
  v237 = v121;
  v122 = v116;
  v238 = v122;
  [v115 registerHandlerForEvent:@"Set elapsed time or date" onStates:v118 withBlock:v234];

  v504[0] = @"Scanning using external images";
  v504[1] = @"Scanning using external images driven by AVKit";
  v123 = [MEMORY[0x277CBEA60] arrayWithObjects:v504 count:2];
  v229[0] = MEMORY[0x277D85DD0];
  v229[1] = 3221225472;
  v229[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_10_945;
  v229[3] = &unk_279D7CDF0;
  v124 = v119;
  v231 = v124;
  v125 = v120;
  v232 = v125;
  objc_copyWeak(&v233, &v499);
  v126 = v115;
  v230 = v126;
  [v126 registerHandlerForEvent:@"Set elapsed time or date" onStates:v123 withBlock:v229];

  v225[0] = MEMORY[0x277D85DD0];
  v225[1] = 3221225472;
  v225[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_11_946;
  v225[3] = &unk_279D7CBE8;
  v190 = v189;
  v226 = v190;
  objc_copyWeak(&v228, &v499);
  v127 = v122;
  v227 = v127;
  [v126 registerHandlerForEvent:@"Set elapsed time or date" onState:@"Waiting for AVKit seek after finishing external image scanning" withBlock:v225];
  v503 = @"Waiting for seek";
  v128 = [MEMORY[0x277CBEA60] arrayWithObjects:&v503 count:1];
  v219[0] = MEMORY[0x277D85DD0];
  v219[1] = 3221225472;
  v219[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_12_947;
  v219[3] = &unk_279D7CDC8;
  v157 = v124;
  v220 = v157;
  v159 = v125;
  v221 = v159;
  objc_copyWeak(&v224, &v499);
  v129 = v121;
  v222 = v129;
  v130 = v127;
  v223 = v130;
  [v126 registerHandlerForEvent:@"Set elapsed time or date" onStates:v128 withBlock:v219];

  v502[0] = @"Scrubbing using progressive jumping";
  v502[1] = @"Scrubbing using progressive jumping waiting for seek";
  v131 = [MEMORY[0x277CBEA60] arrayWithObjects:v502 count:2];
  v216[0] = MEMORY[0x277D85DD0];
  v216[1] = 3221225472;
  v216[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_13_948;
  v216[3] = &unk_279D7CBC0;
  v155 = v129;
  v217 = v155;
  objc_copyWeak(&v218, &v499);
  [v126 registerHandlerForEvent:@"Set elapsed time or date" onStates:v131 withBlock:v216];

  v214[0] = MEMORY[0x277D85DD0];
  v214[1] = 3221225472;
  v214[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_14_949;
  v214[3] = &unk_279D7C020;
  v153 = v130;
  v215 = v153;
  [v126 registerDefaultHandlerForEvent:@"Set elapsed time or date" withBlock:v214];
  v212[0] = MEMORY[0x277D85DD0];
  v212[1] = 3221225472;
  v212[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_15_950;
  v212[3] = &unk_279D7BFD0;
  objc_copyWeak(&v213, &v499);
  [v126 registerHandlerForEvent:@"Seek completed" onState:@"Waiting for seek" withBlock:v212];
  v210[0] = MEMORY[0x277D85DD0];
  v210[1] = 3221225472;
  v210[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_951;
  v210[3] = &unk_279D7BFD0;
  objc_copyWeak(&v211, &v499);
  [v126 registerHandlerForEvent:@"Seek completed" onState:@"Scrubbing using progressive jumping waiting for seek" withBlock:v210];
  v208[0] = MEMORY[0x277D85DD0];
  v208[1] = 3221225472;
  v208[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_952;
  v208[3] = &unk_279D7BFD0;
  objc_copyWeak(&v209, &v499);
  [v126 registerHandlerForEvent:@"Interstitial boundary crossed" onState:@"Playing" withBlock:v208];
  v501[0] = @"Scanning using AVPlayer";
  v501[1] = @"Scanning using AVPlayer driven by AVKit";
  v501[2] = @"Scanning using external images";
  v501[3] = @"Scanning using external images driven by AVKit";
  v132 = [MEMORY[0x277CBEA60] arrayWithObjects:v501 count:4];
  v206[0] = MEMORY[0x277D85DD0];
  v206[1] = 3221225472;
  v206[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_954;
  v206[3] = &unk_279D7BFD0;
  objc_copyWeak(&v207, &v499);
  [v126 registerHandlerForEvent:@"Interstitial boundary crossed" onStates:v132 withBlock:v206];

  [v126 registerHandlerForEvent:@"Error did occur" onState:@"Stopped" withBlock:&__block_literal_global_958];
  v200[0] = MEMORY[0x277D85DD0];
  v200[1] = 3221225472;
  v200[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959;
  v200[3] = &unk_279D7CCD8;
  objc_copyWeak(&v205, &v499);
  v133 = v151;
  v202 = v133;
  v134 = v150;
  v203 = v134;
  v135 = v126;
  v201 = v135;
  v161 = v149;
  v204 = v161;
  [v135 registerDefaultHandlerForEvent:@"Error did occur" withBlock:v200];
  v500[0] = @"Playing";
  v500[1] = @"Waiting for non-initial AVPlayerItem status to become ready to play";
  v500[2] = @"Waiting for time control status to be done waiting";
  v136 = [MEMORY[0x277CBEA60] arrayWithObjects:v500 count:3];
  v197[0] = MEMORY[0x277D85DD0];
  v197[1] = 3221225472;
  v197[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_975;
  v197[3] = &unk_279D7CB20;
  objc_copyWeak(&v199, &v499);
  v137 = v135;
  v198 = v137;
  [v137 registerHandlerForEvent:@"Current player item did stall" onStates:v136 withBlock:v197];

  v191[0] = MEMORY[0x277D85DD0];
  v191[1] = 3221225472;
  v191[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_979;
  v191[3] = &unk_279D7CE40;
  objc_copyWeak(&v196, &v499);
  v186 = v185;
  v193 = v186;
  v138 = v133;
  v194 = v138;
  v139 = v134;
  v195 = v139;
  v140 = v137;
  v192 = v140;
  [v140 registerDefaultHandlerForEvent:@"Restart playback" withBlock:v191];

  objc_destroyWeak(&v196);
  objc_destroyWeak(&v199);

  objc_destroyWeak(&v205);
  objc_destroyWeak(&v207);
  objc_destroyWeak(&v209);
  objc_destroyWeak(&v211);
  objc_destroyWeak(&v213);

  objc_destroyWeak(&v218);
  objc_destroyWeak(&v224);

  objc_destroyWeak(&v228);
  objc_destroyWeak(&v233);

  objc_destroyWeak(&v239);
  objc_destroyWeak(&v245);

  objc_destroyWeak(&v251);
  objc_destroyWeak(&v254);

  objc_destroyWeak(&v257);
  objc_destroyWeak(&v260);

  objc_destroyWeak(&v267);
  objc_destroyWeak(&v270);

  objc_destroyWeak(&v273);
  objc_destroyWeak(&v276);

  objc_destroyWeak(&v280);
  objc_destroyWeak(&v282);

  objc_destroyWeak(&v285);
  objc_destroyWeak(&v288);

  objc_destroyWeak(&v292);
  objc_destroyWeak(&v294);
  objc_destroyWeak(&v296);
  objc_destroyWeak(&v298);

  objc_destroyWeak(&v304);
  objc_destroyWeak(&v307);

  objc_destroyWeak(&v313);
  objc_destroyWeak(&v315);

  objc_destroyWeak(&v318);
  objc_destroyWeak(&v321);

  objc_destroyWeak(&v328);
  objc_destroyWeak(&v335);

  objc_destroyWeak(&v340);
  objc_destroyWeak(&v345);

  objc_destroyWeak(&v350);
  objc_destroyWeak(&v356);

  objc_destroyWeak(&v359);
  objc_destroyWeak(&v361);
  objc_destroyWeak(&v364);

  objc_destroyWeak(&v373);
  objc_destroyWeak(&v380);

  objc_destroyWeak(&v383);
  objc_destroyWeak(&v386);
  objc_destroyWeak(&v388);
  objc_destroyWeak(&v391);

  objc_destroyWeak(&v396);
  objc_destroyWeak(&v401);

  objc_destroyWeak(&v406);
  objc_destroyWeak(&v412);

  objc_destroyWeak(&v417);
  objc_destroyWeak(&v422);

  objc_destroyWeak(&v428);
  objc_destroyWeak(&v431);

  objc_destroyWeak(&v436);
  objc_destroyWeak(&v441);

  objc_destroyWeak(&v443);
  objc_destroyWeak(&v445);

  objc_destroyWeak(&v451);
  objc_destroyWeak(&v454);

  objc_destroyWeak(&v456);
  objc_destroyWeak(&v458);

  objc_destroyWeak(&v460);
  objc_destroyWeak(&v462);

  objc_destroyWeak(&v464);
  objc_destroyWeak(&v467);

  objc_destroyWeak(&v470);
  objc_destroyWeak(&v472);

  objc_destroyWeak(&v474);
  objc_destroyWeak(&v476);

  objc_destroyWeak(&v482);
  objc_destroyWeak(&v484);

  objc_destroyWeak(&v486);
  objc_destroyWeak(&v488);

  objc_destroyWeak(&v490);
  objc_destroyWeak(&v492);

  objc_destroyWeak(&v494);
  objc_destroyWeak(&v496);

  objc_destroyWeak(&v498);
  objc_destroyWeak(&v499);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (v7)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v10 = [WeakRetained stateMachine];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2;
    v11[3] = &unk_279D7C510;
    v13 = v7;
    v14 = a3;
    v12 = v8;
    [v10 executeBlockAfterCurrentStateTransition:v11];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained stateMachine];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4;
    v8[3] = &unk_279D7C560;
    v9 = v5;
    v10 = a3;
    [v7 executeBlockAfterCurrentStateTransition:v8];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (v5)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = [WeakRetained stateMachine];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6;
    v8[3] = &unk_279D7C560;
    v9 = v5;
    v10 = a3;
    [v7 executeBlockAfterCurrentStateTransition:v8];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7(uint64_t a1, void *a2, char a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a4;
  v11 = a5;
  if (v9)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained stateMachine];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8;
    v14[3] = &unk_279D7C5B0;
    v17 = v9;
    v18 = a3;
    v15 = v10;
    v16 = v11;
    [v13 executeBlockAfterCurrentStateTransition:v14];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9(uint64_t a1, float a2, Float64 a3)
{
  v26 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained AVQueuePlayer];

  if (!v7)
  {
    v18 = sPlayerLogObject;
    if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LOWORD(v25.value) = 0;
    v19 = "Unable to set rate since AVQueuePlayer is nil";
    v20 = v18;
    v21 = 2;
LABEL_11:
    _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, v19, &v25, v21);
    return;
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  v9 = [v8 AVQueuePlayer];
  [v9 rate];
  v11 = v10;

  if (v11 == a2)
  {
    v22 = sPlayerLogObject;
    if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    LODWORD(v25.value) = 134217984;
    *(&v25.value + 4) = a2;
    v19 = "Not setting rate to %f since it's already the player's rate";
    v20 = v22;
    v21 = 12;
    goto LABEL_11;
  }

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 setModifyingAVPlayerRate:1];

  v13 = sPlayerLogObject;
  v14 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (a3 <= 0.0)
  {
    if (v14)
    {
      LODWORD(v25.value) = 134217984;
      *(&v25.value + 4) = a2;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Setting AVPlayer rate to %f", &v25, 0xCu);
    }

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 AVQueuePlayer];
    *&v23 = a2;
    [v16 setRate:v23];
  }

  else
  {
    if (v14)
    {
      LODWORD(v25.value) = 134218240;
      *(&v25.value + 4) = a2;
      LOWORD(v25.flags) = 2048;
      *(&v25.flags + 2) = a3;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Setting AVPlayer rate to %f with volume ramp duration of %f", &v25, 0x16u);
    }

    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v15 AVQueuePlayer];
    CMTimeMakeWithSeconds(&v25, a3, 1000000);
    *&v17 = a2;
    [v16 setRate:&v25 withVolumeRampDuration:v17];
  }

  v24 = objc_loadWeakRetained((a1 + 32));
  [v24 setModifyingAVPlayerRate:0];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_746(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateMediaRemoteManager];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 _updateAVPlayerActionAtItemEnd];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = +[TVPPlaybackState playing];
  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 rateUsedForPlayback];
  [v4 _setState:v5 updatedRate:1 notifyListeners:?];

  return @"Playing";
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_748(uint64_t a1, CMTime *a2, CMTime *a3, void *a4, double a5)
{
  v9 = a4;
  if (a5 <= 0.0)
  {
    if (a5 < 0.0)
    {
      memset(&time, 0, sizeof(time));
      WeakRetained = objc_loadWeakRetained((a1 + 32));
      v13 = WeakRetained;
      if (WeakRetained)
      {
        objc_msgSend__currentMediaItemReversePlaybackEndTime(WeakRetained);
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      time1 = *a2;
      v47 = time;
      if (CMTimeCompare(&time1, &v47) <= 0)
      {
LABEL_9:
        *a2 = time;
        v14 = objc_loadWeakRetained((a1 + 32));
        v15 = [v14 AVKitExternalImageScanningUpdateBlock];

        if (v15)
        {
          v16 = objc_loadWeakRetained((a1 + 32));
          time = *a2;
          [v16 setLastTimeSentToAVKitImageHandler:&time];

          v17 = objc_loadWeakRetained((a1 + 32));
          v18 = [v17 AVKitExternalImageScanningUpdateBlock];
          v19 = objc_loadWeakRetained((a1 + 32));
          v20 = [v19 externalImagePlayer];
          v21 = [v20 currentImage];
          v22 = v18[2];
          time = *a2;
          v22(v18, &time, v21);
        }

        v23 = objc_loadWeakRetained((a1 + 32));
        v24 = [v23 stateMachine];
        [v24 postEvent:@"Hit beginning or end"];

        goto LABEL_26;
      }
    }
  }

  else
  {
    memset(&time, 0, sizeof(time));
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = v10;
    if (v10)
    {
      objc_msgSend__currentMediaItemForwardPlaybackEndTime(v10);
    }

    else
    {
      memset(&time, 0, sizeof(time));
    }

    time1 = *a2;
    v47 = time;
    if ((CMTimeCompare(&time1, &v47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }
  }

  v25 = objc_loadWeakRetained((a1 + 32));
  time = *a3;
  time1 = *a2;
  [v25 _notifyOfBoundaryCrossingBetweenPreviousTime:&time updatedTime:&time1];

  time = *a2;
  v26 = floor(CMTimeGetSeconds(&time));
  time = *a3;
  if (v26 != floor(CMTimeGetSeconds(&time)))
  {
    v27 = objc_loadWeakRetained((a1 + 32));
    v28 = [v27 currentInterstitialCollection];
    time = *a2;
    v29 = [v28 interstitialForTime:CMTimeGetSeconds(&time)];

    if (!v29)
    {
      v30 = objc_loadWeakRetained((a1 + 32));
      time = *a2;
      [v30 _notifyListenersOfElapsedTimeChange:&time playbackDate:v9 dueToTimeJump:0];
    }

    v31 = objc_loadWeakRetained((a1 + 32));
    v32 = [v31 AVKitExternalImageScanningUpdateBlock];

    if (v32)
    {
      v33 = objc_loadWeakRetained((a1 + 32));
      time = *a2;
      [v33 setLastTimeSentToAVKitImageHandler:&time];

      v34 = objc_loadWeakRetained((a1 + 32));
      v35 = [v34 AVKitExternalImageScanningUpdateBlock];
      v36 = objc_loadWeakRetained((a1 + 32));
      v37 = [v36 externalImagePlayer];
      v38 = [v37 currentImage];
      v39 = v35[2];
      time = *a2;
      v39(v35, &time, v38);
    }
  }

  v40 = objc_loadWeakRetained((a1 + 32));
  v23 = [v40 highFrequencyElapsedTimeObserverBlock];

  if (v23)
  {
    v41 = objc_loadWeakRetained((a1 + 32));
    v42 = [v41 currentMediaItem];
    v43 = [v42 hasTrait:@"TVPMediaItemTraitIsScene"];

    if (v43)
    {
      v44 = objc_loadWeakRetained((a1 + 32));
      v45 = v44;
      if (v44)
      {
        time1 = *a2;
        objc_msgSend__clampedSceneTimeForPlayerTime_(v44);
      }

      else
      {
        memset(&time, 0, sizeof(time));
      }

      *a2 = time;
    }

    time = *a2;
    Seconds = CMTimeGetSeconds(&time);
    v23[2](v23, Seconds);
  }

LABEL_26:
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_750(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v8 = @"TVPPlayerStillImageKey";
    v9[0] = v3;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  }

  else
  {
    v5 = 0;
  }

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v6 postNotificationName:@"TVPPlayerStillImageDidChangeNotification" object:WeakRetained userInfo:v5];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_752(uint64_t a1, uint64_t a2, char a3, int a4, double a5)
{
  if (a5 == 0.0 || a5 == 1.0)
  {
    v8 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Ignoring scan request because requested rate is 0.0 or 1.0", buf, 2u);
    }

    v9 = [*(a1 + 32) currentState];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v14 = [WeakRetained currentMediaItemHasVideoContent];

    if (!v14)
    {
      v22 = objc_alloc_init(TVPProgressiveJumpingScrubber);
      if (a5 <= 0.0)
      {
        v23 = -1.0;
      }

      else
      {
        v23 = 1.0;
      }

      v24 = objc_loadWeakRetained((a1 + 64));
      [(TVPProgressiveJumpingScrubber *)v22 setPlayer:v24];

      v25 = objc_loadWeakRetained((a1 + 64));
      [v25 setProgressiveJumpingScrubber:v22];

      [(TVPProgressiveJumpingScrubber *)v22 startScrubWithRate:v23];
      v26 = objc_loadWeakRetained((a1 + 64));
      v27 = +[TVPPlaybackState scanning];
      [v26 _setState:v27 updatedRate:1 notifyListeners:v23];

      v9 = @"Scrubbing using progressive jumping";
      goto LABEL_43;
    }

    v15 = objc_loadWeakRetained((a1 + 64));
    v16 = [v15 AVQueuePlayer];
    [v16 setActionAtItemEnd:1];

    if ((a3 & 1) == 0)
    {
      v17 = objc_loadWeakRetained((a1 + 64));
      if ([v17 _currentPlayerItemCanScanAtRate:a5])
      {
        v18 = objc_loadWeakRetained((a1 + 64));
        v19 = [v18 currentInterstitialCollection];

        if (!v19)
        {
          v20 = sPlayerLogObject;
          v21 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
          if (a4)
          {
            if (v21)
            {
              *buf = 0;
              _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "In _scanWithRateFromTime, not setting player rate since AVKit will do it for us", buf, 2u);
            }

            v9 = @"Scanning using AVPlayer driven by AVKit";
          }

          else
          {
            if (v21)
            {
              *buf = 0;
              _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "In _scanWithRateFromTime, calling _setAVPlayerRate", buf, 2u);
            }

            v39 = a5;
            (*(*(a1 + 40) + 16))(v39, 0.0);
            v9 = @"Scanning using AVPlayer";
          }

          v40 = objc_loadWeakRetained((a1 + 64));
          v41 = +[TVPPlaybackState scanning];
          [v40 _setState:v41 updatedRate:1 notifyListeners:a5];

          goto LABEL_43;
        }
      }

      else
      {
      }
    }

    v28 = objc_loadWeakRetained((a1 + 64));
    v29 = [v28 externalImagePlayer];

    if (!v29)
    {
      v30 = objc_loadWeakRetained((a1 + 64));
      v31 = [v30 currentPlayerItem];

      *buf = *MEMORY[0x277CC08F0];
      v63 = *(MEMORY[0x277CC08F0] + 16);
      v32 = objc_loadWeakRetained((a1 + 64));
      v33 = [v32 _currentPlayerItemContainsDates];

      if (v33)
      {
        v34 = objc_loadWeakRetained((a1 + 64));
        v35 = [v34 _integratedTimelineEnabled];

        if (v35)
        {
          v36 = [v31 integratedTimeline];
          v37 = v36;
          if (v36)
          {
            objc_msgSend_currentTime(v36);
          }

          else
          {
            v60 = 0uLL;
            v61 = 0;
          }

          *buf = v60;
          v63 = v61;
        }

        else
        {
          if (v31)
          {
            objc_msgSend_currentTime(v31);
          }

          else
          {
            v60 = 0uLL;
            v61 = 0;
          }

          *buf = v60;
          v63 = v61;
        }

        v42 = objc_loadWeakRetained((a1 + 64));
        v38 = [v42 _currentDateFromPlayerItem:v31];
      }

      else
      {
        v38 = 0;
      }

      v43 = [TVPExternalImagePlayer alloc];
      v44 = objc_loadWeakRetained((a1 + 64));
      v45 = [v44 currentMediaItem];
      v60 = *buf;
      v61 = v63;
      v29 = [(TVPExternalImagePlayer *)v43 initWithMediaItem:v45 referenceTime:&v60 forDate:v38];

      [(TVPExternalImagePlayer *)v29 setElapsedTimeUpdateBlock:*(a1 + 48)];
      [(TVPExternalImagePlayer *)v29 setImageUpdateBlock:*(a1 + 56)];
      v46 = objc_loadWeakRetained((a1 + 64));
      [v46 setExternalImagePlayer:v29];

      v47 = objc_loadWeakRetained((a1 + 64));
      v48 = [v47 AVQueuePlayer];
      [v48 setResourceConservationLevelWhilePaused:1];

      v54 = MEMORY[0x277D85DD0];
      v55 = 3221225472;
      v56 = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_754;
      v57 = &unk_279D7C560;
      v59 = a4;
      v49 = *(a1 + 32);
      v58 = *(a1 + 40);
      [v49 executeBlockAfterCurrentStateTransition:&v54];
    }

    *buf = *a2;
    v63 = *(a2 + 16);
    [(TVPExternalImagePlayer *)v29 setElapsedTime:buf, v54, v55, v56, v57];
    [(TVPExternalImagePlayer *)v29 setRate:a5];
    v50 = objc_loadWeakRetained((a1 + 64));
    v51 = +[TVPPlaybackState scanning];
    [v50 _setState:v51 updatedRate:1 notifyListeners:a5];

    v52 = @"Scanning using external images";
    if (a4)
    {
      v52 = @"Scanning using external images driven by AVKit";
    }

    v9 = v52;
  }

LABEL_43:

  return v9;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_754(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = sPlayerLogObject;
  v4 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (v2)
  {
    if (v4)
    {
      *v5 = 0;
      _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "In _scanWithRateFromTime, not setting player rate during external image player startup since AVKit will do it for us", v5, 2u);
    }
  }

  else
  {
    if (v4)
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "In _scanWithRateFromTime, calling _setAVPlayerRate during external image player startup", buf, 2u);
    }

    (*(*(a1 + 32) + 16))(0.0, 0.0);
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_757(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = WeakRetained;
  if (!WeakRetained)
  {
    v17 = 0;
    v18 = 0;
    v19 = 0;
    goto LABEL_8;
  }

  objc_msgSend_cachedDuration(WeakRetained);
  if ((v18 & 0x100000000) == 0)
  {
LABEL_8:

    goto LABEL_9;
  }

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = v4;
  if (!v4)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0;

    goto LABEL_8;
  }

  objc_msgSend_cachedDuration(v4);

  if ((v15 & 0x1000000000) == 0)
  {
LABEL_9:
    v8 = objc_loadWeakRetained((a1 + 32));
    objc_msgSend_elapsedTime(v8);
    v10 = v9;

    v11 = objc_loadWeakRetained((a1 + 32));
    CMTimeMakeWithSeconds(&v13, v10, 1000000);
    [v11 setStartTime:&v13];

    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setStartDate:0];
    goto LABEL_10;
  }

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setStartDate:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  v13 = **&MEMORY[0x277CC08F0];
  [v7 setStartTime:&v13];
LABEL_10:

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 setStartPosition:0.0];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_758(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setStartDate:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  v8 = *MEMORY[0x277CC08F0];
  v7 = v8;
  v9 = *(MEMORY[0x277CC08F0] + 16);
  v4 = v9;
  [v3 setStartTime:&v8];

  v5 = objc_loadWeakRetained((a1 + 32));
  v8 = v7;
  v9 = v4;
  [v5 setStartingSeekPrecision:&v8];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setStartPosition:0.0];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_759(uint64_t a1, void *a2, uint64_t a3)
{
  v167 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v7 = [WeakRetained playlist];
  v8 = v7;
  if (a3)
  {
    [v7 nextMediaItem];
  }

  else
  {
    [v7 currentMediaItem];
  }
  v9 = ;

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 playerItemFromCacheManager];

  if (v11)
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 playerItemFromCacheManager];

    v14 = objc_loadWeakRetained((a1 + 32));
    [v14 setPlayerItemFromCacheManager:0];
  }

  else
  {
    v13 = [v5 newPlayerItem];
  }

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 _populatePlayerItem:v13 withMetadataFromMediaItem:v9];

  v16 = objc_loadWeakRetained((a1 + 32));
  [v16 maximumBitRate];
  v18 = v17;

  if (v18 != 3.40282347e38)
  {
    v19 = objc_loadWeakRetained((a1 + 32));
    [v19 maximumBitRate];
    [v13 setPreferredPeakBitRate:?];
  }

  v20 = objc_loadWeakRetained((a1 + 32));
  [v20 preferredMaximumResolution];
  v22 = v21;
  v24 = v23;
  v26 = *MEMORY[0x277CBF3A8];
  v25 = *(MEMORY[0x277CBF3A8] + 8);

  if (v22 != v26 || v24 != v25)
  {
    v27 = objc_loadWeakRetained((a1 + 32));
    [v27 preferredMaximumResolution];
    [v13 setPreferredMaximumResolution:?];
  }

  v28 = objc_loadWeakRetained((a1 + 32));
  [v28 preferredMaximumResolutionForExpensiveNetworks];
  v30 = v29;
  v32 = v31;

  if (v30 != v26 || v32 != v25)
  {
    v33 = objc_loadWeakRetained((a1 + 32));
    [v33 preferredMaximumResolutionForExpensiveNetworks];
    [v13 setPreferredMaximumResolutionForExpensiveNetworks:?];
  }

  v34 = objc_loadWeakRetained((a1 + 32));
  v35 = [v34 reportingCategory];

  p_cache = TVPPlaybackState.cache;
  if (v35)
  {
    v37 = sPlayerLogObject;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v38 = objc_loadWeakRetained((a1 + 32));
      v39 = [v38 reportingCategory];
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v39;
      _os_log_impl(&dword_26CEDD000, v37, OS_LOG_TYPE_DEFAULT, "Setting AVPlayerItem reportingCategory to %@", &buf, 0xCu);

      p_cache = (TVPPlaybackState + 16);
    }

    v40 = objc_loadWeakRetained((a1 + 32));
    v41 = [v40 reportingCategory];
    [v13 setReportingCategory:v41];
  }

  v42 = objc_loadWeakRetained((a1 + 32));
  [v42 preferredForwardBufferDuration];
  v44 = v43;

  if (v44 > 0.0)
  {
    v45 = objc_loadWeakRetained((a1 + 32));
    [v45 preferredForwardBufferDuration];
    [v13 setPreferredForwardBufferDuration:?];
  }

  v46 = objc_loadWeakRetained((a1 + 32));
  if ([v46 _beingUsedForIFrameOnlyPlayback])
  {
    v47 = 0;
  }

  else
  {
    v47 = [v9 hasTrait:@"TVPMediaItemTraitMinimizeNetworkUsageWhilePaused"] ^ 1;
  }

  [v13 setCanUseNetworkResourcesForLiveStreamingWhilePaused:v47];

  memset(&v163, 0, sizeof(v163));
  v48 = objc_loadWeakRetained((a1 + 32));
  v49 = v48;
  if (v48)
  {
    objc_msgSend_startTime(v48);
  }

  else
  {
    memset(&v163, 0, sizeof(v163));
  }

  memset(&v162, 0, sizeof(v162));
  v50 = objc_loadWeakRetained((a1 + 32));
  if ([v50 _beingUsedForIFrameOnlyPlayback])
  {
    CMTimeMakeWithSeconds(&v162, 10.0, 1000000);
  }

  else
  {
    v51 = objc_loadWeakRetained((a1 + 32));
    v52 = v51;
    if (v51)
    {
      objc_msgSend_startingSeekPrecision(v51);
    }

    else
    {
      memset(&v162, 0, sizeof(v162));
    }
  }

  v53 = objc_loadWeakRetained((a1 + 32));
  [v53 startPosition];
  v55 = v54;

  v56 = objc_loadWeakRetained((a1 + 32));
  v57 = [v56 startDate];

  if (!v57)
  {
    v57 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStartDate"];
  }

  if (v55 != 0.0)
  {
    memset(&buf, 0, sizeof(buf));
    v58 = [v13 asset];
    v59 = v58;
    if (v58)
    {
      objc_msgSend_duration(v58);
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
    }

    if ((buf.flags & 0x1D) == 1)
    {
      time = buf;
      CMTimeMultiplyByFloat64(&time2, &time, v55);
      v163 = time2;
    }
  }

  v154 = v13;
  v155 = a1;
  buf = v163;
  *&time2.value = *MEMORY[0x277CC08F0];
  v152 = *&time2.value;
  v60 = *(MEMORY[0x277CC08F0] + 16);
  time2.epoch = v60;
  v61 = CMTimeCompare(&buf, &time2);
  v62 = v152;
  v150 = v9;
  v151 = v57;
  if (!v61)
  {
    v63 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStartTime"];
    v64 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataStartTimeIsRelativeToMainContent"];
    v65 = [v64 BOOLValue];

    v66 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v67 = [v66 stringForKey:@"MovieAndTVShowStartLocationSetting.v2"];

    if (v67 && [v67 isEqualToString:@"Beginning"])
    {
      *&v163.value = v152;
      v163.epoch = v60;
    }

    else
    {
      if (!v65)
      {
        p_cache = TVPPlaybackState.cache;
        if (v63)
        {
          [v63 floatValue];
          CMTimeMakeWithSeconds(&buf, v75, 1000000);
          v163 = buf;
        }

        goto LABEL_52;
      }

      v68 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataFeatureStartTime"];
      [v63 doubleValue];
      v70 = v69;
      [v68 doubleValue];
      v72 = v70 + v71;
      CMTimeMakeWithSeconds(&buf, v72, 1000000);
      v163 = buf;
      v73 = sPlayerLogObject;
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = [MEMORY[0x277CCABB0] numberWithDouble:v72];
        LODWORD(buf.value) = 138412802;
        *(&buf.value + 4) = v63;
        LOWORD(buf.flags) = 2112;
        *(&buf.flags + 2) = v68;
        HIWORD(buf.epoch) = 2112;
        v166 = v74;
        _os_log_impl(&dword_26CEDD000, v73, OS_LOG_TYPE_DEFAULT, "Using main content relative start time of %@.  Main content start time is %@; translating to absolute start time of %@", &buf, 0x20u);

        v9 = v150;
      }
    }

    p_cache = (TVPPlaybackState + 16);
LABEL_52:

    v57 = v151;
    v62 = v152;
  }

  buf = v163;
  *&time2.value = v62;
  time2.epoch = v60;
  if (CMTimeCompare(&buf, &time2))
  {
    v76 = [MEMORY[0x277CBEBD0] standardUserDefaults];
    v77 = [v76 BOOLForKey:@"DisableResume"];

    if (v77)
    {
      v78 = p_cache[128];
      v80 = v13;
      v79 = v155;
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(buf.value) = 0;
        _os_log_impl(&dword_26CEDD000, v78, OS_LOG_TYPE_DEFAULT, "Ignoring start time since DisableResume pref key is YES", &buf, 2u);
      }

LABEL_63:

      goto LABEL_67;
    }

    v79 = v155;
    v81 = objc_loadWeakRetained((v155 + 32));
    v82 = [v81 _integratedTimelineEnabled];

    v83 = p_cache[128];
    v84 = os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT);
    v80 = v154;
    if (v82)
    {
      if (v84)
      {
        buf = v163;
        v85 = CMTimeCopyDescription(0, &buf);
        LODWORD(buf.value) = 138412290;
        *(&buf.value + 4) = v85;
        _os_log_impl(&dword_26CEDD000, v83, OS_LOG_TYPE_DEFAULT, "Prior to enqueueing item, seeking integrated timeline to %@", &buf, 0xCu);
      }

      v78 = [v154 integratedTimeline];
      buf = v163;
      time2 = v162;
      time = v162;
      [v78 seekToTime:&buf toleranceBefore:&time2 toleranceAfter:&time completionHandler:0];
      goto LABEL_63;
    }

    if (v84)
    {
      buf = v163;
      v86 = CMTimeCopyDescription(0, &buf);
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v86;
      _os_log_impl(&dword_26CEDD000, v83, OS_LOG_TYPE_DEFAULT, "Prior to enqueueing item, seeking player item to %@", &buf, 0xCu);
    }

    buf = v163;
    time2 = v162;
    time = v162;
    [v154 seekToTime:&buf toleranceBefore:&time2 toleranceAfter:&time completionHandler:0];
  }

  else
  {
    v80 = v13;
    v79 = v155;
    if (v57)
    {
      [v154 setInitialDate:v57];
    }
  }

LABEL_67:
  v87 = objc_loadWeakRetained((v79 + 32));
  v88 = [v87 interactive];

  if ((v88 & 1) == 0)
  {
    *&buf.value = v152;
    buf.epoch = v60;
    [v80 setMaximumTrailingBufferDuration:&buf];
  }

  v89 = objc_loadWeakRetained((v79 + 32));
  [v89 iFramePrefetchMaxSize];
  v91 = v90;
  v93 = v92;

  if (v91 != v26 || v93 != v25)
  {
    v94 = objc_loadWeakRetained((v79 + 32));
    [v94 iFramePrefetchMaxSize];
    [v80 setIFramePrefetchTargetDimensions:?];
  }

  v95 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataForwardPlaybackEndTime"];
  v96 = v95;
  if (v95)
  {
    memset(&buf, 0, sizeof(buf));
    [v95 doubleValue];
    CMTimeMakeWithSeconds(&buf, v97, 1000000);
    time2 = buf;
    [v80 setForwardPlaybackEndTime:&time2];
  }

  v149 = v96;
  v98 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataReversePlaybackEndTime"];
  v99 = v98;
  if (v98)
  {
    memset(&buf, 0, sizeof(buf));
    [v98 doubleValue];
    CMTimeMakeWithSeconds(&buf, v100, 1000000);
    time2 = buf;
    [v80 setReversePlaybackEndTime:&time2];
  }

  v148 = v99;
  v101 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataSoundCheckMediaKind"];
  if (v101)
  {
    v102 = p_cache[128];
    if (os_log_type_enabled(v102, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf.value) = 138412290;
      *(&buf.value + 4) = v101;
      _os_log_impl(&dword_26CEDD000, v102, OS_LOG_TYPE_DEFAULT, "Sound check: setting player item mediaKind to %@", &buf, 0xCu);
    }

    [v80 setMediaKind:v101];
  }

  v146 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataSoundCheckDictionary"];
  v147 = v101;
  if (![v146 count])
  {
    v104 = objc_loadWeakRetained((v79 + 32));
    v103 = [v104 _soundCheckNormalizationForMediaItem:v9];

    if (v103)
    {
      [v103 floatValue];
      v106 = floor(log10(v105) * 20.0 + 0.5);
      v107 = p_cache[128];
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
LABEL_90:

        *&v111 = v106;
        [v80 setSoundCheckVolumeNormalization:v111];
        goto LABEL_91;
      }

      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v106;
      v108 = "Sound check: setting player item soundCheckVolumeNormalization to value from mediaItem: %f";
    }

    else
    {
      v109 = [v5 AVAsset];
      [v109 preferredSoundCheckVolumeNormalization];
      v106 = v110;

      if (v106 == 0.0)
      {
        goto LABEL_91;
      }

      v107 = p_cache[128];
      if (!os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_90;
      }

      LODWORD(buf.value) = 134217984;
      *(&buf.value + 4) = v106;
      v108 = "Sound check: setting player item soundCheckVolumeNormalization to value from AVAsset: %f";
    }

    _os_log_impl(&dword_26CEDD000, v107, OS_LOG_TYPE_DEFAULT, v108, &buf, 0xCu);
    goto LABEL_90;
  }

  v103 = p_cache[128];
  if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_26CEDD000, v103, OS_LOG_TYPE_DEFAULT, "Sound check: not setting soundCheckVolumeNormalization since raw sound check info dict exists.", &buf, 2u);
  }

LABEL_91:

  v112 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataScrubPlayerItem"];
  v113 = objc_loadWeakRetained((v79 + 32));
  v145 = v112;
  [v113 _setScrubPlayerItem:v112 onPlayerItem:v80];

  v144 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemMetadataSavedAudioOption"];
  v114 = [v144 propertyListRepresentation];
  if (v114)
  {
    v115 = [v5 AVAsset];
    v116 = [v115 tvp_mediaSelectionGroupForMediaCharacteristic:*MEMORY[0x277CE5DE0]];

    v117 = [v116 mediaSelectionOptionWithPropertyList:v114];
    if (v117)
    {
      [v80 selectMediaOption:v117 inMediaSelectionGroup:v116];
    }
  }

  v118 = [v5 mediaItem];
  v119 = [v118 hasTrait:@"TVPMediaItemTraitIsLocal"];

  if (v119)
  {
    v120 = [v5 mediaItem];
    v121 = [v120 mediaItemMetadataForProperty:@"TVPMediaItemMetadataRestrictToOfflineAudioOptions"];
    v122 = [v121 BOOLValue];

    if (v122)
    {
      v123 = sPlayerLogObject;
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
LABEL_103:

        [v80 setRestrictsAutomaticMediaSelectionToAvailableOfflineOptions:1];
        goto LABEL_104;
      }

      LOWORD(buf.value) = 0;
      v124 = "Media item is downloaded and wants to restrict automatic media selection to offline options";
    }

    else
    {
      v125 = objc_loadWeakRetained((v79 + 32));
      v126 = [v125 _isNetworkAvailable];

      if (v126)
      {
        goto LABEL_104;
      }

      v123 = sPlayerLogObject;
      if (!os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_103;
      }

      LOWORD(buf.value) = 0;
      v124 = "Media item is downloaded but network is not available.  Restricting automatic media selection to offline options";
    }

    _os_log_impl(&dword_26CEDD000, v123, OS_LOG_TYPE_DEFAULT, v124, &buf, 2u);
    goto LABEL_103;
  }

LABEL_104:
  v143 = v114;
  v153 = v5;
  v158 = 0u;
  v159 = 0u;
  v156 = 0u;
  v157 = 0u;
  v127 = objc_loadWeakRetained((v79 + 32));
  v128 = [v127 reportingValues];

  v129 = [v128 countByEnumeratingWithState:&v156 objects:v164 count:16];
  if (v129)
  {
    v130 = v129;
    v131 = *v157;
    do
    {
      for (i = 0; i != v130; ++i)
      {
        if (*v157 != v131)
        {
          objc_enumerationMutation(v128);
        }

        v133 = *(*(&v156 + 1) + 8 * i);
        v134 = objc_loadWeakRetained((v155 + 32));
        v135 = [v134 reportingValues];
        v136 = [v135 objectForKey:v133];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v154 setReportingValueWithString:v136 forKey:v133];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v154 setReportingValueWithNumber:v136 forKey:v133];
          }
        }
      }

      v130 = [v128 countByEnumeratingWithState:&v156 objects:v164 count:16];
    }

    while (v130);
  }

  if ([v150 hasTrait:@"TVPMediaItemTraitWantsDateRangeGroupNotifications"])
  {
    v137 = [objc_alloc(MEMORY[0x277CE65B8]) initWithIdentifiers:0 classifyingLabels:0];
    v138 = objc_loadWeakRetained((v155 + 32));
    v139 = MEMORY[0x277D85CD0];
    v140 = MEMORY[0x277D85CD0];
    [v137 setDelegate:v138 queue:v139];

    [v154 addMediaDataCollector:v137];
  }

  v141 = v154;

  return v141;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_771(uint64_t a1, void *a2, uint64_t a3)
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained playlist];
  v8 = v7;
  if (a3)
  {
    [v7 nextMediaItem];
  }

  else
  {
    [v7 currentMediaItem];
  }
  v9 = ;

  v10 = [v9 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
  [v10 addStartEventWithName:TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp];

  v11 = objc_loadWeakRetained((a1 + 40));
  v12 = [v11 AVQueuePlayer];

  v13 = (*(*(a1 + 32) + 16))();
  v14 = [v12 items];
  [v14 count];

  if (!a3)
  {
    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 updateAudioSelectionCriteria];

    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = [v16 pendingSelectedMediaArray];

    if (v17)
    {
      v18 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf.value) = 134217984;
        *(&buf.value + 4) = v13;
        _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Applying pending selectedMediaArray to item %p.", &buf, 0xCu);
      }

      v19 = objc_loadWeakRetained((a1 + 40));
      [v19 setPendingSelectedMediaArray:0];

      v20 = objc_loadWeakRetained((a1 + 40));
      [v20 _selectMediaArray:v17 withItem:v13];
    }
  }

  v21 = objc_loadWeakRetained((a1 + 40));
  [v21 setHaveEverEnqueuedPlayerItem:1];

  v22 = objc_loadWeakRetained((a1 + 40));
  [v22 setModifyingAVPlayerRate:1];

  v23 = objc_loadWeakRetained((a1 + 40));
  [v23 setModifyingAVPlayerQueue:1];

  [v12 insertItem:v13 afterItem:0];
  v24 = objc_loadWeakRetained((a1 + 40));
  [v24 setModifyingAVPlayerRate:0];

  v25 = objc_loadWeakRetained((a1 + 40));
  [v25 setModifyingAVPlayerQueue:0];

  v26 = objc_loadWeakRetained((a1 + 40));
  v27 = [v26 _beingUsedForIFrameOnlyPlayback];

  if (v27)
  {
    v28 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "Seeking after inserting item for iframe-only playback", &buf, 2u);
    }

    memset(&buf, 0, sizeof(buf));
    CMTimeMakeWithSeconds(&buf, 10.0, 1000000);
    if (v13)
    {
      objc_msgSend_currentTime(v13);
    }

    else
    {
      memset(v36, 0, sizeof(v36));
    }

    v35 = buf;
    v34 = buf;
    [v13 seekToTime:v36 toleranceBefore:&v35 toleranceAfter:&v34 completionHandler:0];
  }

  v29 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v30 = v29;
    v31 = objc_loadWeakRetained((a1 + 40));
    v32 = [v31 AVQueuePlayer];
    v33 = [v32 items];
    LODWORD(buf.value) = 138412290;
    *(&buf.value + 4) = v33;
    _os_log_impl(&dword_26CEDD000, v30, OS_LOG_TYPE_DEFAULT, "Player queue after enqueueing item: %@", &buf, 0xCu);
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_773(uint64_t a1, uint64_t a2, void *a3, CMTime *a4, void *a5, int a6, double a7)
{
  v97 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v67 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v65 = [WeakRetained currentMediaItemLoader];

  v12 = objc_loadWeakRetained((a1 + 40));
  v66 = [v12 currentMediaItem];

  v64 = [v66 reportingDelegate];
  v68 = [v65 timingData];
  [v68 startTimeForBuffering];
  if (v13 == 0.0)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    [v68 setStartTimeForBuffering:?];
    if (objc_opt_respondsToSelector())
    {
      v14 = objc_loadWeakRetained((a1 + 40));
      [v64 mediaItemWillStartBuffering:v66 player:v14];
    }

    v15 = *(a1 + 32);
    v93[0] = MEMORY[0x277D85DD0];
    v93[1] = 3221225472;
    v93[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_776;
    v93[3] = &unk_279D7BF80;
    objc_copyWeak(&v94, (a1 + 40));
    [v15 executeBlockAfterCurrentStateTransition:v93];
    objc_destroyWeak(&v94);
  }

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 currentPlayerItem];

  v90[0] = MEMORY[0x277D85DD0];
  v90[1] = 3221225472;
  v90[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_777;
  v90[3] = &unk_279D7C2C0;
  objc_copyWeak(&v92, (a1 + 40));
  v91 = *(a1 + 32);
  v63 = MEMORY[0x26D6B0400](v90);
  value = *a2;
  flags = *(a2 + 12);
  timescale = *(a2 + 8);
  if ((~flags & 5) != 0)
  {
    if ((~flags & 9) != 0)
    {
      if ((flags & 0x1D) == 1)
      {
        epoch = *(a2 + 16);
      }

      else
      {
        value = *MEMORY[0x277CC08F0];
        flags = *(MEMORY[0x277CC08F0] + 12);
        timescale = *(MEMORY[0x277CC08F0] + 8);
        epoch = *(MEMORY[0x277CC08F0] + 16);
      }
    }

    else
    {
      memset(&buf, 0, sizeof(buf));
      v22 = objc_loadWeakRetained((a1 + 40));
      v23 = [v22 cachedSeekableTimeRanges];
      objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);

      value = 0;
      flags = 0;
      timescale = 0;
      epoch = 0;
      *a2 = 0u;
      *(a2 + 16) = 0;
    }
  }

  else
  {
    memset(&buf, 0, sizeof(buf));
    v19 = objc_loadWeakRetained((a1 + 40));
    v20 = [v19 cachedSeekableTimeRanges];
    objc_msgSend_forwardmostCMTimeRangeInCMTimeRanges_(TVPTimeRange);

    range = buf;
    CMTimeRangeGetEnd(&start, &range);
    value = start.value;
    flags = start.flags;
    timescale = start.timescale;
    epoch = start.epoch;
  }

  if (v69)
  {
    if ([v17 status] == 1)
    {
      v24 = [v17 currentDate];
      v25 = v24 == 0;

      if (!v25)
      {
        if (a6)
        {
          v26 = objc_loadWeakRetained((a1 + 40));
          [v26 setNumOutstandingSeeks:{objc_msgSend(v26, "numOutstandingSeeks") + 1}];

          v27 = objc_loadWeakRetained((a1 + 40));
          LODWORD(v26) = [v27 _integratedTimelineEnabled];

          v28 = sPlayerLogObject;
          v29 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
          if (v26)
          {
            if (v29)
            {
              LOWORD(buf.start.value) = 0;
              _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "In _setElapsedTimeOrDateOnCurrentPlayerItem, calling seekToDate on integrated timeline", &buf, 2u);
            }

            v30 = [v17 integratedTimeline];
            [v30 seekToDate:v69 completionHandler:v63];
          }

          else
          {
            if (v29)
            {
              LOWORD(buf.start.value) = 0;
              _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "In _setElapsedTimeOrDateOnCurrentPlayerItem, calling seekToDate on current player item", &buf, 2u);
            }

            [v17 seekToDate:v69 completionHandler:v63];
          }
        }

        else
        {
          v38 = sPlayerLogObject;
          if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(buf.start.value) = 0;
            _os_log_impl(&dword_26CEDD000, v38, OS_LOG_TYPE_DEFAULT, "In _setElapsedTimeOrDateOnCurrentPlayerItem, bypassing seekToDate", &buf, 2u);
          }
        }

        goto LABEL_59;
      }
    }

    v31 = objc_loadWeakRetained((a1 + 40));
    v32 = [v31 _integratedTimelineEnabled];

    if (v32)
    {
      v33 = objc_loadWeakRetained((a1 + 40));
      v34 = [v33 currentPlayerItem];
      v35 = [v34 integratedTimeline];
      v36 = v35;
      if (v35)
      {
        objc_msgSend_currentTime(v35);
      }

      else
      {
        memset(&range, 0, 24);
      }

      *&buf.start.value = *&range.start.value;
      buf.start.epoch = range.start.epoch;
    }

    else
    {
      v33 = objc_loadWeakRetained((a1 + 40));
      v37 = [v33 currentPlayerItem];
      v34 = v37;
      if (v37)
      {
        objc_msgSend_currentTime(v37);
      }

      else
      {
        memset(&range, 0, 24);
      }

      *&buf.start.value = *&range.start.value;
      buf.start.epoch = range.start.epoch;
    }

    v39 = objc_loadWeakRetained((a1 + 40));
    v40 = objc_loadWeakRetained((a1 + 40));
    v41 = [v40 currentPlayerItem];
    v42 = [v39 _currentDateFromPlayerItem:v41];
    if (v39)
    {
      start = buf.start;
      objc_msgSend__estimatedCMTimeForPlaybackDate_referenceTime_referenceDate_(v39);
    }

    else
    {
      memset(&range, 0, 24);
    }

    *a2 = *&range.start.value;
    *(a2 + 16) = range.start.epoch;

    value = *a2;
    flags = *(a2 + 12);
    timescale = *(a2 + 8);
    epoch = *(a2 + 16);
  }

  v43 = objc_loadWeakRetained((a1 + 40));
  v44 = [v43 _integratedTimelineEnabled];

  if (v44)
  {
    v45 = [v17 integratedTimeline];
    v46 = v45;
    if (v45)
    {
      objc_msgSend_currentTime(v45);
    }

    else
    {
      memset(&range, 0, 24);
    }

    *&buf.start.value = *&range.start.value;
    buf.start.epoch = range.start.epoch;
  }

  else
  {
    if (v17)
    {
      objc_msgSend_currentTime(v17);
    }

    else
    {
      memset(&range, 0, 24);
    }

    *&buf.start.value = *&range.start.value;
    buf.start.epoch = range.start.epoch;
  }

  v47 = objc_loadWeakRetained((a1 + 40));
  v48 = [v47 stateMachine];
  v80[0] = MEMORY[0x277D85DD0];
  v80[1] = 3221225472;
  v80[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_779;
  v80[3] = &unk_279D7C740;
  objc_copyWeak(v81, (a1 + 40));
  v81[1] = value;
  v82 = timescale;
  v83 = flags;
  v84 = epoch;
  v85 = *&buf.start.value;
  v86 = buf.start.epoch;
  [v48 executeBlockAfterCurrentStateTransition:v80];

  if ((*(a2 + 12) & 0x11) == 1)
  {
    if (a6)
    {
      v49 = objc_loadWeakRetained((a1 + 40));
      [v49 setNumOutstandingSeeks:{objc_msgSend(v49, "numOutstandingSeeks") + 1}];

      v50 = objc_loadWeakRetained((a1 + 40));
      LODWORD(v49) = [v50 _integratedTimelineEnabled];

      v51 = sPlayerLogObject;
      v52 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
      if (v49)
      {
        if (v52)
        {
          LOWORD(range.start.value) = 0;
          _os_log_impl(&dword_26CEDD000, v51, OS_LOG_TYPE_DEFAULT, "In _setElapsedTimeOrDateOnCurrentPlayerItem, calling seekToTime on integrated timeline", &range, 2u);
        }

        v53 = [v17 integratedTimeline];
        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        start = *a4;
        v78 = *&a4->value;
        v79 = a4->epoch;
        [v53 seekToTime:&range toleranceBefore:&start toleranceAfter:&v78 completionHandler:v63];
      }

      else
      {
        if (v52)
        {
          LOWORD(range.start.value) = 0;
          _os_log_impl(&dword_26CEDD000, v51, OS_LOG_TYPE_DEFAULT, "In _setElapsedTimeOrDateOnCurrentPlayerItem, calling seekToTime on current player item", &range, 2u);
        }

        *&range.start.value = *a2;
        range.start.epoch = *(a2 + 16);
        start = *a4;
        v78 = *&a4->value;
        v79 = a4->epoch;
        [v17 seekToTime:&range toleranceBefore:&start toleranceAfter:&v78 completionHandler:v63];
      }
    }

    else
    {
      v54 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(range.start.value) = 0;
        _os_log_impl(&dword_26CEDD000, v54, OS_LOG_TYPE_DEFAULT, "In _setElapsedTimeOrDateOnCurrentPlayerItem, bypassing seekToTime", &range, 2u);
      }
    }
  }

  else
  {
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
    {
      __42__TVPPlayer__registerStateMachineHandlers__block_invoke_773_cold_1();
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_780;
    block[3] = &unk_279D7BF30;
    v77 = v63;
    dispatch_async(MEMORY[0x277D85CD0], block);
  }

  objc_destroyWeak(v81);
LABEL_59:
  v55 = objc_loadWeakRetained((a1 + 40));
  [v55 setDateBeingSeekedTo:v69];

  v56 = objc_loadWeakRetained((a1 + 40));
  buf.start.value = value;
  buf.start.timescale = timescale;
  buf.start.flags = flags;
  buf.start.epoch = epoch;
  [v56 setTimeBeingSeekedTo:&buf];

  if (v67)
  {
    v57 = objc_loadWeakRetained((a1 + 40));
    [v57 _setState:v67 updatedRate:1 notifyListeners:a7];
  }

  v58 = objc_loadWeakRetained((a1 + 40));
  v59 = [v58 stateMachine];
  v70[0] = MEMORY[0x277D85DD0];
  v70[1] = 3221225472;
  v70[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_781;
  v70[3] = &unk_279D7C768;
  objc_copyWeak(v72, (a1 + 40));
  v72[1] = value;
  v73 = timescale;
  v74 = flags;
  v75 = epoch;
  v60 = v69;
  v71 = v60;
  [v59 executeBlockAfterCurrentStateTransition:v70];

  objc_destroyWeak(v72);
  objc_destroyWeak(&v92);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_776(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackReportingBufferingWillStartNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_777(uint64_t a1, char a2)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_778;
  block[3] = &unk_279D7C718;
  v6 = a2;
  objc_copyWeak(&v5, (a1 + 40));
  v4 = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);

  objc_destroyWeak(&v5);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_778(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 48))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v9 = 138412290;
    v10 = v3;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Seek completion handler called.  finished param is %@", &v9, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained numOutstandingSeeks];

  if (v5 >= 1)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    [v6 setNumOutstandingSeeks:{objc_msgSend(v6, "numOutstandingSeeks") - 1}];
  }

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 numOutstandingSeeks];

  if (!v8)
  {
    [*(a1 + 32) postEvent:@"Seek completed"];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_779(uint64_t a1)
{
  v2 = objc_loadWeakRetained((a1 + 32));
  v3 = [v2 currentChapterCollection];
  time = *(a1 + 40);
  v4 = [v3 chapterForTime:CMTimeGetSeconds(&time)];
  [v2 setCurrentChapter:v4];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  time = *(a1 + 64);
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  [WeakRetained _notifyOfBoundaryCrossingBetweenPreviousTime:&time updatedTime:&v6];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_781(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _notifyListenersOfElapsedTimeChange:&v4 playbackDate:v3 dueToTimeJump:1];
}

uint64_t __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_783(uint64_t a1, CMTime *a2, char a3, void *a4, void *a5, _BYTE *a6)
{
  v49 = *MEMORY[0x277D85DE8];
  v38 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained delegate];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 asyncDelegate];

  if (a6)
  {
    *a6 = 0;
  }

  memset(&v47, 0, sizeof(v47));
  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = v16;
  if (v16)
  {
    objc_msgSend__currentMediaItemReversePlaybackEndTime(v16, v38);
  }

  else
  {
    memset(&v47, 0, sizeof(v47));
  }

  if (v47.flags)
  {
    time1 = *a2;
    time2 = v47;
    if (CMTimeCompare(&time1, &time2) < 0)
    {
      *a2 = v47;
    }
  }

  memset(&time1, 0, sizeof(time1));
  v18 = objc_loadWeakRetained((a1 + 32));
  v19 = v18;
  if (v18)
  {
    objc_msgSend__currentMediaItemForwardPlaybackEndTime(v18);
  }

  else
  {
    memset(&time1, 0, sizeof(time1));
  }

  if (time1.flags)
  {
    time2 = *a2;
    rhs = time1;
    if ((CMTimeCompare(&time2, &rhs) & 0x80000000) == 0)
    {
      v20 = objc_loadWeakRetained((a1 + 32));
      objc_msgSend_duration(v20);
      v22 = v21 == 3.40282347e38;

      CMTimeMakeWithSeconds(&rhs, 0.01, 1000000);
      lhs = time1;
      if (v22)
      {
        CMTimeAdd(&time2, &lhs, &rhs);
      }

      else
      {
        CMTimeSubtract(&time2, &lhs, &rhs);
      }

      *a2 = time2;
    }
  }

  if (a3)
  {
    goto LABEL_38;
  }

  time2 = *a2;
  Seconds = CMTimeGetSeconds(&time2);
  *&rhs.value = Seconds;
  if (v13)
  {
    v24 = objc_loadWeakRetained((a1 + 32));
    v25 = [v13 player:v24 shouldSeekToTime:&rhs playbackDate:0];

    if (*&rhs.value == Seconds)
    {
      v26 = 0;
    }

    else
    {
      v26 = v25;
    }

    if (v26 == 1)
    {
      CMTimeMakeWithSeconds(&time2, *&rhs.value, 1000000);
      *a2 = time2;
LABEL_38:
      v25 = 1;
    }
  }

  else
  {
    if (!v15)
    {
      goto LABEL_38;
    }

    v27 = [v11 objectForKey:@"Async delegate response key"];
    if (v27)
    {
      v28 = [v11 objectForKey:@"Adjusted time key"];
      v29 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v30 = v29;
        v31 = [v27 BOOLValue];
        v32 = @"NO";
        if (v31)
        {
          v32 = @"YES";
        }

        LODWORD(time2.value) = 138412546;
        *(&time2.value + 4) = v32;
        LOWORD(time2.flags) = 2112;
        *(&time2.flags + 2) = v28;
        _os_log_impl(&dword_26CEDD000, v30, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToTime returning saved delegate response of %@, %@", &time2, 0x16u);
      }

      v25 = [v27 BOOLValue];
      v33 = Seconds;
      if (v28)
      {
        [(TVPAsyncPlayerDelegateOperation *)v28 doubleValue];
        *&rhs.value = v33;
      }

      if (v33 == Seconds)
      {
        v34 = 0;
      }

      else
      {
        v34 = v25;
      }

      if (v34 == 1)
      {
        CMTimeMakeWithSeconds(&time2, v33, 1000000);
        *a2 = time2;
      }
    }

    else
    {
      v36 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(time2.value) = 0;
        _os_log_impl(&dword_26CEDD000, v36, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToTime returning NO until delegate is consulted", &time2, 2u);
      }

      if (a6)
      {
        *a6 = 1;
      }

      v28 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
      objc_initWeak(&time2, v28);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_784;
      v39[3] = &unk_279D7C7E0;
      objc_copyWeak(&v42, (a1 + 32));
      v43[1] = *&Seconds;
      objc_copyWeak(v43, &time2);
      v40 = v11;
      v41 = v38;
      [(TVPAsyncPlayerDelegateOperation *)v28 setBlock:v39];
      v37 = objc_loadWeakRetained((a1 + 32));
      [v37 _enqueueAsyncDelegateOperation:v28];

      objc_destroyWeak(v43);
      objc_destroyWeak(&v42);
      objc_destroyWeak(&time2);
      v25 = 0;
    }
  }

  return v25;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_784(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToTime calling delegate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained asyncDelegate];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_785;
  v7[3] = &unk_279D7C7B8;
  objc_copyWeak(&v10, (a1 + 56));
  objc_copyWeak(&v11, (a1 + 48));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v4 player:v5 shouldSeekToTime:v7 completion:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_785(uint64_t a1, uint64_t a2, double a3)
{
  v28 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v7 = objc_loadWeakRetained((a1 + 56)), [v7 asyncDelegateOperations], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", WeakRetained), v9, v8, v7, v10))
  {
    v11 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (a2)
      {
        v12 = @"YES";
      }

      v24 = 138412546;
      v25 = v12;
      v26 = 2048;
      v27 = a3;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToTime response: %@, %f", &v24, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 56));
    v14 = [v13 asyncDelegateOperations];
    [v14 removeObjectAtIndex:0];

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v18 = v16;
    v19 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v18 setObject:v19 forKey:@"Async delegate response key"];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v18 setObject:v20 forKey:@"Adjusted time key"];

    v21 = objc_loadWeakRetained((a1 + 56));
    v22 = [v21 stateMachine];
    [v22 postEvent:*(a1 + 40) withContext:0 userInfo:v18];

    v23 = objc_loadWeakRetained((a1 + 56));
    [v23 _processNextAsyncDelegateOperation];
  }

  else
  {
    v17 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v24) = 0;
      _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring allowedToSeekToTime response", &v24, 2u);
    }
  }
}

uint64_t __42__TVPPlayer__registerStateMachineHandlers__block_invoke_788(uint64_t a1, id *a2, char a3, void *a4, void *a5, _BYTE *a6)
{
  v48 = *MEMORY[0x277D85DE8];
  v37 = a4;
  v11 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v13 = [WeakRetained delegate];

  v14 = objc_loadWeakRetained((a1 + 32));
  v15 = [v14 asyncDelegate];

  if (a6)
  {
    *a6 = 0;
  }

  v16 = objc_loadWeakRetained((a1 + 32));
  v17 = [v16 seekableDateRange];

  if (v17)
  {
    v18 = [v17 startDate];

    if (v18)
    {
      v19 = [v17 startDate];
      v20 = [v19 dateByAddingTimeInterval:10.0];

      *a2 = [*a2 laterDate:v20];
    }
  }

  if (a3)
  {
    goto LABEL_7;
  }

  if (v13)
  {
    v22 = objc_loadWeakRetained((a1 + 32));
    v21 = [v13 player:v22 shouldSeekToTime:0 playbackDate:a2];

    goto LABEL_27;
  }

  if (!v15)
  {
LABEL_7:
    v21 = 1;
  }

  else
  {
    v23 = [v11 objectForKey:@"Async delegate response key"];
    if (v23)
    {
      v24 = [v11 objectForKey:@"Adjusted date key"];
      v25 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v23 BOOLValue];
        v28 = @"NO";
        if (v27)
        {
          v28 = @"YES";
        }

        *buf = 138412546;
        v45 = v28;
        v46 = 2112;
        v47 = v24;
        _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToDate returning saved delegate response of %@, %@", buf, 0x16u);
      }

      v29 = [v23 BOOLValue];
      v21 = v29;
      if (v24)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0;
      }

      if (v30 == 1)
      {
        v31 = v24;
        *a2 = v24;
      }
    }

    else
    {
      v32 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v32, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToDate returning NO until delegate is consulted", buf, 2u);
      }

      if (a6)
      {
        *a6 = 1;
      }

      v24 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
      objc_initWeak(buf, v24);
      v33 = *a2;
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_789;
      v38[3] = &unk_279D7C858;
      objc_copyWeak(&v42, (a1 + 32));
      v34 = v33;
      v39 = v34;
      objc_copyWeak(&v43, buf);
      v40 = v11;
      v41 = v37;
      [(TVPAsyncPlayerDelegateOperation *)v24 setBlock:v38];
      v35 = objc_loadWeakRetained((a1 + 32));
      [v35 _enqueueAsyncDelegateOperation:v24];

      objc_destroyWeak(&v43);
      objc_destroyWeak(&v42);

      objc_destroyWeak(buf);
      v21 = 0;
    }
  }

LABEL_27:

  return v21;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_789(id *a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToDate calling delegate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 7);
  v4 = [WeakRetained asyncDelegate];
  v5 = objc_loadWeakRetained(a1 + 7);
  v6 = a1[4];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_790;
  v7[3] = &unk_279D7C830;
  objc_copyWeak(&v11, a1 + 8);
  objc_copyWeak(&v12, a1 + 7);
  v8 = a1[5];
  v9 = a1[4];
  v10 = a1[6];
  [v4 player:v5 shouldSeekToDate:v6 completion:v7];

  objc_destroyWeak(&v12);
  objc_destroyWeak(&v11);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_790(uint64_t a1, uint64_t a2, void *a3)
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained && (v7 = objc_loadWeakRetained((a1 + 64)), [v7 asyncDelegateOperations], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", WeakRetained), v9, v8, v7, v10))
  {
    v11 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (a2)
      {
        v12 = @"YES";
      }

      v25 = 138412546;
      v26 = v12;
      v27 = 2112;
      v28 = v5;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToSeekToDate response: %@, %@", &v25, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 64));
    v14 = [v13 asyncDelegateOperations];
    [v14 removeObjectAtIndex:0];

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v18 = v16;
    v19 = v5;
    if (!v5)
    {
      v19 = *(a1 + 40);
    }

    v20 = v19;
    v21 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v18 setObject:v21 forKey:@"Async delegate response key"];

    if (v20)
    {
      [v18 setObject:v20 forKey:@"Adjusted date key"];
    }

    v22 = objc_loadWeakRetained((a1 + 64));
    v23 = [v22 stateMachine];
    [v23 postEvent:*(a1 + 48) withContext:0 userInfo:v18];

    v24 = objc_loadWeakRetained((a1 + 64));
    [v24 _processNextAsyncDelegateOperation];
  }

  else
  {
    v17 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring allowedToSeekToDate response", &v25, 2u);
    }
  }
}

uint64_t __42__TVPPlayer__registerStateMachineHandlers__block_invoke_793(uint64_t a1, void *a2, void *a3, _BYTE *a4, double a5)
{
  v33 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = [WeakRetained delegate];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 asyncDelegate];

  if (a4)
  {
    *a4 = 0;
  }

  if (v12)
  {
    v15 = objc_loadWeakRetained((a1 + 32));
    v16 = [v12 player:v15 shouldScanAtRate:a5];
  }

  else if (v14)
  {
    v17 = [v10 objectForKey:@"Async delegate response key"];
    v18 = sPlayerLogObject;
    v19 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = v18;
        v21 = [v17 BOOLValue];
        v22 = @"NO";
        if (v21)
        {
          v22 = @"YES";
        }

        *buf = 138412290;
        v32 = v22;
        _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToScan returning saved delegate response of %@", buf, 0xCu);
      }

      v16 = [v17 BOOLValue];
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToScan returning NO until delegate is consulted", buf, 2u);
      }

      if (a4)
      {
        *a4 = 1;
      }

      v23 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
      objc_initWeak(buf, v23);
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_794;
      v26[3] = &unk_279D7C7E0;
      objc_copyWeak(&v29, (a1 + 32));
      v30[1] = *&a5;
      objc_copyWeak(v30, buf);
      v27 = v10;
      v28 = v9;
      [(TVPAsyncPlayerDelegateOperation *)v23 setBlock:v26];
      v24 = objc_loadWeakRetained((a1 + 32));
      [v24 _enqueueAsyncDelegateOperation:v23];

      objc_destroyWeak(v30);
      objc_destroyWeak(&v29);
      objc_destroyWeak(buf);

      v16 = 0;
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_794(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToScan calling delegate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = [WeakRetained asyncDelegate];
  v5 = objc_loadWeakRetained((a1 + 48));
  v6 = *(a1 + 64);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_795;
  v7[3] = &unk_279D7C8A8;
  objc_copyWeak(&v10, (a1 + 56));
  objc_copyWeak(&v11, (a1 + 48));
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  [v4 player:v5 shouldScanAtRate:v7 completion:v6];

  objc_destroyWeak(&v11);
  objc_destroyWeak(&v10);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_795(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v5 = objc_loadWeakRetained((a1 + 56)), [v5 asyncDelegateOperations], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", WeakRetained), v7, v6, v5, v8))
  {
    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      v21 = 138412290;
      v22 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToScan response: %@", &v21, 0xCu);
    }

    v11 = objc_loadWeakRetained((a1 + 56));
    v12 = [v11 asyncDelegateOperations];
    [v12 removeObjectAtIndex:0];

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = [v13 mutableCopy];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v16 = v14;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v16 setObject:v17 forKey:@"Async delegate response key"];

    v18 = objc_loadWeakRetained((a1 + 56));
    v19 = [v18 stateMachine];
    [v19 postEvent:*(a1 + 40) withContext:0 userInfo:v16];

    v20 = objc_loadWeakRetained((a1 + 56));
    [v20 _processNextAsyncDelegateOperation];
  }

  else
  {
    v15 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring allowedToScan response", &v21, 2u);
    }
  }
}

uint64_t __42__TVPPlayer__registerStateMachineHandlers__block_invoke_797(uint64_t a1, char a2, void *a3, void *a4, _BYTE *a5)
{
  v36 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = [WeakRetained delegate];

  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 asyncDelegate];

  if (a5)
  {
    *a5 = 0;
  }

  if (a2)
  {
    goto LABEL_4;
  }

  if (v12)
  {
    v16 = objc_loadWeakRetained((a1 + 32));
    v15 = [v12 playerShouldPause:v16];

    goto LABEL_20;
  }

  if (!v14)
  {
LABEL_4:
    v15 = 1;
  }

  else
  {
    v17 = [v10 objectForKey:@"Async delegate response key"];
    v18 = sPlayerLogObject;
    v19 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
    if (v17)
    {
      if (v19)
      {
        v20 = v18;
        v21 = [v17 BOOLValue];
        v22 = @"NO";
        if (v21)
        {
          v22 = @"YES";
        }

        *buf = 138412290;
        v35 = v22;
        _os_log_impl(&dword_26CEDD000, v20, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPause returning saved delegate response of %@", buf, 0xCu);
      }

      v15 = [v17 BOOLValue];
    }

    else
    {
      if (v19)
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v18, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPause returning NO until delegate is consulted", buf, 2u);
      }

      if (a5)
      {
        *a5 = 1;
      }

      v23 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
      objc_initWeak(buf, v23);
      v26 = MEMORY[0x277D85DD0];
      v27 = 3221225472;
      v28 = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_798;
      v29 = &unk_279D7C8F8;
      objc_copyWeak(&v32, (a1 + 32));
      objc_copyWeak(&v33, buf);
      v30 = v10;
      v31 = v9;
      [(TVPAsyncPlayerDelegateOperation *)v23 setBlock:&v26];
      v24 = objc_loadWeakRetained((a1 + 32));
      [v24 _enqueueAsyncDelegateOperation:{v23, v26, v27, v28, v29}];

      objc_destroyWeak(&v33);
      objc_destroyWeak(&v32);
      objc_destroyWeak(buf);

      v15 = 0;
    }
  }

LABEL_20:

  return v15;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_798(id *a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPause calling delegate", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v4 = [WeakRetained asyncDelegate];
  v5 = objc_loadWeakRetained(a1 + 6);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_799;
  v6[3] = &unk_279D7C8A8;
  objc_copyWeak(&v9, a1 + 7);
  objc_copyWeak(&v10, a1 + 6);
  v7 = a1[4];
  v8 = a1[5];
  [v4 player:v5 shouldPauseWithCompletion:v6];

  objc_destroyWeak(&v10);
  objc_destroyWeak(&v9);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_799(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v5 = objc_loadWeakRetained((a1 + 56)), [v5 asyncDelegateOperations], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "firstObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "isEqual:", WeakRetained), v7, v6, v5, v8))
  {
    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v10 = @"NO";
      if (a2)
      {
        v10 = @"YES";
      }

      v21 = 138412290;
      v22 = v10;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPause response: %@", &v21, 0xCu);
    }

    v11 = objc_loadWeakRetained((a1 + 56));
    v12 = [v11 asyncDelegateOperations];
    [v12 removeObjectAtIndex:0];

    v13 = *(a1 + 32);
    if (v13)
    {
      v14 = [v13 mutableCopy];
    }

    else
    {
      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v16 = v14;
    v17 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v16 setObject:v17 forKey:@"Async delegate response key"];

    v18 = objc_loadWeakRetained((a1 + 56));
    v19 = [v18 stateMachine];
    [v19 postEvent:*(a1 + 40) withContext:0 userInfo:v16];

    v20 = objc_loadWeakRetained((a1 + 56));
    [v20 _processNextAsyncDelegateOperation];
  }

  else
  {
    v15 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring allowedToPause response", &v21, 2u);
    }
  }
}

uint64_t __42__TVPPlayer__registerStateMachineHandlers__block_invoke_801(uint64_t a1, char a2, CMTime *a3, _BYTE *a4, void *a5, void *a6, _BYTE *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v13 = a5;
  v14 = a6;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v16 = [WeakRetained delegate];

  v17 = objc_loadWeakRetained((a1 + 32));
  v18 = [v17 asyncDelegate];

  if (a7)
  {
    *a7 = 0;
  }

  if (a2)
  {
    goto LABEL_4;
  }

  if (v16)
  {
    time = *a3;
    v20 = CMTimeGetSeconds(&time);
    seconds = v20;
    v21 = objc_loadWeakRetained((a1 + 32));
    v19 = [v16 playerShouldPlay:v21 timeFromWhichToPlay:&seconds];

    if (vabdd_f64(seconds, v20) > 0.01)
    {
      CMTimeMakeWithSeconds(&time, seconds, 1000000);
      *a3 = time;
      if (a4)
      {
        *a4 = 1;
      }
    }
  }

  else
  {
    if (!v18)
    {
LABEL_4:
      v19 = 1;
      goto LABEL_27;
    }

    v22 = [v14 objectForKey:@"Async delegate response key"];
    if (v22)
    {
      v23 = [v14 objectForKey:@"Adjusted time key"];
      v24 = [v14 objectForKey:@"Original time key"];
      v25 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v26 = v25;
        v27 = [v22 BOOLValue];
        v28 = @"NO";
        if (v27)
        {
          v28 = @"YES";
        }

        LODWORD(time.value) = 138412546;
        *(&time.value + 4) = v28;
        LOWORD(time.flags) = 2112;
        *(&time.flags + 2) = v23;
        _os_log_impl(&dword_26CEDD000, v26, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPlay returning saved delegate response of %@, %@", &time, 0x16u);
      }

      v19 = [v22 BOOLValue];
      if (v23)
      {
        if (v24)
        {
          [(TVPAsyncPlayerDelegateOperation *)v23 doubleValue];
          v30 = v29;
          [v24 doubleValue];
          if (vabdd_f64(v30, v31) > 0.01)
          {
            [(TVPAsyncPlayerDelegateOperation *)v23 doubleValue];
            CMTimeMakeWithSeconds(&time, v32, 1000000);
            *a3 = time;
            if (a4)
            {
              *a4 = 1;
            }
          }
        }
      }
    }

    else
    {
      v33 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(time.value) = 0;
        _os_log_impl(&dword_26CEDD000, v33, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPlay returning NO until delegate is consulted", &time, 2u);
      }

      if (a7)
      {
        *a7 = 1;
      }

      v23 = objc_alloc_init(TVPAsyncPlayerDelegateOperation);
      objc_initWeak(&time, v23);
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_802;
      v36[3] = &unk_279D7C8F8;
      objc_copyWeak(&v39, (a1 + 32));
      objc_copyWeak(&v40, &time);
      v37 = v14;
      v38 = v13;
      [(TVPAsyncPlayerDelegateOperation *)v23 setBlock:v36];
      v34 = objc_loadWeakRetained((a1 + 32));
      [v34 _enqueueAsyncDelegateOperation:v23];

      objc_destroyWeak(&v40);
      objc_destroyWeak(&v39);
      objc_destroyWeak(&time);
      v19 = 0;
    }
  }

LABEL_27:

  return v19;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_802(id *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  objc_msgSend_elapsedTime(WeakRetained);
  v4 = v3;

  v5 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v15 = v4;
    _os_log_impl(&dword_26CEDD000, v5, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPlay calling delegate with proposed time of %f", buf, 0xCu);
  }

  v6 = objc_loadWeakRetained(a1 + 6);
  v7 = [v6 asyncDelegate];
  v8 = objc_loadWeakRetained(a1 + 6);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_803;
  v9[3] = &unk_279D7C948;
  objc_copyWeak(&v12, a1 + 7);
  objc_copyWeak(v13, a1 + 6);
  v10 = a1[4];
  v13[1] = v4;
  v11 = a1[5];
  [v7 player:v8 shouldPlayFromTime:v9 completion:*&v4];

  objc_destroyWeak(v13);
  objc_destroyWeak(&v12);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_803(uint64_t a1, uint64_t a2, double a3)
{
  v29 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained && (v7 = objc_loadWeakRetained((a1 + 56)), [v7 asyncDelegateOperations], v8 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "firstObject"), v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqual:", WeakRetained), v9, v8, v7, v10))
  {
    v11 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v12 = @"NO";
      if (a2)
      {
        v12 = @"YES";
      }

      v25 = 138412546;
      v26 = v12;
      v27 = 2048;
      v28 = a3;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Async delegate: allowedToPlay response: %@, %f", &v25, 0x16u);
    }

    v13 = objc_loadWeakRetained((a1 + 56));
    v14 = [v13 asyncDelegateOperations];
    [v14 removeObjectAtIndex:0];

    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = [v15 mutableCopy];
    }

    else
    {
      v16 = objc_alloc_init(MEMORY[0x277CBEB38]);
    }

    v18 = v16;
    v19 = [MEMORY[0x277CCABB0] numberWithBool:a2];
    [v18 setObject:v19 forKey:@"Async delegate response key"];

    v20 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 64)];
    [v18 setObject:v20 forKey:@"Original time key"];

    v21 = [MEMORY[0x277CCABB0] numberWithDouble:a3];
    [v18 setObject:v21 forKey:@"Adjusted time key"];

    v22 = objc_loadWeakRetained((a1 + 56));
    v23 = [v22 stateMachine];
    [v23 postEvent:*(a1 + 40) withContext:0 userInfo:v18];

    v24 = objc_loadWeakRetained((a1 + 56));
    [v24 _processNextAsyncDelegateOperation];
  }

  else
  {
    v17 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v25) = 0;
      _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Async delegate: ignoring allowedToPlay response", &v25, 2u);
    }
  }
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_805(uint64_t a1, __int128 *a2, void *a3, void *a4, uint64_t a5)
{
  v9 = a4;
  v10 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setPostLoadingState:v9];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = [v12 AVQueuePlayer];
  [v13 setResourceConservationLevelWhilePaused:0];

  v14 = *(a1 + 32);
  v15 = +[TVPPlaybackState loading];
  v16 = *(v14 + 16);
  v23 = *a2;
  v24 = *(a2 + 2);
  v21 = *MEMORY[0x277CC08F0];
  v22 = *(MEMORY[0x277CC08F0] + 16);
  v16(v14, &v23, v10, &v21, v15, a5, 0.0);

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 externalImagePlayer];
  [v18 invalidate];

  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 setExternalImagePlayer:0];

  return @"Waiting for seek";
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_807(uint64_t a1, __int128 *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v14 = a3;
  v15 = a5;
  v48 = a6;
  v47 = a7;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v17 = [WeakRetained usesLegacyDelegateBehavior];

  v18 = objc_loadWeakRetained((a1 + 64));
  v19 = [v18 stateMachine];
  v20 = [v19 currentState];

  v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v22 = v21;
  if (a9)
  {
    v23 = v21;
    *a9 = v22;
  }

  if (v17)
  {
    if (v14)
    {
      v24 = *(a1 + 32);
      v51 = v14;
      v25 = (*(v24 + 16))();
      v26 = v14;

      if (v25)
      {
        v27 = *(*(a1 + 40) + 16);
        v49 = *a2;
        v50 = *(a2 + 2);
        v28 = v27();

        v20 = v28;
      }

      if (v26)
      {
        [v22 setObject:v26 forKey:@"Playback date key"];
      }
    }

    else
    {
      if ((*(*(a1 + 48) + 16))())
      {
        v33 = *(*(a1 + 40) + 16);
        v49 = *a2;
        v50 = *(a2 + 2);
        v34 = v33();

        v20 = v34;
      }

      v49 = *a2;
      v50 = *(a2 + 2);
      v35 = [MEMORY[0x277CCAE60] valueWithCMTime:&v49];
      [v22 setObject:v35 forKey:@"Elapsed CMTime key"];

      v26 = 0;
    }
  }

  else
  {
    v29 = +[TVPPlaybackState playing];

    if (v29 == v15)
    {
      if ((*(*(a1 + 56) + 16))())
      {
        if (v14)
        {
          (*(*(a1 + 32) + 16))();
          v26 = v14;

          v36 = *(*(a1 + 40) + 16);
          v49 = *a2;
          v50 = *(a2 + 2);
          v37 = v36();
        }

        else
        {
          (*(*(a1 + 48) + 16))();
          v39 = *(*(a1 + 40) + 16);
          v49 = *a2;
          v50 = *(a2 + 2);
          v37 = v39();
          v26 = 0;
        }

        v49 = *a2;
        v50 = *(a2 + 2);
        v40 = [MEMORY[0x277CCAE60] valueWithCMTime:&v49];
        [v22 setObject:v40 forKey:@"Elapsed CMTime key"];

        v20 = v37;
        goto LABEL_24;
      }
    }

    else
    {
      v30 = +[TVPPlaybackState paused];

      if (v30 == v15)
      {
        if (v14)
        {
          (*(*(a1 + 32) + 16))();
          v26 = v14;

          v31 = *(*(a1 + 40) + 16);
          v49 = *a2;
          v50 = *(a2 + 2);
          v32 = v31();
        }

        else
        {
          (*(*(a1 + 48) + 16))();
          v38 = *(*(a1 + 40) + 16);
          v49 = *a2;
          v50 = *(a2 + 2);
          v32 = v38();

          v26 = 0;
        }

        v20 = v32;
        goto LABEL_24;
      }
    }

    v26 = v14;
  }

LABEL_24:
  v41 = objc_loadWeakRetained((a1 + 64));
  v42 = [v41 stateMachine];
  v43 = [v42 currentState];
  v44 = [v20 isEqualToString:v43];

  v45 = [MEMORY[0x277CCABB0] numberWithBool:v44 ^ 1u];
  [v22 setObject:v45 forKey:@"Allowed key"];

  return v20;
}

TVPMutableChapterCollection *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_809(uint64_t a1, void *a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v3 = [a2 asset];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = [MEMORY[0x277CBEAF8] preferredLanguages];
  v6 = [v5 firstObject];

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = [WeakRetained selectedAudioOption];
  v9 = [v8 languageCodeBCP47];

  if (v6)
  {
    [v4 addObject:v6];
  }

  if (v9)
  {
    [v4 addObject:v9];
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if ([v3 statusOfValueForKey:@"availableChapterLocales" error:0] == 2)
  {
    v11 = [v3 chapterMetadataGroupsBestMatchingPreferredLanguages:v4];
    v24 = v3;
    if (![v11 count])
    {
      v12 = [v3 availableChapterLocales];
      v13 = [v12 firstObject];

      if (v13)
      {
        v30[0] = *MEMORY[0x277CE5F10];
        v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:1];
        v15 = [v3 chapterMetadataGroupsWithTitleLocale:v13 containingItemsWithCommonKeys:v14];

        v11 = v15;
      }
    }

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = v11;
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = [[TVPAVTimedMetadataGroupChapter alloc] initWithAVTimedMetadataGroup:*(*(&v25 + 1) + 8 * i) filterByLanguages:v4];
          [v10 addObject:v21];
        }

        v18 = [v16 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    v3 = v24;
  }

  if ([v10 count])
  {
    v22 = objc_alloc_init(TVPMutableChapterCollection);
    [(TVPChapterCollection *)v22 setChapters:v10];
    [(TVPChapterCollection *)v22 setType:0];
  }

  else
  {
    v22 = 0;
  }

  return v22;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_816(uint64_t a1)
{
  v59 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setCurrentPlayerItem:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setPlayerItemFromCacheManager:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setAVQueuePlayer:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  v6 = [v5 _integratedTimelineEnabled];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 32));
    [v7 setInterstitialEventMonitor:0];
  }

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setHaveEverEnqueuedPlayerItem:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setEarlyAVQueuePlayer:0];

  v10 = objc_loadWeakRetained((a1 + 32));
  v11 = [v10 externalImagePlayer];
  [v11 invalidate];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 setExternalImagePlayer:0];

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 mediaItemLoaders];
  v15 = [v14 copy];

  v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
  if (v16)
  {
    v17 = *v55;
    do
    {
      v18 = 0;
      do
      {
        if (*v55 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v54 + 1) + 8 * v18);
        v20 = objc_loadWeakRetained((a1 + 32));
        [v20 _removeObserversForMediaItemLoader:v19];

        [v19 cleanupIfNecessary];
        v21 = objc_loadWeakRetained((a1 + 32));
        v22 = [v21 mediaItemLoaders];
        [v22 removeObject:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [v15 countByEnumeratingWithState:&v54 objects:v58 count:16];
    }

    while (v16);
  }

  v23 = objc_loadWeakRetained((a1 + 32));
  v24 = +[TVPPlaybackState playing];
  [v23 setPostLoadingState:v24];

  v25 = objc_loadWeakRetained((a1 + 32));
  v52 = *MEMORY[0x277CC08F0];
  v49 = v52;
  v53 = *(MEMORY[0x277CC08F0] + 16);
  v26 = v53;
  [v25 setTimeBeingSeekedTo:&v52];

  v27 = objc_loadWeakRetained((a1 + 32));
  v52 = v49;
  v53 = v26;
  [v27 setTimeAtStartOfSeek:&v52];

  v28 = objc_loadWeakRetained((a1 + 32));
  [v28 setPlaybackDateAtStartOfSeek:0];

  v29 = objc_loadWeakRetained((a1 + 32));
  [v29 setDateBeingSeekedTo:0];

  v30 = objc_loadWeakRetained((a1 + 32));
  [v30 setLoadingInitialItemInPlaylist:1];

  v31 = objc_loadWeakRetained((a1 + 32));
  [v31 setInitialMediaItemHasCompletedInitialLoading:0];

  v32 = objc_loadWeakRetained((a1 + 32));
  [v32 setCurrentDirectionOfPlaylistChange:0];

  v33 = objc_loadWeakRetained((a1 + 32));
  [v33 setCurrentMediaItemVideoRange:0];

  v34 = objc_loadWeakRetained((a1 + 32));
  [v34 setCurrentMediaItemAudioFormat:0];

  v35 = objc_loadWeakRetained((a1 + 32));
  [v35 setCurrentMediaItemAudioChannels:-1];

  v36 = objc_loadWeakRetained((a1 + 32));
  v52 = v49;
  v53 = v26;
  [v36 setCachedElapsedCMTime:&v52];

  v37 = objc_loadWeakRetained((a1 + 32));
  v38 = [v37 progressiveJumpingScrubber];
  [v38 cancelScrub];

  v39 = objc_loadWeakRetained((a1 + 32));
  [v39 setProgressiveJumpingScrubber:0];

  v40 = objc_loadWeakRetained((a1 + 32));
  [v40 setMediaItemChangeReason:0];

  v41 = objc_loadWeakRetained((a1 + 32));
  v42 = [v41 asyncDelegateOperations];
  [v42 removeAllObjects];

  v43 = objc_loadWeakRetained((a1 + 32));
  [v43 setTemporarySubtitleOverrideType:0];

  v44 = objc_loadWeakRetained((a1 + 32));
  [v44 setUnqueuedPlayerItem:0];

  v45 = objc_loadWeakRetained((a1 + 32));
  [v45 setPlayerItemChangeIsHappening:0];

  v46 = objc_loadWeakRetained((a1 + 32));
  [v46 setIsPlayingInterstitial:0];

  v47 = objc_loadWeakRetained((a1 + 32));
  v48 = [v47 stateMachine];
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_817;
  v50[3] = &unk_279D7BF80;
  objc_copyWeak(&v51, (a1 + 32));
  [v48 executeBlockAfterCurrentStateTransition:v50];

  objc_destroyWeak(&v51);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_817(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained setWaitsAfterPreparingMediaItems:0];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setCurrentMediaItemInitialLoadingComplete:0];

  v4 = objc_loadWeakRetained((a1 + 32));
  [v4 setCurrentMediaItemHasVideoContent:0];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setCurrentMediaItemIsStreaming:0];

  v6 = objc_loadWeakRetained((a1 + 32));
  [v6 setIsLive:0];

  v7 = objc_loadWeakRetained((a1 + 32));
  [v7 setCurrentMediaItemPresentationSize:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];

  v8 = objc_loadWeakRetained((a1 + 32));
  [v8 setCurrentMediaItemHasDates:0];

  v9 = objc_loadWeakRetained((a1 + 32));
  [v9 setNumOutstandingSeeks:0];

  v10 = objc_loadWeakRetained((a1 + 32));
  v20 = *MEMORY[0x277CC0898];
  v21 = *(MEMORY[0x277CC0898] + 16);
  [v10 setCachedDuration:&v20];

  v11 = objc_loadWeakRetained((a1 + 32));
  [v11 setCachedLoadedTimeRanges:0];

  v12 = objc_loadWeakRetained((a1 + 32));
  [v12 setCachedSeekableTimeRanges:0];

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 setChapterCollections:0];

  v14 = objc_loadWeakRetained((a1 + 32));
  [v14 setCurrentChapterCollection:0];

  v15 = objc_loadWeakRetained((a1 + 32));
  [v15 setCurrentChapter:0];

  v16 = objc_loadWeakRetained((a1 + 32));
  [v16 setCurrentInterstitialCollection:0];

  v17 = objc_loadWeakRetained((a1 + 32));
  [v17 setCurrentInterstitial:0];

  v18 = objc_loadWeakRetained((a1 + 32));
  [v18 setCachedSelectedAudioOption:0];

  v19 = objc_loadWeakRetained((a1 + 32));
  [v19 _notifyOfMediaSelectionOptionChanges];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_818(uint64_t a1, int a2, void *a3)
{
  v13 = a3;
  v5 = 40;
  if (a2)
  {
    v5 = 32;
  }

  (*(*(a1 + v5) + 16))();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v7 = [WeakRetained _integratedTimelineEnabled];

  if (v7)
  {
    v8 = [MEMORY[0x277CCAB98] defaultCenter];
    v9 = objc_loadWeakRetained((a1 + 56));
    [v8 removeObserver:v9 name:*MEMORY[0x277CE6100] object:0];
  }

  v10 = objc_loadWeakRetained((a1 + 56));
  v11 = +[TVPPlaybackState stopped];
  [v10 _setState:v11 updatedRate:v13 reason:1 notifyListeners:0.0];

  (*(*(a1 + 48) + 16))();
  v12 = objc_loadWeakRetained((a1 + 56));
  if (v12)
  {
    [objc_opt_class() _playerDidBecomeInactive:v12];
  }
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_820(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained playlist];
  [v5 endAction];

  v6 = objc_loadWeakRetained((a1 + 56));
  v7 = [v6 playlist];
  v8 = [v7 endAction];

  if (v8 == 2)
  {
    (*(*(a1 + 40) + 16))();
    v9 = objc_loadWeakRetained((a1 + 56));
    [v9 setPostLoadingState:v3];

    v10 = objc_loadWeakRetained((a1 + 56));
    v11 = +[TVPPlaybackState loading];
    [v10 _setState:v11 updatedRate:1 notifyListeners:0.0];

    v12 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_821;
    v24[3] = &unk_279D7BF80;
    v13 = &v25;
    objc_copyWeak(&v25, (a1 + 56));
    [v12 executeBlockAfterCurrentStateTransition:v24];
    v14 = *(a1 + 32);
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_822;
    v22[3] = &unk_279D7BF80;
    objc_copyWeak(&v23, (a1 + 56));
    [v14 executeBlockAfterCurrentStateTransition:v22];
    objc_destroyWeak(&v23);
    v15 = @"Waiting for more playlist items";
  }

  else
  {
    v16 = *(a1 + 32);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_10;
    v20[3] = &unk_279D7BF80;
    v13 = &v21;
    objc_copyWeak(&v21, (a1 + 56));
    [v16 executeBlockAfterCurrentStateTransition:v20];
    v17 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Stopping because the end of the playlist has been reached", v19, 2u);
    }

    (*(*(a1 + 48) + 16))();
    v15 = @"Stopped";
  }

  objc_destroyWeak(v13);

  return v15;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_821(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = *MEMORY[0x277CC08F0];
  v3 = *(MEMORY[0x277CC08F0] + 16);
  [WeakRetained _notifyListenersOfElapsedTimeChange:&v2 playbackDate:0 dueToTimeJump:1];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_822(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackPlaylistDidFinishNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_10(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackPlaylistDidFinishNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_824(uint64_t a1, uint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained playlist];
  v6 = [v5 currentMediaItem];

  v7 = objc_loadWeakRetained((a1 + 40));
  v8 = [v7 playlist];
  v53 = [v8 nextMediaItem];

  if (a2)
  {
    if (a2 == 1)
    {
      if (v53)
      {
        if (([v53 hasTrait:@"TVPMediaItemTraitOptimizeForHighLatency"] & 1) == 0 && (objc_msgSend(v53, "hasTrait:", @"TVPMediaItemTraitPreventSpeculativeLoading") & 1) == 0)
        {
          v9 = [MEMORY[0x277CBEBD0] standardUserDefaults];
          v10 = [v9 BOOLForKey:@"DisableSpeculativeLoading"];

          if ((v10 & 1) == 0)
          {
            v11 = v53;
            goto LABEL_9;
          }
        }
      }
    }
  }

  else
  {
    v11 = v6;
    if (v11)
    {
LABEL_9:
      v50 = v11;
      v52 = [TVPMediaItemLoader loaderForMediaItem:v11];
      v12 = objc_loadWeakRetained((a1 + 40));
      [v52 setAllowsCellularUsage:{objc_msgSend(v12, "allowsCellularUsage")}];

      v13 = objc_loadWeakRetained((a1 + 40));
      [v52 setAllowsConstrainedNetworkUsage:{objc_msgSend(v13, "allowsConstrainedNetworkUsage")}];

      v14 = [v52 state];
      v15 = [v14 isEqualToString:0x287E4AA38];

      v51 = v15;
      if (v15)
      {
        [v52 cleanupIfNecessary];
      }

      v16 = objc_loadWeakRetained((a1 + 40));
      v17 = [v16 mediaItemLoaders];
      v18 = [v17 containsObject:v52];

      if ((v18 & 1) == 0)
      {
        v19 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          v20 = @"next";
          if (!a2)
          {
            v20 = @"current";
          }

          *buf = 138412546;
          v66 = v20;
          v67 = 2112;
          v68 = v52;
          _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "Loading %@ media item: %@", buf, 0x16u);
        }

        v21 = objc_loadWeakRetained((a1 + 40));
        v22 = [v21 mediaItemLoaders];
        [v22 addObject:v52];

        v23 = objc_loadWeakRetained((a1 + 40));
        [v23 _addObserversForMediaItemLoader:v52];

        v51 = 1;
      }

      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v24 = objc_loadWeakRetained((a1 + 40));
      v25 = [v24 mediaItemLoaders];
      v26 = [v25 copy];

      v27 = [v26 countByEnumeratingWithState:&v60 objects:v64 count:16];
      if (v27)
      {
        v28 = *v61;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v61 != v28)
            {
              objc_enumerationMutation(v26);
            }

            v30 = *(*(&v60 + 1) + 8 * i);
            v31 = [(__CFString *)v30 mediaItem];
            if (([v31 isEqualToMediaItem:v6] & 1) == 0)
            {
              v32 = [(__CFString *)v30 mediaItem];
              v33 = [v32 isEqualToMediaItem:v53];

              if (v33)
              {
                continue;
              }

              v34 = sPlayerLogObject;
              if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v66 = v30;
                _os_log_impl(&dword_26CEDD000, v34, OS_LOG_TYPE_DEFAULT, "Cleaning up media item loader that is no longer in use: %@", buf, 0xCu);
              }

              v35 = objc_loadWeakRetained((a1 + 40));
              [v35 _removeObserversForMediaItemLoader:v30];

              [(__CFString *)v30 cleanupIfNecessary];
              v31 = objc_loadWeakRetained((a1 + 40));
              v36 = [v31 mediaItemLoaders];
              [v36 removeObject:v30];
            }
          }

          v27 = [v26 countByEnumeratingWithState:&v60 objects:v64 count:16];
        }

        while (v27);
      }

      v37 = [v52 state];
      v38 = TVPPlaybackReportingHLSPlaylistPreloadStateNone;
      if ([v37 isEqualToString:0x287E4F0B8])
      {
        v39 = &TVPPlaybackReportingHLSPlaylistPreloadStatePartial;
      }

      else
      {
        if (([v37 isEqualToString:0x287E4F0D8] & 1) == 0 && (objc_msgSend(v37, "isEqualToString:", 0x287E4F0F8) & 1) == 0 && !objc_msgSend(v37, "isEqualToString:", 0x287E4F118))
        {
LABEL_37:
          v41 = objc_loadWeakRetained((a1 + 40));
          v42 = [v41 currentMediaItem];
          v43 = [v42 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
          [v43 addSingleShotEventWithName:TVPPlaybackReportingEventHLSPlaylistPreloadState value:v38];

          if (v51)
          {
            [v52 loadIfNecessary];
          }

          v44 = [v52 state];
          if ([v44 isEqualToString:0x287E4F058])
          {
            goto LABEL_45;
          }

          if (([v44 isEqualToString:0x287E4F078] & 1) != 0 || (objc_msgSend(v44, "isEqualToString:", 0x287E4F098) & 1) != 0 || objc_msgSend(v44, "isEqualToString:", 0x287E4F0B8))
          {
            v45 = *(a1 + 32);
            v46 = v58;
            v58[0] = MEMORY[0x277D85DD0];
            v58[1] = 3221225472;
            v58[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_834;
            v58[3] = &unk_279D7C080;
            v58[4] = v52;
            v47 = &v59;
            objc_copyWeak(&v59, (a1 + 40));
            [v45 executeBlockAfterCurrentStateTransition:v58];
          }

          else if (([v44 isEqualToString:0x287E4F0D8] & 1) != 0 || objc_msgSend(v44, "isEqualToString:", 0x287E4F0F8))
          {
            v48 = *(a1 + 32);
            v46 = v56;
            v56[0] = MEMORY[0x277D85DD0];
            v56[1] = 3221225472;
            v56[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_835;
            v56[3] = &unk_279D7C080;
            v56[4] = v52;
            v47 = &v57;
            objc_copyWeak(&v57, (a1 + 40));
            [v48 executeBlockAfterCurrentStateTransition:v56];
          }

          else
          {
            if (![v44 isEqualToString:0x287E4F118])
            {
              goto LABEL_45;
            }

            v49 = *(a1 + 32);
            v46 = v54;
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_836;
            v54[3] = &unk_279D7C080;
            v54[4] = v52;
            v47 = &v55;
            objc_copyWeak(&v55, (a1 + 40));
            [v49 executeBlockAfterCurrentStateTransition:v54];
          }

          objc_destroyWeak(v47);

LABEL_45:
          goto LABEL_46;
        }

        v39 = &TVPPlaybackReportingHLSPlaylistPreloadStateFull;
      }

      v40 = *v39;

      v38 = v40;
      goto LABEL_37;
    }
  }

LABEL_46:
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_834(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v6 = @"Media item loader key";
  v7[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained stateMachine];
  [v5 postEvent:@"Media item loader did prepare item for loading" withContext:0 userInfo:v3];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_835(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v8 = @"Media item loader key";
  v9[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained stateMachine];
  [v5 postEvent:@"Media item loader did prepare item for loading" withContext:0 userInfo:v3];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 stateMachine];
  [v7 postEvent:@"Media item loader did load AVAsset keys" withContext:0 userInfo:v3];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_836(uint64_t a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v10 = @"Media item loader key";
  v11[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:&v10 count:1];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained stateMachine];
  [v5 postEvent:@"Media item loader did prepare item for loading" withContext:0 userInfo:v3];

  v6 = objc_loadWeakRetained((a1 + 40));
  v7 = [v6 stateMachine];
  [v7 postEvent:@"Media item loader did load AVAsset keys" withContext:0 userInfo:v3];

  v8 = objc_loadWeakRetained((a1 + 40));
  v9 = [v8 stateMachine];
  [v9 postEvent:@"Media item did prepare for playback initiation" withContext:0 userInfo:v3];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v8 = [WeakRetained currentMediaItem];

  v9 = [v6 objectForKey:@"direction"];
  v10 = [v9 integerValue];

  v11 = [v6 objectForKey:@"TVPPlaylistDidHitBeginningKey"];
  v12 = [v11 BOOLValue];

  v13 = [v6 objectForKey:@"TVPPlaylistDidHitEndKey"];
  v14 = [v13 BOOLValue];

  v15 = [v6 objectForKey:@"Changing media because AVFoundation advanced key"];
  v16 = [v15 BOOLValue];

  if (!v12)
  {
    if (v8)
    {
      v19 = v14;
    }

    else
    {
      v19 = 1;
    }

    if (v19 == 1)
    {
      v18 = (*(*(a1 + 48) + 16))();
      goto LABEL_24;
    }

    v20 = [v8 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
    [v20 addEndEventWithName:TVPPlaybackReportingEventUserPlayToLoadingInitiation];

    if (v16)
    {
      goto LABEL_23;
    }

    v21 = objc_loadWeakRetained((a1 + 64));
    v22 = [v21 AVQueuePlayer];

    v23 = [v22 items];
    v24 = objc_loadWeakRetained((a1 + 64));
    [v24 setModifyingAVPlayerQueue:1];

    if (!v10 && [v23 count] == 2)
    {
      v25 = [v23 objectAtIndex:1];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v26 = objc_msgSend_mediaItemLoader(v25);
        v27 = [v26 mediaItem];
        v38 = [v27 isEqualToMediaItem:v8];

        if (v38)
        {
          v28 = sPlayerLogObject;
          if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26CEDD000, v28, OS_LOG_TYPE_DEFAULT, "Calling advanceToNextItem since item added previously matches newly current item", buf, 2u);
          }

          [v22 advanceToNextItem];
LABEL_22:
          v30 = objc_loadWeakRetained((a1 + 64));
          [v30 setModifyingAVPlayerQueue:0];

LABEL_23:
          v31 = objc_loadWeakRetained((a1 + 64));
          [v31 setCurrentDirectionOfPlaylistChange:v10];

          v32 = objc_loadWeakRetained((a1 + 64));
          [v32 _updateAVPlayerActionAtItemEnd];

          v33 = *(a1 + 32);
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_839;
          v39[3] = &unk_279D7C080;
          v40 = v8;
          objc_copyWeak(&v41, (a1 + 64));
          [v33 executeBlockAfterCurrentStateTransition:v39];
          v34 = objc_loadWeakRetained((a1 + 64));
          [v34 setPostLoadingState:v5];

          v35 = objc_loadWeakRetained((a1 + 64));
          v36 = +[TVPPlaybackState loading];
          [v35 _setState:v36 updatedRate:1 notifyListeners:0.0];

          (*(*(a1 + 56) + 16))();
          objc_destroyWeak(&v41);

          v18 = @"Waiting for media item to prepare for loading";
          goto LABEL_24;
        }
      }

      else
      {
      }
    }

    v29 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v29, OS_LOG_TYPE_DEFAULT, "Calling removeAllItems", buf, 2u);
    }

    [v22 removeAllItems];
    goto LABEL_22;
  }

  v17 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, "Stopping because there are no more items in playlist going backwards", buf, 2u);
  }

  (*(*(a1 + 40) + 16))();
  v18 = @"Stopped";
LABEL_24:

  return v18;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_839(uint64_t a1)
{
  v2 = [*(a1 + 32) mediaItemMetadataForProperty:@"TVPMediaItemMetadataStartTime"];
  v3 = v2;
  memset(&v7, 0, sizeof(v7));
  if (v2)
  {
    [v2 doubleValue];
    CMTimeMakeWithSeconds(&v7, v4, 1000000);
  }

  else
  {
    v7 = **&MEMORY[0x277CC08F0];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = v7;
  [WeakRetained _notifyListenersOfElapsedTimeChange:&v6 playbackDate:0 dueToTimeJump:1];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_841(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained playlist];
  v6 = [v5 currentMediaItem];

  if (v6)
  {
    v7 = objc_loadWeakRetained((a1 + 40));
    if (v7)
    {
      [objc_opt_class() _playerWillBecomeActive:v7];
    }

    v8 = objc_loadWeakRetained((a1 + 40));
    [v8 _updateMediaRemoteManager];

    v9 = objc_loadWeakRetained((a1 + 40));
    v10 = [v9 playlist];
    [v10 setNumConsecutivePlaybackFailures:0];

    v11 = [v6 hasTrait:@"TVPMediaItemTraitForceSoundCheck"];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_842;
    block[3] = &__block_descriptor_33_e5_v8__0l;
    v21 = v11;
    dispatch_async(sAVAudioSessionQueue, block);
    v12 = objc_loadWeakRetained((a1 + 40));
    LODWORD(v10) = [v12 _integratedTimelineEnabled];

    if (v10)
    {
      v13 = [MEMORY[0x277CCAB98] defaultCenter];
      v14 = objc_loadWeakRetained((a1 + 40));
      [v13 addObserver:v14 selector:sel__playerItemMediaSelectionDidChange_ name:*MEMORY[0x277CE6100] object:0];
    }

    v15 = objc_loadWeakRetained((a1 + 40));
    [v15 setPostLoadingState:v3];

    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = +[TVPPlaybackState loading];
    [v16 _setState:v17 updatedRate:1 notifyListeners:0.0];

    (*(*(a1 + 32) + 16))();
    v18 = @"Waiting for media item to prepare for loading";
  }

  else
  {
    v18 = @"Stopped";
  }

  return v18;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_842(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    if (*(a1 + 32))
    {
      v3 = @"YES";
    }

    else
    {
      v3 = @"NO";
    }

    v5 = 138412290;
    v6 = v3;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Setting forceSoundCheck to %@", &v5, 0xCu);
  }

  v4 = [MEMORY[0x277CB83F8] sharedInstance];
  [v4 setForceSoundCheck:*(a1 + 32) error:0];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_846(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v52 = *MEMORY[0x277D85DE8];
  v40 = a2;
  v42 = a3;
  v43 = a4;
  v45 = a5;
  v9 = [v45 objectForKey:@"Playlist key"];
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v11 = [WeakRetained playlistInternal];

  if (!v9 && v11 || v9 && !v11 || v9 && v11 && ([v9 isEqual:{v11, v40, v42, v43}] & 1) == 0)
  {
    v12 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v13 = v12;
      v14 = [v9 currentMediaItem];
      *buf = 138412290;
      v51 = v14;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Playlist's initial current media item: %@", buf, 0xCu);
    }

    v15 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v16 = v15;
      v17 = [v9 nextMediaItem];
      *buf = 138412290;
      v51 = v17;
      _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Playlist's initial next media item: %@", buf, 0xCu);
    }

    v18 = [v11 currentMediaItem];
    v44 = [v9 currentMediaItem];
    v19 = [v18 mediaItemMetadataForProperty:@"TVPMediaItemMetadataShowCanonicalID"];
    v20 = [v44 mediaItemMetadataForProperty:@"TVPMediaItemMetadataShowCanonicalID"];
    v21 = 0;
    if (v19 && v20)
    {
      v21 = [v19 isEqualToString:v20];
    }

    if (v18 && (v21 & 1) == 0)
    {
      v22 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Not the same show; setting preferred audio language to nil", buf, 2u);
      }

      v23 = objc_loadWeakRetained((a1 + 56));
      [v23 setPreferredAudioLanguageCode:0];
    }

    v24 = [v45 objectForKey:@"Being invalidated key"];
    v25 = [v24 BOOLValue];

    v26 = @"Player invalidated";
    if (!v25)
    {
      v26 = @"New playlist set";
    }

    v27 = v26;
    v28 = objc_loadWeakRetained((a1 + 56));
    v29 = [v28 currentMediaItem];
    [v28 _removeObserversForMediaItem:v29];

    v30 = objc_loadWeakRetained((a1 + 56));
    [v30 willChangeValueForKey:@"playlistInternal"];

    v31 = objc_loadWeakRetained((a1 + 56));
    [v31 willChangeValueForKey:@"playlist"];

    v32 = objc_loadWeakRetained((a1 + 56));
    [v32 _postCurrentMediaItemWillChangeNotificationWithDirection:0 reason:v27 didHitBeginningOfPlaylist:0 didHitEndOfPlaylist:0];

    v33 = [*(a1 + 32) currentState];
    LODWORD(v28) = [v33 isEqualToString:@"Stopped"];

    if (v28)
    {
      (*(*(a1 + 40) + 16))();
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }

    v34 = objc_loadWeakRetained((a1 + 56));
    v35 = [v9 currentMediaItem];
    [v34 _addObserversForMediaItem:v35];

    v36 = *(a1 + 32);
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_847;
    v46[3] = &unk_279D7C4C0;
    objc_copyWeak(&v49, (a1 + 56));
    v47 = v9;
    v37 = v27;
    v48 = v37;
    [v36 executeBlockAfterCurrentStateTransition:v46];

    objc_destroyWeak(&v49);
    v38 = @"Stopped";
  }

  else
  {
    v38 = [*(a1 + 32) currentState];
  }

  return v38;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_847(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained setPlaylistInternal:*(a1 + 32)];

  v3 = objc_loadWeakRetained((a1 + 48));
  [v3 didChangeValueForKey:@"playlistInternal"];

  v4 = objc_loadWeakRetained((a1 + 48));
  [v4 didChangeValueForKey:@"playlist"];

  v5 = objc_loadWeakRetained((a1 + 48));
  [v5 _postCurrentMediaItemDidChangeNotificationWithDirection:0 reason:*(a1 + 40) didHitBeginningOfPlaylist:0 didHitEndOfPlaylist:0];

  v7 = objc_loadWeakRetained((a1 + 48));
  v6 = [v7 currentMediaItem];
  [v7 setCurrentMediaItemIsStreaming:{objc_msgSend(v6, "hasTrait:", @"TVPMediaItemTraitIsStreaming"}];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_848(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained currentMediaItemLoader];

  v4 = [v3 state];
  if ([v4 isEqualToString:0x287E4F0D8])
  {
    v5 = *(a1 + 32);
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_849;
    v7[3] = &unk_279D7BC20;
    v8 = v3;
    v9 = *(a1 + 32);
    [v5 executeBlockAfterCurrentStateTransition:v7];
  }

  return @"Waiting for AVAsset to load";
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_849(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = @"Media item loader key";
  v5[0] = v2;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:&v4 count:1];
  [*(a1 + 40) postEvent:@"Media item loader did load AVAsset keys" withContext:0 userInfo:v3];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:{@"Play completion key", a4}];
  (*(*(a1 + 32) + 16))();
  v7 = *(a1 + 40);
  v8 = +[TVPPlaybackState playing];
  v9 = (*(v7 + 16))(v7, v8);

  return v9;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_851(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v32 = a3;
  v30 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"Play completion key"];
  v12 = [v10 objectForKey:@"Ignore delegate key"];
  [v12 BOOLValue];

  v13 = [v10 objectForKey:@"Volume ramp duration key"];
  [v13 doubleValue];
  v15 = v14;

  v37 = 0uLL;
  v38 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v17 = WeakRetained;
  if (WeakRetained)
  {
    objc_msgSend_startTime(WeakRetained, v30);
  }

  else
  {
    v37 = 0uLL;
    v38 = 0;
  }

  v35 = v37;
  v36 = v38;
  v34 = 0;
  if ((*(*(a1 + 32) + 16))())
  {
    v18 = objc_loadWeakRetained((a1 + 56));
    v19 = +[TVPPlaybackState playing];
    [v18 setPostLoadingState:v19];

    v20 = objc_loadWeakRetained((a1 + 56));
    v21 = [v20 AVQueuePlayer];
    v22 = v21 == 0;

    if (v22)
    {
      v23 = sPlayerLogObject;
      if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v24 = "No AVPlayer exists yet, will set rate when AVPlayer is created";
      goto LABEL_11;
    }

    if (v11)
    {
      v23 = sPlayerLogObject;
      if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_13;
      }

      *buf = 0;
      v24 = "Not setting AVPlayer rate since AVKit will set it for us";
LABEL_11:
      _os_log_impl(&dword_26CEDD000, v23, OS_LOG_TYPE_DEFAULT, v24, buf, 2u);
      goto LABEL_13;
    }

    v25 = *(a1 + 40);
    v26 = objc_loadWeakRetained((a1 + 56));
    [v26 rateUsedForPlayback];
    *&v27 = v27;
    (*(v25 + 16))(v25, *&v27, v15);
  }

LABEL_13:
  (*(*(a1 + 48) + 16))();
  v28 = [v9 currentState];

  return v28;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_852(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Set elapsed time or date" withContext:0 userInfo:*(a1 + 32)];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_853(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v45 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v37 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"Play completion key"];
  v13 = [v11 objectForKey:@"Ignore delegate key"];
  [v13 BOOLValue];

  v14 = [v11 objectForKey:@"Volume ramp duration key"];
  [v14 doubleValue];
  v16 = v15;

  v36 = *MEMORY[0x277CC08F0];
  v43 = *MEMORY[0x277CC08F0];
  v17 = *(MEMORY[0x277CC08F0] + 16);
  v44 = v17;
  v42 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v19 = [WeakRetained currentPlayerItem];

  if (v19)
  {
    v20 = objc_loadWeakRetained((a1 + 56));
    v21 = [v20 _integratedTimelineEnabled];

    v22 = (a1 + 56);
    if (v21)
    {
      v23 = objc_loadWeakRetained(v22);
      v24 = [v23 currentPlayerItem];
      v25 = [v24 integratedTimeline];
      v26 = v25;
      if (v25)
      {
        objc_msgSend_currentTime(v25);
      }

      else
      {
        v40 = 0uLL;
        v41 = 0;
      }

      v43 = v40;
      v44 = v41;
    }

    else
    {
      v23 = objc_loadWeakRetained(v22);
      v27 = [v23 currentPlayerItem];
      v24 = v27;
      if (v27)
      {
        objc_msgSend_currentTime(v27);
      }

      else
      {
        v40 = 0uLL;
        v41 = 0;
      }

      v43 = v40;
      v44 = v41;
    }
  }

  v40 = v43;
  v41 = v44;
  v39 = 0;
  if ((*(*(a1 + 32) + 16))())
  {
    v28 = objc_loadWeakRetained((a1 + 56));
    v29 = +[TVPPlaybackState playing];
    [v28 setPostLoadingState:v29];

    if (v12)
    {
      v30 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v30, OS_LOG_TYPE_DEFAULT, "Not setting AVPlayer rate since AVKit will set it for us", buf, 2u);
      }
    }

    else
    {
      v31 = *(a1 + 40);
      v32 = objc_loadWeakRetained((a1 + 56));
      [v32 rateUsedForPlayback];
      *&v33 = v33;
      (*(v31 + 16))(v31, *&v33, v16);
    }
  }

  (*(*(a1 + 48) + 16))();
  v34 = [v9 currentState];

  return v34;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_854(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Set elapsed time or date" withContext:0 userInfo:*(a1 + 32)];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_855(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v31 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"Play completion key"];
  v13 = [v11 objectForKey:@"Ignore delegate key"];
  [v13 BOOLValue];

  v14 = [v11 objectForKey:@"Volume ramp duration key"];
  [v14 doubleValue];
  v16 = v15;

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v18 = [WeakRetained _integratedTimelineEnabled];

  v19 = (a1 + 56);
  if (v18)
  {
    v20 = objc_loadWeakRetained(v19);
    v21 = [v20 currentPlayerItem];
    v22 = [v21 integratedTimeline];
    v23 = v22;
    if (v22)
    {
      objc_msgSend_currentTime(v22);
    }

    else
    {
      v35 = 0uLL;
      v36 = 0;
    }

    v37 = v35;
    v38 = v36;
  }

  else
  {
    v20 = objc_loadWeakRetained(v19);
    v24 = [v20 currentPlayerItem];
    v21 = v24;
    if (v24)
    {
      objc_msgSend_currentTime(v24);
    }

    else
    {
      v35 = 0uLL;
      v36 = 0;
    }

    v37 = v35;
    v38 = v36;
  }

  v35 = v37;
  v36 = v38;
  v34 = 0;
  if ((*(*(a1 + 32) + 16))())
  {
    if (v12)
    {
      v25 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v25, OS_LOG_TYPE_DEFAULT, "Not setting AVPlayer rate since AVKit will set it for us", buf, 2u);
      }
    }

    else
    {
      v26 = *(a1 + 40);
      v27 = objc_loadWeakRetained((a1 + 56));
      [v27 rateUsedForPlayback];
      *&v28 = v28;
      (*(v26 + 16))(v26, *&v28, v16);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }

  v29 = [v9 currentState];

  return v29;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_856(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  if (*(a1 + 40))
  {
    v3 = [&__block_literal_global_859 copy];
    [v2 setObject:v3 forKey:@"Play completion key"];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v5 = [WeakRetained stateMachine];
  [v5 postEvent:@"Set elapsed time or date" withContext:0 userInfo:v2];

  v7 = *(a1 + 40);
  v6 = *(a1 + 48);
  v9 = *(a1 + 64);
  v8 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&v9)];
  (*(v6 + 16))(v6, v7, 1, v8);
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_860(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 objectForKey:@"Ignore delegate key"];
  v21 = [v9 BOOLValue];

  v10 = [v7 objectForKey:@"Play completion key"];
  v11 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained externalImagePlayer];
  v14 = v13;
  if (v13)
  {
    objc_msgSend_elapsedTime(v13);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = [v15 externalImagePlayer];
  v17 = [v16 playbackDate];
  v18 = +[TVPPlaybackState playing];
  v19 = (*(v11 + 16))(v11, v22, v17, v21, v18, v8, v7, v10 == 0, 0);

  return v19;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_861(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained externalImagePlayer];
  [v3 setRate:0.0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 externalImagePlayer];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (v6)
  {
    objc_msgSend_lastTimeSentToAVKitImageHandler(v6);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  [v5 setElapsedTime:v9];

  return @"Waiting for AVKit seek after finishing external image scanning";
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_862(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = a5;
  v9 = [v8 objectForKey:@"Play completion key"];
  v10 = [v8 objectForKey:@"Volume ramp duration key"];

  [v10 doubleValue];
  v12 = v11;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained progressiveJumpingScrubber];
  [v14 cancelScrub];

  v15 = objc_loadWeakRetained((a1 + 40));
  [v15 setProgressiveJumpingScrubber:0];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = +[TVPPlaybackState playing];
  [v16 setPostLoadingState:v17];

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = +[TVPPlaybackState loading];
  [v18 _setState:v19 updatedRate:1 notifyListeners:0.0];

  v20 = *(a1 + 32);
  v21 = objc_loadWeakRetained((a1 + 40));
  [v21 rateUsedForPlayback];
  *&v22 = v22;
  (*(v20 + 16))(v20, *&v22, v12);

  v23 = objc_loadWeakRetained((a1 + 40));
  v24 = [v23 _activePlayerTimeControlStatus];

  if (v24 != 1)
  {
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_863;
    v26[3] = &unk_279D7BE68;
    v27 = v7;
    v28 = v24;
    [v27 executeBlockAfterCurrentStateTransition:v26];
  }

  return @"Waiting for time control status to be done waiting";
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_863(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Posting time control status change since it is not AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v3 postEvent:@"Time control status did change" withContext:v4];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKey:@"Play completion key"];
  v8 = [v6 objectForKey:@"Volume ramp duration key"];

  [v8 doubleValue];
  v10 = v9;

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained progressiveJumpingScrubber];
  [v12 cancelScrub];

  v13 = objc_loadWeakRetained((a1 + 40));
  [v13 setProgressiveJumpingScrubber:0];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = +[TVPPlaybackState playing];
  [v14 setPostLoadingState:v15];

  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = +[TVPPlaybackState loading];
  [v16 _setState:v17 updatedRate:1 notifyListeners:0.0];

  v18 = *(a1 + 32);
  v19 = objc_loadWeakRetained((a1 + 40));
  [v19 rateUsedForPlayback];
  *&v20 = v20;
  (*(v18 + 16))(v18, *&v20, v10);

  return @"Waiting for seek";
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_865(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a2;
  v9 = [v7 objectForKey:@"Play completion key"];
  v10 = [v7 objectForKey:@"Volume ramp duration key"];

  [v10 doubleValue];
  v12 = v11;

  if (v9)
  {
    v13 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Not setting AVPlayer rate since AVKit will set it for us", v19, 2u);
    }
  }

  else
  {
    v14 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained rateUsedForPlayback];
    *&v16 = v16;
    (*(v14 + 16))(v14, *&v16, v12);
  }

  (*(*(a1 + 40) + 16))();
  v17 = [v8 currentState];

  return v17;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_866(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:{@"Play completion key", a4}];
  (*(*(a1 + 32) + 16))();
  v7 = *(a1 + 40);
  v8 = +[TVPPlaybackState paused];
  v9 = (*(v7 + 16))(v7, v8);

  return v9;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_867(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Ignore delegate key"];
  [v11 BOOLValue];

  v12 = [v9 objectForKey:@"Play completion key"];
  v24 = 0;
  LODWORD(a3) = (*(*(a1 + 32) + 16))();

  if (a3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v14 = +[TVPPlaybackState paused];
    [WeakRetained setPostLoadingState:v14];

    v15 = objc_loadWeakRetained((a1 + 56));
    v16 = [v15 AVQueuePlayer];

    if (!v16)
    {
      v17 = sPlayerLogObject;
      if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      LOWORD(v22) = 0;
      v18 = "No AVPlayer exists yet, will set rate when AVPlayer is created";
      v19 = &v22;
      goto LABEL_9;
    }

    if (v12)
    {
      v17 = sPlayerLogObject;
      if (!os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_11;
      }

      v23 = 0;
      v18 = "Not setting AVPlayer rate since AVKit will set it for us";
      v19 = &v23;
LABEL_9:
      _os_log_impl(&dword_26CEDD000, v17, OS_LOG_TYPE_DEFAULT, v18, v19, 2u);
      goto LABEL_11;
    }

    (*(*(a1 + 40) + 16))(0.0, 0.0);
  }

LABEL_11:
  (*(*(a1 + 48) + 16))(*(a1 + 48));
  v20 = [v8 currentState];

  return v20;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_868(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Ignore delegate key"];
  [v11 BOOLValue];

  v12 = [v9 objectForKey:@"Volume ramp duration key"];
  [v12 doubleValue];
  v14 = v13;

  v15 = [v9 objectForKey:@"Play completion key"];
  v20 = 0;
  LODWORD(a3) = (*(a1[4] + 16))();

  if (a3)
  {
    if (v15)
    {
      v16 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *v19 = 0;
        _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "Not setting AVPlayer rate since AVKit will set it for us", v19, 2u);
      }
    }

    else
    {
      (*(a1[5] + 16))(0.0, v14);
    }
  }

  (*(a1[6] + 16))();
  v17 = [v8 currentState];

  return v17;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_869(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 objectForKey:@"Ignore delegate key"];
  v21 = [v9 BOOLValue];

  v10 = [v7 objectForKey:@"Play completion key"];
  v11 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v13 = [WeakRetained externalImagePlayer];
  v14 = v13;
  if (v13)
  {
    objc_msgSend_elapsedTime(v13);
  }

  else
  {
    memset(v22, 0, sizeof(v22));
  }

  v15 = objc_loadWeakRetained((a1 + 40));
  v16 = [v15 externalImagePlayer];
  v17 = [v16 playbackDate];
  v18 = +[TVPPlaybackState paused];
  v19 = (*(v11 + 16))(v11, v22, v17, v21, v18, v8, v7, v10 == 0, 0);

  return v19;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_870(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained externalImagePlayer];
  [v3 setRate:0.0];

  v4 = objc_loadWeakRetained((a1 + 32));
  v5 = [v4 externalImagePlayer];
  v6 = objc_loadWeakRetained((a1 + 32));
  v7 = v6;
  if (v6)
  {
    objc_msgSend_lastTimeSentToAVKitImageHandler(v6);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  [v5 setElapsedTime:v9];

  return @"Waiting for AVKit seek after finishing external image scanning";
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_871(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Play completion key"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v10 = [WeakRetained progressiveJumpingScrubber];
  [v10 cancelScrub];

  v11 = objc_loadWeakRetained((a1 + 40));
  [v11 setProgressiveJumpingScrubber:0];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = +[TVPPlaybackState paused];
  [v12 setPostLoadingState:v13];

  v14 = objc_loadWeakRetained((a1 + 40));
  v15 = +[TVPPlaybackState loading];
  [v14 _setState:v15 updatedRate:1 notifyListeners:0.0];

  (*(*(a1 + 32) + 16))(0.0, 0.0);
  v16 = objc_loadWeakRetained((a1 + 40));
  v17 = [v16 _activePlayerTimeControlStatus];

  if (v17 != 1)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_872;
    v19[3] = &unk_279D7BE68;
    v20 = v7;
    v21 = v17;
    [v20 executeBlockAfterCurrentStateTransition:v19];
  }

  return @"Waiting for time control status to be done waiting";
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_872(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Posting time control status change since it is not AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v3 postEvent:@"Time control status did change" withContext:v4];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_873(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:{@"Play completion key", a4}];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = [WeakRetained progressiveJumpingScrubber];
  [v8 cancelScrub];

  v9 = objc_loadWeakRetained((a1 + 40));
  [v9 setProgressiveJumpingScrubber:0];

  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = +[TVPPlaybackState paused];
  [v10 setPostLoadingState:v11];

  v12 = objc_loadWeakRetained((a1 + 40));
  v13 = +[TVPPlaybackState loading];
  [v12 _setState:v13 updatedRate:1 notifyListeners:0.0];

  (*(*(a1 + 32) + 16))(0.0, 0.0);
  return @"Waiting for seek";
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_874(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Play completion key"];
  if (v8)
  {
    v9 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_26CEDD000, v9, OS_LOG_TYPE_DEFAULT, "Not setting AVPlayer rate since AVKit will set it for us", v12, 2u);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))(0.0, 0.0);
  }

  (*(*(a1 + 40) + 16))();
  v10 = [v7 currentState];

  return v10;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_875(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Rate key"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v9 objectForKey:@"Play completion key"];
  v30 = 0;
  v15 = (*(*(a1 + 32) + 16))(v13);

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v17 = [WeakRetained _integratedTimelineEnabled];

    v18 = *(a1 + 40);
    v19 = (a1 + 56);
    if (v17)
    {
      v20 = objc_loadWeakRetained(v19);
      v21 = [v20 currentPlayerItem];
      v22 = [v21 integratedTimeline];
      v23 = v22;
      if (v22)
      {
        objc_msgSend_currentTime(v22);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
      }

      v24 = (*(v18 + 16))(v18, &v27, 0, v14 != 0, v13);
    }

    else
    {
      v20 = objc_loadWeakRetained(v19);
      v25 = [v20 currentPlayerItem];
      v21 = v25;
      if (v25)
      {
        objc_msgSend_currentTime(v25);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
      }

      v24 = (*(v18 + 16))(v18, &v27, 0, v14 != 0, v13);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, 1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v24 = [v8 currentState];
  }

  return v24;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_876(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Rate key"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v9 objectForKey:@"Play completion key"];
  v30 = 0;
  v15 = (*(*(a1 + 32) + 16))(v13);

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v17 = [WeakRetained _integratedTimelineEnabled];

    v18 = *(a1 + 40);
    v19 = (a1 + 56);
    if (v17)
    {
      v20 = objc_loadWeakRetained(v19);
      v21 = [v20 currentPlayerItem];
      v22 = [v21 integratedTimeline];
      v23 = v22;
      if (v22)
      {
        objc_msgSend_currentTime(v22);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
      }

      v24 = (*(v18 + 16))(v18, &v27, 0, v14 != 0, v13);
    }

    else
    {
      v20 = objc_loadWeakRetained(v19);
      v25 = [v20 currentPlayerItem];
      v21 = v25;
      if (v25)
      {
        objc_msgSend_currentTime(v25);
      }

      else
      {
        v27 = 0;
        v28 = 0;
        v29 = 0;
      }

      v24 = (*(v18 + 16))(v18, &v27, 0, v14 != 0, v13);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, 1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v24 = [v8 currentState];
  }

  return v24;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_877(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Rate key"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v9 objectForKey:@"Play completion key"];
  v34 = 0;
  v15 = (*(*(a1 + 32) + 16))(v13);

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    if ([WeakRetained currentMediaItemIsStreaming])
    {
      v17 = 0;
    }

    else
    {
      v19 = objc_loadWeakRetained((a1 + 56));
      v20 = [v19 currentPlayerItem];
      v17 = [v20 isPlaybackBufferEmpty];
    }

    v21 = objc_loadWeakRetained((a1 + 56));
    v22 = [v21 _integratedTimelineEnabled];

    v23 = *(a1 + 40);
    v24 = (a1 + 56);
    if (v22)
    {
      v25 = objc_loadWeakRetained(v24);
      v26 = [v25 currentPlayerItem];
      v27 = [v26 integratedTimeline];
      v28 = v27;
      if (v27)
      {
        objc_msgSend_currentTime(v27);
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
      }

      v18 = (*(v23 + 16))(v23, &v31, v17, v14 != 0, v13);
    }

    else
    {
      v25 = objc_loadWeakRetained(v24);
      v29 = [v25 currentPlayerItem];
      v26 = v29;
      if (v29)
      {
        objc_msgSend_currentTime(v29);
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v33 = 0;
      }

      v18 = (*(v23 + 16))(v23, &v31, v17, v14 != 0, v13);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, 1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v18 = [v8 currentState];
  }

  return v18;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_878(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Rate key"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v9 objectForKey:@"Play completion key"];
  v23 = 0;
  v15 = (*(*(a1 + 32) + 16))(v13);

  if (v15)
  {
    v16 = *(a1 + 40);
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v18 = [WeakRetained externalImagePlayer];
    v19 = v18;
    if (v18)
    {
      objc_msgSend_elapsedTime(v18);
    }

    else
    {
      memset(v22, 0, sizeof(v22));
    }

    v20 = (*(v16 + 16))(v16, v22, 1, v14 != 0, v13);

    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, 1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v20 = [v8 currentState];
  }

  return v20;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_879(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Play completion key"];
  (*(*(a1 + 32) + 16))();
  v9 = [v7 currentState];

  return v9;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_880(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  v10 = a3;
  v11 = [v9 objectForKey:@"Rate key"];
  [v11 doubleValue];
  v13 = v12;
  v14 = [v9 objectForKey:@"Play completion key"];
  v24 = 0;
  v15 = (*(*(a1 + 32) + 16))(v13);

  if (v15)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 56));
    v17 = [WeakRetained currentMediaItemIsStreaming];

    v18 = *(a1 + 40);
    v19 = objc_loadWeakRetained((a1 + 56));
    v20 = v19;
    if (v19)
    {
      objc_msgSend_timeBeingSeekedTo(v19);
    }

    else
    {
      memset(v23, 0, sizeof(v23));
    }

    v21 = (*(v18 + 16))(v18, v23, v17 ^ 1u, v14 != 0, v13);

    (*(*(a1 + 48) + 16))(*(a1 + 48), v14, 1);
  }

  else
  {
    (*(*(a1 + 48) + 16))();
    v21 = [v8 currentState];
  }

  return v21;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_881(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Play completion key"];
  (*(*(a1 + 32) + 16))();
  v9 = [v7 currentState];

  return v9;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_882(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v22 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"Media item loader key"];
  v13 = [v12 mediaItem];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained playlist];
  v16 = [v15 currentMediaItem];
  LODWORD(a3) = [v13 isEqualToMediaItem:v16];

  if (a3)
  {
    v17 = *(a1 + 32);
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_883;
    v24[3] = &unk_279D7BF80;
    objc_copyWeak(&v25, (a1 + 40));
    [v17 executeBlockAfterCurrentStateTransition:{v24, v22}];
    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = [v18 waitsAfterPreparingMediaItems];

    if (v19)
    {
      v20 = @"Waiting for signal after preparing item";
    }

    else
    {
      v20 = @"Waiting for AVAsset to load";
    }

    objc_destroyWeak(&v25);
  }

  else
  {
    v20 = [v9 currentState];
  }

  return v20;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_883(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackMediaItemDidBecomePreparedNotification" object:WeakRetained];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_10_884(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v20 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"Media item loader key"];
  v13 = [v12 mediaItem];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained playlist];
  v16 = [v15 currentMediaItem];
  LODWORD(a3) = [v13 isEqualToMediaItem:v16];

  if (a3)
  {
    v17 = *(a1 + 32);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_11;
    v21[3] = &unk_279D7BA58;
    objc_copyWeak(&v23, (a1 + 40));
    v22 = v12;
    [v17 executeBlockAfterCurrentStateTransition:v21];

    objc_destroyWeak(&v23);
    v18 = @"Waiting for media item to prepare for playback initiation";
  }

  else
  {
    v18 = [v9 currentState];
  }

  return v18;
}

uint64_t __42__TVPPlayer__registerStateMachineHandlers__block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentMediaItemIsStreaming:{objc_msgSend(*(a1 + 32), "containsStreamingAVAsset")}];

  v3 = *(a1 + 32);

  return [v3 prepareForPlaybackInitiation];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_12(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Media item loader key"];
  v9 = [v8 mediaItem];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11 = [WeakRetained playlist];
  v12 = [v11 nextMediaItem];
  v13 = [v9 isEqualToMediaItem:v12];

  if (v13)
  {
    [v8 prepareForPlaybackInitiation];
  }

  v14 = [v7 currentState];

  return v14;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_13(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v79 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v68 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v11 objectForKey:@"Media item loader key"];
  v13 = [v12 mediaItem];
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v15 = [WeakRetained playlist];
  v16 = [v15 currentMediaItem];
  v17 = [v13 isEqualToMediaItem:v16];

  if (!v17)
  {
    v24 = [v9 currentState];
    goto LABEL_29;
  }

  v18 = objc_loadWeakRetained((a1 + 64));
  v19 = [v18 createsPlayerItemButDoesNotEnqueue];

  if (!v19)
  {
    v20 = [v12 timingData];
    v67 = [v12 mediaItem];
    v66 = [v67 reportingDelegate];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v26 = v25;
    [v20 setStartTimeForAVPlayerItemLoading:?];
    [v20 setStartTimeForBuffering:v26];
    if (objc_opt_respondsToSelector())
    {
      v27 = objc_loadWeakRetained((a1 + 64));
      [v66 mediaItemWillStartBuffering:v67 player:v27];
    }

    v28 = *(a1 + 32);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_15;
    v73[3] = &unk_279D7BF80;
    objc_copyWeak(&v74, (a1 + 64));
    [v28 executeBlockAfterCurrentStateTransition:v73];
    v29 = objc_loadWeakRetained((a1 + 64));
    v30 = [v29 AVQueuePlayer];
    v31 = v30 == 0;

    if (v31)
    {
      v32 = objc_loadWeakRetained((a1 + 64));
      v65 = [v32 earlyAVQueuePlayer];

      v33 = objc_loadWeakRetained((a1 + 64));
      [v33 setEarlyAVQueuePlayer:0];

      v34 = sPlayerLogObject;
      v35 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
      if (v65)
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v34, OS_LOG_TYPE_DEFAULT, "Using previously created AVQueuePlayer", buf, 2u);
        }
      }

      else
      {
        if (v35)
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v34, OS_LOG_TYPE_DEFAULT, "Creating AVQueuePlayer", buf, 2u);
        }

        v65 = +[TVPPlayer _newAVQueuePlayer];
      }

      v36 = [v65 playbackCoordinator];
      v37 = objc_loadWeakRetained((a1 + 64));
      [v36 setDelegate:v37];

      v38 = objc_loadWeakRetained((a1 + 64));
      [v38 setAVQueuePlayer:v65];

      v39 = objc_loadWeakRetained((a1 + 64));
      [v39 _logExternalPlaybackType];

      v40 = objc_loadWeakRetained((a1 + 64));
      LODWORD(v37) = [v40 _integratedTimelineEnabled];

      if (v37)
      {
        v41 = [objc_alloc(MEMORY[0x277CE65A8]) initWithPrimaryPlayer:v65];
        v42 = objc_loadWeakRetained((a1 + 64));
        v43 = objc_opt_class();
        v44 = [v41 interstitialPlayer];
        [v43 _configureAutoSubtitlesForPlayer:v44];

        v45 = objc_loadWeakRetained((a1 + 64));
        [v45 setInterstitialEventMonitor:v41];
      }

      v46 = *(a1 + 32);
      v71[0] = MEMORY[0x277D85DD0];
      v71[1] = 3221225472;
      v71[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_886;
      v71[3] = &unk_279D7BF80;
      objc_copyWeak(&v72, (a1 + 64));
      [v46 executeBlockAfterCurrentStateTransition:v71];
      objc_destroyWeak(&v72);
    }

    v47 = objc_loadWeakRetained((a1 + 64));
    if (([v47 haveEverEnqueuedPlayerItem] & 1) == 0)
    {
      v48 = objc_loadWeakRetained((a1 + 64));
      v49 = [v48 postLoadingState];
      v50 = +[TVPPlaybackState playing];
      v51 = v49 == v50;

      if (!v51)
      {
LABEL_23:
        v57 = objc_loadWeakRetained((a1 + 64));
        v58 = [v57 AVQueuePlayer];
        v59 = [v58 items];
        v60 = [v59 count] == 0;

        if (v60)
        {
          (*(*(a1 + 56) + 16))();
        }

        v61 = objc_loadWeakRetained((a1 + 64));
        v62 = [v61 currentPlayerItem];
        v63 = [v62 status] == 1;

        if (v63)
        {
          v69[0] = MEMORY[0x277D85DD0];
          v69[1] = 3221225472;
          v69[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_887;
          v69[3] = &unk_279D7BF80;
          objc_copyWeak(&v70, (a1 + 64));
          [v9 executeBlockAfterCurrentStateTransition:v69];
          objc_destroyWeak(&v70);
        }

        objc_destroyWeak(&v74);

        goto LABEL_28;
      }

      v52 = sPlayerLogObject;
      if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
      {
        v53 = objc_loadWeakRetained((a1 + 64));
        [v53 rateUsedForPlayback];
        *buf = 134217984;
        v78 = v54;
        _os_log_impl(&dword_26CEDD000, v52, OS_LOG_TYPE_DEFAULT, "Fast start: setting player's rate to %f prior to enqueueing first item", buf, 0xCu);
      }

      v55 = *(a1 + 48);
      v47 = objc_loadWeakRetained((a1 + 64));
      [v47 rateUsedForPlayback];
      *&v56 = v56;
      (*(v55 + 16))(v55, *&v56, 0.0);
    }

    goto LABEL_23;
  }

  v20 = (*(*(a1 + 40) + 16))();
  v21 = objc_loadWeakRetained((a1 + 64));
  [v21 setUnqueuedPlayerItem:v20];

  v22 = objc_loadWeakRetained((a1 + 64));
  v23 = [v22 stateMachine];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_14;
  v75[3] = &unk_279D7BF80;
  objc_copyWeak(&v76, (a1 + 64));
  [v23 executeBlockAfterCurrentStateTransition:v75];

  objc_destroyWeak(&v76);
LABEL_28:

  v24 = @"Waiting for initial AVPlayerItem status to become ready to play";
LABEL_29:

  return v24;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_14(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlayerUnqueueudPlayerItemReadyNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_15(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackReportingBufferingWillStartNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_886(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlayerExternalPlaybackTypeDidChangeNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_887(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained stateMachine];
  v3 = objc_loadWeakRetained((a1 + 32));
  v4 = [v3 currentPlayerItem];
  [v2 postEvent:@"Player item status did become ready to play" withContext:v4];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_888(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Media item loader key"];
  v9 = [v8 mediaItem];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v11 = [WeakRetained playlist];
  v12 = [v11 nextMediaItem];
  v13 = [v9 isEqualToMediaItem:v12];

  if (v13)
  {
    v14 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v17 = 0;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Enqueueing player item for next media item", v17, 2u);
    }

    (*(*(a1 + 32) + 16))();
  }

  v15 = [v7 currentState];

  return v15;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_889(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v84 = *MEMORY[0x277D85DE8];
  v64 = a2;
  v62 = a3;
  v9 = a4;
  v63 = a5;
  v10 = v9;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v65 = [WeakRetained _activePlayerItem];

  v12 = objc_loadWeakRetained((a1 + 64));
  LODWORD(v9) = [v12 _integratedTimelineEnabled];

  if (!v9 || v65 == v10)
  {
    v15 = objc_loadWeakRetained((a1 + 64));
    v59 = [v15 currentMediaItemLoader];

    v61 = [v59 timingData];
    v16 = objc_loadWeakRetained((a1 + 64));
    v17 = [v16 playlist];
    v18 = [v17 currentMediaItem];

    v60 = [v18 reportingDelegate];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v20 = v19;
    [v61 setEndTimeForAVPlayerItemLoading:?];
    [v61 setStartTimeForBuffering:v20];
    if (objc_opt_respondsToSelector())
    {
      [v61 startTimeForAVPlayerItemLoading];
      v22 = v21;
      [v61 endTimeForAVPlayerItemLoading];
      v24 = v23 - v22;
      v25 = objc_loadWeakRetained((a1 + 64));
      [v60 mediaItemPlayerItemStatusDidBecomeReadyToPlay:v18 timeTakenForOperation:v25 player:v24];
    }

    v26 = [v18 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
    [v26 setInitialFPSRequestsComplete:1];

    (*(*(a1 + 40) + 16))();
    v27 = objc_loadWeakRetained((a1 + 64));
    [v27 setCurrentDirectionOfPlaylistChange:0];

    v28 = objc_loadWeakRetained((a1 + 64));
    [v28 setLoadingInitialItemInPlaylist:0];

    v29 = objc_loadWeakRetained((a1 + 64));
    [v29 updateAudioSelectionCriteria];

    v30 = objc_loadWeakRetained((a1 + 64));
    v31 = [v30 currentPlayerItem];

    v57 = (*(*(a1 + 48) + 16))();
    v58 = [v18 mediaItemMetadataForProperty:@"TVPMediaItemMetadataChapterCollections"];
    v32 = [MEMORY[0x277CBEB18] array];
    v33 = objc_loadWeakRetained((a1 + 64));
    v34 = [v33 currentMediaItem];
    v35 = [v34 hasTrait:@"TVPMediaItemTraitIsScene"];

    if ((v35 & 1) == 0)
    {
      if (v57)
      {
        [v32 addObject:?];
      }

      if (v58)
      {
        [v32 addObjectsFromArray:v58];
      }
    }

    v36 = [v32 firstObject];
    v37 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      v38 = v37;
      v39 = objc_loadWeakRetained((a1 + 64));
      v40 = [v39 currentMediaItemIsStreaming];
      v41 = @"FILE";
      if (v40)
      {
        v41 = @"HLS";
      }

      *buf = 138412290;
      v79 = v41;
      _os_log_impl(&dword_26CEDD000, v38, OS_LOG_TYPE_DEFAULT, "Media Type: %@", buf, 0xCu);
    }

    v42 = *(a1 + 32);
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_898;
    v71[3] = &unk_279D7CCB0;
    v56 = v31;
    v72 = v56;
    objc_copyWeak(&v77, (a1 + 64));
    v73 = v65;
    v43 = v32;
    v74 = v43;
    v44 = v36;
    v75 = v44;
    v45 = v18;
    v76 = v45;
    [v42 executeBlockAfterCurrentStateTransition:v71];
    v46 = objc_loadWeakRetained((a1 + 64));
    v47 = [v46 _activePlayer];

    v48 = [(__CFString *)v47 timeControlStatus];
    v49 = sPlayerLogObject;
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = objc_loadWeakRetained((a1 + 64));
      v51 = [v50 AVQueuePlayer];
      v52 = @"interstitial";
      if (v47 == v51)
      {
        v52 = @"main";
      }

      if (v48)
      {
        if (v48 == 2)
        {
          v53 = @"AVPlayerTimeControlStatusPlaying";
        }

        else
        {
          v53 = @"Unknown";
          if (v48 == 1)
          {
            v53 = @"AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate";
          }
        }
      }

      else
      {
        v53 = @"AVPlayerTimeControlStatusPaused";
      }

      *buf = 138412802;
      v79 = v47;
      v80 = 2112;
      v81 = v52;
      v82 = 2112;
      v83 = v53;
      _os_log_impl(&dword_26CEDD000, v49, OS_LOG_TYPE_DEFAULT, "After becoming ready to play, AVPlayer %@ %@ player timeControlStatus is %@.", buf, 0x20u);
    }

    if (v48 != 1)
    {
      v68[0] = MEMORY[0x277D85DD0];
      v68[1] = 3221225472;
      v68[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_899;
      v68[3] = &unk_279D7BE68;
      v69 = v64;
      v70 = v48;
      [v69 executeBlockAfterCurrentStateTransition:v68];
    }

    v54 = *(a1 + 32);
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_900;
    v66[3] = &unk_279D7BF30;
    v67 = *(a1 + 56);
    [v54 executeBlockAfterCurrentStateTransition:v66];

    objc_destroyWeak(&v77);
    v14 = @"Waiting for time control status to be done waiting";
  }

  else
  {
    v13 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v79 = v10;
      v80 = 2112;
      v81 = v65;
      _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring status change from non-active player item %@.  Active player item is %@", buf, 0x16u);
    }

    v14 = [v64 currentState];
  }

  return v14;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_898(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) hasVideo];
  v3 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v4 = @"NO";
    if (v2)
    {
      v4 = @"YES";
    }

    *buf = 138412290;
    *&buf[4] = v4;
    _os_log_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_DEFAULT, "hasVideo: %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v6 = [WeakRetained currentMediaItem];
  v7 = [v6 hasTrait:@"TVPMediaItemTraitTreatAsVideo"];

  if (v7)
  {
    v8 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v8, OS_LOG_TYPE_DEFAULT, "Treating as video since it has TVPMediaItemTraitTreatAsVideo", buf, 2u);
    }
  }

  else if (!v2)
  {
    goto LABEL_10;
  }

  v9 = objc_loadWeakRetained((a1 + 72));
  [v9 setCurrentMediaItemHasVideoContent:1];

LABEL_10:
  v10 = objc_loadWeakRetained((a1 + 72));
  [v10 setCurrentMediaItemInitialLoadingComplete:1];

  v11 = objc_loadWeakRetained((a1 + 72));
  v12 = [v11 _integratedTimelineEnabled];

  if (v12)
  {
    v13 = [*(a1 + 32) integratedTimeline];
    v14 = v13;
    if (v13)
    {
      objc_msgSend_currentTime(v13);
    }

    else
    {
      memset(v77, 0, 24);
    }

    *buf = *v77;
    v79 = *&v77[16];
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      objc_msgSend_currentTime(v15);
    }

    else
    {
      memset(v77, 0, 24);
    }

    *buf = *v77;
    v79 = *&v77[16];
  }

  v16 = objc_loadWeakRetained((a1 + 72));
  v17 = *(a1 + 32);
  v18 = v16;
  v19 = [v18 _currentDateFromPlayerItem:v17];
  *v77 = *buf;
  *&v77[16] = v79;
  [v18 _notifyListenersOfElapsedTimeChange:v77 playbackDate:v19 dueToTimeJump:0];

  v20 = objc_loadWeakRetained((a1 + 72));
  [v20 _notifyOfMediaSelectionOptionChanges];

  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v21 = objc_loadWeakRetained((a1 + 72));
  v22 = [v21 subtitleOptions];

  v23 = [v22 countByEnumeratingWithState:&v71 objects:v76 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v72;
    while (2)
    {
      for (i = 0; i != v24; ++i)
      {
        if (*v72 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v71 + 1) + 8 * i);
        if ([v27 subtitleType] == 2 || objc_msgSend(v27, "subtitleType") == 1)
        {
          v28 = objc_loadWeakRetained((a1 + 72));
          v29 = [v28 currentMediaItem];
          [v29 setMediaItemMetadata:MEMORY[0x277CBEC38] forProperty:@"TVPMediaItemMetadataContainsClosedCaptions"];

          goto LABEL_30;
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v71 objects:v76 count:16];
      if (v24)
      {
        continue;
      }

      break;
    }
  }

LABEL_30:

  v30 = objc_loadWeakRetained((a1 + 72));
  v31 = [v30 selectedAudioOption];

  v32 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    v33 = *(a1 + 40);
    *v77 = 138412546;
    *&v77[4] = v33;
    *&v77[12] = 2112;
    *&v77[14] = v31;
    _os_log_impl(&dword_26CEDD000, v32, OS_LOG_TYPE_DEFAULT, "Setting cached audio option from active player item %@ to %@.", v77, 0x16u);
  }

  v34 = objc_loadWeakRetained((a1 + 72));
  [v34 setCachedSelectedAudioOption:v31];

  v35 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v67 = 0u;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v36 = objc_loadWeakRetained((a1 + 72));
  v37 = [v36 audioOptions];

  v38 = [v37 countByEnumeratingWithState:&v67 objects:v75 count:16];
  if (v38)
  {
    v39 = v38;
    v40 = *v68;
    do
    {
      for (j = 0; j != v39; ++j)
      {
        if (*v68 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = [*(*(&v67 + 1) + 8 * j) languageCodeBCP47];
        if (v42 && ([v35 containsObject:v42] & 1) == 0)
        {
          [v35 addObject:v42];
        }
      }

      v39 = [v37 countByEnumeratingWithState:&v67 objects:v75 count:16];
    }

    while (v39);
  }

  v43 = objc_loadWeakRetained((a1 + 72));
  [objc_opt_class() updateSupplementaryAvailableAudioLanguageCodes:v35];

  v44 = objc_loadWeakRetained((a1 + 72));
  [v44 setChapterCollections:*(a1 + 48)];

  v45 = objc_loadWeakRetained((a1 + 72));
  [v45 setCurrentChapterCollection:*(a1 + 56)];

  v46 = objc_loadWeakRetained((a1 + 72));
  v47 = [v46 currentMediaItem];
  v48 = [v47 mediaItemMetadataForProperty:@"TVPMediaItemMetadataInterstitialCollection"];
  [v46 setCurrentInterstitialCollection:v48];

  v49 = objc_loadWeakRetained((a1 + 72));
  [v49 willChangeValueForKey:@"seekableDateRange"];

  v50 = objc_loadWeakRetained((a1 + 72));
  [v50 didChangeValueForKey:@"seekableDateRange"];

  v51 = objc_loadWeakRetained((a1 + 72));
  *v77 = *buf;
  *&v77[16] = v79;
  [v51 _updateIsLiveForElapsedTime:v77];

  v52 = objc_loadWeakRetained((a1 + 72));
  [v52 setCurrentMediaItemHasDates:{objc_msgSend(v52, "_currentPlayerItemContainsDates")}];

  v53 = objc_loadWeakRetained((a1 + 72));
  objc_msgSend_duration(v53);
  v55 = v54;

  if (v55 > 0.0 && v55 != 3.40282347e38)
  {
    v56 = objc_loadWeakRetained((a1 + 72));
    v57 = [v56 currentMediaItem];
    v58 = [v57 mediaItemMetadataForProperty:@"TVPMediaItemMetadataInterstitialCollection"];

    if (v58)
    {
      [v58 timeAdjustedByRemovingInterstitials:v55];
      v55 = v59;
    }

    v60 = *(a1 + 64);
    v61 = [MEMORY[0x277CCABB0] numberWithDouble:v55];
    [v60 setMediaItemMetadata:v61 forProperty:@"TVPMediaItemMetadataDuration"];
  }

  v62 = objc_loadWeakRetained((a1 + 72));
  [v62 _populateCurrentPlayerItemWithUpNextMetadata];

  v63 = objc_loadWeakRetained((a1 + 72));
  v64 = [v63 _integratedTimelineEnabled];

  if (v64)
  {
    v65 = objc_loadWeakRetained((a1 + 72));
    v66 = [*(a1 + 32) integratedTimeline];
    [v65 _addBoundaryTimeObserversToIntegratedTimeline:v66];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_899(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Posting time control status change since it is not AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v3 postEvent:@"Time control status did change" withContext:v4];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_901(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  v8 = [v6 currentState];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v10 = [WeakRetained _activePlayerItem];

  if (v10 == v7)
  {
    v12 = objc_loadWeakRetained((a1 + 32));
    v13 = [v12 selectedAudioOption];

    v14 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v13;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Setting cached audio option from active player item %@ to %@.", buf, 0x16u);
    }

    v15 = objc_loadWeakRetained((a1 + 32));
    [v15 setCachedSelectedAudioOption:v13];

    v16 = objc_loadWeakRetained((a1 + 32));
    v17 = [v16 _activePlayer];

    v18 = [(__CFString *)v17 timeControlStatus];
    v19 = sPlayerLogObject;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = objc_loadWeakRetained((a1 + 32));
      v21 = [v20 AVQueuePlayer];
      v22 = @"interstitial";
      if (v17 == v21)
      {
        v22 = @"main";
      }

      if (v18)
      {
        if (v18 == 2)
        {
          v23 = @"AVPlayerTimeControlStatusPlaying";
        }

        else
        {
          v23 = @"Unknown";
          if (v18 == 1)
          {
            v23 = @"AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate";
          }
        }
      }

      else
      {
        v23 = @"AVPlayerTimeControlStatusPaused";
      }

      *buf = 138412802;
      v29 = v17;
      v30 = 2112;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_26CEDD000, v19, OS_LOG_TYPE_DEFAULT, "After becoming ready to play, AVPlayer %@ %@ player timeControlStatus is %@.", buf, 0x20u);
    }

    if (v18 != 1)
    {
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_902;
      v25[3] = &unk_279D7BE68;
      v26 = v6;
      v27 = v18;
      [v26 executeBlockAfterCurrentStateTransition:v25];
    }

    v8 = @"Waiting for time control status to be done waiting";
  }

  else
  {
    v11 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v29 = v7;
      v30 = 2112;
      v31 = v10;
      _os_log_impl(&dword_26CEDD000, v11, OS_LOG_TYPE_DEFAULT, "Ignoring status change from non-active player item %@.  Active player item is %@", buf, 0x16u);
    }
  }

  return v8;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_902(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Posting time control status change since it is not AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v3 postEvent:@"Time control status did change" withContext:v4];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_903(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = [WeakRetained _integratedTimelineEnabled];

  if (v9)
  {
    v10 = objc_loadWeakRetained((a1 + 32));
    v11 = [v10 _activePlayerItem];

    if (v11 == v7)
    {
      v13 = objc_loadWeakRetained((a1 + 32));
      v14 = [v13 selectedAudioOption];

      v15 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v14;
        _os_log_impl(&dword_26CEDD000, v15, OS_LOG_TYPE_DEFAULT, "Setting cached audio option from active player item %@ to %@.", &v19, 0x16u);
      }

      v16 = objc_loadWeakRetained((a1 + 32));
      [v16 setCachedSelectedAudioOption:v14];
    }

    else
    {
      v12 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412546;
        v20 = v7;
        v21 = 2112;
        v22 = v11;
        _os_log_impl(&dword_26CEDD000, v12, OS_LOG_TYPE_DEFAULT, "Ignoring status change from non-active player item %@.  Active player item is %@", &v19, 0x16u);
      }
    }
  }

  v17 = [v6 currentState];

  return v17;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_904(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v35 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [v11 integerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _activePlayerTimeControlStatus];
  }

  v15 = objc_loadWeakRetained((a1 + 32));
  v16 = [v15 _activePlayer];

  if (v13 == 2)
  {
    v17 = [v16 currentItem];
    v18 = [v17 status];

    if (v18 == 1)
    {
      v19 = objc_loadWeakRetained((a1 + 32));
      v20 = [v19 _activePlayerItem];

      v21 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v32 = v16;
        v33 = 2112;
        v34 = v20;
        _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "timeControlStatus is AVPlayerTimeControlStatusPlaying for %@ and player item status is AVPlayerItemStatusReadyToPlay for active item %@, but we're still waiting.  Posting player item status change to ReadyToPlay", buf, 0x16u);
      }

      v25 = MEMORY[0x277D85DD0];
      v26 = 3221225472;
      v27 = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_905;
      v28 = &unk_279D7BA58;
      objc_copyWeak(&v30, (a1 + 32));
      v22 = v20;
      v29 = v22;
      [v9 executeBlockAfterCurrentStateTransition:&v25];

      objc_destroyWeak(&v30);
    }
  }

  v23 = [v9 currentState];

  return v23;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_905(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Player item status did become ready to play" withContext:*(a1 + 32)];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_906(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v64 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v55 = a3;
  v10 = a4;
  v56 = a5;
  if (v10)
  {
    v11 = [v10 integerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    v11 = [WeakRetained _activePlayerTimeControlStatus];
  }

  v57 = [v9 currentState];
  if (v11 != 1)
  {
    v14 = objc_loadWeakRetained((a1 + 48));
    v54 = [v14 currentMediaItemLoader];

    v15 = [v54 timingData];
    v16 = [v54 mediaItem];
    v53 = [v16 reportingDelegate];
    if (([v15 initialLoadingComplete] & 1) == 0)
    {
      [v15 setInitialLoadingComplete:1];
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      [v15 setEndTimeForBuffering:?];
      if (objc_opt_respondsToSelector())
      {
        [v15 startTimeForBuffering];
        v18 = v17;
        [v15 endTimeForBuffering];
        v20 = v19 - v18;
        v21 = objc_loadWeakRetained((a1 + 48));
        [v53 mediaItemBufferingDidBecomeLikelyToKeepUp:v16 timeTakenForOperation:v21 player:v20];
      }

      v22 = *(a1 + 32);
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_909;
      v58[3] = &unk_279D7BF80;
      objc_copyWeak(&v59, (a1 + 48));
      [v22 executeBlockAfterCurrentStateTransition:v58];
      v23 = [v16 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      [v23 addEndEventWithName:TVPPlaybackReportingEventCreatePlayerItemToLikelyToKeepUp];

      v24 = [v16 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      [v24 addStartEventWithName:TVPPlaybackReportingEventWaitingForTimeControlStatus];

      v25 = [v16 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      [v25 addEndEventWithName:TVPPlaybackReportingEventWaitingForTimeControlStatus];

      [v15 setStartTimeForBuffering:0.0];
      [v15 setEndTimeForBuffering:0.0];
      if (objc_opt_respondsToSelector())
      {
        [v15 totalInitialLoadingTime];
        v27 = v26;
        v28 = objc_loadWeakRetained((a1 + 48));
        [v53 mediaItemAllInitialLoadingComplete:v16 totalTime:v28 player:v27];
      }

      objc_destroyWeak(&v59);
    }

    v29 = objc_loadWeakRetained((a1 + 48));
    v30 = [v29 initialMediaItemHasCompletedInitialLoading];

    if ((v30 & 1) == 0)
    {
      v31 = objc_loadWeakRetained((a1 + 48));
      [v31 setInitialMediaItemHasCompletedInitialLoading:1];

      v32 = [v16 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      v33 = [v32 rtcReportingEventDict];

      v34 = [v33 objectForKey:TVPPlaybackReportingEventTotalUIStartupTimeNotIncludingUserInteraction];
      if (v34)
      {
        v35 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          log = v35;
          v36 = objc_loadWeakRetained((a1 + 48));
          v37 = [v36 currentPlayerItem];
          *buf = 138412546;
          v61 = v34;
          v62 = 2112;
          v63 = v37;
          _os_log_impl(&dword_26CEDD000, log, OS_LOG_TYPE_DEFAULT, "Setting clickToPlay value %@ on player item %@", buf, 0x16u);
        }

        v38 = objc_loadWeakRetained((a1 + 48));
        v39 = [v38 currentPlayerItem];
        [v39 setReportingValueWithNumber:v34 forKey:@"clickToPlay"];
      }
    }

    v40 = objc_loadWeakRetained((a1 + 48));
    v41 = [v40 playlist];
    [v41 setNumConsecutivePlaybackFailures:0];

    if (v11)
    {
      if (v11 != 2)
      {
LABEL_29:

        goto LABEL_30;
      }

      v42 = objc_loadWeakRetained((a1 + 48));
      v43 = [v42 _activePlayerItem];

      if ([v43 status] == 1)
      {
        (*(*(a1 + 40) + 16))();
        v57 = v44 = v57;
LABEL_28:

        goto LABEL_29;
      }

      v47 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        v48 = v47;
        v49 = objc_loadWeakRetained((a1 + 48));
        v50 = [v49 _activePlayer];
        *buf = 138412546;
        v61 = v50;
        v62 = 2112;
        v63 = v43;
        _os_log_impl(&dword_26CEDD000, v48, OS_LOG_TYPE_DEFAULT, "Active player %@ has timeControlStatus of AVPlayerTimeControlStatusPlaying, but active player item %@ status isn't AVPlayerItemStatusReadyToPlay.  Waiting until it becomes ready to play.", buf, 0x16u);
      }

      v44 = v57;
      v46 = @"Waiting for non-initial AVPlayerItem status to become ready to play";
    }

    else
    {
      v44 = objc_loadWeakRetained((a1 + 48));
      v45 = +[TVPPlaybackState paused];
      [v44 _setState:v45 updatedRate:1 notifyListeners:0.0];

      v43 = v57;
      v46 = @"Paused";
    }

    v57 = v46;
    goto LABEL_28;
  }

  v13 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v13, OS_LOG_TYPE_DEFAULT, "Ignoring time control status change since it's still AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", buf, 2u);
  }

LABEL_30:

  return v57;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_909(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackReportingBufferingDidBecomeLikelyToKeepUpNotification" object:WeakRetained];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_915(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [v11 integerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = [WeakRetained _activePlayerTimeControlStatus];
  }

  v15 = [v9 currentState];
  if (v13)
  {
    if (v13 == 1)
    {
      v41 = v12;
      v16 = objc_loadWeakRetained((a1 + 40));
      v17 = [v16 currentMediaItemLoader];

      v18 = objc_loadWeakRetained((a1 + 40));
      v19 = [v18 currentMediaItem];

      v42 = [v19 reportingDelegate];
      v20 = [v17 timingData];
      [v20 startTimeForBuffering];
      if (v21 == 0.0)
      {
        [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
        [v20 setStartTimeForBuffering:?];
        if (objc_opt_respondsToSelector())
        {
          v22 = objc_loadWeakRetained((a1 + 40));
          [v42 mediaItemWillStartBuffering:v19 player:v22];
        }

        v23 = *(a1 + 32);
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_916;
        v44[3] = &unk_279D7BF80;
        objc_copyWeak(&v45, (a1 + 40));
        [v23 executeBlockAfterCurrentStateTransition:v44];
        objc_destroyWeak(&v45);
      }

      v38 = v19;
      v39 = v17;
      v40 = v10;
      v24 = @"TVPPlaybackChangeReasonPlaybackDidStartBuffering";
      v25 = objc_loadWeakRetained((a1 + 40));
      v26 = [v25 AVQueuePlayer];
      v27 = [v26 reasonForWaitingToPlay];
      v28 = [v27 isEqualToString:*MEMORY[0x277CE6178]];

      if (v28)
      {
        v29 = @"TVPPlaybackChangeReasonWaitingForCoordinatedPlayback";

        v24 = v29;
      }

      v12 = v41;
      v30 = objc_loadWeakRetained((a1 + 40));
      v31 = +[TVPPlaybackState playing];
      [v30 setPostLoadingState:v31];

      v32 = objc_loadWeakRetained((a1 + 40));
      v33 = +[TVPPlaybackState loading];
      [v32 _setState:v33 updatedRate:v24 reason:1 notifyListeners:0.0];

      v15 = @"Waiting for time control status to be done waiting";
      v10 = v40;
    }

    else
    {
      v36 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v36, OS_LOG_TYPE_DEFAULT, "Ignoring time control status change to AVPlayerTimeControlStatusPlaying since we're already playing", buf, 2u);
      }
    }
  }

  else
  {
    v34 = objc_loadWeakRetained((a1 + 40));
    v35 = +[TVPPlaybackState paused];
    [v34 _setState:v35 updatedRate:1 notifyListeners:0.0];

    v15 = @"Paused";
  }

  return v15;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_916(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackReportingBufferingWillStartNotification" object:WeakRetained];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_917(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [v11 integerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v13 = [WeakRetained _activePlayerTimeControlStatus];
  }

  v15 = [v9 currentState];
  if (v13 == 2)
  {
    v20 = (*(*(a1 + 32) + 16))();

    v15 = v20;
  }

  else if (v13 == 1)
  {
    v16 = objc_loadWeakRetained((a1 + 40));
    v17 = +[TVPPlaybackState playing];
    [v16 setPostLoadingState:v17];

    v18 = objc_loadWeakRetained((a1 + 40));
    v19 = +[TVPPlaybackState loading];
    [v18 _setState:v19 updatedRate:1 notifyListeners:0.0];

    v15 = @"Waiting for time control status to be done waiting";
  }

  else
  {
    v21 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v23 = 0;
      _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Ignoring change to AVPlayerTimeControlStatusPaused since player is already in paused state", v23, 2u);
    }
  }

  return v15;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_918(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v11)
  {
    v13 = [v11 integerValue];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v13 = [WeakRetained _activePlayerTimeControlStatus];
  }

  v15 = [v9 currentState];
  if (v13)
  {
    v16 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      *v20 = 0;
      _os_log_impl(&dword_26CEDD000, v16, OS_LOG_TYPE_DEFAULT, "During scanning, ignoring time control status change to something other than paused", v20, 2u);
    }
  }

  else
  {
    v17 = objc_loadWeakRetained((a1 + 32));
    v18 = +[TVPPlaybackState paused];
    [v17 _setState:v18 updatedRate:1 notifyListeners:0.0];

    v15 = @"Paused";
  }

  return v15;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_919(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Rate key"];
  [v8 doubleValue];
  v10 = v9;

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v12 = [WeakRetained currentMediaItemIsStreaming];

  if (v12)
  {
    v13 = [*(a1 + 32) currentState];
  }

  else
  {
    v14 = [v7 currentState];
    v15 = [v14 isEqualToString:@"Scanning using AVPlayer driven by AVKit"];

    v16 = objc_loadWeakRetained((a1 + 48));
    v17 = [v16 _integratedTimelineEnabled];

    v18 = *(a1 + 40);
    v19 = (a1 + 48);
    if (v17)
    {
      v20 = objc_loadWeakRetained(v19);
      v21 = [v20 currentPlayerItem];
      v22 = [v21 integratedTimeline];
      v23 = v22;
      if (v22)
      {
        objc_msgSend_currentTime(v22);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
      }

      v13 = (*(v18 + 16))(v18, &v26, 1, v15, v10);
    }

    else
    {
      v20 = objc_loadWeakRetained(v19);
      v24 = [v20 currentPlayerItem];
      v21 = v24;
      if (v24)
      {
        objc_msgSend_currentTime(v24);
      }

      else
      {
        v26 = 0;
        v27 = 0;
        v28 = 0;
      }

      v13 = (*(v18 + 16))(v18, &v26, 1, v15, v10);
    }
  }

  return v13;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_920(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = *(a1 + 32);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_921;
  v30[3] = &unk_279D7BF80;
  objc_copyWeak(v31, (a1 + 40));
  [v13 executeBlockAfterCurrentStateTransition:v30];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v15 = [WeakRetained playlist];

  if ([v15 endAction] == 1 && (objc_msgSend(v15, "moreItemsAvailable:", 0) & 1) == 0)
  {
    v16 = *(a1 + 32);
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 3221225472;
    v28[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_922;
    v28[3] = &unk_279D7BF80;
    objc_copyWeak(&v29, (a1 + 40));
    [v16 executeBlockAfterCurrentStateTransition:v28];
    objc_destroyWeak(&v29);
  }

  v17 = objc_loadWeakRetained((a1 + 40));
  v18 = [v17 mediaItemEndAction];

  if (v18 != 1)
  {
    v19 = objc_loadWeakRetained((a1 + 40));
    [v19 setMediaItemChangeReason:@"Played to end of media item"];

    v20 = [v12 objectForKey:@"Requires manual AVQueuePlayer advance key"];
    v21 = [v20 BOOLValue];

    if (v21)
    {
      v22 = sPlayerLogObject;
      if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Scheduling call to advanceToNextItem since RequiresManualAVQueuePlayerAdvance is YES", buf, 2u);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_923;
      block[3] = &unk_279D7BF80;
      objc_copyWeak(&v26, (a1 + 40));
      dispatch_async(MEMORY[0x277D85CD0], block);
      objc_destroyWeak(&v26);
    }
  }

  v23 = [v9 currentState];

  objc_destroyWeak(v31);

  return v23;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_921(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackDidPlayToEndOfMediaItemNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_922(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackPlaylistDidFinishNotification" object:WeakRetained];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_923(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained AVQueuePlayer];
  [v1 advanceToNextItem];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_924(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v64[4] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained AVQueuePlayer];
  [v14 rate];
  v16 = v15;

  v17 = [v9 currentState];
  v18 = [v17 isEqualToString:@"Scanning using AVPlayer driven by AVKit"];

  if (v16 < 0.0)
  {
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_925;
    v58[3] = &unk_279D7CD78;
    v62 = v18;
    v59 = v9;
    v60 = v12;
    objc_copyWeak(&v61, (a1 + 40));
    [v59 executeBlockAfterCurrentStateTransition:v58];
    objc_destroyWeak(&v61);

    goto LABEL_27;
  }

  v19 = [v12 objectForKey:@"Requires manual AVQueuePlayer advance key"];
  v20 = [v19 BOOLValue];

  if (v20)
  {
    v21 = sPlayerLogObject;
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf.value) = 0;
      _os_log_impl(&dword_26CEDD000, v21, OS_LOG_TYPE_DEFAULT, "Scheduling call to advanceToNextItem since RequiresManualAVQueuePlayerAdvance is YES", &buf, 2u);
    }

    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_926;
    block[3] = &unk_279D7BF80;
    objc_copyWeak(&v57, (a1 + 40));
    dispatch_async(MEMORY[0x277D85CD0], block);
    objc_destroyWeak(&v57);
    goto LABEL_27;
  }

  if (v18)
  {
    goto LABEL_27;
  }

  v22 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf.value) = 0;
    _os_log_impl(&dword_26CEDD000, v22, OS_LOG_TYPE_DEFAULT, "Calling _setAVPlayerRate", &buf, 2u);
  }

  (*(*(a1 + 32) + 16))(0.0, 0.0);
  v23 = objc_loadWeakRetained((a1 + 40));
  v24 = v23;
  if (v23)
  {
    objc_msgSend_cachedDuration(v23);
    if ((v54 & 0x100000000) != 0)
    {
      v25 = objc_loadWeakRetained((a1 + 40));
      v26 = v25;
      if (v25)
      {
        objc_msgSend_cachedDuration(v25);
        v27 = (v51 & 0x1000000000) == 0;

        if (!v27)
        {
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_927;
          v49[3] = &unk_279D7BF80;
          objc_copyWeak(v50, (a1 + 40));
          [v9 executeBlockAfterCurrentStateTransition:v49];
          objc_destroyWeak(v50);
          goto LABEL_27;
        }

        goto LABEL_18;
      }

      v50[1] = 0;
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v55 = 0;
  }

LABEL_18:
  memset(&buf, 0, sizeof(buf));
  v28 = objc_loadWeakRetained((a1 + 40));
  v29 = v28;
  if (v28)
  {
    objc_msgSend__currentMediaItemForwardPlaybackEndTime(v28);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  CMTimeMakeWithSeconds(&rhs, 5.0, 1000000);
  CMTimeSubtract(&buf, &lhs, &rhs);

  memset(&lhs, 0, sizeof(lhs));
  v30 = objc_loadWeakRetained((a1 + 40));
  v31 = v30;
  if (v30)
  {
    objc_msgSend__currentMediaItemReversePlaybackEndTime(v30);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  rhs = buf;
  time2 = lhs;
  if (CMTimeCompare(&rhs, &time2) < 0)
  {
    buf = lhs;
  }

  v63[0] = @"Elapsed CMTime key";
  rhs = buf;
  v32 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
  v64[0] = v32;
  v63[1] = @"Seek precision key";
  rhs = **&MEMORY[0x277CC08F0];
  v33 = [MEMORY[0x277CCAE60] valueWithCMTime:&rhs];
  v64[1] = v33;
  v64[2] = MEMORY[0x277CBEC38];
  v63[2] = @"Ignore delegate key";
  v63[3] = @"Post loading state key";
  v34 = +[TVPPlaybackState paused];
  v64[3] = v34;
  v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v64 forKeys:v63 count:4];

  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_928;
  v42 = &unk_279D7BA58;
  objc_copyWeak(&v44, (a1 + 40));
  v36 = v35;
  v43 = v36;
  [v9 executeBlockAfterCurrentStateTransition:&v39];

  objc_destroyWeak(&v44);
LABEL_27:
  v37 = [v9 currentState];

  return v37;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_925(uint64_t a1)
{
  if ((*(a1 + 56) & 1) == 0)
  {
    [*(a1 + 32) postEvent:@"Play"];
  }

  v2 = [*(a1 + 40) objectForKey:@"Reset to start time key"];
  v3 = [v2 BOOLValue];

  if (v3)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained setElapsedTime:-1000000000.0];
  }
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_926(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained AVQueuePlayer];
  [v1 advanceToNextItem];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_927(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained stateMachine];
  [v1 postEvent:@"Play"];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_928(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = [WeakRetained stateMachine];
  [v2 postEvent:@"Set elapsed time or date" withContext:0 userInfo:*(a1 + 32)];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_929(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a3;
  v10 = a5;
  v47 = **&MEMORY[0x277CC08F0];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained externalImagePlayer];
  [v12 rate];
  v14 = v13;

  v15 = (a1 + 40);
  if (v14 <= 0.0)
  {
    v20 = objc_loadWeakRetained(v15);
    v21 = v20;
    if (v20)
    {
      objc_msgSend__currentMediaItemReversePlaybackEndTime(v20);
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    v47 = lhs;

    goto LABEL_12;
  }

  v16 = objc_loadWeakRetained(v15);
  v17 = v16;
  if (!v16)
  {
    v44 = 0;
    v45 = 0;
    v46 = 0;
    goto LABEL_14;
  }

  objc_msgSend_cachedDuration(v16);
  if ((v45 & 0x100000000) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = v18;
  if (!v18)
  {
    v41 = 0;
    v42 = 0;
    v43 = 0;

    goto LABEL_14;
  }

  objc_msgSend_cachedDuration(v18);

  if ((v42 & 0x1000000000) != 0)
  {
    v47 = **&MEMORY[0x277CC08B0];
LABEL_12:
    v22 = +[TVPPlaybackState playing];
    goto LABEL_24;
  }

LABEL_15:
  v23 = objc_loadWeakRetained((a1 + 40));
  v24 = v23;
  if (v23)
  {
    objc_msgSend__currentMediaItemForwardPlaybackEndTime(v23);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  CMTimeMakeWithSeconds(&rhs, 5.0, 1000000);
  CMTimeSubtract(&v47, &lhs, &rhs);

  memset(&lhs, 0, sizeof(lhs));
  v25 = objc_loadWeakRetained((a1 + 40));
  v26 = v25;
  if (v25)
  {
    objc_msgSend__currentMediaItemReversePlaybackEndTime(v25);
  }

  else
  {
    memset(&lhs, 0, sizeof(lhs));
  }

  rhs = v47;
  time2 = lhs;
  if (CMTimeCompare(&rhs, &time2) < 0)
  {
    v47 = lhs;
  }

  v22 = +[TVPPlaybackState paused];
LABEL_24:
  v27 = v22;
  v28 = objc_loadWeakRetained((a1 + 40));
  v29 = [v28 externalImagePlayer];
  [v29 setRate:0.0];

  v30 = [v8 currentState];
  LODWORD(v29) = [v30 isEqualToString:@"Scanning using external images driven by AVKit"];

  if (v29)
  {
    v31 = objc_loadWeakRetained((a1 + 40));
    [v31 setPostAVKitScanningState:v27];

    v32 = [v8 currentState];
  }

  else
  {
    v33 = *(a1 + 32);
    v34 = objc_loadWeakRetained((a1 + 40));
    lhs = v47;
    v35 = [v34 _estimatedPlaybackDateForCMTime:&lhs];
    v36 = *(v33 + 16);
    lhs = v47;
    v32 = v36(v33, &lhs, v35, 0, v27, v9, v10, 1, 0);
  }

  return v32;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_930(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained progressiveJumpingScrubber];
  [v14 rate];
  v16 = v15;

  v17 = [v9 currentState];
  v18 = objc_loadWeakRetained((a1 + 40));
  v19 = [v18 progressiveJumpingScrubber];
  [v19 cancelScrub];

  v20 = objc_loadWeakRetained((a1 + 40));
  [v20 setProgressiveJumpingScrubber:0];

  if (v16 <= 0.0)
  {
    v23 = *(a1 + 32);
    v24 = +[TVPPlaybackState loading];
    v25 = *(v23 + 16);
    v29 = *MEMORY[0x277CC08F0];
    v30 = *(MEMORY[0x277CC08F0] + 16);
    v27 = v29;
    v28 = v30;
    v25(v23, &v29, 0, &v27, v24, 1, 0.0);

    v17 = @"Waiting for seek";
  }

  else
  {
    v21 = objc_loadWeakRetained((a1 + 40));
    v22 = +[TVPPlaybackState playing];
    [v21 setPostLoadingState:v22];

    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_931;
    v31[3] = &unk_279D7BF80;
    objc_copyWeak(&v32, (a1 + 40));
    [v9 executeBlockAfterCurrentStateTransition:v31];
    objc_destroyWeak(&v32);
  }

  return v17;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_931(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained changeMediaInDirection:0 reason:@"Fast forwarded to end of media item" ignoreDelegate:1];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_932(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  v6 = a5;
  v7 = +[TVPPlaybackState playing];
  v8 = (*(v5 + 16))(v5, v7, v6);

  return v8;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_933(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *(a1 + 32);
  v6 = a5;
  v7 = +[TVPPlaybackState paused];
  v8 = (*(v5 + 16))(v5, v7, v6);

  return v8;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *(a1 + 32);
  v7 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v9 = [WeakRetained postLoadingState];
  v10 = (*(v6 + 16))(v6, v9, v7);

  return v10;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_935(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = [WeakRetained AVQueuePlayer];
  v6 = [v5 items];

  if ([v6 count] != 2)
  {
LABEL_9:
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_936;
    v22[3] = &unk_279D7BF30;
    v23 = *(a1 + 32);
    [v3 executeBlockAfterCurrentStateTransition:v22];
    v20 = objc_loadWeakRetained((a1 + 40));
    [v20 _populateCurrentPlayerItemWithUpNextMetadata];

    v16 = [v3 currentState];
    v7 = v23;
    goto LABEL_10;
  }

  v7 = [v6 objectAtIndex:1];
  v8 = objc_msgSend_mediaItemLoader(v7);
  v9 = [v8 mediaItem];
  v10 = objc_loadWeakRetained((a1 + 40));
  v11 = [v10 playlist];
  v12 = [v11 nextMediaItem];
  v13 = [v9 isEqualToMediaItem:v12];

  v14 = sPlayerLogObject;
  v15 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
  if (!v13)
  {
    if (v15)
    {
      *buf = 0;
      _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Removing previously added speculative player item", buf, 2u);
    }

    v17 = objc_loadWeakRetained((a1 + 40));
    v18 = [v17 AVQueuePlayer];
    v19 = [v6 objectAtIndex:1];
    [v18 removeItem:v19];

    goto LABEL_9;
  }

  if (v15)
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Existing speculative player item matches next media item, so not loading it", buf, 2u);
  }

  v16 = [v3 currentState];
LABEL_10:

  return v16;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_937(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained rateUsedForPlayback];
  *&v6 = v6;
  (*(v3 + 16))(v3, *&v6, 0.0);

  v7 = [v4 currentState];

  return v7;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_938(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v47 = a2;
  v9 = a3;
  v46 = a4;
  v10 = a5;
  v11 = [v10 objectForKey:@"Elapsed CMTime key"];
  v12 = [v10 objectForKey:@"Playback date key"];
  v48 = [v10 objectForKey:@"Post loading state key"];
  v13 = [v10 objectForKey:@"Ignore delegate key"];
  [v13 BOOLValue];

  v14 = [v10 objectForKey:@"Play completion key"];
  v15 = [v10 objectForKey:@"Seek precision key"];
  v16 = v15;
  v45 = *MEMORY[0x277CC08F0];
  *&v62.value = *MEMORY[0x277CC08F0];
  v17 = *(MEMORY[0x277CC08F0] + 16);
  v62.epoch = v17;
  v61 = 0;
  if (v15)
  {
    objc_msgSend_CMTimeValue(v15);
  }

  if (!v11)
  {
    if (v12)
    {
      v44 = v14;
      v21 = *(a1 + 56);
      v51[1] = v12;
      v22 = (*(v21 + 16))();
      v23 = v12;

      if (v22)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v25 = [WeakRetained startDate];
        v26 = [v23 isEqual:v25];

        if ((v26 & 1) == 0)
        {
          v36 = objc_loadWeakRetained((a1 + 64));
          v37 = v23;
          [v36 setStartDate:v23];

          v38 = objc_loadWeakRetained((a1 + 64));
          *&v60.value = v45;
          v60.epoch = v17;
          [v38 setStartTime:&v60];

          v39 = objc_loadWeakRetained((a1 + 64));
          [v39 setStartPosition:0.0];

          v31 = v48;
          if (v48)
          {
            v40 = objc_loadWeakRetained((a1 + 64));
            [v40 setPostLoadingState:v48];
          }

          v41 = *(a1 + 32);
          v34 = v49;
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_940;
          v49[3] = &unk_279D7BA58;
          objc_copyWeak(v51, (a1 + 64));
          v12 = v37;
          v50 = v12;
          [v41 executeBlockAfterCurrentStateTransition:v49];
          v14 = v44;
          (*(*(a1 + 48) + 16))();
          v35 = v50;
          goto LABEL_22;
        }
      }

      v14 = v44;
      (*(*(a1 + 48) + 16))();
      v12 = v23;
    }

    v31 = v48;
    goto LABEL_23;
  }

  v18 = v14;
  memset(&v60, 0, sizeof(v60));
  objc_msgSend_CMTimeValue(v11);
  memset(&v59, 0, sizeof(v59));
  v19 = objc_loadWeakRetained((a1 + 64));
  v20 = v19;
  if (v19)
  {
    objc_msgSend_startTime(v19);
  }

  else
  {
    memset(&v59, 0, sizeof(v59));
  }

  if ((*(*(a1 + 40) + 16))())
  {
    time1 = v60;
    time2 = v59;
    if (CMTimeCompare(&time1, &time2))
    {
      v27 = objc_loadWeakRetained((a1 + 64));
      time1 = v60;
      [v27 setStartTime:&time1];

      v28 = objc_loadWeakRetained((a1 + 64));
      time1 = v62;
      [v28 setStartingSeekPrecision:&time1];

      v29 = objc_loadWeakRetained((a1 + 64));
      [v29 setStartDate:0];

      v30 = objc_loadWeakRetained((a1 + 64));
      [v30 setStartPosition:0.0];

      v31 = v48;
      v14 = v18;
      if (v48)
      {
        v32 = objc_loadWeakRetained((a1 + 64));
        [v32 setPostLoadingState:v48];
      }

      v33 = *(a1 + 32);
      v34 = v52;
      v52[0] = MEMORY[0x277D85DD0];
      v52[1] = 3221225472;
      v52[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_939;
      v52[3] = &unk_279D7CDA0;
      objc_copyWeak(&v54, (a1 + 64));
      v55 = v59;
      v56 = v60;
      v53 = v12;
      [v33 executeBlockAfterCurrentStateTransition:v52];
      (*(*(a1 + 48) + 16))();
      v35 = v53;
LABEL_22:

      objc_destroyWeak(v34 + 5);
      goto LABEL_23;
    }
  }

  v31 = v48;
  v14 = v18;
  if ((v61 & 1) == 0)
  {
    (*(*(a1 + 48) + 16))();
  }

LABEL_23:
  v42 = [*(a1 + 32) currentState];

  return v42;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_939(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  [WeakRetained _notifyOfBoundaryCrossingBetweenPreviousTime:&v7 updatedTime:&v5];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  [v3 _notifyListenersOfElapsedTimeChange:&v7 playbackDate:v4 dueToTimeJump:1];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_940(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *MEMORY[0x277CC08F0];
  v5 = *(MEMORY[0x277CC08F0] + 16);
  [WeakRetained _notifyListenersOfElapsedTimeChange:&v4 playbackDate:v3 dueToTimeJump:1];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_6_941(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v39 = a2;
  v40 = a3;
  v38 = a4;
  v9 = a5;
  v10 = [v9 objectForKey:@"Elapsed CMTime key"];
  v11 = v10;
  v65 = 0uLL;
  v66 = 0;
  if (v10)
  {
    objc_msgSend_CMTimeValue(v10);
  }

  v12 = [v9 objectForKey:@"Playback date key"];
  v13 = [v9 objectForKey:@"Seek precision key"];
  v63 = *MEMORY[0x277CC08F0];
  v64 = *(MEMORY[0x277CC08F0] + 16);
  v14 = [v9 objectForKey:@"Post loading state key"];
  v15 = [v9 objectForKey:@"Ignore delegate key"];
  [v15 BOOLValue];

  v16 = [v9 objectForKey:@"Play completion key"];
  v62 = 0;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v18 = [WeakRetained currentPlayerItem];

  if (v13)
  {
    objc_msgSend_CMTimeValue(v13);
  }

  if (v12)
  {
    v19 = *(a1 + 40);
    v61 = v12;
    v20 = (*(v19 + 16))();
    v21 = v12;

    if (v20)
    {
      if (v14)
      {
        v22 = objc_loadWeakRetained((a1 + 64));
        [v22 setPostLoadingState:v14];
      }

      v23 = objc_loadWeakRetained((a1 + 64));
      v24 = [v23 _integratedTimelineEnabled];

      if (v24)
      {
        v25 = [v18 integratedTimeline];
        [v25 seekToDate:v21 completionHandler:0];
      }

      else
      {
        [v18 seekToDate:v21 completionHandler:0];
      }

      v30 = *(a1 + 32);
      v56[0] = MEMORY[0x277D85DD0];
      v56[1] = 3221225472;
      v56[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_942;
      v56[3] = &unk_279D7C768;
      objc_copyWeak(&v58, (a1 + 64));
      v59 = v65;
      v60 = v66;
      v21 = v21;
      v57 = v21;
      [v30 executeBlockAfterCurrentStateTransition:v56];
      (*(*(a1 + 48) + 16))();

      objc_destroyWeak(&v58);
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    if (v11)
    {
      v26 = objc_loadWeakRetained((a1 + 64));
      v27 = [v26 _integratedTimelineEnabled];

      if (v27)
      {
        v28 = [v18 integratedTimeline];
        v29 = v28;
        if (v28)
        {
          objc_msgSend_currentTime(v28);
        }

        else
        {
          v52 = 0uLL;
          v53 = 0;
        }

        v54 = v52;
        v55 = v53;
      }

      else
      {
        if (v18)
        {
          objc_msgSend_currentTime(v18);
        }

        else
        {
          v52 = 0uLL;
          v53 = 0;
        }

        v54 = v52;
        v55 = v53;
      }

      if ((*(*(a1 + 56) + 16))())
      {
        if (v14)
        {
          v31 = objc_loadWeakRetained((a1 + 64));
          [v31 setPostLoadingState:v14];
        }

        v32 = objc_loadWeakRetained((a1 + 64));
        v33 = [v32 _integratedTimelineEnabled];

        if (v33)
        {
          v34 = [v18 integratedTimeline];
          v52 = v65;
          v53 = v66;
          v50 = v63;
          v51 = v64;
          v48 = v63;
          v49 = v64;
          [v34 seekToTime:&v52 toleranceBefore:&v50 toleranceAfter:&v48 completionHandler:0];
        }

        else
        {
          v52 = v65;
          v53 = v66;
          v50 = v63;
          v51 = v64;
          v48 = v63;
          v49 = v64;
          [v18 seekToTime:&v52 toleranceBefore:&v50 toleranceAfter:&v48 completionHandler:0];
        }

        v35 = *(a1 + 32);
        v41[0] = MEMORY[0x277D85DD0];
        v41[1] = 3221225472;
        v41[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_943;
        v41[3] = &unk_279D7CDA0;
        objc_copyWeak(&v43, (a1 + 64));
        v44 = v54;
        v45 = v55;
        v46 = v65;
        v47 = v66;
        v42 = 0;
        [v35 executeBlockAfterCurrentStateTransition:v41];
        (*(*(a1 + 48) + 16))();

        objc_destroyWeak(&v43);
      }

      else
      {
        (*(*(a1 + 48) + 16))();
      }
    }

    v21 = 0;
  }

  v36 = [v39 currentState];

  return v36;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_942(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 64);
  [WeakRetained _notifyListenersOfElapsedTimeChange:&v4 playbackDate:v3 dueToTimeJump:1];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_8_943(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = *(a1 + 48);
  v8 = *(a1 + 64);
  v5 = *(a1 + 72);
  v6 = *(a1 + 88);
  [WeakRetained _notifyOfBoundaryCrossingBetweenPreviousTime:&v7 updatedTime:&v5];

  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = *(a1 + 32);
  v7 = *(a1 + 72);
  v8 = *(a1 + 88);
  [v3 _notifyListenersOfElapsedTimeChange:&v7 playbackDate:v4 dueToTimeJump:1];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_9_944(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v54 = a3;
  v9 = a5;
  v10 = [v9 objectForKey:@"Elapsed CMTime key"];
  v11 = v10;
  memset(&v62, 0, sizeof(v62));
  if (v10)
  {
    objc_msgSend_CMTimeValue(v10);
  }

  v12 = [v9 objectForKey:@"Playback date key"];
  v13 = [v9 objectForKey:@"Seek precision key"];
  v14 = [v9 objectForKey:@"Post loading state key"];
  v61 = **&MEMORY[0x277CC08F0];
  v15 = [v9 objectForKey:@"Ignore delegate key"];
  [v15 BOOLValue];

  v16 = [v9 objectForKey:@"Play completion key"];
  v60 = 0;
  if (v13)
  {
    objc_msgSend_CMTimeValue(v13);
  }

  if (v11)
  {
    if ((*(*(a1 + 32) + 16))())
    {
      goto LABEL_7;
    }

LABEL_14:
    (*(*(a1 + 56) + 16))();
    v29 = [v8 currentState];
    goto LABEL_33;
  }

  v53 = v8;
  if (!v12)
  {
    goto LABEL_22;
  }

  v26 = *(a1 + 40);
  v59 = v12;
  v27 = (*(v26 + 16))();
  v28 = v12;

  v12 = v28;
  v8 = v53;
  if (!v27)
  {
    goto LABEL_14;
  }

LABEL_7:
  v53 = v8;
  if (v12)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v18 = [WeakRetained _currentPlayerItemContainsDates];

    if (v18)
    {
      v19 = objc_loadWeakRetained((a1 + 64));
      v20 = [v19 currentPlayerItem];

      v21 = objc_loadWeakRetained((a1 + 64));
      v52 = [v21 _currentDateFromPlayerItem:v20];

      v22 = objc_loadWeakRetained((a1 + 64));
      v23 = [v22 _integratedTimelineEnabled];

      if (v23)
      {
        v24 = [v20 integratedTimeline];
        v25 = v24;
        if (v24)
        {
          objc_msgSend_currentTime(v24);
        }

        else
        {
          memset(&v57, 0, sizeof(v57));
        }

        time = v57;

        v30 = v20;
      }

      else
      {
        v30 = v20;
        if (v20)
        {
          objc_msgSend_currentTime(v20);
        }

        else
        {
          memset(&v57, 0, sizeof(v57));
        }

        time = v57;
      }

      [v12 timeIntervalSinceDate:v52];
      v32 = v31;
      v33 = objc_loadWeakRetained((a1 + 64));
      v57 = time;
      [v33 setTimeAtStartOfSeek:&v57];

      v34 = objc_loadWeakRetained((a1 + 64));
      [v34 setPlaybackDateAtStartOfSeek:v52];

      CMTimeMakeWithSeconds(&rhs, v32, 1000000);
      lhs = time;
      CMTimeAdd(&v57, &lhs, &rhs);
      v62 = v57;
    }
  }

LABEL_22:
  v35 = *(a1 + 48);
  v36 = +[TVPPlaybackState loading];
  v37 = *(v35 + 16);
  time = v62;
  v57 = v61;
  v37(v35, &time, v12, &v57, v36, v16 == 0, 0.0);

  if (v14)
  {
    v38 = objc_loadWeakRetained((a1 + 64));
    [v38 setPostLoadingState:v14];
LABEL_29:

    goto LABEL_30;
  }

  v14 = 0;
  v39 = [v53 currentState];
  v40 = [v39 isEqualToString:@"Playing"];

  if (v40)
  {
    v38 = objc_loadWeakRetained((a1 + 64));
    v41 = +[TVPPlaybackState playing];
LABEL_28:
    v44 = v41;
    [v38 setPostLoadingState:v41];

    goto LABEL_29;
  }

  v42 = [v53 currentState];
  v43 = [v42 isEqualToString:@"Paused"];

  if (v43)
  {
    v38 = objc_loadWeakRetained((a1 + 64));
    v41 = +[TVPPlaybackState paused];
    goto LABEL_28;
  }

LABEL_30:
  v45 = *(a1 + 56);
  time = v62;
  v46 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
  (*(v45 + 16))(v45, v16, 1, v46, v12);

  v47 = objc_loadWeakRetained((a1 + 64));
  v48 = [v47 currentMediaItemLoader];
  v49 = [v48 containsStreamingAVAsset];
  v50 = @"Waiting for seek";
  if (v49)
  {
    v50 = @"Waiting for time control status to be done waiting";
  }

  v29 = v50;

  v8 = v53;
LABEL_33:

  return v29;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_10_945(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a3;
  v8 = a5;
  v9 = [v8 objectForKey:@"Playback date key"];
  v10 = [v8 objectForKey:@"Elapsed CMTime key"];
  v11 = v10;
  v35 = 0uLL;
  v36 = 0;
  if (v10)
  {
    objc_msgSend_CMTimeValue(v10);
  }

  v12 = [v8 objectForKey:@"Ignore delegate key"];
  [v12 BOOLValue];

  if (!v11)
  {
    if (!v9)
    {
LABEL_23:
      WeakRetained = objc_loadWeakRetained((a1 + 56));
      v27 = [WeakRetained externalImagePlayer];
      v32 = v35;
      v33 = v36;
      [v27 setElapsedTime:&v32];

      goto LABEL_24;
    }

    v13 = *(a1 + 48);
    v34 = v9;
    v14 = (*(v13 + 16))();
    v15 = v9;

    v9 = v15;
    if (!v14)
    {
      goto LABEL_24;
    }

LABEL_8:
    if (v9)
    {
      v16 = objc_loadWeakRetained((a1 + 56));
      v17 = [v16 _currentPlayerItemContainsDates];

      if (v17)
      {
        v18 = objc_loadWeakRetained((a1 + 56));
        v19 = [v18 currentPlayerItem];

        v20 = objc_loadWeakRetained((a1 + 56));
        v21 = [v20 _integratedTimelineEnabled];

        if (v21)
        {
          v22 = [v19 integratedTimeline];
          v23 = v22;
          if (v22)
          {
            objc_msgSend_currentTime(v22);
          }

          else
          {
            v30 = 0uLL;
            v31 = 0;
          }

          v32 = v30;
          v33 = v31;
        }

        else
        {
          if (v19)
          {
            objc_msgSend_currentTime(v19);
          }

          else
          {
            v30 = 0uLL;
            v31 = 0;
          }

          v32 = v30;
          v33 = v31;
        }

        v24 = objc_loadWeakRetained((a1 + 56));
        v25 = [v24 _currentDateFromPlayerItem:v19];
        if (v24)
        {
          objc_msgSend__estimatedCMTimeForPlaybackDate_referenceTime_referenceDate_(v24, v32, v33);
        }

        else
        {
          v30 = 0uLL;
          v31 = 0;
        }

        v35 = v30;
        v36 = v31;
      }
    }

    goto LABEL_23;
  }

  if ((*(*(a1 + 40) + 16))())
  {
    goto LABEL_8;
  }

LABEL_24:
  v28 = [*(a1 + 32) currentState];

  return v28;
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_11_946(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = a3;
  v9 = [v7 objectForKey:@"Playback date key"];
  v10 = [v7 objectForKey:@"Elapsed CMTime key"];
  v11 = v10;
  memset(&v38[1], 0, 24);
  if (v10)
  {
    objc_msgSend_CMTimeValue(v10);
  }

  v12 = [v7 objectForKey:@"Play completion key"];
  v13 = [v7 objectForKey:@"Ignore delegate key"];
  v14 = [v13 BOOLValue];

  v15 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v17 = [WeakRetained postAVKitScanningState];
  v36 = v12;
  v38[0] = 0;
  v18 = *(v15 + 16);
  time = *&v38[1];
  v19 = v18(v15, &time, v9, v14, v17, v8, v7, v12 == 0, v38);

  v20 = v38[0];
  v21 = [v20 objectForKey:@"Allowed key"];
  v22 = [v21 BOOLValue];

  v23 = [v20 objectForKey:@"Elapsed CMTime key"];
  v24 = [v20 objectForKey:@"Playback date key"];
  v25 = *(a1 + 40);
  if (v23)
  {
    v26 = v11;
    v27 = v19;
    v28 = MEMORY[0x277CCABB0];
    objc_msgSend_CMTimeValue(v23);
    v29 = [v28 numberWithDouble:CMTimeGetSeconds(&time)];
    v30 = *(v25 + 16);
    v31 = v25;
    v32 = v36;
    v30(v31, v36, v22, v29, v24);

    v19 = v27;
    v11 = v26;
  }

  else
  {
    v33 = *(v25 + 16);
    v34 = v25;
    v32 = v12;
    v33(v34, v12, v22, 0, v24);
  }

  return v19;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_12_947(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v36 = a2;
  v8 = a3;
  v9 = a5;
  v10 = [v9 objectForKey:@"Elapsed CMTime key"];
  v11 = v10;
  memset(&v44, 0, sizeof(v44));
  if (v10)
  {
    objc_msgSend_CMTimeValue(v10);
  }

  v12 = [v9 objectForKey:@"Playback date key"];
  v13 = [v9 objectForKey:@"Seek precision key"];
  v43 = **&MEMORY[0x277CC08F0];
  v14 = [v9 objectForKey:@"Post loading state key"];
  v15 = [v9 objectForKey:@"Ignore delegate key"];
  [v15 BOOLValue];

  v16 = [v9 objectForKey:@"Play completion key"];
  v42 = 0;
  if (v13)
  {
    objc_msgSend_CMTimeValue(v13);
  }

  if (v11)
  {
    if ((*(*(a1 + 32) + 16))())
    {
LABEL_7:
      if (v12)
      {
        WeakRetained = objc_loadWeakRetained((a1 + 64));
        v18 = [WeakRetained _currentPlayerItemContainsDates];

        if (v18)
        {
          v19 = objc_loadWeakRetained((a1 + 64));
          v35 = [v19 playbackDateAtStartOfSeek];

          memset(&time, 0, sizeof(time));
          v20 = objc_loadWeakRetained((a1 + 64));
          v21 = v20;
          if (v20)
          {
            objc_msgSend_timeAtStartOfSeek(v20);
          }

          else
          {
            memset(&time, 0, sizeof(time));
          }

          [v12 timeIntervalSinceDate:v35];
          CMTimeMakeWithSeconds(&rhs, v27, 1000000);
          lhs = time;
          CMTimeAdd(&v39, &lhs, &rhs);
          v44 = v39;
        }
      }

      goto LABEL_16;
    }

LABEL_13:
    (*(*(a1 + 56) + 16))();
    v25 = v36;
    v26 = [v36 currentState];
    goto LABEL_19;
  }

  if (v12)
  {
    v22 = *(a1 + 40);
    v41 = v12;
    v23 = (*(v22 + 16))();
    v24 = v12;

    v12 = v24;
    if (v23)
    {
      goto LABEL_7;
    }

    goto LABEL_13;
  }

LABEL_16:
  if (v14)
  {
    v28 = objc_loadWeakRetained((a1 + 64));
    [v28 setPostLoadingState:v14];
  }

  v29 = *(a1 + 48);
  v30 = +[TVPPlaybackState loading];
  v31 = *(v29 + 16);
  time = v44;
  v39 = v43;
  v31(v29, &time, v12, &v39, v30, v16 == 0, 0.0);

  v32 = *(a1 + 56);
  time = v44;
  v33 = [MEMORY[0x277CCABB0] numberWithDouble:CMTimeGetSeconds(&time)];
  (*(v32 + 16))(v32, v16, 1, v33, v12);

  v26 = @"Waiting for seek";
  v25 = v36;
LABEL_19:

  return v26;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_13_948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = a5;
  v7 = [v6 objectForKey:@"Elapsed CMTime key"];
  v8 = v7;
  v19 = 0uLL;
  v20 = 0;
  if (v7)
  {
    objc_msgSend_CMTimeValue(v7);
  }

  v9 = [v6 objectForKey:@"Play completion key"];
  v10 = *(a1 + 32);
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v12 = [WeakRetained progressiveJumpingScrubber];
  [v12 rate];
  v13 = *(v10 + 16);
  v17 = v19;
  v18 = v20;
  v15 = *MEMORY[0x277CC08F0];
  v16 = *(MEMORY[0x277CC08F0] + 16);
  v13(v10, &v17, 0, &v15, 0, 1);

  return @"Scrubbing using progressive jumping waiting for seek";
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_14_949(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a2;
  v8 = [a5 objectForKey:@"Play completion key"];
  (*(*(a1 + 32) + 16))();
  v9 = [v7 currentState];

  return v9;
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_15_950(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v19 = *MEMORY[0x277CC08F0];
  v20 = *(MEMORY[0x277CC08F0] + 16);
  [WeakRetained setTimeAtStartOfSeek:&v19];

  v5 = objc_loadWeakRetained((a1 + 32));
  [v5 setPlaybackDateAtStartOfSeek:0];

  v6 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = objc_loadWeakRetained((a1 + 32));
  [v6 postNotificationName:@"TVPPlayerStillImageDidChangeNotification" object:v7];

  v8 = objc_loadWeakRetained((a1 + 32));
  if (([v8 remainLoadingWhenSeekCompletes] & 1) == 0)
  {
    v9 = objc_loadWeakRetained((a1 + 32));
    v10 = [v9 postLoadingState];
    v11 = +[TVPPlaybackState paused];

    if (v10 != v11)
    {
      goto LABEL_5;
    }

    v8 = objc_loadWeakRetained((a1 + 32));
    v12 = +[TVPPlaybackState paused];
    [v8 _setState:v12 updatedRate:1 notifyListeners:0.0];
  }

LABEL_5:
  v13 = objc_loadWeakRetained((a1 + 32));
  v14 = [v13 _activePlayerTimeControlStatus];

  if (v14 != 1)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_16;
    v16[3] = &unk_279D7BE68;
    v17 = v3;
    v18 = v14;
    [v17 executeBlockAfterCurrentStateTransition:v16];
  }

  return @"Waiting for time control status to be done waiting";
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_16(uint64_t a1)
{
  v2 = sPlayerLogObject;
  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26CEDD000, v2, OS_LOG_TYPE_DEFAULT, "Posting time control status change since it is not AVPlayerTimeControlStatusWaitingToPlayAtSpecifiedRate", v5, 2u);
  }

  v3 = *(a1 + 32);
  v4 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 40)];
  [v3 postEvent:@"Time control status did change" withContext:v4];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_951(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = *MEMORY[0x277CC08F0];
  v6 = *(MEMORY[0x277CC08F0] + 16);
  [WeakRetained setTimeAtStartOfSeek:&v5];

  v3 = objc_loadWeakRetained((a1 + 32));
  [v3 setPlaybackDateAtStartOfSeek:0];

  return @"Scrubbing using progressive jumping";
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_952(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14 = [WeakRetained currentInterstitialCollection];

  v15 = [v12 objectForKey:@"Due to time jump key"];
  LOBYTE(WeakRetained) = [v15 BOOLValue];

  v16 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_elapsedTime(v16);
  v18 = v17;

  memset(&v34, 0, sizeof(v34));
  v19 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_elapsedTime(v19);
  CMTimeMakeWithSeconds(&v34, v20, 1000000);

  v21 = objc_loadWeakRetained((a1 + 32));
  v22 = [v21 stateMachine];
  v26 = MEMORY[0x277D85DD0];
  v27 = 3221225472;
  v28 = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_953;
  v29 = &unk_279D7CE18;
  objc_copyWeak(v31, (a1 + 32));
  v32 = v34;
  v33 = WeakRetained;
  v23 = v14;
  v30 = v23;
  v31[1] = v18;
  [v22 executeBlockAfterCurrentStateTransition:&v26];

  v24 = [v9 currentState];

  objc_destroyWeak(v31);

  return v24;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_953(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 80);
  v6 = *(a1 + 56);
  v7 = *(a1 + 72);
  [WeakRetained _notifyListenersOfElapsedTimeChange:&v6 playbackDate:0 dueToTimeJump:v3];

  v4 = objc_loadWeakRetained((a1 + 40));
  v5 = [*(a1 + 32) interstitialForTime:*(a1 + 48)];
  [v4 setCurrentInterstitial:v5];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_954(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v43[3] = *MEMORY[0x277D85DE8];
  v9 = a2;
  v34 = a3;
  v36 = a4;
  v10 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v12 = [WeakRetained currentInterstitialCollection];

  v13 = objc_loadWeakRetained((a1 + 32));
  [v13 rate];
  v15 = v14;

  v16 = objc_loadWeakRetained((a1 + 32));
  objc_msgSend_elapsedTime(v16);
  v18 = v17;

  v19 = [v12 mergedInterstitialForTime:v18];
  v20 = v19;
  if (v19 && v15 != 0.0)
  {
    v21 = objc_msgSend_timeRange(v19, v34, v36);
    v22 = v21;
    if (v15 <= 0.0)
    {
      objc_msgSend_startTime(v21);
      v24 = -0.1;
    }

    else
    {
      [v21 endTime];
      v24 = 0.1;
    }

    v25 = v23 + v24;

    memset(&v41, 0, sizeof(v41));
    CMTimeMakeWithSeconds(&v41, v25, 1000000);
    v40 = v41;
    v26 = [MEMORY[0x277CCAE60] valueWithCMTime:&v40];
    v43[0] = v26;
    v42[0] = @"Elapsed CMTime key";
    v42[1] = @"Seek precision key";
    v40 = **&MEMORY[0x277CC08F0];
    v27 = [MEMORY[0x277CCAE60] valueWithCMTime:&v40];
    v43[1] = v27;
    v42[2] = @"Ignore delegate key";
    v43[2] = MEMORY[0x277CBEC38];
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];

    v29 = objc_loadWeakRetained((a1 + 32));
    v30 = [v29 stateMachine];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_955;
    v37[3] = &unk_279D7BA58;
    objc_copyWeak(&v39, (a1 + 32));
    v31 = v28;
    v38 = v31;
    [v30 executeBlockAfterCurrentStateTransition:v37];

    objc_destroyWeak(&v39);
  }

  v32 = [v9 currentState];

  return v32;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_955(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained setCurrentInterstitial:0];

  v4 = objc_loadWeakRetained((a1 + 40));
  v3 = [v4 stateMachine];
  [v3 postEvent:@"Set elapsed time or date" withContext:0 userInfo:*(a1 + 32)];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v87[2] = *MEMORY[0x277D85DE8];
  v76 = a2;
  v73 = a3;
  v74 = a4;
  v75 = a5;
  v10 = [v75 objectForKey:@"Error key"];
  if (!v10)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TVPlaybackErrorDomain" code:801 userInfo:0];
  }

  v11 = [v10 userInfo];
  v12 = [v11 objectForKey:0x287E4F138];
  v13 = [v12 BOOLValue];

  v14 = sPlayerLogObject;
  if (!v13)
  {
    if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
    {
      __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_1();
    }

    v16 = [v10 domain];
    if ([v16 isEqualToString:*MEMORY[0x277CE5DC0]])
    {
      v17 = [v10 code] == -11819;
    }

    else
    {
      v17 = 0;
    }

    WeakRetained = objc_loadWeakRetained((a1 + 64));
    v77 = [WeakRetained currentMediaItem];

    if (v17)
    {
      v19 = objc_loadWeakRetained((a1 + 64));
      v20 = [v19 currentPlayerItem];
      if ([v20 status] == 1)
      {

LABEL_26:
        v29 = 0;
        v30 = 1;
        goto LABEL_45;
      }

      v24 = objc_loadWeakRetained((a1 + 64));
      v5 = [v24 currentPlayerItem];
      v25 = [v5 previousStatus] == 1;

      if (v25)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v21 = [v77 mediaItemMetadataForProperty:@"TVPMediaItemMetadataHasAttemptedPlaybackRetryDueToError"];
      v22 = [v21 BOOLValue];

      if (v22)
      {
        v23 = sPlayerLogObject;
        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v23, OS_LOG_TYPE_DEFAULT, "Already retried playing this media item due to previous error.  Not retrying again", buf, 2u);
        }

        [v77 setMediaItemMetadata:MEMORY[0x277CBEC28] forProperty:@"TVPMediaItemMetadataHasAttemptedPlaybackRetryDueToError"];
      }

      else if (objc_opt_respondsToSelector())
      {
        v26 = [v77 shouldRetryPlaybackForError:v10];
        v27 = sPlayerLogObject;
        v28 = os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT);
        if (v26)
        {
          if (v28)
          {
            *buf = 0;
            _os_log_impl(&dword_26CEDD000, v27, OS_LOG_TYPE_DEFAULT, "Media item wants to retry playback for this error", buf, 2u);
          }

          [v77 setMediaItemMetadata:MEMORY[0x277CBEC38] forProperty:@"TVPMediaItemMetadataHasAttemptedPlaybackRetryDueToError"];
          goto LABEL_26;
        }

        if (v28)
        {
          *buf = 0;
          _os_log_impl(&dword_26CEDD000, v27, OS_LOG_TYPE_DEFAULT, "Media item does not want to retry playback for this error", buf, 2u);
        }
      }

      else
      {
        v31 = [v10 domain];
        if ([v31 isEqualToString:@"TVPlaybackErrorDomain"] && objc_msgSend(v10, "code") == 808)
        {
          v32 = [v77 hasTrait:@"TVPMediaItemTraitIsLocal"];

          if (v32)
          {
            v33 = sPlayerLogObject;
            if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26CEDD000, v33, OS_LOG_TYPE_DEFAULT, "Playback of downloaded content failed with not connected error.  Will retry playback of downloaded content and restrict automatic media selection to offline options", buf, 2u);
            }

            [v77 setMediaItemMetadata:MEMORY[0x277CBEC38] forProperty:@"TVPMediaItemMetadataHasAttemptedPlaybackRetryDueToError"];
            [v77 setMediaItemMetadata:MEMORY[0x277CBEC38] forProperty:@"TVPMediaItemMetadataRestrictToOfflineAudioOptions"];
            goto LABEL_26;
          }
        }

        else
        {
        }
      }
    }

    v34 = objc_loadWeakRetained((a1 + 64));
    if ([v34 errorBehavior] == 2)
    {
      v29 = 1;
LABEL_44:

      v30 = 0;
LABEL_45:
      v40 = [MEMORY[0x277CCA8D8] mainBundle];
      v41 = [v40 bundleIdentifier];
      v42 = [v41 isEqualToString:@"com.apple.TVIdleScreen"];

      v43 = v42 & v17 | v29;
      v86[0] = @"TVPPlaybackErrorKey";
      v86[1] = @"TVPPlaybackWillStopDueToErrorKey";
      v87[0] = v10;
      v44 = [MEMORY[0x277CCABB0] numberWithBool:v43 & 1];
      v87[1] = v44;
      v72 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v87 forKeys:v86 count:2];

      v45 = MEMORY[0x277CCAB88];
      v46 = objc_loadWeakRetained((a1 + 64));
      v71 = [v45 notificationWithName:@"TVPPlaybackErrorNotification" object:v46 userInfo:v72];

      v47 = [MEMORY[0x277CCAB98] defaultCenter];
      [v47 postNotification:v71];

      v48 = [v77 reportingDelegate];
      if (objc_opt_respondsToSelector())
      {
        v49 = objc_loadWeakRetained((a1 + 64));
        [v48 mediaItem:v77 errorDidOccur:v10 player:v49];
      }

      v50 = [v77 mediaItemMetadataForProperty:@"TVPMediaItemPlaybackReportingEventCollection"];
      if (([v50 containsEventWithName:TVPPlaybackReportingEventError] & 1) == 0)
      {
        [v50 addSingleShotEventWithName:TVPPlaybackReportingEventError value:v10];
        [v50 addSingleShotEventWithName:TVPPlaybackReportingEventErrorEvent value:TVPPlaybackReportingEventTotalStartupSequence];
      }

      if (v30)
      {
        if (v17 && os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
        {
          __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_5();
        }

        v51 = objc_loadWeakRetained((a1 + 64));
        v52 = [v51 postLoadingState];

        (*(*(a1 + 40) + 16))();
        (*(*(a1 + 48) + 16))();
        v53 = [v76 currentState];
        v54 = @"Pause";
        if (([v53 isEqualToString:@"Paused"] & 1) == 0)
        {
          if (([v53 isEqualToString:@"Waiting for media item to prepare for loading"] & 1) != 0 || (objc_msgSend(v53, "isEqualToString:", @"Waiting for signal after preparing item") & 1) != 0 || (objc_msgSend(v53, "isEqualToString:", @"Waiting for AVAsset to load") & 1) != 0 || (objc_msgSend(v53, "isEqualToString:", @"Waiting for media item to prepare for playback initiation") & 1) != 0 || (objc_msgSend(v53, "isEqualToString:", @"Waiting for initial AVPlayerItem status to become ready to play") & 1) != 0 || (objc_msgSend(v53, "isEqualToString:", @"Waiting for non-initial AVPlayerItem status to become ready to play") & 1) != 0 || objc_msgSend(v53, "isEqualToString:", @"Waiting for time control status to be done waiting"))
          {
            v55 = +[TVPPlaybackState paused];
            v56 = @"Play";
            if (v52 == v55)
            {
              v56 = @"Pause";
            }

            v54 = v56;
          }

          else
          {
            v54 = @"Play";
          }
        }

        v57 = *(a1 + 32);
        v80[0] = MEMORY[0x277D85DD0];
        v80[1] = 3221225472;
        v80[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_970;
        v80[3] = &unk_279D7BC20;
        v81 = v57;
        v82 = v54;
        v58 = v54;
        [v81 executeBlockAfterCurrentStateTransition:v80];
      }

      else
      {
        v59 = objc_loadWeakRetained((a1 + 64));
        v60 = [v59 playlist];
        v61 = [v60 numConsecutivePlaybackFailures];

        v62 = objc_loadWeakRetained((a1 + 64));
        v63 = [v62 playlist];
        [v63 setNumConsecutivePlaybackFailures:++v61];

        v64 = objc_loadWeakRetained((a1 + 64));
        v65 = [v64 playlist];
        LOBYTE(v61) = v61 < [v65 count];

        if (v61)
        {
          if ((v43 & 1) == 0)
          {
            v66 = sPlayerLogObject;
            if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
            {
              __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_3(v66, (a1 + 64));
            }

            v67 = *(a1 + 32);
            v78[0] = MEMORY[0x277D85DD0];
            v78[1] = 3221225472;
            v78[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_974;
            v78[3] = &unk_279D7BF80;
            objc_copyWeak(&v79, (a1 + 64));
            [v67 executeBlockAfterCurrentStateTransition:v78];
            v15 = [*(a1 + 32) currentState];
            objc_destroyWeak(&v79);
            goto LABEL_77;
          }
        }

        else
        {
          if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
          {
            __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_2();
          }

          v68 = objc_loadWeakRetained((a1 + 64));
          v69 = [v68 playlist];
          [v69 setNumConsecutivePlaybackFailures:0];
        }

        if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_ERROR))
        {
          __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_4();
        }

        (*(*(a1 + 56) + 16))();
      }

      v15 = @"Stopped";
LABEL_77:

      goto LABEL_78;
    }

    v35 = objc_loadWeakRetained((a1 + 64));
    v36 = [v35 errorBehavior];
    if (v36 || (v5 = objc_loadWeakRetained((a1 + 64)), ([v5 loadingInitialItemInPlaylist] & 1) == 0))
    {
      v37 = v36 == 0;
      v38 = [v10 userInfo];
      v39 = [v38 objectForKey:@"TVPMediaItemPlaybackErrorShouldStopKey"];
      v29 = [v39 BOOLValue];

      if (!v37)
      {
LABEL_43:

        goto LABEL_44;
      }
    }

    else
    {
      v29 = 1;
    }

    goto LABEL_43;
  }

  if (os_log_type_enabled(sPlayerLogObject, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26CEDD000, v14, OS_LOG_TYPE_DEFAULT, "Supressing error and stopping due to media item loader request", buf, 2u);
  }

  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_960;
  v83[3] = &unk_279D7BF80;
  objc_copyWeak(&v84, (a1 + 64));
  [v76 executeBlockAfterCurrentStateTransition:v83];
  v15 = [v76 currentState];
  objc_destroyWeak(&v84);
LABEL_78:

  return v15;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_960(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_974(uint64_t a1)
{
  v1 = objc_loadWeakRetained((a1 + 32));
  [v1 changeMediaInDirection:objc_msgSend(v1 reason:"currentDirectionOfPlaylistChange") ignoreDelegate:{@"Error did occur", 1}];
}

id __42__TVPPlayer__registerStateMachineHandlers__block_invoke_2_975(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v14 = [WeakRetained currentMediaItem];

  v15 = [v14 reportingDelegate];
  if (objc_opt_respondsToSelector())
  {
    v16 = objc_loadWeakRetained((a1 + 40));
    [v15 mediaItemDidStall:v14 player:v16];
  }

  v17 = *(a1 + 32);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_978;
  v20[3] = &unk_279D7BF80;
  objc_copyWeak(&v21, (a1 + 40));
  [v17 executeBlockAfterCurrentStateTransition:v20];
  v18 = [*(a1 + 32) currentState];
  objc_destroyWeak(&v21);

  return v18;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_3_978(uint64_t a1)
{
  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [v3 postNotificationName:@"TVPPlaybackDidStallNotification" object:WeakRetained];
}

__CFString *__42__TVPPlayer__registerStateMachineHandlers__block_invoke_4_979(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = [a5 objectForKey:{@"Post loading state key", a4}];
  v7 = +[TVPPlaybackState paused];

  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v9 = [WeakRetained AVQueuePlayer];

  if (v9)
  {
    (*(*(a1 + 40) + 16))(0.0, 0.0);
  }

  if (v6 == v7)
  {
    v10 = @"Pause";
  }

  else
  {
    v10 = @"Play";
  }

  (*(*(a1 + 48) + 16))();
  (*(*(a1 + 56) + 16))();
  v11 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __42__TVPPlayer__registerStateMachineHandlers__block_invoke_5_980;
  v13[3] = &unk_279D7BC20;
  v14 = v11;
  v15 = v10;
  [v14 executeBlockAfterCurrentStateTransition:v13];

  return @"Stopped";
}

- (TVPPlaybackDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (TVPASyncPlaybackDelegate)asyncDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_asyncDelegate);

  return WeakRetained;
}

- (void)setStartTime:(id *)time
{
  v3 = *&time->var0;
  self->_startTime.epoch = time->var3;
  *&self->_startTime.value = v3;
}

- (void)setStartingSeekPrecision:(id *)precision
{
  v3 = *&precision->var0;
  self->_startingSeekPrecision.epoch = precision->var3;
  *&self->_startingSeekPrecision.value = v3;
}

- (void)setLastTimeSentToAVKitImageHandler:(id *)handler
{
  v3 = *&handler->var0;
  self->_lastTimeSentToAVKitImageHandler.epoch = handler->var3;
  *&self->_lastTimeSentToAVKitImageHandler.value = v3;
}

- (void)setTimeAtStartOfSeek:(id *)seek
{
  v3 = *&seek->var0;
  self->_timeAtStartOfSeek.epoch = seek->var3;
  *&self->_timeAtStartOfSeek.value = v3;
}

- (void)setCachedElapsedCMTime:(id *)time
{
  v3 = *&time->var0;
  self->_cachedElapsedCMTime.epoch = time->var3;
  *&self->_cachedElapsedCMTime.value = v3;
}

- (CGSize)iFramePrefetchMaxSize
{
  width = self->_iFramePrefetchMaxSize.width;
  height = self->_iFramePrefetchMaxSize.height;
  result.height = height;
  result.width = width;
  return result;
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_773_cold_1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_3(void *a1, id *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a1;
  WeakRetained = objc_loadWeakRetained(a2);
  v5 = [WeakRetained currentDirectionOfPlaylistChange];
  v6 = @"previous";
  if (!v5)
  {
    v6 = @"next";
  }

  v7 = 138412290;
  v8 = v6;
  _os_log_error_impl(&dword_26CEDD000, v3, OS_LOG_TYPE_ERROR, "Changing to %@ media item due to error", &v7, 0xCu);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void __42__TVPPlayer__registerStateMachineHandlers__block_invoke_7_959_cold_5()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end