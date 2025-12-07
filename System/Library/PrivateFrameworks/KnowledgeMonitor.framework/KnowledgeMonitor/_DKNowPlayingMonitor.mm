@interface _DKNowPlayingMonitor
+ (id)_bmEventWithDKEvent:(id)event outputDevices:(id)devices biomeEventMetadata:(id)metadata excludeFromSuggestions:(BOOL)suggestions;
+ (id)_eventWithBundleIdentifier:(id)identifier metadata:(id)metadata;
+ (void)setPlaybackState:(unsigned int)state bundleId:(id)id track:(id)track outputDeviceIDs:(id)ds mediaType:(id)type iTunesStoreIdentifier:(id)identifier iTunesSubscriptionIdentifier:(id)subscriptionIdentifier;
- (_DKNowPlayingMonitor)init;
- (id)_metadataFromInfo:(id)info outputDevices:(id)devices;
- (void)_nowPlayingInfoDidChange:(void *)change outputDevices:(id)devices;
- (void)_registerForNowPlayingNotifications;
- (void)_stripMetadata:(id)metadata;
- (void)deactivate;
- (void)dealloc;
- (void)outputDevicesDidChange:(id)change;
- (void)saveBMEventWithCurrent:(id)current outputDevices:(id)devices artistStoreIdentifier:(id)identifier albumStoreIdentifier:(id)storeIdentifier excludeFromSuggestions:(BOOL)suggestions;
- (void)start;
- (void)stop;
@end

@implementation _DKNowPlayingMonitor

- (id)_metadataFromInfo:(id)info outputDevices:(id)devices
{
  v79 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  devicesCopy = devices;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v8 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27B60]];
  v9 = [v8 copy];

  if (v9)
  {
    album = [MEMORY[0x277CFE248] album];
    [dictionary setObject:v9 forKey:album];
  }

  v11 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27B70]];
  v12 = [v11 copy];

  if (v12)
  {
    artist = [MEMORY[0x277CFE248] artist];
    [dictionary setObject:v12 forKey:artist];
  }

  v14 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27BD8]];
  v15 = [v14 copy];

  if (v15)
  {
    duration = [MEMORY[0x277CFE248] duration];
    [dictionary setObject:v15 forKey:duration];
  }

  v69 = v9;
  v17 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27C00]];
  v18 = [v17 copy];

  if (v18)
  {
    genre = [MEMORY[0x277CFE248] genre];
    [dictionary setObject:v18 forKey:genre];
  }

  v20 = devicesCopy;
  v21 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27C88]];
  v22 = [v21 copy];

  if (v22)
  {
    title = [MEMORY[0x277CFE248] title];
    [dictionary setObject:v22 forKey:title];
  }

  v24 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27C30]];
  v25 = [v24 copy];

  if (v25)
  {
    mediaType = [MEMORY[0x277CFE248] mediaType];
    [dictionary setObject:v25 forKey:mediaType];
  }

  v71 = v25;
  v27 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27CC8]];
  v28 = [v27 copy];

  if (v28)
  {
    iTunesStoreIdentifier = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
    [dictionary setObject:v28 forKey:iTunesStoreIdentifier];
  }

  v67 = v18;
  v30 = [infoCopy objectForKeyedSubscript:*MEMORY[0x277D27CD0]];
  v31 = [v30 copy];

  if (v31)
  {
    iTunesSubscriptionIdentifier = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
    [dictionary setObject:v31 forKey:iTunesSubscriptionIdentifier];
  }

  v66 = v31;
  v33 = v28;
  v34 = v20;
  v68 = v15;
  if (v20)
  {
    v35 = [v20 count];
    v36 = v69;
    if (!v35)
    {
      v39 = 0;
      v56 = v34;
      v41 = 0x277CCA000;
      goto LABEL_48;
    }

    v62 = v12;
    v64 = dictionary;
    v65 = infoCopy;
    v73 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v63 = v34;
    obj = v34;
    v37 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
    if (v37)
    {
      v38 = v37;
      LOBYTE(v39) = 0;
      v40 = *v75;
      v70 = *MEMORY[0x277D27CB8];
      v41 = 0x277CCA000uLL;
      do
      {
        for (i = 0; i != v38; ++i)
        {
          v43 = v22;
          if (*v75 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v44 = *(*(&v74 + 1) + 8 * i);
          deviceID = [v44 deviceID];

          if (deviceID)
          {
            v46 = [*(v41 + 2992) numberWithInteger:{objc_msgSend(v44, "deviceType")}];
            v47 = [v73 objectForKeyedSubscript:v46];

            if (!v47)
            {
              v47 = objc_alloc_init(MEMORY[0x277CBEB38]);
              v48 = [*(v41 + 2992) numberWithInteger:{objc_msgSend(v44, "deviceType")}];
              [v73 setObject:v47 forKeyedSubscript:v48];
            }

            v49 = [*(v41 + 2992) numberWithInteger:{objc_msgSend(v44, "deviceSubType")}];
            v50 = [v47 objectForKeyedSubscript:v49];

            if (!v50)
            {
              v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
              v51 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v44, "deviceSubType")}];
              [v47 setObject:v50 forKeyedSubscript:v51];
            }

            deviceID2 = [v44 deviceID];
            [v50 addObject:deviceID2];

            v41 = 0x277CCA000;
          }

          if (v39)
          {
            v39 = 1;
            v22 = v43;
          }

          else
          {
            v53 = v44;
            v54 = v71;
            v55 = v54;
            if (v71 && ![v54 isEqualToString:v70] || objc_msgSend(v53, "deviceType"))
            {
              v39 = 0;
            }

            else
            {
              v39 = ([v53 deviceFeatures] >> 2) & 1;
            }

            v22 = v43;
            v41 = 0x277CCA000;
          }

          v33 = v28;
        }

        v38 = [obj countByEnumeratingWithState:&v74 objects:v78 count:16];
      }

      while (v38);
    }

    else
    {
      v39 = 0;
      v41 = 0x277CCA000;
    }

    dictionary = v64;
    if ([v73 count])
    {
      v57 = [v73 copy];
      outputDeviceIDs = [MEMORY[0x277CFE248] outputDeviceIDs];
      [v64 setObject:v57 forKey:outputDeviceIDs];

      v41 = 0x277CCA000uLL;
    }

    infoCopy = v65;
    v12 = v62;
    v56 = v63;
  }

  else
  {
    v39 = 0;
    v56 = 0;
    v41 = 0x277CCA000;
  }

  v36 = v69;
