@interface VUIPlaybackReporterVPAF
+ (id)sharedInstance;
- (BOOL)_isDelegatedForPlayer:(id)player;
- (VUIPlaybackReporterVPAF)init;
- (id)_audioFormatForPlayer:(id)player session:(id)session;
- (id)_audioInfoForPlayer:(id)player;
- (id)_colorRangeForPlayer:(id)player;
- (id)_connectionInfo;
- (id)_createSessionForPlayer:(id)player;
- (id)_delegatedInfoForPlayer:(id)player;
- (id)_downloadInfoForPlayer:(id)player;
- (id)_focusInfoForSession:(id)session;
- (id)_metricsForPlayer:(id)player session:(id)session;
- (id)_metricsForSession:(id)session;
- (id)_screenInfo;
- (id)_sensitiveContentInfoForPlayer:(id)player;
- (id)_skipIntroActionForSession:(id)session consume:(BOOL)consume;
- (id)_subtitleInfoForPlayer:(id)player;
- (id)_trackerWithBaseEventDataForSession:(id)session;
- (id)_videoDisplayInfoForSession:(id)session;
- (unint64_t)_capPlayHeadIfNeeded:(unint64_t)needed forSession:(id)session;
- (unint64_t)_snapToNearestPrerollIfNeeded:(unint64_t)needed forSession:(id)session isAtPrerollBoundary:(BOOL *)boundary;
- (void)_applicationDidEnterBackground:(id)background;
- (void)_applicationWillResignActive:(id)active;
- (void)_catchUpToLiveDidBegin:(id)begin;
- (void)_catchUpToLiveDidEnd:(id)end;
- (void)_catchUpToLiveItemDidChange:(id)change;
- (void)_catchUpToLiveItemWillChange:(id)change;
- (void)_createPlaybackDatePollingTimerForLiveStream:(id)stream;
- (void)_didSelectPostPlayItem:(id)item;
- (void)_endSession:(id)session;
- (void)_flushUnreportedEventsAfterDelay:(double)delay;
- (void)_handleBackgroundEnterPIPChange:(id)change;
- (void)_handleBackgroundExitPIPChange:(id)change;
- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)notification;
- (void)_handleDisplaySizeChange:(id)change;
- (void)_handleIsPlaybackUIBeingShownDidChange:(id)change;
- (void)_handleMediaControllerNotification:(id)notification;
- (void)_handlePIPChange:(id)change;
- (void)_handleSkipIntro_iOS:(id)s;
- (void)_invalidatePlaybackDatePollingTimerForLiveStream:(id)stream;
- (void)_liveSportsPostPlayAutoPlayWillStart:(id)start;
- (void)_liveSportsPostPlayManualPlayWillStart:(id)start;
- (void)_mediaControllerDidPlayToEnd:(id)end;
- (void)_playerCurrentMediaItemWillSeek:(id)seek;
- (void)_reportForSession:(id)session state:(id)state reason:(id)reason;
- (void)_reportSeekStopAtTimeInMS:(unint64_t)s playbackDate:(id)date session:(id)session tracker:(id)tracker player:(id)player;
- (void)_setSessionMetadataValue:(id)value forKey:(id)key player:(id)player;
- (void)dealloc;
@end

@implementation VUIPlaybackReporterVPAF

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_18 != -1)
  {
    +[VUIPlaybackReporterVPAF sharedInstance];
  }

  v3 = sharedInstance___instance_4;

  return v3;
}

void __41__VUIPlaybackReporterVPAF_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(VUIPlaybackReporterVPAF);
  v1 = sharedInstance___instance_4;
  sharedInstance___instance_4 = v0;
}

- (VUIPlaybackReporterVPAF)init
{
  v30.receiver = self;
  v30.super_class = VUIPlaybackReporterVPAF;
  v2 = [(VUIPlaybackReporter *)&v30 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:5 valueOptions:0 capacity:0];
    pendingPlayerProperties = v2->_pendingPlayerProperties;
    v2->_pendingPlayerProperties = v3;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v2 selector:sel__playerCurrentMediaItemWillSeek_ name:*MEMORY[0x1E69D60C0] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerWillStartPlaybackNotification" object:0];

    defaultCenter3 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter3 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerWillStopPlaybackNotification" object:0];

    defaultCenter4 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter4 addObserver:v2 selector:sel__mediaControllerDidPlayToEnd_ name:@"VUIBackgroundMediaControllerDidPlayToEndNotification" object:0];

    defaultCenter5 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter5 addObserver:v2 selector:sel__handleDisplaySizeChange_ name:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification" object:0];

    defaultCenter6 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter6 addObserver:v2 selector:sel__handleMediaControllerNotification_ name:@"VUIBackgroundMediaControllerForegroundStateDidChangeNotification" object:0];

    defaultCenter7 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter7 addObserver:v2 selector:sel__handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification_ name:@"VUIBackgroundMediaControllerEmbeddedPlayerViewControllerTransferredToFullScreenControllerNotification" object:0];

    defaultCenter8 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter8 addObserver:v2 selector:sel__catchUpToLiveItemWillChange_ name:@"VUICatchUpToLiveIndexWillChangeNotification" object:0];

    defaultCenter9 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter9 addObserver:v2 selector:sel__catchUpToLiveItemDidChange_ name:@"VUICatchUpToLiveIndexDidChangeNotification" object:0];

    defaultCenter10 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter10 addObserver:v2 selector:sel__catchUpToLiveDidBegin_ name:@"VUICatchUpToLiveDidTransitionFromFullscreenNotification" object:0];

    defaultCenter11 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter11 addObserver:v2 selector:sel__catchUpToLiveDidEnd_ name:@"VUICatchUpToLiveDidTransitionToFullscreenNotification" object:0];

    defaultCenter12 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter12 addObserver:v2 selector:sel__liveSportsPostPlayAutoPlayWillStart_ name:@"VUILiveSportsPostPlayAutoPlayWillStartNotification" object:0];

    defaultCenter13 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter13 addObserver:v2 selector:sel__handleSkipIntro_iOS_ name:VUIPlaybackManagerWillSkipIntroNotification[0] object:0];

    defaultCenter14 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter14 addObserver:v2 selector:sel__handlePIPChange_ name:VUIPlaybackManagerIsPIPingDidChangeNotification[0] object:0];

    defaultCenter15 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter15 addObserver:v2 selector:sel__handleBackgroundEnterPIPChange_ name:@"VUIBackgroundMediaControllerDidEnterPIPNotification" object:0];

    defaultCenter16 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter16 addObserver:v2 selector:sel__handleBackgroundExitPIPChange_ name:@"VUIBackgroundMediaControllerDidStopPIPNotification" object:0];

    defaultCenter17 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter17 addObserver:v2 selector:sel__handleDisplaySizeChange_ name:VUIPlaybackManagerVideoDisplaySizeDidChange[0] object:0];

    defaultCenter18 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter18 addObserver:v2 selector:sel__handleIsPlaybackUIBeingShownDidChange_ name:VUIPlaybackManagerIsPlaybackUIBeingShownDidChange[0] object:0];

    defaultCenter19 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter19 addObserver:v2 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter20 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter20 addObserver:v2 selector:sel__applicationWillResignActive_ name:*MEMORY[0x1E69DDBC8] object:0];

    defaultCenter21 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter21 addObserver:v2 selector:sel__didSelectPostPlayItem_ name:@"VUIPostPlayDidSelectItemNotification" object:0];

    defaultCenter22 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter22 addObserver:v2 selector:sel__liveSportsPostPlayManualPlayWillStart_ name:@"VUILiveSportsPostPlayManualPlayWillStartNotification" object:0];

    v28 = VUIVPAFLogObject(v27);
    [(VUIPlaybackReporter *)v2 setLogObject:v28];
  }

  return v2;
}

- (void)dealloc
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  v4.receiver = self;
  v4.super_class = VUIPlaybackReporterVPAF;
  [(VUIPlaybackReporter *)&v4 dealloc];
}

