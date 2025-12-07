@interface MRDTransportExternalDevice
- (BOOL)_maybeBatchRequest:(id)request;
- (MRDTransportExternalDevice)initWithTransport:(id)transport;
- (MRDeviceInfo)deviceInfo;
- (MRExternalClientConnection)clientConnection;
- (MROrigin)customOrigin;
- (NSString)debugDescription;
- (NSString)description;
- (id)_onSerialQueue_deviceInfo;
- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)transport;
- (id)_onWorkerQueue_initializeConnectionWithOptions:(unsigned int)options userInfo:(id)info;
- (id)_onWorkerQueue_loadDeviceInfoWithUserInfo:(id)info;
- (id)_onWorkerQueue_reRegisterCustomOriginWithUserInfo:(id)info;
- (id)_onWorkerQueue_registerCustomOriginWithUserInfo:(id)info;
- (id)_onWorkerQueue_syncClientStateWithUserInfo:(id)info;
- (id)currentClientUpdatesConfigMessage;
- (id)errorForCurrentState;
- (id)externalOutputContext;
- (id)groupSessionToken;
- (id)lastConnectionError;
- (id)name;
- (id)shortDescription;
- (id)subscribedPlayerPaths;
- (id)supportedMessages;
- (unsigned)connectionState;
- (void)_activeSystemEndpointDidChangeNotification:(id)notification;
- (void)_callAllPendingCompletionsWithError:(id)error;
- (void)_callClientConnectionStateCallback:(unsigned int)callback previousConnectionState:(unsigned int)state error:(id)error;
- (void)_callClientCustomDataCallback:(id)callback name:(id)name;
- (void)_callDeviceInfoCallback:(id)callback oldDeviceInfo:(id)info;
- (void)_cleanUpStreamsWithReason:(int64_t)reason error:(id)error;
- (void)_handleApplicationConnectionProtocolMessage:(id)message;
- (void)_handleDeviceInfoChange:(id)change oldDevice:(id)device;
- (void)_handleDeviceInfoUpdateMessage:(id)message;
- (void)_handleDiscoveryUpdateOutputDevicesMessage:(id)message;
- (void)_handleGenericMessage:(id)message;
- (void)_handleInvalidateApplicationConnectionMessage:(id)message;
- (void)_handleLegacyVolumeControlCapabilitiesDidChangeMessage:(id)message;
- (void)_handleNotificationMessage:(id)message;
- (void)_handleOutputDevicesRemovedMessage:(id)message;
- (void)_handleOutputDevicesUpdatedMessage:(id)message;
- (void)_handlePlaybackQueueRequest:(id)request forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigrateBeginRequest:(id)request forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigrateEndRequest:(id)request setPlaybackSessionCommandStatus:(id)status error:(id)error forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigratePostRequest:(id)request setPlaybackSessionCommandID:(id)d forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionMigrateRequest:(id)request request:(id)a4 forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlaybackSessionRequest:(id)request forPlayerPath:(id)path completion:(id)completion;
- (void)_handlePlayerClientParticipantsUpdateMessage:(id)message;
- (void)_handlePresentRouteAuthorizationStatusMessage:(id)message;
- (void)_handlePromptForRouteAuthorizationMessage:(id)message;
- (void)_handleRemoteCommand:(unsigned int)command withOptions:(id)options playerPath:(id)path completion:(id)completion;
- (void)_handleRemoveClientMessage:(id)message;
- (void)_handleRemovePlayerMessage:(id)message;
- (void)_handleSetConnectionStateMessage:(id)message;
- (void)_handleSetDefaultSupportedCommandsMessage:(id)message;
- (void)_handleSetNowPlayingClientMessage:(id)message;
- (void)_handleSetNowPlayingPlayerMessage:(id)message;
- (void)_handleSetOriginClientPropertiesMessage:(id)message;
- (void)_handleSetPlayerClientPropertiesMessage:(id)message;
- (void)_handleSetStateMessage:(id)message;
- (void)_handleUpdateActiveSystemEndpoint:(id)endpoint;
- (void)_handleUpdateClientMessage:(id)message;
- (void)_handleUpdateContentItemsMessage:(id)message;
- (void)_handleUpdatePlayerMessage:(id)message;
- (void)_handleVolumeControlCapabilitiesDidChangeMessage:(id)message;
- (void)_handleVolumeDidChangeMessage:(id)message;
- (void)_handleVolumeMutedDidChangeMessage:(id)message;
- (void)_localDeviceInfoDidChangeNotification:(id)notification;
- (void)_onSerialQueue_completeGroupSessionRequestsWithIdentifier:(id)identifier error:(id)error;
- (void)_onSerialQueue_prepareToConnectWithOptions:(unsigned int)options userInfo:(id)info connectionAttemptDetails:(id)details connectionHandler:(id)handler;
- (void)_onSerialQueue_prepareToDisconnect:(id)disconnect userInfo:(id)info completion:(id)completion;
- (void)_onSerialQueue_registerOriginCallbacks;
- (void)_onWorkerQueue_connectWithOptions:(unsigned int)options isRetry:(BOOL)retry userInfo:(id)info completion:(id)completion;
- (void)_onWorkerQueue_disconnect:(id)queue_disconnect;
- (void)_onWorkerQueue_sendBatchedMessages;
- (void)_sendClientMessage:(id)message completion:(id)completion;
- (void)_transportDeviceInfoDidChangeNotification:(id)notification;
- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)clientConnection:(id)connection didReceiveMessage:(id)message;
- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion;
- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion;
- (void)dealloc;
- (void)disconnect:(id)disconnect;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)outputDeviceVolume:(id)volume queue:(id)queue completion:(id)completion;
- (void)outputDeviceVolumeControlCapabilities:(id)capabilities queue:(id)queue completion:(id)completion;
- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue;
- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion;
- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion;
- (void)sendButtonEvent:(_MRHIDButtonEvent)event;
- (void)sendClientUpdatesConfigMessageWithCompletion:(id)completion;
- (void)sendCustomData:(id)data withName:(id)name;
- (void)setClientConnection:(id)connection;
- (void)setConnectionState:(unsigned int)state error:(id)error;
- (void)setConversationDetectionEnabled:(BOOL)enabled outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setCustomDataCallback:(id)callback withQueue:(id)queue;
- (void)setCustomOrigin:(id)origin;
- (void)setDeviceInfo:(id)info;
- (void)setDiscoveryMode:(unsigned int)mode forConfiguration:(id)configuration;
- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion;
- (void)setName:(id)name;
- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion;
- (void)setSubscribedPlayerPaths:(id)paths;
- (void)setWantsEndpointChangeNotifications:(BOOL)notifications;
- (void)setWantsNowPlayingArtworkNotifications:(BOOL)notifications;
- (void)setWantsNowPlayingNotifications:(BOOL)notifications;
- (void)setWantsOutputDeviceNotifications:(BOOL)notifications;
- (void)setWantsSystemEndpointNotifications:(BOOL)notifications;
- (void)setWantsVolumeNotifications:(BOOL)notifications;
- (void)verifyConnectionStatusAndMaybeDisconnect:(id)disconnect completion:(id)completion;
@end

@implementation MRDTransportExternalDevice

- (unsigned)connectionState
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

- (id)name
{
  transport = [(MRDTransportExternalDevice *)self deviceInfo];
  v4 = transport;
  if (!transport)
  {
    transport = self->_transport;
  }

  name = [transport name];

  return name;
}

- (id)externalOutputContext
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350DC;
  v10 = sub_100035A24;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10003C310;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (id)errorForCurrentState
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350DC;
  v8 = sub_100035A24;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (NSString)description
{
  v3 = objc_opt_class();
  name = [(MRDTransportExternalDevice *)self name];
  transport = [(MRDTransportExternalDevice *)self transport];
  v6 = [NSString stringWithFormat:@"<%@:%p %@ transport=%@>", v3, self, name, transport];

  return v6;
}

- (MRDeviceInfo)deviceInfo
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350DC;
  v8 = sub_100035A24;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (id)_onSerialQueue_deviceInfo
{
  deviceInfo = self->_deviceInfo;
  if (deviceInfo)
  {
    deviceInfo = deviceInfo;
  }

  else
  {
    deviceInfo = [(MRExternalDeviceTransport *)self->_transport deviceInfo];
  }

  return deviceInfo;
}

- (MRDTransportExternalDevice)initWithTransport:(id)transport
{
  transportCopy = transport;
  v30.receiver = self;
  v30.super_class = MRDTransportExternalDevice;
  _init = [(MRDTransportExternalDevice *)&v30 _init];
  v7 = _init;
  if (_init)
  {
    objc_storeStrong(&_init->_transport, transport);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDevice.SerialQueue", v8);
    serialQueue = v7->_serialQueue;
    v7->_serialQueue = v9;

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDevice.WorkerQueue", v11);
    workerQueue = v7->_workerQueue;
    v7->_workerQueue = v12;

    v14 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v15 = dispatch_queue_create("com.apple.MediaRemote.MRExternalDevice.NotificationQueue", v14);
    notificationQueue = v7->_notificationQueue;
    v7->_notificationQueue = v15;

    v7->_connectionState = 3;
    v7->_reconnectionAttemptCount = 0;
    v7->_connectionOptions = 0;
    v7->_forceReconnectOnConnectionFailure = 0;
    v17 = +[NSUUID UUID];
    uUIDString = [v17 UUIDString];
    connectionUID = v7->_connectionUID;
    v7->_connectionUID = uUIDString;

    v20 = [MRExternalOutputContextDataSource alloc];
    v21 = [NSString alloc];
    v22 = [(MRDTransportExternalDevice *)v7 uid];
    name = [(MRDTransportExternalDevice *)v7 name];
    v24 = [v21 initWithFormat:@"%@-%@", v22, name];
    v25 = [v20 initWithUniqueIdentifier:v24];
    externalOutputContext = v7->_externalOutputContext;
    v7->_externalOutputContext = v25;

    [(MRExternalOutputContextDataSource *)v7->_externalOutputContext setShouldLog:1];
    [(MRExternalOutputContextDataSource *)v7->_externalOutputContext setNotificationQueue:v7->_notificationQueue];
    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:v7 selector:"_localDeviceInfoDidChangeNotification:" name:kMRDeviceInfoDidChangeNotification object:0];
    [v27 addObserver:v7 selector:"_transportDeviceInfoDidChangeNotification:" name:MRExternalDeviceTransportDeviceInfoDidChangeNotification object:v7->_transport];
    [v27 addObserver:v7 selector:"_activeSystemEndpointDidChangeNotification:" name:kMRMediaRemoteActiveSystemEndpointDidChangeNotification object:0];
    deviceInfo = [(MRExternalDeviceTransport *)v7->_transport deviceInfo];
    [(MRDTransportExternalDevice *)v7 _handleDeviceInfoChange:deviceInfo oldDevice:0];
  }

  return v7;
}

- (void)dealloc
{
  [(MRDTransportExternalDevice *)self _cleanUpWithReason:1 error:0];
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  [(MRExternalClientConnection *)self->_clientConnection setDelegate:0];
  v4.receiver = self;
  v4.super_class = MRDTransportExternalDevice;
  [(MRDTransportExternalDevice *)&v4 dealloc];
}

- (id)shortDescription
{
  v2 = [[NSString alloc] initWithFormat:@"%@:%p", objc_opt_class(), self];

  return v2;
}

- (NSString)debugDescription
{
  v3 = objc_opt_class();
  name = [(MRDTransportExternalDevice *)self name];
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  v6 = MRCreateIndentedDebugDescriptionFromObject();
  transport = [(MRDTransportExternalDevice *)self transport];
  v8 = MRCreateIndentedDebugDescriptionFromObject();
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  v10 = MRCreateIndentedDebugDescriptionFromObject();
  v11 = [NSString stringWithFormat:@"<%@:%p {\n    device=%@\n    origin=%@\n    transport=%@\n    connection=%@\n}>", v3, self, name, v6, v8, v10];

  return v11;
}

- (id)groupSessionToken
{
  deviceInfo = [(MRDTransportExternalDevice *)self deviceInfo];
  groupSessionToken = [deviceInfo groupSessionToken];
  equivalentMediaIdentifier = [groupSessionToken equivalentMediaIdentifier];
  if (equivalentMediaIdentifier)
  {
    v6 = equivalentMediaIdentifier;
    v7 = +[MRSharedSettings currentSettings];
    supportGroupSessionHome = [v7 supportGroupSessionHome];

    if (!supportGroupSessionHome)
    {
      groupSessionToken2 = 0;
      goto LABEL_6;
    }
  }

  else
  {
  }

  deviceInfo2 = [(MRDTransportExternalDevice *)self deviceInfo];
  groupSessionToken2 = [deviceInfo2 groupSessionToken];

LABEL_6:

  return groupSessionToken2;
}

