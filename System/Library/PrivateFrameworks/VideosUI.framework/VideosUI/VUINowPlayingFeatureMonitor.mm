@interface VUINowPlayingFeatureMonitor
- (BOOL)_hasAnyActiveFeature;
- (BOOL)_isElapsedTimeWithinFeatureTimeWindow:(id)window;
- (BOOL)_isTimerFeatureExpired:(id)expired;
- (BOOL)_isTimerTriggeredFeature:(id)feature;
- (BOOL)_shouldActivateTimeBoundFeatureInitially:(id)initially;
- (BOOL)_shouldAnimateFeature:(id)feature;
- (BOOL)mediaPlaybackManager:(id)manager shouldEnableUIModeImplicitly:(int64_t)implicitly;
- (NSArray)allFeatures;
- (VUINowPlayingFeatureMonitor)init;
- (VUINowPlayingFeatureMonitorDelegate)delegate;
- (id)_activeFeature;
- (id)_activeFeatures;
- (id)_observerInfoForFeature:(id)feature matchingTime:(double)time;
- (id)_timeBoundFeatures;
- (id)activeFeatureForType:(unint64_t)type;
- (id)featuresForType:(unint64_t)type;
- (void)_activateFeature:(id)feature ignoringCurrentActivation:(BOOL)activation animated:(BOOL)animated completion:(id)completion;
- (void)_addObservedToken:(id)token forFeature:(id)feature;
- (void)_addTimeObservingForFeature:(id)feature withStartTime:(double)time andRestartTime:(double)restartTime andHandler:(id)handler;
- (void)_cancelTimerForFeature:(id)feature;
- (void)_cleanUpEverything;
- (void)_cleanupFeature:(id)feature;
- (void)_createBoundaryObserverForFeature:(id)feature time:(double)time andHandler:(id)handler;
- (void)_deactivateFeature:(id)feature animated:(BOOL)animated;
- (void)_expireTimerFeaturesIfNeeded;
- (void)_playbackStateChangedNottificaiton:(id)nottificaiton;
- (void)_processAnyTimeBoundFeatures;
- (void)_processElapsedTime:(double)time;
- (void)_processFeature:(id)feature;
- (void)_processLastElapsedTime;
- (void)_processTimeBoundFeature:(id)feature;
- (void)_processTimerTriggeredFeature:(id)feature;
- (void)_processUserTriggeredFeature:(id)feature activate:(BOOL)activate animated:(BOOL)animated;
- (void)_registerPlaybackStateChangeNotification;
- (void)_removeAllObservedTokensForFeature:(id)feature;
- (void)_removeTimeObservingForFeature:(id)feature withStartTime:(double)time;
- (void)_scheduleDeactivationOfTimeBoundFeature:(id)feature;
- (void)_setupTimerFeatureExpiration;
- (void)_startObservingElapsedTime;
- (void)_unregisterPlaybackStateNotification;
- (void)_updateBoundaryObserverForFeature:(id)feature change:(id)change;
- (void)addFeature:(id)feature;
- (void)addFeature:(id)feature withDependencyToPreferredFeatures:(id)features;
- (void)deactivateFeature:(id)feature animated:(BOOL)animated;
- (void)dealloc;
- (void)enableUIMode:(int64_t)mode enabled:(BOOL)enabled;
- (void)mediaPlaybackManager:(id)manager shouldHideUI:(BOOL)i animated:(BOOL)animated animations:(id)animations completion:(id)completion;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)removeFeature:(id)feature;
- (void)removeFeaturesMatching:(id)matching;
- (void)setDelegate:(id)delegate;
- (void)setPlaybackManager:(id)manager;
- (void)setPlayer:(id)player;
@end

@implementation VUINowPlayingFeatureMonitor

- (VUINowPlayingFeatureMonitor)init
{
  v19.receiver = self;
  v19.super_class = VUINowPlayingFeatureMonitor;
  v2 = [(VUINowPlayingFeatureMonitor *)&v19 init];
  v3 = v2;
  if (v2)
  {
    v2->_observingElapsedTime = 0;
    v4 = objc_opt_new();
    features = v3->_features;
    v3->_features = v4;

    weakToStrongObjectsMapTable = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    featureDependencies = v3->_featureDependencies;
    v3->_featureDependencies = weakToStrongObjectsMapTable;

    weakToStrongObjectsMapTable2 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    featureBoundaryInfos = v3->_featureBoundaryInfos;
    v3->_featureBoundaryInfos = weakToStrongObjectsMapTable2;

    weakToStrongObjectsMapTable3 = [MEMORY[0x1E696AD18] weakToStrongObjectsMapTable];
    featureTokens = v3->_featureTokens;
    v3->_featureTokens = weakToStrongObjectsMapTable3;

    v12 = objc_opt_new();
    elapsedTimes = v3->_elapsedTimes;
    v3->_elapsedTimes = v12;

    v14 = [&unk_1F5E5E850 mutableCopy];
    enabledUIModes = v3->_enabledUIModes;
    v3->_enabledUIModes = v14;

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__applicationDidEnterBackground_ name:*MEMORY[0x1E69DDAC8] object:0];

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 addObserver:v3 selector:sel__applicationWillEnterForeground_ name:*MEMORY[0x1E69DDBC0] object:0];
  }

  return v3;
}

- (void)dealloc
{
  [(VUINowPlayingFeatureMonitor *)self _cleanUpEverything];
  v3.receiver = self;
  v3.super_class = VUINowPlayingFeatureMonitor;
  [(VUINowPlayingFeatureMonitor *)&v3 dealloc];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    self->_delegateFlags.respondsToFeatureDidChangeState = objc_opt_respondsToSelector() & 1;
    self->_delegateFlags.respondsToActiveFeatureChangedFrom = objc_opt_respondsToSelector() & 1;
  }
}

- (void)setPlayer:(id)player
{
  playerCopy = player;
  player = self->_player;
  if (player != playerCopy)
  {
    v7 = playerCopy;
    if (player)
    {
      [(VUINowPlayingFeatureMonitor *)self _unregisterPlaybackStateNotification];
    }

    objc_storeStrong(&self->_player, player);
    [(VUINowPlayingFeatureMonitor *)self _processAnyTimeBoundFeatures];
    playerCopy = v7;
    if (v7)
    {
      [(VUINowPlayingFeatureMonitor *)self _registerPlaybackStateChangeNotification];
      playerCopy = v7;
    }
  }
}