- (void)_flushUnreportedEventsAfterDelay:(double)delay
{
  v15 = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = __Block_byref_object_copy__14;
  v11[4] = __Block_byref_object_dispose__14;
  v12 = [[VUIScopedBackgroundTask alloc] initWithIdentifier:@"VUIMetricsBackgroundTaskFlush" expirationHandler:0];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke;
  aBlock[3] = &unk_1E8732C30;
  aBlock[4] = v11;
  v4 = _Block_copy(aBlock);
  v5 = v4;
  if (delay == 0.0)
  {
    (*(v4 + 2))(v4);
  }

  else
  {
    v6 = VUIVPAFLogObject(v4);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      delayCopy = delay;
      _os_log_impl(&dword_1E323F000, v6, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Will flush events after delay of %f", buf, 0xCu);
    }

    v7 = dispatch_time(0, (delay * 1000000000.0));
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke_83;
    v8[3] = &unk_1E872D7E0;
    v9 = v5;
    dispatch_after(v7, MEMORY[0x1E69E96A0], v8);
  }

  _Block_object_dispose(v11, 8);
}

void __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke(uint64_t a1)
{
  v2 = VUIVPAFLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Begin flushing events", buf, 2u);
  }

  v3 = +[VUIMetricsJetEngine sharedInstance];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke_82;
  v4[3] = &unk_1E8732C30;
  v4[4] = *(a1 + 32);
  [v3 flushMetricsWithCompletion:v4];
}

void __60__VUIPlaybackReporterVPAF__flushUnreportedEventsAfterDelay___block_invoke_82(uint64_t a1)
{
  v2 = VUIVPAFLogObject(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1E323F000, v2, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Done flushing events", v5, 2u);
  }

  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = 0;
}

