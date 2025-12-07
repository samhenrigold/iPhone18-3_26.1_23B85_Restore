@interface MRAVConcreteOutputContext
+ (AVOutputContext)outputContextForLocalDevice;
+ (id)_sharedOutputContextFromType:(uint64_t)type;
+ (id)createOutputContextWithUniqueIdentifier:(id)identifier;
+ (id)iTunesContext;
+ (id)outputContextForLocalDeviceDataSource;
+ (id)sharedAudioPresentationContext;
+ (id)sharedSystemAudioContext;
+ (id)sharedSystemScreenContext;
+ (void)_initializeAVFNotificationForwarding;
+ (void)iTunesContext;
+ (void)setOutputContextForLocalDeviceDataSource:(id)source;
- (AVOutputContext)avOutputContext;
- (BOOL)supportsMultipleBluetoothOutputDevices;
- (BOOL)supportsVolumeControl;
- (MRAVConcreteOutputContext)initWithAVOutputContext:(id)context type:(unsigned int)type;
- (NSArray)concreteOutputDevices;
- (NSString)debugDescription;
- (NSString)description;
- (float)volume;
- (id)_unregisterNotifications;
- (id)contextID;
- (id)predictedOutputDevice;
- (id)predictedOutputDeviceUIDs;
- (unsigned)volumeControlCapabilities;
- (void)_addNotifications:(void *)notifications name:(void *)name object:;
- (void)_handleCanMuteDidChangeNotification:(id)notification;
- (void)_handleClusterMemberCanMuteDidChangeNotification:(id)notification;
- (void)_handleClusterMemberMutedDidChangeNotification:(id)notification;
- (void)_handleClusterMemberRoomVolumeDidChangeNotification:(id)notification;
- (void)_handleMutedDidChangeNotification:(id)notification;
- (void)_handleOutputContextCanSetVolumeDidChangeNotification:(id)notification;
- (void)_handleOutputContextSupportsVolumeDidChangeNotification:(id)notification;
- (void)_handleOutputContextVolumeControlTypeDidChangeNotification:(id)notification;
- (void)_handleOutputDeviceCanSetVolumeDidChangeNotification:(id)notification;
- (void)_handleOutputDeviceVolumeDidChangeNotification:(id)notification;
- (void)_handleOutputDevicesDidChangeNotification:(id)notification;
- (void)_handleOutputDevicesTimedOut:(uint64_t)out;
- (void)_handlePredictedOutputDevicesDidChangeNotification:(id)notification;
- (void)_notifyPredictedOutputDeviceDidChange:(uint64_t)change;
- (void)_outputContextChangeInitiatedNotification:(id)notification;
- (void)_postVolumeCapabilitiesChangedNotificationForUID:(void *)d;
- (void)_postVolumeChangedNotificationForUID:(uint64_t)d;
- (void)_postVolumeMutedChangedNotificationForUID:(uint64_t)d;
- (void)_registerNotificationsForOutputContext:(uint64_t)context;
- (void)_reloadOutputContext;
- (void)_reloadOutputDevices;
- (void)_reloadPredictedOutputDevice;
- (void)adjustVolume:(int64_t)volume details:(id)details;
- (void)dealloc;
- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion;
- (void)resetPredictedOutputDevice;
- (void)setAvOutputContext:(id)context;
- (void)setConcreteOutputDevices:(id)devices;
- (void)setPredictedOutputDevice:(uint64_t)device;
- (void)setVolume:(float)volume details:(id)details;
@end

@implementation MRAVConcreteOutputContext

+ (id)sharedAudioPresentationContext
{
  if (sharedAudioPresentationContext___once != -1)
  {
    +[MRAVConcreteOutputContext sharedAudioPresentationContext];
  }

  v3 = sharedAudioPresentationContext___context;

  return v3;
}

void __59__MRAVConcreteOutputContext_sharedAudioPresentationContext__block_invoke()
{
  v0 = +[MRUserSettings currentSettings];
  v1 = [v0 supportMultiplayerHost];

  if (v1)
  {
    +[MRAVConcreteOutputContext outputContextForLocalDevice];
  }

  else
  {
    [MEMORY[0x1E69587F0] sharedAudioPresentationOutputContext];
  }
  v2 = ;
  if (!v2)
  {
    v8 = _MRLogForCategory(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __59__MRAVConcreteOutputContext_sharedAudioPresentationContext__block_invoke_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    goto LABEL_9;
  }

  v3 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v2 type:1];
  v4 = sharedAudioPresentationContext___context;
  sharedAudioPresentationContext___context = v3;

  v5 = +[MRUserSettings currentSettings];
  v6 = [v5 supportMultiplayerHost];

  if (v6)
  {
    v7 = [MEMORY[0x1E696AD88] defaultCenter];
    [v7 addObserver:sharedAudioPresentationContext___context selector:sel__handleLocalDeviceDidChangeOutputContextNotification_ name:@"MRAVOutputContextManagerLocalDeviceDidChangeOutputContextNotification" object:0];

    v8 = [MEMORY[0x1E696AD88] defaultCenter];
    [v8 addObserver:sharedAudioPresentationContext___context selector:sel__handleLocalDeviceDidChangeOutputContextNotification_ name:@"kMRMediaRemoteServiceClientDidRestoreConnectionNotification" object:0];
LABEL_9:
  }
}

- (id)_unregisterNotifications
{
  if (result)
  {
    v1 = result;
    OUTLINED_FUNCTION_0_3();
    v4 = 3221225472;
    v5 = __53__MRAVConcreteOutputContext__unregisterNotifications__block_invoke;
    v6 = &unk_1E769D140;
    v7 = v1;
    [v2 enumerateKeysAndObjectsUsingBlock:v3];
    return [v1[15] removeAllObjects];
  }

  return result;
}

- (void)_reloadOutputDevices
{
  v20 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  outputDevices = [avOutputContext outputDevices];

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = outputDevices;
  v7 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v15 + 1) + 8 * v10);
        v12 = [MRAVConcreteOutputDevice alloc];
        avOutputContext2 = [(MRAVConcreteOutputContext *)self avOutputContext];
        v14 = [(MRAVConcreteOutputDevice *)v12 initWithAVOutputDevice:v11 outputContext:avOutputContext2];

        if (v14)
        {
          [array addObject:v14];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  [(MRAVConcreteOutputContext *)self setConcreteOutputDevices:array];
  [(MRAVOutputContext *)self _reloadWithOutputDevices:array];
}

- (AVOutputContext)avOutputContext
{
  v3 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v3 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    os_unfair_lock_lock(&self->_avOutputContextLock);
    v5 = self->_avOutputContext;
    os_unfair_lock_unlock(&self->_avOutputContextLock);
  }

  else
  {
    v5 = self->_avOutputContext;
  }

  return v5;
}