- (void)setPlaybackManager:(id)manager
{
  managerCopy = manager;
  if (self->_playbackManager != managerCopy)
  {
    v6 = managerCopy;
    objc_storeStrong(&self->_playbackManager, manager);
    [(VUITransitionalPlaybackUIManager *)self->_playbackManager setDelegate:self];
    managerCopy = v6;
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  v13 = changeCopy;
  if (__FeatureStartTimeContext == context)
  {
    [(VUINowPlayingFeatureMonitor *)self _updateBoundaryObserverForFeature:objectCopy change:changeCopy];
  }

  else if (__FeatureRestartTimeContext == context)
  {
    v14 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];
    [v14 doubleValue];
    if (v15 == -9999.0)
    {
      [v14 doubleValue];
      [(VUINowPlayingFeatureMonitor *)self _removeTimeObservingForFeature:objectCopy withStartTime:?];
    }

    else
    {
      [(VUINowPlayingFeatureMonitor *)self _updateBoundaryObserverForFeature:objectCopy change:v13];
    }
  }

  else
  {
    v16.receiver = self;
    v16.super_class = VUINowPlayingFeatureMonitor;
    [(VUINowPlayingFeatureMonitor *)&v16 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (NSArray)allFeatures
{
  features = [(VUINowPlayingFeatureMonitor *)self features];
  allObjects = [features allObjects];

  return allObjects;
}

- (void)addFeature:(id)feature
{
  v11 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  if (featureCopy)
  {
    features = [(VUINowPlayingFeatureMonitor *)self features];
    v6 = [features containsObject:featureCopy];

    if ((v6 & 1) == 0)
    {
      features2 = [(VUINowPlayingFeatureMonitor *)self features];
      [features2 addObject:featureCopy];

      v8 = VUIDefaultLogObject([(VUINowPlayingFeatureMonitor *)self _processFeature:featureCopy]);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = 138412290;
        v10 = featureCopy;
        _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] added.", &v9, 0xCu);
      }
    }
  }
}

- (void)addFeature:(id)feature withDependencyToPreferredFeatures:(id)features
{
  v15 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  featuresCopy = features;
  if (featureCopy)
  {
    features = [(VUINowPlayingFeatureMonitor *)self features];
    v9 = [features containsObject:featureCopy];

    if ((v9 & 1) == 0)
    {
      features2 = [(VUINowPlayingFeatureMonitor *)self features];
      [features2 addObject:featureCopy];

      if ([featuresCopy count])
      {
        featureDependencies = [(VUINowPlayingFeatureMonitor *)self featureDependencies];
        [featureDependencies setObject:featuresCopy forKey:featureCopy];
      }

      v12 = VUIDefaultLogObject([(VUINowPlayingFeatureMonitor *)self _processFeature:featureCopy]);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 138412290;
        v14 = featureCopy;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] added.", &v13, 0xCu);
      }
    }
  }
}

- (id)featuresForType:(unint64_t)type
{
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __47__VUINowPlayingFeatureMonitor_featuresForType___block_invoke;
  v8[3] = &__block_descriptor_40_e12_B24__0_8_B16l;
  v8[4] = type;
  v5 = [features objectsPassingTest:v8];
  allObjects = [v5 allObjects];

  return allObjects;
}

BOOL __47__VUINowPlayingFeatureMonitor_featuresForType___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 conformsToProtocol:&unk_1F5E93F10])
  {
    v4 = [v3 type] == *(a1 + 32);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)activeFeatureForType:(unint64_t)type
{
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __52__VUINowPlayingFeatureMonitor_activeFeatureForType___block_invoke;
  v8[3] = &__block_descriptor_40_e12_B24__0_8_B16l;
  v8[4] = type;
  v5 = [features objectsPassingTest:v8];
  anyObject = [v5 anyObject];

  return anyObject;
}

uint64_t __52__VUINowPlayingFeatureMonitor_activeFeatureForType___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_1F5E93F10] && objc_msgSend(v5, "type") == *(a1 + 32) && objc_msgSend(v5, "isActive"))
  {
    v6 = 1;
    *a3 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)removeFeature:(id)feature
{
  v13 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  v5 = featureCopy;
  if (featureCopy)
  {
    if ([featureCopy isActive])
    {
      [v5 setAutoRemove:1];
      featureLastRequestedUI = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
      if (featureLastRequestedUI == v5)
      {
        if ([v5 type] != 2)
        {
          playbackManager = [(VUINowPlayingFeatureMonitor *)self playbackManager];
          [playbackManager onSupplementaryUIShouldDismiss];
        }
      }

      else
      {
        [(VUINowPlayingFeatureMonitor *)self _deactivateFeature:v5 animated:[(VUINowPlayingFeatureMonitor *)self _shouldAnimateFeature:v5]];
      }
    }

    else
    {
      [(VUINowPlayingFeatureMonitor *)self _cleanupFeature:v5];
      features = [(VUINowPlayingFeatureMonitor *)self features];
      [features removeObject:v5];

      v9 = VUIDefaultLogObject(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = 138412290;
        v12 = v5;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] removed.", &v11, 0xCu);
      }
    }
  }
}

- (void)_cleanupFeature:(id)feature
{
  v13 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  if (featureCopy)
  {
    [(VUINowPlayingFeatureMonitor *)self _cancelTimerForFeature:featureCopy];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = [(VUINowPlayingFeatureMonitor *)self _isTimerFeatureExpired:featureCopy];
      v6 = v5;
      featureTimers = VUIDefaultLogObject(v5);
      v8 = os_log_type_enabled(featureTimers, OS_LOG_TYPE_DEFAULT);
      if (v6)
      {
        if (v8)
        {
          v11 = 138412290;
          v12 = featureCopy;
          _os_log_impl(&dword_1E323F000, featureTimers, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: since timer feature: %@ has already expired, so not removing it.", &v11, 0xCu);
        }
      }

      else
      {
        if (v8)
        {
          v11 = 138412290;
          v12 = featureCopy;
          _os_log_impl(&dword_1E323F000, featureTimers, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: timer feature: %@ has not expired, removing it.", &v11, 0xCu);
        }

        featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
        [featureTimers removeObjectForKey:featureCopy];
      }
    }

    [(VUINowPlayingFeatureMonitor *)self _removeAllObservedTokensForFeature:featureCopy];
    features = [(VUINowPlayingFeatureMonitor *)self features];
    if (![features containsObject:featureCopy] || !-[VUINowPlayingFeatureMonitor _isTimeBoundFeature:](self, "_isTimeBoundFeature:", featureCopy))
    {
      goto LABEL_15;
    }

    v10 = [featureCopy conformsToProtocol:&unk_1F5E605A0];

    if (v10)
    {
      features = featureCopy;
      [features removeObserver:self forKeyPath:@"startTime"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [features removeObserver:self forKeyPath:@"restartTime"];
      }

LABEL_15:
    }
  }
}

- (void)removeFeaturesMatching:(id)matching
{
  v27 = *MEMORY[0x1E69E9840];
  matchingCopy = matching;
  if ([matchingCopy count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v16 = matchingCopy;
    v5 = matchingCopy;
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v22;
      do
      {
        v9 = 0;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = -[VUINowPlayingFeatureMonitor featuresForType:](self, "featuresForType:", [*(*(&v21 + 1) + 8 * v9) unsignedIntegerValue]);
          if ([v10 count])
          {
            v19 = 0u;
            v20 = 0u;
            v17 = 0u;
            v18 = 0u;
            v11 = v10;
            v12 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v18;
              do
              {
                v15 = 0;
                do
                {
                  if (*v18 != v14)
                  {
                    objc_enumerationMutation(v11);
                  }

                  [(VUINowPlayingFeatureMonitor *)self removeFeature:*(*(&v17 + 1) + 8 * v15++)];
                }

                while (v13 != v15);
                v13 = [v11 countByEnumeratingWithState:&v17 objects:v25 count:16];
              }

              while (v13);
            }
          }

          ++v9;
        }

        while (v9 != v7);
        v7 = [v5 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v7);
    }

    matchingCopy = v16;
  }
}