- (id)_createSessionForPlayer:(id)player
{
  playerCopy = player;
  v5 = VUIVPAFLogObject(playerCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Using Jet VPAF tracking", buf, 2u);
  }

  v6 = [[VUIPlaybackReporterVPAFPlaylist alloc] initWithPlayer:playerCopy];
  if (v6)
  {
    v7 = +[VUIMetricsJetEngine sharedInstance];
    wrappedPipeline = [v7 wrappedPipeline];

    if (wrappedPipeline)
    {
      v10 = [objc_alloc(MEMORY[0x1E69AB828]) initWithPipeline:wrappedPipeline playlist:v6 eventData:0 topic:@"xp_amp_tv_vpaf"];
    }

    else
    {
      v11 = VUIVPAFLogObject(v9);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Metrics Jet pipeline is nil, not creating VPAF tracker", buf, 2u);
      }

      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = [[VUIPlaybackReporterSession alloc] initWithPlayer:playerCopy context:v10];
  -[VUIPlaybackReporterSession setHasInterstitials:](v12, "setHasInterstitials:", [playerCopy hasInterstitials]);
  [(VUIPlaybackReporterSession *)v12 setReportingEnabled:v10 != 0];
  v13 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:playerCopy];
  if (v13)
  {
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__VUIPlaybackReporterVPAF__createSessionForPlayer___block_invoke;
    v19[3] = &unk_1E8732C58;
    v20 = v12;
    [v13 enumerateKeysAndObjectsUsingBlock:v19];
    [(NSMapTable *)self->_pendingPlayerProperties removeObjectForKey:playerCopy];
  }

  v14 = [(VUIPlaybackReporterSession *)v12 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
  currentMediaItem = [playerCopy currentMediaItem];
  v16 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataKeyReportVPAFWhenPlayingInBackground"];
  if (v14 && ([v14 BOOLValue] & 1) == 0 && (objc_msgSend(v16, "BOOLValue") & 1) == 0)
  {
    [(VUIPlaybackReporterSession *)v12 setReportingEnabled:0];
  }

  if ([VUIPlaybackUtilities playerIsLive:playerCopy])
  {
    [(VUIPlaybackReporterVPAF *)self _createPlaybackDatePollingTimerForLiveStream:v12];
    v17 = MEMORY[0x1E695E118];
  }

  else
  {
    v17 = MEMORY[0x1E695E110];
  }

  [(VUIPlaybackReporterSession *)v12 setMetadata:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];

  return v12;
}

- (void)_reportForSession:(id)session state:(id)state reason:(id)reason
{
  v150[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  stateCopy = state;
  reasonCopy = reason;
  v11 = [(VUIPlaybackReporterVPAF *)self _trackerWithBaseEventDataForSession:sessionCopy];
  v12 = v11;
  if (v11)
  {
    v115 = v11;
    v116 = reasonCopy;
    player = [sessionCopy player];
    currentMediaItem = [player currentMediaItem];
    v14 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
    bOOLValue = [v14 BOOLValue];

    v15 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
    bOOLValue2 = [v15 BOOLValue];

    v16 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
    bOOLValue3 = [v16 BOOLValue];

    playing = [MEMORY[0x1E69D5A40] playing];

    selfCopy = self;
    v117 = stateCopy;
    if (playing != stateCopy)
    {
      v19 = [sessionCopy consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeySeekInfo"];
      v119 = v19;
      if (![VUIPlaybackUtilities playerIsLive:player])
      {
        v20 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];
        bOOLValue4 = [v20 BOOLValue];

        if (!bOOLValue4)
        {
          v38 = [v19 objectForKey:*MEMORY[0x1E69D60B0]];
          v39 = v38;
          reasonCopy = v116;
          if (v38)
          {
            [v38 doubleValue];
          }

          else
          {
            [player elapsedTime];
          }

          buf[0] = 0;
          v45 = [(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v40 * 1000.0) forSession:sessionCopy isAtPrerollBoundary:buf];
          v46 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
          bOOLValue5 = [v46 BOOLValue];

          v37 = 0;
          if ([sessionCopy hasInterstitials])
          {
            v37 = buf[0] & bOOLValue5;
          }

          v112 = [(VUIPlaybackReporterVPAF *)selfCopy _capPlayHeadIfNeeded:v45 forSession:sessionCopy];

          playbackDate = 0;
LABEL_32:
          consumeStopType = [sessionCopy consumeStopType];
          consumeStopReason = [sessionCopy consumeStopReason];
          v120 = playbackDate;
          if ([consumeStopReason isEqualToString:*MEMORY[0x1E69AB7D8]])
          {
            v122 = consumeStopType;
            v50 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];

            if (v50)
            {
              v130 = *MEMORY[0x1E69AB750];
              v131 = *MEMORY[0x1E69AB7F0];
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v131 forKeys:&v130 count:1];
              self = selfCopy;
              v52 = [(VUIPlaybackReporterVPAF *)selfCopy _skipIntroActionForSession:sessionCopy consume:0];
              v53 = v52;
              v12 = v115;
              if (v52)
              {
                v129[0] = v51;
                v129[1] = v52;
                v54 = MEMORY[0x1E695DEC8];
                v55 = v129;
                v56 = 2;
              }

              else
              {
                v128 = v51;
                v54 = MEMORY[0x1E695DEC8];
                v55 = &v128;
                v56 = 1;
              }

              v58 = [v54 arrayWithObjects:v55 count:v56];

              goto LABEL_49;
            }

            v12 = v115;
            self = selfCopy;
            if (bOOLValue)
            {
              v60 = *MEMORY[0x1E69AB7E0];
              v126[0] = *MEMORY[0x1E69AB750];
              v126[1] = @"extraType";
              v127[0] = v60;
              v127[1] = @"CatchUpToLive";
              v51 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v127 forKeys:v126 count:2];
              v125 = v51;
              v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
              v61 = MEMORY[0x1E69AB810];
              if (!bOOLValue2)
              {
                v61 = MEMORY[0x1E69AB818];
              }

              v62 = *v61;

              v122 = v62;
              goto LABEL_49;
            }

            v58 = 0;
LABEL_50:
            v63 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
            bOOLValue6 = [v63 BOOLValue];

            v66 = VUIVPAFLogObject(v65);
            v67 = v66;
            if (bOOLValue6)
            {
              v68 = currentMediaItem;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
              {
                v69 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v112 playbackDate:v120];
                v70 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
                *buf = 138413314;
                v133 = v69;
                v134 = 2112;
                v135 = v122;
                v136 = 2112;
                v137 = consumeStopReason;
                v138 = 2112;
                v139 = v70;
                v140 = 2112;
                v141 = v58;
                _os_log_impl(&dword_1E323F000, v67, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting play event stop: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

                self = selfCopy;
              }

              v71 = v122;
              [v12 playStoppedAtOverallPosition:v112 type:v122 reason:consumeStopReason eventData:v58];
            }

            else
            {
              v68 = currentMediaItem;
              if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
              {
                [(VUIPlaybackReporterVPAF *)v67 _reportForSession:v72 state:v73 reason:v74, v75, v76, v77, v78];
              }

              v71 = v122;
            }

LABEL_83:

            mEMORY[0x1E69DC668] = [MEMORY[0x1E69DC668] sharedApplication];
            applicationState = [mEMORY[0x1E69DC668] applicationState];

            if (applicationState == 2)
            {
              [(VUIPlaybackReporterVPAF *)self _flushUnreportedEventsAfterDelay:1.0];
            }

            stateCopy = v117;
            goto LABEL_86;
          }

          if (v37)
          {
            v57 = *MEMORY[0x1E69AB810];

            v58 = 0;
            v51 = consumeStopReason;
            v122 = v57;
            consumeStopReason = *MEMORY[0x1E69AB7E8];
            v12 = v115;
LABEL_38:
            self = selfCopy;
LABEL_49:

            goto LABEL_50;
          }

          v122 = consumeStopType;
          if (![consumeStopReason isEqualToString:*MEMORY[0x1E69AB7F8]])
          {
            v58 = 0;
            v12 = v115;
            self = selfCopy;
            goto LABEL_50;
          }

          paused = [MEMORY[0x1E69D5A40] paused];

          if (paused == v117)
          {
            v51 = *MEMORY[0x1E69AB7C8];
          }

          else
          {
            v51 = consumeStopReason;
          }

          v12 = v115;
          if ([reasonCopy isEqualToString:*MEMORY[0x1E69D5F00]])
          {
            v101 = *MEMORY[0x1E69AB810];

            playlist = [player playlist];
            nextMediaItem = [playlist nextMediaItem];

            if (nextMediaItem)
            {
              v104 = MEMORY[0x1E69AB7C0];
            }

            else
            {
              v104 = MEMORY[0x1E69AB7A8];
            }

            consumeStopReason = *v104;
            v58 = 0;
            v122 = v101;
            goto LABEL_38;
          }

          self = selfCopy;
          if ([reasonCopy isEqualToString:*MEMORY[0x1E69D5EE0]])
          {
            v105 = MEMORY[0x1E69AB7B0];
          }

          else if ([reasonCopy isEqualToString:*MEMORY[0x1E69D5EF8]])
          {
            v105 = MEMORY[0x1E69AB7A0];
          }

          else if ([reasonCopy isEqualToString:@"VUIPostPlayReasonAutomaticUpNext"])
          {
            v105 = MEMORY[0x1E69AB7C0];
          }

          else
          {
            if (![reasonCopy isEqualToString:@"VUIPostPlayReasonAutomaticPlayOther"])
            {
              if ([reasonCopy isEqualToString:@"VUIPostPlayReasonManualUpNext"])
              {
                v107 = MEMORY[0x1E69AB7C0];
              }

              else
              {
                if (![reasonCopy isEqualToString:@"VUIPostPlayReasonManualPlayOther"])
                {
                  v58 = 0;
                  consumeStopReason = v51;
                  goto LABEL_50;
                }

                v107 = MEMORY[0x1E69AB7D0];
              }

              consumeStopReason = *v107;

              v106 = MEMORY[0x1E69AB818];
              goto LABEL_102;
            }

            v105 = MEMORY[0x1E69AB7D0];
          }

          consumeStopReason = *v105;

          v106 = MEMORY[0x1E69AB810];
LABEL_102:
          v58 = 0;
          v51 = v122;
          v122 = *v106;
          goto LABEL_49;
        }
      }

      v22 = [v19 objectForKey:*MEMORY[0x1E69D5F20]];
      v23 = v22;
      reasonCopy = v116;
      if (v22)
      {
        v24 = v22;
      }

      else
      {
        playbackDate = [player playbackDate];
        if (playbackDate)
        {
          goto LABEL_20;
        }

        v24 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
      }

      playbackDate = v24;
LABEL_20:
      [playbackDate timeIntervalSince1970];
      v112 = vcvtad_u64_f64(v36 * 1000.0);

      v37 = 0;
      goto LABEL_32;
    }

    v121 = bOOLValue3;
    v110 = player;
    if ([VUIPlaybackUtilities playerIsLive:player])
    {
      playbackDate2 = [player playbackDate];
      [playbackDate2 timeIntervalSince1970];
      v111 = vcvtad_u64_f64(v27 * 1000.0);
      if (playbackDate2)
      {
        v120 = playbackDate2;
        v28 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
        bOOLValue7 = [v28 BOOLValue];

        if (bOOLValue7)
        {
          v30 = VUIVPAFLogObject([sessionCopy setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"]);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - In _reportForSession, playback has started and playback date has become non-nil while waiting for it.  Will report play start", buf, 2u);
          }

          v31 = 0;
        }

        else
        {
          v31 = 0;
        }
      }

      else
      {
        v41 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyTimedOutWaitingForPlaybackDate"];
        bOOLValue8 = [v41 BOOLValue];

        if (bOOLValue8)
        {
          v44 = VUIVPAFLogObject(v43);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E323F000, v44, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - In _reportForSession, will report nil playback date since we've timed out waiting for the playback date", buf, 2u);
          }
        }

        else
        {
          v44 = VUIVPAFLogObject([sessionCopy setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"]);
          if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
          {
            [(VUIPlaybackReporterVPAF *)v44 _reportForSession:v79 state:v80 reason:v81, v82, v83, v84, v85];
          }
        }

        v31 = 0;
        v120 = 0;
      }
    }

    else
    {
      [player elapsedTime];
      buf[0] = 0;
      v33 = [(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v32 * 1000.0) forSession:sessionCopy isAtPrerollBoundary:buf];
      v34 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"];
      bOOLValue9 = [v34 BOOLValue];

      v31 = 0;
      if ([sessionCopy hasInterstitials])
      {
        v31 = buf[0] & bOOLValue9;
      }

      v111 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:v33 forSession:sessionCopy];
      v120 = 0;
    }

    consumeStartType = [sessionCopy consumeStartType];
    consumeStartReason = [sessionCopy consumeStartReason];
    consumeStopReason = [sessionCopy consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    v88 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:sessionCopy consume:0];
    v108 = v88;
    if ([consumeStopReason BOOLValue])
    {
      v89 = MEMORY[0x1E69AB810];
      if (!(bOOLValue2 & 1 | ((bOOLValue & 1) == 0)))
      {
        v89 = MEMORY[0x1E69AB818];
      }

      v119 = *v89;

      v123 = *MEMORY[0x1E69AB778];
      if (v88)
      {
        v148 = *MEMORY[0x1E69AB748];
        v149 = *MEMORY[0x1E69AB790];
        v90 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v149 forKeys:&v148 count:1];
        v150[0] = v90;
        v150[1] = v88;
        v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:v150 count:2];

        player = v110;
        v12 = v115;
        [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v111 playbackDate:v120 session:sessionCopy tracker:v115 player:v110];
        if (!bOOLValue)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v12 = v115;
        player = v110;
        if ((bOOLValue & 1) == 0)
        {
          [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v111 playbackDate:v120 session:sessionCopy tracker:v115 player:v110];
          v91 = 0;
          goto LABEL_77;
        }

        v146 = *MEMORY[0x1E69AB748];
        v147 = *MEMORY[0x1E69AB780];
        v93 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v147 forKeys:&v146 count:1];
        v145 = v93;
        v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v145 count:1];

        [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v111 playbackDate:v120 session:sessionCopy tracker:v115 player:v110];
      }

      [sessionCopy setMetadata:0 forKey:{@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive", v108}];
      [sessionCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
      [sessionCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
    }

    else
    {
      if (!v121)
      {
        v68 = currentMediaItem;
        if (v31)
        {
          v119 = *MEMORY[0x1E69AB810];

          v123 = *MEMORY[0x1E69AB788];
          v91 = 0;
        }

        else
        {
          v91 = 0;
          v123 = consumeStartReason;
          v119 = consumeStartType;
        }

        v12 = v115;
        player = v110;
        goto LABEL_78;
      }

      v143 = @"extraType";
      v144 = @"CatchUpToLive";
      v92 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v144 forKeys:&v143 count:1];
      v142 = v92;
      v91 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v142 count:1];

      v123 = consumeStartReason;
      v119 = consumeStartType;
      v12 = v115;
      player = v110;
    }

LABEL_77:
    v68 = currentMediaItem;
LABEL_78:
    [sessionCopy setMetadata:0 forKey:{@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo", v108}];
    v94 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
    bOOLValue10 = [v94 BOOLValue];

    if ((bOOLValue10 & 1) == 0)
    {
      v96 = VUIVPAFLogObject([sessionCopy setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyHaveSentInitialStartEvent"]);
      if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
      {
        v97 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v111 playbackDate:v120];
        v98 = [v68 mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
        *buf = 138413314;
        v133 = v97;
        v134 = 2112;
        v135 = v119;
        v136 = 2112;
        v137 = v123;
        v138 = 2112;
        v139 = v98;
        v140 = 2112;
        v141 = v91;
        _os_log_impl(&dword_1E323F000, v96, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting play event start: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

        v68 = currentMediaItem;
      }

      [v12 playStartedAtOverallPosition:v111 type:v119 reason:v123 eventData:v91];
    }

    v71 = v123;
    v58 = v109;
    goto LABEL_83;
  }

  player = VUIVPAFLogObject(0);
  if (os_log_type_enabled(player, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, player, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report because tracker is nil", buf, 2u);
  }

LABEL_86:
}

- (void)_endSession:(id)session
{
  sessionCopy = session;
  [(VUIPlaybackReporterVPAF *)self flushUnreportedEvents];
  [(VUIPlaybackReporterVPAF *)self _invalidatePlaybackDatePollingTimerForLiveStream:sessionCopy];
  v5.receiver = self;
  v5.super_class = VUIPlaybackReporterVPAF;
  [(VUIPlaybackReporter *)&v5 _endSession:sessionCopy];
}

- (id)_metricsForSession:(id)session
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = MEMORY[0x1E695DF90];
  sessionCopy = session;
  v6 = objc_alloc_init(v4);
  v7 = [(VUIPlaybackReporterVPAF *)self _videoDisplayInfoForSession:sessionCopy];
  [v6 addEntriesFromDictionary:v7];

  _screenInfo = [(VUIPlaybackReporterVPAF *)self _screenInfo];
  [v6 addEntriesFromDictionary:_screenInfo];

  _connectionInfo = [(VUIPlaybackReporterVPAF *)self _connectionInfo];
  [v6 addEntriesFromDictionary:_connectionInfo];

  v10 = [(VUIPlaybackReporterVPAF *)self _focusInfoForSession:sessionCopy];
  [v6 vui_setObjectIfNotNil:v10 forKey:@"playbackFocus"];

  player = [sessionCopy player];
  v12 = [(VUIPlaybackReporterVPAF *)self _metricsForPlayer:player session:sessionCopy];

  v13 = VUIVPAFLogObject([v6 addEntriesFromDictionary:v12]);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v6;
    _os_log_impl(&dword_1E323F000, v13, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Session metrics:%@", &v15, 0xCu);
  }

  return v6;
}

- (id)_screenInfo
{
  v15[2] = *MEMORY[0x1E69E9840];
  mainScreen = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen bounds];
  v4 = v3;
  v6 = v5;

  mainScreen2 = [MEMORY[0x1E69DCEB0] mainScreen];
  [mainScreen2 scale];
  v9 = v8;

  v14[0] = @"screenHeight";
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:v6 * v9];
  v15[0] = v10;
  v14[1] = @"screenWidth";
  v11 = [MEMORY[0x1E696AD98] numberWithDouble:v4 * v9];
  v15[1] = v11;
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];

  return v12;
}

- (id)_connectionInfo
{
  v6[1] = *MEMORY[0x1E69E9840];
  if (+[_TtC8VideosUI38VUINetworkReachabilityMonitorObjCProxy isNetworkReachable])
  {
    v2 = @"false";
  }

  else
  {
    v2 = @"true";
  }

  v5 = @"isOffline";
  v6[0] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)_videoDisplayInfoForSession:(id)session
{
  v15[2] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  player = [sessionCopy player];
  v6 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:player];

  if ([v6 isEqualToString:@"TVOut"])
  {
    v7 = MGGetBoolAnswer();
  }

  else
  {
    v7 = 0;
  }

  if (([v6 isEqualToString:@"None"] & 1) != 0 || v7)
  {
    v9 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyVideoDisplaySize"];
    v13 = *MEMORY[0x1E695F060];
    if (CGSizeMakeWithDictionaryRepresentation(v9, &v13))
    {
      v14[0] = @"videoViewportHeight";
      v10 = [MEMORY[0x1E696AD98] numberWithDouble:floor(v13.height)];
      v14[1] = @"videoViewportWidth";
      v15[0] = v10;
      v11 = [MEMORY[0x1E696AD98] numberWithDouble:floor(v13.width)];
      v15[1] = v11;
      v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:2];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_skipIntroActionForSession:(id)session consume:(BOOL)consume
{
  consumeCopy = consume;
  v13[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v6 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];
  if (consumeCopy)
  {
    [sessionCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];
  }

  if (!v6)
  {
    v8 = 0;
    goto LABEL_11;
  }

  localizedTitle = [v6 localizedTitle];
  if (![localizedTitle length])
  {
    v9 = +[VUILocalizationManager sharedInstance];
    v10 = [v9 localizedStringForKey:@"SKIP_INTRO"];

    localizedTitle = v10;
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    v8 = 0;
    goto LABEL_10;
  }

  if (!localizedTitle)
  {
    goto LABEL_9;
  }

LABEL_6:
  v12 = @"actionName";
  v13[0] = localizedTitle;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
LABEL_10:

LABEL_11:

  return v8;
}

- (id)_focusInfoForSession:(id)session
{
  sessionCopy = session;
  v4 = @"foreground";
  v5 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
  v6 = v5;
  v7 = v4;
  if (v5)
  {
    v7 = v4;
    if (([v5 BOOLValue] & 1) == 0)
    {
      v7 = @"background";
    }
  }

  player = [sessionCopy player];
  currentMediaItem = [player currentMediaItem];
  v10 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];
  v11 = [v10 length];

  if (v11)
  {
    v12 = v4;

    v7 = v12;
  }

  v13 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPIP"];
  if ([v13 BOOLValue])
  {
    v14 = @"pictureInPicture";

    v7 = v14;
  }

  return v7;
}

- (id)_metricsForPlayer:(id)player session:(id)session
{
  playerCopy = player;
  v7 = MEMORY[0x1E695DF90];
  sessionCopy = session;
  v9 = objc_alloc_init(v7);
  currentMediaItem = [playerCopy currentMediaItem];
  mediaItemURL = [currentMediaItem mediaItemURL];

  if (([mediaItemURL isFileURL] & 1) == 0)
  {
    absoluteString = [mediaItemURL absoluteString];
    [v9 vui_setObjectIfNotNil:absoluteString forKey:@"url"];
  }

  v13 = [(VUIPlaybackReporterVPAF *)self _colorRangeForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v13 forKey:@"videoColorRange"];

  v14 = [(VUIPlaybackReporterVPAF *)self _audioFormatForPlayer:playerCopy session:sessionCopy];

  [v9 vui_setObjectIfNotNil:v14 forKey:@"audioFormat"];
  v15 = [(VUIPlaybackReporterVPAF *)self _sensitiveContentInfoForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v15 forKey:@"sensitiveContentType"];

  v16 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v16 forKey:@"delegatedPlayback"];

  v17 = [(VUIPlaybackReporterVPAF *)self _downloadInfoForPlayer:playerCopy];
  [v9 vui_setObjectIfNotNil:v17 forKey:@"downloadState"];

  v18 = [(VUIPlaybackReporterVPAF *)self _subtitleInfoForPlayer:playerCopy];
  [v9 setValuesForKeysWithDictionary:v18];

  v19 = [(VUIPlaybackReporterVPAF *)self _audioInfoForPlayer:playerCopy];
  [v9 setValuesForKeysWithDictionary:v19];

  return v9;
}

