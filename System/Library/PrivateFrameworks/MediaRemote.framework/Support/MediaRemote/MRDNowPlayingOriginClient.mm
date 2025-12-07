@interface MRDNowPlayingOriginClient
- (BOOL)_shouldHandleNotification:(id)notification;
- (BOOL)containsActiveStream;
- (BOOL)isActivityActive;
- (BOOL)isMuted;
- (BOOL)isPlaying;
- (MRDNowPlayingClient)activeNowPlayingClient;
- (MRDNowPlayingOriginClient)initWithDeviceInfoDataSource:(id)source delegate:(id)delegate;
- (MRDNowPlayingOriginClient)initWithOrigin:(id)origin deviceInfo:(id)info deviceInfoDataSource:(id)source delegate:(id)delegate;
- (MRDNowPlayingOriginClientDelegate)delegate;
- (MRDeviceInfo)deviceInfo;
- (MRPlayerPath)activePlayerPath;
- (NSArray)activePlayerClients;
- (NSArray)mostRecentPlayers;
- (NSArray)nowPlayingAudioFormatContentInfos;
- (NSArray)nowPlayingClients;
- (NSData)deviceInfoData;
- (NSDate)lastPlayingDateSnapshot;
- (NSDictionary)defaultSupportedCommands;
- (NSString)debugDescription;
- (NSString)description;
- (double)timeSincePlaybackStarted;
- (double)timeSincePlaying;
- (float)volume;
- (id)_onQueue_addNowPlayingClient:(id)client;
- (id)_onQueue_calculateActiveNowPlayingClient;
- (id)_onQueue_calculateActiveNowPlayingPlayerClients;
- (id)_onQueue_calculateComputedNowPlayingClient;
- (id)_onQueue_calculateInferredNowPlayingClient;
- (id)_playerPathForNowPlayingClient:(id)client;
- (id)activeContent;
- (id)defaultSupportedCommandsDataForClient:(id)client;
- (id)defaultSupportedCommandsForClient:(id)client;
- (id)existingNowPlayingClientForClient:(id)client;
- (id)existingNowPlayingClientForDisplayID:(id)d;
- (id)existingNowPlayingClientForPid:(int)pid;
- (id)existingNowPlayingClientForPlayerPath:(id)path;
- (id)nowPlayingClientForClient:(id)client;
- (id)nowPlayingClientForPlayerPath:(id)path;
- (unsigned)_onQueue_calculateInferredPlaybackStateForPlayer:(id)player;
- (unsigned)_stateFromDataSource:(id)source;
- (unsigned)volumeControlCapabilities;
- (void)_handleActivePlayerDidChange:(id)change;
- (void)_handleNowPlayingAppMaybeDidChange:(id)change;
- (void)_handleNowPlayingApplicationDidUnregisterCanBeNowPlaying:(id)playing;
- (void)_handleOriginIsPlayingDidChange:(id)change;
- (void)_handlePlayerDidRegister:(id)register;
- (void)_handlePlayerIsPlayingDidChange:(id)change;
- (void)_handlePlayerPictureInPictureEnabledDidChange:(id)change;
- (void)_handlePlayerPropertiesDidChange:(id)change;
- (void)_onQueue_maybeSavePlaybackStateForNotification:(id)notification;
- (void)_onQueue_maybeSetupPlaybackTimeoutTimerForNotification:(id)notification;
- (void)_onQueue_reevaluateStateWithReason:(id)reason;
- (void)_onQueue_reloadInferredStateFromDataSource:(id)source reason:(id)reason;
- (void)_onQueue_removeNowPlayingClient:(id)client;
- (void)_onQueue_updateActivityStatus:(int)status;
- (void)_registerCallbacks;
- (void)clearDefaultSupportedCommandsData;
- (void)deviceInfoDataSource:(id)source deviceInfoDidChange:(id)change;
- (void)nowPlayingDataSourceNowPlayingApplicationDidChange:(id)change;
- (void)nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:(id)change;
- (void)nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:(id)change;
- (void)nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:(id)change;
- (void)nowPlayingDataSourceNowPlayingSessionsPlaybackStateDidChange:(id)change;
- (void)registerApplicationConnectionOutgoingMessageCallback:(id)callback;
- (void)registerCreateNewApplicationConnectionCallback:(id)callback;
- (void)removeAllClients;
- (void)removeNowPlayingClientForClient:(id)client;
- (void)setActivity:(id)activity;
- (void)setComputedNowPlayingClient:(id)client;
- (void)setDeviceInfo:(id)info;
- (void)setDevicePlaybackSessionID:(id)d;
- (void)setExplicitNowPlayingClient:(id)client;
- (void)setInferredNowPlayingClient:(id)client;
- (void)setIsMuted:(BOOL)muted;
- (void)setNowPlayingDataSource:(id)source;
- (void)setOverrideClient:(id)client;
- (void)updateDefaultSupportedCommandsData:(id)data forClient:(id)client;
- (void)updateLastPlayingDate:(id)date;
@end

@implementation MRDNowPlayingOriginClient