- (BOOL)supportsVolumeControl
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVConcreteOutputContext_supportsVolumeControl__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (void)_reloadPredictedOutputDevice
{
  if (self)
  {
    avOutputContext = [self avOutputContext];
    predictedOutputDevice = [avOutputContext predictedOutputDevice];

    if (predictedOutputDevice)
    {
      v3 = [MRAVConcreteOutputDevice alloc];
      avOutputContext2 = [self avOutputContext];
      [(MRAVConcreteOutputDevice *)v3 initWithAVOutputDevice:predictedOutputDevice outputContext:avOutputContext2];
      v5 = OUTLINED_FUNCTION_2_4();
      [(MRAVConcreteOutputContext *)v5 setPredictedOutputDevice:v6];
    }

    else
    {
      [(MRAVConcreteOutputContext *)self setPredictedOutputDevice:?];
    }
  }
}

+ (void)_initializeAVFNotificationForwarding
{
  v0 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = v0;
  if (_initializeAVFNotificationForwarding___once != -1)
  {
    dispatch_once(&_initializeAVFNotificationForwarding___once, block);
  }
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke(uint64_t a1)
{
  v2 = [objc_opt_class() notificationQueue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_2;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

- (id)contextID
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__MRAVConcreteOutputContext_contextID__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD88] defaultCenter];
  v3 = *MEMORY[0x1E69586A8];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_4;
  v13[3] = &unk_1E769D228;
  v4 = *(a1 + 32);
  v14 = &__block_literal_global_115;
  v15 = v4;
  v5 = [v2 addObserverForName:v3 object:0 queue:0 usingBlock:v13];

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  v7 = *MEMORY[0x1E69586B0];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_6;
  v10[3] = &unk_1E769D228;
  v8 = *(a1 + 32);
  v11 = &__block_literal_global_115;
  v12 = v8;
  v9 = [v6 addObserverForName:v7 object:0 queue:0 usingBlock:v10];
}

- (id)predictedOutputDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVConcreteOutputContext_predictedOutputDevice__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

+ (id)sharedSystemAudioContext
{
  if (sharedSystemAudioContext___once != -1)
  {
    +[MRAVConcreteOutputContext sharedSystemAudioContext];
  }

  v3 = sharedSystemAudioContext___context;

  return v3;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() notificationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_7;
  v7[3] = &unk_1E769AB28;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [objc_opt_class() notificationQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_5;
  v7[3] = &unk_1E769AB28;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  dispatch_async(v4, v7);
}

id __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_3(uint64_t a1, void *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v2 = [a2 object];
  v3 = [v2 outputContextType];
  v4 = *MEMORY[0x1E69586E0];
  v10[0] = *MEMORY[0x1E69586D8];
  v10[1] = v4;
  v11[0] = &unk_1F15776C8;
  v11[1] = &unk_1F15776E0;
  v10[2] = *MEMORY[0x1E69586D0];
  v11[2] = &unk_1F15776F8;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v11 forKeys:v10 count:3];
  v6 = [v5 objectForKey:v3];
  v7 = [v6 unsignedIntegerValue];

  if (v7)
  {
    v8 = [MRAVConcreteOutputContext _sharedOutputContextFromType:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_7(uint64_t a1)
{
  v1 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  [v1 _scheduleOutputContextDevicesDidChangeNotification];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  contextID = [(MRAVConcreteOutputContext *)self contextID];
  v6 = MRAVOutputContextTypeCopyDescription(self->_type);
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  v8 = [v3 stringWithFormat:@"<%@: %p uid=%@ type=%@ avOutputContext=%@>", v4, self, contextID, v6, avOutputContext];

  return v8;
}

void __65__MRAVConcreteOutputContext__initializeAVFNotificationForwarding__block_invoke_5(uint64_t a1)
{
  v1 = (*(*(a1 + 40) + 16))(*(a1 + 40), *(a1 + 32));
  [v1 _scheduleOutputContextDeviceDidChangeNotification];
}

- (id)predictedOutputDeviceUIDs
{
  v6[1] = *MEMORY[0x1E69E9840];
  predictedOutputDevice = [(MRAVConcreteOutputContext *)self predictedOutputDevice];
  v3 = [predictedOutputDevice uid];

  if (v3)
  {
    v6[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:1];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void __53__MRAVConcreteOutputContext_sharedSystemAudioContext__block_invoke()
{
  v0 = [MEMORY[0x1E69587F0] sharedSystemAudioContext];
  if (v0)
  {
    v1 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v0 type:2];
    v2 = sharedSystemAudioContext___context;
    sharedSystemAudioContext___context = v1;
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __53__MRAVConcreteOutputContext_sharedSystemAudioContext__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

+ (id)sharedSystemScreenContext
{
  if (sharedSystemScreenContext___once != -1)
  {
    +[MRAVConcreteOutputContext sharedSystemScreenContext];
  }

  v3 = sharedSystemScreenContext___context;

  return v3;
}

void __54__MRAVConcreteOutputContext_sharedSystemScreenContext__block_invoke()
{
  v0 = [MEMORY[0x1E69587F0] sharedSystemScreenContext];
  if (v0)
  {
    v1 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v0 type:3];
    v2 = sharedSystemScreenContext___context;
    sharedSystemScreenContext___context = v1;
  }

  else
  {
    v3 = _MRLogForCategory(0);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __54__MRAVConcreteOutputContext_sharedSystemScreenContext__block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }
}

+ (id)iTunesContext
{
  iTunesAudioContext = [MEMORY[0x1E69587F0] iTunesAudioContext];
  if (iTunesAudioContext)
  {
    v3 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:iTunesAudioContext type:4];
  }

  else
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      [(MRAVConcreteOutputContext *)v4 iTunesContext:v5];
    }

    v3 = 0;
  }

  return v3;
}

+ (id)createOutputContextWithUniqueIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    v15 = 0;
    goto LABEL_19;
  }

  v4 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v4 supportMultiplayerHost];

  if ((supportMultiplayerHost & 1) == 0)
  {
    v6 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
    uniqueIdentifier = [v6 uniqueIdentifier];
    v8 = uniqueIdentifier;
    if (uniqueIdentifier == identifierCopy)
    {
    }

    else
    {
      v9 = [uniqueIdentifier isEqual:identifierCopy];

      if ((v9 & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    v16 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
    goto LABEL_14;
  }

LABEL_5:
  v10 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
  uniqueIdentifier2 = [v10 uniqueIdentifier];
  v12 = uniqueIdentifier2;
  if (uniqueIdentifier2 == identifierCopy)
  {

    goto LABEL_11;
  }

  v13 = [uniqueIdentifier2 isEqual:identifierCopy];

  if (v13)
  {
LABEL_11:
    v16 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
LABEL_14:
    v15 = v16;
    goto LABEL_19;
  }

  v14 = [MEMORY[0x1E69587F0] outputContextForID:identifierCopy];
  if (v14)
  {
    v15 = [[MRAVConcreteOutputContext alloc] initWithAVOutputContext:v14 type:5];
  }

  else
  {
    v17 = _MRLogForCategory(0);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [(MRAVConcreteOutputContext *)identifierCopy createOutputContextWithUniqueIdentifier:v17, v18, v19, v20, v21, v22, v23];
    }

    v15 = 0;
  }

LABEL_19:

  return v15;
}

- (MRAVConcreteOutputContext)initWithAVOutputContext:(id)context type:(unsigned int)type
{
  contextCopy = context;
  v22.receiver = self;
  v22.super_class = MRAVConcreteOutputContext;
  v7 = [(MRAVConcreteOutputContext *)&v22 init];
  v8 = v7;
  if (v7)
  {
    v7->_type = type;
    v9 = objc_opt_class();
    Name = class_getName(v9);
    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create(Name, v11);
    serialQueue = v8->_serialQueue;
    v8->_serialQueue = v12;

    v14 = [[MRAVOutputDeviceSourceInfo alloc] initWithMultipleBuiltInDevices:0 sourceType:1];
    outputDeviceSourceInfo = v8->_outputDeviceSourceInfo;
    v8->_outputDeviceSourceInfo = v14;

    v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
    notifications = v8->_notifications;
    v8->_notifications = v16;

    v18 = +[MRUserSettings currentSettings];
    LODWORD(v11) = [v18 supportMultiplayerHost];

    if (v11)
    {
      v8->_avOutputContextLock._os_unfair_lock_opaque = 0;
    }

    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:v8 selector:sel__handleDeviceInfoDidChangeNotification_ name:@"kMRActiveDeviceInfoDidChangeNotification" object:0];

    v20 = +[MRAVClusterController sharedController];
    [v20 registerObserver:v8];

    [(MRAVConcreteOutputContext *)v8 setAvOutputContext:contextCopy];
    +[MRAVConcreteOutputContext _initializeAVFNotificationForwarding];
  }

  return v8;
}

