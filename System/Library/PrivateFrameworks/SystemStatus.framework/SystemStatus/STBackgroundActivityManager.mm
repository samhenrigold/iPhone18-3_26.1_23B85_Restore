@interface STBackgroundActivityManager
+ (id)sharedInstance;
- (NSSet)activeBackgroundActivities;
- (STBackgroundActivityManager)initWithDefaults:(id)defaults;
- (id)_allValidBackgroundActivitiesInPrecedenceScope:(unint64_t)scope;
- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug;
- (id)debugDescriptionWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)resolvedBackgroundActivityFromBackgroundActivities:(id)activities inPrecedenceScope:(unint64_t)scope;
- (id)succinctDescription;
- (id)validBackgroundActivitiesForBackgroundActivities:(id)activities;
- (id)visualDescriptorForBackgroundActivityWithIdentifier:(id)identifier;
- (void)_forceResetBackgroundActivitiesForClients;
- (void)_registerForInternalDefaultsChanges;
- (void)_updateBackgroundActivitiesForClients;
- (void)_updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords;
- (void)addActiveBackgroundActivities:(id)activities;
- (void)addBackgroundActivityClient:(id)client;
- (void)recordBundlesChangedForBundleManager:(id)manager;
- (void)removeActiveBackgroundActivities:(id)activities;
@end

@implementation STBackgroundActivityManager

+ (id)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__STBackgroundActivityManager_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_MergedGlobals_19 != -1)
  {
    dispatch_once(&_MergedGlobals_19, block);
  }

  v2 = qword_1ED7F5D98;

  return v2;
}

- (NSSet)activeBackgroundActivities
{
  v2 = [(NSMutableSet *)self->_activeBackgroundActivities copy];

  return v2;
}

- (void)_updateBackgroundActivitiesForClients
{
  v14 = *MEMORY[0x1E69E9840];
  activeBackgroundActivities = [(STBackgroundActivityManager *)self activeBackgroundActivities];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_subscribedClients;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) activeBackgroundActivitiesDidUpdate:{activeBackgroundActivities, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

void __45__STBackgroundActivityManager_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[STSystemStatusDefaults standardDefaults];
  v2 = [v1 initWithDefaults:v4];
  v3 = qword_1ED7F5D98;
  qword_1ED7F5D98 = v2;
}

- (STBackgroundActivityManager)initWithDefaults:(id)defaults
{
  defaultsCopy = defaults;
  v14.receiver = self;
  v14.super_class = STBackgroundActivityManager;
  v6 = [(STBackgroundActivityManager *)&v14 init];
  if (v6)
  {
    v7 = [[STBundleManager alloc] initWithBundleRecordClass:objc_opt_class()];
    bundleManager = v6->_bundleManager;
    v6->_bundleManager = v7;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    subscribedClients = v6->_subscribedClients;
    v6->_subscribedClients = weakObjectsHashTable;

    v11 = [MEMORY[0x1E695DFA8] set];
    activeBackgroundActivities = v6->_activeBackgroundActivities;
    v6->_activeBackgroundActivities = v11;

    objc_storeStrong(&v6->_systemStatusDefaults, defaults);
    [(STBackgroundActivityManager *)v6 _registerForInternalDefaultsChanges];
    [(STBundleManager *)v6->_bundleManager addObserver:v6];
    [(STBackgroundActivityManager *)v6 _updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords];
  }

  return v6;
}

- (void)addActiveBackgroundActivities:(id)activities
{
  [(NSMutableSet *)self->_activeBackgroundActivities unionSet:activities];

  [(STBackgroundActivityManager *)self _updateBackgroundActivitiesForClients];
}

- (void)removeActiveBackgroundActivities:(id)activities
{
  [(NSMutableSet *)self->_activeBackgroundActivities minusSet:activities];

  [(STBackgroundActivityManager *)self _updateBackgroundActivitiesForClients];
}