- (id)_subtitleInfoForPlayer:(id)player
{
  playerCopy = player;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    selectedSubtitleOptionWithNoOffOrAutoOption = [playerCopy selectedSubtitleOptionWithNoOffOrAutoOption];
    if (selectedSubtitleOptionWithNoOffOrAutoOption)
    {
      v6 = selectedSubtitleOptionWithNoOffOrAutoOption;
      languageCodeBCP47 = [selectedSubtitleOptionWithNoOffOrAutoOption languageCodeBCP47];
      if ([v6 containsOnlyForcedSubtitles])
      {
        v8 = VUIPlaybackReporterVPAFKeyForcedSubtitleLocale;
      }

      else if ([v6 subtitleType] == 2)
      {
        v8 = VUIPlaybackReporterVPAFKeyClosedCaptionLocale;
      }

      else
      {
        subtitleType = [v6 subtitleType];
        v8 = VUIPlaybackReporterVPAFKeySubtitleLocale;
        if (subtitleType == 1)
        {
          v8 = VUIPlaybackReporterVPAFKeySDHLocale;
        }
      }

      [v4 vui_setObjectIfNotNil:languageCodeBCP47 forKey:*v8];
    }
  }

  v10 = [v4 copy];

  return v10;
}

- (id)_audioInfoForPlayer:(id)player
{
  v23 = *MEMORY[0x1E69E9840];
  playerCopy = player;
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  selectedAudioOption = [playerCopy selectedAudioOption];
  v6 = selectedAudioOption;
  if (selectedAudioOption)
  {
    hasAudioDescriptions = [selectedAudioOption hasAudioDescriptions];
    languageCodeBCP47 = [v6 languageCodeBCP47];
    v9 = VUIPlaybackReporterVPAFKeyAudioDescriptionLocale;
    if (!hasAudioDescriptions)
    {
      v9 = VUIPlaybackReporterVPAFKeyAudioLocale;
    }

    [v4 vui_setObjectIfNotNil:languageCodeBCP47 forKey:*v9];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    mediaCharacteristics = [v6 mediaCharacteristics];
    v11 = [mediaCharacteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v19;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v19 != v13)
          {
            objc_enumerationMutation(mediaCharacteristics);
          }

          v15 = *(*(&v18 + 1) + 8 * i);
          if ([VUIVideosPlayable isMediaCharacteristicAnAudioVariantID:v15])
          {
            [v4 vui_setObjectIfNotNil:v15 forKey:@"audioVariantId"];
            goto LABEL_14;
          }
        }

        v12 = [mediaCharacteristics countByEnumeratingWithState:&v18 objects:v22 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  v16 = [v4 copy];

  return v16;
}

- (id)_colorRangeForPlayer:(id)player
{
  playerCopy = player;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [playerCopy currentMediaItemVideoRange], (v4 - 1) <= 3))
  {
    v5 = *off_1E8732CC8[v4 - 1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_audioFormatForPlayer:(id)player session:(id)session
{
  playerCopy = player;
  sessionCopy = session;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_9;
  }

  currentMediaItemAudioFormat = [playerCopy currentMediaItemAudioFormat];
  if (currentMediaItemAudioFormat)
  {
    v8 = currentMediaItemAudioFormat;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:currentMediaItemAudioFormat];
    [sessionCopy setMetadata:v9 forKey:@"VUIPlaybackReporterSessionMetadataKeyAudioFormat"];
  }

  else
  {
    v10 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyAudioFormat"];
    v9 = v10;
    v8 = v10 ? [v10 integerValue] : 0;
  }

  if ((v8 - 1) <= 3)
  {
    v11 = *off_1E8732CE8[v8 - 1];
  }

  else
  {
LABEL_9:
    v11 = 0;
  }

  return v11;
}