- (void)dealloc
{
  [(MRAVConcreteOutputContext *)&self->super.super.isa _unregisterNotifications];
  v3.receiver = self;
  v3.super_class = MRAVConcreteOutputContext;
  [(MRAVConcreteOutputContext *)&v3 dealloc];
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(MRAVConcreteOutputContext *)self description];
  predictedOutputDeviceUIDs = [(MRAVConcreteOutputContext *)self predictedOutputDeviceUIDs];
  outputDevices = [(MRAVOutputContext *)self outputDevices];
  v7 = [v3 stringWithFormat:@"%@ predicted=%@ outputDevices=%@", v4, predictedOutputDeviceUIDs, outputDevices];

  return v7;
}

+ (void)setOutputContextForLocalDeviceDataSource:(id)source
{
  v3 = MEMORY[0x1A58E3570](source, a2);
  v4 = _outputContextForLocalDeviceDataSource;
  _outputContextForLocalDeviceDataSource = v3;
}

+ (id)outputContextForLocalDeviceDataSource
{
  v2 = MEMORY[0x1A58E3570](_outputContextForLocalDeviceDataSource, a2);

  return v2;
}

+ (AVOutputContext)outputContextForLocalDevice
{
  v37 = *MEMORY[0x1E69E9840];
  uUID = [MEMORY[0x1E696AFB0] UUID];
  uUIDString = [uUID UUIDString];

  v5 = [MEMORY[0x1E695DF00] now];
  v6 = [objc_alloc(MEMORY[0x1E696AD60]) initWithFormat:@"%@<%@>", @"outputContextForLocalDevice", uUIDString];
  v7 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v30 = v6;
    _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  outputContextForLocalDeviceDataSource = [self outputContextForLocalDeviceDataSource];

  if (outputContextForLocalDeviceDataSource)
  {
    outputContextForLocalDeviceDataSource2 = [self outputContextForLocalDeviceDataSource];
    v10 = outputContextForLocalDeviceDataSource2[2]();
    v11 = 0;
  }

  else
  {
    outputContextForLocalDeviceDataSource2 = MRCreateXPCMessage(0x300000000000025uLL);
    v12 = +[MRMediaRemoteServiceClient sharedServiceClient];
    service = [v12 service];
    mrXPCConnection = [service mrXPCConnection];
    v28 = 0;
    v15 = [mrXPCConnection sendSyncMessage:outputContextForLocalDeviceDataSource2 error:&v28];
    v11 = v28;

    v16 = MRCreateStringFromXPCMessage(v15, "MRXPC_ROUTING_CONTEXT_UID_KEY");
    v17 = _MRLogForCategory(0xAuLL);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v30 = @"outputContextForLocalDevice";
      v31 = 2114;
      v32 = uUIDString;
      v33 = 2112;
      v34 = v16;
      _os_log_impl(&dword_1A2860000, v17, OS_LOG_TYPE_DEFAULT, "Update: %{public}@<%{public}@> %@", buf, 0x20u);
    }

    v10 = [MEMORY[0x1E69587F0] outputContextForID:v16];
  }

  v18 = _MRLogForCategory(0xAuLL);
  v19 = v18;
  if (v11 || !v10)
  {
    if (v11)
    {
      if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_19;
      }

      date = [MEMORY[0x1E695DF00] date];
      [date timeIntervalSinceDate:v5];
      *buf = 138544130;
      v30 = @"outputContextForLocalDevice";
      v31 = 2114;
      v32 = uUIDString;
      v33 = 2114;
      v34 = v11;
      v35 = 2048;
      v36 = v25;
      _os_log_error_impl(&dword_1A2860000, v19, OS_LOG_TYPE_ERROR, "Response: %{public}@<%{public}@> returned with error <%{public}@> in %.4lf seconds", buf, 0x2Au);
      goto LABEL_18;
    }

    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v5];
    *buf = 138543874;
    v30 = @"outputContextForLocalDevice";
    v31 = 2114;
    v32 = uUIDString;
    v33 = 2048;
    v34 = v26;
    v22 = "Response: %{public}@<%{public}@> returned in %.4lf seconds";
    v23 = v19;
    v24 = 32;
  }

  else
  {
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_19;
    }

    date = [MEMORY[0x1E695DF00] date];
    [date timeIntervalSinceDate:v5];
    *buf = 138544130;
    v30 = @"outputContextForLocalDevice";
    v31 = 2114;
    v32 = uUIDString;
    v33 = 2112;
    v34 = v10;
    v35 = 2048;
    v36 = v21;
    v22 = "Response: %{public}@<%{public}@> returned <%@> in %.4lf seconds";
    v23 = v19;
    v24 = 42;
  }

  _os_log_impl(&dword_1A2860000, v23, OS_LOG_TYPE_DEFAULT, v22, buf, v24);
LABEL_18:

LABEL_19:

  return v10;
}