- (void)_forceResetBackgroundActivitiesForClients
{
  v16 = *MEMORY[0x1E69E9840];
  activeBackgroundActivities = [(STBackgroundActivityManager *)self activeBackgroundActivities];
  v4 = [MEMORY[0x1E695DFD8] set];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_subscribedClients;
  v6 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v11 + 1) + 8 * i);
        [v10 activeBackgroundActivitiesDidUpdate:{v4, v11}];
        [v10 activeBackgroundActivitiesDidUpdate:activeBackgroundActivities];
      }

      v7 = [(NSHashTable *)v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)addBackgroundActivityClient:(id)client
{
  subscribedClients = self->_subscribedClients;
  clientCopy = client;
  [(NSHashTable *)subscribedClients addObject:clientCopy];
  activeBackgroundActivities = [(STBackgroundActivityManager *)self activeBackgroundActivities];
  [clientCopy activeBackgroundActivitiesDidUpdate:activeBackgroundActivities];
}

- (id)_allValidBackgroundActivitiesInPrecedenceScope:(unint64_t)scope
{
  if (qword_1ED7F5DB8 != -1)
  {
    dispatch_once(&qword_1ED7F5DB8, &__block_literal_global_24);
  }

  v4 = &qword_1ED7F5DA8;
  if (scope != 1)
  {
    v4 = &qword_1ED7F5DB0;
  }

  v5 = *v4;

  return v5;
}

