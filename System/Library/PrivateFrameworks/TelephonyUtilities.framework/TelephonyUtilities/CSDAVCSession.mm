@interface CSDAVCSession
+ (AVCSessionConfiguration)defaultConfiguration;
+ (TUCallScreenShareAttributes)defaultScreenShareAttributes;
+ (id)avcScreenCaptureConfigurationForScreenAttributes:(id)attributes;
+ (unsigned)avcSessionVideoQualityFrom:(unint64_t)from;
- (BOOL)containsRemoteParticipantWithIdentifier:(unint64_t)identifier;
- (BOOL)isAudioEnabled;
- (BOOL)isAudioPaused;
- (BOOL)isAudioReady;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isRemoteScreenEnabledForParticipant:(id)participant;
- (BOOL)isScreenEnabled;
- (BOOL)isUplinkMuted;
- (BOOL)isVideoEnabled;
- (BOOL)isVideoPaused;
- (BOOL)shouldDisableOneToOneModeForScreenShare;
- (BOOL)shouldIgnoreBenignErrorOnStart:(id)start;
- (CGRect)presentationRect;
- (CSDAVCSession)initWithSessionCreationBlock:(id)block transportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken avMode:(unint64_t)mode videoEnabled:(BOOL)enabled isNearbyConversation:(BOOL)self0 captureSessionCreationBlock:(id)self1;
- (CSDAVCSession)initWithTransportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken oneToOneModeEnabled:(BOOL)enabled avMode:(unint64_t)mode videoEnabled:(BOOL)videoEnabled report:(id)self0 serviceName:(id)self1 ABTestConfiguration:(id)self2 sessionMode:(int64_t)self3 isNearbyConversation:(BOOL)self4;
- (CSDAVCSessionDelegate)delegate;
- (NSData)localParticipantData;
- (NSString)sessionIdentifier;
- (TUFeatureFlags)featureFlags;
- (id)clientBundleIDForAVCSession;
- (id)localParticipantDataWithVersion:(unint64_t)version;
- (id)pendingRemovedRemoteParticipantByIdentififer:(unint64_t)identififer;
- (int)presentationState;
- (int64_t)localCaptionsToken;
- (int64_t)maxVideoDecodesAllowed;
- (int64_t)sessionToken;
- (void)_disableRemoteControlForAllParticipants;
- (void)_updateConfigurationRemoteControlEnabled:(BOOL)enabled;
- (void)addParticipant:(id)participant withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled;
- (void)beginParticipantUpdates;
- (void)commitParticipantUpdates;
- (void)disableRemoteControl;
- (void)enableRemoteControlWithCursorCapture:(BOOL)capture;
- (void)handleUpdatedControllingRemoteScreen:(BOOL)screen;
- (void)participant:(id)participant didReact:(id)react;
- (void)participant:(id)participant mediaPrioritiesDidChange:(id)change;
- (void)participant:(id)participant mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType;
- (void)participant:(id)participant mixingDidStopForMediaType:(unsigned int)type;
- (void)participant:(id)participant remoteAudioEnabledDidChange:(BOOL)change;
- (void)participant:(id)participant remoteAudioPausedDidChange:(BOOL)change;
- (void)participant:(id)participant remoteMediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type;
- (void)participant:(id)participant remoteScreenEnabledDidChange:(BOOL)change;
- (void)participant:(id)participant remoteVideoEnabledDidChange:(BOOL)change;
- (void)participant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)queueAddParticipantRetryBlock:(id)block withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled;
- (void)removeParticipant:(id)participant;
- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error;
- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error;
- (void)screenCapture:(id)capture didUpdateAttributes:(id)attributes error:(id)error;
- (void)session:(id)session addParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session audioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session audioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session didDetectError:(id)error;
- (void)session:(id)session didReact:(id)react;
- (void)session:(id)session didStart:(BOOL)start error:(id)error;
- (void)session:(id)session didStopWithError:(id)error;
- (void)session:(id)session didStopWithError:(id)error metadata:(id)metadata;
- (void)session:(id)session didUpdate:(BOOL)update configuration:(id)configuration error:(id)error;
- (void)session:(id)session mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType;
- (void)session:(id)session mixingDidStopForMediaType:(unsigned int)type;
- (void)session:(id)session oneToOneEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session removeParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session videoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session videoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error;
- (void)sessionDidStopReacting:(id)reacting;
- (void)sessionServerDidDisconnect:(id)disconnect;
- (void)sessionShouldReconnect:(id)reconnect;
- (void)setAudioAndVideoMuted:(BOOL)muted forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setAudioEnabled:(BOOL)enabled;
- (void)setAudioEnabled:(BOOL)enabled forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setAudioPaused:(BOOL)paused;
- (void)setAudioPaused:(BOOL)paused forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setAudioReady:(BOOL)ready;
- (void)setDownlinkMuted:(BOOL)muted forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setGridDisplayMode:(unint64_t)mode;
- (void)setLocalParticipantCluster:(id)cluster;
- (void)setOneToOneModeEnabled:(BOOL)enabled;
- (void)setOneToOneModeEnabled:(BOOL)enabled withCompletionBlock:(id)block;
- (void)setParticipantCluster:(id)cluster forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setPlaybackSynchronizationGroupMember:(BOOL)member forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setPresentationRect:(CGRect)rect;
- (void)setPresentationState:(int)state;
- (void)setRelaying:(BOOL)relaying;
- (void)setScreenEnabled:(BOOL)enabled;
- (void)setScreenEnabled:(BOOL)enabled attributes:(id)attributes;
- (void)setScreenEnabled:(BOOL)enabled forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setScreening:(BOOL)screening;
- (void)setUplinkMuted:(BOOL)muted;
- (void)setVideo:(BOOL)video;
- (void)setVideoEnabled:(BOOL)enabled;
- (void)setVideoPaused:(BOOL)paused;
- (void)setVideoQuality:(unint64_t)quality forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setVideoQuality:(unint64_t)quality visibility:(id)visibility prominence:(id)prominence spatialPosition:(CGRect)position isInCanvas:(BOOL)canvas forParticipantWithIdentifier:(unint64_t)identifier;
- (void)start;
- (void)startAVCScreenCaptureWithAttributes:(id)attributes preferImmediateActivation:(BOOL)activation screenControlEnabled:(BOOL)enabled capturesCursor:(BOOL)cursor;
- (void)stopCapture;
- (void)stopWithError:(id)error;
- (void)updateConfigurationSessionMode:(int64_t)mode;
@end

@implementation CSDAVCSession

- (CSDAVCSession)initWithSessionCreationBlock:(id)block transportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken avMode:(unint64_t)mode videoEnabled:(BOOL)enabled isNearbyConversation:(BOOL)self0 captureSessionCreationBlock:(id)self1
{
  blockCopy = block;
  tokenCopy = token;
  delegateCopy = delegate;
  queueCopy = queue;
  hierarchyTokenCopy = hierarchyToken;
  creationBlockCopy = creationBlock;
  v48.receiver = self;
  v48.super_class = CSDAVCSession;
  v22 = [(CSDAVCSession *)&v48 init];
  if (v22)
  {
    v23 = blockCopy[2](blockCopy, tokenCopy, hierarchyTokenCopy, queueCopy);
    if (v23)
    {
      objc_storeStrong(&v22->_queue, queue);
      objc_storeStrong(&v22->_session, v23);
      objc_storeWeak(&v22->_delegate, delegateCopy);
      v22->_hasCalledStop = 0;
      v24 = +[NSMutableDictionary dictionary];
      remoteParticipantsByIdentifier = v22->_remoteParticipantsByIdentifier;
      v22->_remoteParticipantsByIdentifier = v24;

      v26 = +[NSMutableDictionary dictionary];
      pendingRemovedParticipantsByID = v22->_pendingRemovedParticipantsByID;
      v22->_pendingRemovedParticipantsByID = v26;

      v22->_video = mode == 2;
      v28 = objc_alloc_init(NSMutableArray);
      sessionUpdateCompletionQueue = v22->_sessionUpdateCompletionQueue;
      v22->_sessionUpdateCompletionQueue = v28;

      v30 = [[NSMutableArray alloc] initWithCapacity:1];
      captureSessionQueue = v22->_captureSessionQueue;
      v22->_captureSessionQueue = v30;

      v32 = objc_retainBlock(creationBlockCopy);
      captureSessionCreationBlock = v22->_captureSessionCreationBlock;
      v22->_captureSessionCreationBlock = v32;

      v22->_captureCapabilities = +[AVCScreenCapture captureCapabilities];
      mostRecentScreenShareAttributes = v22->_mostRecentScreenShareAttributes;
      v22->_mostRecentScreenShareAttributes = 0;

      isVideo = 0;
      if (enabled)
      {
        isVideo = [(CSDAVCSession *)v22 isVideo];
      }

      [v23 setVideoEnabled:isVideo];
      objc_initWeak(&location, v22);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10020EECC;
      v45[3] = &unk_10061EB38;
      objc_copyWeak(&v46, &location);
      v36 = objc_retainBlock(v45);
      avcSessionParticipantCreationBlock = v22->_avcSessionParticipantCreationBlock;
      v22->_avcSessionParticipantCreationBlock = v36;

      v38 = +[TUConversationManager allowsVideo];
      if (mode == 2)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      if ((v39 & 1) == 0)
      {
        v40 = sub_100004778(v38);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Updating session to videoEnabled=NO after creation since current device or call does not support video", buf, 2u);
        }

        [v23 setVideoEnabled:0];
        if (!mode)
        {
          [v23 setAudioEnabled:0];
        }
      }

      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
    }

    else
    {
      v41 = sub_100004778(0);
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10047C694();
      }

      v22 = 0;
    }
  }

  return v22;
}