LABEL_48:
  v59 = [*(v41 + 2992) numberWithBool:{v39, v62}];
  isAirPlayVideo = [MEMORY[0x277CFE248] isAirPlayVideo];
  [dictionary setObject:v59 forKeyedSubscript:isAirPlayVideo];

  return dictionary;
}

+ (void)setPlaybackState:(unsigned int)state bundleId:(id)id track:(id)track outputDeviceIDs:(id)ds mediaType:(id)type iTunesStoreIdentifier:(id)identifier iTunesSubscriptionIdentifier:(id)subscriptionIdentifier
{
  v13 = *&state;
  v44[5] = *MEMORY[0x277D85DE8];
  idCopy = id;
  trackCopy = track;
  dsCopy = ds;
  typeCopy = type;
  identifierCopy = identifier;
  subscriptionIdentifierCopy = subscriptionIdentifier;
  v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  userContext = [MEMORY[0x277CFE318] userContext];
  keyPathForMediaPlayingStatus = [MEMORY[0x277CFE338] keyPathForMediaPlayingStatus];
  [userContext setObject:v17 forKeyedSubscript:keyPathForMediaPlayingStatus];

  nowPlayingStatusKey = [MEMORY[0x277CFE338] nowPlayingStatusKey];
  v43[0] = nowPlayingStatusKey;
  v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v13];
  v44[0] = v20;
  nowPlayingBundleIdKey = [MEMORY[0x277CFE338] nowPlayingBundleIdKey];
  v43[1] = nowPlayingBundleIdKey;
  v42 = idCopy;
  if (idCopy)
  {
    v22 = idCopy;
  }

  else
  {
    v22 = &stru_2838F0870;
  }

  v23 = trackCopy;
  v44[1] = v22;
  nowPlayingTrackKey = [MEMORY[0x277CFE338] nowPlayingTrackKey];
  v43[2] = nowPlayingTrackKey;
  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = &stru_2838F0870;
  }

  v44[2] = v25;
  nowPlayingOutputDeviceIDsKey = [MEMORY[0x277CFE338] nowPlayingOutputDeviceIDsKey];
  v43[3] = nowPlayingOutputDeviceIDsKey;
  v27 = MEMORY[0x277CBEC10];
  v41 = dsCopy;
  if (dsCopy)
  {
    v27 = dsCopy;
  }

  v44[3] = v27;
  nowPlayingMediaTypeKey = [MEMORY[0x277CFE338] nowPlayingMediaTypeKey];
  v43[4] = nowPlayingMediaTypeKey;
  if (typeCopy)
  {
    v29 = typeCopy;
  }

  else
  {
    v29 = &stru_2838F0870;
  }

  v44[4] = v29;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];
  v31 = [v30 mutableCopy];

  if (identifierCopy)
  {
    nowPlayingiTunesStoreIdentifierKey = [MEMORY[0x277CFE338] nowPlayingiTunesStoreIdentifierKey];
    [v31 setObject:identifierCopy forKey:nowPlayingiTunesStoreIdentifierKey];
  }

  if (subscriptionIdentifierCopy)
  {
    nowPlayingiTunesSubscriptionIdentifierKey = [MEMORY[0x277CFE338] nowPlayingiTunesSubscriptionIdentifierKey];
    [v31 setObject:subscriptionIdentifierCopy forKey:nowPlayingiTunesSubscriptionIdentifierKey];
  }

  v34 = [v31 copy];
  userContext2 = [MEMORY[0x277CFE318] userContext];
  keyPathForNowPlayingDataDictionary = [MEMORY[0x277CFE338] keyPathForNowPlayingDataDictionary];
  [userContext2 setObject:v34 forKeyedSubscript:keyPathForNowPlayingDataDictionary];
}