- (void)setWantsNowPlayingNotifications:(BOOL)notifications
{
  if (self->_wantsNowPlayingNotifications != notifications)
  {
    self->_wantsNowPlayingNotifications = notifications;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsNowPlayingArtworkNotifications:(BOOL)notifications
{
  if (self->_wantsNowPlayingArtworkNotifications != notifications)
  {
    self->_wantsNowPlayingArtworkNotifications = notifications;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsVolumeNotifications:(BOOL)notifications
{
  if (self->_wantsVolumeNotifications != notifications)
  {
    self->_wantsVolumeNotifications = notifications;
    MRMediaRemoteSetWantsVolumeControlNotifications();

    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsOutputDeviceNotifications:(BOOL)notifications
{
  if (self->_wantsOutputDeviceNotifications != notifications)
  {
    self->_wantsOutputDeviceNotifications = notifications;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsEndpointChangeNotifications:(BOOL)notifications
{
  if (self->_wantsEndpointChangeNotifications != notifications)
  {
    self->_wantsEndpointChangeNotifications = notifications;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (void)setWantsSystemEndpointNotifications:(BOOL)notifications
{
  if (self->_wantsSystemEndpointNotifications != notifications)
  {
    self->_wantsSystemEndpointNotifications = notifications;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
  }
}

- (id)subscribedPlayerPaths
{
  subscribedPlayerPaths = [(MRExternalDeviceTransport *)self->_transport subscribedPlayerPaths];
  v4 = [subscribedPlayerPaths copy];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(NSArray *)self->_subscribedPlayerPaths copy];
  }

  v7 = v6;

  return v7;
}

- (void)setSubscribedPlayerPaths:(id)paths
{
  pathsCopy = paths;
  subscribedPlayerPaths = self->_subscribedPlayerPaths;
  if (subscribedPlayerPaths != pathsCopy)
  {
    v9 = pathsCopy;
    v6 = [(NSArray *)subscribedPlayerPaths isEqual:pathsCopy];
    pathsCopy = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      v8 = self->_subscribedPlayerPaths;
      self->_subscribedPlayerPaths = v7;

      [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessage];
      pathsCopy = v9;
    }
  }
}

- (void)setName:(id)name
{
  nameCopy = name;
  nameCopy2 = name;
  uTF8String = [nameCopy2 UTF8String];
  v8 = [nameCopy2 length];

  v12 = [NSData dataWithBytes:uTF8String length:v8];
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  v10 = [MRGenericMessage alloc];
  v11 = [v10 initWithKey:MRGenericMessageSetNameKey data:v12];
  [clientConnection sendMessage:v11];
}

- (void)setClientConnection:(id)connection
{
  connectionCopy = connection;
  v3 = connectionCopy;
  msv_dispatch_sync_on_queue();
}

- (MRExternalClientConnection)clientConnection
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350DC;
  v8 = sub_100035A24;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)setCustomOrigin:(id)origin
{
  originCopy = origin;
  v3 = originCopy;
  msv_dispatch_sync_on_queue();
}

- (MROrigin)customOrigin
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x3032000000;
  v7 = sub_1000350DC;
  v8 = sub_100035A24;
  v9 = 0;
  msv_dispatch_sync_on_queue();
  v2 = v5[5];
  _Block_object_dispose(&v4, 8);

  return v2;
}

- (void)setDeviceInfo:(id)info
{
  v4 = [info copy];
  v3 = v4;
  msv_dispatch_sync_on_queue();
}

- (id)supportedMessages
{
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages = [clientConnection supportedMessages];

  return supportedMessages;
}

- (void)setConnectionState:(unsigned int)state error:(id)error
{
  v4 = *&state;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  errorCopy = error;
  msv_dispatch_sync_on_queue();
  [(MRDTransportExternalDevice *)self _callClientConnectionStateCallback:v4 previousConnectionState:*(v8 + 6) error:errorCopy, _NSConcreteStackBlock, 3221225472, sub_1000D49EC, &unk_1004BB9A8, self];

  _Block_object_dispose(&v7, 8);
}

- (void)sendButtonEvent:(_MRHIDButtonEvent)event
{
  v3 = *&event.down;
  v4 = *&event.usagePage;
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (!errorForCurrentState)
  {
    v7 = [[MRSendButtonEventMessage alloc] initWithButtonEvent:{v4, v3}];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    [clientConnection sendMessage:v7];

    errorForCurrentState = 0;
  }
}

- (id)lastConnectionError
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000350DC;
  v10 = sub_100035A24;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D4DB8;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = [v7[5] copy];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)_onWorkerQueue_connectWithOptions:(unsigned int)options isRetry:(BOOL)retry userInfo:(id)info completion:(id)completion
{
  retryCopy = retry;
  infoCopy = info;
  completionCopy = completion;
  v10 = +[NSDate date];
  v11 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v12 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];
  v71 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionClientBundleIDUserInfoKey];
  v13 = [(MRExternalDeviceTransport *)self->_transport description];
  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions", v11];
  v15 = v14;
  if (v13)
  {
    [v14 appendFormat:@" for %@", v13];
  }

  if (v12)
  {
    [v15 appendFormat:@" because %@", v12];
  }

  v16 = _MRLogForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v15;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v96[0] = _NSConcreteStackBlock;
  v96[1] = 3221225472;
  v96[2] = sub_1000D5E9C;
  v96[3] = &unk_1004B9780;
  v66 = v13;
  v97 = v66;
  v98 = @"TransportExternalDevice.connectWithOptions";
  v17 = v11;
  v99 = v17;
  v18 = v10;
  v100 = v18;
  v65 = completionCopy;
  v101 = v65;
  v70 = objc_retainBlock(v96);
  v95[0] = _NSConcreteStackBlock;
  v95[1] = 3221225472;
  v95[2] = sub_1000D60F0;
  v95[3] = &unk_1004BB9D0;
  v95[4] = self;
  v73 = objc_retainBlock(v95);
  if (retryCopy)
  {
    [(MRDTransportExternalDevice *)self setConnectionState:1 error:0];
  }

  else
  {
    self->_reconnectionAttemptCount = 0;
  }

  v67 = [NSMutableDictionary dictionaryWithCapacity:5];
  if (retryCopy)
  {
    [(MRDTransportExternalDevice *)self _cleanUpStreamsWithReason:2 error:0];
  }

  else
  {
    v19 = objc_autoreleasePoolPush();
    [(MRDTransportExternalDevice *)self _cleanUpWithReason:2 error:0];
    objc_autoreleasePoolPop(v19);
  }

  v20 = (v73[2])();
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_15:
      v22 = @"Interrupted";
LABEL_20:

      v72 = v18;
      goto LABEL_21;
    }

    *buf = 138543874;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v103 = v20;
    v49 = "<%{public}@> Exiting connection attempt due to disconnection request for device %{public}@. %{public}@";
LABEL_39:
    _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, v49, buf, 0x20u);
    goto LABEL_15;
  }

  v20 = [(MRDTransportExternalDevice *)self _onWorkerQueue_initializeConnectionWithOptions:options userInfo:infoCopy];
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v103 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Failed to initialize IO streams for device: %{public}@. %{public}@", buf, 0x20u);
    }

    v22 = @"Failed to create IO Streams";
    goto LABEL_20;
  }

  v20 = (v73[2])();
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

    goto LABEL_33;
  }

  [v18 timeIntervalSinceNow];
  v51 = [NSNumber numberWithDouble:fabs(v50)];
  [v67 setObject:v51 forKeyedSubscript:kMRConnectionCreateIOStreamsDurationKey];

  v52 = +[NSDate date];

  v20 = [(MRDTransportExternalDevice *)self _onWorkerQueue_loadDeviceInfoWithUserInfo:infoCopy];
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v103 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Error loading device info for device %{public}@. %{public}@", buf, 0x20u);
    }

    v22 = @"Failed to load device info";
LABEL_44:
    v18 = v52;
    goto LABEL_20;
  }

  v20 = (v73[2])();
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v103 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Exiting connection attempt due to disconnection request for %{public}@. %{public}@", buf, 0x20u);
    }

    v22 = @"Interrupted";
    goto LABEL_44;
  }

  [v52 timeIntervalSinceNow];
  v54 = [NSNumber numberWithDouble:fabs(v53)];
  [v67 setObject:v54 forKeyedSubscript:kMRConnectionLoadDeviceInfoDurationKey];

  v18 = +[NSDate date];

  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  LODWORD(v54) = customOrigin == 0;

  if (v54)
  {
    v20 = [(MRDTransportExternalDevice *)self _onWorkerQueue_registerCustomOriginWithUserInfo:infoCopy];
    if (v20)
    {
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = self;
        *&buf[22] = 2114;
        v103 = v20;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Failed to register custom origin for device %{public}@. %{public}@", buf, 0x20u);
      }

      v22 = @"Failed to register custom origin";
      goto LABEL_20;
    }
  }

  else
  {
    v20 = [(MRDTransportExternalDevice *)self _onWorkerQueue_reRegisterCustomOriginWithUserInfo:infoCopy];
    if (v20)
    {
      v21 = _MRLogForCategory();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        *&buf[4] = v17;
        *&buf[12] = 2114;
        *&buf[14] = self;
        *&buf[22] = 2114;
        v103 = v20;
        _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Failed to re-register custom origin for device %{public}@. %{public}@", buf, 0x20u);
      }

      v22 = @"Failed to re-register custom origin";
      goto LABEL_20;
    }
  }

  v20 = (v73[2])();
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_15;
    }

LABEL_33:
    *buf = 138543874;
    *&buf[4] = v17;
    *&buf[12] = 2114;
    *&buf[14] = self;
    *&buf[22] = 2114;
    v103 = v20;
    v49 = "<%{public}@> Exiting connection attempt due to disconnection request for %{public}@. %{public}@";
    goto LABEL_39;
  }

  [v18 timeIntervalSinceNow];
  v57 = [NSNumber numberWithDouble:fabs(v56)];
  [v67 setObject:v57 forKeyedSubscript:kMRConnectionRegisterCustomOriginDurationKey];

  v72 = +[NSDate date];

  v20 = [(MRDTransportExternalDevice *)self _onWorkerQueue_syncClientStateWithUserInfo:infoCopy];
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v103 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Failed to sync client state for device %{public}@. %{public}@", buf, 0x20u);
    }

    v22 = @"Failed to sync client state";
LABEL_69:
    v18 = v72;
    goto LABEL_20;
  }

  v20 = (v73[2])();
  if (v20)
  {
    v21 = _MRLogForCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      *&buf[4] = v17;
      *&buf[12] = 2114;
      *&buf[14] = self;
      *&buf[22] = 2114;
      v103 = v20;
      _os_log_error_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "<%{public}@> Exiting connection attempt due to disconnection request for %{public}@. %{public}@", buf, 0x20u);
    }

    v22 = @"Interrupted";
    goto LABEL_69;
  }

  [v72 timeIntervalSinceNow];
  v59 = [NSNumber numberWithDouble:fabs(v58)];
  [v67 setObject:v59 forKeyedSubscript:kMRConnectionSyncClientStateDurationKey];

  [(MRDTransportExternalDevice *)self _onWorkerQueue_sendBatchedMessages];
  v60 = +[MRUserSettings currentSettings];
  [v60 externalDeviceArtificalConnectionDelay];
  v62 = v61;

  if (v62 > 0.0)
  {
    v63 = _MRLogForCategory();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      *&buf[4] = @"TransportExternalDevice.connectWithOptions";
      *&buf[12] = 2114;
      *&buf[14] = v17;
      *&buf[22] = 2112;
      v103 = @"Artifical Delay...";
      _os_log_impl(&_mh_execute_header, v63, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v21 = dispatch_semaphore_create(0);
    v64 = dispatch_time(0, (v62 * 1000000000.0));
    dispatch_semaphore_wait(v21, v64);
    v22 = 0;
    v20 = 0;
    goto LABEL_69;
  }

  v22 = 0;
  v20 = 0;
LABEL_21:
  v23 = +[NSDate date];
  [v23 timeIntervalSinceDate:v72];
  v25 = v24;

  v26 = [NSString alloc];
  name = [(MRExternalDeviceTransport *)self->_transport name];
  v28 = [(MRExternalDeviceTransport *)self->_transport uid];
  v29 = v28;
  v30 = options & 1;
  v31 = @"success";
  if (v20)
  {
    v31 = v20;
  }

  v69 = [v26 initWithFormat:@"<%@> Connection to: %@ (%@) from client: %@ isRetry: %u allowAuth: %u reason: %@ result: %@ in: %.2f", v17, name, v28, v71, retryCopy, options & 1, v12, v31, v25];

  v32 = _MRLogForCategory();
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *&buf[4] = @"TransportExternalDevice.connectWithOptions";
    *&buf[12] = 2114;
    *&buf[14] = v17;
    *&buf[22] = 2112;
    v103 = v69;
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v82 = _NSConcreteStackBlock;
  v83 = 3221225472;
  v84 = sub_1000D6264;
  v85 = &unk_1004BB9F8;
  objc_copyWeak(v91, &location);
  v92 = retryCopy;
  v33 = v12;
  v86 = v33;
  v34 = v17;
  v87 = v34;
  v35 = v71;
  v88 = v35;
  v93 = v30;
  v91[1] = v25;
  v36 = v67;
  v89 = v36;
  v90 = v22;
  MRAnalyticsSendEvent();
  if (v20)
  {
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000D64B0;
    block[3] = &unk_1004B6BB0;
    block[4] = self;
    v79 = v20;
    v80 = infoCopy;
    v81 = v70;
    dispatch_async(serialQueue, block);
  }

  else
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    LOBYTE(v103) = 0;
    v38 = self->_serialQueue;
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_1000D64C0;
    v77[3] = &unk_1004B6958;
    v77[4] = self;
    v77[5] = buf;
    dispatch_sync(v38, v77);
    if (*(*&buf[8] + 24) == 1)
    {
      v39 = +[NSMutableDictionary dictionary];
      [v39 setObject:v35 forKeyedSubscript:MRPowerLogInfoKeyClientBundleID];
      [v39 setObject:v33 forKeyedSubscript:MRPowerLogInfoKeyReason];
      [v39 setObject:self->_connectionUID forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionID];
      deviceInfo = [(MRDTransportExternalDevice *)self deviceInfo];
      v41 = [NSNumber numberWithInteger:MRPowerLogDeviceTypeFromDeviceInfo()];
      [v39 setObject:v41 forKeyedSubscript:MRPowerLogInfoKeyDeviceType];

      v42 = [NSNumber numberWithInteger:MRPowerLogConnectionTransportTypeFromTransport()];
      [v39 setObject:v42 forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionTransportType];

      [v39 setObject:&__kCFBooleanTrue forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionIsActive];
      v43 = +[MRPowerLogger sharedLogger];
      [v43 logEvent:MRPowerLogEventRemoteControlSession withInfo:v39];

      v44 = [MSVTimer alloc];
      v45 = dispatch_get_global_queue(9, 0);
      v75[0] = _NSConcreteStackBlock;
      v75[1] = 3221225472;
      v75[2] = sub_1000D6534;
      v75[3] = &unk_1004B6D08;
      v46 = v39;
      v76 = v46;
      v47 = [v44 initWithInterval:1 repeats:v45 queue:v75 block:1800.0];
      powerLogIntervalTimer = self->_powerLogIntervalTimer;
      self->_powerLogIntervalTimer = v47;
    }

    (v70[2])(v70, 0);
    [(MRDTransportExternalDevice *)self setConnectionState:2 error:0];
    _Block_object_dispose(buf, 8);
  }

  objc_destroyWeak(v91);
  objc_destroyWeak(&location);
}

- (void)_onSerialQueue_prepareToConnectWithOptions:(unsigned int)options userInfo:(id)info connectionAttemptDetails:(id)details connectionHandler:(id)handler
{
  infoCopy = info;
  detailsCopy = details;
  handlerCopy = handler;
  v13 = [MRBlockGuard alloc];
  v14 = [NSString alloc];
  requestID = [detailsCopy requestID];
  reason = [detailsCopy reason];
  v17 = [v14 initWithFormat:@"%@<%@:%@>", @"TransportExternalDevice.connectWithOptions", requestID, reason];
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000D6A94;
  v38[3] = &unk_1004B6FE8;
  v18 = handlerCopy;
  v39 = v18;
  v19 = [v13 initWithTimeout:v17 reason:v38 handler:30.0];

  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000D6AA4;
  v35[3] = &unk_1004B9BE0;
  v20 = v19;
  v36 = v20;
  v21 = v18;
  v37 = v21;
  v22 = objc_retainBlock(v35);
  connectionState = self->_connectionState;
  if (connectionState == 1)
  {
    v26 = [[NSString alloc] initWithFormat:@"Connection already in progress, batching connection attempt %@", self->_pendingConnectCompletionHandlers];
    v27 = _MRLogForCategory();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      requestID2 = [detailsCopy requestID];
      *buf = 138543874;
      v41 = @"TransportExternalDevice.connectWithOptions";
      v42 = 2114;
      v43 = requestID2;
      v44 = 2112;
      v45 = v26;
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    if ((options & 1) != 0 && (self->_connectionOptions & 1) == 0)
    {
      v29 = _MRLogForCategory();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        requestID3 = [detailsCopy requestID];
        *buf = 138543874;
        v41 = @"TransportExternalDevice.connectWithOptions";
        v42 = 2114;
        v43 = requestID3;
        v44 = 2112;
        v45 = @"AuthUpgrade required";
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
      }

      self->_forceReconnectOnConnectionFailure = 1;
      self->_connectionOptions = options;
    }

    [v20 disarm];
  }

  else if (connectionState == 2)
  {
    v24 = _MRLogForCategory();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      requestID4 = [detailsCopy requestID];
      *buf = 138543874;
      v41 = @"TransportExternalDevice.connectWithOptions";
      v42 = 2114;
      v43 = requestID4;
      v44 = 2112;
      v45 = @"Already Connected";
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    (v22[2])(v22, 0);
  }

  else
  {
    self->_connectionOptions = options;
    [(MRDTransportExternalDevice *)self setConnectionState:1 error:0];
    workerQueue = self->_workerQueue;
    v33 = infoCopy;
    v34 = v22;
    v31 = MRCreateDonatedQosBlock();
    dispatch_async(workerQueue, v31);
  }
}