- (MRDeviceInfo)deviceInfo
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350EC;
  v8 = sub_100035A2C;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (float)volume
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[6];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (unsigned)volumeControlCapabilities
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 6);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)isMuted
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (MRDNowPlayingClient)activeNowPlayingClient
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350EC;
  v8 = sub_100035A2C;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)_onQueue_calculateInferredNowPlayingClient
{
  selfCopy = self;
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = selfCopy->_nowPlayingDataSource;
  v4 = +[MRUserSettings currentSettings];
  supportNowPlayingPIP = [v4 supportNowPlayingPIP];

  v6 = &MROutputContextDataSourceVolumeCapabilitiesUserInfoKey_ptr;
  if (!supportNowPlayingPIP)
  {
LABEL_20:
    v26 = objc_alloc(v6[55]);
    nowPlayingApplicationPID = [(MRDNowPlayingDataSource *)v3 nowPlayingApplicationPID];
    nowPlayingApplicationDisplayID = [(MRDNowPlayingDataSource *)v3 nowPlayingApplicationDisplayID];
    v29 = [v26 initWithProcessIdentifier:nowPlayingApplicationPID bundleIdentifier:nowPlayingApplicationDisplayID];

    v33 = [(MRDNowPlayingOriginClient *)selfCopy existingNowPlayingClientForClient:v29];

    goto LABEL_21;
  }

  nowPlayingApplications = [(MRDNowPlayingDataSource *)v3 nowPlayingApplications];
  allValues = [nowPlayingApplications allValues];

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v9 = allValues;
  v10 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = v10;
  v31 = v3;
  v12 = *v35;
  v32 = *v35;
  v33 = 0;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v35 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = *(*(&v34 + 1) + 8 * i);
      v15 = objc_alloc(v6[55]);
      v16 = [v14 pid];
      nowPlayingApplicationDisplayID2 = [v14 nowPlayingApplicationDisplayID];
      v18 = [v15 initWithProcessIdentifier:v16 bundleIdentifier:nowPlayingApplicationDisplayID2];

      v19 = [(MRDNowPlayingOriginClient *)selfCopy existingNowPlayingClientForClient:v18];
      if ([v14 isEligible])
      {
        activePlayerClient = [v19 activePlayerClient];
        if ([activePlayerClient canBeNowPlayingPlayer])
        {
          v21 = v9;
          v22 = selfCopy;
          v23 = v6;
          if (v33)
          {
            activePlayerClient2 = [v33 activePlayerClient];
            isPictureInPictureEnabled = [activePlayerClient2 isPictureInPictureEnabled];

            if (!isPictureInPictureEnabled)
            {
              v6 = v23;
              selfCopy = v22;
              v9 = v21;
              v12 = v32;
              goto LABEL_15;
            }
          }

          else
          {
          }

          activePlayerClient = v33;
          v33 = v19;
          v6 = v23;
          selfCopy = v22;
          v9 = v21;
          v12 = v32;
        }
      }

LABEL_15:
    }

    v11 = [v9 countByEnumeratingWithState:&v34 objects:v38 count:16];
  }

  while (v11);

  v3 = v31;
  if (!v33)
  {
    goto LABEL_20;
  }

LABEL_21:

  return v33;
}

- (id)_onQueue_calculateActiveNowPlayingClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  overrideClient = self->_overrideClient;
  if (overrideClient)
  {
    v4 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForPid:[(MRDMediaRemoteClient *)overrideClient pid]];
    goto LABEL_3;
  }

  explicitNowPlayingClient = self->_explicitNowPlayingClient;
  if (!explicitNowPlayingClient)
  {
    if (self->_computedNowPlayingClient && (+[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 computeNowPlayingApplication], v7, v8))
    {
      explicitNowPlayingClient = self->_computedNowPlayingClient;
    }

    else
    {
      explicitNowPlayingClient = self->_inferredNowPlayingClient;
      if (!explicitNowPlayingClient)
      {
        v4 = 0;
        goto LABEL_12;
      }
    }
  }

  v4 = explicitNowPlayingClient;
LABEL_12:
  if (self->_activity)
  {
    [(MRDNowPlayingOriginClient *)self timeSincePlaying];
    v10 = v9;
    v11 = +[MRUserSettings currentSettings];
    [v11 mediaRecentlyPlayedInterval];
    v13 = v12;

    if (v10 > v13)
    {
      v14 = [[MRClient alloc] initWithProcessIdentifier:-[MRMutableApplicationActivity creatorProcessID](self->_activity bundleIdentifier:{"creatorProcessID"), 0}];
      v15 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForClient:v14];

      v4 = v15;
    }
  }

LABEL_3:

  return v4;
}

- (id)_onQueue_calculateActiveNowPlayingPlayerClients
{
  dispatch_assert_queue_V2(self->_serialQueue);
  v3 = objc_alloc_init(NSMutableSet);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  obj = [(MRDNowPlayingOriginClient *)self nowPlayingClients];
  v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v20)
  {
    v19 = *v27;
    do
    {
      v4 = 0;
      do
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = v4;
        v5 = *(*(&v26 + 1) + 8 * v4);
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        playerClients = [v5 playerClients];
        v7 = [playerClients countByEnumeratingWithState:&v22 objects:v30 count:16];
        if (v7)
        {
          v8 = v7;
          v9 = *v23;
          do
          {
            for (i = 0; i != v8; i = i + 1)
            {
              if (*v23 != v9)
              {
                objc_enumerationMutation(playerClients);
              }

              v11 = *(*(&v22 + 1) + 8 * i);
              activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self activeNowPlayingClient];
              activePlayerClient = [activeNowPlayingClient activePlayerClient];
              v14 = activePlayerClient;
              if (activePlayerClient == v11)
              {

LABEL_15:
                [v3 addObject:v11];
                continue;
              }

              isPictureInPictureEnabled = [v11 isPictureInPictureEnabled];

              if (isPictureInPictureEnabled)
              {
                goto LABEL_15;
              }
            }

            v8 = [playerClients countByEnumeratingWithState:&v22 objects:v30 count:16];
          }

          while (v8);
        }

        v4 = v21 + 1;
      }

      while ((v21 + 1) != v20);
      v20 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v20);
  }

  v16 = [v3 copy];

  return v16;
}

- (NSArray)nowPlayingClients
{
  v6 = objc_alloc_init(NSMutableSet);
  v2 = v6;
  msv_dispatch_sync_on_queue();
  allObjects = [v2 allObjects];

  return allObjects;
}

- (MRPlayerPath)activePlayerPath
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F994;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (NSArray)activePlayerClients
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10000F940;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)_onQueue_calculateComputedNowPlayingClient
{
  dispatch_assert_queue_V2(self->_serialQueue);
  mostRecentPlayers = [(MRDNowPlayingOriginClient *)self mostRecentPlayers];
  v4 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(mostRecentPlayers, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v5 = mostRecentPlayers;
  v6 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v28;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        if ([v10 isPlaying])
        {
          goto LABEL_13;
        }

        playerPath = [v10 playerPath];
        client = [playerPath client];
        playerPath2 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForClient:client];

        if (playerPath2 == self->_computedNowPlayingClient || playerPath2 == self->_inferredNowPlayingClient)
        {
          goto LABEL_12;
        }

        v14 = [v10 snapshotForIsPlaying:0];
        date = [v14 date];

        if (!date || (+[NSDate date](NSDate, "date"), v16 = objc_claimAutoreleasedReturnValue(), [v16 timeIntervalSinceDate:date], v18 = v17, v16, +[MRUserSettings currentSettings](MRUserSettings, "currentSettings"), v19 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v19, "nowPlayingApplicationTimeout"), v21 = v20, v19, v18 <= v21))
        {

LABEL_12:
LABEL_13:
          playerPath2 = [v10 playerPath];
          [v4 addObject:playerPath2];
          goto LABEL_14;
        }

LABEL_14:
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v22 = [v5 countByEnumeratingWithState:&v27 objects:v31 count:16];
      v7 = v22;
    }

    while (v22);
  }

  firstObject = [v4 firstObject];
  client2 = [firstObject client];
  v25 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForClient:client2];

  return v25;
}