- (void)setAvOutputContext:(id)context
{
  v39 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (!contextCopy)
  {
    [(MRAVConcreteOutputContext *)a2 setAvOutputContext:?];
  }

  if (self->_type == 1)
  {
    v7 = MEMORY[0x1E696AEC0];
    v8 = MRAVOutputContextTypeCopyDescription(1u);
    v9 = [v7 stringWithFormat:@"OutputContext<%@-%p>", v8, self];

    v10 = _MRLogForCategory(0);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (contextCopy)
    {
      if (v11)
      {
        *buf = 138544130;
        v32 = v9;
        v33 = 2114;
        v34 = @"avOutputContext";
        v35 = 2112;
        v36 = contextCopy;
        v37 = 2112;
        v38 = contextCopy;
        v12 = "Set: %{public}@ setting %{public}@ from <%@> to <%@>";
        v13 = v10;
        v14 = 42;
        goto LABEL_9;
      }
    }

    else if (v11)
    {
      *buf = 138543874;
      v32 = v9;
      v33 = 2114;
      v34 = @"avOutputContext";
      v35 = 2112;
      v36 = 0;
      v12 = "Set: %{public}@ setting %{public}@ to <%@>";
      v13 = v10;
      v14 = 32;
LABEL_9:
      _os_log_impl(&dword_1A2860000, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
    }
  }

  v15 = +[MRUserSettings currentSettings];
  supportMultiplayerHost = [v15 supportMultiplayerHost];

  if (supportMultiplayerHost)
  {
    os_unfair_lock_lock(&self->_avOutputContextLock);
    objc_storeStrong(&self->_avOutputContext, context);
    os_unfair_lock_unlock(&self->_avOutputContextLock);
  }

  else
  {
    objc_storeStrong(&self->_avOutputContext, context);
  }

  contextID = [contextCopy contextID];
  providesControlForAllVolumeFeatures = [contextCopy providesControlForAllVolumeFeatures];
  canSetVolume = [contextCopy canSetVolume];
  volumeControlType = [contextCopy volumeControlType];
  serialQueue = self->_serialQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__MRAVConcreteOutputContext_setAvOutputContext___block_invoke;
  block[3] = &unk_1E769D0F0;
  v22 = 4 * (volumeControlType == 2);
  block[4] = self;
  v26 = contextID;
  if (volumeControlType == 1)
  {
    v22 = 2;
  }

  v29 = providesControlForAllVolumeFeatures;
  v30 = canSetVolume;
  v28 = v22;
  v27 = contextCopy;
  v23 = contextCopy;
  v24 = contextID;
  dispatch_sync(serialQueue, block);
  [(MRAVConcreteOutputContext *)self _reloadOutputDevices];
  [(MRAVConcreteOutputContext *)self _reloadPredictedOutputDevice];
  [(MRAVOutputContext *)self _scheduleOutputContextDidChangeNotification];
}

- (void)_registerNotificationsForOutputContext:(uint64_t)context
{
  if (context && a2)
  {
    v3 = *MEMORY[0x1E69586A8];
    v6 = a2;
    [(MRAVConcreteOutputContext *)context _addNotifications:v3 name:v6 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69586B0] name:v6 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E6958688] name:v6 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69587C8] name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E6958750] name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69587C0] name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69586E8] name:v6 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E6958678] name:v6 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69586C0] name:v6 object:?];
    v4 = *MEMORY[0x1E6958748];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E6958748] name:0 object:?];
    v5 = *MEMORY[0x1E69587A8];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69587A8] name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:v4 name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:v5 name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69586F8] name:0 object:?];
    [(MRAVConcreteOutputContext *)context _addNotifications:*MEMORY[0x1E69586B8] name:v6 object:?];
  }
}

- (NSArray)concreteOutputDevices
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__10;
  v10 = __Block_byref_object_dispose__10;
  v11 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __50__MRAVConcreteOutputContext_concreteOutputDevices__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __50__MRAVConcreteOutputContext_concreteOutputDevices__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 40) copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setConcreteOutputDevices:(id)devices
{
  devicesCopy = devices;
  serialQueue = self->_serialQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__MRAVConcreteOutputContext_setConcreteOutputDevices___block_invoke;
  v7[3] = &unk_1E769A4A0;
  v7[4] = self;
  v8 = devicesCopy;
  v6 = devicesCopy;
  dispatch_sync(serialQueue, v7);
}

void __54__MRAVConcreteOutputContext_setConcreteOutputDevices___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = [*(a1 + 40) copy];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F0];
  }

  v4 = v3;
  objc_storeStrong((*(a1 + 32) + 40), v3);
  if (v2)
  {
  }
}

- (BOOL)supportsMultipleBluetoothOutputDevices
{
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  supportsMultipleBluetoothOutputDevices = [avOutputContext supportsMultipleBluetoothOutputDevices];

  return supportsMultipleBluetoothOutputDevices;
}

- (void)setPredictedOutputDevice:(uint64_t)device
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  if (device)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = *(device + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __54__MRAVConcreteOutputContext_setPredictedOutputDevice___block_invoke;
    block[3] = &unk_1E769BBB8;
    v11 = &v12;
    block[4] = device;
    v6 = v3;
    v10 = v6;
    dispatch_sync(v5, block);
    if (*(v13 + 24) == 1)
    {
      v7 = _MRLogForCategory(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [v6 uid];
        *buf = 138543618;
        v17 = v8;
        v18 = 2114;
        deviceCopy = device;
        _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Predicted output device changed to: %{public}@ for context: %{public}@", buf, 0x16u);
      }

      [(MRAVConcreteOutputContext *)device _notifyPredictedOutputDeviceDidChange:v6];
    }

    _Block_object_dispose(&v12, 8);
  }
}

void __54__MRAVConcreteOutputContext_setPredictedOutputDevice___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) uid];
  v3 = [*(a1 + 40) uid];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = [v2 isEqual:v3] ^ 1;
  }

  *(*(*(a1 + 48) + 8) + 24) = v4;

  v5 = *(a1 + 40);
  v6 = (*(a1 + 32) + 48);

  objc_storeStrong(v6, v5);
}

- (void)modifyTopologyWithRequest:(id)request withReplyQueue:(id)queue completion:(id)completion
{
  queueCopy = queue;
  completionCopy = completion;
  requestCopy = request;
  v11 = [[MRAVOutputContextModification alloc] initWithRequest:requestCopy];
  shouldWaitForUpdatedOutputDevices = [requestCopy shouldWaitForUpdatedOutputDevices];

  if (shouldWaitForUpdatedOutputDevices)
  {
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3;
    v22[3] = &unk_1E769B038;
    v13 = &v24;
    v23 = queueCopy;
    v24 = completionCopy;
    v22[4] = self;
    v14 = queueCopy;
    v15 = completionCopy;
    v16 = MEMORY[0x1A58E3570](v22);
    v17 = v23;
  }

  else
  {
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke;
    v25[3] = &unk_1E769AB50;
    v13 = &v27;
    v26 = queueCopy;
    v27 = completionCopy;
    v18 = queueCopy;
    v19 = completionCopy;
    v16 = MEMORY[0x1A58E3570](v25);
    v17 = v26;
  }

  v20 = qos_class_self();
  v21 = dispatch_get_global_queue(v20, 0);
  [(MRAVOutputContextModification *)v11 modifyWithOutputContext:self queue:v21 completion:v16];
}