- (CSDAVCSession)initWithTransportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken oneToOneModeEnabled:(BOOL)enabled avMode:(unint64_t)mode videoEnabled:(BOOL)videoEnabled report:(id)self0 serviceName:(id)self1 ABTestConfiguration:(id)self2 sessionMode:(int64_t)self3 isNearbyConversation:(BOOL)self4
{
  tokenCopy = token;
  delegateCopy = delegate;
  queueCopy = queue;
  hierarchyTokenCopy = hierarchyToken;
  reportCopy = report;
  nameCopy = name;
  configurationCopy = configuration;
  objc_initWeak(location, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10020F1BC;
  v36[3] = &unk_10061EB60;
  selfCopy = self;
  v37 = selfCopy;
  enabledCopy = enabled;
  v27 = reportCopy;
  v38 = v27;
  v28 = nameCopy;
  v39 = v28;
  sessionModeCopy = sessionMode;
  v29 = configurationCopy;
  v40 = v29;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10020F4C8;
  v34[3] = &unk_10061EB88;
  objc_copyWeak(&v35, location);
  BYTE1(v32) = conversation;
  LOBYTE(v32) = videoEnabled;
  v30 = [(CSDAVCSession *)selfCopy initWithSessionCreationBlock:v36 transportToken:tokenCopy delegate:delegateCopy queue:queueCopy reportingHierarchyToken:hierarchyTokenCopy avMode:mode videoEnabled:v32 isNearbyConversation:v34 captureSessionCreationBlock:?];
  objc_destroyWeak(&v35);

  objc_destroyWeak(location);
  return v30;
}

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

+ (AVCSessionConfiguration)defaultConfiguration
{
  v3 = objc_alloc_init(AVCSessionConfiguration);
  [v3 setSessionMode:{objc_msgSend(self, "defaultSessionMode")}];

  return v3;
}

- (NSData)localParticipantData
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(CSDAVCSession *)self localParticipantDataWithVersion:1];
}

- (id)localParticipantDataWithVersion:(unint64_t)version
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  v7 = [session negotiationDataForProtocolVersion:version == 2];

  return v7;
}

- (BOOL)containsRemoteParticipantWithIdentifier:(unint64_t)identifier
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v7];
  LOBYTE(queue) = v8 != 0;

  return queue;
}

- (int64_t)sessionToken
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  sessionToken = [session sessionToken];

  return sessionToken;
}

- (NSString)sessionIdentifier
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  uuid = [session uuid];

  return uuid;
}

- (int64_t)maxVideoDecodesAllowed
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  return 0;
}

+ (TUCallScreenShareAttributes)defaultScreenShareAttributes
{
  v2 = objc_alloc_init(TUCallScreenShareAttributes);
  v3 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  [v2 setDisplayID:v3];

  v4 = [NSValue valueWithRect:0.0, 0.0, -1.0, -1.0];
  [v2 setOriginalResolution:v4];

  v5 = [NSNumber numberWithDouble:60.0];
  [v2 setFrameRate:v5];

  [v2 setDeviceFamily:{+[TUCallScreenShareAttributes currentDeviceFamily](TUCallScreenShareAttributes, "currentDeviceFamily")}];

  return v2;
}

- (BOOL)isAudioReady
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_audioReady;
}

- (void)setAudioReady:(BOOL)ready
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_audioReady = ready;
}

- (BOOL)isUplinkMuted
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isAudioMuted];

  return queue;
}

- (void)setUplinkMuted:(BOOL)muted
{
  mutedCopy = muted;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = mutedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "uplinkMuted: %d", v9, 8u);
  }

  session = [(CSDAVCSession *)self session];
  [session setAudioMuted:mutedCopy];
}

- (BOOL)isAudioEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isAudioEnabled];

  return queue;
}

- (void)setAudioEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = enabledCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "audioEnabled: %d", v9, 8u);
  }

  session = [(CSDAVCSession *)self session];
  [session setMediaState:enabledCopy forMediaType:0];
}

- (BOOL)isVideoEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isVideoEnabled];

  return queue;
}

- (BOOL)isScreenEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isScreenEnabled];

  return queue;
}

- (void)setVideo:(BOOL)video
{
  videoCopy = video;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = videoCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setVideo: %d", v10, 8u);
  }

  if (videoCopy)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v10[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Switching to video is currently not supported", v10, 2u);
    }
  }

  else
  {
    self->_video = videoCopy;
  }
}

- (void)setVideoEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (!enabledCopy || (v6 = +[TUConversationManager allowsVideo], v6))
  {
    v7 = sub_100004778(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12[0] = 67109120;
      v12[1] = enabledCopy;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "videoEnabled: %d", v12, 8u);
    }

    session = [(CSDAVCSession *)self session];
    [session setVideoEnabled:enabledCopy];

    if ([(CSDAVCSession *)self captureCapabilities]== 1)
    {
      isScreenEnabled = [(CSDAVCSession *)self isScreenEnabled];
      if (isScreenEnabled)
      {
        if (enabledCopy)
        {
          v10 = sub_100004778(isScreenEnabled);
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v12[0]) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device does not support screen sharing with camera on, also updating screenEnabled", v12, 2u);
          }

          session2 = [(CSDAVCSession *)self session];
          [session2 setScreenEnabled:0];
        }
      }
    }
  }
}

- (void)setScreenEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  defaultScreenShareAttributes = [objc_opt_class() defaultScreenShareAttributes];
  [(CSDAVCSession *)self setScreenEnabled:enabledCopy attributes:defaultScreenShareAttributes];
}

- (BOOL)isVideoPaused
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isVideoPaused];

  return queue;
}

- (void)setVideoPaused:(BOOL)paused
{
  pausedCopy = paused;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = pausedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "videoPaused: %d", v9, 8u);
  }

  session = [(CSDAVCSession *)self session];
  [session setVideoPaused:pausedCopy];
}

- (BOOL)isAudioPaused
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isAudioPaused];

  return queue;
}

- (void)setAudioPaused:(BOOL)paused
{
  pausedCopy = paused;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = pausedCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "audioPaused: %d", v9, 8u);
  }

  session = [(CSDAVCSession *)self session];
  [session setAudioPaused:pausedCopy];
}

- (BOOL)isOneToOneModeEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isOneToOneEnabled];

  return queue;
}

- (void)setOneToOneModeEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  isOneToOneEnabled = [session isOneToOneEnabled];

  if (isOneToOneEnabled != enabledCopy)
  {

    [(CSDAVCSession *)self setOneToOneModeEnabled:enabledCopy withCompletionBlock:0];
  }
}

- (void)enableRemoteControlWithCursorCapture:(BOOL)capture
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self _updateConfigurationRemoteControlEnabled:1];
}

- (void)handleUpdatedControllingRemoteScreen:(BOOL)screen
{
  screenCopy = screen;
  [(CSDAVCSession *)self _disableRemoteControlForAllParticipants];
  if (screenCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    allValues = [remoteParticipantsByIdentifier allValues];

    v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([v11 isScreenEnabled])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v12 = v11;

      if (!v12)
      {
        return;
      }

      [v12 setScreenControlEnabled:1];
      allValues = v12;
    }

LABEL_13:
  }
}

- (void)disableRemoteControl
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling remote control on AVCSession and participants", v6, 2u);
  }

  [(CSDAVCSession *)self _updateConfigurationRemoteControlEnabled:0];
  [(CSDAVCSession *)self _disableRemoteControlForAllParticipants];
}