- (id)_delegatedInfoForPlayer:(id)player
{
  playerCopy = player;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && (v4 = [playerCopy externalPlaybackType], v4 <= 2))
  {
    v5 = *off_1E8732D08[v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_isDelegatedForPlayer:(id)player
{
  v3 = [(VUIPlaybackReporterVPAF *)self _delegatedInfoForPlayer:player];
  if ([v3 isEqualToString:@"Airplay"])
  {
    v4 = 1;
  }

  else
  {
    v4 = [v3 isEqualToString:@"TVOut"];
  }

  return v4;
}

- (id)_sensitiveContentInfoForPlayer:(id)player
{
  currentMediaItem = [player currentMediaItem];
  v4 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C38]];

  if ([v4 BOOLValue])
  {
    v5 = @"adult";
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_downloadInfoForPlayer:(id)player
{
  playerCopy = player;
  if ([VUIPlaybackUtilities playerIsLive:playerCopy])
  {
    v4 = @"streaming";
  }

  else
  {
    currentMediaItem = [playerCopy currentMediaItem];
    v6 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5C68]];

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v6 integerValue], (v7 - 1) <= 2))
    {
      v4 = *off_1E8732D20[v7 - 1];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (void)_setSessionMetadataValue:(id)value forKey:(id)key player:(id)player
{
  valueCopy = value;
  keyCopy = key;
  playerCopy = player;
  v10 = [(VUIPlaybackReporter *)self _sessionForPlayer:playerCopy];
  v11 = v10;
  if (v10)
  {
    [v10 setMetadata:valueCopy forKey:keyCopy];
  }

  else
  {
    v12 = [(NSMapTable *)self->_pendingPlayerProperties objectForKey:playerCopy];
    if (!v12)
    {
      v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    }

    [v12 setObject:valueCopy forKey:keyCopy];
    [(NSMapTable *)self->_pendingPlayerProperties setObject:v12 forKey:playerCopy];
  }
}

- (id)_trackerWithBaseEventDataForSession:(id)session
{
  v21[1] = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  player = [sessionCopy player];
  currentMediaItem = [player currentMediaItem];
  context = [sessionCopy context];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v9 = +[VUIMetricsController sharedInstance];
    baseFieldsForVPAF = [v9 baseFieldsForVPAF];

    if (baseFieldsForVPAF)
    {
      selfCopy = self;
      v11 = [baseFieldsForVPAF vui_BOOLForKey:@"sharedActivity" defaultValue:0];
      v12 = [sessionCopy metadataForKey:?];
      v13 = v12;
      if (v11)
      {
        if (!v12)
        {
          v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
        }

        [v13 setObject:MEMORY[0x1E695E118] forKey:@"sharedActivity"];
        v14 = [baseFieldsForVPAF objectForKey:@"sharedActivityDevicesCurrent"];
        v15 = [baseFieldsForVPAF objectForKey:@"sharedActivityDevicesMax"];
        if (v14)
        {
          [v13 setObject:v14 forKey:@"sharedActivityDevicesCurrent"];
        }

        if (v15)
        {
          [v13 setObject:v15 forKey:@"sharedActivityDevicesMax"];
        }

        [sessionCopy setMetadata:v13 forKey:@"VUIPlaybackReporterSessionKeySavedSharePlayBaseFields"];
      }

      [v8 addEntriesFromDictionary:baseFieldsForVPAF];
      if (v13)
      {
        [v8 addEntriesFromDictionary:v13];
      }

      self = selfCopy;
    }

    v16 = [(VUIPlaybackReporterVPAF *)self _metricsForSession:sessionCopy];
    [v8 addEntriesFromDictionary:v16];

    v21[0] = v8;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v21 count:1];
    [context resetEventData:v17];

    v18 = context;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (void)_reportSeekStopAtTimeInMS:(unint64_t)s playbackDate:(id)date session:(id)session tracker:(id)tracker player:(id)player
{
  v38[1] = *MEMORY[0x1E69E9840];
  dateCopy = date;
  sessionCopy = session;
  playerCopy = player;
  trackerCopy = tracker;
  currentMediaItem = [playerCopy currentMediaItem];
  v15 = *MEMORY[0x1E69AB810];
  v16 = *MEMORY[0x1E69AB808];
  v17 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:sessionCopy consume:0];
  v18 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
  bOOLValue = [v18 BOOLValue];

  LOBYTE(v18) = [VUIPlaybackUtilities playerIsLive:playerCopy];
  if ((v18 & 1) == 0)
  {
    v20 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:s forSession:sessionCopy];
    s = v20;
  }

  if (v17)
  {
    v21 = *MEMORY[0x1E69AB7F0];

    v38[0] = v17;
    v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:1];
    v22 = v20;
LABEL_7:
    v16 = v21;
    goto LABEL_8;
  }

  if (bOOLValue)
  {
    v21 = *MEMORY[0x1E69AB7E0];

    v22 = 0;
    goto LABEL_7;
  }

  v22 = 0;
LABEL_8:
  v23 = VUIVPAFLogObject(v20);
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v24 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:s playbackDate:dateCopy];
    v25 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
    *buf = 138413314;
    v29 = v24;
    v30 = 2112;
    v31 = v15;
    v32 = 2112;
    v33 = v16;
    v34 = 2112;
    v35 = v25;
    v36 = 2112;
    v37 = v22;
    _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting seek event stop: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);
  }

  [trackerCopy seekStoppedAtOverallPosition:s type:v15 reason:v16 eventData:v22];
}