- (void)connectWithOptions:(unsigned int)options userInfo:(id)info completion:(id)completion
{
  v6 = *&options;
  completionCopy = completion;
  infoCopy = info;
  v9 = +[NSDate now];
  v10 = [[NSMutableDictionary alloc] initWithDictionary:infoCopy];
  v11 = [NSNumber numberWithUnsignedInt:v6];
  v37 = v10;
  [v10 setObject:v11 forKeyedSubscript:@"ConnectOptions"];

  v12 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v13 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];

  v14 = [[NSString alloc] initWithFormat:@"%@:%p, connectionID=%@", objc_opt_class(), self, self->_connectionUID];
  v15 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions", v12];
  v16 = v15;
  if (v14)
  {
    [v15 appendFormat:@" for %@", v14];
  }

  if (v13)
  {
    [v16 appendFormat:@" because %@", v13];
  }

  v38 = v13;
  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v48 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v18 = qos_class_self();
  v19 = [[NSString alloc] initWithFormat:@"com.apple.mediaremote.transportExternalDevice.connect.%@", v12];
  uTF8String = [v19 UTF8String];
  v21 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v22 = dispatch_queue_attr_make_with_qos_class(v21, v18, 0);
  v23 = dispatch_queue_create_with_target_V2(uTF8String, v22, self->_notificationQueue);

  v40[0] = _NSConcreteStackBlock;
  v40[1] = 3221225472;
  v40[2] = sub_1000D6FA0;
  v40[3] = &unk_1004BBA48;
  v46 = v18;
  v41 = v12;
  v42 = v14;
  v44 = v23;
  v45 = completionCopy;
  v43 = v9;
  v35 = v23;
  v24 = completionCopy;
  v25 = v9;
  v26 = v14;
  v27 = v12;
  v28 = objc_retainBlock(v40);
  v29 = objc_alloc_init(MRExternalDeviceConnectionDetails);
  [v29 setStartDate:v25];
  [v29 setRequestID:v27];
  [v29 setReason:v38];
  [v29 setQos:v18];
  v30 = [v28 copy];
  [v29 setCompletion:v30];

  serialQueue = self->_serialQueue;
  v39 = v29;
  v32 = v37;
  v33 = v29;
  v34 = MRCreateDonatedQosBlock();
  dispatch_async(serialQueue, v34);
}

- (void)_onWorkerQueue_disconnect:(id)queue_disconnect
{
  queue_disconnectCopy = queue_disconnect;
  dispatch_assert_queue_V2(self->_workerQueue);
  [(MRDTransportExternalDevice *)self _onWorkerQueue_sendBatchedMessages];
  [(MRExternalDeviceTransport *)self->_transport resetWithError:queue_disconnectCopy];
  [(MRDTransportExternalDevice *)self _cleanUpWithReason:3 error:queue_disconnectCopy];
  if (self->_connectionState != 3)
  {
    [(MRDTransportExternalDevice *)self setConnectionState:3 error:queue_disconnectCopy];
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D74E8;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
}

- (void)_onSerialQueue_prepareToDisconnect:(id)disconnect userInfo:(id)info completion:(id)completion
{
  disconnectCopy = disconnect;
  completionCopy = completion;
  serialQueue = self->_serialQueue;
  infoCopy = info;
  dispatch_assert_queue_V2(serialQueue);
  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    sub_1003A811C();
  }

  v12 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionReasonUserInfoKey];
  v13 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v14 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionClientBundleIDUserInfoKey];

  domain = [disconnectCopy domain];
  v16 = [domain isEqualToString:kMRMediaRemoteFrameworkErrorDomain];

  if (v16)
  {
    code = [disconnectCopy code];
  }

  else
  {
    code = 1;
  }

  v61 = v12;
  v18 = v13;
  v19 = v14;
  if (qword_100529368 != -1)
  {
    sub_1003A818C();
  }

  v20 = qword_100529360;
  v21 = [NSNumber numberWithUnsignedInt:code];
  LOBYTE(v20) = [v20 containsObject:v21];

  bundleIdentifier = v19;
  v60 = v18;
  v23 = v18;
  uUIDString = v61;
  if ((v20 & 1) == 0)
  {
    if (self->_forceReconnectOnConnectionFailure)
    {
      v25 = 1;
      v26 = v18;
    }

    else
    {
      v26 = v18;
      v25 = code != 119 && self->_connectionRecoveryBehavior == 1 && [(MRExternalDeviceTransport *)self->_transport supportsReconnection]&& self->_reconnectionAttemptCount == 0;
    }

    v23 = v26;
    if (!v26)
    {
      v27 = [NSString alloc];
      if (self->_forceReconnectOnConnectionFailure)
      {
        v28 = @"authUpgrade";
      }

      else
      {
        connectionRecoveryBehavior = self->_connectionRecoveryBehavior;
        v30 = @"?";
        if (connectionRecoveryBehavior == 1)
        {
          v30 = @"AutoRetry";
        }

        if (connectionRecoveryBehavior)
        {
          v28 = v30;
        }

        else
        {
          v28 = @"None";
        }
      }

      v23 = [v27 initWithFormat:@"attemptReconnection due to <%@>", v28];
    }

    uUIDString = v61;
    if (!v61)
    {
      v31 = +[NSUUID UUID];
      uUIDString = [v31 UUIDString];
    }

    bundleIdentifier = v19;
    if (!v19)
    {
      v32 = +[MRDMediaRemoteServer server];
      daemonClient = [v32 daemonClient];
      bundleIdentifier = [daemonClient bundleIdentifier];
    }

    [(NSDate *)self->_connectionStateTimestamp timeIntervalSinceNow];
    reconnectionAttemptCount = self->_reconnectionAttemptCount;
    v73 = _NSConcreteStackBlock;
    v74 = 3221225472;
    v75 = sub_1000D7DCC;
    v76 = &unk_1004BBAB0;
    v77 = -v35;
    v78 = reconnectionAttemptCount;
    v79 = v25;
    MRAnalyticsSendEvent();
    v36 = _MRLogForCategory();
    v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
    if (v25)
    {
      if (v37)
      {
        v38 = self->_reconnectionAttemptCount + 1;
        *buf = 138543874;
        selfCopy3 = self;
        v82 = 2048;
        v83 = v38;
        v84 = 2048;
        v85 = 1;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Attempting to reconnect to external device %{public}@ (retry %llu out of %llu)", buf, 0x20u);
      }

      ++self->_reconnectionAttemptCount;
      self->_forceReconnectOnConnectionFailure = 0;
      v39 = +[NSDate now];
      v40 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.attemptReconnection", uUIDString];
      shortDescription = [(MRDTransportExternalDevice *)self shortDescription];

      if (shortDescription)
      {
        shortDescription2 = [(MRDTransportExternalDevice *)self shortDescription];
        [(MRDTransportExternalDevice *)v40 appendFormat:@" for %@", shortDescription2];
      }

      v43 = _MRLogForCategory();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        selfCopy3 = v40;
        _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
      }

      [(MRDTransportExternalDevice *)self setConnectionState:1 error:0];
      v44 = [[NSMutableArray alloc] initWithArray:self->_batchedRequestsDuringReconnectionAttempt];
      batchedRequestsDuringReconnectionAttempt = self->_batchedRequestsDuringReconnectionAttempt;
      self->_batchedRequestsDuringReconnectionAttempt = v44;

      v46 = dispatch_time(0, 3500000000);
      workerQueue = self->_workerQueue;
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1000D7EE4;
      block[3] = &unk_1004BBAD8;
      v23 = v23;
      v67 = v23;
      uUIDString = uUIDString;
      v68 = uUIDString;
      bundleIdentifier = bundleIdentifier;
      v69 = bundleIdentifier;
      selfCopy2 = self;
      v71 = v39;
      v72 = completionCopy;
      v48 = completionCopy;
      v49 = v39;
      dispatch_after(v46, workerQueue, block);

      goto LABEL_46;
    }

    if (v37)
    {
      v50 = self->_connectionRecoveryBehavior;
      v51 = self->_reconnectionAttemptCount;
      *buf = 138544130;
      if (v50 == 1)
      {
        v52 = "retry";
      }

      else
      {
        v52 = "none";
      }

      selfCopy3 = self;
      v82 = 2114;
      v83 = disconnectCopy;
      v84 = 2082;
      v85 = v52;
      v86 = 2048;
      v87 = v51;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Not attempting reconnect of external device %{public}@ (error = %{public}@, recovery behavior = %{public}s, attempt count = %llu)", buf, 0x2Au);
    }
  }

  powerLogIntervalTimer = self->_powerLogIntervalTimer;
  self->_powerLogIntervalTimer = 0;

  if (self->_originalConnectionStartDate)
  {
    v54 = +[NSMutableDictionary dictionary];
    [v54 setObject:self->_connectionUID forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionID];
    [v54 setObject:&__kCFBooleanFalse forKeyedSubscript:MRPowerLogInfoKeyRemoteControlConnectionIsActive];
    v55 = +[MRPowerLogger sharedLogger];
    [v55 logEvent:MRPowerLogEventRemoteControlSession withInfo:v54];
  }

  cryptoSession = [(MRExternalClientConnection *)self->_clientConnection cryptoSession];
  [cryptoSession close];

  self->_disconnecting = 1;
  objc_initWeak(buf, self);
  v57 = self->_workerQueue;
  v62[0] = _NSConcreteStackBlock;
  v62[1] = 3221225472;
  v62[2] = sub_1000D82AC;
  v62[3] = &unk_1004BBB00;
  objc_copyWeak(&v65, buf);
  v63 = disconnectCopy;
  v64 = completionCopy;
  v58 = completionCopy;
  dispatch_async(v57, v62);

  objc_destroyWeak(&v65);
  objc_destroyWeak(buf);
LABEL_46:
  [(MRDTransportExternalDevice *)self _onSerialQueue_completeGroupSessionRequestsWithIdentifier:0 error:disconnectCopy];
}

- (void)_callAllPendingCompletionsWithError:(id)error
{
  errorCopy = error;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_1000350DC;
  v29 = sub_100035A24;
  v30 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 3221225472;
  v21 = sub_1000D860C;
  v22 = &unk_1004B6D30;
  selfCopy = self;
  v24 = &v25;
  msv_dispatch_sync_on_queue();
  if ([v26[5] count] >= 2)
  {
    v5 = [NSString alloc];
    v6 = [v5 initWithFormat:@"Calling batched completions %@", v26[5]];
    v7 = _MRLogForCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      firstObject = [v26[5] firstObject];
      requestID = [firstObject requestID];
      *buf = 138543874;
      v33 = @"TransportExternalDevice.connectWithOptions";
      v34 = 2114;
      v35 = requestID;
      v36 = 2112;
      v37 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = v26[5];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v31 count:16];
  if (v11)
  {
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v10);
        }

        completion = [*(*(&v15 + 1) + 8 * v13) completion];
        (completion)[2](completion, errorCopy);

        v13 = v13 + 1;
      }

      while (v11 != v13);
      v11 = [v10 countByEnumeratingWithState:&v15 objects:v31 count:16];
    }

    while (v11);
  }

  _Block_object_dispose(&v25, 8);
}

- (void)disconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D870C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = disconnectCopy;
  v6 = disconnectCopy;
  dispatch_async(serialQueue, v7);
}

- (void)verifyConnectionStatusAndMaybeDisconnect:(id)disconnect completion:(id)completion
{
  disconnectCopy = disconnect;
  completionCopy = completion;
  objc_initWeak(&location, self);
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000D8824;
  v9[3] = &unk_1004BBB28;
  v8 = completionCopy;
  v10 = v8;
  objc_copyWeak(&v11, &location);
  [(MRDTransportExternalDevice *)self ping:v9 callback:self->_workerQueue withQueue:7.0];
  objc_destroyWeak(&v11);

  objc_destroyWeak(&location);
}

- (void)sendCustomData:(id)data withName:(id)name
{
  dataCopy = data;
  nameCopy = name;
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    v9 = _MRLogForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_1003A8274();
    }
  }

  else
  {
    v10 = [[MRGenericMessage alloc] initWithKey:nameCopy data:dataCopy];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    [clientConnection sendMessage:v10];
  }
}

- (void)ping:(double)ping callback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000D8BC0;
  v23[3] = &unk_1004BAD88;
  v10 = [[MSVBlockGuard alloc] initWithDeallocHandler:&stru_1004BBB48];
  v24 = v10;
  v11 = callbackCopy;
  v26 = v11;
  v12 = queueCopy;
  v25 = v12;
  v13 = objc_retainBlock(v23);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    v15 = _MRLogForCategory();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      sub_1003A82DC();
    }

    (v13[2])(v13, errorForCurrentState);
  }

  else
  {
    v16 = [[MRBlockGuard alloc] initWithTimeout:@"ping" reason:v13 handler:ping];
    v17 = [[MRGenericMessage alloc] initWithKey:0 data:0];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000D8C90;
    v20[3] = &unk_1004BBB70;
    v21 = v16;
    v22 = v13;
    v19 = v16;
    [clientConnection sendMessage:v17 reply:v20];
  }
}

- (id)currentClientUpdatesConfigMessage
{
  v3 = objc_alloc_init(MRProtocolMessageOptions);
  [v3 setPriority:5];
  [v3 setWaking:1];
  v4 = [MRClientUpdatesConfigMessage alloc];
  wantsNowPlayingNotifications = [(MRDTransportExternalDevice *)self wantsNowPlayingNotifications];
  wantsNowPlayingArtworkNotifications = [(MRDTransportExternalDevice *)self wantsNowPlayingArtworkNotifications];
  wantsVolumeNotifications = [(MRDTransportExternalDevice *)self wantsVolumeNotifications];
  wantsOutputDeviceNotifications = [(MRDTransportExternalDevice *)self wantsOutputDeviceNotifications];
  wantsSystemEndpointNotifications = [(MRDTransportExternalDevice *)self wantsSystemEndpointNotifications];
  subscribedPlayerPaths = [(MRDTransportExternalDevice *)self subscribedPlayerPaths];
  v11 = [v4 initWithNowPlayingUpdates:wantsNowPlayingNotifications artworkUpdates:wantsNowPlayingArtworkNotifications volumeUpdates:wantsVolumeNotifications keyboardUpdates:0 outputDeviceUpdates:wantsOutputDeviceNotifications systemEndpointUpdates:wantsSystemEndpointNotifications subscribedPlayerPaths:subscribedPlayerPaths];

  [v11 setTransportOptions:v3];

  return v11;
}