- (NSArray)mostRecentPlayers
{
  v4 = objc_alloc_init(NSMutableArray);
  msv_dispatch_sync_on_queue();
  v2 = v4;

  return v4;
}

- (NSArray)nowPlayingAudioFormatContentInfos
{
  nowPlayingAudioFormatContentInfos = [(MRDNowPlayingDataSource *)self->_nowPlayingDataSource nowPlayingAudioFormatContentInfos];
  allValues = [nowPlayingAudioFormatContentInfos allValues];

  return allValues;
}

- (NSDate)lastPlayingDateSnapshot
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350EC;
  v8 = sub_100035A2C;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (BOOL)containsActiveStream
{
  activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  isActiveStream = [activePlayerClient isActiveStream];

  return isActiveStream;
}

- (id)activeContent
{
  activeNowPlayingClient = [(MRDNowPlayingOriginClient *)self activeNowPlayingClient];
  activePlayerClient = [activeNowPlayingClient activePlayerClient];
  activeContent = [activePlayerClient activeContent];

  return activeContent;
}

- (MRDNowPlayingOriginClient)initWithOrigin:(id)origin deviceInfo:(id)info deviceInfoDataSource:(id)source delegate:(id)delegate
{
  originCopy = origin;
  infoCopy = info;
  sourceCopy = source;
  delegateCopy = delegate;
  v40.receiver = self;
  v40.super_class = MRDNowPlayingOriginClient;
  v15 = [(MRDNowPlayingOriginClient *)&v40 init];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.mediaremote.MRDNowPlayingOriginClient", v16);
  serialQueue = v15->_serialQueue;
  v15->_serialQueue = v17;

  objc_storeStrong(&v15->_origin, origin);
  [(MRDNowPlayingOriginClient *)v15 setDeviceInfo:infoCopy];
  objc_storeStrong(&v15->_deviceInfoDataSource, source);
  [(MRDDeviceInfoDataSource *)v15->_deviceInfoDataSource setDelegate:v15];
  objc_storeWeak(&v15->_delegate, delegateCopy);
  v19 = [[MRPlayerPath alloc] initWithOrigin:v15->_origin client:0 player:0];
  playerPath = v15->_playerPath;
  v15->_playerPath = v19;

  if (![(MROrigin *)v15->_origin isLocal])
  {
    v22 = +[NSDate distantPast];
    goto LABEL_6;
  }

  v21 = +[MRDSettings currentSettings];
  [v21 localPlaybackState];

  if (MRMediaRemotePlaybackStateIsAdvancing())
  {
    v22 = +[NSDate date];
LABEL_6:
    lastPlayingDate = v15->_lastPlayingDate;
    v15->_lastPlayingDate = v22;
    goto LABEL_11;
  }

  lastPlayingDate = +[MRDSettings currentSettings];
  localLastPlayingDate = [lastPlayingDate localLastPlayingDate];
  v25 = localLastPlayingDate;
  if (localLastPlayingDate)
  {
    v26 = localLastPlayingDate;
  }

  else
  {
    v26 = +[NSDate distantPast];
  }

  v27 = v15->_lastPlayingDate;
  v15->_lastPlayingDate = v26;

LABEL_11:
  v28 = +[NSDate date];
  registrationDate = v15->_registrationDate;
  v15->_registrationDate = v28;

  if ([(MROrigin *)v15->_origin isLocallyHosted])
  {
    v30 = +[MRUserSettings currentSettings];
    computeDevicePlaybackSessionID = [v30 computeDevicePlaybackSessionID];

    if (computeDevicePlaybackSessionID)
    {
      v32 = +[NSUUID UUID];
      uUIDString = [v32 UUIDString];
      devicePlaybackSessionID = v15->_devicePlaybackSessionID;
      v15->_devicePlaybackSessionID = uUIDString;
    }
  }

  v35 = v15->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E8BA0;
  block[3] = &unk_1004B6D08;
  v36 = v15;
  v39 = v36;
  dispatch_sync(v35, block);
  [(MRDNowPlayingOriginClient *)v36 _registerCallbacks];

LABEL_15:
  return v15;
}

- (MRDNowPlayingOriginClient)initWithDeviceInfoDataSource:(id)source delegate:(id)delegate
{
  delegateCopy = delegate;
  sourceCopy = source;
  v8 = +[MROrigin localOrigin];
  deviceInfo = [sourceCopy deviceInfo];
  v10 = [(MRDNowPlayingOriginClient *)self initWithOrigin:v8 deviceInfo:deviceInfo deviceInfoDataSource:sourceCopy delegate:delegateCopy];

  return v10;
}