- (void)_playerCurrentMediaItemWillSeek:(id)seek
{
  v48[1] = *MEMORY[0x1E69E9840];
  seekCopy = seek;
  v5 = VUIVPAFLogObject(seekCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Current media item will seek", buf, 2u);
  }

  object = [seekCopy object];
  v7 = [(VUIPlaybackReporter *)self _sessionForPlayer:object];
  if (v7)
  {
    v8 = [(VUIPlaybackReporterVPAF *)self _trackerWithBaseEventDataForSession:v7];
    if (!v8)
    {
      v14 = VUIVPAFLogObject(0);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v14, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report seek because tracker is nil", buf, 2u);
      }

      goto LABEL_28;
    }

    v9 = [VUIPlaybackUtilities playerIsLive:object];
    userInfo = [seekCopy userInfo];
    v11 = userInfo;
    if (v9)
    {
      v12 = [userInfo objectForKey:*MEMORY[0x1E69D5F20]];

      [v12 timeIntervalSince1970];
      v37 = vcvtad_u64_f64(v13 * 1000.0);
    }

    else
    {
      v15 = [userInfo objectForKey:*MEMORY[0x1E69D60B0]];

      [v15 doubleValue];
      v37 = [(VUIPlaybackReporterVPAF *)self _capPlayHeadIfNeeded:[(VUIPlaybackReporterVPAF *)self _snapToNearestPrerollIfNeeded:vcvtad_u64_f64(v16 * 1000.0) forSession:v7 isAtPrerollBoundary:0] forSession:v7];

      v12 = 0;
    }

    v34 = [v7 consumeMetadataForKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    if ([v34 BOOLValue])
    {
      [(VUIPlaybackReporterVPAF *)self _reportSeekStopAtTimeInMS:v37 playbackDate:v12 session:v7 tracker:v8 player:object];
    }

    state = [object state];
    playing = [MEMORY[0x1E69D5A40] playing];

    v36 = v12;
    if (state == playing)
    {
      [v7 setMetadata:*MEMORY[0x1E69AB7D8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
      v19 = *MEMORY[0x1E69AB818];
      [v7 setMetadata:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
      userInfo2 = [seekCopy userInfo];

      if (userInfo2)
      {
        userInfo3 = [seekCopy userInfo];
        [v7 setMetadata:userInfo3 forKey:@"VUIPlaybackReporterSessionMetadataKeySeekInfo"];
      }
    }

    else
    {
      v19 = *MEMORY[0x1E69AB818];
    }

    [v7 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyHandlingSeek"];
    currentMediaItem = [object currentMediaItem];
    v22 = [v7 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo"];

    v23 = [v7 metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];
    bOOLValue = [v23 BOOLValue];

    v25 = v19;
    v26 = *MEMORY[0x1E69AB800];
    v27 = v26;
    if (v22)
    {
      v28 = *MEMORY[0x1E69AB790];

      v29 = [(VUIPlaybackReporterVPAF *)self _skipIntroActionForSession:v7 consume:0];
      v27 = v29;
      if (v29)
      {
        v48[0] = v29;
        v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v48 count:1];
LABEL_24:
        v14 = v36;

        v27 = v28;
LABEL_25:
        v31 = VUIVPAFLogObject(v26);
        if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
        {
          v32 = [(VUIPlaybackReporterVPAF *)self _playHeadDescriptionForTimeInMS:v37 playbackDate:v14];
          v33 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5B98]];
          *buf = 138413314;
          v39 = v32;
          v40 = 2112;
          v41 = v25;
          v42 = 2112;
          v43 = v27;
          v44 = 2112;
          v45 = v33;
          v46 = 2112;
          v47 = v30;
          _os_log_impl(&dword_1E323F000, v31, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Reporting seek event start: position:%@ type:%@ reason:%@ id:%@ data:%@", buf, 0x34u);

          v14 = v36;
        }

        [v8 seekStartedAtOverallPosition:v37 type:v25 reason:v27 eventData:v30];
LABEL_28:

        goto LABEL_29;
      }
    }

    else
    {
      if (!bOOLValue)
      {
        v30 = 0;
        v14 = v36;
        goto LABEL_25;
      }

      v28 = *MEMORY[0x1E69AB780];
    }

    v30 = 0;
    goto LABEL_24;
  }

  v8 = VUIVPAFLogObject(0);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Unable to report seek because session is nil", buf, 2u);
  }

LABEL_29:
}

- (void)_handlePIPChange:(id)change
{
  v14 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];
  userInfo2 = [changeCopy userInfo];

  v8 = [userInfo2 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyIsPIPing[0]];

  if (v8)
  {
    v10 = v6 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = VUIVPAFLogObject(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = v8;
      _os_log_impl(&dword_1E323F000, v11, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling player PIP change:%@", &v12, 0xCu);
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v6];
  }
}

- (void)_handleBackgroundEnterPIPChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];
  if (v4)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v4];
  }
}

- (void)_handleBackgroundExitPIPChange:(id)change
{
  userInfo = [change userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];
  if (v4)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyPIP" player:v4];
  }
}

- (void)_handleDisplaySizeChange:(id)change
{
  v19 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = [userInfo objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];
  userInfo2 = [changeCopy userInfo];
  v8 = [userInfo2 objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyDisplaySize[0]];

  name = [changeCopy name];
  v10 = [name isEqualToString:@"VUIBackgroundMediaControllerVideoDisplaySizeDidChangeNotification"];

  if (v10)
  {
    v12 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlayerKey"];

    userInfo3 = [changeCopy userInfo];
    v14 = [userInfo3 objectForKeyedSubscript:@"VUIBackgroundMediaControllerDisplaySizeKey"];

    v8 = v14;
    v6 = v12;
  }

  if (v8)
  {
    v15 = v6 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15)
  {
    v16 = VUIVPAFLogObject(v11);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138412290;
      v18 = v8;
      _os_log_impl(&dword_1E323F000, v16, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling player display change:%@", &v17, 0xCu);
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyVideoDisplaySize" player:v6];
  }
}

- (void)_handleIsPlaybackUIBeingShownDidChange:(id)change
{
  v3 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v3 isPlaybackUIBeingShown];

  v5 = +[VUIMetricsJetEngine sharedInstance];
  [v5 setMonitorsLifecycleEvents:isPlaybackUIBeingShown ^ 1u];
}

- (void)_applicationWillResignActive:(id)active
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  if (isPlaybackUIBeingShown)
  {
    v7 = VUIVPAFLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = 0x3FC999999999999ALL;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Application will resign active while playback UI is being shown.  Will flush unreported events after %.1f seconds", &v8, 0xCu);
    }

    [(VUIPlaybackReporterVPAF *)self _flushUnreportedEventsAfterDelay:0.2];
  }
}

- (void)_applicationDidEnterBackground:(id)background
{
  v4 = +[VUIPlaybackManager sharedInstance];
  isPlaybackUIBeingShown = [v4 isPlaybackUIBeingShown];

  if (isPlaybackUIBeingShown)
  {
    v7 = VUIVPAFLogObject(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E323F000, v7, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Application did enter background while playback UI is being shown.  Flushing unreported events", v8, 2u);
    }

    [(VUIPlaybackReporterVPAF *)self flushUnreportedEvents];
  }
}

- (void)_handleSkipIntro_iOS:(id)s
{
  sCopy = s;
  v5 = VUIVPAFLogObject(sCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_1E323F000, v5, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Handling skip intro", v13, 2u);
  }

  userInfo = [sCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:VUIPlaybackManagerNotificationKeyPlayer[0]];

  userInfo2 = [sCopy userInfo];
  v9 = [userInfo2 objectForKeyedSubscript:VUIPlaybackManagerSeekReasonKey[0]];

  if (v7)
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10 && [v9 integerValue] == 1)
  {
    userInfo3 = [sCopy userInfo];
    v12 = [userInfo3 objectForKeyedSubscript:VUIPlaybackManagerSeekInfoKey];

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v12 forKey:@"VUIPlaybackReporterSessionMetadataKeySkipIntroInfo" player:v7];
  }
}