void __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (!v5)
    {
      v6 = MEMORY[0x1E69E96A0];
      v7 = MEMORY[0x1E69E96A0];
      v4 = *(a1 + 40);
    }

    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_2;
    v8[3] = &unk_1E769AB28;
    v10 = v4;
    v9 = v3;
    dispatch_async(v6, v8);
    if (!v5)
    {
    }
  }
}

void __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48))
  {
    v4 = [objc_opt_class() notificationQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_4;
    v8[3] = &unk_1E769D118;
    v5 = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v9 = v5;
    v10 = v6;
    v11 = v7;
    v12 = *(a1 + 48);
    dispatch_async(v4, v8);
  }
}

void __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_4(uint64_t a1)
{
  if (!*(a1 + 32))
  {
    [*(a1 + 40) _reloadOutputDevices];
  }

  v2 = *(a1 + 48);
  v3 = v2;
  if (!v2)
  {
    v3 = MEMORY[0x1E69E96A0];
    v4 = MEMORY[0x1E69E96A0];
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __81__MRAVConcreteOutputContext_modifyTopologyWithRequest_withReplyQueue_completion___block_invoke_5;
  v5[3] = &unk_1E769AB28;
  v7 = *(a1 + 56);
  v6 = *(a1 + 32);
  dispatch_async(v3, v5);
  if (!v2)
  {
  }
}

- (void)resetPredictedOutputDevice
{
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  [avOutputContext resetPredictedOutputDevice];
}

- (unsigned)volumeControlCapabilities
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  serialQueue = self->_serialQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__MRAVConcreteOutputContext_volumeControlCapabilities__block_invoke;
  v5[3] = &unk_1E769A2A0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(serialQueue, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (float)volume
{
  if (![(MRAVOutputContext *)self isVolumeControlAvailable])
  {
    return 0.0;
  }

  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  [avOutputContext volume];
  v5 = v4;

  return v5;
}

- (void)setVolume:(float)volume details:(id)details
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  detailsCopy = details;
  v8 = [v6 alloc];
  contextID = [(MRAVConcreteOutputContext *)self contextID];
  volume = [v8 initWithFormat:@"%@ -> %lf", contextID, volume];

  v11 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [detailsCopy requestID];

  v13 = [v11 initWithFormat:@"%@<%@>", @"ConcreteOutputContext.setVolume", requestID];
  if (volume)
  {
    [v13 appendFormat:@" for %@", volume];
  }

  v14 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v13;
    _os_log_impl(&dword_1A2860000, v14, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  if ([(MRAVOutputContext *)self isVolumeControlAvailable])
  {
    avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
    *&v16 = volume;
    [avOutputContext setVolume:v16];
  }

  else
  {
    avOutputContext = _MRLogForCategory(0);
    if (os_log_type_enabled(avOutputContext, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1A2860000, avOutputContext, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Volume control is not available, ignoring setVolume request.", buf, 2u);
    }
  }
}

- (void)adjustVolume:(int64_t)volume details:(id)details
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = MEMORY[0x1E696AEC0];
  detailsCopy = details;
  v8 = [v6 alloc];
  contextID = [(MRAVConcreteOutputContext *)self contextID];
  v10 = MRMediaRemoteVolumeControlAdjustmentDescription(volume);
  v11 = [v8 initWithFormat:@"%@ -> %@", contextID, v10];

  v12 = objc_alloc(MEMORY[0x1E696AD60]);
  requestID = [detailsCopy requestID];

  v14 = [v12 initWithFormat:@"%@<%@>", @"ConcreteOutputContext.adjustVolume", requestID];
  if (v11)
  {
    [v14 appendFormat:@" for %@", v11];
  }

  v15 = _MRLogForCategory(0xAuLL);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v14;
    _os_log_impl(&dword_1A2860000, v15, OS_LOG_TYPE_DEFAULT, "Request: %{public}@", buf, 0xCu);
  }

  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  if ([avOutputContext volumeControlType] == 2)
  {
    if ((volume - 1) > 2)
    {
      if ((volume - 4) <= 2)
      {
        [avOutputContext decreaseVolumeByCount:1];
      }
    }

    else
    {
      [avOutputContext increaseVolumeByCount:1];
    }
  }
}

- (void)_handleOutputDevicesDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  v4 = MRMediaRemoteCopyDeviceUID();

  v5 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];

  if (MRProcessIsMediaRemoteDaemon(v6, v7))
  {
    if (v5 == self && v4 == 0)
    {
      userInfo = [notificationCopy userInfo];
      v10 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69586A0]];
      isEqualToString = objc_msgSend_isEqualToString_(v10);

      if (isEqualToString)
      {
        userInfo2 = [notificationCopy userInfo];
        v13 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E6958690]];

        [(MRAVConcreteOutputContext *)self _handleOutputDevicesTimedOut:v13];
      }
    }
  }

  [(MRAVOutputContext *)self _scheduleOutputContextDevicesDidChangeNotification];
}

- (void)_handleOutputDevicesTimedOut:(uint64_t)out
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (out)
  {
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v3;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] AirPlay routes timed out: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v14 = 0x2020000000;
    v15 = 0;
    v5 = *(out + 64);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke;
    block[3] = &unk_1E769D1B8;
    block[4] = out;
    v6 = v3;
    v11 = v6;
    p_buf = &buf;
    dispatch_sync(v5, block);
    if (*(*(&buf + 1) + 24) == 1)
    {
      v7 = *(out + 64);
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2;
      v8[3] = &unk_1E769D1E0;
      v8[4] = out;
      v9 = v6;
      [MRAVEndpoint createEndpointWithOutputDeviceUIDs:v9 queue:v7 completion:v8];
    }

    _Block_object_dispose(&buf, 8);
  }
}

- (void)_addNotifications:(void *)notifications name:(void *)name object:
{
  notificationsCopy = notifications;
  nameCopy = name;
  if (self && notificationsCopy)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter addObserver:self selector:a2 name:notificationsCopy object:nameCopy];

    if (nameCopy)
    {
      [*(self + 120) setObject:nameCopy forKeyedSubscript:notificationsCopy];
    }

    else
    {
      null = [MEMORY[0x1E695DFB0] null];
      [*(self + 120) setObject:null forKeyedSubscript:notificationsCopy];
    }
  }
}