- (void)sendClientUpdatesConfigMessageWithCompletion:(id)completion
{
  completionCopy = completion;
  deviceInfo = [(MRDTransportExternalDevice *)self deviceInfo];
  objc_initWeak(&location, self);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000D9064;
  v17[3] = &unk_1004B9498;
  objc_copyWeak(&v19, &location);
  v6 = completionCopy;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v7[2])(v7, errorForCurrentState);
  }

  else
  {
    self->_isClientSyncActive = 1;
    SharedQueueVersion = MRPairedDeviceGetSharedQueueVersion();
    if (v6 && SharedQueueVersion >= 2)
    {
      clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
      currentClientUpdatesConfigMessage = [(MRDTransportExternalDevice *)self currentClientUpdatesConfigMessage];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_1000D9170;
      v15[3] = &unk_1004BBBC0;
      v16 = v7;
      [clientConnection sendMessage:currentClientUpdatesConfigMessage reply:v15];

      Error = v16;
    }

    else
    {
      clientConnection2 = [(MRDTransportExternalDevice *)self clientConnection];
      currentClientUpdatesConfigMessage2 = [(MRDTransportExternalDevice *)self currentClientUpdatesConfigMessage];
      [clientConnection2 sendMessage:currentClientUpdatesConfigMessage2];

      Error = MRMediaRemoteCreateError();
      (v7[2])(v7, Error);
    }
  }

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

- (void)setOutputDeviceVolume:(float)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_1000D9530;
  v33[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v35 = completionCopy;
  v16 = queueCopy;
  v34 = v16;
  v17 = objc_retainBlock(v33);
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000D9658;
    v25[3] = &unk_1004BBBE8;
    v25[4] = selfCopy;
    volumeCopy = volume;
    v26 = dCopy;
    v27 = detailsCopy;
    v28 = v16;
    v29 = completionCopy;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v25])
    {
      (v17[2])(v17, errorForCurrentState);
    }
  }

  else
  {
    v20 = objc_alloc_init(MRProtocolMessageOptions);
    [v20 setPriority:4];
    [v20 setWaking:1];
    v21 = [MRSetVolumeMessage alloc];
    *&v22 = volume;
    v23 = [v21 initWithVolume:dCopy outputDeviceUID:detailsCopy details:v22];
    [v23 setTransportOptions:v20];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000D95F8;
    v31[3] = &unk_1004BBBC0;
    v32 = v17;
    [clientConnection sendMessage:v23 reply:v31];
  }
}

- (void)muteOutputDeviceVolume:(BOOL)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  volumeCopy = volume;
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000D9908;
  v31[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v33 = completionCopy;
  v16 = queueCopy;
  v32 = v16;
  v17 = objc_retainBlock(v31);
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D9A30;
    v23[3] = &unk_1004BA5A0;
    v23[4] = selfCopy;
    v28 = volumeCopy;
    v24 = dCopy;
    v25 = detailsCopy;
    v26 = v16;
    v27 = completionCopy;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v23])
    {
      (v17[2])(v17, errorForCurrentState);
    }
  }

  else
  {
    v20 = objc_alloc_init(MRProtocolMessageOptions);
    [v20 setPriority:4];
    [v20 setWaking:1];
    v21 = [[MRMuteVolumeMessage alloc] initWithMuted:volumeCopy outputDeviceUID:dCopy details:detailsCopy];
    [v21 setTransportOptions:v20];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000D99D0;
    v29[3] = &unk_1004BBBC0;
    v30 = v17;
    [clientConnection sendMessage:v21 reply:v29];
  }
}

- (void)adjustOutputDeviceVolume:(int64_t)volume outputDeviceUID:(id)d details:(id)details queue:(id)queue completion:(id)completion
{
  dCopy = d;
  detailsCopy = details;
  queueCopy = queue;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_1000D9CE0;
  v31[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v33 = completionCopy;
  v16 = queueCopy;
  v32 = v16;
  v17 = objc_retainBlock(v31);
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000D9E08;
    v23[3] = &unk_1004BBC10;
    v23[4] = selfCopy;
    volumeCopy = volume;
    v24 = dCopy;
    v25 = detailsCopy;
    v26 = v16;
    v27 = completionCopy;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v23])
    {
      (v17[2])(v17, errorForCurrentState);
    }
  }

  else
  {
    v20 = objc_alloc_init(MRProtocolMessageOptions);
    [v20 setPriority:4];
    [v20 setWaking:1];
    v21 = [[MRAdjustVolumeMessage alloc] initWithAdjustment:volume outputDeviceUID:dCopy details:detailsCopy];
    [v21 setTransportOptions:v20];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000D9DA8;
    v29[3] = &unk_1004BBBC0;
    v30 = v17;
    [clientConnection sendMessage:v21 reply:v29];
  }
}

- (void)outputDeviceVolume:(id)volume queue:(id)queue completion:(id)completion
{
  volumeCopy = volume;
  queueCopy = queue;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000D9FD0;
  v18[3] = &unk_1004BBC38;
  completionCopy = completion;
  v20 = completionCopy;
  v11 = queueCopy;
  v19 = v11;
  v12 = objc_retainBlock(v18);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v12[2])(v12, errorForCurrentState, 0.0);
  }

  else
  {
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    v15 = [[MRGetVolumeMessage alloc] initWithOutputDeviceUID:volumeCopy];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000DA138;
    v16[3] = &unk_1004BBBC0;
    v17 = v12;
    [clientConnection sendMessage:v15 timeout:v16 reply:63.0];
  }
}

- (void)outputDeviceVolumeControlCapabilities:(id)capabilities queue:(id)queue completion:(id)completion
{
  capabilitiesCopy = capabilities;
  queueCopy = queue;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DA44C;
  v25[3] = &unk_1004BBC60;
  completionCopy = completion;
  v27 = completionCopy;
  v11 = queueCopy;
  v26 = v11;
  v12 = objc_retainBlock(v25);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v12[2])(v12, 0, errorForCurrentState);
  }

  else
  {
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    supportedMessages = [clientConnection supportedMessages];
    v16 = [supportedMessages isSupported:62];

    if (v16)
    {
      clientConnection2 = [(MRDTransportExternalDevice *)self clientConnection];
      v18 = [[MRGetVolumeControlCapabilitiesMessage alloc] initWithOutputDeviceUID:capabilitiesCopy];
      v23[0] = _NSConcreteStackBlock;
      v23[1] = 3221225472;
      v23[2] = sub_1000DA5AC;
      v23[3] = &unk_1004BBBC0;
      v24 = v12;
      [clientConnection2 sendMessage:v18 timeout:v23 reply:63.0];

      v19 = v24;
    }

    else
    {
      customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
      v21 = dispatch_get_global_queue(0, 0);
      v22 = v12;
      MRMediaRemoteGetPickedRoutedVolumeControlCapabilities();

      v19 = v22;
    }
  }
}

- (void)setListeningMode:(id)mode outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  modeCopy = mode;
  dCopy = d;
  queueCopy = queue;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000DA820;
  v21[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v23 = completionCopy;
  v14 = queueCopy;
  v22 = v14;
  v15 = objc_retainBlock(v21);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v15[2])(v15, errorForCurrentState);
  }

  else
  {
    v17 = [[MRSetListeningModeMessage alloc] initWithListeningMode:modeCopy outputDeviceUID:dCopy];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000DA974;
    v19[3] = &unk_1004BBBC0;
    v20 = v15;
    [clientConnection sendMessage:v17 reply:v19];
  }
}

- (void)setConversationDetectionEnabled:(BOOL)enabled outputDeviceUID:(id)d queue:(id)queue completion:(id)completion
{
  enabledCopy = enabled;
  dCopy = d;
  queueCopy = queue;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_1000DAB84;
  v20[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v22 = completionCopy;
  v13 = queueCopy;
  v21 = v13;
  v14 = objc_retainBlock(v20);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v14[2])(v14, errorForCurrentState);
  }

  else
  {
    v16 = [[MRSetConversationDetectionEnabledMessage alloc] initWithOutputDeviceUID:dCopy enabled:enabledCopy];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000DACD8;
    v18[3] = &unk_1004BBBC0;
    v19 = v14;
    [clientConnection sendMessage:v16 reply:v18];
  }
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  requestCopy = request;
  queueCopy = queue;
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000DAFF0;
  v28[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v30 = completionCopy;
  v11 = queueCopy;
  v29 = v11;
  v12 = objc_retainBlock(v28);
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000DB118;
    v22[3] = &unk_1004B6BB0;
    v22[4] = selfCopy;
    v23 = requestCopy;
    v24 = v11;
    v25 = completionCopy;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v22])
    {
      (v12[2])(v12, errorForCurrentState);
    }
  }

  else
  {
    if ([requestCopy type] == 1)
    {
      v15 = +[MRDeviceInfoRequest localDeviceInfo];
      outputDeviceUIDs = [requestCopy outputDeviceUIDs];
      deviceUID = [v15 deviceUID];
      v18 = [outputDeviceUIDs containsObject:deviceUID];

      if (v18)
      {
        v19 = MRMediaRemoteAirPlayReceiverCopyAuthorizationString();
        [requestCopy setPassword:v19];
      }
    }

    v20 = [[MRModifyOutputContextRequestMessage alloc] initWithRequest:requestCopy];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = sub_1000DB0B8;
    v26[3] = &unk_1004BBBC0;
    v27 = v12;
    [clientConnection sendMessage:v20 reply:v26];
  }
}

- (void)createHostedEndpointWithOutputDeviceUIDs:(id)ds details:(id)details queue:(id)queue completion:(id)completion
{
  dsCopy = ds;
  detailsCopy = details;
  queueCopy = queue;
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_1000DB384;
  v27[3] = &unk_1004BBCB0;
  completionCopy = completion;
  v29 = completionCopy;
  v14 = queueCopy;
  v28 = v14;
  v15 = objc_retainBlock(v27);
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000DB598;
    v20[3] = &unk_1004BBCD8;
    v20[4] = selfCopy;
    v21 = dsCopy;
    v22 = detailsCopy;
    v23 = v14;
    v24 = completionCopy;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v20])
    {
      (v15[2])(v15, 0, errorForCurrentState);
    }
  }

  else
  {
    v18 = [[MRCreateHostedEndpointRequestMessage alloc] initWithOutputDeviceUIDs:dsCopy];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_1000DB478;
    v25[3] = &unk_1004BBBC0;
    v26 = v15;
    [clientConnection sendMessage:v18 reply:v25];
  }
}

- (void)removeFromParentGroup:(id)group queue:(id)queue completion:(id)completion
{
  groupCopy = group;
  queueCopy = queue;
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000DB800;
  v23[3] = &unk_1004B9DE8;
  completionCopy = completion;
  v25 = completionCopy;
  v11 = queueCopy;
  v24 = v11;
  v12 = objc_retainBlock(v23);
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000DB954;
    v19[3] = &unk_1004B6BB0;
    v19[4] = selfCopy;
    v20 = groupCopy;
    v21 = v11;
    v22 = completionCopy;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v19])
    {
      (v12[2])(v12, errorForCurrentState);
    }
  }

  else
  {
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v16 = [MRRemoveFromParentGroupMessage alloc];
    v26 = groupCopy;
    v17 = [NSArray arrayWithObjects:&v26 count:1];
    v18 = [v16 initWithOutputDeviceUIDs:v17];
    [clientConnection sendMessage:v18];

    (v12[2])(v12, 0);
  }
}

- (void)requestGroupSessionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_1000DBB7C;
  v25[3] = &unk_1004BAD10;
  v11 = queueCopy;
  v26 = v11;
  v12 = completionCopy;
  v27 = v12;
  v13 = objc_retainBlock(v25);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v13[2])(v13, 0, errorForCurrentState);
  }

  else
  {
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 1;
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DBC68;
    block[3] = &unk_1004BBD00;
    block[4] = self;
    v20 = &v21;
    v19 = v13;
    dispatch_sync(serialQueue, block);
    if (*(v22 + 24) == 1)
    {
      v16 = [[MRRequestGroupSessionMessage alloc] initWithDetails:detailsCopy];
      clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
      [clientConnection sendMessage:v16];
    }

    _Block_object_dispose(&v21, 8);
  }
}

- (void)requestMicrophoneConnectionWithDetails:(id)details queue:(id)queue completion:(id)completion
{
  detailsCopy = details;
  queueCopy = queue;
  completionCopy = completion;
  v39[0] = _NSConcreteStackBlock;
  v39[1] = 3221225472;
  v39[2] = sub_1000DC318;
  v39[3] = &unk_1004BBD50;
  v11 = queueCopy;
  v40 = v11;
  v12 = completionCopy;
  v41 = v12;
  v13 = objc_retainBlock(v39);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    (v13[2])(v13, 0, errorForCurrentState);
  }

  else if (_os_feature_enabled_impl())
  {
    v31 = detailsCopy;
    v15 = +[MRDMediaRemoteServer server];
    [v15 loadLocalRapportDeviceInfo];

    v16 = +[MRDMediaRemoteServer server];
    sharedCompanionLinkClient = [v16 sharedCompanionLinkClient];
    localDevice = [sharedCompanionLinkClient localDevice];
    idsDeviceIdentifier = [localDevice idsDeviceIdentifier];

    if (idsDeviceIdentifier)
    {
      v20 = [MRBlockGuard alloc];
      serialQueue = self->_serialQueue;
      v37[0] = _NSConcreteStackBlock;
      v37[1] = 3221225472;
      v37[2] = sub_1000DC3E8;
      v37[3] = &unk_1004B6FE8;
      v22 = v13;
      v38 = v22;
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_1000DC400;
      v34[3] = &unk_1004BBD50;
      v35 = [v20 initWithTimeout:@"requestMicrophoneConnection" reason:serialQueue queue:v37 handler:30.0];
      v36 = v22;
      v23 = v35;
      v24 = objc_retainBlock(v34);
      v25 = [[MRMicrophoneConnectionRequestMessage alloc] initWithDetails:v31 rapportIdentifier:idsDeviceIdentifier];
      clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
      v32[0] = _NSConcreteStackBlock;
      v32[1] = 3221225472;
      v32[2] = sub_1000DC46C;
      v32[3] = &unk_1004BBBC0;
      v33 = v24;
      v27 = v24;
      [clientConnection sendMessage:v25 reply:v32];

      v28 = v38;
    }

    else
    {
      v28 = [[NSError alloc] initWithMRError:100 format:@"rapport identifier was nil"];
      (v13[2])(v13, 0, v28);
    }

    detailsCopy = v31;
  }

  else
  {
    v29 = _MRLogForCategory();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      sub_1003A834C(v29);
    }

    v30 = [[NSError alloc] initWithMRError:100 format:@"Feature flag disabled"];
    (v13[2])(v13, 0, v30);
  }
}