void __78__STBackgroundActivityManager__allValidBackgroundActivitiesInPrecedenceScope___block_invoke()
{
  v9[35] = *MEMORY[0x1E69E9840];
  v9[0] = @"com.apple.systemstatus.background-activity.SatelliteSOS";
  v9[1] = @"com.apple.systemstatus.background-activity.SatelliteSOSDisconnected";
  v9[2] = @"com.apple.systemstatus.background-activity.Sysdiagnose";
  v9[3] = @"com.apple.systemstatus.background-activity.ScreenReplayRecording";
  v9[4] = @"com.apple.systemstatus.background-activity.VideoConferenceRinging";
  v9[5] = @"com.apple.systemstatus.background-activity.CallRinging";
  v9[6] = @"com.apple.systemstatus.background-activity.InVideoConference";
  v9[7] = @"com.apple.systemstatus.background-activity.InCall";
  v9[8] = @"com.apple.systemstatus.background-activity.CallRecording";
  v9[9] = @"com.apple.systemstatus.background-activity.VideoConferenceHandoff";
  v9[10] = @"com.apple.systemstatus.background-activity.CallHandoff";
  v9[11] = @"com.apple.systemstatus.background-activity.CallScreening";
  v9[12] = @"com.apple.systemstatus.background-activity.ActivePushToTalkCall";
  v9[13] = @"com.apple.systemstatus.background-activity.DeveloperTools";
  v9[14] = @"com.apple.systemstatus.background-activity.AirPrint";
  v9[15] = @"com.apple.systemstatus.background-activity.Tethering";
  v9[16] = @"com.apple.systemstatus.background-activity.guestpass";
  v9[17] = @"com.apple.systemstatus.background-activity.SharePlay";
  v9[18] = @"com.apple.systemstatus.background-activity.SharePlayScreenSharing";
  v9[19] = @"com.apple.systemstatus.background-activity.ScreenSharing";
  v9[20] = @"com.apple.systemstatus.background-activity.VideoOut";
  v9[21] = @"com.apple.systemstatus.background-activity.SharePlayInactive";
  v9[22] = @"com.apple.systemstatus.background-activity.CellularSOS";
  v9[23] = @"com.apple.systemstatus.background-activity.WebRTCCapture";
  v9[24] = @"com.apple.systemstatus.background-activity.WebRTCAudioCapture";
  v9[25] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCCapture";
  v9[26] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCAudioCapture";
  v9[27] = @"com.apple.systemstatus.background-activity.Recording";
  v9[28] = @"com.apple.systemstatus.background-activity.workout";
  v9[29] = @"com.apple.systemstatus.background-activity.BackgroundLocation";
  v9[30] = @"com.apple.systemstatus.background-activity.NearbyInteractions";
  v9[31] = @"com.apple.systemstatus.background-activity.Playgrounds";
  v9[32] = @"com.apple.systemstatus.background-activity.IdlePushToTalkCall";
  v9[33] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  v9[34] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.ready";
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:35];
  v8[0] = @"com.apple.systemstatus.background-activity.SatelliteSOS";
  v8[1] = @"com.apple.systemstatus.background-activity.SatelliteSOSDisconnected";
  v8[6] = @"com.apple.systemstatus.background-activity.VideoConferenceRinging";
  v8[7] = @"com.apple.systemstatus.background-activity.CallRinging";
  v8[12] = @"com.apple.systemstatus.background-activity.InVideoConference";
  v8[13] = @"com.apple.systemstatus.background-activity.InCall";
  v8[2] = @"com.apple.systemstatus.background-activity.Diagnostics";
  v8[3] = @"com.apple.systemstatus.background-activity.Sysdiagnose";
  v8[4] = @"com.apple.systemstatus.background-activity.ScreenSharingServer";
  v8[5] = @"com.apple.systemstatus.background-activity.ScreenReplayRecording";
  v8[8] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-video";
  v8[9] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-audio";
  v8[10] = @"com.apple.systemstatus.background-activity.continuitycapture.mic-only";
  v8[11] = @"com.apple.systemstatus.background-activity.continuitycapture.streaming-none";
  v8[14] = @"com.apple.systemstatus.background-activity.CallRecording";
  v8[15] = @"com.apple.systemstatus.background-activity.ActivePushToTalkCall";
  v8[16] = @"com.apple.systemstatus.background-activity.CallHandoff";
  v8[17] = @"com.apple.systemstatus.background-activity.VideoConferenceHandoff";
  v8[18] = @"com.apple.systemstatus.background-activity.CallScreening";
  v8[19] = @"com.apple.systemstatus.background-activity.Navigation";
  v8[20] = @"com.apple.systemstatus.background-activity.Navigation";
  v8[21] = @"com.apple.systemstatus.background-activity.CellularSOS";
  v8[22] = @"com.apple.systemstatus.background-activity.DeveloperTools";
  v8[23] = @"com.apple.systemstatus.background-activity.AirPrint";
  v8[24] = @"com.apple.systemstatus.background-activity.WebRTCCapture";
  v8[25] = @"com.apple.systemstatus.background-activity.WebRTCAudioCapture";
  v8[26] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCCapture";
  v8[27] = @"com.apple.systemstatus.background-activity.FullScreenWebRTCAudioCapture";
  v8[28] = @"com.apple.systemstatus.background-activity.Recording";
  v8[29] = @"com.apple.systemstatus.background-activity.HearingAidRecording";
  v8[30] = @"com.apple.systemstatus.background-activity.LoggingCapture";
  v8[31] = @"com.apple.systemstatus.background-activity.Tethering";
  v8[32] = @"com.apple.systemstatus.background-activity.guestpass";
  v8[33] = @"com.apple.systemstatus.background-activity.SharePlay";
  v8[34] = @"com.apple.systemstatus.background-activity.SharePlayScreenSharing";
  v8[35] = @"com.apple.systemstatus.background-activity.SharePlayInactive";
  v8[36] = @"com.apple.systemstatus.background-activity.ScreenSharing";
  v8[37] = @"com.apple.systemstatus.background-activity.VideoOut";
  v8[38] = @"com.apple.systemstatus.background-activity.CarPlay";
  v8[39] = @"com.apple.mediaremoted.background-activity.routed-audio-pulse";
  v8[40] = @"com.apple.mediaremoted.background-activity.routed-video";
  v8[41] = @"com.apple.mediaremoted.background-activity.routed-video-pulse";
  v8[42] = @"com.apple.mediaremoted.background-activity.routed-audio";
  v8[43] = @"com.apple.systemstatus.background-activity.AutoAirPlayReady";
  v8[44] = @"com.apple.systemstatus.background-activity.AutoAirPlayPlaying";
  v8[45] = @"com.apple.systemstatus.background-activity.AssistantEyesFree";
  v8[46] = @"com.apple.systemstatus.background-activity.workout";
  v8[47] = @"com.apple.systemstatus.background-activity.InWorkout";
  v8[48] = @"com.apple.systemstatus.background-activity.BackgroundLocation";
  v8[49] = @"com.apple.systemstatus.background-activity.NearbyInteractions";
  v8[50] = @"com.apple.systemstatus.background-activity.Playgrounds";
  v8[51] = @"com.apple.systemstatus.background-activity.IdlePushToTalkCall";
  v8[52] = @"com.apple.activityprogress.backgroundui";
  v8[53] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.recording";
  v8[54] = @"com.apple.systemstatus.background-activity.replaykit.callrecording.ready";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:55];
  v1 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v7];
  v2 = qword_1ED7F5DA8;
  qword_1ED7F5DA8 = v1;

  v3 = [MEMORY[0x1E695DFB8] orderedSetWithArray:v0];
  v4 = qword_1ED7F5DB0;
  qword_1ED7F5DB0 = v3;

  v5 = [qword_1ED7F5DB0 copy];
  v6 = qword_1ED7F5DA0;
  qword_1ED7F5DA0 = v5;
}