- (void)_mediaControllerDidPlayToEnd:(id)end
{
  object = [end object];
  player = [object player];

  if (player)
  {
    player2 = [object player];
    v6 = [(VUIPlaybackReporter *)self _sessionForPlayer:player2];
    [v6 setMetadata:*MEMORY[0x1E69AB7A8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason"];
    [v6 setMetadata:*MEMORY[0x1E69AB810] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType"];
  }
}

- (void)_didSelectPostPlayItem:(id)item
{
  userInfo = [item userInfo];
  v4 = [userInfo vui_numberForKey:@"VUIPostPlayDidAutoPlayKey"];
  v5 = +[VUIPlaybackManager sharedInstance];
  activePlayer = [v5 activePlayer];

  v7 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v4];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v7 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:activePlayer];
  v8 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStopReason:&unk_1F5E5D758 autoStop:v4];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v8 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:activePlayer];
}

- (void)_handleMediaControllerNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  player = [object player];
  userInfo = [notificationCopy userInfo];

  v7 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsForegroundedKey"];
  v8 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStartReasonKey"];
  v9 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStopReasonKey"];
  v10 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsAutomaticPlaybackStartKey"];
  v11 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerIsAutomaticPlaybackStopKey"];
  v12 = [userInfo objectForKeyedSubscript:@"VUIBackgroundMediaControllerPlaybackStartReasonKey"];
  if (!v12)
  {
    goto LABEL_6;
  }

  v13 = v12;
  if ([v8 unsignedLongValue] != 3)
  {
    unsignedLongValue = [v8 unsignedLongValue];

    if (unsignedLongValue == 9)
    {
      goto LABEL_5;
    }

LABEL_6:
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_5:
  v7 = MEMORY[0x1E695E118];
LABEL_7:
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v7 forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback" player:player];

LABEL_8:
  currentMediaItem = [player currentMediaItem];
  v16 = [currentMediaItem mediaItemMetadataForProperty:@"VUIMediaItemMetadataClipId"];

  if ([v16 length])
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive" player:player];
  }

  if (v8)
  {
    v17 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v10];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:player];
    v18 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStartReason:v8 autoStart:v10];
    v19 = VUIPlaybackReporterSessionMetadataKeyStartReason;
  }

  else
  {
    if (!v9)
    {
      goto LABEL_15;
    }

    v17 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v11];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v17 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:player];
    v18 = [VUIPlaybackReporterSession transitionReasonForMediaControllerStopReason:v9 autoStop:v11];
    v19 = VUIPlaybackReporterSessionMetadataKeyStopReason;
  }

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v18 forKey:*v19 player:player];

LABEL_15:
}

- (void)_handleBgMCEmbeddedPlayerVCTransferredToFullScreenControllerNotification:(id)notification
{
  v14 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  object = [notificationCopy object];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    object2 = [notificationCopy object];
    v8 = [(VUIPlaybackReporter *)self _sessionForPlayer:object2];
    v9 = v8;
    if (v8)
    {
      [v8 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyForegroundPlayback"];
      v10 = VUIVPAFLogObject([v9 setReportingEnabled:1]);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = 138412290;
        v13 = object2;
        _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Initiating report for player - %@ after being transferred to full screen controller", &v12, 0xCu);
      }

      state = [object2 state];
      [(VUIPlaybackReporterVPAF *)self _reportForSession:v9 state:state reason:0];
    }
  }
}

- (void)_catchUpToLiveItemWillChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo vui_BOOLForKey:@"VUICatchUpToLiveIsAutomaticKey" defaultValue:0];
  if (object)
  {
    v9 = MEMORY[0x1E69AB810];
    if (!v7)
    {
      v9 = MEMORY[0x1E69AB818];
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*v9 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:object];
  }

  else
  {
    v10 = VUIVPAFLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Not setting catch up to live metadata because player is missing", v11, 2u);
    }
  }
}

- (void)_catchUpToLiveItemDidChange:(id)change
{
  changeCopy = change;
  object = [changeCopy object];
  userInfo = [changeCopy userInfo];

  v7 = [userInfo vui_BOOLForKey:@"VUICatchUpToLiveIsAutomaticKey" defaultValue:0];
  if (object)
  {
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive" player:object];
    v9 = MEMORY[0x1E69AB810];
    if (!v7)
    {
      v9 = MEMORY[0x1E69AB818];
    }

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*v9 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:object];
  }

  else
  {
    v10 = VUIVPAFLogObject(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Not setting catch up to live metadata because player is missing", v11, 2u);
    }
  }
}

- (void)_catchUpToLiveDidBegin:(id)begin
{
  object = [begin object];
  v4 = [(VUIPlaybackReporter *)self _sessionForPlayer:object];
  [v4 setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
}

- (void)_catchUpToLiveDidEnd:(id)end
{
  endCopy = end;
  object = [endCopy object];
  userInfo = [endCopy userInfo];
  v7 = [userInfo objectForKey:@"VUICatchUpToLiveDidJumpToLiveKey"];
  bOOLValue = [v7 BOOLValue];

  userInfo2 = [endCopy userInfo];

  v10 = [userInfo2 objectForKey:@"VUICatchUpToLiveIsAutomaticKey"];

  v11 = [(VUIPlaybackReporter *)self _sessionForPlayer:object];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:bOOLValue];
  [v11 setMetadata:v12 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsSeekJumpToLive"];

  [v11 setMetadata:v10 forKey:@"VUIPlaybackReporterSessionMetadataKeyIsJumpToLiveAutomatic"];
  if (bOOLValue)
  {
    v13 = [VUIPlaybackReporterSession transitionTypeForMediaControllerAutoTransition:v10];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v13 forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7D8] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:object];
    [v11 setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
  }

  else
  {
    v14 = *MEMORY[0x1E69AB818];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:object];
    v15 = *MEMORY[0x1E69AB7D0];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7D0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:object];
    stopped = [MEMORY[0x1E69D5A40] stopped];
    [(VUIPlaybackReporterVPAF *)self _reportForSession:v11 state:stopped reason:0];

    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v14 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:object];
    [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v15 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:object];
    objc_initWeak(&location, self);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VUIPlaybackReporterVPAF__catchUpToLiveDidEnd___block_invoke;
    block[3] = &unk_1E87301C0;
    v18 = v11;
    objc_copyWeak(&v19, &location);
    dispatch_async(MEMORY[0x1E69E96A0], block);
    objc_destroyWeak(&v19);

    objc_destroyWeak(&location);
  }
}

void __48__VUIPlaybackReporterVPAF__catchUpToLiveDidEnd___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyIsCatchUpToLive"];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x1E69D5A40] playing];
  [WeakRetained _reportForSession:v2 state:v3 reason:0];
}

- (void)_liveSportsPostPlayAutoPlayWillStart:(id)start
{
  startCopy = start;
  userInfo = [startCopy userInfo];
  v9 = [userInfo objectForKey:@"VUILiveSportsPostPlayCurrentPlayer"];

  v6 = *MEMORY[0x1E69AB810];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB810] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v9];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v9];
  userInfo2 = [startCopy userInfo];

  v8 = [userInfo2 objectForKey:@"VUILiveSportsPostPlayNextPlayer"];

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v6 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v8];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v8];
}

- (void)_liveSportsPostPlayManualPlayWillStart:(id)start
{
  startCopy = start;
  userInfo = [startCopy userInfo];
  v9 = [userInfo objectForKey:@"VUILiveSportsPostPlayCurrentPlayer"];

  v6 = *MEMORY[0x1E69AB818];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB818] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopType" player:v9];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB7C0] forKey:@"VUIPlaybackReporterSessionMetadataKeyStopReason" player:v9];
  userInfo2 = [startCopy userInfo];

  v8 = [userInfo2 objectForKey:@"VUILiveSportsPostPlayNextPlayer"];

  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:v6 forKey:@"VUIPlaybackReporterSessionMetadataKeyStartType" player:v8];
  [(VUIPlaybackReporterVPAF *)self _setSessionMetadataValue:*MEMORY[0x1E69AB760] forKey:@"VUIPlaybackReporterSessionMetadataKeyStartReason" player:v8];
}

- (unint64_t)_capPlayHeadIfNeeded:(unint64_t)needed forSession:(id)session
{
  sessionCopy = session;
  v6 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyInitialDurationInMillis"];
  v7 = v6;
  if (v6)
  {
    unsignedLongValue = [v6 unsignedLongValue];
LABEL_8:
    if (unsignedLongValue >= needed)
    {
      neededCopy = needed;
    }

    else
    {
      neededCopy = unsignedLongValue;
    }

    if (unsignedLongValue)
    {
      needed = neededCopy;
    }

    goto LABEL_13;
  }

  player = [sessionCopy player];
  [player duration];
  v11 = v10;

  if (v11 != *MEMORY[0x1E69D5A80] && v11 != *MEMORY[0x1E69D5A78])
  {
    unsignedLongValue = vcvtad_u64_f64(v11 * 1000.0);
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:unsignedLongValue];
    [sessionCopy setMetadata:v13 forKey:@"VUIPlaybackReporterSessionMetadataKeyInitialDurationInMillis"];

    goto LABEL_8;
  }