+ (id)_eventWithBundleIdentifier:(id)identifier metadata:(id)metadata
{
  v5 = MEMORY[0x277CFE1D8];
  v6 = MEMORY[0x277CFE298];
  metadataCopy = metadata;
  identifierCopy = identifier;
  nowPlayingStream = [v6 nowPlayingStream];
  date = [MEMORY[0x277CBEAA8] date];
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v12 = [MEMORY[0x277CFE1A8] withBundle:identifierCopy];

  v13 = [v5 eventWithStream:nowPlayingStream startDate:date endDate:distantFuture value:v12 metadata:metadataCopy];

  return v13;
}

- (_DKNowPlayingMonitor)init
{
  v7.receiver = self;
  v7.super_class = _DKNowPlayingMonitor;
  v2 = [(_DKMonitor *)&v7 init];
  v3 = v2;
  if (v2)
  {
    [(_DKMonitor *)v2 setEventComparator:&__block_literal_global_5];
    previousEvent = v3->_previousEvent;
    v3->_previousEvent = 0;

    previousBiomeEventMetadata = v3->_previousBiomeEventMetadata;
    v3->_previousBiomeEventMetadata = 0;

    v3->_bmSaveState = 0;
  }

  return v3;
}

- (void)dealloc
{
  [(_DKNowPlayingMonitor *)self deactivate];
  v3.receiver = self;
  v3.super_class = _DKNowPlayingMonitor;
  [(_DKMonitor *)&v3 dealloc];
}

- (void)start
{
  v6.receiver = self;
  v6.super_class = _DKNowPlayingMonitor;
  if ([(_DKMonitor *)&v6 instantMonitorNeedsActivation])
  {
    _eventFilterBlock = [objc_opt_class() _eventFilterBlock];
    [(_DKMonitor *)self setFilter:_eventFilterBlock];

    mEMORY[0x277CB8698] = [MEMORY[0x277CB8698] sharedAudioPresentationOutputContext];
    outputContext = self->_outputContext;
    self->_outputContext = mEMORY[0x277CB8698];

    [(_DKNowPlayingMonitor *)self _registerForNowPlayingNotifications];
  }
}

- (void)stop
{
  v3.receiver = self;
  v3.super_class = _DKNowPlayingMonitor;
  if ([(_DKMonitor *)&v3 instantMonitorNeedsDeactivation])
  {
    [(_DKNowPlayingMonitor *)self deactivate];
  }
}

- (void)deactivate
{
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v4 = *MEMORY[0x277CB8628];
  outputContext = [(_DKNowPlayingMonitor *)self outputContext];
  [defaultCenter removeObserver:self name:v4 object:outputContext];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277CB8630];
  outputContext2 = [(_DKNowPlayingMonitor *)self outputContext];
  [defaultCenter2 removeObserver:self name:v7 object:outputContext2];

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, self, *MEMORY[0x277D27BC8], 0);
  v10 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v10, self, *MEMORY[0x277D27B38], 0);

  MRMediaRemoteSetWantsNowPlayingNotifications();
}