- (id)validBackgroundActivitiesForBackgroundActivities:(id)activities
{
  activitiesCopy = activities;
  v5 = [MEMORY[0x1E695DFA8] setWithSet:activitiesCopy];
  v6 = [(STBackgroundActivityManager *)self _allValidBackgroundActivitiesInPrecedenceScope:999];
  v7 = [v6 set];
  [v5 intersectSet:v7];

  if (self->_allowAllBackgroundActivities)
  {
    [v5 unionSet:activitiesCopy];
  }

  return v5;
}

- (id)resolvedBackgroundActivityFromBackgroundActivities:(id)activities inPrecedenceScope:(unint64_t)scope
{
  activitiesCopy = activities;
  v7 = [(STBackgroundActivityManager *)self _allValidBackgroundActivitiesInPrecedenceScope:scope];
  v8 = [v7 mutableCopy];
  [v8 intersectSet:activitiesCopy];
  if (self->_allowAllBackgroundActivities)
  {
    v9 = [MEMORY[0x1E695DFA0] orderedSetWithSet:activitiesCopy];
    v10 = [(STBackgroundActivityManager *)self _allValidBackgroundActivitiesInPrecedenceScope:999];
    [v9 minusOrderedSet:v10];

    if ([v9 count])
    {
      firstObject = [v9 firstObject];

      goto LABEL_6;
    }
  }

  firstObject = [v8 firstObject];
LABEL_6:

  return firstObject;
}

- (id)visualDescriptorForBackgroundActivityWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [(NSDictionary *)self->_visualDescriptors objectForKeyedSubscript:identifierCopy];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = [STBackgroundActivityVisualDescriptor visualDescriptorForBackgroundActivityWithIdentifier:identifierCopy];
  }

  v8 = v7;

  return v8;
}

- (void)_registerForInternalDefaultsChanges
{
  if (!self->_internalDefaultsObserver)
  {
    self->_allowAllBackgroundActivities = [(STSystemStatusDefaults *)self->_systemStatusDefaults shouldEnableUnknownBackgroundActivities];
    objc_initWeak(&location, self);
    systemStatusDefaults = self->_systemStatusDefaults;
    v4 = MEMORY[0x1E69E96A0];
    v5 = MEMORY[0x1E69E96A0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __66__STBackgroundActivityManager__registerForInternalDefaultsChanges__block_invoke;
    v8[3] = &unk_1E85DDD78;
    objc_copyWeak(&v9, &location);
    v6 = [(BSAbstractDefaultDomain *)systemStatusDefaults observeDefault:@"shouldEnableUnknownBackgroundActivities" onQueue:v4 withBlock:v8];
    internalDefaultsObserver = self->_internalDefaultsObserver;
    self->_internalDefaultsObserver = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

uint64_t __66__STBackgroundActivityManager__registerForInternalDefaultsChanges__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained;
    WeakRetained = MEMORY[0x1E12742A0]("[STBackgroundActivityManager _registerForInternalDefaultsChanges]_block_invoke");
    if (WeakRetained)
    {
      WeakRetained = [v4[5] shouldEnableUnknownBackgroundActivities];
    }

    v2 = v4;
    if (*(v4 + 56) != WeakRetained)
    {
      *(v4 + 56) = WeakRetained;
      WeakRetained = [v4 _forceResetBackgroundActivitiesForClients];
      v2 = v4;
    }
  }

  return MEMORY[0x1EEE66BB8](WeakRetained, v2);
}

- (void)recordBundlesChangedForBundleManager:(id)manager
{
  managerCopy = manager;
  objc_initWeak(&location, self);
  if (self->_bundleManager == managerCopy)
  {
    objc_copyWeak(&v5, &location);
    BSDispatchMain();
    objc_destroyWeak(&v5);
  }

  objc_destroyWeak(&location);
}

void __68__STBackgroundActivityManager_recordBundlesChangedForBundleManager___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords];
}