void __53__MRAVConcreteOutputContext__unregisterNotifications__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = MEMORY[0x1E696AD88];
  v6 = a3;
  v7 = a2;
  v11 = [v5 defaultCenter];
  v8 = *(a1 + 32);
  v9 = [MEMORY[0x1E695DFB0] null];
  if ([v6 isEqual:v9])
  {
    v10 = 0;
  }

  else
  {
    v10 = v6;
  }

  [v11 removeObserver:v8 name:v7 object:v10];
}

- (void)_handleOutputContextCanSetVolumeDidChangeNotification:(id)notification
{
  v30[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  canSetVolume = [avOutputContext canSetVolume];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  serialQueue = self->_serialQueue;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __83__MRAVConcreteOutputContext__handleOutputContextCanSetVolumeDidChangeNotification___block_invoke;
  v15 = &unk_1E769D190;
  v20 = canSetVolume;
  selfCopy = self;
  v18 = &v21;
  v19 = &v25;
  v8 = notificationCopy;
  v17 = v8;
  dispatch_sync(serialQueue, &v12);
  if (*(v26 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v29 = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v22 + 6)];
    v30[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [defaultCenter postNotificationName:@"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification" object:self userInfo:v11];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)_handleOutputContextSupportsVolumeDidChangeNotification:(id)notification
{
  v30[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  providesControlForAllVolumeFeatures = [avOutputContext providesControlForAllVolumeFeatures];

  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  serialQueue = self->_serialQueue;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __85__MRAVConcreteOutputContext__handleOutputContextSupportsVolumeDidChangeNotification___block_invoke;
  v15 = &unk_1E769D190;
  v20 = providesControlForAllVolumeFeatures;
  selfCopy = self;
  v18 = &v21;
  v19 = &v25;
  v8 = notificationCopy;
  v17 = v8;
  dispatch_sync(serialQueue, &v12);
  if (*(v26 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v29 = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v22 + 6)];
    v30[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    [defaultCenter postNotificationName:@"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification" object:self userInfo:v11];
  }

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)_handleOutputDeviceCanSetVolumeDidChangeNotification:(id)notification
{
  object = [notification object];
  deviceID = [object deviceID];
  [(MRAVConcreteOutputContext *)self _postVolumeCapabilitiesChangedNotificationForUID:deviceID];
}

- (void)_handleOutputDeviceVolumeDidChangeNotification:(id)notification
{
  object = [notification object];
  deviceID = [object deviceID];
  [(MRAVConcreteOutputContext *)self _postVolumeChangedNotificationForUID:deviceID];
}

- (void)_handleMutedDidChangeNotification:(id)notification
{
  object = [notification object];
  deviceID = [object deviceID];
  [(MRAVConcreteOutputContext *)self _postVolumeMutedChangedNotificationForUID:deviceID];
}

id *__58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke(id *result)
{
  if ((*(result[4] + 73) & 1) == 0)
  {
    v1 = result;
    result = [result[5] count];
    if (result >= 2)
    {
      *(v1[4] + 73) = 1;
      *(*(v1[6] + 1) + 24) = 1;
    }
  }

  return result;
}

void __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(a1 + 32) + 73) = 0;
  v7 = _MRLogForCategory(0);
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2_cold_1(a1, v6, v8);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_1A2860000, v8, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Created endpoint for disconnected devices: %{public}@", &v9, 0xCu);
  }
}

void __67__MRAVConcreteOutputContext__notifyPredictedOutputDeviceDidChange___block_invoke(uint64_t a1)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  if (v2)
  {
    v5 = @"MRAVOutputContextOutputDeviceUserInfoKey";
    v6[0] = v2;
    v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  }

  else
  {
    v3 = MEMORY[0x1E695E0F8];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 postNotificationName:@"kMRAVOutputContextPredictedOutputDeviceDidChangeNotification" object:*(a1 + 40) userInfo:v3];
}

void __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.mediaremote.outputcontext.reloadOutputContext", v2);
  v1 = _MergedGlobals;
  _MergedGlobals = v0;
}

void __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [objc_opt_class() outputContextForLocalDevice];
  if (v2 || ([objc_opt_class() outputContextForLocalDevice], (v2 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v3 = v2;
    v4 = _MRLogForCategory(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      *buf = 138543618;
      v11 = v5;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_1A2860000, v4, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] %{public}@ Reloading with output context: %@", buf, 0x16u);
    }

    [*(a1 + 32) setAvOutputContext:v3];
  }

  else
  {
    objc_initWeak(buf, *(a1 + 32));
    v6 = dispatch_time(0, 10000000000);
    v7 = _MergedGlobals;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_3;
    block[3] = &unk_1E769B178;
    objc_copyWeak(&v9, buf);
    dispatch_after(v6, v7, block);
    objc_destroyWeak(&v9);
    objc_destroyWeak(buf);
  }
}

+ (id)_sharedOutputContextFromType:(uint64_t)type
{
  objc_opt_self();
  switch(a2)
  {
    case 3:
      v3 = +[MRAVConcreteOutputContext sharedSystemScreenContext];
      break;
    case 2:
      v3 = +[MRAVConcreteOutputContext sharedSystemAudioContext];
      break;
    case 1:
      v3 = +[MRAVConcreteOutputContext sharedAudioPresentationContext];
      break;
    default:
      v3 = 0;
      break;
  }

  return v3;
}

void __48__MRAVConcreteOutputContext_setAvOutputContext___block_invoke(uint64_t a1)
{
  [(MRAVConcreteOutputContext *)*(a1 + 32) _unregisterNotifications];
  objc_storeStrong((*(a1 + 32) + 96), *(a1 + 40));
  *(*(a1 + 32) + 104) = *(a1 + 60);
  *(*(a1 + 32) + 105) = *(a1 + 61);
  *(*(a1 + 32) + 108) = *(a1 + 56);
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);

  [(MRAVConcreteOutputContext *)v2 _registerNotificationsForOutputContext:v3];
}

- (void)_notifyPredictedOutputDeviceDidChange:(uint64_t)change
{
  v3 = a2;
  if (change)
  {
    notificationQueue = [objc_opt_class() notificationQueue];
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __67__MRAVConcreteOutputContext__notifyPredictedOutputDeviceDidChange___block_invoke;
    v5[3] = &unk_1E769A4A0;
    v6 = v3;
    changeCopy = change;
    dispatch_async(notificationQueue, v5);
  }
}

uint64_t __54__MRAVConcreteOutputContext_volumeControlCapabilities__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (v1)
  {
    if (*(v1 + 104) == 1 && *(v1 + 105) == 1)
    {
      LODWORD(v1) = *(v1 + 108);
    }

    else
    {
      LODWORD(v1) = 0;
    }
  }

  *(*(*(result + 40) + 8) + 24) = v1;
  return result;
}