- (void)_disableRemoteControlForAllParticipants
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Disabling remote control for all participants", buf, 2u);
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  allValues = [remoteParticipantsByIdentifier allValues];

  v8 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v12 + 1) + 8 * v11) setScreenControlEnabled:0];
        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [allValues countByEnumeratingWithState:&v12 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_updateConfigurationRemoteControlEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  configuration = [session configuration];

  [configuration setRemoteScreenControlEnabled:enabledCopy];
  session2 = [(CSDAVCSession *)self session];
  [session2 updateConfiguration:configuration];
}

- (int)presentationState
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  v5 = session;
  if (session)
  {
    objc_msgSend_presentationInfo(session);
    v6 = v8;

    if (v6 == 2)
    {
      return 2;
    }

    else
    {
      return v6 == 1;
    }
  }

  else
  {

    return 0;
  }
}

- (void)setPresentationState:(int)state
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v13 = 0u;
  v14 = 0u;
  if (state == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = state == 1;
  }

  v12 = 0uLL;
  session = [(CSDAVCSession *)self session];
  v8 = session;
  if (session)
  {
    objc_msgSend_presentationInfo(session);
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
    v12 = 0u;
  }

  BYTE8(v14) = v6;
  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "presentationState: %d", buf, 8u);
  }

  session2 = [(CSDAVCSession *)self session];
  *buf = v12;
  v16 = v13;
  v17 = v14;
  [session2 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

- (CGRect)presentationRect
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  v5 = session;
  if (session)
  {
    objc_msgSend_presentationInfo(session);
    v6 = v15;
    v7 = v14;
    v8 = v17;
    v9 = v16;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v10 = v7;
  v11 = v6;
  v12 = v9;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setPresentationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v16 = 0u;
  session = [(CSDAVCSession *)self session];
  v10 = session;
  if (session)
  {
    objc_msgSend_presentationInfo(session);
  }

  else
  {
    v16 = 0u;
  }

  *&v14 = x;
  *(&v14 + 1) = y;
  *&v15 = width;
  *(&v15 + 1) = height;
  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = x;
    *&buf[12] = 2048;
    *&buf[14] = y;
    *&buf[22] = 2048;
    *&buf[24] = width;
    LOWORD(v18) = 2048;
    *(&v18 + 2) = height;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "presentationRect: (%f, %f, %f, %f)", buf, 0x2Au);
  }

  session2 = [(CSDAVCSession *)self session];
  *buf = v14;
  *&buf[16] = v15;
  v18 = v16;
  [session2 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

- (void)setGridDisplayMode:(unint64_t)mode
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v12 = 0u;
  v13 = 0u;
  v11 = 0u;
  session = [(CSDAVCSession *)self session];
  v7 = session;
  if (session)
  {
    objc_msgSend_presentationInfo(session);
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  v8 = [(CSDAVCSession *)self presentationLayoutForGridDisplayMode:mode];
  DWORD1(v13) = v8;
  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = DWORD1(v13);
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setting presentationLayout: (%u)", buf, 8u);
  }

  session2 = [(CSDAVCSession *)self session];
  *buf = v11;
  v15 = v12;
  v16 = v13;
  [session2 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

+ (id)avcScreenCaptureConfigurationForScreenAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_alloc_init(AVCScreenCaptureConfiguration);
  [v4 setIsWindowed:{objc_msgSend(attributesCopy, "isWindowed")}];
  windowUUID = [attributesCopy windowUUID];
  uUIDString = [windowUUID UUIDString];
  [v4 setSelectiveScreenUUID:uUIDString];

  displayID = [attributesCopy displayID];
  if (displayID)
  {
    displayID2 = [attributesCopy displayID];
  }

  else
  {
    defaultScreenShareAttributes = [objc_opt_class() defaultScreenShareAttributes];
    displayID2 = [defaultScreenShareAttributes displayID];
  }

  [v4 setScreenCaptureDisplayID:{objc_msgSend(displayID2, "unsignedIntValue")}];

  return v4;
}

- (void)setScreenEnabled:(BOOL)enabled attributes:(id)attributes
{
  enabledCopy = enabled;
  attributesCopy = attributes;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = TUSharePlayForceDisabled();
  v9 = v8;
  v10 = sub_100004778(v8);
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "screenEnabled is not supported - returning", buf, 2u);
    }

    goto LABEL_32;
  }

  if (v11)
  {
    *buf = 67109378;
    LODWORD(v35[0]) = enabledCopy;
    WORD2(v35[0]) = 2112;
    *(v35 + 6) = attributesCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "setScreenEnabled:%d screenShareAttributes: %@", buf, 0x12u);
  }

  if (!enabledCopy)
  {
    [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:0];
    session = [(CSDAVCSession *)self session];
    [session setScreenEnabled:0];

    avcScreenCapture = [(CSDAVCSession *)self avcScreenCapture];

    if (avcScreenCapture)
    {
      [(CSDAVCSession *)self stopCapture];
    }

    else
    {
      delegate = [(CSDAVCSession *)self delegate];
      [delegate session:self changedScreenEnabled:0 didSucceed:1 error:0];
    }

    captureSessionQueue = [(CSDAVCSession *)self captureSessionQueue];
    [captureSessionQueue removeAllObjects];

    goto LABEL_32;
  }

  [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:attributesCopy];
  captureCapabilities = [(CSDAVCSession *)self captureCapabilities];
  if (captureCapabilities == 1)
  {
    isVideoEnabled = [(CSDAVCSession *)self isVideoEnabled];
    if (isVideoEnabled)
    {
      v19 = sub_100004778(isVideoEnabled);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Device does not support screen sharing with camera on, also updating videoEnabled", buf, 2u);
      }

      session2 = [(CSDAVCSession *)self session];
      [session2 setVideoEnabled:0];
    }
  }

  else if (!captureCapabilities)
  {
    v13 = sub_100004778(captureCapabilities);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Device does not support screen sharing, ignoring to set screenEnabled", buf, 2u);
    }

    goto LABEL_32;
  }

  objc_initWeak(&location, self);
  v26 = _NSConcreteStackBlock;
  v27 = 3221225472;
  v28 = sub_1002111CC;
  v29 = &unk_10061EBB0;
  objc_copyWeak(&v31, &location);
  v32 = enabledCopy;
  v30 = attributesCopy;
  v21 = objc_retainBlock(&v26);
  shouldDisableOneToOneModeForScreenShare = [(CSDAVCSession *)self isOneToOneModeEnabled:v26];
  if (shouldDisableOneToOneModeForScreenShare)
  {
    shouldDisableOneToOneModeForScreenShare = [(CSDAVCSession *)self shouldDisableOneToOneModeForScreenShare];
    v23 = shouldDisableOneToOneModeForScreenShare;
  }

  else
  {
    v23 = 0;
  }

  v24 = sub_100004778(shouldDisableOneToOneModeForScreenShare);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = @"NO";
    if (v23)
    {
      v25 = @"YES";
    }

    *buf = 138412290;
    v35[0] = v25;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Determined shouldSwitchToGFTMode: %@", buf, 0xCu);
  }

  if (v23)
  {
    [(CSDAVCSession *)self setOneToOneModeEnabled:0 withCompletionBlock:v21];
  }

  else
  {
    (v21[2])(v21);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
LABEL_32:
}

- (void)setOneToOneModeEnabled:(BOOL)enabled withCompletionBlock:(id)block
{
  enabledCopy = enabled;
  blockCopy = block;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  if (blockCopy)
  {
    v9 = sub_100004778(v8);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = enabledCopy;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Queueing completion block to execute after updating oneToOneEnabled: %d", &v19, 8u);
    }

    sessionUpdateCompletionQueue = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
    v11 = [blockCopy copy];
    [sessionUpdateCompletionQueue addObject:v11];
  }

  else
  {
    sessionUpdateCompletionQueue = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
    [sessionUpdateCompletionQueue addObject:&stru_10061EBD0];
  }

  session = [(CSDAVCSession *)self session];
  configuration = [session configuration];

  [configuration setOneToOneModeEnabled:enabledCopy];
  if (enabledCopy)
  {
    outOfProcessCodecsEnabled = [configuration outOfProcessCodecsEnabled];
  }

  else
  {
    outOfProcessCodecsEnabled = 0;
  }

  v15 = sub_100004778([configuration setOutOfProcessCodecsEnabled:outOfProcessCodecsEnabled]);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    if (enabledCopy)
    {
      v16 = @"YES";
    }

    else
    {
      v16 = @"NO";
    }

    if ([configuration outOfProcessCodecsEnabled])
    {
      v17 = @"YES";
    }

    else
    {
      v17 = @"NO";
    }

    v19 = 138412546;
    v20 = v16;
    v21 = 2112;
    v22 = v17;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "oneToOneEnabled: %@ oopCodecsEnabled %@", &v19, 0x16u);
  }

  session2 = [(CSDAVCSession *)self session];
  [session2 updateConfiguration:configuration];
}