LABEL_13:

  return needed;
}

- (unint64_t)_snapToNearestPrerollIfNeeded:(unint64_t)needed forSession:(id)session isAtPrerollBoundary:(BOOL *)boundary
{
  boundaryCopy = boundary;
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  player = [sessionCopy player];
  currentMediaItem = [player currentMediaItem];
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  neededCopy = needed;
  if (![VUIPlaybackUtilities playerIsLive:player])
  {
    v8 = [sessionCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyIsPlayerLive"];
    bOOLValue = [v8 BOOLValue];

    if ((bOOLValue & 1) == 0)
    {
      v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
      [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5D08]];
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v11 = v35 = 0u;
      v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
      if (v12)
      {
        v13 = *v35;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v35 != v13)
            {
              objc_enumerationMutation(v11);
            }

            v15 = *(*(&v34 + 1) + 8 * i);
            if ([v15 type] == 1)
            {
              [v15 start];
              v17 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(v16 * 1000.0)];
              [v10 addObject:v17];
            }
          }

          v12 = [v11 countByEnumeratingWithState:&v34 objects:v42 count:16];
        }

        while (v12);
      }

      v18 = [currentMediaItem mediaItemMetadataForProperty:*MEMORY[0x1E69D5BC0]];
      v19 = v18;
      if (v18)
      {
        [v18 doubleValue];
        v21 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:vcvtad_u64_f64(v20 * 1000.0)];
        [v10 addObject:v21];
      }

      v28[0] = MEMORY[0x1E69E9820];
      v28[1] = 3221225472;
      v28[2] = __88__VUIPlaybackReporterVPAF__snapToNearestPrerollIfNeeded_forSession_isAtPrerollBoundary___block_invoke;
      v28[3] = &unk_1E8732C80;
      neededCopy2 = needed;
      v22 = v10;
      v33 = boundaryCopy;
      v31 = &v38;
      v29 = v22;
      v30 = selfCopy;
      [v22 enumerateObjectsUsingBlock:v28];
    }
  }

  v23 = v39[3];
  _Block_object_dispose(&v38, 8);

  return v23;
}

void __88__VUIPlaybackReporterVPAF__snapToNearestPrerollIfNeeded_forSession_isAtPrerollBoundary___block_invoke(uint64_t a1, void *a2, _BYTE *a3, _BYTE *a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v7 = [a2 unsignedIntegerValue];
  v8 = vcvtad_u64_f64(vabdd_f64(*(a1 + 56), v7));
  if (v8)
  {
    if (v8 > 0x1F3)
    {
      return;
    }

    *(*(*(a1 + 48) + 8) + 24) = v7;
    v9 = VUIVPAFLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 40) _playHeadDescriptionForTimeInMS:*(a1 + 56) playbackDate:0];
      if (([*(a1 + 32) count] - 1) == a3)
      {
        v11 = @"primary content";
      }

      else
      {
        v11 = @"nearest preroll";
      }

      v12 = [*(a1 + 40) _playHeadDescriptionForTimeInMS:*(*(*(a1 + 48) + 8) + 24) playbackDate:0];
      v15 = 138412802;
      v16 = v10;
      v17 = 2112;
      v18 = v11;
      v19 = 2112;
      v20 = v12;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - Snapping play position: %@ to start of %@: %@", &v15, 0x20u);
    }
  }

  else
  {
    v9 = VUIVPAFLogObject(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      if (([*(a1 + 32) count] - 1) == a3)
      {
        v13 = @"primary content";
      }

      else
      {
        v13 = @"nearest preroll";
      }

      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - No snapping needed as we landed directly at the boundary of %@", &v15, 0xCu);
    }
  }

  v14 = *(a1 + 64);
  if (v14)
  {
    *v14 = 1;
  }

  *a4 = 1;
}

- (void)_createPlaybackDatePollingTimerForLiveStream:(id)stream
{
  streamCopy = stream;
  v5 = [streamCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  if (!v5)
  {
    objc_initWeak(&location, streamCopy);
    objc_initWeak(&from, self);
    date = [MEMORY[0x1E695DF00] date];
    v7 = MEMORY[0x1E695DFF0];
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke;
    v15 = &unk_1E8732CA8;
    objc_copyWeak(&v18, &location);
    objc_copyWeak(&v19, &from);
    v8 = streamCopy;
    v16 = v8;
    v9 = date;
    v17 = v9;
    v5 = [v7 scheduledTimerWithTimeInterval:1 repeats:&v12 block:5.0];
    player = [v8 player];
    playbackDate = [player playbackDate];

    [v8 setMetadata:playbackDate forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
    [v8 setMetadata:v5 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];

    objc_destroyWeak(&v19);
    objc_destroyWeak(&v18);

    objc_destroyWeak(&from);
    objc_destroyWeak(&location);
  }
}

void __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke(id *a1)
{
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v3 = [WeakRetained player];
  v4 = [v3 playbackDate];

  v5 = objc_loadWeakRetained(a1 + 7);
  v6 = [a1[4] player];
  if (!v4)
  {
    v12 = [a1[5] dateByAddingTimeInterval:20.0];
    v14 = [MEMORY[0x1E695DF00] date];
    v15 = [v14 earlierDate:v12];
    if (v15 == v12)
    {
      v16 = [a1[4] metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
      if ([v16 BOOLValue])
      {
        v17 = [a1[4] metadataForKey:?];
        v32 = [v17 BOOLValue];

        if ((v32 & 1) == 0)
        {
          v19 = VUIVPAFLogObject(v18);
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            __72__VUIPlaybackReporterVPAF__createPlaybackDatePollingTimerForLiveStream___block_invoke_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
          }

          [a1[4] setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
          [a1[4] setMetadata:MEMORY[0x1E695E118] forKey:@"VUIPlaybackReporterSessionMetadataKeyTimedOutWaitingForPlaybackDate"];
          v27 = [v6 state];
          v28 = [MEMORY[0x1E69D5A40] playing];

          if (v27 == v28)
          {
            v30 = VUIVPAFLogObject(v29);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *v33 = 0;
              _os_log_impl(&dword_1E323F000, v30, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - After playback date timeout, playback state is playing.  Reporting start event even though it will have no playback date", v33, 2u);
            }

            v31 = [MEMORY[0x1E69D5A40] playing];
            [v5 _reportForSession:WeakRetained state:v31 reason:0];
          }
        }

        goto LABEL_20;
      }
    }

LABEL_20:
    goto LABEL_21;
  }

  [WeakRetained setMetadata:v4 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDateForLiveStream"];
  v7 = [a1[4] metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
  v8 = [v7 BOOLValue];

  if (v8)
  {
    [a1[4] setMetadata:MEMORY[0x1E695E110] forKey:@"VUIPlaybackReporterSessionMetadataKeyWaitingForPlaybackDateToSendStartEvent"];
    v9 = [v6 state];
    v10 = [MEMORY[0x1E69D5A40] playing];

    v12 = VUIVPAFLogObject(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
    if (v9 == v10)
    {
      if (v13)
      {
        *v35 = 0;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - After polling, playback date has become available while waiting for it and playback is playing.  Reporting start event", v35, 2u);
      }

      v12 = [MEMORY[0x1E69D5A40] playing];
      [v5 _reportForSession:WeakRetained state:v12 reason:0];
    }

    else if (v13)
    {
      *buf = 0;
      _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUIPlaybackReporterVPAF - After polling, playback date has become available while waiting for it, but playback state is not playing.", buf, 2u);
    }

    goto LABEL_20;
  }

LABEL_21:
}

- (void)_invalidatePlaybackDatePollingTimerForLiveStream:(id)stream
{
  streamCopy = stream;
  v3 = [streamCopy metadataForKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  v4 = v3;
  if (v3)
  {
    [v3 invalidate];
    [streamCopy setMetadata:0 forKey:@"VUIPlaybackReporterSessionMetadataKeyPlaybackDatePollingTimerForLiveStream"];
  }
}

@end