- (void)enableUIMode:(int64_t)mode enabled:(BOOL)enabled
{
  enabledCopy = enabled;
  enabledUIModes = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  v9 = [enabledUIModes containsObject:v8];

  if (enabledCopy)
  {
    if (v9)
    {
      return;
    }

    enabledUIModes2 = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    [enabledUIModes2 addObject:v10];
  }

  else
  {
    if (!v9)
    {
      return;
    }

    enabledUIModes2 = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
    [enabledUIModes2 removeObject:v10];
  }
}

- (void)deactivateFeature:(id)feature animated:(BOOL)animated
{
  featureCopy = feature;
  v6 = featureCopy;
  if (featureCopy)
  {
    v10 = featureCopy;
    isActive = [featureCopy isActive];
    v6 = v10;
    if (isActive)
    {
      featureLastRequestedUI = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
      if (featureLastRequestedUI == v10)
      {
        playbackManager = [(VUINowPlayingFeatureMonitor *)self playbackManager];
        [playbackManager onSupplementaryUIShouldDismiss];
      }

      else
      {
        [VUINowPlayingFeatureMonitor _deactivateFeature:"_deactivateFeature:animated:" animated:?];
      }

      v6 = v10;
    }
  }
}

- (void)mediaPlaybackManager:(id)manager shouldHideUI:(BOOL)i animated:(BOOL)animated animations:(id)animations completion:(id)completion
{
  animatedCopy = animated;
  iCopy = i;
  managerCopy = manager;
  animationsCopy = animations;
  completionCopy = completion;
  featureLastRequestedUI = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
  v15 = featureLastRequestedUI;
  if (!featureLastRequestedUI)
  {
    if ([managerCopy currentUIMode])
    {
      v17 = [(VUINowPlayingFeatureMonitor *)self featuresForType:2];
      firstObject = [v17 firstObject];

      if (![firstObject conformsToProtocol:&unk_1F5E93F70])
      {
        v16 = 0;
LABEL_9:

        if (!v16)
        {
          goto LABEL_14;
        }

        goto LABEL_10;
      }

      v18FirstObject = firstObject;
      firstObject = v18FirstObject;
    }

    else
    {
      firstObject = [(VUINowPlayingFeatureMonitor *)self featuresForType:1];
      v18FirstObject = [firstObject firstObject];
    }

    v16 = v18FirstObject;
    goto LABEL_9;
  }

  v16 = featureLastRequestedUI;
LABEL_10:
  if (-[VUINowPlayingFeatureMonitor _isHybridFeature:](self, "_isHybridFeature:", v16) && ![v16 activationType])
  {
    [v16 setActivationType:1];
  }

  [(VUINowPlayingFeatureMonitor *)self _processUserTriggeredFeature:v16 activate:!iCopy animated:animatedCopy];
LABEL_14:
  if (animationsCopy)
  {
    animationsCopy[2](animationsCopy);
  }

  if (completionCopy)
  {
    completionCopy[2](completionCopy, 1);
  }
}

- (BOOL)mediaPlaybackManager:(id)manager shouldEnableUIModeImplicitly:(int64_t)implicitly
{
  enabledUIModes = [(VUINowPlayingFeatureMonitor *)self enabledUIModes];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:implicitly];
  v7 = [enabledUIModes containsObject:v6];

  return v7;
}

- (void)_playbackStateChangedNottificaiton:(id)nottificaiton
{
  userInfo = [nottificaiton userInfo];
  v7 = [userInfo objectForKey:*MEMORY[0x1E69D6098]];

  playing = [MEMORY[0x1E69D5A40] playing];
  if (v7 == playing)
  {
    observingElapsedTime = [(VUINowPlayingFeatureMonitor *)self observingElapsedTime];

    if (!observingElapsedTime)
    {
      [(VUINowPlayingFeatureMonitor *)self setObservingElapsedTime:1];
      [(VUINowPlayingFeatureMonitor *)self _startObservingElapsedTime];
    }
  }

  else
  {
  }
}

- (id)_activeFeatures
{
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [features objectsPassingTest:&__block_literal_global_32];

  return v3;
}

uint64_t __46__VUINowPlayingFeatureMonitor__activeFeatures__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 conformsToProtocol:&unk_1F5E93F10])
  {
    v3 = [v2 isActive];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)_timeBoundFeatures
{
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [features objectsPassingTest:&__block_literal_global_147];

  return v3;
}

- (id)_activeFeature
{
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v3 = [features objectsPassingTest:&__block_literal_global_161];
  anyObject = [v3 anyObject];

  return anyObject;
}

uint64_t __45__VUINowPlayingFeatureMonitor__activeFeature__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v4 = a2;
  if ([v4 conformsToProtocol:&unk_1F5E93F10] && objc_msgSend(v4, "isActive"))
  {
    v5 = 1;
    *a3 = 1;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_hasAnyActiveFeature
{
  _activeFeatures = [(VUINowPlayingFeatureMonitor *)self _activeFeatures];
  v3 = [_activeFeatures count] != 0;

  return v3;
}

uint64_t __57__VUINowPlayingFeatureMonitor__hasActiveFeaturesInArray___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  if ([v5 conformsToProtocol:&unk_1F5E93F10] && objc_msgSend(v5, "isActive"))
  {
    v6 = 1;
    *a4 = 1;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_processFeature:(id)feature
{
  featureCopy = feature;
  if (featureCopy)
  {
    v7 = featureCopy;
    if ([(VUINowPlayingFeatureMonitor *)self _isTimeBoundFeature:featureCopy])
    {
      if ([v7 conformsToProtocol:&unk_1F5E605A0])
      {
        v5 = v7;
        [v5 addObserver:self forKeyPath:@"startTime" options:3 context:__FeatureStartTimeContext];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v5 addObserver:self forKeyPath:@"restartTime" options:3 context:__FeatureRestartTimeContext];
        }
      }

      [(VUINowPlayingFeatureMonitor *)self _processTimeBoundFeature:v7];
    }

    else
    {
      v6 = [(VUINowPlayingFeatureMonitor *)self _isTimerTriggeredFeature:v7];
      featureCopy = v7;
      if (!v6)
      {
        goto LABEL_11;
      }

      [(VUINowPlayingFeatureMonitor *)self _processTimerTriggeredFeature:v7];
    }

    featureCopy = v7;
  }

LABEL_11:
}