- (NSString)description
{
  v3 = [(NSMutableArray *)self->_nowPlayingClients count];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = v5;
  v7 = "s";
  if (v3 == 1)
  {
    v7 = "";
  }

  v8 = [NSString stringWithFormat:@"<%@ %p origin=%@ %llu nowPlayingClient%s>", v5, self, self->_origin, v3, v7];

  return v8;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = MRCreateIndentedDebugDescriptionFromObject();
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  volume = self->_volume;
  v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription();
  v9 = @"YES";
  if (self->_isMuted)
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  [(MRDNowPlayingOriginClient *)self timeSincePlaying];
  v12 = v11;
  [(MRDNowPlayingOriginClient *)self timeSincePlaybackStarted];
  v14 = v13;
  if (![(MRDNowPlayingOriginClient *)self isPlaying])
  {
    v9 = @"NO";
  }

  devicePlaybackSessionID = [(MRDNowPlayingOriginClient *)self devicePlaybackSessionID];
  v16 = [NSMutableString stringWithFormat:@"%@ %p {\n  origin = %@\n  deviceInfo = %@\n  volume = %f\n  volume capabilities = %@\n  isMuted = %@\n  time since playing = %lf\n  time since playback started = %lf\n  is playing = %@\n  devicePlaybackSessionID = %@\n", v4, self, v5, v6, *&volume, v8, v10, v12, v14, v9, devicePlaybackSessionID];

  activeNowPlayingClient = self->_activeNowPlayingClient;
  if (activeNowPlayingClient)
  {
    client = [(MRDNowPlayingClient *)activeNowPlayingClient client];
    [v16 appendFormat:@"  active now playing client = %@\n", client];
  }

  overrideClient = self->_overrideClient;
  if (overrideClient)
  {
    bundleIdentifier = [(MRDMediaRemoteClient *)overrideClient bundleIdentifier];
    [v16 appendFormat:@"  override client = %@\n", bundleIdentifier];
  }

  explicitNowPlayingClient = self->_explicitNowPlayingClient;
  if (explicitNowPlayingClient)
  {
    client2 = [(MRDNowPlayingClient *)explicitNowPlayingClient client];
    v23 = MRCreateIndentedDebugDescriptionFromObject();
    [v16 appendFormat:@"  explicit now playing client = %@\n", v23];
  }

  computedNowPlayingClient = self->_computedNowPlayingClient;
  if (computedNowPlayingClient)
  {
    client3 = [(MRDNowPlayingClient *)computedNowPlayingClient client];
    v26 = MRCreateIndentedDebugDescriptionFromObject();
    [v16 appendFormat:@"  computed now playing client = %@\n", v26];
  }

  inferredNowPlayingClient = self->_inferredNowPlayingClient;
  if (inferredNowPlayingClient)
  {
    client4 = [(MRDNowPlayingClient *)inferredNowPlayingClient client];
    v29 = MRCreateIndentedDebugDescriptionFromObject();
    [v16 appendFormat:@"  inferred now playing client = %@\n", v29];
  }

  if (self->_activity)
  {
    v30 = MRCreateIndentedDebugDescriptionFromObject();
    [v16 appendFormat:@"  app activity = %@\n", v30];
  }

  if (self->_nowPlayingDataSource)
  {
    v31 = MRCreateIndentedDebugDescriptionFromObject();
    [v16 appendFormat:@"  datasource = %@\n", v31];
  }

  defaultSupportedCommands = [(MRDNowPlayingOriginClient *)self defaultSupportedCommands];
  if ([defaultSupportedCommands count])
  {
    v33 = MRMediaRemoteCopyReadableDictionaryDescription();
    v34 = MRCreateIndentedDebugDescriptionFromObject();
    [v16 appendFormat:@"  default supportedCommands = %@\n", v34];
  }

  if ([(NSMutableArray *)self->_nowPlayingClients count])
  {
    nowPlayingClients = self->_nowPlayingClients;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000E9098;
    v39[3] = &unk_1004BC320;
    v39[4] = self;
    v36 = [(NSMutableArray *)nowPlayingClients sortedArrayUsingComparator:v39];
    v37 = MRCreateIndentedDebugDescriptionFromArray();
    [v16 appendFormat:@"all now playing clients = %@\n", v37];
  }

  return v16;
}

- (void)setDeviceInfo:(id)info
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_1000350EC;
  v20[4] = sub_100035A2C;
  v21 = 0;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = sub_1000350EC;
  v18[4] = sub_100035A2C;
  v19 = 0;
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000E93AC;
  v12 = &unk_1004BC348;
  selfCopy = self;
  infoCopy = info;
  v14 = infoCopy;
  v15 = &v22;
  v16 = v20;
  v17 = v18;
  msv_dispatch_sync_on_queue();
  if (*(v23 + 24) == 1)
  {
    v4 = dispatch_get_global_queue(-32768, 0);
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1000E95E8;
    v5[3] = &unk_1004B9C58;
    v7 = v18;
    v6 = infoCopy;
    v8 = v20;
    dispatch_async(v4, v5);
  }

  _Block_object_dispose(v18, 8);
  _Block_object_dispose(v20, 8);

  _Block_object_dispose(&v22, 8);
}

- (NSData)deviceInfoData
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000E98B0;
  v5[3] = &unk_1004B6958;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)setIsMuted:(BOOL)muted
{
  serialQueue = self->_serialQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000E9E54;
  v4[3] = &unk_1004B8820;
  v4[4] = self;
  mutedCopy = muted;
  dispatch_sync(serialQueue, v4);
}

- (void)setComputedNowPlayingClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setExplicitNowPlayingClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setInferredNowPlayingClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setOverrideClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)setActivity:(id)activity
{
  activityCopy = activity;
  v3 = activityCopy;
  msv_dispatch_sync_on_queue();
}

- (BOOL)isActivityActive
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (BOOL)isPlaying
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = *(v5 + 24);
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (double)timeSincePlaying
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (double)timeSincePlaybackStarted
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v2;
}

- (id)nowPlayingClientForClient:(id)client
{
  clientCopy = client;
  v5 = objc_alloc_init(MRPlayerPath);
  [v5 setOrigin:self->_origin];
  [v5 setClient:clientCopy];

  v6 = [(MRDNowPlayingOriginClient *)self nowPlayingClientForPlayerPath:v5];

  return v6;
}

- (id)nowPlayingClientForPlayerPath:(id)path
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  pathCopy = path;
  msv_dispatch_sync_on_queue();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)existingNowPlayingClientForPlayerPath:(id)path
{
  client = [path client];
  v5 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForClient:client];

  return v5;
}

- (id)existingNowPlayingClientForPid:(int)pid
{
  v4 = [[MRClient alloc] initWithProcessIdentifier:*&pid bundleIdentifier:0];
  v5 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForClient:v4];

  return v5;
}

- (id)existingNowPlayingClientForDisplayID:(id)d
{
  dCopy = d;
  v5 = [[MRClient alloc] initWithProcessIdentifier:0 bundleIdentifier:dCopy];

  v6 = [(MRDNowPlayingOriginClient *)self existingNowPlayingClientForClient:v5];

  return v6;
}

- (id)existingNowPlayingClientForClient:(id)client
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  clientCopy = client;
  msv_dispatch_sync_on_queue();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)removeAllClients
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EBC00;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)removeNowPlayingClientForClient:(id)client
{
  clientCopy = client;
  v3 = clientCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_onQueue_removeNowPlayingClient:(id)client
{
  clientCopy = client;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    client = [(MRDNowPlayingClient *)clientCopy client];
    playerPath = self->_playerPath;
    *buf = 138543618;
    v28 = client;
    v29 = 2114;
    v30 = playerPath;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Removing nowPlayingClient %{public}@ for %{public}@", buf, 0x16u);
  }

  playerClients = [(MRDNowPlayingClient *)clientCopy playerClients];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v9 = [playerClients countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
    do
    {
      v12 = 0;
      do
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(playerClients);
        }

        player = [*(*(&v22 + 1) + 8 * v12) player];
        [(MRDNowPlayingClient *)clientCopy removePlayerClientForPlayer:player];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [playerClients countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v10);
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingOriginClient:self clientDidUnregister:clientCopy];

  [(NSMutableArray *)self->_nowPlayingClients removeObject:clientCopy];
  client2 = [(MRDNowPlayingClient *)clientCopy client];
  v16 = [(MRDMediaRemoteClient *)self->_overrideClient pid];
  if (v16 == [client2 processIdentifier])
  {
    [(MRDNowPlayingOriginClient *)self setOverrideClient:0];
  }

  if (self->_explicitNowPlayingClient == clientCopy)
  {
    [(MRDNowPlayingOriginClient *)self setExplicitNowPlayingClient:0];
  }

  if (self->_inferredNowPlayingClient == clientCopy)
  {
    [(MRDNowPlayingOriginClient *)self setInferredNowPlayingClient:0];
  }

  if (self->_computedNowPlayingClient == clientCopy)
  {
    _onQueue_calculateComputedNowPlayingClient = [(MRDNowPlayingOriginClient *)self _onQueue_calculateComputedNowPlayingClient];
    [(MRDNowPlayingOriginClient *)self setComputedNowPlayingClient:_onQueue_calculateComputedNowPlayingClient];
  }

  activity = self->_activity;
  if (activity)
  {
    creatorProcessID = [(MRMutableApplicationActivity *)activity creatorProcessID];
    client3 = [(MRDNowPlayingClient *)clientCopy client];
    processIdentifier = [client3 processIdentifier];

    if (creatorProcessID == processIdentifier)
    {
      [(MRDNowPlayingOriginClient *)self setActivity:0];
    }
  }
}