- (void)startAVCScreenCaptureWithAttributes:(id)attributes preferImmediateActivation:(BOOL)activation screenControlEnabled:(BOOL)enabled capturesCursor:(BOOL)cursor
{
  cursorCopy = cursor;
  attributesCopy = attributes;
  v10 = sub_100004778(attributesCopy);
  if (os_signpost_enabled(v10))
  {
    LOWORD(buf) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "screenCaptureStart", "", &buf, 2u);
  }

  v11 = [objc_opt_class() avcScreenCaptureConfigurationForScreenAttributes:attributesCopy];
  [v11 setIsCursorCaptured:cursorCopy];
  [(CSDAVCSession *)self setMostRecentScreenShareAttributes:attributesCopy];
  featureFlags = [(CSDAVCSession *)self featureFlags];
  sharePlayInCallsEnabled = [featureFlags sharePlayInCallsEnabled];

  if (sharePlayInCallsEnabled)
  {
    buf = 0u;
    v43 = 0u;
    BSAuditTokenForCurrentProcess();
    v14 = [AVCAuditToken alloc];
    *v40 = buf;
    v41 = v43;
    v15 = [v14 initWithAuditToken:v40];
    v44 = v15;
    v16 = [NSArray arrayWithObjects:&v44 count:1];
    [v11 setExcludedAudioAuditTokens:v16];
  }

  objc_initWeak(&buf, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_100211A68;
  v36[3] = &unk_10061CCB0;
  objc_copyWeak(&v39, &buf);
  v17 = v11;
  v37 = v17;
  selfCopy = self;
  v18 = objc_retainBlock(v36);
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100211BC8;
  v33[3] = &unk_10061A600;
  objc_copyWeak(&v35, &buf);
  v19 = v17;
  v34 = v19;
  v20 = objc_retainBlock(v33);
  avcScreenCapture = [(CSDAVCSession *)self avcScreenCapture];

  if (avcScreenCapture)
  {
    v22 = objc_retainBlock(v20);
    [(CSDAVCSession *)self stopCapture];
    captureSessionQueue2 = objc_retainBlock(v18);

    if (activation)
    {
      v25 = sub_100004778(v24);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *v40 = 0;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Bypassing capture queue and starting AVCScreenCapture immediately", v40, 2u);
      }

      captureSessionQueue2[2](captureSessionQueue2);
      goto LABEL_19;
    }

    v29 = sub_100004778(v24);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Queueing capture completion block to execute after current capture session is stopped", v40, 2u);
    }

    captureSessionQueue = [(CSDAVCSession *)self captureSessionQueue];
    v31 = [captureSessionQueue2 copy];
    [captureSessionQueue addObject:v31];

LABEL_18:
LABEL_19:

    goto LABEL_20;
  }

  session = [(CSDAVCSession *)self session];
  isScreenEnabled = [session isScreenEnabled];

  if ((isScreenEnabled & 1) == 0)
  {
    v32 = sub_100004778(v28);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Queueing capture completion block to execute after screen becomes enabled", v40, 2u);
    }

    captureSessionQueue2 = [(CSDAVCSession *)self captureSessionQueue];
    captureSessionQueue = [v18 copy];
    [captureSessionQueue2 addObject:captureSessionQueue];
    goto LABEL_18;
  }

  (v18[2])(v18);
LABEL_20:

  objc_destroyWeak(&v35);
  objc_destroyWeak(&v39);
  objc_destroyWeak(&buf);
}

- (id)clientBundleIDForAVCSession
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  configuration = [(AVCSession *)self->_session configuration];
  sessionMode = [configuration sessionMode];

  v6 = &TUBundleIdentifierPhoneApplication;
  if (sessionMode != 3)
  {
    v6 = &TUBundleIdentifierFaceTimeApplication;
  }

  v7 = *v6;

  return v7;
}

- (BOOL)shouldDisableOneToOneModeForScreenShare
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  allValues = [remoteParticipantsByIdentifier allValues];
  v6 = [allValues count];

  if (v6 <= 1)
  {
    featureFlags = [(CSDAVCSession *)self featureFlags];
    uPlusOneScreenSharing = [featureFlags uPlusOneScreenSharing];

    if (uPlusOneScreenSharing)
    {
      delegate = [(CSDAVCSession *)self delegate];
      v11 = [delegate onlyAvailableSessionConversationParticipant:self];

      capabilities = [v11 capabilities];
      v7 = [capabilities isUPlusOneScreenShareAvailable] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = attributesCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "screenShareAttributes: %@", &v13, 0xCu);
  }

  currentLocalScreenShareAttributes = [(CSDAVCSession *)self currentLocalScreenShareAttributes];
  v9 = [currentLocalScreenShareAttributes isEqualToScreenShareAttributes:attributesCopy];

  if (v9)
  {
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      currentLocalScreenShareAttributes2 = [(CSDAVCSession *)self currentLocalScreenShareAttributes];
      v13 = 138412546;
      v14 = attributesCopy;
      v15 = 2112;
      v16 = currentLocalScreenShareAttributes2;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to set screenShareAttributes %@ when local attributes are: %@", &v13, 0x16u);
    }
  }

  else
  {
    [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:attributesCopy];
    [(CSDAVCSession *)self startAVCScreenCaptureWithAttributes:attributesCopy preferImmediateActivation:0 screenControlEnabled:0 capturesCursor:1];
  }
}

- (void)updateConfigurationSessionMode:(int64_t)mode
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updatingSessionMode: %ld", &v11, 0xCu);
  }

  session = [(CSDAVCSession *)self session];
  configuration = [session configuration];

  [configuration setSessionMode:mode];
  session2 = [(CSDAVCSession *)self session];
  [session2 updateConfiguration:configuration];
}

- (void)setRelaying:(BOOL)relaying
{
  relayingCopy = relaying;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (relayingCopy)
    {
      v8 = @"YES";
    }

    v10 = 136315394;
    v11 = "[CSDAVCSession setRelaying:]";
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s:  %@", &v10, 0x16u);
  }

  self->_relaying = relayingCopy;
  if (relayingCopy || [(CSDAVCSession *)self isScreening])
  {
    defaultSessionMode = 1;
  }

  else
  {
    defaultSessionMode = [objc_opt_class() defaultSessionMode];
  }

  [(CSDAVCSession *)self updateConfigurationSessionMode:defaultSessionMode];
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_screening = screeningCopy;
  if (screeningCopy || [(CSDAVCSession *)self isRelaying])
  {
    defaultSessionMode = 1;
  }

  else
  {
    defaultSessionMode = [objc_opt_class() defaultSessionMode];
  }

  session = [(CSDAVCSession *)self session];
  configuration = [session configuration];

  [configuration setSessionMode:defaultSessionMode];
  if (screeningCopy)
  {
    [configuration setOutOfProcessCodecsEnabled:1];
  }

  session2 = [(CSDAVCSession *)self session];
  [session2 updateConfiguration:configuration];
}