- (void)_outputContextChangeInitiatedNotification:(id)notification
{
  v12 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v6 = notificationCopy;
  if (self && ((MRProcessIsMediaRemoteDaemon(notificationCopy, v5) & 1) != 0 || [(MRAVConcreteOutputContext *)self type]== 3))
  {
    v7 = _MRLogForCategory(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138543618;
      v9 = v6;
      v10 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_1A2860000, v7, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Received output context change initiated notification: %{public}@ for context: %{public}@", &v8, 0x16u);
    }
  }
}

- (void)_handleOutputContextVolumeControlTypeDidChangeNotification:(id)notification
{
  v34[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  avOutputContext = [(MRAVConcreteOutputContext *)self avOutputContext];
  v6 = avOutputContext;
  if (self)
  {
    [avOutputContext volumeControlType];
    OUTLINED_FUNCTION_12_1();
    if (v9)
    {
      v10 = v8;
    }

    else
    {
      v10 = v7;
    }
  }

  else
  {
    v10 = 0;
  }

  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  serialQueue = self->_serialQueue;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = __88__MRAVConcreteOutputContext__handleOutputContextVolumeControlTypeDidChangeNotification___block_invoke;
  v19 = &unk_1E769D168;
  v24 = v10;
  selfCopy = self;
  v22 = &v25;
  v23 = &v29;
  v12 = notificationCopy;
  v21 = v12;
  dispatch_sync(serialQueue, &v16);
  if (*(v30 + 24) == 1)
  {
    defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
    v33 = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*(v26 + 6)];
    v34[0] = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    [defaultCenter postNotificationName:@"MRAVOutputContextVolumeControlCapabilitiesDidChangeNotification" object:self userInfo:v15];
  }

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v29, 8);
}

void __88__MRAVConcreteOutputContext__handleOutputContextVolumeControlTypeDidChangeNotification___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 104) == 1 && *(v3 + 105) == 1)
  {
    v4 = *(v3 + 108);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 108) = *(a1 + 64);
  if (*(a1 + 32))
  {
    OUTLINED_FUNCTION_13_1();
    if (v5)
    {
      OUTLINED_FUNCTION_13_1();
    }
  }

  OUTLINED_FUNCTION_1_9(v4);
  if (v1 && ((MRProcessIsMediaRemoteDaemon(v6, v7) & 1) != 0 || [v1 type] == 3))
  {
    v8 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v8))
    {
      v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(*(a1 + 32) + 108));
      v10 = OUTLINED_FUNCTION_8_2(v9);
      v11 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(-351694848);
      v12 = [*(a1 + 40) name];

      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v13, v14, v15, v16, v17, 0x36u);
    }
  }
}

void __83__MRAVConcreteOutputContext__handleOutputContextCanSetVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3)
  {
    if (*(v3 + 104) == 1 && *(v3 + 105) == 1)
    {
      v4 = *(v3 + 108);
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 105) = *(a1 + 64);
  if (*(a1 + 32))
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_1_9(v4);
  if (v1 && ((MRProcessIsMediaRemoteDaemon(v5, v6) & 1) != 0 || [v1 type] == 3))
  {
    v7 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v7))
    {
      v8 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(*(a1 + 32) + 108));
      v9 = OUTLINED_FUNCTION_8_2(v8);
      v10 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(-351694848);
      v11 = [*(a1 + 40) name];

      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v12, v13, v14, v15, v16, 0x36u);
    }
  }
}

void __85__MRAVConcreteOutputContext__handleOutputContextSupportsVolumeDidChangeNotification___block_invoke(uint64_t a1)
{
  v3 = *(a1 + 32);
  if (v3 && *(v3 + 104) == 1 && *(v3 + 105) == 1)
  {
    v4 = *(v3 + 108);
  }

  else
  {
    v4 = 0;
  }

  *(v3 + 104) = *(a1 + 64);
  v5 = *(a1 + 32);
  if (v5 && *(v5 + 104) == 1)
  {
    OUTLINED_FUNCTION_13_1();
  }

  OUTLINED_FUNCTION_1_9(v4);
  if (v1 && ((MRProcessIsMediaRemoteDaemon(v6, v7) & 1) != 0 || [v1 type] == 3))
  {
    v8 = _MRLogForCategory(0);
    if (OUTLINED_FUNCTION_15(v8))
    {
      v9 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(*(*(a1 + 32) + 108));
      v10 = OUTLINED_FUNCTION_8_2(v9);
      v11 = MRMediaRemotePickedRouteVolumeControlCapabilitiesCopyDescription(104);
      v12 = [*(a1 + 40) name];

      OUTLINED_FUNCTION_0_11();
      OUTLINED_FUNCTION_5_4();
      _os_log_impl(v13, v14, v15, v16, v17, 0x36u);
    }
  }
}

- (void)_postVolumeCapabilitiesChangedNotificationForUID:(void *)d
{
  v36 = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (d)
  {
    concreteOutputDevices = [OUTLINED_FUNCTION_6_2() concreteOutputDevices];
    if ([concreteOutputDevices countByEnumeratingWithState:v26 objects:v35 count:16])
    {
      OUTLINED_FUNCTION_11_1();
      while (2)
      {
        v7 = 0;
        do
        {
          OUTLINED_FUNCTION_10_2();
          if (!v16)
          {
            objc_enumerationMutation(concreteOutputDevices);
          }

          v17 = [OUTLINED_FUNCTION_9_1(v8 v9];
          if (v17)
          {
            v19 = v17;
            if ((MRProcessIsMediaRemoteDaemon(v17, v18) & 1) != 0 || [d type] == 3)
            {
              v20 = _MRLogForCategory(0);
              if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
              {
                v21 = [v19 uid];
                isVolumeControlAvailable = [v19 isVolumeControlAvailable];
                contextID = [d contextID];
                *buf = 138543874;
                v30 = v21;
                v31 = 1024;
                v32 = isVolumeControlAvailable;
                v33 = 2114;
                v34 = contextID;
                _os_log_impl(&dword_1A2860000, v20, OS_LOG_TYPE_DEFAULT, "[ConcreteOutputContext] Output device %{public}@ did change isVolumeControlAvailable to %{BOOL}u for context: %{public}@", buf, 0x1Cu);
              }
            }

            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            v27[0] = @"MRAVOutputContextOutputDeviceUserInfoKey";
            v27[1] = @"MRAVOutputContextVolumeControlCapabilitiesUserInfoKey";
            v28[0] = v19;
            v24 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v19, "volumeCapabilities")}];
            v28[1] = v24;
            v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v28 forKeys:v27 count:2];
            OUTLINED_FUNCTION_4_3(v25);

            goto LABEL_17;
          }

          ++v7;
        }

        while (v2 != v7);
        v2 = [concreteOutputDevices countByEnumeratingWithState:v26 objects:v35 count:16];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }
}

- (void)_handleCanMuteDidChangeNotification:(id)notification
{
  object = [notification object];
  [object ID];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v4 _postVolumeCapabilitiesChangedNotificationForUID:v5];
}