- (void)updateDefaultSupportedCommandsData:(id)data forClient:(id)client
{
  dataCopy = data;
  clientCopy = client;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC180;
  block[3] = &unk_1004B69D0;
  block[4] = self;
  v12 = dataCopy;
  v13 = clientCopy;
  v9 = clientCopy;
  v10 = dataCopy;
  dispatch_sync(serialQueue, block);
}

- (id)defaultSupportedCommandsDataForClient:(id)client
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350EC;
  v10 = sub_100035A2C;
  v11 = 0;
  clientCopy = client;
  msv_dispatch_sync_on_queue();
  v3 = v7[5];

  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)defaultSupportedCommandsForClient:(id)client
{
  v3 = [(MRDNowPlayingOriginClient *)self defaultSupportedCommandsDataForClient:client];
  v4 = [MRCommandInfo commandInfosFromData:v3];

  return v4;
}

- (NSDictionary)defaultSupportedCommands
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_1000350EC;
  v24 = sub_100035A2C;
  v25 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC644;
  block[3] = &unk_1004B6958;
  block[4] = self;
  block[5] = &v20;
  dispatch_sync(serialQueue, block);
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = v21[5];
  v9 = _NSConcreteStackBlock;
  v10 = 3221225472;
  v11 = sub_1000EC6E0;
  v12 = &unk_1004BC390;
  v5 = v3;
  v13 = v5;
  v14 = &v15;
  [v4 enumerateKeysAndObjectsUsingBlock:&v9];
  if ((v16[3] & 1) == 0)
  {
    v6 = MRMediaRemoteCopyLocalDeviceSystemMediaApplicationDisplayID();
    v7 = MRMediaRemoteCopySystemMediaApplicationDefaultSupportedCommands();
    [v5 setObject:v7 forKeyedSubscript:{v6, v9, v10, v11, v12}];
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v20, 8);

  return v5;
}

- (void)clearDefaultSupportedCommandsData
{
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000EC7DC;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)updateLastPlayingDate:(id)date
{
  dateCopy = date;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC880;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = dateCopy;
  v6 = dateCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)setDevicePlaybackSessionID:(id)d
{
  dCopy = d;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000EC95C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = dCopy;
  v6 = dCopy;
  dispatch_sync(serialQueue, v7);
}

- (void)registerCreateNewApplicationConnectionCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECA00;
  v7[3] = &unk_1004B79F0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)registerApplicationConnectionOutgoingMessageCallback:(id)callback
{
  callbackCopy = callback;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECADC;
  v7[3] = &unk_1004B79F0;
  v7[4] = self;
  v8 = callbackCopy;
  v6 = callbackCopy;
  dispatch_async_and_wait(serialQueue, v7);
}

- (void)setNowPlayingDataSource:(id)source
{
  sourceCopy = source;
  objc_storeStrong(&self->_nowPlayingDataSource, source);
  [(MRDNowPlayingDataSource *)self->_nowPlayingDataSource addObserver:self];
  if (self->_nowPlayingDataSource)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ECBD4;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(serialQueue, block);
  }
}

- (void)nowPlayingDataSourceNowPlayingApplicationDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECC80;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingApplicationPlaybackStateDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECD2C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingApplicationsPlaybackStateDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECDD8;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingSessionsPlaybackStateDidChange:(id)change
{
  changeCopy = change;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ECE84;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = changeCopy;
  v6 = changeCopy;
  dispatch_async(serialQueue, v7);
}

- (void)nowPlayingDataSourceNowPlayingAudioFormatContentInfosDidChange:(id)change
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = objc_loadWeakRetained(&self->_delegate);
    [v6 nowPlayingOriginClientDidChangeAudioFormatContentInfo:self];
  }
}

- (void)_onQueue_reloadInferredStateFromDataSource:(id)source reason:(id)reason
{
  reasonCopy = reason;
  v7 = reasonCopy;
  if (source)
  {
    v20 = reasonCopy;
    _onQueue_calculateInferredNowPlayingClient = [(MRDNowPlayingOriginClient *)self _onQueue_calculateInferredNowPlayingClient];
    [(MRDNowPlayingOriginClient *)self setInferredNowPlayingClient:_onQueue_calculateInferredNowPlayingClient];

    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v9 = self->_nowPlayingClients;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v26;
      do
      {
        v13 = 0;
        do
        {
          if (*v26 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v25 + 1) + 8 * v13);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          playerClients = [v14 playerClients];
          v16 = [playerClients countByEnumeratingWithState:&v21 objects:v29 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v22;
            do
            {
              v19 = 0;
              do
              {
                if (*v22 != v18)
                {
                  objc_enumerationMutation(playerClients);
                }

                [*(*(&v21 + 1) + 8 * v19) setInferredPlaybackState:{-[MRDNowPlayingOriginClient _onQueue_calculateInferredPlaybackStateForPlayer:](self, "_onQueue_calculateInferredPlaybackStateForPlayer:", *(*(&v21 + 1) + 8 * v19))}];
                v19 = v19 + 1;
              }

              while (v17 != v19);
              v17 = [playerClients countByEnumeratingWithState:&v21 objects:v29 count:16];
            }

            while (v17);
          }

          v13 = v13 + 1;
        }

        while (v13 != v11);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v11);
    }

    v7 = v20;
    [(MRDNowPlayingOriginClient *)self _onQueue_reevaluateStateWithReason:v20];
  }
}