- (void)queueAddParticipantRetryBlock:(id)block withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled
{
  blockCopy = block;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1002124AC;
  v20 = &unk_10061EBF8;
  objc_copyWeak(&v22, &location);
  v12 = blockCopy;
  v21 = v12;
  enabledCopy = enabled;
  pausedCopy = paused;
  screenEnabledCopy = screenEnabled;
  v13 = objc_retainBlock(&v17);
  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Already have oneToOne transition in progress, delaying addParticipant request for participant: %@", buf, 0xCu);
  }

  v15 = [(CSDAVCSession *)self sessionUpdateCompletionQueue:v17];
  v16 = [v13 copy];
  [v15 addObject:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)addParticipant:(id)participant withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled
{
  screenEnabledCopy = screenEnabled;
  pausedCopy = paused;
  enabledCopy = enabled;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  sessionUpdateCompletionQueue = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
  v13 = [sessionUpdateCompletionQueue count];

  if (!v13)
  {
    delegate = [(CSDAVCSession *)self delegate];
    v15 = [delegate session:self conversationParticipantWithParticipantIdentifier:{objc_msgSend(participantCopy, "identifier")}];

    if (v15)
    {
      remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
      v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
      v19 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v18];

      if (!v19)
      {
        objc_initWeak(buf, self);
        v30[0] = _NSConcreteStackBlock;
        v30[1] = 3221225472;
        v30[2] = sub_1002128D8;
        v30[3] = &unk_10061EBF8;
        objc_copyWeak(&v32, buf);
        v31 = participantCopy;
        v33 = enabledCopy;
        v34 = pausedCopy;
        v35 = screenEnabledCopy;
        v24 = objc_retainBlock(v30);
        remoteParticipantsByIdentifier2 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
        allValues = [remoteParticipantsByIdentifier2 allValues];
        v27 = [allValues count];

        isOneToOneModeEnabled = [(CSDAVCSession *)self isOneToOneModeEnabled];
        if (v27 == 1)
        {
          v29 = isOneToOneModeEnabled;
        }

        else
        {
          v29 = 0;
        }

        if (v29 == 1)
        {
          [(CSDAVCSession *)self setOneToOneModeEnabled:0 withCompletionBlock:v24];
        }

        else
        {
          (v24[2])(v24);
        }

        objc_destroyWeak(&v32);
        objc_destroyWeak(buf);
        goto LABEL_18;
      }

      v21 = sub_100004778(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
        *buf = 138412290;
        v37 = v22;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to add participant %@ because they're already in the conversation", buf, 0xCu);
      }
    }

    else
    {
      v21 = sub_100004778(v16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
        *buf = 138412290;
        v37 = v23;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Could not find participant tracking with identifier %@", buf, 0xCu);
      }
    }

LABEL_18:
    goto LABEL_19;
  }

  [(CSDAVCSession *)self queueAddParticipantRetryBlock:participantCopy withVideoEnabled:enabledCopy audioPaused:pausedCopy screenEnabled:screenEnabledCopy];
LABEL_19:
}

- (void)removeParticipant:(id)participant
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  sessionUpdateCompletionQueue = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
  v7 = [sessionUpdateCompletionQueue count];

  if (v7)
  {
    objc_initWeak(&location, self);
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100212EF0;
    v29[3] = &unk_10061A600;
    objc_copyWeak(&v31, &location);
    v9 = participantCopy;
    v30 = v9;
    v10 = objc_retainBlock(v29);
    v11 = sub_100004778(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v9;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Already have oneToOne transition in progress, delaying removeParticipant request for %@", buf, 0xCu);
    }

    sessionUpdateCompletionQueue2 = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
    v13 = [v10 copy];
    [sessionUpdateCompletionQueue2 addObject:v13];

    objc_destroyWeak(&v31);
    objc_destroyWeak(&location);
  }

  else
  {
    v14 = sub_100004778(v8);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = participantCopy;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "removeParticipant: %@", buf, 0xCu);
    }

    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    v17 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v16];

    pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    if (v17)
    {
      [pendingRemovedParticipantsByID setObject:participantCopy forKeyedSubscript:v19];

      remoteParticipantsByIdentifier2 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
      v21 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
      [remoteParticipantsByIdentifier2 setObject:0 forKeyedSubscript:v21];

      session = [(CSDAVCSession *)self session];
      [session removeParticipant:v17];
    }

    else
    {
      v23 = [pendingRemovedParticipantsByID objectForKeyedSubscript:v19];

      session = sub_100004778(v24);
      v25 = os_log_type_enabled(session, OS_LOG_TYPE_DEFAULT);
      if (v23)
      {
        if (v25)
        {
          identifier = [participantCopy identifier];
          *buf = 134217984;
          v34 = identifier;
          _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find participant %lu in the active participant list, but they're in the list of pending removals", buf, 0xCu);
        }
      }

      else if (v25)
      {
        identifier2 = [participantCopy identifier];
        remoteParticipantsByIdentifier3 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
        *buf = 134218242;
        v34 = identifier2;
        v35 = 2112;
        v36 = remoteParticipantsByIdentifier3;
        _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find participant with identifier %lu all participants: %@", buf, 0x16u);
      }
    }
  }
}

- (void)setParticipantCluster:(id)cluster forParticipantWithIdentifier:(unint64_t)identifier
{
  v5 = [(CSDAVCSession *)self queue:cluster];
  dispatch_assert_queue_V2(v5);

  featureFlags = [(CSDAVCSession *)self featureFlags];
  [featureFlags nearbyFaceTimeEnabled];
}

- (void)setPlaybackSynchronizationGroupMember:(BOOL)member forParticipantWithIdentifier:(unint64_t)identifier
{
  v5 = [(CSDAVCSession *)self queue:member];
  dispatch_assert_queue_V2(v5);

  featureFlags = [(CSDAVCSession *)self featureFlags];
  [featureFlags nearbyFaceTimeEnabled];
}

- (void)setLocalParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [clusterCopy UUID];
    v10 = 138412290;
    v11 = uUID;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "setLocalParticipantCluster: clusterID: %@", &v10, 0xCu);
  }

  featureFlags = [(CSDAVCSession *)self featureFlags];
  [featureFlags nearbyFaceTimeEnabled];
}

- (void)setAudioEnabled:(BOOL)enabled forParticipantWithIdentifier:(unint64_t)identifier
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  v12 = sub_100004778(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      identifierCopy = identifier;
      v16 = 1024;
      v17 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "identifier: %llu audioEnabled: %d", &v14, 0x12u);
    }

    [v10 setMediaState:enabledCopy forMediaType:0];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C714();
    }
  }
}

- (void)setDownlinkMuted:(BOOL)muted forParticipantWithIdentifier:(unint64_t)identifier
{
  mutedCopy = muted;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  v12 = sub_100004778(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      identifierCopy = identifier;
      v16 = 1024;
      v17 = mutedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "identifier: %llu downlinkMuted: %d", &v14, 0x12u);
    }

    [v10 setAudioMuted:mutedCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C714();
    }
  }
}

- (void)setAudioPaused:(BOOL)paused forParticipantWithIdentifier:(unint64_t)identifier
{
  pausedCopy = paused;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  v12 = sub_100004778(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      identifierCopy = identifier;
      v16 = 1024;
      v17 = pausedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "identifier: %lu audioPaused: %d", &v14, 0x12u);
    }

    [v10 setAudioPaused:pausedCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C7A0();
    }
  }
}

- (void)setScreenEnabled:(BOOL)enabled forParticipantWithIdentifier:(unint64_t)identifier
{
  enabledCopy = enabled;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  v12 = sub_100004778(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      identifierCopy = identifier;
      v16 = 1024;
      v17 = enabledCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "identifier: %lu screenEnabled: %d", &v14, 0x12u);
    }

    [v10 setScreenEnabled:enabledCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C7A0();
    }
  }
}

- (void)setAudioAndVideoMuted:(BOOL)muted forParticipantWithIdentifier:(unint64_t)identifier
{
  mutedCopy = muted;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v9 = [NSNumber numberWithUnsignedLongLong:identifier];
  v10 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v9];

  v12 = sub_100004778(v11);
  v13 = v12;
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      identifierCopy = identifier;
      v16 = 1024;
      v17 = mutedCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "identifier: %llu audioAndVideoMuted: %d", &v14, 0x12u);
    }

    [v10 setAudioMuted:mutedCopy];
    [v10 setVideoPaused:mutedCopy];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10047C714();
    }
  }
}

+ (unsigned)avcSessionVideoQualityFrom:(unint64_t)from
{
  if (from == 1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (from == 2)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

- (void)setVideoQuality:(unint64_t)quality forParticipantWithIdentifier:(unint64_t)identifier
{
  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 setVideoQuality:{objc_msgSend(objc_opt_class(), "avcSessionVideoQualityFrom:", quality)}];
  }

  else
  {
    v10 = sub_100004778(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_10047C7A0();
    }
  }
}