- (void)clientConnection:(id)connection didReceiveMessage:(id)message
{
  messageCopy = message;
  type = [messageCopy type];
  v7 = type;
  if (type > 103)
  {
    if (type <= 128)
    {
      switch(type)
      {
        case 'h':
          [(MRDTransportExternalDevice *)self _handleSetPlayerClientPropertiesMessage:messageCopy];
          break;
        case 'i':
          [(MRDTransportExternalDevice *)self _handleSetOriginClientPropertiesMessage:messageCopy];
          break;
        case 'm':
          [(MRDTransportExternalDevice *)self _handleDiscoveryUpdateOutputDevicesMessage:messageCopy];
          break;
      }
    }

    else if (type > 134)
    {
      if (type == 135)
      {
        [(MRDTransportExternalDevice *)self _handleApplicationConnectionProtocolMessage:messageCopy];
      }

      else if (type == 136)
      {
        [(MRDTransportExternalDevice *)self _handleInvalidateApplicationConnectionMessage:messageCopy];
      }
    }

    else if (type == 129)
    {
      [(MRDTransportExternalDevice *)self _handleVolumeMutedDidChangeMessage:messageCopy];
    }

    else if (type == 131)
    {
      [(MRDTransportExternalDevice *)self _handlePlayerClientParticipantsUpdateMessage:messageCopy];
    }
  }

  else if (type <= 16)
  {
    if (type)
    {
      if (type == 4)
      {
        [(MRDTransportExternalDevice *)self _handleSetStateMessage:messageCopy];
      }

      else if (type == 11)
      {
        [(MRDTransportExternalDevice *)self _handleNotificationMessage:messageCopy];
      }
    }

    else
    {
LABEL_14:
      v8 = _MRLogForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        uniqueIdentifier = [messageCopy uniqueIdentifier];
        replyIdentifier = [messageCopy replyIdentifier];
        v11 = 134218754;
        v12 = v7;
        v13 = 2112;
        v14 = uniqueIdentifier;
        v15 = 2112;
        v16 = replyIdentifier;
        v17 = 2114;
        selfCopy = self;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Unknown message type=%ld identifier=%@ replyIdentifier=%@ attempting to be handled for device %{public}@", &v11, 0x2Au);
      }
    }
  }

  else
  {
    switch(type)
    {
      case '!':
      case '""':
      case '9':
        goto LABEL_14;
      case '#':
      case '$':
      case '\'':
      case '(':
      case ')':
      case '+':
      case ',':
      case '-':
      case '0':
      case '1':
      case '2':
      case '3':
      case '<':
      case '>':
      case '?':
      case 'C':
      case 'D':
      case 'E':
      case 'F':
      case 'G':
      case 'I':
      case 'J':
      case 'K':
      case 'L':
        break;
      case '%':
        [(MRDTransportExternalDevice *)self _handleDeviceInfoUpdateMessage:messageCopy];
        break;
      case '&':
        [(MRDTransportExternalDevice *)self _handleSetConnectionStateMessage:messageCopy];
        break;
      case '*':
        [(MRDTransportExternalDevice *)self _handleGenericMessage:messageCopy];
        break;
      case '.':
        [(MRDTransportExternalDevice *)self _handleSetNowPlayingClientMessage:messageCopy];
        break;
      case '/':
        [(MRDTransportExternalDevice *)self _handleSetNowPlayingPlayerMessage:messageCopy];
        break;
      case '4':
        [(MRDTransportExternalDevice *)self _handleVolumeDidChangeMessage:messageCopy];
        break;
      case '5':
        [(MRDTransportExternalDevice *)self _handleRemoveClientMessage:messageCopy];
        break;
      case '6':
        [(MRDTransportExternalDevice *)self _handleRemovePlayerMessage:messageCopy];
        break;
      case '7':
        [(MRDTransportExternalDevice *)self _handleUpdateClientMessage:messageCopy];
        break;
      case '8':
        [(MRDTransportExternalDevice *)self _handleUpdateContentItemsMessage:messageCopy];
        break;
      case ':':
        [(MRDTransportExternalDevice *)self _handleUpdatePlayerMessage:messageCopy];
        break;
      case ';':
        [(MRDTransportExternalDevice *)self _handlePromptForRouteAuthorizationMessage:messageCopy];
        break;
      case '=':
        [(MRDTransportExternalDevice *)self _handlePresentRouteAuthorizationStatusMessage:messageCopy];
        break;
      case '@':
        [(MRDTransportExternalDevice *)self _handleVolumeControlCapabilitiesDidChangeMessage:messageCopy];
        break;
      case 'A':
        [(MRDTransportExternalDevice *)self _handleOutputDevicesUpdatedMessage:messageCopy];
        break;
      case 'B':
        [(MRDTransportExternalDevice *)self _handleOutputDevicesRemovedMessage:messageCopy];
        break;
      case 'H':
        [(MRDTransportExternalDevice *)self _handleSetDefaultSupportedCommandsMessage:messageCopy];
        break;
      case 'M':
        [(MRDTransportExternalDevice *)self _handleUpdateActiveSystemEndpoint:messageCopy];
        break;
      default:
        if (type == 17)
        {
          [(MRDTransportExternalDevice *)self _handleLegacyVolumeControlCapabilitiesDidChangeMessage:messageCopy];
        }

        break;
    }
  }
}

- (void)setDiscoveryMode:(unsigned int)mode forConfiguration:(id)configuration
{
  v4 = *&mode;
  configurationCopy = configuration;
  v9 = objc_alloc_init(MRProtocolMessageOptions);
  [v9 setPriority:4];
  [v9 setWaking:1];
  v7 = [[MRSetDiscoveryModeMessage alloc] initWithMode:v4 configuration:configurationCopy];

  [v7 setTransportOptions:v9];
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  [clientConnection sendMessage:v7];
}

- (void)_handleDiscoveryUpdateOutputDevicesMessage:(id)message
{
  messageCopy = message;
  outputDevices = [messageCopy outputDevices];
  configuration = [messageCopy configuration];

  [(MRDTransportExternalDevice *)self notifyDiscoveryOutputDevicesChanged:outputDevices forConfiguration:configuration];
}

- (void)_localDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = MRGetOriginFromUserInfo();
  if ([v5 isLocal])
  {
    userInfo2 = [notificationCopy userInfo];
    v7 = MRGetDeviceInfoFromUserInfo();

    if (v7)
    {
      clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
      v9 = [[MRDeviceInfoUpdateMessage alloc] initWithDeviceInfo:v7];
      [clientConnection sendMessage:v9];
    }
  }
}

- (void)_transportDeviceInfoDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v5 = [userInfo objectForKey:MRExternalDeviceTransportNewDeviceInfoUserInfoKey];

  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];

  if (clientConnection)
  {
    if (!self->_deviceInfo)
    {
      goto LABEL_7;
    }

    bluetoothAddress = [v5 bluetoothAddress];
    if (bluetoothAddress)
    {
      MRPairedDeviceSetBluetoothAddress();
    }
  }

  else
  {
    userInfo2 = [notificationCopy userInfo];
    bluetoothAddress = [userInfo2 objectForKey:MRExternalDeviceTransportOldDeviceInfoUserInfoKey];

    [(MRDTransportExternalDevice *)self _handleDeviceInfoChange:v5 oldDevice:bluetoothAddress];
  }

LABEL_7:
}

- (void)_activeSystemEndpointDidChangeNotification:(id)notification
{
  userInfo = [notification userInfo];
  v5 = [userInfo objectForKeyedSubscript:MRUpdateActiveSystemEndpointRequestUserInfoKey];

  type = [v5 type];
  outputDeviceUID = [v5 outputDeviceUID];
  if (outputDeviceUID)
  {
    outputDeviceUID2 = [v5 outputDeviceUID];
    v9 = +[MRAVOutputDevice localDeviceUID];
    v10 = [outputDeviceUID2 isEqualToString:v9];
  }

  else
  {
    v10 = 1;
  }

  if (!type)
  {
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    deviceInfo = [clientConnection deviceInfo];
    if ([deviceInfo isCompanion] && !objc_msgSend(v5, "isPairedDeviceSync"))
    {
      v13 = [v5 suppressPairedDeviceSync] | v10;

      if ((v13 & 1) == 0)
      {
        v14 = objc_alloc_init(MRProtocolMessageOptions);
        [v14 setPriority:4];
        if ([v5 demoteWhenSyncingToCompanion])
        {
          [v5 setType:2];
          v15 = _MRLogForCategory();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            v18 = 138412290;
            v19 = v5;
            _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Demoted Gizmo's %@ to RSE", &v18, 0xCu);
          }
        }

        v16 = [[MRUpdateActiveSystemEndpointMessage alloc] initWithRequest:v5];
        [v16 setTransportOptions:v14];
        clientConnection2 = [(MRDTransportExternalDevice *)self clientConnection];
        [clientConnection2 sendMessage:v16];
      }
    }

    else
    {
    }
  }
}

- (id)_onWorkerQueue_createClientConnectionWithTransport:(id)transport
{
  v3 = qword_100529378;
  transportCopy = transport;
  if (v3 != -1)
  {
    sub_1003A83F8();
  }

  v5 = [MRExternalClientConnection alloc];
  v6 = [v5 initWithConnection:transportCopy replyQueue:qword_100529370];

  return v6;
}

- (id)_onWorkerQueue_initializeConnectionWithOptions:(unsigned int)options userInfo:(id)info
{
  v4 = *&options;
  infoCopy = info;
  dispatch_assert_queue_V2(self->_workerQueue);
  v7 = +[NSDate date];
  v8 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v9 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.initializeConnection", v8];
  shortDescription = [(MRDTransportExternalDevice *)self shortDescription];

  if (shortDescription)
  {
    shortDescription2 = [(MRDTransportExternalDevice *)self shortDescription];
    [(__CFString *)v9 appendFormat:@" for %@", shortDescription2];
  }

  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v46 = v9;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  [(MRExternalDeviceTransport *)self->_transport setShouldUseSystemAuthenticationPrompt:v4 & 1];
  v13 = [(MRExternalDeviceTransport *)self->_transport createConnectionWithUserInfo:infoCopy];
  v14 = v13;
  if (v13)
  {
    [v13 setConnectOptions:v4];
    v15 = [(MRDTransportExternalDevice *)self _onWorkerQueue_createClientConnectionWithTransport:v14];
    [v15 setDelegate:self];
    [v15 setCryptoEnabled:{-[MRExternalDeviceTransport requiresCustomPairing](self->_transport, "requiresCustomPairing")}];
    [(MRDTransportExternalDevice *)self setClientConnection:v15];
    serialQueue = self->_serialQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DD6E4;
    block[3] = &unk_1004B6D08;
    block[4] = self;
    dispatch_async(serialQueue, block);

    shortDescription3 = [(MRDTransportExternalDevice *)self shortDescription];

    v18 = _MRLogForCategory();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    if (shortDescription3)
    {
      if (v19)
      {
        shortDescription4 = [(MRDTransportExternalDevice *)self shortDescription];
        v21 = +[NSDate date];
        [v21 timeIntervalSinceDate:v7];
        *buf = 138544386;
        v46 = @"TransportExternalDevice.connectWithOptions.initializeConnection";
        v47 = 2114;
        v48 = v8;
        v49 = 2112;
        v50 = v14;
        v51 = 2114;
        v52 = shortDescription4;
        v53 = 2048;
        v54 = v22;
        v23 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v24 = v18;
        v25 = 52;
LABEL_9:
        _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v23, buf, v25);

LABEL_15:
      }

LABEL_16:
      Error = 0;
      goto LABEL_17;
    }

    if (!v19)
    {
      goto LABEL_16;
    }

    shortDescription4 = +[NSDate date];
    [shortDescription4 timeIntervalSinceDate:v7];
    *buf = 138544130;
    v46 = @"TransportExternalDevice.connectWithOptions.initializeConnection";
    v47 = 2114;
    v48 = v8;
    v49 = 2112;
    v50 = v14;
    v51 = 2048;
    v52 = v29;
    v30 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v31 = v18;
    v32 = 42;
LABEL_14:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_15;
  }

  error = [(MRExternalDeviceTransport *)self->_transport error];

  if (error)
  {
    error2 = [(MRExternalDeviceTransport *)self->_transport error];
    Error = [error2 copy];
  }

  else
  {
    Error = MRMediaRemoteCreateError();
  }

  shortDescription5 = [(MRDTransportExternalDevice *)self shortDescription];

  v35 = _MRLogForCategory();
  v18 = v35;
  if (!Error)
  {
    v40 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
    if (shortDescription5)
    {
      if (!v40)
      {
        goto LABEL_16;
      }

      shortDescription4 = [(MRDTransportExternalDevice *)self shortDescription];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:v7];
      *buf = 138544130;
      v46 = @"TransportExternalDevice.connectWithOptions.initializeConnection";
      v47 = 2114;
      v48 = v8;
      v49 = 2114;
      v50 = shortDescription4;
      v51 = 2048;
      v52 = v41;
      v23 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
      v24 = v18;
      v25 = 42;
      goto LABEL_9;
    }

    if (!v40)
    {
      goto LABEL_16;
    }

    shortDescription4 = +[NSDate date];
    [shortDescription4 timeIntervalSinceDate:v7];
    *buf = 138543874;
    v46 = @"TransportExternalDevice.connectWithOptions.initializeConnection";
    v47 = 2114;
    v48 = v8;
    v49 = 2048;
    v50 = v43;
    v30 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v31 = v18;
    v32 = 32;
    goto LABEL_14;
  }

  v36 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
  if (shortDescription5)
  {
    if (!v36)
    {
      goto LABEL_17;
    }

    shortDescription6 = [(MRDTransportExternalDevice *)self shortDescription];
    v38 = +[NSDate date];
    [v38 timeIntervalSinceDate:v7];
    *buf = 138544386;
    v46 = @"TransportExternalDevice.connectWithOptions.initializeConnection";
    v47 = 2114;
    v48 = v8;
    v49 = 2114;
    v50 = Error;
    v51 = 2114;
    v52 = shortDescription6;
    v53 = 2048;
    v54 = v39;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
  }

  else
  {
    if (!v36)
    {
      goto LABEL_17;
    }

    shortDescription6 = +[NSDate date];
    [shortDescription6 timeIntervalSinceDate:v7];
    *buf = 138544130;
    v46 = @"TransportExternalDevice.connectWithOptions.initializeConnection";
    v47 = 2114;
    v48 = v8;
    v49 = 2114;
    v50 = Error;
    v51 = 2048;
    v52 = v42;
    _os_log_error_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
  }

LABEL_17:

  return Error;
}