- (void)deviceInfoDataSource:(id)source deviceInfoDidChange:(id)change
{
  changeCopy = change;
  origin = [(MRDNowPlayingOriginClient *)self origin];
  isLocal = [origin isLocal];

  if (isLocal)
  {
    [(MRDNowPlayingOriginClient *)self setDeviceInfo:changeCopy];
  }
}

- (void)_handleNowPlayingAppMaybeDidChange:(id)change
{
  changeCopy = change;
  if ([(MRDNowPlayingOriginClient *)self _shouldHandleNotification:changeCopy])
  {
    serialQueue = self->_serialQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000ED238;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = changeCopy;
    dispatch_sync(serialQueue, v6);
  }
}

- (void)_handlePlayerIsPlayingDidChange:(id)change
{
  changeCopy = change;
  if ([(MRDNowPlayingOriginClient *)self _shouldHandleNotification:changeCopy])
  {
    serialQueue = self->_serialQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000ED3C8;
    v6[3] = &unk_1004B68F0;
    v6[4] = self;
    v7 = changeCopy;
    dispatch_sync(serialQueue, v6);
  }
}

- (void)_handleOriginIsPlayingDidChange:(id)change
{
  changeCopy = change;
  userInfo = [changeCopy userInfo];
  v6 = MRGetOriginFromUserInfo();

  if ([v6 isLocal])
  {
    serialQueue = self->_serialQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000ED520;
    v8[3] = &unk_1004B68F0;
    v8[4] = self;
    v9 = changeCopy;
    dispatch_sync(serialQueue, v8);
  }
}

- (void)_handlePlayerPropertiesDidChange:(id)change
{
  if (self->_nowPlayingDataSource)
  {
    changeCopy = change;
    v5 = [NSString alloc];
    name = [changeCopy name];
    userInfo = [changeCopy userInfo];

    v8 = MRGetPlayerPathFromUserInfo();
    v9 = [v5 initWithFormat:@"%@-%@", name, v8];

    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED650;
    block[3] = &unk_1004B68F0;
    block[4] = self;
    v13 = v9;
    v11 = v9;
    dispatch_async(serialQueue, block);
  }
}

- (void)_handlePlayerPictureInPictureEnabledDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isEqual:self->_origin])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED718;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handleActivePlayerDidChange:(id)change
{
  userInfo = [change userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isEqual:self->_origin])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED7E0;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handleNowPlayingApplicationDidUnregisterCanBeNowPlaying:(id)playing
{
  userInfo = [playing userInfo];
  v5 = MRGetOriginFromUserInfo();

  if ([v5 isEqual:self->_origin])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000ED8A8;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (void)_handlePlayerDidRegister:(id)register
{
  registerCopy = register;
  v5 = registerCopy;
  if (self->_nowPlayingDataSource)
  {
    userInfo = [registerCopy userInfo];
    v7 = MRGetOriginFromUserInfo();

    if ([v7 isEqual:self->_origin])
    {
      v8 = [NSString alloc];
      name = [v5 name];
      userInfo2 = [v5 userInfo];
      v11 = MRGetPlayerPathFromUserInfo();
      v12 = [v8 initWithFormat:@"%@-%@", name, v11];

      serialQueue = self->_serialQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000EDA0C;
      block[3] = &unk_1004B68F0;
      block[4] = self;
      v16 = v12;
      v14 = v12;
      dispatch_sync(serialQueue, block);
    }
  }
}

- (BOOL)_shouldHandleNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = MRGetOriginFromUserInfo();

  if ([v6 isEqual:self->_origin])
  {
    userInfo2 = [notificationCopy userInfo];
    v8 = [userInfo2 objectForKeyedSubscript:_MRMediaRemoteIsImplicitNowPlayingNotificationUserInfoKey];
    bOOLValue = [v8 BOOLValue];

    v10 = bOOLValue ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unsigned)_onQueue_calculateInferredPlaybackStateForPlayer:(id)player
{
  playerCopy = player;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = self->_nowPlayingDataSource;
  v6 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v6 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    nowPlayingSessions = [(MRDNowPlayingDataSource *)v5 nowPlayingSessions];
    player = [playerCopy player];
    v10 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [player audioSessionID]);
    v11 = [nowPlayingSessions objectForKeyedSubscript:v10];

    if ([v11 isPlaying])
    {
      v12 = 1;
    }

    else
    {
      v12 = 2;
    }

    goto LABEL_32;
  }

  v13 = +[MRUserSettings currentSettings];
  if ([v13 supportNowPlayingPIP])
  {
    player2 = [playerCopy player];
    mxSessionIDs = [player2 mxSessionIDs];
    v16 = [mxSessionIDs count];

    if (v16)
    {
      v17 = +[NSMutableSet set];
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v35 = v5;
      nowPlayingApplications = [(MRDNowPlayingDataSource *)v5 nowPlayingApplications];
      allValues = [nowPlayingApplications allValues];

      v20 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (!v20)
      {
        goto LABEL_20;
      }

      v21 = v20;
      v22 = *v37;
      while (1)
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*v37 != v22)
          {
            objc_enumerationMutation(allValues);
          }

          v24 = *(*(&v36 + 1) + 8 * i);
          playerPath = [playerCopy playerPath];
          client = [playerPath client];
          processIdentifier = [client processIdentifier];
          if (processIdentifier == [v24 pid])
          {
            mxSessionIDs2 = [v24 mxSessionIDs];

            if (!mxSessionIDs2)
            {
              continue;
            }

            playerPath = [v24 mxSessionIDs];
            [v17 unionSet:playerPath];
          }

          else
          {
          }
        }

        v21 = [allValues countByEnumeratingWithState:&v36 objects:v40 count:16];
        if (!v21)
        {
LABEL_20:

          v5 = v35;
          if ([(MRDNowPlayingDataSource *)v35 nowPlayingApplicationIsInterrupted])
          {
            v29 = 4;
          }

          else
          {
            v29 = 1;
          }

          player3 = [playerCopy player];
          mxSessionIDs3 = [player3 mxSessionIDs];
          if ([v17 intersectsSet:mxSessionIDs3])
          {
            v12 = v29;
          }

          else
          {
            v12 = 2;
          }

          goto LABEL_32;
        }
      }
    }
  }

  else
  {
  }

  inferredNowPlayingClient = [(MRDNowPlayingOriginClient *)self inferredNowPlayingClient];
  activePlayerClient = [inferredNowPlayingClient activePlayerClient];
  if (activePlayerClient == playerCopy)
  {
    v12 = [(MRDNowPlayingOriginClient *)self _stateFromDataSource:v5];
  }

  else
  {
    v12 = 2;
  }