- (void)setVideoQuality:(unint64_t)quality visibility:(id)visibility prominence:(id)prominence spatialPosition:(CGRect)position isInCanvas:(BOOL)canvas forParticipantWithIdentifier:(unint64_t)identifier
{
  canvasCopy = canvas;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  visibilityCopy = visibility;
  prominenceCopy = prominence;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v21 = [NSNumber numberWithUnsignedLongLong:identifier];
  v22 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v21];

  if (v22)
  {
    v24 = x + width * 0.5;
    v25 = y + height * 0.5;
    integerValue = [prominenceCopy integerValue];
    if (integerValue)
    {
      v27 = 0.0;
    }

    else
    {
      v27 = 1.0;
    }

    v28 = sub_100004778(integerValue);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v30 = 134220288;
      *v31 = identifier;
      *&v31[8] = 2048;
      *&v31[10] = quality;
      *&v31[18] = 2048;
      v32 = COERCE_DOUBLE([visibilityCopy integerValue]);
      LOWORD(v33) = 2048;
      *(&v33 + 2) = [prominenceCopy integerValue];
      WORD5(v33) = 1024;
      HIDWORD(v33) = canvasCopy;
      v34 = 2048;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      v38 = 2048;
      v39 = v27;
      v40 = 2048;
      v41 = width;
      v42 = 2048;
      v43 = height;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "identifier: %lu videoQuality: %lu visibility: %lu prominence: %lu positionalInfo: <flags: %u, position: (x: %f, y: %f, z: %f, w: %f, h: %f)>", &v30, 0x62u);
    }

    [v22 setVideoQuality:{objc_msgSend(objc_opt_class(), "avcSessionVideoQualityFrom:", quality)}];
    [v22 setVisibilityIndex:{objc_msgSend(visibilityCopy, "integerValue")}];
    [v22 setProminenceIndex:{objc_msgSend(prominenceCopy, "integerValue")}];
    v30 = canvasCopy;
    *v31 = 0;
    *&v31[4] = width;
    *&v31[12] = height;
    v32 = v24;
    *&v33 = v25;
    *(&v33 + 1) = v27;
    [v22 setVideoPositionalInfo:&v30];
  }

  else
  {
    v29 = sub_100004778(v23);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_10047C7A0();
    }
  }
}

- (void)beginParticipantUpdates
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  session = [(CSDAVCSession *)self session];
  [session beginParticipantConfiguration];
}

- (void)commitParticipantUpdates
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  session = [(CSDAVCSession *)self session];
  [session endParticipantConfiguration];
}

- (void)start
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v5 = sub_100004778(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "", v7, 2u);
  }

  [(CSDAVCSession *)self setHasCalledStop:0];
  session = [(CSDAVCSession *)self session];
  [session start];
}

- (void)stopCapture
{
  avcScreenCapture = [(CSDAVCSession *)self avcScreenCapture];

  if (avcScreenCapture)
  {
    v5 = sub_100004778(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      avcScreenCapture2 = [(CSDAVCSession *)self avcScreenCapture];
      v9 = 134217984;
      v10 = avcScreenCapture2;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Calling stop on screen capture %p", &v9, 0xCu);
    }

    avcScreenCapture3 = [(CSDAVCSession *)self avcScreenCapture];
    [avcScreenCapture3 stopCapture];

    clientBundleIDForAVCSession = [(CSDAVCSession *)self clientBundleIDForAVCSession];
    sub_10022B084(clientBundleIDForAVCSession, 0);
  }
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self setHasCalledStop:1];
  v6 = sub_100004778([(CSDAVCSession *)self stopCapture]);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CSDAVCSession: stop with error: %@", &v8, 0xCu);
  }

  session = [(CSDAVCSession *)self session];
  [session stopWithError:errorCopy];
}

- (BOOL)shouldIgnoreBenignErrorOnStart:(id)start
{
  startCopy = start;
  if (startCopy && [(CSDAVCSession *)self hasCalledStop])
  {
    domain = [startCopy domain];
    if ([domain isEqualToString:@"GKVoiceChatServiceErrorDomain"] && objc_msgSend(startCopy, "code") == 32028)
    {
      localizedFailureReason = [startCopy localizedFailureReason];
      v7 = [localizedFailureReason isEqualToString:@"Stop called on a starting session"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)session:(id)session didStart:(BOOL)start error:(id)error
{
  startCopy = start;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_signpost_enabled(v10))
  {
    LOWORD(v15[0]) = 0;
    _os_signpost_emit_with_name_impl(&_mh_execute_header, v10, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "screenCaptureStart", "", v15, 2u);
  }

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109378;
    v15[1] = startCopy;
    v16 = 2112;
    v17 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didStart: %d error: %@", v15, 0x12u);
  }

  v13 = [(CSDAVCSession *)self shouldIgnoreBenignErrorOnStart:errorCopy];
  if (v13)
  {
    delegate = sub_100004778(v13);
    if (os_log_type_enabled(delegate, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(&_mh_execute_header, delegate, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring avcSession didStart as the error that was returned was benign", v15, 2u);
    }
  }

  else
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate session:self didStart:startCopy error:errorCopy];
  }
}

- (void)session:(id)session didStopWithError:(id)error
{
  errorCopy = error;
  sessionCopy = session;
  v8 = objc_alloc_init(NSDictionary);
  [(CSDAVCSession *)self session:sessionCopy didStopWithError:errorCopy metadata:v8];
}

- (void)session:(id)session didStopWithError:(id)error metadata:(id)metadata
{
  errorCopy = error;
  metadataCopy = metadata;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 138412290;
    v28 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "error: %@", &v27, 0xCu);
  }

  v12 = errorCopy;
  hasCalledStop = [(CSDAVCSession *)self hasCalledStop];
  v14 = v12;
  if (!v12)
  {
    v14 = 0;
    if ((hasCalledStop & 1) == 0)
    {
      v14 = [[NSError alloc] initWithDomain:@"CSDAVCSessionError" code:505 userInfo:0];
    }
  }

  integerValue = [metadataCopy objectForKey:@"avcKeySessionSentBytes"];
  if (integerValue)
  {
    v16 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionSentBytes"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v18 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionSentBytes"];
      integerValue = [v18 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  v19 = [metadataCopy objectForKey:@"avcKeySessionReceivedBytes"];
  if (v19)
  {
    v20 = v19;
    v21 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionReceivedBytes"];
    objc_opt_class();
    v22 = objc_opt_isKindOfClass();

    if (v22)
    {
      v23 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionReceivedBytes"];
      integerValue += [v23 integerValue];
    }
  }

  delegate = [(CSDAVCSession *)self delegate];
  v25 = delegate;
  if (integerValue >= 1)
  {
    v26 = sub_100004778(delegate);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = 134217984;
      v28 = integerValue;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Sending delegate bytesOfDataUsageChanged: %ld", &v27, 0xCu);
    }

    [v25 session:self changedBytesOfDataUsed:integerValue];
  }

  [v25 session:self didStopWithError:v14];
}

- (id)pendingRemovedRemoteParticipantByIdentififer:(unint64_t)identififer
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
  v7 = [NSNumber numberWithUnsignedLongLong:identififer];
  v8 = [pendingRemovedParticipantsByID objectForKeyedSubscript:v7];

  return v8;
}

- (void)session:(id)session didDetectError:(id)error
{
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "didDetectError: %@", &v10, 0xCu);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self didDetectError:errorCopy];
}

- (void)sessionServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    sub_10047C82C();
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate serverDisconnectedForSession:self];
}

- (void)session:(id)session addParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  participantCopy = participant;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v46 = participantCopy;
    v47 = 1024;
    LODWORD(v48[0]) = succeedCopy;
    WORD2(v48[0]) = 2112;
    *(v48 + 6) = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ didSucceed: %d error: %@", buf, 0x1Cu);
  }

  v15 = sub_100004778(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    *buf = 138412546;
    v46 = participantCopy;
    v47 = 2112;
    v48[0] = remoteParticipantsByIdentifier;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ Active remote participants: %@", buf, 0x16u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  v18 = delegate;
  if (succeedCopy)
  {
    captionsToken = [participantCopy captionsToken];
    v20 = sub_100004778(captionsToken);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v46 = captionsToken;
      v47 = 2112;
      v48[0] = participantCopy;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Got captions token: %lu for participant %@", buf, 0x16u);
    }

    [v18 addedRemoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedAudioEnabled:"participantID") updatedVideoEnabled:1 streamToken:objc_msgSend(participantCopy screenToken:"isVideoEnabled") captionsToken:{objc_msgSend(participantCopy, "videoToken"), objc_msgSend(participantCopy, "screenToken"), captionsToken}];
    pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v22 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
    v23 = [pendingRemovedParticipantsByID objectForKeyedSubscript:v22];

    if (v23)
    {
      [(CSDAVCSession *)self removeParticipant:v23];
    }
  }

  else
  {
    v24 = sub_100004778(delegate);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      sub_10047C8A0();
    }

    remoteParticipantsByIdentifier2 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v26 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
    [remoteParticipantsByIdentifier2 setObject:0 forKeyedSubscript:v26];

    userInfo = [errorCopy userInfo];
    v23 = userInfo;
    if (userInfo)
    {
      v28 = GKSErrorDetailedError;
      v29 = [userInfo objectForKeyedSubscript:GKSErrorDetailedError];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [errorCopy code];
        goto LABEL_27;
      }

      v31 = [v23 objectForKeyedSubscript:v28];
      v32 = [v31 isEqualToNumber:&off_10063EDC8];

      v33 = v32 ^ 1;
    }

    else
    {
      v33 = 0;
    }

    if ([errorCopy code] == 32016 && (v33 & 1) == 0)
    {
      v34 = [v18 session:self conversationParticipantWithParticipantIdentifier:{objc_msgSend(participantCopy, "participantID")}];
      session = sub_100004778(v34);
      v36 = os_log_type_enabled(session, OS_LOG_TYPE_DEFAULT);
      v44 = v34;
      if (v34)
      {
        if (v36)
        {
          *buf = 138412546;
          v46 = participantCopy;
          v47 = 2112;
          v48[0] = errorCopy;
          _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "Retrying to add participant after one to one mode changes %@: %@", buf, 0x16u);
        }

        session = [(CSDAVCSession *)self session];
        isVideoEnabled = [session isVideoEnabled];
        session2 = [(CSDAVCSession *)self session];
        isAudioPaused = [session2 isAudioPaused];
        session3 = [(CSDAVCSession *)self session];
        isScreenEnabled = [session3 isScreenEnabled];
        selfCopy = self;
        v43 = v44;
        [(CSDAVCSession *)selfCopy queueAddParticipantRetryBlock:v44 withVideoEnabled:isVideoEnabled audioPaused:isAudioPaused screenEnabled:isScreenEnabled];
      }

      else
      {
        if (v36)
        {
          *buf = 138412290;
          v46 = participantCopy;
          _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate responded that we are not tracking active remote participant anymore, not retrying to add participant: %@", buf, 0xCu);
        }

        v43 = 0;
      }
    }
  }