- (BOOL)_isTimerTriggeredFeature:(id)feature
{
  featureCopy = feature;
  if ([featureCopy conformsToProtocol:&unk_1F5E93F10])
  {
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

  return isKindOfClass & 1;
}

- (BOOL)_shouldAnimateFeature:(id)feature
{
  featureCopy = feature;
  v5 = -[VUINowPlayingFeatureMonitor _isUserTriggeredFeature:](self, "_isUserTriggeredFeature:", featureCopy) || [featureCopy type] == 2 || objc_msgSend(featureCopy, "type") == 1 || objc_msgSend(featureCopy, "type") == 9 || objc_msgSend(featureCopy, "type") == 7;

  return v5;
}

- (void)_activateFeature:(id)feature ignoringCurrentActivation:(BOOL)activation animated:(BOOL)animated completion:(id)completion
{
  animatedCopy = animated;
  v20 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  completionCopy = completion;
  v12 = completionCopy;
  if (!featureCopy)
  {
    v14 = 0;
    if (!completionCopy)
    {
      goto LABEL_8;
    }

LABEL_7:
    v12[2](v12, v14);
    goto LABEL_8;
  }

  isActive = [featureCopy isActive];
  if (isActive && !activation)
  {
    v14 = [(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:featureCopy]^ 1;
    if (!v12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v15 = VUIDefaultLogObject(isActive);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v18 = 138412290;
    v19 = featureCopy;
    _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] activated.", &v18, 0xCu);
  }

  delegate = [(VUINowPlayingFeatureMonitor *)self delegate];
  _activeFeature = [(VUINowPlayingFeatureMonitor *)self _activeFeature];
  if ([_activeFeature conformsToProtocol:&unk_1F5E93F70] && objc_msgSend(featureCopy, "conformsToProtocol:", &unk_1F5E93F70))
  {
    if (_activeFeature != featureCopy)
    {
      [_activeFeature setActive:0];
      [featureCopy setActive:1];
      if (self->_delegateFlags.respondsToActiveFeatureChangedFrom)
      {
        [delegate featureMonitor:self activeFeatureDidChangeFrom:_activeFeature toFeature:featureCopy animated:animatedCopy];
      }
    }
  }

  else
  {
    [featureCopy setActive:1];
    if (self->_delegateFlags.respondsToFeatureDidChangeState)
    {
      [delegate featureMonitor:self featureDidChangeState:featureCopy animated:animatedCopy];
    }
  }

  v14 = 1;
  if (v12)
  {
    goto LABEL_7;
  }

LABEL_8:
}

- (void)_deactivateFeature:(id)feature animated:(BOOL)animated
{
  animatedCopy = animated;
  v21 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  v7 = featureCopy;
  if (featureCopy)
  {
    isActive = [featureCopy isActive];
    if (isActive)
    {
      v9 = VUIDefaultLogObject(isActive);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = v7;
        _os_log_impl(&dword_1E323F000, v9, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] deactivated.", &v19, 0xCu);
      }

      [v7 setActive:0];
      featureLastRequestedUI = [(VUINowPlayingFeatureMonitor *)self featureLastRequestedUI];
      if (featureLastRequestedUI == v7)
      {
        [(VUINowPlayingFeatureMonitor *)self setFeatureLastRequestedUI:0];
      }

      if (self->_delegateFlags.respondsToFeatureDidChangeState)
      {
        delegate = [(VUINowPlayingFeatureMonitor *)self delegate];
        [delegate featureMonitor:self featureDidChangeState:v7 animated:animatedCopy];
      }

      if ([(VUINowPlayingFeatureMonitor *)self _isTimeBoundFeature:v7])
      {
        v12 = v7;
        [v12 startTime];
        v14 = v13;
        [v12 duration];
        [(VUINowPlayingFeatureMonitor *)self _removeTimeObservingForFeature:v12 withStartTime:v14 + v15];
      }

      if ([v7 shouldAutoRemove])
      {
        [(VUINowPlayingFeatureMonitor *)self _cleanupFeature:v7];
        features = [(VUINowPlayingFeatureMonitor *)self features];
        [features removeObject:v7];

        v18 = VUIDefaultLogObject(v17);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v19 = 138412290;
          v20 = v7;
          _os_log_impl(&dword_1E323F000, v18, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Feature [%@] removed.", &v19, 0xCu);
        }
      }
    }
  }
}

- (void)_registerPlaybackStateChangeNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69D6090];
  player = [(VUINowPlayingFeatureMonitor *)self player];
  [defaultCenter addObserver:self selector:sel__playbackStateChangedNottificaiton_ name:v3 object:player];
}

- (void)_unregisterPlaybackStateNotification
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69D6090];
  player = [(VUINowPlayingFeatureMonitor *)self player];
  [defaultCenter removeObserver:self name:v3 object:player];
}

- (BOOL)_isElapsedTimeWithinFeatureTimeWindow:(id)window
{
  v25 = *MEMORY[0x1E69E9840];
  windowCopy = window;
  if (windowCopy && ([(VUINowPlayingFeatureMonitor *)self player], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    player = [(VUINowPlayingFeatureMonitor *)self player];
    [player elapsedTime];
    v8 = v7;

    if ([(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:windowCopy])
    {
      advisoryDisabledTimeRanges = [windowCopy advisoryDisabledTimeRanges];
      if ([advisoryDisabledTimeRanges count])
      {
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        v10 = advisoryDisabledTimeRanges;
        v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v21;
          while (2)
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v21 != v13)
              {
                objc_enumerationMutation(v10);
              }

              if ([*(*(&v20 + 1) + 8 * i) containsTime:{v8, v20}])
              {
                v15 = 0;
                goto LABEL_17;
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
            if (v12)
            {
              continue;
            }

            break;
          }
        }

        v15 = 1;
LABEL_17:
      }

      else
      {
        v15 = 1;
      }
    }

    else
    {
      [windowCopy startTime];
      v17 = v16;
      [windowCopy duration];
      advisoryDisabledTimeRanges = [objc_alloc(MEMORY[0x1E69D5A68]) initWithStartTime:v17 endTime:v17 + v18];
      v15 = [advisoryDisabledTimeRanges containsTime:v8];
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)_startObservingElapsedTime
{
  player = [(VUINowPlayingFeatureMonitor *)self player];

  if (player)
  {
    objc_initWeak(&location, self);
    player2 = [(VUINowPlayingFeatureMonitor *)self player];
    v9 = MEMORY[0x1E69E9820];
    v10 = 3221225472;
    v11 = __57__VUINowPlayingFeatureMonitor__startObservingElapsedTime__block_invoke;
    v12 = &unk_1E872F880;
    objc_copyWeak(&v13, &location);
    v5 = [player2 addElapsedTimeObserver:&v9];

    v6 = [(VUINowPlayingFeatureMonitor *)self elapsedTimeObserverToken:v9];

    if (v6)
    {
      player3 = [(VUINowPlayingFeatureMonitor *)self player];
      elapsedTimeObserverToken = [(VUINowPlayingFeatureMonitor *)self elapsedTimeObserverToken];
      [player3 removeElapsedTimeObserverWithToken:elapsedTimeObserverToken];

      [(VUINowPlayingFeatureMonitor *)self setElapsedTimeObserverToken:0];
    }

    if (v5)
    {
      [(VUINowPlayingFeatureMonitor *)self setElapsedTimeObserverToken:v5];
    }

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }
}

void __57__VUINowPlayingFeatureMonitor__startObservingElapsedTime__block_invoke(uint64_t a1, double a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _processElapsedTime:a2];
}

- (void)_processElapsedTime:(double)time
{
  [(VUINowPlayingFeatureMonitor *)self lastProcessedElapsedTime];
  if (v5 != time)
  {
    [(VUINowPlayingFeatureMonitor *)self setLastProcessedElapsedTime:time];
    elapsedTimes = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:time];
    [elapsedTimes addObject:v7];

    elapsedTimes2 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
    v9 = [elapsedTimes2 count];

    if (v9 == 1)
    {

      [(VUINowPlayingFeatureMonitor *)self _processLastElapsedTime];
    }
  }
}