LABEL_32:
  return v12;
}

- (void)_onQueue_reevaluateStateWithReason:(id)reason
{
  reasonCopy = reason;
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_1003A8774(reasonCopy, v5, v6, v7, v8, v9, v10, v11);
  }

  dispatch_assert_queue_V2(self->_serialQueue);
  v12 = [(MRDNowPlayingOriginClient *)self _playerPathForNowPlayingClient:self->_activeNowPlayingClient];
  _onQueue_calculateActiveNowPlayingClient = [(MRDNowPlayingOriginClient *)self _onQueue_calculateActiveNowPlayingClient];
  v14 = [(MRDNowPlayingOriginClient *)self _playerPathForNowPlayingClient:_onQueue_calculateActiveNowPlayingClient];
  if (_onQueue_calculateActiveNowPlayingClient == self->_activeNowPlayingClient)
  {
    goto LABEL_21;
  }

  v15 = _MRLogForCategory();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v55 = v12;
    v56 = 2114;
    v57 = v14;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] ActiveNowPlayingClient changed from %{public}@ to %{public}@", buf, 0x16u);
  }

  objc_storeStrong(&self->_activeNowPlayingClient, _onQueue_calculateActiveNowPlayingClient);
  if (!self->_activeNowPlayingClient)
  {
    v27 = _MRLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A8850(self, v27, v28, v29, v30, v31, v32, v33);
    }

    activeNowPlayingClientTransaction = self->_activeNowPlayingClientTransaction;
    self->_activeNowPlayingClientTransaction = 0;
    goto LABEL_14;
  }

  if (!self->_activeNowPlayingClientTransaction)
  {
    v16 = _MRLogForCategory();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_1003A87E0(self, v16, v17, v18, v19, v20, v21, v22);
    }

    v23 = [(MRPlayerPath *)self->_playerPath description];
    activeNowPlayingClientTransaction = [NSString stringWithFormat:@"com.apple.mediaremoted.MRDNowPlayingOriginClient/%@", v23];

    v25 = [[MROSTransaction alloc] initWithName:activeNowPlayingClientTransaction];
    v26 = self->_activeNowPlayingClientTransaction;
    self->_activeNowPlayingClientTransaction = v25;

    MRRegisterTransaction();
LABEL_14:
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v35 = [v14 copy];
  activePlayerClient = [(MRDNowPlayingClient *)self->_activeNowPlayingClient activePlayerClient];
  [WeakRetained nowPlayingOriginClient:self activePlayerPathDidChange:v35 withPlaybackState:{objc_msgSend(activePlayerClient, "playbackState")}];

  if (!self->_activity)
  {
    goto LABEL_21;
  }

  client = [v12 client];
  processIdentifier = [client processIdentifier];
  creatorProcessID = [(MRMutableApplicationActivity *)self->_activity creatorProcessID];

  if (processIdentifier == creatorProcessID)
  {
    v40 = 4;
  }

  else
  {
    client2 = [(MRDNowPlayingClient *)self->_activeNowPlayingClient client];
    processIdentifier2 = [client2 processIdentifier];
    creatorProcessID2 = [(MRMutableApplicationActivity *)self->_activity creatorProcessID];

    if (processIdentifier2 != creatorProcessID2)
    {
      goto LABEL_21;
    }

    v40 = 2;
  }

  [(MRDNowPlayingOriginClient *)self _onQueue_updateActivityStatus:v40];
LABEL_21:
  _onQueue_calculateActiveNowPlayingPlayerClients = [(MRDNowPlayingOriginClient *)self _onQueue_calculateActiveNowPlayingPlayerClients];
  v45 = [NSSet setWithArray:self->_activePlayerClients];
  v46 = [v45 isEqualToSet:_onQueue_calculateActiveNowPlayingPlayerClients];

  if ((v46 & 1) == 0)
  {
    v47 = _MRLogForCategory();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      v48 = [(NSArray *)self->_activePlayerClients mr_map:&stru_1004BC3D0];
      allObjects = [_onQueue_calculateActiveNowPlayingPlayerClients allObjects];
      v50 = [allObjects mr_map:&stru_1004BC3F0];
      *buf = 138543618;
      v55 = v48;
      v56 = 2114;
      v57 = v50;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] ActiveNowPlayingPlayersClients changed from %{public}@ to %{public}@", buf, 0x16u);
    }

    allObjects2 = [_onQueue_calculateActiveNowPlayingPlayerClients allObjects];
    activePlayerClients = self->_activePlayerClients;
    self->_activePlayerClients = allObjects2;

    v53 = objc_loadWeakRetained(&self->_delegate);
    [v53 nowPlayingOriginClient:self activePlayerClientsDidChange:self->_activePlayerClients];
  }
}

- (void)_onQueue_updateActivityStatus:(int)status
{
  v3 = *&status;
  dispatch_assert_queue_V2(self->_serialQueue);
  activity = self->_activity;
  if (activity && [(MRMutableApplicationActivity *)activity status]!= v3)
  {
    [(MRMutableApplicationActivity *)self->_activity setStatus:v3];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v6 = [(MRMutableApplicationActivity *)self->_activity copy];
    [WeakRetained nowPlayingOriginClient:self applicationActivityStatusDidChange:v6];
  }
}

- (id)_onQueue_addNowPlayingClient:(id)client
{
  clientCopy = client;
  dispatch_assert_queue_V2(self->_serialQueue);
  v5 = _MRLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = clientCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[MRDNowPlayingOriginClient] Creating nowPlayingClient for %{public}@", buf, 0xCu);
  }

  v6 = [[MRDNowPlayingClient alloc] initWithPlayerPath:clientCopy];
  v7 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v7 nowPlayingServer];
  [(MRDNowPlayingClient *)v6 setDelegate:nowPlayingServer];

  nowPlayingClients = self->_nowPlayingClients;
  if (!nowPlayingClients)
  {
    v10 = objc_alloc_init(NSMutableArray);
    v11 = self->_nowPlayingClients;
    self->_nowPlayingClients = v10;

    nowPlayingClients = self->_nowPlayingClients;
  }

  [(NSMutableArray *)nowPlayingClients addObject:v6];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained nowPlayingOriginClient:self clientDidRegister:v6];

  [(MRDNowPlayingClient *)v6 initializeDisplayName];
  player = [clientCopy player];
  v14 = [(MRDNowPlayingClient *)v6 playerClientForPlayer:player];

  nowPlayingDataSource = self->_nowPlayingDataSource;
  v16 = [NSString alloc];
  playerPath = [v14 playerPath];
  v18 = [v16 initWithFormat:@"addNowPlayingClient-%@", playerPath];
  [(MRDNowPlayingOriginClient *)self _onQueue_reloadInferredStateFromDataSource:nowPlayingDataSource reason:v18];

  return v6;
}