LABEL_27:
}

- (void)session:(id)session removeParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  participantCopy = participant;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v22 = 138412802;
    v23 = participantCopy;
    v24 = 1024;
    v25 = succeedCopy;
    v26 = 2112;
    v27 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "removeParticipant: %@ didSucceed: %d error: %@", &v22, 0x1Cu);
  }

  if (succeedCopy)
  {
    pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v16 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
    [pendingRemovedParticipantsByID setObject:0 forKeyedSubscript:v16];
  }

  else
  {
    v17 = sub_100004778(v14);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      sub_10047C910();
    }

    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
    [remoteParticipantsByIdentifier setObject:participantCopy forKeyedSubscript:v19];

    pendingRemovedParticipantsByID = sub_100004778(v20);
    if (os_log_type_enabled(pendingRemovedParticipantsByID, OS_LOG_TYPE_ERROR))
    {
      sub_10047C980(participantCopy, self);
    }
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate removedRemoteParticipantWithIdentifier:objc_msgSend(participantCopy didSucceed:{"participantID"), succeedCopy}];
}

- (void)session:(id)session didUpdate:(BOOL)update configuration:(id)configuration error:(id)error
{
  updateCopy = update;
  configurationCopy = configuration;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778(v12);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = updateCopy;
    v17 = 2112;
    v18 = configurationCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "didUpdate: %d configuration: %@ error: %@", v16, 0x1Cu);
  }

  if (!updateCopy)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047CA14();
    }
  }
}

- (void)session:(id)session audioEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = enabledCopy;
    v17 = 1024;
    v18 = succeedCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "audioEnabled: %d didSucceed: %d error: %@", v16, 0x18u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self changedLocalAudioEnabled:enabledCopy didSucceed:succeedCopy error:errorCopy];

  if (errorCopy)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047CA84();
    }
  }
}

- (void)session:(id)session videoEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = enabledCopy;
    v17 = 1024;
    v18 = succeedCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "videoEnabled: %d didSucceed: %d error: %@", v16, 0x18u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self changedLocalVideoEnabled:enabledCopy didSucceed:succeedCopy error:errorCopy];

  if (errorCopy)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047CAF4();
    }
  }
}

- (void)session:(id)session screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v31 = enabledCopy;
    v32 = 1024;
    v33 = succeedCopy;
    v34 = 2112;
    v35 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "screenEnabled: %d didSucceed: %d error: %@", buf, 0x18u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self changedScreenEnabled:enabledCopy didSucceed:succeedCopy error:errorCopy];

  if (errorCopy)
  {
    captureSessionQueue2 = sub_100004778(v14);
    if (os_log_type_enabled(captureSessionQueue2, OS_LOG_TYPE_ERROR))
    {
      sub_10047CB64();
    }

LABEL_6:

    goto LABEL_7;
  }

  captureSessionQueue = [(CSDAVCSession *)self captureSessionQueue];
  v18 = [captureSessionQueue count];

  if (v18 && enabledCopy)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    captureSessionQueue2 = [(CSDAVCSession *)self captureSessionQueue];
    v19 = [captureSessionQueue2 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v26;
      do
      {
        v22 = 0;
        do
        {
          if (*v26 != v21)
          {
            objc_enumerationMutation(captureSessionQueue2);
          }

          v23 = *(*(&v25 + 1) + 8 * v22);
          v24 = sub_100004778(v19);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "executing queued up block since screen enabled did succeed", buf, 2u);
          }

          v19 = (*(v23 + 16))(v23);
          v22 = v22 + 1;
        }

        while (v20 != v22);
        v19 = [captureSessionQueue2 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v20 = v19;
      }

      while (v19);
    }

    goto LABEL_6;
  }

LABEL_7:
  captureSessionQueue3 = [(CSDAVCSession *)self captureSessionQueue];
  [captureSessionQueue3 removeAllObjects];
}

- (void)session:(id)session audioPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = pausedCopy;
    v17 = 1024;
    v18 = succeedCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "audioPaused: %d didSucceed: %d error: %@", v16, 0x18u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self changedLocalAudioPaused:pausedCopy didSucceed:succeedCopy error:errorCopy];

  if (errorCopy)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047CBD4();
    }
  }
}

- (void)session:(id)session videoPaused:(BOOL)paused didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  pausedCopy = paused;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v16[0] = 67109634;
    v16[1] = pausedCopy;
    v17 = 1024;
    v18 = succeedCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "videoPaused: %d didSucceed: %d error: %@", v16, 0x18u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self changedLocalVideoPaused:pausedCopy didSucceed:succeedCopy error:errorCopy];

  if (errorCopy)
  {
    v15 = sub_100004778(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_10047CC44();
    }
  }
}

- (void)session:(id)session oneToOneEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109634;
    v36 = enabledCopy;
    v37 = 1024;
    v38 = succeedCopy;
    v39 = 2112;
    v40 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "oneToOneEnabled: %d didSucceed: %d error: %@", buf, 0x18u);
  }

  mostRecentCompletedOneToOneEnabledValue = [(CSDAVCSession *)self mostRecentCompletedOneToOneEnabledValue];
  if (mostRecentCompletedOneToOneEnabledValue && (v14 = mostRecentCompletedOneToOneEnabledValue, -[CSDAVCSession mostRecentCompletedOneToOneEnabledValue](self, "mostRecentCompletedOneToOneEnabledValue"), v15 = objc_claimAutoreleasedReturnValue(), v16 = [v15 intValue], v15, v14, v16 == enabledCopy))
  {
    v17 = sub_100004778(mostRecentCompletedOneToOneEnabledValue);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Already received oneToOneEnabled callback with this value, not handling", buf, 2u);
    }
  }

  else
  {
    if (succeedCopy)
    {
      v18 = [NSNumber numberWithBool:enabledCopy];
      [(CSDAVCSession *)self setMostRecentCompletedOneToOneEnabledValue:v18];
    }

    if (errorCopy)
    {
      v19 = sub_100004778(mostRecentCompletedOneToOneEnabledValue);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        sub_10047CCB4();
      }
    }

    delegate = [(CSDAVCSession *)self delegate];
    [delegate session:self requestedOneToOneModeEnabled:enabledCopy didSucceed:succeedCopy error:errorCopy];

    sessionUpdateCompletionQueue = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
    v17 = sessionUpdateCompletionQueue;
    if (succeedCopy)
    {
      v22 = [sessionUpdateCompletionQueue copy];

      sessionUpdateCompletionQueue2 = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
      [sessionUpdateCompletionQueue2 removeAllObjects];

      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
      v17 = v22;
      v24 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v31;
        do
        {
          v27 = 0;
          do
          {
            if (*v31 != v26)
            {
              objc_enumerationMutation(v17);
            }

            v28 = *(*(&v30 + 1) + 8 * v27);
            v29 = sub_100004778(v24);
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "executing queued up block since oneToOneEnabled succeeded", buf, 2u);
            }

            v24 = (*(v28 + 16))(v28);
            v27 = v27 + 1;
          }

          while (v25 != v27);
          v24 = [v17 countByEnumeratingWithState:&v30 objects:v34 count:16];
          v25 = v24;
        }

        while (v24);
      }
    }

    else
    {
      [sessionUpdateCompletionQueue removeAllObjects];
    }
  }
}