- (void)_processLastElapsedTime
{
  v63 = *MEMORY[0x1E69E9840];
  elapsedTimes = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
  v4 = [elapsedTimes count];

  if (v4)
  {
    elapsedTimes2 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
    lastObject = [elapsedTimes2 lastObject];

    if (lastObject)
    {
      elapsedTimes3 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
      v8 = [elapsedTimes3 count] - 1;

      v9 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v8}];
      if ([v9 count])
      {
        elapsedTimes4 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
        [elapsedTimes4 removeObjectsAtIndexes:v9];
      }

      [lastObject doubleValue];
      v12 = v11;
      _timeBoundFeatures = [(VUINowPlayingFeatureMonitor *)self _timeBoundFeatures];
      if ([_timeBoundFeatures count])
      {
        v51 = v9;
        v14 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        v60 = 0u;
        v50 = _timeBoundFeatures;
        v15 = _timeBoundFeatures;
        v16 = [v15 countByEnumeratingWithState:&v57 objects:v62 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v58;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v58 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v20 = *(*(&v57 + 1) + 8 * i);
              if ([v20 type] == 7 && objc_msgSend(v20, "isActive"))
              {
                [v14 insertObject:v20 atIndex:0];
              }

              else
              {
                [v14 addObject:v20];
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v57 objects:v62 count:16];
          }

          while (v17);
        }

        v52 = lastObject;

        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v21 = v14;
        v22 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v54;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v54 != v24)
              {
                objc_enumerationMutation(v21);
              }

              v26 = *(*(&v53 + 1) + 8 * j);
              [v26 startTime];
              v28 = v27;
              [v26 duration];
              if (v29 == -9999.0)
              {
                v31 = 0.0;
              }

              else
              {
                [v26 duration];
                v31 = v30;
              }

              objc_opt_class();
              v32 = -9999.0;
              if (objc_opt_isKindOfClass())
              {
                [v26 restartTime];
                v32 = v33;
              }

              v34 = v28 + v31;
              v35 = [(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:v26];
              if (v35)
              {
                if (v12 < v28)
                {
                  goto LABEL_42;
                }

                v36 = 0;
                v37 = v28;
              }

              else if (v12 >= v28 && v12 < v34)
              {
                if (v12 < v28)
                {
                  goto LABEL_42;
                }

                v39 = v32 != -9999.0;
                v40 = v12 >= v32;
                v36 = v40 && v39;
                if (v40 && v39)
                {
                  v37 = v32;
                }

                else
                {
                  v37 = v28;
                }
              }

              else
              {
                v36 = 0;
                v37 = v34;
              }

              v41 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v26 matchingTime:v37];
              if (v41)
              {
                v42 = v41;
                if (([v41 notifiedOfEntry] & 1) == 0)
                {
                  [v42 setNotifiedOfEntry:!v35];
                  handler = [v42 handler];
                  (handler)[2](handler, v36);
                }

                goto LABEL_55;
              }

LABEL_42:
              if (v12 >= v28 && v12 < v34)
              {
                v42 = 0;
              }

              else
              {
                v45 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v26 matchingTime:v28];
                v46 = v45;
                if (v45 && [v45 notifiedOfEntry])
                {
                  [v46 setNotifiedOfEntry:0];
                }

                if (v32 == -9999.0)
                {
                  v42 = v46;
                }

                else
                {
                  v42 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v26 matchingTime:v32];

                  if (v42 && [v42 notifiedOfEntry])
                  {
                    [v42 setNotifiedOfEntry:0];
                  }
                }
              }

LABEL_55:
            }

            v23 = [v21 countByEnumeratingWithState:&v53 objects:v61 count:16];
          }

          while (v23);
        }

        v9 = v51;
        lastObject = v52;
        _timeBoundFeatures = v50;
      }

      elapsedTimes5 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
      [elapsedTimes5 removeObjectAtIndex:0];

      elapsedTimes6 = [(VUINowPlayingFeatureMonitor *)self elapsedTimes];
      v49 = [elapsedTimes6 count];

      if (v49)
      {
        [(VUINowPlayingFeatureMonitor *)self _processLastElapsedTime];
      }
    }
  }
}

- (void)_processTimeBoundFeature:(id)feature
{
  featureCopy = feature;
  player = [(VUINowPlayingFeatureMonitor *)self player];

  if (featureCopy && player)
  {
    objc_initWeak(&location, self);
    [featureCopy startTime];
    v7 = v6;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [featureCopy restartTime];
      v9 = v8;
    }

    else
    {
      v9 = -9999.0;
    }

    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke;
    v10[3] = &unk_1E872F8D0;
    v11 = featureCopy;
    objc_copyWeak(&v12, &location);
    [(VUINowPlayingFeatureMonitor *)self _addTimeObservingForFeature:v11 withStartTime:v10 andRestartTime:v7 andHandler:v9];
    objc_destroyWeak(&v12);

    objc_destroyWeak(&location);
  }
}