- (void)_updateSupportedBackgroundActivitiesAndVisualDescriptorsFromBundleRecords
{
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  recordIdentifiers = [(STBundleManager *)self->_bundleManager recordIdentifiers];
  v5 = STSystemStatusLogBundleLoading();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v36 = recordIdentifiers;
    _os_log_impl(&dword_1DA9C2000, v5, OS_LOG_TYPE_DEFAULT, "Bundle manager reports background activity bundle identifiers changed: %{public}@", buf, 0xCu);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = recordIdentifiers;
  v6 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v32;
    v22 = *v32;
    selfCopy = self;
    do
    {
      v9 = 0;
      v24 = v7;
      do
      {
        if (*v32 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v31 + 1) + 8 * v9);
        v11 = [(STBundleManager *)self->_bundleManager bundleRecordForRecordIdentifier:v10];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v26 = v9;
          v29 = 0u;
          v30 = 0u;
          v27 = 0u;
          v28 = 0u;
          backgroundActivityIdentifiers = [v11 backgroundActivityIdentifiers];
          v13 = [backgroundActivityIdentifiers countByEnumeratingWithState:&v27 objects:v39 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = *v28;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v28 != v15)
                {
                  objc_enumerationMutation(backgroundActivityIdentifiers);
                }

                v17 = *(*(&v27 + 1) + 8 * i);
                v18 = [v11 visualDescriptorForBackgroundActivityWithIdentifier:v17];
                if (v18)
                {
                  [(NSDictionary *)dictionary setValue:v18 forKey:v17];
                  v19 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v36 = v17;
                    v37 = 2114;
                    v38 = v18;
                    _os_log_debug_impl(&dword_1DA9C2000, v19, OS_LOG_TYPE_DEBUG, "Background activity identifier %{public}@ associated with visual descriptor %{public}@", buf, 0x16u);
                  }
                }

                else
                {
                  v19 = STSystemStatusLogBundleLoading();
                  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138477827;
                    v36 = v17;
                    _os_log_error_impl(&dword_1DA9C2000, v19, OS_LOG_TYPE_ERROR, "No valid visual descriptor for background activity '%{private}@'", buf, 0xCu);
                  }
                }
              }

              v14 = [backgroundActivityIdentifiers countByEnumeratingWithState:&v27 objects:v39 count:16];
            }

            while (v14);
            v8 = v22;
            self = selfCopy;
            v7 = v24;
          }

          v9 = v26;
        }

        else
        {
          backgroundActivityIdentifiers = STSystemStatusLogBundleLoading();
          if (os_log_type_enabled(backgroundActivityIdentifiers, OS_LOG_TYPE_ERROR))
          {
            *buf = 138477827;
            v36 = v10;
            _os_log_error_impl(&dword_1DA9C2000, backgroundActivityIdentifiers, OS_LOG_TYPE_ERROR, "Bundle %{private}@ is of unexpected type, expected 'BackgroundActivities'", buf, 0xCu);
          }
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v7);
  }

  v20 = BSEqualObjects();
  visualDescriptors = self->_visualDescriptors;
  self->_visualDescriptors = dictionary;

  if ((v20 & 1) == 0)
  {
    [(STBackgroundActivityManager *)self _forceResetBackgroundActivitiesForClients];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(STBackgroundActivityManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivityManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)debugDescriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(STBackgroundActivityManager *)self _descriptionBuilderWithMultilinePrefix:prefix forDebug:1];
  build = [v3 build];

  return build;
}

- (id)_descriptionBuilderWithMultilinePrefix:(id)prefix forDebug:(BOOL)debug
{
  debugCopy = debug;
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(STBackgroundActivityManager *)self succinctDescriptionBuilder];
  [succinctDescriptionBuilder setUseDebugDescription:debugCopy];
  [succinctDescriptionBuilder setActiveMultilinePrefix:prefixCopy];

  allObjects = [(NSMutableSet *)self->_activeBackgroundActivities allObjects];
  [succinctDescriptionBuilder appendArraySection:allObjects withName:@"activeBackgroundActivities" skipIfEmpty:0];

  [succinctDescriptionBuilder appendDictionarySection:self->_visualDescriptors withName:@"registeredVisualDescriptors" skipIfEmpty:0];

  return succinctDescriptionBuilder;
}

@end