- (id)_onWorkerQueue_loadDeviceInfoWithUserInfo:(id)info
{
  infoCopy = info;
  dispatch_assert_queue_V2(self->_workerQueue);
  v43 = +[NSDate date];
  v4 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];
  v5 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.loadDeviceInfo", v4];
  shortDescription = [(MRDTransportExternalDevice *)self shortDescription];

  if (shortDescription)
  {
    shortDescription2 = [(MRDTransportExternalDevice *)self shortDescription];
    [v5 appendFormat:@" for %@", shortDescription2];
  }

  v8 = _MRLogForCategory();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  if (clientConnection)
  {
    v10 = dispatch_semaphore_create(0);
    v11 = objc_alloc_init(MRProtocolMessageOptions);
    [v11 setPriority:5];
    [v11 setWaking:1];
    v12 = [MRDeviceInfoMessage alloc];
    v13 = +[MRDMediaRemoteServer server];
    deviceInfo = [v13 deviceInfo];
    v15 = [v12 initWithDeviceInfo:deviceInfo];

    [v15 setTransportOptions:v11];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v53 = sub_1000350DC;
    *v54 = sub_100035A24;
    *&v54[8] = 0;
    objc_initWeak(&location, self);
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = sub_1000DDEE4;
    v47[3] = &unk_1004BBD98;
    objc_copyWeak(&v50, &location);
    v49 = buf;
    v16 = v10;
    v48 = v16;
    v17 = objc_retainBlock(v47);
    v18 = +[MRUserSettings currentSettings];
    [v18 externalDeviceTimeoutDuration];
    v20 = v19;
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = sub_1000DE11C;
    v45[3] = &unk_1004BBBC0;
    v21 = v17;
    v46 = v21;
    [clientConnection sendMessage:v15 timeout:v45 reply:v20];

    v22 = +[MRUserSettings currentSettings];
    [v22 externalDeviceTimeoutDuration];
    v24 = dispatch_time(0, (v23 * 1000000000.0));

    if (dispatch_semaphore_wait(v16, v24))
    {
      v25 = [[NSError alloc] initWithMRError:113];
    }

    else
    {
      v25 = *(*&buf[8] + 40);
    }

    v26 = v25;

    objc_destroyWeak(&v50);
    objc_destroyWeak(&location);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v26 = [[NSError alloc] initWithMRError:100];
  }

  shortDescription3 = [(MRDTransportExternalDevice *)self shortDescription];

  v28 = _MRLogForCategory();
  v29 = v28;
  if (v26)
  {
    v30 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
    if (shortDescription3)
    {
      if (v30)
      {
        shortDescription4 = [(MRDTransportExternalDevice *)self shortDescription];
        v32 = +[NSDate date];
        [v32 timeIntervalSinceDate:v43];
        *buf = 138544386;
        *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
        *&buf[12] = 2114;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v53 = v26;
        *v54 = 2114;
        *&v54[2] = shortDescription4;
        *&v54[10] = 2048;
        *&v54[12] = v33;
        _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> for %{public}@ in %.4lf seconds", buf, 0x34u);
      }
    }

    else if (v30)
    {
      v38 = +[NSDate date];
      [v38 timeIntervalSinceDate:v43];
      *buf = 138544130;
      *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2114;
      v53 = v26;
      *v54 = 2048;
      *&v54[2] = v39;
      _os_log_error_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
    }
  }

  else
  {
    v34 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    if (shortDescription3)
    {
      if (v34)
      {
        shortDescription5 = [(MRDTransportExternalDevice *)self shortDescription];
        v36 = +[NSDate date];
        [v36 timeIntervalSinceDate:v43];
        *buf = 138544130;
        *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
        *&buf[12] = 2114;
        *&buf[14] = v4;
        *&buf[22] = 2114;
        v53 = shortDescription5;
        *v54 = 2048;
        *&v54[2] = v37;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
      }
    }

    else if (v34)
    {
      v40 = +[NSDate date];
      [v40 timeIntervalSinceDate:v43];
      *buf = 138543874;
      *&buf[4] = @"TransportExternalDevice.connectWithOptions.loadDeviceInfo";
      *&buf[12] = 2114;
      *&buf[14] = v4;
      *&buf[22] = 2048;
      v53 = v41;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    }
  }

  return v26;
}

- (id)_onWorkerQueue_registerCustomOriginWithUserInfo:(id)info
{
  workerQueue = self->_workerQueue;
  infoCopy = info;
  dispatch_assert_queue_V2(workerQueue);
  v6 = +[NSDate date];
  deviceInfo = [(MRDTransportExternalDevice *)self deviceInfo];
  if ([deviceInfo isCompanion])
  {
    v8 = 1129140302;
  }

  else
  {
    v9 = MSVNanoIDCreateWithCharacters();
    uTF8String = [v9 UTF8String];
    v8 = (uTF8String[1] << 16) | (*uTF8String << 24) | (uTF8String[2] << 8) | uTF8String[3];
  }

  name = [(MRDTransportExternalDevice *)self name];
  v12 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  v13 = [[MROrigin alloc] initWithIdentifier:v8 type:1 displayName:name];
  v14 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.registerCustomOrigin", v12];
  shortDescription = [(MRDTransportExternalDevice *)self shortDescription];

  if (shortDescription)
  {
    shortDescription2 = [(MRDTransportExternalDevice *)self shortDescription];
    [(__CFString *)v14 appendFormat:@" for %@", shortDescription2];
  }

  v17 = _MRLogForCategory();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v37 = v14;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v18 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v18 nowPlayingServer];
  [nowPlayingServer registerOrigin:v13 deviceInfo:deviceInfo];

  [(MRDTransportExternalDevice *)self setCustomOrigin:v13];
  shortDescription3 = [(MRDTransportExternalDevice *)self shortDescription];

  v21 = _MRLogForCategory();
  v22 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
  if (v13)
  {
    if (shortDescription3)
    {
      if (v22)
      {
        shortDescription4 = [(MRDTransportExternalDevice *)self shortDescription];
        v24 = +[NSDate date];
        [v24 timeIntervalSinceDate:v6];
        *buf = 138544386;
        v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
        v38 = 2114;
        v39 = v12;
        v40 = 2112;
        v41 = v13;
        v42 = 2114;
        v43 = shortDescription4;
        v44 = 2048;
        v45 = v25;
        v26 = "Response: %{public}@<%{public}@> returned <%@> for %{public}@ in %.4lf seconds";
        v27 = v21;
        v28 = 52;
LABEL_15:
        _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v26, buf, v28);

LABEL_21:
        goto LABEL_22;
      }

      goto LABEL_22;
    }

    if (!v22)
    {
      goto LABEL_22;
    }

    shortDescription4 = +[NSDate date];
    [shortDescription4 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
    v38 = 2114;
    v39 = v12;
    v40 = 2112;
    v41 = v13;
    v42 = 2048;
    v43 = v30;
    v31 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v32 = v21;
    v33 = 42;
LABEL_20:
    _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, v31, buf, v33);
    goto LABEL_21;
  }

  if (!shortDescription3)
  {
    if (!v22)
    {
      goto LABEL_22;
    }

    shortDescription4 = +[NSDate date];
    [shortDescription4 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
    v38 = 2114;
    v39 = v12;
    v40 = 2048;
    v41 = v34;
    v31 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v32 = v21;
    v33 = 32;
    goto LABEL_20;
  }

  if (v22)
  {
    shortDescription4 = [(MRDTransportExternalDevice *)self shortDescription];
    v24 = +[NSDate date];
    [v24 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v37 = @"TransportExternalDevice.connectWithOptions.registerCustomOrigin";
    v38 = 2114;
    v39 = v12;
    v40 = 2114;
    v41 = shortDescription4;
    v42 = 2048;
    v43 = v29;
    v26 = "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds";
    v27 = v21;
    v28 = 42;
    goto LABEL_15;
  }

LABEL_22:

  return 0;
}

- (id)_onWorkerQueue_reRegisterCustomOriginWithUserInfo:(id)info
{
  workerQueue = self->_workerQueue;
  infoCopy = info;
  dispatch_assert_queue_V2(workerQueue);
  v6 = +[NSDate date];
  v7 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.reregisterCustomOrigin", v7];
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];

  if (customOrigin)
  {
    customOrigin2 = [(MRDTransportExternalDevice *)self customOrigin];
    [(__CFString *)v8 appendFormat:@" for %@", customOrigin2];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v12 nowPlayingServer];
  customOrigin3 = [(MRDTransportExternalDevice *)self customOrigin];
  deviceInfo = [(MRDTransportExternalDevice *)self deviceInfo];
  [nowPlayingServer reregisterOrigin:customOrigin3 deviceInfo:deviceInfo];

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DEA18;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(serialQueue, block);
  shortDescription = [(MRDTransportExternalDevice *)self shortDescription];

  v18 = _MRLogForCategory();
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (shortDescription)
  {
    if (v19)
    {
      shortDescription2 = [(MRDTransportExternalDevice *)self shortDescription];
      v21 = +[NSDate date];
      [v21 timeIntervalSinceDate:v6];
      *buf = 138544130;
      v27 = @"TransportExternalDevice.connectWithOptions.reregisterCustomOrigin";
      v28 = 2114;
      v29 = v7;
      v30 = 2114;
      v31 = shortDescription2;
      v32 = 2048;
      v33 = v22;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);

LABEL_10:
    }
  }

  else if (v19)
  {
    shortDescription2 = +[NSDate date];
    [shortDescription2 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v27 = @"TransportExternalDevice.connectWithOptions.reregisterCustomOrigin";
    v28 = 2114;
    v29 = v7;
    v30 = 2048;
    v31 = v23;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
    goto LABEL_10;
  }

  return 0;
}

- (id)_onWorkerQueue_syncClientStateWithUserInfo:(id)info
{
  workerQueue = self->_workerQueue;
  infoCopy = info;
  dispatch_assert_queue_V2(workerQueue);
  v6 = +[NSDate date];
  v7 = [infoCopy objectForKeyedSubscript:MRExternalDeviceConnectionCorrelationIDUserInfoKey];

  v8 = [[NSMutableString alloc] initWithFormat:@"%@<%@>", @"TransportExternalDevice.connectWithOptions.syncClientState", v7];
  shortDescription = [(MRDTransportExternalDevice *)self shortDescription];

  if (shortDescription)
  {
    shortDescription2 = [(MRDTransportExternalDevice *)self shortDescription];
    [(__CFString *)v8 appendFormat:@" for %@", shortDescription2];
  }

  v11 = _MRLogForCategory();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v34 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  v12 = +[MRUserSettings currentSettings];
  [v12 externalDeviceTimeoutDuration];
  v14 = v13;
  v15 = objc_alloc_init(MRProtocolMessageOptions);
  [v15 setPriority:5];
  [v15 setWaking:1];
  v16 = [[MRSetConnectionStateMessage alloc] initWithConnectionState:2];
  [v16 setTransportOptions:v15];
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  [clientConnection sendMessage:v16];

  if (-[MRDTransportExternalDevice wantsNowPlayingNotifications](self, "wantsNowPlayingNotifications") || -[MRDTransportExternalDevice wantsVolumeNotifications](self, "wantsVolumeNotifications") || -[MRDTransportExternalDevice wantsOutputDeviceNotifications](self, "wantsOutputDeviceNotifications") || -[MRDTransportExternalDevice wantsNowPlayingArtworkNotifications](self, "wantsNowPlayingArtworkNotifications") || -[MRDTransportExternalDevice wantsSystemEndpointNotifications](self, "wantsSystemEndpointNotifications") || (-[MRDTransportExternalDevice subscribedPlayerPaths](self, "subscribedPlayerPaths"), v18 = objc_claimAutoreleasedReturnValue(), v19 = [v18 count], v18, v19))
  {
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000DEE98;
    v31[3] = &unk_1004BBDC0;
    v20 = dispatch_semaphore_create(0);
    v32 = v20;
    [(MRDTransportExternalDevice *)self sendClientUpdatesConfigMessageWithCompletion:v31];
    v21 = dispatch_time(0, (v14 * 1000000000.0));
    if (dispatch_semaphore_wait(v20, v21))
    {
      Error = MRMediaRemoteCreateError();
    }

    else
    {
      Error = 0;
    }
  }

  else
  {
    Error = 0;
  }

  shortDescription3 = [(MRDTransportExternalDevice *)self shortDescription];

  v24 = _MRLogForCategory();
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
  if (shortDescription3)
  {
    if (!v25)
    {
      goto LABEL_21;
    }

    shortDescription4 = [(MRDTransportExternalDevice *)self shortDescription];
    v27 = +[NSDate date];
    [v27 timeIntervalSinceDate:v6];
    *buf = 138544130;
    v34 = @"TransportExternalDevice.connectWithOptions.syncClientState";
    v35 = 2114;
    v36 = v7;
    v37 = 2114;
    v38 = shortDescription4;
    v39 = 2048;
    v40 = v28;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned for %{public}@ in %.4lf seconds", buf, 0x2Au);
  }

  else
  {
    if (!v25)
    {
      goto LABEL_21;
    }

    shortDescription4 = +[NSDate date];
    [shortDescription4 timeIntervalSinceDate:v6];
    *buf = 138543874;
    v34 = @"TransportExternalDevice.connectWithOptions.syncClientState";
    v35 = 2114;
    v36 = v7;
    v37 = 2048;
    v38 = v29;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Response: %{public}@<%{public}@> returned in %.4lf seconds", buf, 0x20u);
  }

LABEL_21:

  return Error;
}

- (void)_onWorkerQueue_sendBatchedMessages
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1000350DC;
  v19 = sub_100035A24;
  v20 = 0;
  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DF0D8;
  block[3] = &unk_1004B6D30;
  block[4] = self;
  block[5] = &v15;
  dispatch_sync(serialQueue, block);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = v16[5];
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v21 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = _MRLogForCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v9 = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Sending batched request...", v9, 2u);
        }

        (*(v7 + 16))(v7);
        v6 = v6 + 1;
      }

      while (v4 != v6);
      v4 = [v3 countByEnumeratingWithState:&v10 objects:v21 count:16];
    }

    while (v4);
  }

  _Block_object_dispose(&v15, 8);
}

- (void)_cleanUpStreamsWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  v7 = clientConnection;
  if (clientConnection)
  {
    [clientConnection setDelegate:0];
    if (reason)
    {
      if (reason != 1)
      {
        v8 = 0;
        if (reason != 3)
        {
LABEL_10:
          [v7 disconnectWithError:v8];

          goto LABEL_11;
        }

        v9 = errorCopy;
LABEL_9:
        v8 = v9;
        goto LABEL_10;
      }

      v10 = [NSError alloc];
      v11 = 123;
    }

    else
    {
      v10 = [NSError alloc];
      v11 = 1;
    }

    v9 = [v10 initWithMRError:v11];
    goto LABEL_9;
  }

LABEL_11:
  clientConnection2 = [(MRDTransportExternalDevice *)self clientConnection];
  [clientConnection2 setDelegate:0];

  [(MRDTransportExternalDevice *)self setClientConnection:0];
  transport = [(MRDTransportExternalDevice *)self transport];
  [transport resetWithError:errorCopy];
}