void __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke(uint64_t a1, char a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = VUIDefaultLogObject(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v25 = v5;
    _os_log_impl(&dword_1E323F000, v4, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Boundary time observer triggered for feature activation - %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = [WeakRetained _shouldAnimateFeature:*(a1 + 32)];
  v8 = [WeakRetained _isElapsedTimeWithinFeatureTimeWindow:*(a1 + 32)];
  v9 = v8;
  v10 = VUIDefaultLogObject(v8);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = VUIBoolLogString();
    *buf = 138412290;
    v25 = v11;
    _os_log_impl(&dword_1E323F000, v10, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Is elapsed time within feature time window - %@", buf, 0xCu);
  }

  if (v9)
  {
    v12 = [WeakRetained featureDependencies];
    v13 = [v12 objectForKey:*(a1 + 32)];

    v15 = VUIDefaultLogObject(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v25 = v13;
      _os_log_impl(&dword_1E323F000, v15, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Dependent preferred features: [%@]", buf, 0xCu);
    }

    if ([v13 count] && (v16 = objc_msgSend(WeakRetained, "_hasActiveFeaturesInArray:", v13), (v16 & 1) != 0))
    {
      v17 = VUIDefaultLogObject(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E323F000, v17, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Not activating this feature since there's a preferred feature already active.", buf, 2u);
      }
    }

    else
    {
      if ([WeakRetained _isHybridFeature:*(a1 + 32)])
      {
        [*(a1 + 32) setActivationType:2];
      }

      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 3221225472;
      aBlock[2] = __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_183;
      aBlock[3] = &unk_1E872F8A8;
      objc_copyWeak(&v21, (a1 + 40));
      v20 = *(a1 + 32);
      v22 = a2;
      v23 = v7;
      v18 = _Block_copy(aBlock);
      [WeakRetained _needsUIForFeature:*(a1 + 32)];
      v18[2](v18);

      objc_destroyWeak(&v21);
    }
  }
}

void __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_183(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 32);
  v4 = *(a1 + 48);
  v5 = *(a1 + 49);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_2;
  v6[3] = &unk_1E872E9C8;
  v6[4] = WeakRetained;
  v7 = v3;
  [WeakRetained _activateFeature:v7 ignoringCurrentActivation:v4 animated:v5 completion:v6];
}

id *__56__VUINowPlayingFeatureMonitor__processTimeBoundFeature___block_invoke_2(id *result, int a2)
{
  if (a2)
  {
    return [result[4] _scheduleDeactivationOfTimeBoundFeature:result[5]];
  }

  return result;
}

- (BOOL)_shouldActivateTimeBoundFeatureInitially:(id)initially
{
  initiallyCopy = initially;
  v4 = [initiallyCopy type] == 4 || objc_msgSend(initiallyCopy, "type") == 5 || objc_msgSend(initiallyCopy, "type") == 6 || objc_msgSend(initiallyCopy, "type") == 9;

  return v4;
}

- (void)_scheduleDeactivationOfTimeBoundFeature:(id)feature
{
  featureCopy = feature;
  v5 = featureCopy;
  if (featureCopy)
  {
    [featureCopy startTime];
    v7 = v6;
    [v5 duration];
    v9 = v8;
    objc_initWeak(&location, self);
    v10 = [(VUINowPlayingFeatureMonitor *)self _shouldAnimateFeature:v5];
    if ([(VUINowPlayingFeatureMonitor *)self _isTVAdvisoryFeature:v5])
    {
      v11 = MEMORY[0x1E695DFF0];
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v22[2] = __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke;
      v22[3] = &unk_1E872F8F8;
      v12 = &v24;
      objc_copyWeak(&v24, &location);
      v13 = v5;
      v23 = v13;
      v25 = v10;
      v14 = [v11 scheduledTimerWithTimeInterval:0 repeats:v22 block:v9];
      featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
      v16 = [featureTimers objectForKey:v13];

      [v16 setOneTimeTimer:v14];
      v17 = &v23;
    }

    else
    {
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke_188;
      v18[3] = &unk_1E872F920;
      v12 = &v20;
      objc_copyWeak(&v20, &location);
      v19 = v5;
      v21 = v10;
      [(VUINowPlayingFeatureMonitor *)self _addTimeObservingForFeature:v19 withStartTime:v18 andRestartTime:v7 + v9 andHandler:-9999.0];
      v17 = &v19;
    }

    objc_destroyWeak(v12);
    objc_destroyWeak(&location);
  }
}

void __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: TV advisory deactivation timer fired.", v4, 2u);
  }

  [WeakRetained deactivateFeature:*(a1 + 32) animated:*(a1 + 48)];
}

void __71__VUINowPlayingFeatureMonitor__scheduleDeactivationOfTimeBoundFeature___block_invoke_188(uint64_t a1)
{
  v7 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = VUIDefaultLogObject(WeakRetained);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v5 = 138412290;
    v6 = v4;
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Boundary time observer triggered for feature deactivation - %@", &v5, 0xCu);
  }

  [WeakRetained deactivateFeature:*(a1 + 32) animated:*(a1 + 48)];
}

- (void)_processAnyTimeBoundFeatures
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v4 = [features countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(features);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if ([(VUINowPlayingFeatureMonitor *)self _isTimeBoundFeature:v8])
        {
          [(VUINowPlayingFeatureMonitor *)self _processTimeBoundFeature:v8];
        }
      }

      v5 = [features countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (id)_observerInfoForFeature:(id)feature matchingTime:(double)time
{
  v24 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  if (featureCopy)
  {
    featureTokens = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v8 = [featureTokens objectForKey:featureCopy];

    if ([v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
LABEL_5:
        v13 = 0;
        while (1)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * v13);
          featureBoundaryInfos = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
          v16 = [featureBoundaryInfos objectForKey:v14];

          [v16 time];
          if (v17 == time)
          {
            break;
          }

          if (v11 == ++v13)
          {
            v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
            if (v11)
            {
              goto LABEL_5;
            }

            goto LABEL_11;
          }
        }
      }

      else
      {
LABEL_11:
        v16 = 0;
      }
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (void)_addTimeObservingForFeature:(id)feature withStartTime:(double)time andRestartTime:(double)restartTime andHandler:(id)handler
{
  featureCopy = feature;
  handlerCopy = handler;
  if (featureCopy)
  {
    if (handlerCopy)
    {
      if (time != -9999.0)
      {
        [(VUINowPlayingFeatureMonitor *)self _createBoundaryObserverForFeature:featureCopy time:handlerCopy andHandler:time];
        if (restartTime != -9999.0)
        {
          [(VUINowPlayingFeatureMonitor *)self _createBoundaryObserverForFeature:featureCopy time:handlerCopy andHandler:restartTime];
        }
      }
    }
  }
}

- (void)_createBoundaryObserverForFeature:(id)feature time:(double)time andHandler:(id)handler
{
  featureCopy = feature;
  handlerCopy = handler;
  v9 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:featureCopy matchingTime:time];
  if (!v9)
  {
    v9 = objc_opt_new();
    [v9 setTime:time];
    [v9 setHandler:handlerCopy];
    uUID = [MEMORY[0x1E696AFB0] UUID];
    [v9 setToken:uUID];
    featureBoundaryInfos = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
    [featureBoundaryInfos setObject:v9 forKey:uUID];

    [(VUINowPlayingFeatureMonitor *)self _addObservedToken:uUID forFeature:featureCopy];
  }
}

- (void)_updateBoundaryObserverForFeature:(id)feature change:(id)change
{
  featureCopy = feature;
  if (featureCopy)
  {
    v13 = featureCopy;
    v7 = *MEMORY[0x1E696A500];
    changeCopy = change;
    v9 = [changeCopy objectForKey:v7];
    v10 = [changeCopy objectForKey:*MEMORY[0x1E696A4F0]];

    if (v9)
    {
      v11 = v10 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (!v11 && ([v9 isEqual:v10] & 1) == 0)
    {
      [v9 doubleValue];
      v12 = [(VUINowPlayingFeatureMonitor *)self _observerInfoForFeature:v13 matchingTime:?];
      if (v12)
      {
        [v10 doubleValue];
        [v12 setTime:?];
      }
    }

    featureCopy = v13;
  }
}

- (void)_removeTimeObservingForFeature:(id)feature withStartTime:(double)time
{
  v24 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  if (featureCopy && time != -9999.0)
  {
    featureTokens = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v8 = [featureTokens objectForKey:featureCopy];

    if ([v8 count])
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v20;
        do
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v20 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v19 + 1) + 8 * i);
            featureBoundaryInfos = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
            v16 = [featureBoundaryInfos objectForKey:v14];

            [v16 time];
            if (v17 == time)
            {
              featureBoundaryInfos2 = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
              [featureBoundaryInfos2 removeObjectForKey:v14];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
        }

        while (v11);
      }
    }
  }
}