- (void)_registerForNowPlayingNotifications
{
  contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
  if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
  {
    *v12 = 0;
    _os_log_impl(&dword_22595A000, contextChannel, OS_LOG_TYPE_INFO, "Registering for now playing events", v12, 2u);
  }

  MRMediaRemoteSetWantsNowPlayingNotifications();
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, self, _nowPlayingInfoInfoCallback, *MEMORY[0x277D27BC8], 0, CFNotificationSuspensionBehaviorDrop);
  v5 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(v5, self, _nowPlayingInfoStateCallback, *MEMORY[0x277D27B38], 0, CFNotificationSuspensionBehaviorDrop);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  v7 = *MEMORY[0x277CB8628];
  outputContext = [(_DKNowPlayingMonitor *)self outputContext];
  [defaultCenter addObserver:self selector:sel_outputDevicesDidChange_ name:v7 object:outputContext];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  v10 = *MEMORY[0x277CB8630];
  outputContext2 = [(_DKNowPlayingMonitor *)self outputContext];
  [defaultCenter2 addObserver:self selector:sel_outputDevicesDidChange_ name:v10 object:outputContext2];
}

- (void)outputDevicesDidChange:(id)change
{
  queue = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47___DKNowPlayingMonitor_outputDevicesDidChange___block_invoke;
  block[3] = &unk_27856F060;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)saveBMEventWithCurrent:(id)current outputDevices:(id)devices artistStoreIdentifier:(id)identifier albumStoreIdentifier:(id)storeIdentifier excludeFromSuggestions:(BOOL)suggestions
{
  suggestionsCopy = suggestions;
  currentCopy = current;
  devicesCopy = devices;
  identifierCopy = identifier;
  storeIdentifierCopy = storeIdentifier;
  if (!self->_nowPlayingSource)
  {
    v14 = BiomeLibrary();
    media = [v14 Media];
    nowPlaying = [media NowPlaying];
    source = [nowPlaying source];
    nowPlayingSource = self->_nowPlayingSource;
    self->_nowPlayingSource = source;
  }

  metadata = [(_DKEvent *)self->_previousEvent metadata];
  playing = [MEMORY[0x277CFE248] playing];
  v21 = [metadata objectForKeyedSubscript:playing];

  metadata2 = [currentCopy metadata];
  playing2 = [MEMORY[0x277CFE248] playing];
  v24 = [metadata2 objectForKeyedSubscript:playing2];

  v25 = objc_opt_new();
  if (identifierCopy)
  {
    stringValue = [identifierCopy stringValue];
    [(NSDictionary *)v25 setObject:stringValue forKeyedSubscript:@"iTunesArtistIdentifierKey"];
  }

  if (storeIdentifierCopy)
  {
    stringValue2 = [storeIdentifierCopy stringValue];
    [(NSDictionary *)v25 setObject:stringValue2 forKeyedSubscript:@"iTunesAlbumIdentifierKey"];
  }

  v86 = v25;
  localDeviceInfo = [MEMORY[0x277D27990] localDeviceInfo];
  v85 = localDeviceInfo;
  if ([localDeviceInfo hasAirPlayActive])
  {
    v29 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(localDeviceInfo, "isAirPlayActive")}];
    [(NSDictionary *)v25 setObject:v29 forKeyedSubscript:@"isAirPlayActive"];

    localDeviceInfo = v85;
  }

  if ([localDeviceInfo hasParentGroupContainsDiscoverableGroupLeader])
  {
    v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v85, "parentGroupContainsDiscoverableGroupLeader")}];
    [(NSDictionary *)v25 setObject:v30 forKeyedSubscript:@"parentGroupContainsDiscoverableGroupLeader"];
  }

  v31 = objc_autoreleasePoolPush();
  if (self->_previousEvent)
  {
    v76 = v31;
    v77 = storeIdentifierCopy;
    v79 = v21;
    v78 = identifierCopy;
    v32 = objc_alloc(MEMORY[0x277CBEB38]);
    metadata3 = [(_DKEvent *)self->_previousEvent metadata];
    v34 = [v32 initWithDictionary:metadata3];

    duration = [MEMORY[0x277CFE248] duration];
    [v34 removeObjectForKey:duration];

    v36 = objc_alloc(MEMORY[0x277CBEB38]);
    metadata4 = [currentCopy metadata];
    v38 = [v36 initWithDictionary:metadata4];

    duration2 = [MEMORY[0x277CFE248] duration];
    [v38 removeObjectForKey:duration2];

    v75 = [v38 isEqualToDictionary:v34];
    v81 = currentCopy;
    metadata5 = [currentCopy metadata];
    duration3 = [MEMORY[0x277CFE248] duration];
    v42 = [metadata5 objectForKeyedSubscript:duration3];
    [v42 floatValue];
    v44 = v43;
    metadata6 = [(_DKEvent *)self->_previousEvent metadata];
    duration4 = [MEMORY[0x277CFE248] duration];
    v47 = [metadata6 objectForKeyedSubscript:duration4];
    [v47 floatValue];
    v49 = v48;

    v50 = [(NSDictionary *)v86 isEqualToDictionary:self->_previousBiomeEventMetadata];
    v51 = !v75 || vabds_f32(v44, v49) >= 0.2 || !v50;
    storeIdentifierCopy = v77;
    identifierCopy = v78;
    currentCopy = v81;

    v21 = v79;
    v31 = v76;
  }

  else
  {
    v51 = 1;
  }

  objc_autoreleasePoolPop(v31);
  bmSaveState = self->_bmSaveState;
  if (bmSaveState == 2)
  {
    if ([v24 longValue] == 1)
    {
      contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_INFO))
      {
        *v87 = 0;
        _os_log_impl(&dword_22595A000, contextChannel, OS_LOG_TYPE_INFO, "Biome state transition Stopped -> Playing", v87, 2u);
      }

      contextChannel2 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_DEBUG))
      {
        [_DKNowPlayingMonitor saveBMEventWithCurrent:currentCopy outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
      }

      goto LABEL_41;
    }
  }

  else if (bmSaveState == 1)
  {
    if ([v21 longValue] == 1 && (objc_msgSend(v21, "isEqualToNumber:", v24) & 1) == 0)
    {
      contextChannel3 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_INFO))
      {
        *v89 = 0;
        _os_log_impl(&dword_22595A000, contextChannel3, OS_LOG_TYPE_INFO, "Biome state transition Playing -> Stopped", v89, 2u);
      }

      v70 = 2;
      goto LABEL_42;
    }

    if (v51)
    {
      contextChannel4 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel4, OS_LOG_TYPE_INFO))
      {
        *v88 = 0;
        _os_log_impl(&dword_22595A000, contextChannel4, OS_LOG_TYPE_INFO, "Biome state transition Playing -> Playing", v88, 2u);
      }

      contextChannel5 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel5, OS_LOG_TYPE_DEBUG))
      {
        [_DKNowPlayingMonitor saveBMEventWithCurrent:? outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
      }

      v80 = v21;

      contextChannel6 = [MEMORY[0x277CFE0C8] contextChannel];
      if (os_log_type_enabled(contextChannel6, OS_LOG_TYPE_DEBUG))
      {
        [_DKNowPlayingMonitor saveBMEventWithCurrent:currentCopy outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
      }

      metadata7 = [(_DKEvent *)self->_previousEvent metadata];
      v59 = [metadata7 mutableCopy];

      playing3 = [MEMORY[0x277CFE248] playing];
      [v59 setObject:&unk_2838F78D0 forKeyedSubscript:playing3];

      v61 = objc_opt_class();
      v62 = objc_opt_class();
      [(_DKEvent *)self->_previousEvent value];
      v63 = v82 = currentCopy;
      stringValue3 = [v63 stringValue];
      v65 = [v62 _eventWithBundleIdentifier:stringValue3 metadata:v59];
      v66 = [(NSDictionary *)self->_previousBiomeEventMetadata copy];
      v67 = [v61 _bmEventWithDKEvent:v65 outputDevices:devicesCopy biomeEventMetadata:v66 excludeFromSuggestions:suggestionsCopy];

      currentCopy = v82;
      [(BMSource *)self->_nowPlayingSource sendEvent:v67];
      v68 = [objc_opt_class() _bmEventWithDKEvent:v82 outputDevices:devicesCopy biomeEventMetadata:v86 excludeFromSuggestions:suggestionsCopy];
      [(BMSource *)self->_nowPlayingSource sendEvent:v68];

      v21 = v80;
      goto LABEL_43;
    }
  }

  else if (!bmSaveState && [v24 longValue] == 1)
  {
    contextChannel7 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(contextChannel7, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_22595A000, contextChannel7, OS_LOG_TYPE_INFO, "Biome state transition Unknown -> Playing", buf, 2u);
    }

    contextChannel2 = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_DEBUG))
    {
      [_DKNowPlayingMonitor saveBMEventWithCurrent:currentCopy outputDevices:? artistStoreIdentifier:? albumStoreIdentifier:? excludeFromSuggestions:?];
    }