- (void)_onSerialQueue_registerOriginCallbacks
{
  dispatch_assert_queue_V2(self->_serialQueue);
  objc_initWeak(&location, self);
  v44[1] = _NSConcreteStackBlock;
  v44[2] = 3221225472;
  v44[3] = sub_1000DFA38;
  v44[4] = &unk_1004B8CC8;
  objc_copyWeak(&v45, &location);
  MRMediaRemoteSetCommandHandler();
  clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages = [clientConnection supportedMessages];
  v5 = [supportedMessages isSupported:32];

  if (v5)
  {
    v43[1] = _NSConcreteStackBlock;
    v43[2] = 3221225472;
    v43[3] = sub_1000DFB64;
    v43[4] = &unk_1004B8D18;
    objc_copyWeak(v44, &location);
    MRMediaRemotePlaybackQueueDataSourceSetRequestCallback();
    objc_destroyWeak(v44);
  }

  clientConnection2 = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages2 = [clientConnection2 supportedMessages];
  v8 = [supportedMessages2 isSupported:44];

  if (v8)
  {
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_1000DFC74;
    v42[3] = &unk_1004BBE10;
    objc_copyWeak(v43, &location);
    v9 = objc_retainBlock(v42);
    MRMediaRemoteSetBeginLyricsEventCallback();
    MRMediaRemoteSetEndLyricsEventCallback();

    objc_destroyWeak(v43);
  }

  clientConnection3 = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages3 = [clientConnection3 supportedMessages];
  v12 = [supportedMessages3 isSupported:73];

  if (v12)
  {
    v40[1] = _NSConcreteStackBlock;
    v40[2] = 3221225472;
    v40[3] = sub_1000DFD2C;
    v40[4] = &unk_1004B8D68;
    objc_copyWeak(&v41, &location);
    MRMediaRemotePlaybackSessionSetRequestCallbackForOrigin();
    v13 = +[MRNowPlayingOriginClientManager sharedManager];
    v14 = [v13 originClientForOrigin:self->_customOrigin];

    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000DFE48;
    v39[3] = &unk_1004B8DB8;
    objc_copyWeak(v40, &location);
    [v14 setPlaybackSessionMigrateRequestCallback:v39];
    objc_destroyWeak(v40);

    objc_destroyWeak(&v41);
  }

  clientConnection4 = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages4 = [clientConnection4 supportedMessages];
  v17 = [supportedMessages4 isSupported:75];

  if (v17)
  {
    v37[1] = _NSConcreteStackBlock;
    v37[2] = 3221225472;
    v37[3] = sub_1000DFF38;
    v37[4] = &unk_1004B8E08;
    objc_copyWeak(&v38, &location);
    MRMediaRemotePlaybackSessionSetMigrateBeginCallbackForOrigin();
    objc_destroyWeak(&v38);
  }

  clientConnection5 = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages5 = [clientConnection5 supportedMessages];
  v20 = [supportedMessages5 isSupported:76];

  if (v20)
  {
    v36[1] = _NSConcreteStackBlock;
    v36[2] = 3221225472;
    v36[3] = sub_1000E000C;
    v36[4] = &unk_1004B8E58;
    objc_copyWeak(v37, &location);
    MRMediaRemotePlaybackSessionSetMigrateFinalizeCallbackForOrigin();
    objc_destroyWeak(v37);
  }

  clientConnection6 = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages6 = [clientConnection6 supportedMessages];
  v23 = [supportedMessages6 isSupported:78];

  if (v23)
  {
    v35[1] = _NSConcreteStackBlock;
    v35[2] = 3221225472;
    v35[3] = sub_1000E0110;
    v35[4] = &unk_1004B8EA8;
    objc_copyWeak(v36, &location);
    MRMediaRemotePlaybackSessionSetMigratePostCallbackForOrigin();
    objc_destroyWeak(v36);
  }

  v24 = +[MRNowPlayingOriginClientManager sharedManager];
  v25 = [v24 originClientForOrigin:self->_customOrigin];

  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_1000E0200;
  v34[3] = &unk_1004BBE38;
  objc_copyWeak(v35, &location);
  [v25 setClientMessageCallback:v34];
  v26 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v26 nowPlayingServer];
  v28 = [nowPlayingServer originClientForOrigin:self->_customOrigin];

  clientConnection7 = [(MRDTransportExternalDevice *)self clientConnection];
  supportedMessages7 = [clientConnection7 supportedMessages];
  LODWORD(nowPlayingServer) = [supportedMessages7 isSupported:134];

  if (!nowPlayingServer)
  {
    v31 = &stru_1004BBEC0;
LABEL_18:
    [v28 registerCreateNewApplicationConnectionCallback:v31];
    goto LABEL_19;
  }

  if (!_os_feature_enabled_impl())
  {
    v31 = &stru_1004BBEA0;
    goto LABEL_18;
  }

  v32[0] = _NSConcreteStackBlock;
  v32[1] = 3221225472;
  v32[2] = sub_1000E0278;
  v32[3] = &unk_1004BBE60;
  objc_copyWeak(&v33, &location);
  [v28 registerCreateNewApplicationConnectionCallback:v32];
  objc_destroyWeak(&v33);
LABEL_19:

  objc_destroyWeak(v35);
  objc_destroyWeak(&v45);
  objc_destroyWeak(&location);
}

- (void)_handlePlaybackQueueRequest:(id)request forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  pathCopy = path;
  completionCopy = completion;
  objc_initWeak(&location, self);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E0CF0;
    v18[3] = &unk_1004BBF10;
    objc_copyWeak(&v22, &location);
    v19 = requestCopy;
    v20 = pathCopy;
    v12 = completionCopy;
    v21 = v12;
    if (![(MRDTransportExternalDevice *)self _maybeBatchRequest:v18])
    {
      (*(v12 + 2))(v12, 0, errorForCurrentState);
    }

    objc_destroyWeak(&v22);
  }

  else
  {
    v13 = [requestCopy copy];
    v14 = objc_alloc_init(MRProtocolMessageOptions);
    [v14 setPriority:4];
    [v14 setWaking:1];
    v15 = [[MRPlaybackQueueRequestMessage alloc] initWithRequest:v13 forPlayerPath:pathCopy];
    [v15 setTransportOptions:v14];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E0950;
    v23[3] = &unk_1004BBEE8;
    objc_copyWeak(&v26, &location);
    v25 = completionCopy;
    v17 = v13;
    v24 = v17;
    [clientConnection sendMessage:v15 timeout:v23 reply:63.0];

    objc_destroyWeak(&v26);
  }

  objc_destroyWeak(&location);
}

- (void)_handlePlaybackSessionRequest:(id)request forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  pathCopy = path;
  completionCopy = completion;
  v11 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v12 = [v11 startEvent:@"GetPlaybackSession" role:1];
  objc_initWeak(&location, self);
  errorForCurrentState = [(MRDTransportExternalDevice *)self errorForCurrentState];
  if (errorForCurrentState)
  {
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000E116C;
    v18[3] = &unk_1004BBF10;
    objc_copyWeak(&v22, &location);
    v19 = requestCopy;
    v20 = pathCopy;
    v14 = completionCopy;
    v21 = v14;
    if (![(MRDTransportExternalDevice *)self _maybeBatchRequest:v18])
    {
      [v11 endEventWithID:v12 error:errorForCurrentState];
      v15 = [[MRPlaybackSessionResponseMessage alloc] initWithPlaybackSession:0 request:v11];
      (*(v14 + 2))(v14, v15, errorForCurrentState);
    }

    objc_destroyWeak(&v22);
  }

  else
  {
    v16 = [[MRPlaybackSessionRequestMessage alloc] initWithRequest:requestCopy forPlayerPath:pathCopy];
    clientConnection = [(MRDTransportExternalDevice *)self clientConnection];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E0FDC;
    v23[3] = &unk_1004BBF38;
    v24 = v11;
    v25 = 0;
    v27 = v12;
    v26 = completionCopy;
    [clientConnection sendMessage:v16 timeout:v23 reply:63.0];
  }

  objc_destroyWeak(&location);
}

- (void)_handlePlaybackSessionMigrateRequest:(id)request request:(id)a4 forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  v11 = a4;
  pathCopy = path;
  completionCopy = completion;
  v14 = [v11 startEvent:@"SendPlaybackSession" role:1];
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000E14E4;
    v24 = &unk_1004BBCD8;
    v25 = selfCopy;
    v26 = requestCopy;
    v17 = v11;
    v27 = v17;
    v28 = pathCopy;
    v18 = completionCopy;
    v29 = v18;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:&v21])
    {
      [v17 endEventWithID:v14 error:{errorForCurrentState, v21, v22, v23, v24, v25, v26, v27, v28}];
      (*(v18 + 2))(v18, v17, errorForCurrentState);
    }
  }

  else
  {
    v19 = [[MRPlaybackSessionMigrateRequestMessage alloc] initWithPlaybackSession:requestCopy request:v11 forPlayerPath:pathCopy];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v30[0] = _NSConcreteStackBlock;
    v30[1] = 3221225472;
    v30[2] = sub_1000E1400;
    v30[3] = &unk_1004BBF60;
    v31 = v11;
    v33 = v14;
    v32 = completionCopy;
    [clientConnection sendMessage:v19 timeout:v30 reply:63.0];
  }
}

- (void)_handlePlaybackSessionMigrateBeginRequest:(id)request forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  pathCopy = path;
  completionCopy = completion;
  v11 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v12 = [v11 startEvent:@"Prepare" role:1];
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_1000E1894;
    v19[3] = &unk_1004B6BB0;
    v19[4] = selfCopy;
    v20 = requestCopy;
    v21 = pathCopy;
    v15 = completionCopy;
    v22 = v15;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v19])
    {
      [v11 endEventWithID:v12 error:errorForCurrentState];
      v16 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v11];
      (*(v15 + 2))(v15, v16, errorForCurrentState);
    }
  }

  else
  {
    v17 = [[MRPlaybackSessionMigrateBeginMessage alloc] initWithRequest:requestCopy playerPath:pathCopy];
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000E1734;
    v23[3] = &unk_1004BBF60;
    v24 = v11;
    v26 = v12;
    v25 = completionCopy;
    [clientConnection sendMessage:v17 reply:v23];
  }
}

- (void)_handlePlaybackSessionMigrateEndRequest:(id)request setPlaybackSessionCommandStatus:(id)status error:(id)error forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  statusCopy = status;
  errorCopy = error;
  pathCopy = path;
  completionCopy = completion;
  v17 = objc_alloc_init(MRPlaybackSessionMigrateRequest);
  v18 = [v17 startEvent:@"Finalize" role:1];
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_1000E1CC8;
    v33[3] = &unk_1004BBAD8;
    v33[4] = selfCopy;
    v34 = requestCopy;
    v35 = statusCopy;
    v36 = errorCopy;
    v37 = pathCopy;
    v21 = completionCopy;
    v38 = v21;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:v33])
    {
      [v17 endEventWithID:v18 error:errorForCurrentState];
      v22 = pathCopy;
      v23 = errorCopy;
      v24 = statusCopy;
      v25 = requestCopy;
      v26 = [[MRPlaybackSessionMigrateResponseMessage alloc] initWithRequest:v17];
      (*(v21 + 2))(v21, v26, errorForCurrentState);

      requestCopy = v25;
      statusCopy = v24;
      errorCopy = v23;
      pathCopy = v22;
    }
  }

  else
  {
    v27 = [[MRPlaybackSessionMigrateEndMessage alloc] initWithRequest:requestCopy error:errorCopy setPlaybackSessionCommandStatus:statusCopy playerPath:pathCopy];
    [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v32 = pathCopy;
    v28 = errorCopy;
    v29 = statusCopy;
    v31 = v30 = requestCopy;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_1000E1B68;
    v39[3] = &unk_1004BBF60;
    v40 = v17;
    v42 = v18;
    v41 = completionCopy;
    [v31 sendMessage:v27 reply:v39];

    requestCopy = v30;
    statusCopy = v29;
    errorCopy = v28;
    pathCopy = v32;
  }
}

- (void)_handlePlaybackSessionMigratePostRequest:(id)request setPlaybackSessionCommandID:(id)d forPlayerPath:(id)path completion:(id)completion
{
  requestCopy = request;
  dCopy = d;
  pathCopy = path;
  completionCopy = completion;
  v14 = [requestCopy startEvent:@"Post" role:1];
  selfCopy = self;
  v16 = [[MRPlaybackSessionMigratePostMessage alloc] initWithRequest:requestCopy playerPath:pathCopy setPlaybackSessionCommandID:dCopy];
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v22 = _NSConcreteStackBlock;
    v23 = 3221225472;
    v24 = sub_1000E2030;
    v25 = &unk_1004BBCD8;
    v26 = selfCopy;
    v27 = requestCopy;
    v28 = dCopy;
    v29 = pathCopy;
    v18 = completionCopy;
    v30 = v18;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:&v22])
    {
      request = [v16 request];
      [request endEventWithID:v14 error:errorForCurrentState];

      (*(v18 + 2))(v18, v16, errorForCurrentState);
    }

    v20 = v27;
  }

  else
  {
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_1000E1F28;
    v31[3] = &unk_1004BBF88;
    v34 = v14;
    v33 = completionCopy;
    v32 = v16;
    [clientConnection sendMessage:v32 timeout:v31 reply:63.0];

    v20 = v33;
  }
}

- (void)_callClientConnectionStateCallback:(unsigned int)callback previousConnectionState:(unsigned int)state error:(id)error
{
  errorCopy = error;
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E20F4;
  block[3] = &unk_1004B87F8;
  callbackCopy = callback;
  v11 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  dispatch_async(notificationQueue, block);
}

- (void)_callClientCustomDataCallback:(id)callback name:(id)name
{
  callbackCopy = callback;
  nameCopy = name;
  v6 = callbackCopy;
  v7 = nameCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_callDeviceInfoCallback:(id)callback oldDeviceInfo:(id)info
{
  callbackCopy = callback;
  infoCopy = info;
  notificationQueue = self->_notificationQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E24F4;
  block[3] = &unk_1004B69D0;
  v12 = infoCopy;
  v13 = callbackCopy;
  selfCopy = self;
  v9 = callbackCopy;
  v10 = infoCopy;
  dispatch_async(notificationQueue, block);
}

- (void)setCustomDataCallback:(id)callback withQueue:(id)queue
{
  callbackCopy = callback;
  queueCopy = queue;
  if (!queueCopy)
  {
    queueCopy = &_dispatch_main_q;
    v8 = &_dispatch_main_q;
  }

  serialQueue = self->_serialQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2680;
  block[3] = &unk_1004BB428;
  v13 = queueCopy;
  v14 = callbackCopy;
  block[4] = self;
  v10 = queueCopy;
  v11 = callbackCopy;
  dispatch_sync(serialQueue, block);
}

- (BOOL)_maybeBatchRequest:(id)request
{
  requestCopy = request;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  serialQueue = self->_serialQueue;
  v14 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E2794;
  block[3] = &unk_1004BBFD8;
  block[4] = self;
  v9 = requestCopy;
  v10 = &v11;
  v6 = requestCopy;
  dispatch_sync(serialQueue, block);
  LOBYTE(serialQueue) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return serialQueue;
}

- (void)_handleRemoteCommand:(unsigned int)command withOptions:(id)options playerPath:(id)path completion:(id)completion
{
  v8 = *&command;
  optionsCopy = options;
  pathCopy = path;
  completionCopy = completion;
  v12 = _MRLogForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v29 = MRMediaRemoteCommandCreateDescription();
    *location = 138543874;
    *&location[4] = v29;
    v48 = 2114;
    v49 = pathCopy;
    v50 = 2114;
    selfCopy = self;
    _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Received command %{public}@ for path %{public}@ for device %{public}@", location, 0x20u);
  }

  selfCopy2 = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy2 errorForCurrentState];
  if (errorForCurrentState)
  {
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_1000E30E8;
    v32[3] = &unk_1004BC028;
    v32[4] = selfCopy2;
    v36 = v8;
    v33 = optionsCopy;
    v34 = pathCopy;
    v15 = completionCopy;
    v35 = v15;
    v16 = [(MRDTransportExternalDevice *)selfCopy2 _maybeBatchRequest:v32];
    if (v15)
    {
      v17 = v16;
    }

    else
    {
      v17 = 1;
    }

    if ((v17 & 1) == 0)
    {
      v18 = [MRCommandResult commandResultWithSendError:2];
      (*(v15 + 2))(v15, v18);
    }
  }

  else
  {
    v19 = objc_alloc_init(MRProtocolMessageOptions);
    [v19 setPriority:4];
    [v19 setWaking:1];
    v30 = [[MRSendCommandMessage alloc] initWithCommand:v8 options:optionsCopy playerPath:pathCopy];
    [v30 setTransportOptions:v19];
    v20 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v21 = qos_class_self();
    v22 = dispatch_queue_attr_make_with_qos_class(v20, v21, 0);
    v23 = dispatch_queue_create(0, v22);

    clientConnection = [(MRDTransportExternalDevice *)selfCopy2 clientConnection];
    clientConnection2 = [(MRDTransportExternalDevice *)selfCopy2 clientConnection];
    objc_initWeak(location, clientConnection2);

    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_1000E2CA0;
    v40[3] = &unk_1004BC000;
    v46 = v8;
    v41 = optionsCopy;
    v42 = selfCopy2;
    v44 = completionCopy;
    objc_copyWeak(&v45, location);
    v43 = pathCopy;
    v26 = objc_retainBlock(v40);
    v37[0] = _NSConcreteStackBlock;
    v37[1] = 3221225472;
    v37[2] = sub_1000E3024;
    v37[3] = &unk_1004BBB70;
    v27 = v23;
    v38 = v27;
    v28 = v26;
    v39 = v28;
    [clientConnection sendMessage:v30 timeout:v37 reply:63.0];

    objc_destroyWeak(&v45);
    objc_destroyWeak(location);
  }
}