- (void)_addObservedToken:(id)token forFeature:(id)feature
{
  v15[1] = *MEMORY[0x1E69E9840];
  tokenCopy = token;
  featureCopy = feature;
  v8 = featureCopy;
  if (tokenCopy && featureCopy)
  {
    featureTokens = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v10 = [featureTokens objectForKey:v8];

    v11 = [v10 count];
    featureTokens2 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    if (v11)
    {
      v13 = [v10 mutableCopy];
      v14 = [v13 arrayByAddingObject:tokenCopy];
      [featureTokens2 setObject:v14 forKey:v8];
    }

    else
    {
      v15[0] = tokenCopy;
      v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
      [featureTokens2 setObject:v13 forKey:v8];
    }
  }
}

- (void)_removeAllObservedTokensForFeature:(id)feature
{
  v20 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  if (featureCopy)
  {
    featureTokens = [(VUINowPlayingFeatureMonitor *)self featureTokens];
    v6 = [featureTokens objectForKey:featureCopy];

    if ([v6 count])
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v6;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            featureBoundaryInfos = [(VUINowPlayingFeatureMonitor *)self featureBoundaryInfos];
            [featureBoundaryInfos removeObjectForKey:v12];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }

      featureTokens2 = [(VUINowPlayingFeatureMonitor *)self featureTokens];
      [featureTokens2 removeObjectForKey:featureCopy];
    }
  }
}

- (void)_processUserTriggeredFeature:(id)feature activate:(BOOL)activate animated:(BOOL)animated
{
  animatedCopy = animated;
  activateCopy = activate;
  featureCopy = feature;
  v9 = featureCopy;
  if (featureCopy)
  {
    if (activateCopy)
    {
      if (([featureCopy isActive] & 1) == 0)
      {
        objc_initWeak(&location, self);
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = __78__VUINowPlayingFeatureMonitor__processUserTriggeredFeature_activate_animated___block_invoke;
        v10[3] = &unk_1E872F328;
        objc_copyWeak(&v12, &location);
        v11 = v9;
        [(VUINowPlayingFeatureMonitor *)self _activateFeature:v11 animated:animatedCopy completion:v10];

        objc_destroyWeak(&v12);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      [(VUINowPlayingFeatureMonitor *)self _deactivateFeature:featureCopy animated:animatedCopy];
    }
  }
}

void __78__VUINowPlayingFeatureMonitor__processUserTriggeredFeature_activate_animated___block_invoke(uint64_t a1, int a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = [WeakRetained _isTimeBoundFeature:*(a1 + 32)];
  if (a2 && v4)
  {
    [WeakRetained _scheduleDeactivationOfTimeBoundFeature:*(a1 + 32)];
  }
}

- (void)_processTimerTriggeredFeature:(id)feature
{
  v30 = *MEMORY[0x1E69E9840];
  featureCopy = feature;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [featureCopy duration];
    v6 = v5;
    repeats = [featureCopy repeats];
    if (v6 > 0.0)
    {
      v8 = repeats;
      featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];

      if (!featureTimers)
      {
        v10 = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:512 valueOptions:0 capacity:1];
        [(VUINowPlayingFeatureMonitor *)self setFeatureTimers:v10];
      }

      objc_initWeak(&location, self);
      inited = objc_initWeak(&from, featureCopy);
      v12 = VUIDefaultLogObject(inited);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218242;
        v27 = v6;
        v28 = 2112;
        v29 = featureCopy;
        _os_log_impl(&dword_1E323F000, v12, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Scheduling a timer with interval:<%f> for feature: %@", buf, 0x16u);
      }

      v13 = MEMORY[0x1E695DFF0];
      v18 = MEMORY[0x1E69E9820];
      v19 = 3221225472;
      v20 = __61__VUINowPlayingFeatureMonitor__processTimerTriggeredFeature___block_invoke;
      v21 = &unk_1E872F948;
      objc_copyWeak(&v22, &from);
      objc_copyWeak(&v23, &location);
      v14 = [v13 scheduledTimerWithTimeInterval:v8 repeats:&v18 block:v6];
      v15 = objc_opt_new();
      [v15 setRepeatingTimer:{v14, v18, v19, v20, v21}];
      date = [MEMORY[0x1E695DF00] date];
      [v15 setStartDate:date];

      featureTimers2 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
      [featureTimers2 setObject:v15 forKey:featureCopy];

      objc_destroyWeak(&v23);
      objc_destroyWeak(&v22);
      objc_destroyWeak(&from);
      objc_destroyWeak(&location);
    }
  }
}

void __61__VUINowPlayingFeatureMonitor__processTimerTriggeredFeature___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = objc_loadWeakRetained((a1 + 40));
  v4 = [v3 featureTimers];
  v5 = [v4 objectForKey:WeakRetained];

  v6 = [MEMORY[0x1E695DF00] date];
  [v5 setStartDate:v6];

  v8 = VUIDefaultLogObject(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = WeakRetained;
    _os_log_impl(&dword_1E323F000, v8, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Will activate timer triggered feature: %@", &v9, 0xCu);
  }

  [v3 _activateFeature:WeakRetained animated:1 completion:0];
}

- (void)_cancelTimerForFeature:(id)feature
{
  if (feature)
  {
    featureCopy = feature;
    featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    v8 = [featureTimers objectForKey:featureCopy];

    if (v8)
    {
      repeatingTimer = [v8 repeatingTimer];
      [repeatingTimer invalidate];

      oneTimeTimer = [v8 oneTimeTimer];
      [oneTimeTimer invalidate];
    }
  }
}

- (BOOL)_isTimerFeatureExpired:(id)expired
{
  v28 = *MEMORY[0x1E69E9840];
  expiredCopy = expired;
  v5 = expiredCopy;
  if (!expiredCopy)
  {
    LOBYTE(v10) = 0;
    goto LABEL_9;
  }

  featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  v7 = [featureTimers objectForKey:v5];

  backgroundedDate = [v7 backgroundedDate];
  startDate = [v7 startDate];
  v10 = startDate;
  if (backgroundedDate)
  {
    [backgroundedDate timeIntervalSinceDate:startDate];
    v12 = v11;

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:backgroundedDate];
    v15 = v14;

    v16 = v12 + v15;
LABEL_7:
    [v5 duration];
    LOBYTE(v10) = v16 >= v20;
    goto LABEL_8;
  }

  if (v10)
  {
    date2 = [MEMORY[0x1E695DF00] date];
    startDate2 = [v7 startDate];
    [date2 timeIntervalSinceDate:startDate2];
    v16 = v19;

    goto LABEL_7;
  }