LABEL_41:

    v70 = 1;
LABEL_42:
    self->_bmSaveState = v70;
    v59 = [objc_opt_class() _bmEventWithDKEvent:currentCopy outputDevices:devicesCopy biomeEventMetadata:v86 excludeFromSuggestions:suggestionsCopy];
    [(BMSource *)self->_nowPlayingSource sendEvent:v59];
LABEL_43:
  }

  previousEvent = self->_previousEvent;
  self->_previousEvent = currentCopy;
  v72 = currentCopy;

  previousBiomeEventMetadata = self->_previousBiomeEventMetadata;
  self->_previousBiomeEventMetadata = v86;
}

- (void)_nowPlayingInfoDidChange:(void *)change outputDevices:(id)devices
{
  devicesCopy = devices;
  v6 = dispatch_group_create();
  v66[0] = 0;
  v66[1] = v66;
  v66[2] = 0x3032000000;
  v66[3] = __Block_byref_object_copy__4;
  v66[4] = __Block_byref_object_dispose__4;
  v67 = 0;
  v64[0] = 0;
  v64[1] = v64;
  v64[2] = 0x3032000000;
  v64[3] = __Block_byref_object_copy__4;
  v64[4] = __Block_byref_object_dispose__4;
  v65 = 0;
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x3032000000;
  v62[3] = __Block_byref_object_copy__4;
  v62[4] = __Block_byref_object_dispose__4;
  v63 = 0;
  v60[0] = 0;
  v60[1] = v60;
  v60[2] = 0x2020000000;
  v61 = 0;
  dispatch_group_enter(v6);
  v7 = os_transaction_create();
  queue = [(_DKMonitor *)self queue];
  v48 = MEMORY[0x277D85DD0];
  v49 = 3221225472;
  v50 = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke;
  v51 = &unk_27856F4E8;
  v56 = v66;
  selfCopy = self;
  v9 = devicesCopy;
  v53 = v9;
  v57 = v64;
  v58 = v62;
  v59 = v60;
  v10 = v6;
  v54 = v10;
  v11 = v7;
  v55 = v11;
  MRMediaRemoteGetNowPlayingInfoWithOptionalArtwork();

  v46[0] = 0;
  v46[1] = v46;
  v46[2] = 0x3032000000;
  v46[3] = __Block_byref_object_copy__4;
  v46[4] = __Block_byref_object_dispose__4;
  v47 = 0;
  dispatch_group_enter(v10);
  queue2 = [(_DKMonitor *)self queue];
  v39 = MEMORY[0x277D85DD0];
  v40 = 3221225472;
  v41 = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2;
  v42 = &unk_27856F510;
  v45 = v46;
  v13 = v10;
  v43 = v13;
  v14 = v11;
  v44 = v14;
  MRMediaRemoteGetNowPlayingClientForOrigin();

  v37[0] = 0;
  v37[1] = v37;
  v37[2] = 0x2020000000;
  v38 = 0;
  dispatch_group_enter(v13);
  queue3 = [(_DKMonitor *)self queue];
  v30 = MEMORY[0x277D85DD0];
  v31 = 3221225472;
  v32 = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_66;
  v33 = &unk_27856F538;
  v36 = v37;
  v16 = v13;
  v34 = v16;
  v35 = v14;
  MRMediaRemoteGetNowPlayingApplicationPlaybackState();

  queue4 = [(_DKMonitor *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63___DKNowPlayingMonitor__nowPlayingInfoDidChange_outputDevices___block_invoke_2_68;
  block[3] = &unk_27856F560;
  v25 = v66;
  v26 = v60;
  v21 = v9;
  selfCopy2 = self;
  v27 = v37;
  v28 = v64;
  v29 = v62;
  v23 = v35;
  v24 = v46;
  v18 = v35;
  v19 = v9;
  dispatch_group_notify(v16, queue4, block);

  _Block_object_dispose(v37, 8);
  _Block_object_dispose(v46, 8);

  _Block_object_dispose(v60, 8);
  _Block_object_dispose(v62, 8);

  _Block_object_dispose(v64, 8);
  _Block_object_dispose(v66, 8);
}

- (void)_stripMetadata:(id)metadata
{
  v3 = MEMORY[0x277CFE248];
  metadataCopy = metadata;
  album = [v3 album];
  [metadataCopy removeObjectForKey:album];

  artist = [MEMORY[0x277CFE248] artist];
  [metadataCopy removeObjectForKey:artist];

  duration = [MEMORY[0x277CFE248] duration];
  [metadataCopy removeObjectForKey:duration];

  elapsed = [MEMORY[0x277CFE248] elapsed];
  [metadataCopy removeObjectForKey:elapsed];

  genre = [MEMORY[0x277CFE248] genre];
  [metadataCopy removeObjectForKey:genre];

  iTunesStoreIdentifier = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
  [metadataCopy removeObjectForKey:iTunesStoreIdentifier];

  iTunesSubscriptionIdentifier = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
  [metadataCopy removeObjectForKey:iTunesSubscriptionIdentifier];

  title = [MEMORY[0x277CFE248] title];
  [metadataCopy removeObjectForKey:title];
}

+ (id)_bmEventWithDKEvent:(id)event outputDevices:(id)devices biomeEventMetadata:(id)metadata excludeFromSuggestions:(BOOL)suggestions
{
  v117 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  obj = devices;
  metadataCopy = metadata;
  metadata = [eventCopy metadata];
  playing = [MEMORY[0x277CFE248] playing];
  v12 = [metadata objectForKeyedSubscript:playing];
  unsignedIntValue = [v12 unsignedIntValue];

  v93 = objc_alloc(MEMORY[0x277CF1320]);
  if (suggestions)
  {
    itemID = 0;
  }

  else
  {
    source = [eventCopy source];
    itemID = [source itemID];
  }

  startDate = [eventCopy startDate];
  if (unsignedIntValue >= 6)
  {
    contextChannel = [MEMORY[0x277CFE0C8] contextChannel];
    if (os_log_type_enabled(contextChannel, OS_LOG_TYPE_ERROR))
    {
      [_DKNowPlayingMonitor _bmEventWithDKEvent:unsignedIntValue outputDevices:contextChannel biomeEventMetadata:? excludeFromSuggestions:?];
    }

    unsignedIntValue = 0;
  }

  v94 = unsignedIntValue;
  if (suggestions)
  {
    v16 = 0;
    v99 = 0;
    v101 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    metadata2 = [eventCopy metadata];
    album = [MEMORY[0x277CFE248] album];
    v81 = metadata2;
    v101 = [metadata2 objectForKeyedSubscript:?];
    metadata3 = [eventCopy metadata];
    unsignedIntValue = [MEMORY[0x277CFE248] artist];
    v79 = metadata3;
    v17 = [metadata3 objectForKeyedSubscript:unsignedIntValue];
    metadata4 = [eventCopy metadata];
    duration = [MEMORY[0x277CFE248] duration];
    v78 = metadata4;
    v99 = [metadata4 objectForKeyedSubscript:?];
    metadata5 = [eventCopy metadata];
    genre = [MEMORY[0x277CFE248] genre];
    v76 = metadata5;
    v18 = [metadata5 objectForKeyedSubscript:?];
    metadata6 = [eventCopy metadata];
    title = [MEMORY[0x277CFE248] title];
    v74 = metadata6;
    v16 = [metadata6 objectForKeyedSubscript:?];
    metadata7 = [eventCopy metadata];
    elapsed = [MEMORY[0x277CFE248] elapsed];
    v72 = metadata7;
    v19 = [metadata7 objectForKeyedSubscript:?];
  }

  metadata8 = [eventCopy metadata];
  [MEMORY[0x277CFE248] mediaType];
  v91 = v90 = metadata8;
  [metadata8 objectForKeyedSubscript:?];
  v96 = startDate;
  v97 = v19;
  suggestionsCopy = suggestions;
  v100 = v17;
  v83 = unsignedIntValue;
  v92 = v18;
  v89 = v98 = v16;
  if (suggestions)
  {
    stringValue = 0;
    stringValue2 = 0;
  }

  else
  {
    metadata9 = [eventCopy metadata];
    iTunesStoreIdentifier = [MEMORY[0x277CFE248] iTunesStoreIdentifier];
    v70 = metadata9;
    v68 = [metadata9 objectForKeyedSubscript:?];
    stringValue = [v68 stringValue];
    metadata10 = [eventCopy metadata];
    iTunesSubscriptionIdentifier = [MEMORY[0x277CFE248] iTunesSubscriptionIdentifier];
    v67 = metadata10;
    v65 = [metadata10 objectForKeyedSubscript:?];
    stringValue2 = [v65 stringValue];
  }

  v88 = stringValue2;
  v105 = eventCopy;
  metadata11 = [eventCopy metadata];
  isAirPlayVideo = [MEMORY[0x277CFE248] isAirPlayVideo];
  v87 = metadata11;
  v85 = [metadata11 objectForKeyedSubscript:?];
  v31 = obj;
  v32 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v31, "count")}];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  obja = v31;
  v33 = [obja countByEnumeratingWithState:&v110 objects:v114 count:16];
  if (v33)
  {
    v34 = v33;
    v35 = *v111;
    do
    {
      v36 = 0;
      do
      {
        if (*v111 != v35)
        {
          objc_enumerationMutation(obja);
        }

        v37 = *(*(&v110 + 1) + 8 * v36);
        v38 = objc_alloc(MEMORY[0x277CF1328]);
        deviceType = [v37 deviceType];
        v40 = deviceType;
        if (deviceType >= 5)
        {
          contextChannel2 = [MEMORY[0x277CFE0C8] contextChannel];
          if (os_log_type_enabled(contextChannel2, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v116 = v40;
            _os_log_fault_impl(&dword_22595A000, contextChannel2, OS_LOG_TYPE_FAULT, "BMMediaNowPlayingOutputDeviceType: Unrecognized value for outputDevice: %ld", buf, 0xCu);
          }

          v41 = 0;
        }

        else
        {
          v41 = (deviceType + 1);
        }

        deviceSubType = [v37 deviceSubType];
        v44 = deviceSubType;
        if (deviceSubType >= 0x15)
        {
          contextChannel3 = [MEMORY[0x277CFE0C8] contextChannel];
          if (os_log_type_enabled(contextChannel3, OS_LOG_TYPE_FAULT))
          {
            *buf = 134217984;
            v116 = v44;
            _os_log_fault_impl(&dword_22595A000, contextChannel3, OS_LOG_TYPE_FAULT, "BMMediaNowPlayingOutputDeviceSubType: Unrecognized value for outputSubtype: %ld", buf, 0xCu);
          }

          v45 = 0;
        }

        else
        {
          v45 = (deviceSubType + 1);
        }

        deviceID = [v37 deviceID];
        v48 = [v38 initWithType:v41 subType:v45 outputDeviceID:deviceID];
        [v32 addObject:v48];

        ++v36;
      }

      while (v34 != v36);
      v34 = [obja countByEnumeratingWithState:&v110 objects:v114 count:16];
    }

    while (v34);
  }

  value = [v105 value];
  [value stringValue];
  v84 = v107 = value;
  if (suggestionsCopy)
  {
    v50 = 0;
    v51 = 0;
    v52 = metadataCopy;
  }

  else
  {
    v52 = metadataCopy;
    v50 = [metadataCopy objectForKeyedSubscript:@"iTunesArtistIdentifierKey"];
    v51 = [metadataCopy objectForKeyedSubscript:@"iTunesAlbumIdentifierKey"];
  }

  v53 = v96;
  v54 = v85;
  v55 = [v52 objectForKeyedSubscript:@"isAirPlayActive"];
  v56 = [v52 objectForKeyedSubscript:@"parentGroupContainsDiscoverableGroupLeader"];
  v57 = v89;
  v95 = [v93 initWithUniqueID:itemID absoluteTimestamp:v96 playbackState:v94 album:v101 artist:v100 duration:v99 genre:v92 title:v98 elapsed:v97 mediaType:v89 iTunesStoreIdentifier:stringValue iTunesSubscriptionIdentifier:v88 isAirPlayVideo:v85 outputDevices:v32 bundleID:v84 iTunesArtistIdentifier:v50 iTunesAlbumIdentifier:v51 groupIdentifier:0 isRemoteControl:0 itemMediaType:0 itemMediaSubtype:v55 isAirPlayActive:v56 parentGroupContainsDiscoverableGroupLeader:?];

  if (suggestionsCopy)
  {
    v58 = v84;
    v59 = v107;
    v60 = isAirPlayVideo;
    v61 = v87;
    v62 = v96;
    v63 = v90;
    v53 = v91;
  }

  else
  {

    v57 = v81;
    v62 = source;
    v60 = v101;
    v63 = itemID;
    v54 = v79;
    v61 = album;
    v59 = v100;
    v32 = v83;
    v58 = v78;
  }

  return v95;
}

- (void)saveBMEventWithCurrent:(void *)a1 outputDevices:artistStoreIdentifier:albumStoreIdentifier:excludeFromSuggestions:.cold.1(void *a1)
{
  v1 = [a1 metadata];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_22595A000, v2, v3, "Biome new metadata:%@", v4, v5, v6, v7);
}

- (void)saveBMEventWithCurrent:(id *)a1 outputDevices:artistStoreIdentifier:albumStoreIdentifier:excludeFromSuggestions:.cold.2(id *a1)
{
  v1 = [*a1 metadata];
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3(&dword_22595A000, v2, v3, "Biome old metadata:%@", v4, v5, v6, v7);
}

+ (void)_bmEventWithDKEvent:(uint64_t)a1 outputDevices:(NSObject *)a2 biomeEventMetadata:excludeFromSuggestions:.cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a1];
  OUTLINED_FUNCTION_1_1();
  _os_log_error_impl(&dword_22595A000, a2, OS_LOG_TYPE_ERROR, "BMMediaNowPlaying: unable to convert MRPlaybackState enum value: %@", v4, 0xCu);
}

@end