- (void)_handleClusterMemberCanMuteDidChangeNotification:(id)notification
{
  object = [notification object];
  [object ID];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v4 _postVolumeCapabilitiesChangedNotificationForUID:v5];
}

- (void)_postVolumeChangedNotificationForUID:(uint64_t)d
{
  v27[18] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (d)
  {
    concreteOutputDevices = [OUTLINED_FUNCTION_6_2() concreteOutputDevices];
    OUTLINED_FUNCTION_14_1();
    if ([v7 countByEnumeratingWithState:? objects:? count:?])
    {
      OUTLINED_FUNCTION_11_1();
      while (2)
      {
        v8 = 0;
        do
        {
          OUTLINED_FUNCTION_10_2();
          if (!v17)
          {
            objc_enumerationMutation(concreteOutputDevices);
          }

          v18 = [OUTLINED_FUNCTION_9_1(v9 v10];
          if (v18)
          {
            v19 = v18;
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            v26[0] = @"MRAVOutputContextOutputDeviceUserInfoKey";
            v26[1] = @"MRAVOutputContextVolumeUserInfoKey";
            v27[0] = v19;
            v21 = MEMORY[0x1E696AD98];
            [v19 volume];
            v22 = [v21 numberWithFloat:?];
            v27[1] = v22;
            v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
            OUTLINED_FUNCTION_4_3(v23);

            goto LABEL_12;
          }

          ++v8;
        }

        while (v2 != v8);
        OUTLINED_FUNCTION_14_1();
        v2 = [concreteOutputDevices countByEnumeratingWithState:? objects:? count:?];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_handleClusterMemberRoomVolumeDidChangeNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  userInfo = [notificationCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:*MEMORY[0x1E69586F0]];

  v7 = [object ID];
  v8 = [MRAVRoomOutputDevice calculateOutputDeviceIDFromOutputDeviceID:v7 withRoomID:v6];

  [(MRAVConcreteOutputContext *)self _postVolumeChangedNotificationForUID:v8];
}

- (void)_postVolumeMutedChangedNotificationForUID:(uint64_t)d
{
  v26[18] = *MEMORY[0x1E69E9840];
  v5 = a2;
  if (d)
  {
    concreteOutputDevices = [OUTLINED_FUNCTION_6_2() concreteOutputDevices];
    OUTLINED_FUNCTION_14_1();
    if ([v7 countByEnumeratingWithState:? objects:? count:?])
    {
      OUTLINED_FUNCTION_11_1();
      while (2)
      {
        v8 = 0;
        do
        {
          OUTLINED_FUNCTION_10_2();
          if (!v17)
          {
            objc_enumerationMutation(concreteOutputDevices);
          }

          v18 = [OUTLINED_FUNCTION_9_1(v9 v10];
          if (v18)
          {
            v19 = v18;
            defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
            v25[0] = @"MRAVOutputContextOutputDeviceUserInfoKey";
            v25[1] = @"MRAVOutputContextVolumeMutedUserInfoKey";
            v26[0] = v19;
            v21 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(v19, "isVolumeMuted")}];
            v26[1] = v21;
            v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v26 forKeys:v25 count:2];
            OUTLINED_FUNCTION_4_3(v22);

            goto LABEL_12;
          }

          ++v8;
        }

        while (v2 != v8);
        OUTLINED_FUNCTION_14_1();
        v2 = [concreteOutputDevices countByEnumeratingWithState:? objects:? count:?];
        if (v2)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }
}

- (void)_handleClusterMemberMutedDidChangeNotification:(id)notification
{
  object = [notification object];
  [object ID];
  objc_claimAutoreleasedReturnValue();
  v4 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v4 _postVolumeMutedChangedNotificationForUID:v5];
}

- (void)_handlePredictedOutputDevicesDidChangeNotification:(id)notification
{
  v5 = _MRLogForCategory(0);
  if (OUTLINED_FUNCTION_15(v5))
  {
    predictedOutputDeviceUIDs = [(MRAVConcreteOutputContext *)self predictedOutputDeviceUIDs];
    OUTLINED_FUNCTION_5_4();
    _os_log_impl(v6, v7, v8, v9, v10, 0x16u);
  }

  [(MRAVConcreteOutputContext *)self predictedOutputDevice];
  objc_claimAutoreleasedReturnValue();
  v11 = OUTLINED_FUNCTION_2_4();
  [(MRAVConcreteOutputContext *)v11 _notifyPredictedOutputDeviceDidChange:v12];
}

- (void)_reloadOutputContext
{
  if (self)
  {
    if (qword_1ED7E8080 != -1)
    {
      dispatch_once(&qword_1ED7E8080, &__block_literal_global_109);
    }

    OUTLINED_FUNCTION_0_3();
    v4 = 3221225472;
    v5 = __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_2;
    v6 = &unk_1E769A228;
    selfCopy = self;
    dispatch_async(v2, block);
  }
}

void __49__MRAVConcreteOutputContext__reloadOutputContext__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [(MRAVConcreteOutputContext *)WeakRetained _reloadOutputContext];
}

void __59__MRAVConcreteOutputContext_sharedAudioPresentationContext__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[MRAVConcreteOutputContext sharedAudioPresentationContext]_block_invoke";
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __53__MRAVConcreteOutputContext_sharedSystemAudioContext__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[MRAVConcreteOutputContext sharedSystemAudioContext]_block_invoke";
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

void __54__MRAVConcreteOutputContext_sharedSystemScreenContext__block_invoke_cold_1(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[MRAVConcreteOutputContext sharedSystemScreenContext]_block_invoke";
  OUTLINED_FUNCTION_5(&dword_1A2860000, a1, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}s", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)iTunesContext
{
  LODWORD(v8) = 136315138;
  *(&v8 + 4) = "+[MRAVConcreteOutputContext iTunesContext]";
  OUTLINED_FUNCTION_5(&dword_1A2860000, self, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %s", a5, a6, a7, a8, v8, DWORD2(v8));
}

+ (void)createOutputContextWithUniqueIdentifier:(uint64_t)a3 .cold.1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 138543362;
  *(&v8 + 4) = a1;
  OUTLINED_FUNCTION_5(&dword_1A2860000, a2, a3, "[ConcreteOutputContext] WARNING: AVF context unavailable for %{public}@", a5, a6, a7, a8, v8, DWORD2(v8));
}

- (void)setAvOutputContext:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"MRAVConcreteOutputContext.m" lineNumber:294 description:{@"Invalid parameter not satisfying: %@", @"avOutputContext"}];
}

void __58__MRAVConcreteOutputContext__handleOutputDevicesTimedOut___block_invoke_2_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 40);
  v4 = 138543618;
  v5 = v3;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_1A2860000, log, OS_LOG_TYPE_ERROR, "[ConcreteOutputContext] Failed to create endpoint for disconnected devices (%{public}@): %{public}@", &v4, 0x16u);
}

@end