- (void)session:(id)session mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v14 = sub_100004778(v13);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15[0] = 67109890;
    v15[1] = change;
    v16 = 1024;
    typeCopy = type;
    v18 = 1024;
    v19 = succeedCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "mediaStateDidChange: %d forMediaType: %d didSucceed: %d error: %@", v15, 0x1Eu);
  }
}

- (void)sessionShouldReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = reconnectCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session: %@", &v9, 0xCu);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate sessionShouldReconnect:self];
}

- (void)session:(id)session mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12[0] = 67109376;
    v12[1] = type;
    v13 = 1024;
    mediaTypeCopy = mediaType;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "mixingDidStartForMediaType: %d mixingMediaType: %d", v12, 0xEu);
  }

  if (type == 2 && mediaType == 1)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate session:self cameraMixedWithScreenDidChange:1];
  }
}

- (void)session:(id)session mixingDidStopForMediaType:(unsigned int)type
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778(v7);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10[0] = 67109120;
    v10[1] = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "mixingDidStopForMediaType: %d", v10, 8u);
  }

  if (type == 2)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate session:self cameraMixedWithScreenDidChange:0];
  }
}

- (void)session:(id)session didReact:(id)react
{
  sessionCopy = session;
  reactCopy = react;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = sessionCopy;
    v14 = 2112;
    v15 = reactCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "session: %@ didReact: %@", &v12, 0x16u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self localParticipantDidReact:reactCopy];
}

- (void)sessionDidStopReacting:(id)reacting
{
  reactingCopy = reacting;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = reactingCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session: %@ didStopReacting", &v9, 0xCu);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate sessionLocalParticipantDidStopReacting:self];
}

- (void)participant:(id)participant remoteAudioEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = participantCopy;
    v13 = 1024;
    v14 = changeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteAudioEnabledDidChange: %d", &v11, 0x12u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedAudioEnabled:"participantID") streamToken:changeCopy screenToken:objc_msgSend(participantCopy captionsToken:{"videoToken"), objc_msgSend(participantCopy, "screenToken"), objc_msgSend(participantCopy, "captionsToken")}];
}

- (void)participant:(id)participant remoteVideoEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = participantCopy;
    v13 = 1024;
    v14 = changeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteVideoEnabledDidChange: %d", &v11, 0x12u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedVideoEnabled:"participantID") streamToken:changeCopy screenToken:objc_msgSend(participantCopy captionsToken:{"videoToken"), objc_msgSend(participantCopy, "screenToken"), objc_msgSend(participantCopy, "captionsToken")}];
}

- (void)participant:(id)participant remoteAudioPausedDidChange:(BOOL)change
{
  changeCopy = change;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = participantCopy;
    v13 = 1024;
    v14 = changeCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteAudioPausedDidChange: %d", &v11, 0x12u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedAudioPaused:"participantID") streamToken:{changeCopy, objc_msgSend(participantCopy, "videoToken")}];
}

- (void)participant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
  v13 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CSDAVCSession *)self isRemoteScreenEnabledForParticipant:participantCopy];
    v15 = v14;
    v16 = sub_100004778(v14);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138413058;
      v19 = participantCopy;
      v20 = 1024;
      v21 = enabledCopy;
      v22 = 1024;
      v23 = succeedCopy;
      v24 = 1024;
      v25 = v15;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "participant: %@ screenEnabled: %d didSucceed: %d remoteScreenEnabled: %d", &v18, 0x1Eu);
    }

    delegate = [(CSDAVCSession *)self delegate];
    [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedScreenEnabled:"participantID") streamToken:enabledCopy & v15 screenToken:objc_msgSend(participantCopy captionsToken:{"videoToken"), objc_msgSend(participantCopy, "screenToken"), objc_msgSend(participantCopy, "captionsToken")}];
  }
}

- (void)participant:(id)participant remoteScreenEnabledDidChange:(BOOL)change
{
  changeCopy = change;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = participantCopy;
    v13 = 1024;
    v14 = changeCopy;
    v15 = 1024;
    isScreenEnabled = [participantCopy isScreenEnabled];
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteScreenEnabledDidChange: %d participantScreenEnabled: %d", &v11, 0x18u);
  }

  if (changeCopy)
  {
    changeCopy = [participantCopy isScreenEnabled];
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedScreenEnabled:"participantID") streamToken:changeCopy screenToken:objc_msgSend(participantCopy captionsToken:{"videoToken"), objc_msgSend(participantCopy, "screenToken"), objc_msgSend(participantCopy, "captionsToken")}];
}

- (void)participant:(id)participant mediaPrioritiesDidChange:(id)change
{
  changeCopy = change;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [changeCopy objectForKeyedSubscript:AVCSessionParticipantMediaTypeKeyAudio];
  integerValue = [v9 integerValue];

  v11 = [changeCopy objectForKeyedSubscript:AVCSessionParticipantMediaTypeKeyVideo];

  integerValue2 = [v11 integerValue];
  delegate = [(CSDAVCSession *)self delegate];
  participantID = [participantCopy participantID];

  [delegate remoteParticipantWithIdentifier:participantID didChangeAudioPriority:integerValue videoPriority:integerValue2];
}

- (void)participant:(id)participant didReact:(id)react
{
  participantCopy = participant;
  reactCopy = react;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778(v9);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = participantCopy;
    v14 = 2112;
    v15 = reactCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participant: %@ didReact: %@", &v12, 0x16u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy didReact:{"participantID"), reactCopy}];
}

- (void)participant:(id)participant remoteMediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = participantCopy;
    v14 = 1024;
    changeCopy = change;
    v16 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteMediaStateDidChange: %d forMediaType: %d", &v12, 0x18u);
  }
}

- (void)participant:(id)participant mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v11 = sub_100004778(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412802;
    v14 = participantCopy;
    v15 = 1024;
    typeCopy = type;
    v17 = 1024;
    mediaTypeCopy = mediaType;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "participant: %@ mixingDidStartForMediaType: %d mixingMediaType: %d", &v13, 0x18u);
  }

  if (type == 2 && mediaType == 1)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy cameraMixedWithScreenDidChange:{"participantID"), 1}];
  }
}

- (void)participant:(id)participant mixingDidStopForMediaType:(unsigned int)type
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778(v8);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = participantCopy;
    v13 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ mixingDidStopForMediaType: %d", &v11, 0x12u);
  }

  if (type == 2)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy cameraMixedWithScreenDidChange:{"participantID"), 0}];
  }
}

- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error
{
  captureCopy = capture;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100216DB4;
  v13[3] = &unk_10061BE38;
  startCopy = start;
  v14 = captureCopy;
  v15 = errorCopy;
  selfCopy = self;
  v11 = errorCopy;
  v12 = captureCopy;
  dispatch_async(queue, v13);
}

- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error
{
  stopCopy = stop;
  captureCopy = capture;
  errorCopy = error;
  v10 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = captureCopy;
    v18 = 1024;
    v19 = stopCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didStop: %d, captureWithError: %@", buf, 0x1Cu);
  }

  queue = [(CSDAVCSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217038;
  block[3] = &unk_100619F48;
  v15 = stopCopy;
  block[4] = self;
  v14 = errorCopy;
  v12 = errorCopy;
  dispatch_async(queue, block);
}

- (void)screenCapture:(id)capture didUpdateAttributes:(id)attributes error:(id)error
{
  captureCopy = capture;
  attributesCopy = attributes;
  errorCopy = error;
  v11 = sub_100004778(errorCopy);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = captureCopy;
    v21 = 2112;
    v22 = attributesCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didUpdateAttributes: %@, error: %@", buf, 0x20u);
  }

  queue = [(CSDAVCSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217388;
  block[3] = &unk_100619E58;
  v16 = errorCopy;
  v17 = attributesCopy;
  selfCopy = self;
  v13 = attributesCopy;
  v14 = errorCopy;
  dispatch_async(queue, block);
}

- (BOOL)isRemoteScreenEnabledForParticipant:(id)participant
{
  participantCopy = participant;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [participantCopy performSelector:"remoteScreenEnabled"] != 0;

  return v4;
}

- (int64_t)localCaptionsToken
{
  session = [(CSDAVCSession *)self session];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  session2 = [(CSDAVCSession *)self session];
  v6 = [session2 streamTokenForStreamGroupID:1667330164];

  return v6;
}

- (CSDAVCSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end