- (void)_onQueue_maybeSetupPlaybackTimeoutTimerForNotification:(id)notification
{
  notificationCopy = notification;
  dispatch_assert_queue_V2(self->_serialQueue);
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000EE770;
  v25[3] = &unk_1004B9FE8;
  v25[4] = self;
  if (sub_1000EE770(v25))
  {
    activePlayerClient = [(MRDNowPlayingClient *)self->_activeNowPlayingClient activePlayerClient];
    if ([activePlayerClient isPlaying])
    {
      playbackTimer = self->_playbackTimer;
      v7 = [NSString alloc];
      playerPath = [activePlayerClient playerPath];
      name = [notificationCopy name];
      v10 = [v7 initWithFormat:@"%@ is playing for notification <%@>", playerPath, name];
      [(MRPersistentTimer *)playbackTimer invalidateWithReason:v10];
    }

    else
    {
      [(MRDNowPlayingOriginClient *)self timeSincePlaying];
      v12 = v11;
      v13 = +[MRUserSettings currentSettings];
      [v13 mediaRecentlyPlayedInterval];
      v15 = v14 + 5.0;

      if (v12 < v15)
      {
        v16 = [MRPersistentTimer alloc];
        serialQueue = self->_serialQueue;
        v23[0] = _NSConcreteStackBlock;
        v23[1] = 3221225472;
        v23[2] = sub_1000EE808;
        v23[3] = &unk_1004B68F0;
        v23[4] = self;
        v24 = notificationCopy;
        v18 = [v16 initWithInterval:@"com.apple.mediaremote.originclient.playbacktimer" name:serialQueue queue:v23 block:v15 - v12];
        v19 = self->_playbackTimer;
        self->_playbackTimer = v18;

LABEL_8:
        goto LABEL_9;
      }

      v20 = self->_playbackTimer;
      v21 = [NSString alloc];
      playerPath = [activePlayerClient playerPath];
      v22 = [v21 initWithFormat:@"%@ was not playing recently", playerPath];
      [(MRPersistentTimer *)v20 invalidateWithReason:v22];
    }

    goto LABEL_8;
  }

LABEL_9:
}

- (void)_onQueue_maybeSavePlaybackStateForNotification:(id)notification
{
  dispatch_assert_queue_V2(self->_serialQueue);
  activePlayerClient = [(MRDNowPlayingClient *)self->_activeNowPlayingClient activePlayerClient];
  playbackState = [activePlayerClient playbackState];
  v6 = +[MRDSettings currentSettings];
  localPlaybackState = [v6 localPlaybackState];

  v8 = self->_lastPlayingDate;
  if (localPlaybackState != playbackState)
  {
    if (qword_1005293E0 != -1)
    {
      sub_1003A88C0();
    }

    v9 = qword_1005293D8;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000EEA90;
    v10[3] = &unk_1004B7650;
    v12 = playbackState;
    v13 = localPlaybackState;
    v11 = v8;
    dispatch_async(v9, v10);
  }
}

- (void)_registerCallbacks
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = kMRMediaRemotePlayerIsPlayingDidChangeNotification;
  [v3 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemotePlayerIsPlayingDidChangeNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingApplicationDidRegisterCanBeNowPlaying object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingApplicationDidUnregisterCanBeNowPlaying object:0];

  v7 = +[NSNotificationCenter defaultCenter];
  v8 = kMRMediaRemoteNowPlayingPlayerDidRegister;
  [v7 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingPlayerDidRegister object:0];

  v9 = +[NSNotificationCenter defaultCenter];
  v10 = kMRMediaRemoteNowPlayingPlayerDidUnregister;
  [v9 addObserver:self selector:"_handleNowPlayingAppMaybeDidChange:" name:kMRMediaRemoteNowPlayingPlayerDidUnregister object:0];

  v11 = +[NSNotificationCenter defaultCenter];
  [v11 addObserver:self selector:"_handlePlayerIsPlayingDidChange:" name:v4 object:0];

  v12 = +[NSNotificationCenter defaultCenter];
  [v12 addObserver:self selector:"_handleOriginIsPlayingDidChange:" name:kMRMediaRemoteOriginNowPlayingApplicationIsPlayingDidChangeNotification object:0];

  v13 = +[NSNotificationCenter defaultCenter];
  [v13 addObserver:self selector:"_handlePlayerPropertiesDidChange:" name:kMRMediaRemotePlayerStateDidChange object:0];

  v14 = +[NSNotificationCenter defaultCenter];
  [v14 addObserver:self selector:"_handlePlayerPictureInPictureEnabledDidChange:" name:kMRMediaRemotePlayerPictureInPictureDidChange object:0];

  v15 = +[NSNotificationCenter defaultCenter];
  [v15 addObserver:self selector:"_handleActivePlayerDidChange:" name:kMRMediaRemoteActivePlayerDidChange object:0];

  v16 = +[NSNotificationCenter defaultCenter];
  [v16 addObserver:self selector:"_handleNowPlayingApplicationDidUnregisterCanBeNowPlaying:" name:v10 object:0];

  v17 = +[NSNotificationCenter defaultCenter];
  [v17 addObserver:self selector:"_handlePlayerDidRegister:" name:v8 object:0];

  if ([(MROrigin *)self->_origin isLocal])
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000EEE38;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_sync(serialQueue, block);
  }
}

- (unsigned)_stateFromDataSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy nowPlayingApplicationIsPlaying])
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  nowPlayingApplicationIsInterrupted = [sourceCopy nowPlayingApplicationIsInterrupted];

  if (nowPlayingApplicationIsInterrupted)
  {
    return 4;
  }

  else
  {
    return v4;
  }
}

- (id)_playerPathForNowPlayingClient:(id)client
{
  clientCopy = client;
  activePlayerClient = [clientCopy activePlayerClient];
  playerPath = [activePlayerClient playerPath];

  if (!playerPath)
  {
    playerPath2 = [clientCopy playerPath];
    if (!playerPath2)
    {
      playerPath2 = [(MRPlayerPath *)self->_playerPath copy];
    }

    playerPath = playerPath2;
  }

  return playerPath;
}

- (MRDNowPlayingOriginClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end