- (void)_handleSetStateMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  state = [messageCopy state];
  playerPath = [state playerPath];
  v8 = [playerPath copy];

  v9 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  supportedCommands = [state supportedCommands];
  if (supportedCommands)
  {
    MRMediaRemoteSetSupportedCommandsForPlayer();
  }

  if ([state playbackState])
  {
    state2 = [messageCopy state];
    hasPlaybackStateTimestamp = [state2 hasPlaybackStateTimestamp];

    if (hasPlaybackStateTimestamp)
    {
      state3 = [messageCopy state];
      [state3 playbackStateTimestamp];
    }

    else if (!self->_isClientSyncActive)
    {
      +[NSDate timeIntervalSinceReferenceDate];
    }

    [state playbackState];
    MRMediaRemoteSetPlaybackStateForPlayerWithTimestamp();
  }

  playbackQueue = [state playbackQueue];
  v15 = [playbackQueue copy];

  if (v15)
  {
    v23 = v8;
    v24 = customOrigin;
    contentItems = [v15 contentItems];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v17 = [contentItems countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v26;
      do
      {
        v20 = 0;
        do
        {
          if (*v26 != v19)
          {
            objc_enumerationMutation(contentItems);
          }

          metadata = [*(*(&v25 + 1) + 8 * v20) metadata];
          [metadata setDeviceSpecificUserInfo:0];

          v20 = v20 + 1;
        }

        while (v18 != v20);
        v18 = [contentItems countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v18);
    }

    contentItems2 = [v15 contentItems];
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();

    MRMediaRemoteSetPlaybackQueue();
    v8 = v23;
    customOrigin = v24;
  }

  if ([state playbackQueueCapabilities])
  {
    [state playbackQueueCapabilities];
    MRMediaRemoteSetPlaybackQueueCapabilities();
  }

  CFRelease(v9);
}

- (void)_handleSetNowPlayingClientMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  client = [messageCopy client];

  MRMediaRemoteSetNowPlayingClientForOrigin();
}

- (void)_handleSetNowPlayingPlayerMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  playerPath = [messageCopy playerPath];

  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  MRMediaRemoteSetNowPlayingPlayer();
}

- (void)_handleRemoveClientMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  client = [messageCopy client];

  MRMediaRemoteRemoveClientForOrigin();
}

- (void)_handleRemovePlayerMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  playerPath = [messageCopy playerPath];

  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  MRMediaRemoteRemovePlayer();
}

- (void)_handleUpdateClientMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  client = [messageCopy client];

  MRMediaRemoteUpdateClientProperties();
}

- (void)_handleUpdatePlayerMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  playerPath = [messageCopy playerPath];

  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  MRMediaRemoteUpdatePlayerProperties();
}

- (void)_handleUpdateContentItemsMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  playerPath = [messageCopy playerPath];
  v7 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();

  contentItems = [messageCopy contentItems];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [contentItems countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(contentItems);
        }

        metadata = [*(*(&v14 + 1) + 8 * v12) metadata];
        [metadata setDeviceSpecificUserInfo:0];

        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [contentItems countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  MRMediaRemotePlaybackQueueDataSourceContentItemsChangedForPlayer();
}

- (void)_handleNotificationMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  notification = [messageCopy notification];
  userInfo = [messageCopy userInfo];
  playerPath = [messageCopy playerPath];

  v8 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();
  if ([notification isEqualToString:kMRPlaybackQueueContentItemArtworkChangedNotification])
  {
    v9 = [[MRPlaybackQueueRequest alloc] initWithRange:{0, 1}];
    [v9 setArtworkWidth:600.0];
    [v9 setArtworkHeight:600.0];
    v10 = MRGetContentItemsFromUserInfo();
    MRMediaRemotePlaybackQueueDataSourceContentItemsChangedWithRequestForPlayer();

LABEL_5:
    goto LABEL_7;
  }

  if ([notification isEqualToString:kMRMediaRemotePickedRouteVolumeControlAvailabilityDidChangeNotification])
  {
    v9 = [userInfo objectForKey:kMRMediaRemotePickedRouteVolumeControlAvailabilityUserInfoKey];
    [v9 BOOLValue];
    MRMediaRemoteSetPickedRouteHasVolumeControlForOrigin();
    goto LABEL_5;
  }

  MRMediaRemotePostClientNotification();
LABEL_7:
}

- (void)_handleOutputDevicesUpdatedMessage:(id)message
{
  outputDevices = [message outputDevices];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000E3AA0;
  v6[3] = &unk_1004B9AF8;
  v6[4] = self;
  v5 = [outputDevices msv_map:v6];

  [(MRExternalOutputContextDataSource *)self->_externalOutputContext updateOutputDevices:v5];
}

- (void)_handleOutputDevicesRemovedMessage:(id)message
{
  externalOutputContext = self->_externalOutputContext;
  outputDeviceUIDs = [message outputDeviceUIDs];
  [(MRExternalOutputContextDataSource *)externalOutputContext removeOutputDevices:outputDeviceUIDs];
}

- (void)_handleVolumeDidChangeMessage:(id)message
{
  externalOutputContext = self->_externalOutputContext;
  messageCopy = message;
  [messageCopy volume];
  v6 = v5;
  outputDeviceUID = [messageCopy outputDeviceUID];

  LODWORD(v7) = v6;
  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolume:outputDeviceUID outputDeviceUID:v7];
}

- (void)_handleVolumeControlCapabilitiesDidChangeMessage:(id)message
{
  externalOutputContext = self->_externalOutputContext;
  messageCopy = message;
  capabilities = [messageCopy capabilities];
  outputDeviceUID = [messageCopy outputDeviceUID];

  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeControlCapabilities:capabilities outputDeviceUID:outputDeviceUID];
}

- (void)_handleVolumeMutedDidChangeMessage:(id)message
{
  externalOutputContext = self->_externalOutputContext;
  messageCopy = message;
  isMuted = [messageCopy isMuted];
  outputDeviceUID = [messageCopy outputDeviceUID];

  [(MRExternalOutputContextDataSource *)externalOutputContext updateVolumeMuted:isMuted outputDeviceUID:outputDeviceUID];
}

- (void)_handleLegacyVolumeControlCapabilitiesDidChangeMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  [messageCopy capabilities];

  MRMediaRemoteSetPickedRouteVolumeControlCapabilities();
}

- (void)_handleDeviceInfoUpdateMessage:(id)message
{
  messageCopy = message;
  deviceInfo = [(MRDTransportExternalDevice *)self deviceInfo];
  v5 = [deviceInfo copy];
  deviceInfo2 = [messageCopy deviceInfo];

  [(MRDTransportExternalDevice *)self _handleDeviceInfoChange:deviceInfo2 oldDevice:v5];
}

- (void)_handleDeviceInfoChange:(id)change oldDevice:(id)device
{
  changeCopy = change;
  deviceCopy = device;
  v5 = deviceCopy;
  v6 = changeCopy;
  msv_dispatch_sync_on_queue();
}

- (void)_onSerialQueue_completeGroupSessionRequestsWithIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  dispatch_assert_queue_V2(self->_serialQueue);
  if (identifierCopy | errorCopy)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = self->_requestGroupSessionCompletions;
    v9 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v15;
      do
      {
        v12 = 0;
        do
        {
          if (*v15 != v11)
          {
            objc_enumerationMutation(v8);
          }

          (*(*(*(&v14 + 1) + 8 * v12) + 16))(*(*(&v14 + 1) + 8 * v12));
          v12 = v12 + 1;
        }

        while (v10 != v12);
        v10 = [(NSMutableSet *)v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v10);
    }

    requestGroupSessionCompletions = self->_requestGroupSessionCompletions;
    self->_requestGroupSessionCompletions = 0;
  }
}

- (void)_handleSetConnectionStateMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy state] == 3)
  {
    error = [messageCopy error];
    [(MRDTransportExternalDevice *)self disconnect:error];
  }
}

- (void)_handleGenericMessage:(id)message
{
  messageCopy = message;
  data = [messageCopy data];
  v5 = [messageCopy key];

  [(MRDTransportExternalDevice *)self _callClientCustomDataCallback:data name:v5];
}

- (void)_handlePromptForRouteAuthorizationMessage:(id)message
{
  messageCopy = message;
  MRGetSharedService();
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  workerQueue = [v4 workerQueue];
  v7 = messageCopy;
  v6 = messageCopy;
  MRMediaRemoteServicePromptRouteAuthorization();
}

- (void)_handlePresentRouteAuthorizationStatusMessage:(id)message
{
  messageCopy = message;
  MRGetSharedService();
  v4 = +[MRMediaRemoteServiceClient sharedServiceClient];
  workerQueue = [v4 workerQueue];
  v7 = messageCopy;
  v6 = messageCopy;
  MRMediaRemoteServicePresentRouteAuthorizationStatus();
}

- (void)_handleSetDefaultSupportedCommandsMessage:(id)message
{
  messageCopy = message;
  v5 = [MRClient alloc];
  bundleID = [messageCopy bundleID];
  v9 = [v5 initWithProcessIdentifier:0 bundleIdentifier:bundleID];

  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  supportedCommands = [messageCopy supportedCommands];

  MRMediaRemoteSetDefaultSupportedCommandsForClient();
}

- (void)_handleUpdateActiveSystemEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  v8 = +[MRDMediaRemoteServer server];
  nowPlayingServer = [v8 nowPlayingServer];
  lockScreenRoutingController = [nowPlayingServer lockScreenRoutingController];
  request = [endpointCopy request];

  outputDeviceUID = [request outputDeviceUID];
  [lockScreenRoutingController companionASEDidChangeToOutputDeviceUID:outputDeviceUID];
}

- (void)_handleSetPlayerClientPropertiesMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  playerPath = [messageCopy playerPath];
  v6 = MRNowPlayingPlayerPathResolveExternalDevicePlayerPath();

  MRGetSharedService();
  MRMediaRemoteServiceSetPlayerClientProperties();
}

- (void)_handleSetOriginClientPropertiesMessage:(id)message
{
  messageCopy = message;
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  MRGetSharedService();
  MRMediaRemoteServiceSetOriginClientProperties();
}

- (void)_handlePlayerClientParticipantsUpdateMessage:(id)message
{
  messageCopy = message;
  v5 = [MRPlayerPath alloc];
  customOrigin = [(MRDTransportExternalDevice *)self customOrigin];
  playerPath = [messageCopy playerPath];
  client = [playerPath client];
  playerPath2 = [messageCopy playerPath];
  player = [playerPath2 player];
  v11 = [v5 initWithOrigin:customOrigin client:client player:player];

  if ([v11 isResolved])
  {
    v12 = +[MRDMediaRemoteServer server];
    nowPlayingServer = [v12 nowPlayingServer];
    v14 = +[MRDMediaRemoteServer server];
    daemonClient = [v14 daemonClient];
    v16 = [nowPlayingServer queryPlayerPath:v11 forClient:daemonClient];

    playerClient = [v16 playerClient];
    v18 = playerClient;
    if (playerClient)
    {
      remoteParticipantDataSource = [playerClient remoteParticipantDataSource];

      if (remoteParticipantDataSource)
      {
        v30 = v16;
        participants = [messageCopy participants];
        v21 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [participants count]);

        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        participants2 = [messageCopy participants];
        v23 = [participants2 countByEnumeratingWithState:&v31 objects:v35 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v32;
          do
          {
            v26 = 0;
            do
            {
              if (*v32 != v25)
              {
                objc_enumerationMutation(participants2);
              }

              v27 = [[MRPlaybackQueueParticipant alloc] initWithProtobuf:*(*(&v31 + 1) + 8 * v26)];
              [v21 addObject:v27];

              v26 = v26 + 1;
            }

            while (v24 != v26);
            v24 = [participants2 countByEnumeratingWithState:&v31 objects:v35 count:16];
          }

          while (v24);
        }

        remoteParticipantDataSource2 = [v18 remoteParticipantDataSource];
        v29 = [v21 copy];
        [remoteParticipantDataSource2 updateParticipants:v29];

        v16 = v30;
      }
    }
  }
}

- (void)_handleApplicationConnectionProtocolMessage:(id)message
{
  messageCopy = message;
  v5 = +[MRDMediaRemoteServer server];
  remoteControlServer = [v5 remoteControlServer];
  [remoteControlServer handleClientBoundApplicationConnectionMessage:messageCopy];
}

- (void)_handleInvalidateApplicationConnectionMessage:(id)message
{
  messageCopy = message;
  v5 = +[MRDMediaRemoteServer server];
  remoteControlServer = [v5 remoteControlServer];
  [remoteControlServer handleInvalidateApplicationConnectionMessage:messageCopy];
}

- (void)_sendClientMessage:(id)message completion:(id)completion
{
  messageCopy = message;
  completionCopy = completion;
  selfCopy = self;
  errorForCurrentState = [(MRDTransportExternalDevice *)selfCopy errorForCurrentState];
  if (errorForCurrentState)
  {
    v15 = _NSConcreteStackBlock;
    v16 = 3221225472;
    v17 = sub_1000E4BD8;
    v18 = &unk_1004B71F8;
    v19 = selfCopy;
    v20 = messageCopy;
    v10 = completionCopy;
    v21 = v10;
    if (![(MRDTransportExternalDevice *)selfCopy _maybeBatchRequest:&v15])
    {
      v11 = [MRProtocolMessage alloc];
      v12 = [v11 initWithUnderlyingCodableMessage:0 error:{errorForCurrentState, v15, v16, v17, v18, v19}];
      (*(v10 + 2))(v10, v12);
    }

    v13 = v20;
  }

  else
  {
    clientConnection = [(MRDTransportExternalDevice *)selfCopy clientConnection];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000E4BC8;
    v22[3] = &unk_1004BBBC0;
    v23 = completionCopy;
    [clientConnection sendMessage:messageCopy reply:v22];

    v13 = v23;
  }
}

@end