LABEL_8:

LABEL_9:
  v21 = VUIDefaultLogObject(expiredCopy);
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = VUIBoolLogString();
    v24 = 138412546;
    v25 = v5;
    v26 = 2112;
    v27 = v22;
    _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: timerFeature: %@ hasExpired:<%@>", &v24, 0x16u);
  }

  return v10;
}

- (void)_setupTimerFeatureExpiration
{
  v28 = *MEMORY[0x1E69E9840];
  featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  v4 = [featureTimers count];

  if (v4)
  {
    featureTimers2 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    keyEnumerator = [featureTimers2 keyEnumerator];

    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      v9 = nextObject;
      *&v8 = 138412546;
      v23 = v8;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = v9;
          featureTimers3 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
          v12 = [featureTimers3 objectForKey:v10];

          date = [MEMORY[0x1E695DF00] date];
          [v12 setBackgroundedDate:date];

          if (([v10 isBackgroundTimer] & 1) == 0)
          {
            [v10 duration];
            v15 = v14;
            date2 = [MEMORY[0x1E695DF00] date];
            startDate = [v12 startDate];
            [date2 timeIntervalSinceDate:startDate];
            v19 = v18;

            v21 = VUIDefaultLogObject(v20);
            if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v23;
              v25 = v10;
              v26 = 2048;
              v27 = v15 - v19;
              _os_log_impl(&dword_1E323F000, v21, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: cancelling timer for feature: %@, timeRemaining:<%f>", buf, 0x16u);
            }

            [(VUINowPlayingFeatureMonitor *)self _cancelTimerForFeature:v10];
          }
        }

        nextObject2 = [keyEnumerator nextObject];

        v9 = nextObject2;
      }

      while (nextObject2);
    }
  }
}

- (void)_expireTimerFeaturesIfNeeded
{
  v49 = *MEMORY[0x1E69E9840];
  v3 = VUIDefaultLogObject(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    *buf = 134217984;
    v46 = [featureTimers count];
    _os_log_impl(&dword_1E323F000, v3, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: Will expire feature timers, count:<%lu>", buf, 0xCu);
  }

  featureTimers2 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  v6 = [featureTimers2 count];

  if (v6)
  {
    featureTimers3 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
    keyEnumerator = [featureTimers3 keyEnumerator];

    v9 = [MEMORY[0x1E696AD18] mapTableWithKeyOptions:512 valueOptions:0];
    nextObject = [keyEnumerator nextObject];
    if (nextObject)
    {
      do
      {
        featureTimers4 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
        v12 = [featureTimers4 objectForKey:nextObject];

        [v9 setObject:v12 forKey:nextObject];
        nextObject2 = [keyEnumerator nextObject];

        nextObject = nextObject2;
      }

      while (nextObject2);
    }

    keyEnumerator2 = [v9 keyEnumerator];

    nextObject3 = [keyEnumerator2 nextObject];
    if (nextObject3)
    {
      *&v16 = 138412546;
      v38 = v16;
      do
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = nextObject3;
          objc_initWeak(&location, self);
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 3221225472;
          aBlock[2] = __59__VUINowPlayingFeatureMonitor__expireTimerFeaturesIfNeeded__block_invoke;
          aBlock[3] = &unk_1E872F970;
          objc_copyWeak(&v43, &location);
          v18 = v17;
          v42 = v18;
          v19 = _Block_copy(aBlock);
          featureTimers5 = [(VUINowPlayingFeatureMonitor *)self featureTimers];
          v21 = [featureTimers5 objectForKey:v18];

          v22 = [(VUINowPlayingFeatureMonitor *)self _isTimerFeatureExpired:v18];
          if (v22)
          {
            v23 = VUIDefaultLogObject(v22);
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v46 = v18;
              _os_log_impl(&dword_1E323F000, v23, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: activating feature after application entered foreground: %@", buf, 0xCu);
            }

            v19[2](v19, 0);
          }

          else
          {
            isBackgroundTimer = [v18 isBackgroundTimer];
            if (isBackgroundTimer)
            {
              v25 = VUIDefaultLogObject(isBackgroundTimer);
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412290;
                v46 = v18;
                _os_log_impl(&dword_1E323F000, v25, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: background timer feature %@ did not expire while in background. Cancelling feature now that it is in the foreground", buf, 0xCu);
              }

              [(VUINowPlayingFeatureMonitor *)self _cancelTimerForFeature:v18];
            }

            else
            {
              backgroundedDate = [v21 backgroundedDate];
              startDate = [v21 startDate];
              [backgroundedDate timeIntervalSinceDate:startDate];
              v29 = v28;

              duration = [v18 duration];
              v32 = v31;
              v33 = VUIDefaultLogObject(duration);
              v34 = v32 - v29;
              if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v38;
                v46 = v18;
                v47 = 2048;
                v48 = v34;
                _os_log_impl(&dword_1E323F000, v33, OS_LOG_TYPE_DEFAULT, "VUINowPlayingFeatureMonitor:: timer feature %@ has not expired yet after entering to foreground. creating a one time timer with interval: %f", buf, 0x16u);
              }

              v35 = MEMORY[0x1E695DFF0];
              v39[0] = MEMORY[0x1E69E9820];
              v39[1] = 3221225472;
              v39[2] = __59__VUINowPlayingFeatureMonitor__expireTimerFeaturesIfNeeded__block_invoke_194;
              v39[3] = &unk_1E872F998;
              v40 = v19;
              v36 = [v35 scheduledTimerWithTimeInterval:0 repeats:v39 block:v34];
              [v21 setOneTimeTimer:v36];
            }
          }

          [v21 setBackgroundedDate:{0, v38}];

          objc_destroyWeak(&v43);
          objc_destroyWeak(&location);
        }

        nextObject4 = [keyEnumerator2 nextObject];

        nextObject3 = nextObject4;
      }

      while (nextObject4);
    }
  }
}

void __59__VUINowPlayingFeatureMonitor__expireTimerFeaturesIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _activateFeature:*(a1 + 32) animated:1 completion:0];
  v2 = [WeakRetained featureTimers];
  [v2 removeObjectForKey:*(a1 + 32)];

  if ([*(a1 + 32) repeats])
  {
    [WeakRetained _processTimerTriggeredFeature:*(a1 + 32)];
  }
}

- (void)_cleanUpEverything
{
  v16 = *MEMORY[0x1E69E9840];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(VUINowPlayingFeatureMonitor *)self _unregisterPlaybackStateNotification];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  features = [(VUINowPlayingFeatureMonitor *)self features];
  v5 = [features countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(features);
        }

        [(VUINowPlayingFeatureMonitor *)self _cleanupFeature:*(*(&v11 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [features countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  featureTimers = [(VUINowPlayingFeatureMonitor *)self featureTimers];
  [featureTimers removeAllObjects];

  [(VUINowPlayingFeatureMonitor *)self setFeatureTimers:0];
  features2 = [(VUINowPlayingFeatureMonitor *)self features];
  [features2 removeAllObjects];
}

- (VUINowPlayingFeatureMonitorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end