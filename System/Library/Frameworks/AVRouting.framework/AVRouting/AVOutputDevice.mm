@interface AVOutputDevice
+ (AVOutputDevice)outputDeviceWithFigEndpoint:(OpaqueFigEndpoint *)endpoint;
+ (AVOutputDevice)outputDeviceWithFigEndpoint:(OpaqueFigEndpoint *)endpoint routingContextFactory:(id)factory;
+ (AVOutputDevice)outputDeviceWithFigEndpoint:(OpaqueFigEndpoint *)endpoint volumeController:(OpaqueFigVolumeControllerState *)controller;
+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer;
+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor routingContextFactory:(id)factory;
+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor volumeController:(OpaqueFigVolumeControllerState *)controller;
+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor withRoutingContext:(OpaqueFigRoutingContext *)context;
+ (BOOL)prefersRouteDescriptors;
+ (id)sharedLocalDevice;
+ (void)initialize;
+ (void)localDeviceDidChange;
- (AVOutputDevice)init;
- (AVOutputDevice)initWithOutputDeviceImpl:(id)impl commChannelManager:(id)manager;
- (BOOL)OEMIconVisible;
- (BOOL)_shouldHideAirPlayInfoDuringDemo;
- (BOOL)allowsHeadTrackedSpatialAudio;
- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)canAccessAppleMusic;
- (BOOL)canAccessRemoteAssets;
- (BOOL)canAccessiCloudMusicLibrary;
- (BOOL)canBeGroupLeader;
- (BOOL)canBeGrouped;
- (BOOL)canCommunicateWithAllLogicalDeviceMembers;
- (BOOL)canFetchMediaDataFromSender;
- (BOOL)canMute;
- (BOOL)canPlayEncryptedProgressiveDownloadAssets;
- (BOOL)canRelayCommunicationChannel;
- (BOOL)canSetVolume;
- (BOOL)carOwnsMainAudio;
- (BOOL)carOwnsScreen;
- (BOOL)groupContainsGroupLeader;
- (BOOL)isActivated;
- (BOOL)isActivatedForContinuityScreen;
- (BOOL)isAppleAccessory;
- (BOOL)isCached;
- (BOOL)isCarPlayVideoActive;
- (BOOL)isCarPlayVideoAllowed;
- (BOOL)isClusterLeader;
- (BOOL)isConversationDetectionEnabled;
- (BOOL)isEligibleToBePredictedOutputDevice;
- (BOOL)isEqual:(id)equal;
- (BOOL)isGroupLeader;
- (BOOL)isHeadTrackedSpatialAudioActive;
- (BOOL)isInUseByPairedDevice;
- (BOOL)isLogicalDeviceLeader;
- (BOOL)isMuted;
- (BOOL)isNightModeSupported;
- (BOOL)limitedUI;
- (BOOL)nightMode;
- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup;
- (BOOL)ownsTurnByTurnNavigation;
- (BOOL)participatesInGroupPlayback;
- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets;
- (BOOL)producesLowFidelityAudio;
- (BOOL)recognizingSpeech;
- (BOOL)requiresAuthorization;
- (BOOL)rightHandDrive;
- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error;
- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error;
- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error;
- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error;
- (BOOL)siriForwardingEnabled;
- (BOOL)supportsBluetoothSharing;
- (BOOL)supportsBufferedAirPlay;
- (BOOL)supportsConversationDetection;
- (BOOL)supportsFitnessDataDestination;
- (BOOL)supportsHeadTrackedSpatialAudio;
- (BOOL)supportsScreenMirroringControls;
- (double)frecencyScore;
- (float)batteryLevel;
- (float)volume;
- (float)volumeForActivatedDeviceClusterMembersWithRoomID:(id)d;
- (id)MFiCertificateSerialNumber;
- (id)OEMIconLabel;
- (id)OEMIcons;
- (id)airPlayProperties;
- (id)alternateTransportType;
- (id)availableBluetoothListeningModes;
- (id)borrowScreenForClient:(id)client reason:(id)reason;
- (id)clusterID;
- (id)clusteredDeviceDescriptions;
- (id)connectedPairedDevices;
- (id)currentBluetoothListeningMode;
- (id)currentScreenViewAreaForScreenID:(id)d;
- (id)delegate;
- (id)displayCornerMasks;
- (id)figEndpointOutputDeviceImpl;
- (id)groupID;
- (id)headTrackedSpatialAudioMode;
- (id)limitedUIElements;
- (id)logicalDeviceID;
- (id)modelSpecificInformation;
- (id)outputDeviceHIDs;
- (id)outputDeviceInfo;
- (id)proposedGroupID;
- (id)requestTurnByTurnNavigationOwnership;
- (id)screens;
- (id)supportedFeatures;
- (int64_t)HAPConformance;
- (int64_t)authenticationType;
- (int64_t)clusterType;
- (int64_t)configuredClusterSize;
- (int64_t)deviceSubType;
- (int64_t)deviceType;
- (int64_t)electronicTollCollection;
- (int64_t)mediaSessionStatus;
- (int64_t)navigationAidedDriving;
- (int64_t)transportType;
- (int64_t)voiceTriggerMode;
- (int64_t)volumeControlType;
- (unint64_t)hash;
- (void)activatedDeviceClusterMembersDidChangeVolume:(id)volume forRoomID:(__CFString *)d;
- (void)communicationChannelManager:(id)manager didCloseCommunicationChannel:(id)channel;
- (void)communicationChannelManager:(id)manager didReceiveData:(id)data fromCommunicationChannel:(id)channel;
- (void)configureUsingBlock:(id)block completionHandler:(id)handler;
- (void)configureUsingBlock:(id)block options:(id)options completionHandler:(id)handler;
- (void)dealloc;
- (void)decreaseVolumeByCount:(int64_t)count;
- (void)increaseVolumeByCount:(int64_t)count;
- (void)openCommunicationChannelToDestination:(id)destination options:(id)options completionHandler:(id)handler;
- (void)outputDeviceImplCanMuteDidChange:(id)change;
- (void)outputDeviceImplDidChangeCanChangeVolume:(id)volume;
- (void)outputDeviceImplDidChangeMute:(id)mute;
- (void)outputDeviceImplDidChangeProposedGroupID:(id)d;
- (void)outputDeviceImplDidChangeVolume:(id)volume;
- (void)outputDeviceImplDidChangeVolumeControlType:(id)type;
- (void)performHapticFeedbackForUUID:(id)d withHapticType:(id)type completionHandler:(id)handler;
- (void)postNotification:(id)notification fromImpl:(id)impl;
- (void)postNotification:(id)notification withPayload:(id)payload fromImpl:(id)impl;
- (void)requestCarUIForURL:(id)l withUUID:(id)d;
- (void)requestViewArea:(int64_t)area forScreenID:(id)d;
- (void)setActivatedDeviceClusterMembersVolume:(float)volume withRoomID:(id)d;
- (void)setCarPlayVideoActive:(BOOL)active completionHandler:(id)handler;
- (void)setCommunicationChannelDelegate:(id)delegate;
- (void)setCurrentBluetoothListeningMode:(id)mode;
- (void)setDelegate:(id)delegate;
- (void)setDisplayCornerMasks:(id)masks;
- (void)setMediaRemoteData:(id)data completionHandler:(id)handler;
- (void)setMuted:(BOOL)muted;
- (void)setSecondDisplayEnabled:(BOOL)enabled;
- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler;
- (void)setSiriForwardingEnabled:(BOOL)enabled;
- (void)setVolume:(float)volume;
- (void)suggestUIWithURLs:(id)ls completionHandler:(id)handler;
- (void)takeScreenForClient:(id)client reason:(id)reason;
- (void)updateFrecencyScore;
@end

@implementation AVOutputDevice

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work();

    fig_note_initialize_category_with_default_work();
  }
}

+ (BOOL)prefersRouteDescriptors
{
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UseFigRouteDescriptor", @"com.apple.avfoundation", &keyExistsAndHasValidFormat);
  if (!keyExistsAndHasValidFormat)
  {
    AppBooleanValue = [+[AVExecutionEnvironment sharedExecutionEnvironment](AVExecutionEnvironment "sharedExecutionEnvironment")] != @"AVPlatformIdentifierMacOS";
  }

  return AppBooleanValue != 0;
}

- (int64_t)deviceType
{
  if ([(AVOutputDevice *)self _shouldHideAirPlayInfoDuringDemo])
  {
    return 3;
  }

  else
  {
    return self->_outputDevice->deviceType;
  }
}

- (BOOL)_shouldHideAirPlayInfoDuringDemo
{
  if (_shouldHideAirPlayInfoDuringDemo_onceToken != -1)
  {
    [AVOutputDevice _shouldHideAirPlayInfoDuringDemo];
  }

  outputDevice = self->_outputDevice;
  if (outputDevice->deviceSubType == 18 && !outputDevice->deviceType)
  {
    IsInternalBuild = FigDebugIsInternalBuild();
    if (IsInternalBuild)
    {
      LOBYTE(IsInternalBuild) = _shouldHideAirPlayInfoDuringDemo_sHideAirPlayRoutingInfoDemoMode != 0;
    }
  }

  else
  {
    LOBYTE(IsInternalBuild) = 0;
  }

  return IsInternalBuild;
}

- (BOOL)isCarPlayVideoAllowed
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isCarPlayVideoAllowed];
}

- (int64_t)deviceSubType
{
  if ([(AVOutputDevice *)self _shouldHideAirPlayInfoDuringDemo])
  {
    return 1;
  }

  else
  {
    return self->_outputDevice->deviceSubType;
  }
}

uint64_t __50__AVOutputDevice__shouldHideAirPlayInfoDuringDemo__block_invoke()
{
  result = FigGetCFPreferenceBooleanWithDefault();
  _shouldHideAirPlayInfoDuringDemo_sHideAirPlayRoutingInfoDemoMode = result;
  return result;
}

- (id)airPlayProperties
{
  impl = [(AVOutputDevice *)self impl];

  return [impl airPlayProperties];
}

- (id)logicalDeviceID
{
  impl = [(AVOutputDevice *)self impl];

  return [impl logicalDeviceID];
}

- (BOOL)canAccessRemoteAssets
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canAccessRemoteAssets];
}

- (BOOL)canAccessAppleMusic
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canAccessAppleMusic];
}

- (BOOL)canAccessiCloudMusicLibrary
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canAccessiCloudMusicLibrary];
}

- (BOOL)canPlayEncryptedProgressiveDownloadAssets
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canPlayEncryptedProgressiveDownloadAssets];
}

- (BOOL)canFetchMediaDataFromSender
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canFetchMediaDataFromSender];
}

- (BOOL)presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets
{
  impl = [(AVOutputDevice *)self impl];

  return [impl presentsOptimizedUserInterfaceWhenPlayingFetchedAudioOnlyAssets];
}

- (BOOL)canBeGroupLeader
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canBeGroupLeader];
}

- (BOOL)canRelayCommunicationChannel
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canRelayCommunicationChannel];
}

- (BOOL)supportsBufferedAirPlay
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportsBufferedAirPlay];
}

- (BOOL)canBeGrouped
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canBeGrouped];
}

- (BOOL)isGroupLeader
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isGroupLeader];
}

- (int64_t)volumeControlType
{
  impl = [(AVOutputDevice *)self impl];

  return [impl volumeControlType];
}

- (int64_t)HAPConformance
{
  impl = [(AVOutputDevice *)self impl];

  return [impl HAPConformance];
}

- (id)modelSpecificInformation
{
  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:0];
  v4 = [-[AVOutputDevice impl](self "impl")];
  if (v4)
  {
    [v3 setObject:v4 forKey:@"AVOutputDeviceBatteryLevelCaseKey"];
  }

  v5 = [-[AVOutputDevice impl](self "impl")];
  if (v5)
  {
    [v3 setObject:v5 forKey:@"AVOutputDeviceBatteryLevelLeftKey"];
  }

  v6 = [-[AVOutputDevice impl](self "impl")];
  if (v6)
  {
    [v3 setObject:v6 forKey:@"AVOutputDeviceBatteryLevelRightKey"];
  }

  v7 = [-[AVOutputDevice impl](self "impl")];
  if (v7)
  {
    [v3 setObject:v7 forKey:@"AVOutputDeviceSupportsDataOverACLProtocolKey"];
  }

  v8 = [-[AVOutputDevice impl](self "impl")];
  if (v8)
  {
    [v3 setObject:v8 forKey:@"AVOutputDeviceIsInEarKey"];
  }

  v9 = [v3 copy];

  return v9;
}

- (BOOL)requiresAuthorization
{
  impl = [(AVOutputDevice *)self impl];

  return [impl requiresAuthorization];
}

- (id)clusteredDeviceDescriptions
{
  impl = [(AVOutputDevice *)self impl];

  return [impl clusteredDeviceDescriptions];
}

- (int64_t)clusterType
{
  impl = [(AVOutputDevice *)self impl];

  return [impl clusterType];
}

- (int64_t)configuredClusterSize
{
  impl = [(AVOutputDevice *)self impl];

  return [impl configuredClusterSize];
}

- (id)currentBluetoothListeningMode
{
  impl = [(AVOutputDevice *)self impl];

  return [impl currentBluetoothListeningMode];
}

- (id)availableBluetoothListeningModes
{
  impl = [(AVOutputDevice *)self impl];

  return [impl availableBluetoothListeningModes];
}

- (BOOL)producesLowFidelityAudio
{
  impl = [(AVOutputDevice *)self impl];

  return [impl producesLowFidelityAudio];
}

- (id)clusterID
{
  impl = [(AVOutputDevice *)self impl];

  return [impl clusterID];
}

- (BOOL)isClusterLeader
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isClusterLeader];
}

- (BOOL)isAppleAccessory
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isAppleAccessory];
}

- (BOOL)supportsBluetoothSharing
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportsBluetoothSharing];
}

- (id)connectedPairedDevices
{
  impl = [(AVOutputDevice *)self impl];

  return [impl connectedPairedDevices];
}

- (BOOL)isInUseByPairedDevice
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isInUseByPairedDevice];
}

- (BOOL)supportsHeadTrackedSpatialAudio
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportsHeadTrackedSpatialAudio];
}

- (BOOL)isHeadTrackedSpatialAudioActive
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isHeadTrackedSpatialAudioActive];
}

- (id)headTrackedSpatialAudioMode
{
  impl = [(AVOutputDevice *)self impl];

  return [impl headTrackedSpatialAudioMode];
}

- (BOOL)supportsConversationDetection
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportsConversationDetection];
}

- (BOOL)isConversationDetectionEnabled
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isConversationDetectionEnabled];
}

- (id)alternateTransportType
{
  impl = [(AVOutputDevice *)self impl];

  return [impl alternateTransportType];
}

- (BOOL)isCached
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isCached];
}

- (void)dealloc
{
  outputDevice = self->_outputDevice;
  if (outputDevice)
  {
  }

  v4.receiver = self;
  v4.super_class = AVOutputDevice;
  [(AVOutputDevice *)&v4 dealloc];
}

+ (id)sharedLocalDevice
{
  v2 = objc_alloc_init(AVLocalOutputDeviceImpl);
  v3 = [[AVOutputDevice alloc] initWithOutputDeviceImpl:v2 commChannelManager:0];

  return v3;
}

- (double)frecencyScore
{
  v2 = [(AVOutputDevice *)self ID];

  [AVOutputDeviceFrecencyManager frecencyScoreForDeviceID:v2];
  return result;
}

- (id)groupID
{
  impl = [(AVOutputDevice *)self impl];

  return [impl groupID];
}

- (BOOL)groupContainsGroupLeader
{
  impl = [(AVOutputDevice *)self impl];

  return [impl groupContainsGroupLeader];
}

- (BOOL)isActivatedForContinuityScreen
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isActivatedForContinuityScreen];
}

- (BOOL)participatesInGroupPlayback
{
  groupID = [(AVOutputDevice *)self groupID];
  if (groupID)
  {
    impl = [(AVOutputDevice *)self impl];

    LOBYTE(groupID) = [impl participatesInGroupPlayback];
  }

  return groupID;
}

+ (AVOutputDevice)outputDeviceWithFigEndpoint:(OpaqueFigEndpoint *)endpoint
{
  FigVolumeControllerCopySharedControllerRemote();
  v5 = AVDefaultRoutingContextFactory();
  if (endpoint)
  {
    v6 = [[AVFigEndpointOutputDeviceImpl alloc] initWithFigEndpoint:endpoint volumeController:0 routingContextFactory:v5 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification()];
    endpoint = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigEndpointOutputDeviceImpl *)v6 ID]];
    v7 = [[self alloc] initWithOutputDeviceImpl:v6 commChannelManager:endpoint];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (AVOutputDevice)outputDeviceWithFigEndpoint:(OpaqueFigEndpoint *)endpoint volumeController:(OpaqueFigVolumeControllerState *)controller
{
  v7 = AVDefaultRoutingContextFactory();
  v8 = [[AVFigEndpointOutputDeviceImpl alloc] initWithFigEndpoint:endpoint volumeController:controller routingContextFactory:v7 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification()];
  v9 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigEndpointOutputDeviceImpl *)v8 ID]];
  v10 = [[self alloc] initWithOutputDeviceImpl:v8 commChannelManager:v9];

  return v10;
}

+ (AVOutputDevice)outputDeviceWithFigEndpoint:(OpaqueFigEndpoint *)endpoint routingContextFactory:(id)factory
{
  FigVolumeControllerCopySharedControllerRemote();
  v7 = [[AVFigEndpointOutputDeviceImpl alloc] initWithFigEndpoint:endpoint volumeController:0 routingContextFactory:factory useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification()];
  v8 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigEndpointOutputDeviceImpl *)v7 ID]];
  v9 = [[self alloc] initWithOutputDeviceImpl:v7 commChannelManager:v8];

  return v9;
}

- (id)figEndpointOutputDeviceImpl
{
  impl = [(AVOutputDevice *)self impl];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    return impl;
  }

  else
  {
    return 0;
  }
}

+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor volumeController:(OpaqueFigVolumeControllerState *)controller
{
  v6 = AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor(descriptor);
  v7 = AVDefaultRoutingContextFactory();
  v8 = [[AVFigRouteDescriptorOutputDeviceImpl alloc] initWithRouteDescriptor:descriptor routeDiscoverer:v6 volumeController:controller routingContextFactory:v7 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification() routingContext:0];
  v9 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigRouteDescriptorOutputDeviceImpl *)v8 ID]];
  v10 = [[AVOutputDevice alloc] initWithOutputDeviceImpl:v8 commChannelManager:v9];
  if (v6)
  {
    CFRelease(v6);
  }

  return v10;
}

+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor routeDiscoverer:(OpaqueFigRouteDiscoverer *)discoverer
{
  FigVolumeControllerCopySharedControllerRemote();
  v6 = AVDefaultRoutingContextFactory();
  v7 = [[AVFigRouteDescriptorOutputDeviceImpl alloc] initWithRouteDescriptor:descriptor routeDiscoverer:discoverer volumeController:0 routingContextFactory:v6 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification() routingContext:0];
  v8 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigRouteDescriptorOutputDeviceImpl *)v7 ID]];
  v9 = [[AVOutputDevice alloc] initWithOutputDeviceImpl:v7 commChannelManager:v8];

  return v9;
}

+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor routingContextFactory:(id)factory
{
  v6 = AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor(descriptor);
  FigVolumeControllerCopySharedControllerRemote();
  v7 = [[AVFigRouteDescriptorOutputDeviceImpl alloc] initWithRouteDescriptor:descriptor routeDiscoverer:v6 volumeController:0 routingContextFactory:factory useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification() routingContext:0];
  v8 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigRouteDescriptorOutputDeviceImpl *)v7 ID]];
  v9 = [[AVOutputDevice alloc] initWithOutputDeviceImpl:v7 commChannelManager:v8];
  if (v6)
  {
    CFRelease(v6);
  }

  return v9;
}

+ (AVOutputDevice)outputDeviceWithRouteDescriptor:(__CFDictionary *)descriptor withRoutingContext:(OpaqueFigRoutingContext *)context
{
  if (descriptor)
  {
    v6 = AVOutputDeviceCopySharedRouteDiscovererForRouteDescriptor(descriptor);
    FigVolumeControllerCopySharedControllerRemote();
    v7 = AVDefaultRoutingContextFactory();
    v8 = [[AVFigRouteDescriptorOutputDeviceImpl alloc] initWithRouteDescriptor:descriptor routeDiscoverer:v6 volumeController:0 routingContextFactory:v7 useRouteConfigUpdatedNotification:AVOutputContextUsesRouteConfigUpdatedNotification() routingContext:context];
    v9 = [[AVSystemRemotePoolOutputDeviceCommunicationChannelManager alloc] initWithDeviceID:[(AVFigRouteDescriptorOutputDeviceImpl *)v8 ID]];
    v10 = [[AVOutputDevice alloc] initWithOutputDeviceImpl:v8 commChannelManager:v9];
    if (v6)
    {
      CFRelease(v6);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (AVOutputDevice)init
{
  selfCopy = self;
  v10 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:AVMethodExceptionReasonWithObjectAndSelector(self userInfo:{a2, @"Not available", v5, v6, v7, v8, v9, v11), 0}];
  objc_exception_throw(v10);
}

- (BOOL)isEqual:(id)equal
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  impl = [equal impl];
  impl2 = [(AVOutputDevice *)self impl];

  return [impl2 isEqual:impl];
}

- (unint64_t)hash
{
  impl = [(AVOutputDevice *)self impl];

  return [impl hash];
}

- (BOOL)isEligibleToBePredictedOutputDevice
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isEligibleToBePredictedOutputDevice];
}

- (BOOL)isCarPlayVideoActive
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isCarPlayVideoActive];
}

- (int64_t)mediaSessionStatus
{
  impl = [(AVOutputDevice *)self impl];

  return [impl mediaSessionStatus];
}

- (void)setCarPlayVideoActive:(BOOL)active completionHandler:(id)handler
{
  activeCopy = active;
  v13 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    v12 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = [(AVOutputDevice *)self impl];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__AVOutputDevice_setCarPlayVideoActive_completionHandler___block_invoke;
  v9[3] = &unk_1E794F588;
  v9[4] = handler;
  v10 = activeCopy;
  [impl setCarPlayVideoActive:activeCopy completionHandler:v9];
}

uint64_t __58__AVOutputDevice_setCarPlayVideoActive_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = *(a1 + 32);
  if (result)
  {
    result = (*(result + 16))(result, a2);
  }

  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (float)batteryLevel
{
  v2 = [-[AVOutputDevice impl](self "impl")];

  [v2 floatValue];
  return result;
}

- (BOOL)automaticallyAllowsConnectionsFromPeersInHomeGroup
{
  impl = [(AVOutputDevice *)self impl];

  return [impl automaticallyAllowsConnectionsFromPeersInHomeGroup];
}

- (BOOL)onlyAllowsConnectionsFromPeersInHomeGroup
{
  impl = [(AVOutputDevice *)self impl];

  return [impl onlyAllowsConnectionsFromPeersInHomeGroup];
}

- (void)setSecondDisplayEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputDevice impl](self "impl")];
}

- (void)setSecondDisplayMode:(id)mode completionHandler:(id)handler
{
  v12 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    v11 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = [(AVOutputDevice *)self impl];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __57__AVOutputDevice_setSecondDisplayMode_completionHandler___block_invoke;
  v9[3] = &unk_1E794F5B0;
  v9[4] = handler;
  [impl setSecondDisplayMode:mode completionHandler:v9];
}

uint64_t __57__AVOutputDevice_setSecondDisplayMode_completionHandler___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *MEMORY[0x1E69E9840];
  result = (*(*(a1 + 32) + 16))();
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    return fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return result;
}

- (float)volume
{
  impl = [(AVOutputDevice *)self impl];

  [impl volume];
  return result;
}

- (void)outputDeviceImplDidChangeVolume:(id)volume
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (BOOL)canSetVolume
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canSetVolume];
}

- (void)outputDeviceImplDidChangeCanChangeVolume:(id)volume
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)outputDeviceImplDidChangeVolumeControlType:(id)type
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)outputDeviceImplDidChangeMute:(id)mute
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)postNotification:(id)notification fromImpl:(id)impl
{
  v7 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)postNotification:(id)notification withPayload:(id)payload fromImpl:(id)impl
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)outputDeviceImplCanMuteDidChange:(id)change
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (void)activatedDeviceClusterMembersDidChangeVolume:(id)volume forRoomID:(__CFString *)d
{
  v9[20] = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = @"AVOutputDeviceActivatedClusterMembersRoomIDKey";
  v9[0] = d;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

+ (void)localDeviceDidChange
{
  v3 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] "defaultCenter")];
}

- (void)setVolume:(float)volume
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = [(AVOutputDevice *)self impl];
  *&v7 = volume;
  [impl setVolume:v7];
}

- (void)increaseVolumeByCount:(int64_t)count
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputDevice impl](self "impl")];
}

- (void)decreaseVolumeByCount:(int64_t)count
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputDevice impl](self "impl")];
}

- (void)setActivatedDeviceClusterMembersVolume:(float)volume withRoomID:(id)d
{
  v10 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = [(AVOutputDevice *)self impl];
  *&v9 = volume;
  [impl setActivatedDeviceClusterMembersVolume:d withRoomID:v9];
}

- (float)volumeForActivatedDeviceClusterMembersWithRoomID:(id)d
{
  impl = [(AVOutputDevice *)self impl];

  [impl volumeForActivatedDeviceClusterMembersWithRoomID:d];
  return result;
}

- (BOOL)canMute
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canMute];
}

- (BOOL)isMuted
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isMuted];
}

- (void)setMuted:(BOOL)muted
{
  mutedCopy = muted;
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputDevice impl](self "impl")];
}

- (id)proposedGroupID
{
  impl = [(AVOutputDevice *)self impl];

  return [impl proposedGroupID];
}

- (void)outputDeviceImplDidChangeProposedGroupID:(id)d
{
  v5 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [objc_msgSend(MEMORY[0x1E696AD88] defaultCenter];
}

- (BOOL)isLogicalDeviceLeader
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isLogicalDeviceLeader];
}

- (BOOL)canCommunicateWithAllLogicalDeviceMembers
{
  impl = [(AVOutputDevice *)self impl];

  return [impl canCommunicateWithAllLogicalDeviceMembers];
}

- (BOOL)allowsHeadTrackedSpatialAudio
{
  impl = [(AVOutputDevice *)self impl];

  return [impl allowsHeadTrackedSpatialAudio];
}

- (BOOL)setAllowsHeadTrackedSpatialAudio:(BOOL)audio error:(id *)error
{
  audioCopy = audio;
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [-[AVOutputDevice impl](self "impl")];
}

- (BOOL)setConversationDetectionEnabled:(BOOL)enabled error:(id *)error
{
  enabledCopy = enabled;
  impl = [(AVOutputDevice *)self impl];

  return [impl setConversationDetectionEnabled:enabledCopy error:error];
}

- (BOOL)setHeadTrackedSpatialAudioMode:(id)mode error:(id *)error
{
  v9 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return [-[AVOutputDevice impl](self "impl")];
}

- (void)setCurrentBluetoothListeningMode:(id)mode
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [(AVOutputDevice *)self setCurrentBluetoothListeningMode:mode error:0];
}

- (BOOL)setCurrentBluetoothListeningMode:(id)mode error:(id *)error
{
  v15[20] = *MEMORY[0x1E69E9840];
  v15[0] = 0;
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8 = [-[AVOutputDevice impl](self "impl")];
  v9 = v8;
  if (error && !v8 && v15[0])
  {
    code = [v15[0] code];
    if (code == 1852797029)
    {
      v11 = AVLocalizedError(@"AVFoundationErrorDomain", -11910, [MEMORY[0x1E695DF20] dictionaryWithObject:v15[0] forKey:*MEMORY[0x1E696AA08]]);
    }

    else
    {
      v12 = code;
      domain = [v15[0] domain];
      if ([domain isEqualToString:*MEMORY[0x1E696A768]])
      {
        v11 = AVLocalizedErrorWithUnderlyingOSStatus(v12, 0);
      }

      else
      {
        v11 = v15[0];
      }
    }

    *error = v11;
  }

  return v9;
}

- (BOOL)supportsFitnessDataDestination
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportsFitnessDataDestination];
}

- (BOOL)supportsScreenMirroringControls
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportsScreenMirroringControls];
}

- (void)openCommunicationChannelToDestination:(id)destination options:(id)options completionHandler:(id)handler
{
  v27 = *MEMORY[0x1E69E9840];
  v8 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionCancelIfAuthRequired"];
  v9 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionCorrelationID"];
  v10 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionInitiator"];
  v21 = [options objectForKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionAuthorizationToken"];
  v22 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionControlType"];
  v11 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionClientUUID"];
  v12 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionQualityOfService"];
  v20 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionStreamPriority"];
  v19 = [options objectForKeyedSubscript:@"AVOutputDeviceCommunicationChannelOptionAwaitReply"];
  if (dword_1ED6F6B68)
  {
    v26 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if ([(AVOutputDevice *)self deviceType]== 2)
  {
    v14 = +[AVOutputContext sharedSystemRemoteDisplayContext];
  }

  else
  {
    v14 = +[AVOutputContext sharedSystemRemotePoolContext];
  }

  v15 = v14;
  if (v14)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v17 = dictionary;
    if (v9)
    {
      [dictionary setObject:v9 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionCorrelationID"];
    }

    if (v10)
    {
      [v17 setObject:v10 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionInitiator"];
    }

    if ([v8 BOOLValue])
    {
      [v17 setObject:v8 forKeyedSubscript:@"AVOutputContextAddOutputDeviceCancelIfAuthRequiredKey"];
    }

    if (v21)
    {
      [v17 setObject:v21 forKeyedSubscript:@"AVOutputContextAddOutputDeviceOptionAuthorizationToken"];
    }

    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __82__AVOutputDevice_openCommunicationChannelToDestination_options_completionHandler___block_invoke;
    v24[3] = &unk_1E794F5D8;
    v24[4] = v22;
    v24[5] = destination;
    v24[6] = v9;
    v24[7] = v11;
    v24[8] = v12;
    v24[9] = v20;
    v24[10] = v19;
    v24[11] = v15;
    v24[12] = self;
    v24[13] = handler;
    [v15 addOutputDevice:self options:v17 completionHandler:v24];
  }

  else
  {
    v18 = AVLocalizedError(@"AVFoundationErrorDomain", -11800, [MEMORY[0x1E695DF20] dictionaryWithObject:@"Error retrieving system remote pool context." forKey:*MEMORY[0x1E696A278]]);
    (*(handler + 2))(handler, 0, v18, 0);
  }
}

void __82__AVOutputDevice_openCommunicationChannelToDestination_options_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  cf[16] = *MEMORY[0x1E69E9840];
  v29 = 0;
  theArray = 0;
  v4 = AVInputDeviceInternal;
  if ([a2 status] != 2)
  {
    [a2 cancellationReason];
    Mutable = 0;
    v10 = 0;
    goto LABEL_46;
  }

  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v7 = *(a1 + 32);
  if (v7)
  {
    if ([v7 isEqualToString:@"AVOutputDeviceCommunicationChannelControlTypeDirect"])
    {
      v8 = 0;
      v9 = 2;
    }

    else
    {
      v11 = [*(a1 + 32) isEqualToString:@"AVOutputDeviceCommunicationChannelControlTypeRelayed"];
      v8 = v11 ^ 1;
      v9 = v11;
    }
  }

  else
  {
    v9 = 0;
    v8 = 1;
  }

  if ([*(a1 + 40) isEqualToString:@"AVOutputDeviceCommunicationChannelDataDestinationMediaRemote"] || objc_msgSend(*(a1 + 40), "isEqualToString:", @"AVOutputDeviceCommunicationChannelDataDestinationFitness") || objc_msgSend(*(a1 + 40), "isEqualToString:", @"AVOutputDeviceCommunicationChannelDataDestinationCarPlayData") || objc_msgSend(*(a1 + 40), "isEqualToString:", @"AVOutputDeviceCommunicationChannelDataDestinationCarPlayDataVersionTwo") || objc_msgSend(*(a1 + 40), "isEqualToString:", @"AVOutputDeviceCommunicationChannelDataDestinationCarPlayDataUpdate") || objc_msgSend(*(a1 + 40), "isEqualToString:", @"AVOutputDeviceCommunicationChannelDataDestinationCarPlayDataLogging"))
  {
    if (v8)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  [*(a1 + 40) isEqualToString:@"AVOutputDeviceCommunicationChannelDataDestinationCarPlayClusterControl"];
  if ((v8 & 1) == 0)
  {
LABEL_15:
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69623B0], [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v9]);
  }

LABEL_16:
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetInt32();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  FigCFDictionarySetValue();
  v12 = *(a1 + 80);
  if (v12)
  {
    [v12 BOOLValue];
    FigCFDictionarySetValue();
  }

  v13 = [*(a1 + 88) figRoutingContext];
  if (!v13)
  {
    AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
    goto LABEL_45;
  }

  v14 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (v14)
  {
    v15 = v14(v13, &theArray);
    if (v15)
    {
      v25 = v15;
      goto LABEL_44;
    }

    if (!theArray)
    {
      goto LABEL_37;
    }

    Count = CFArrayGetCount(theArray);
    if (Count < 1)
    {
      goto LABEL_37;
    }

    v17 = Count;
    v18 = 0;
    v19 = *MEMORY[0x1E69620F8];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v18);
      cf[0] = 0;
      CMBaseObject = FigEndpointGetCMBaseObject();
      v22 = *(*(CMBaseObjectGetVTable() + 8) + 48);
      if (v22)
      {
        v22(CMBaseObject, v19, v5, cf);
      }

      [*(a1 + 96) deviceID];
      if (FigCFEqual())
      {
        break;
      }

      if (cf[0])
      {
        CFRelease(cf[0]);
      }

      if (v17 == ++v18)
      {
        goto LABEL_37;
      }
    }

    if (cf[0])
    {
      CFRelease(cf[0]);
    }

    if (!ValueAtIndex || (FigEndpointExtendedGetClassID(), !CMBaseObjectIsMemberOfClass()))
    {
LABEL_37:
      AVLocalizedError(@"AVFoundationErrorDomain", -11800, 0);
      v10 = 0;
      v4 = AVInputDeviceInternal;
      goto LABEL_46;
    }

    v4 = AVInputDeviceInternal;
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      v4 = AVInputDeviceInternal;
    }

    v24 = *(*(CMBaseObjectGetVTable() + 24) + 80);
    if (v24)
    {
      v25 = v24(ValueAtIndex, Mutable, &v29);
      if (!v25)
      {
        v26 = [AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl alloc];
        v27 = [(AVFigEndpointRemoteControlSessionOutputDeviceCommunicationChannelImpl *)v26 initWithRemoteControlSession:v29];
        v10 = [[AVOutputDeviceCommunicationChannel alloc] initWithOutputDeviceCommunicationChannelImpl:v27];

        goto LABEL_46;
      }

      goto LABEL_44;
    }
  }

  v25 = 4294954514;
LABEL_44:
  AVLocalizedErrorWithUnderlyingOSStatus(v25, 0);
LABEL_45:
  v10 = 0;
LABEL_46:
  (*(*(a1 + 104) + 16))();
  if (LODWORD(v4[73].isa))
  {
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v29)
  {
    CFRelease(v29);
  }

  if (theArray)
  {
    CFRelease(theArray);
  }
}

- (void)setCommunicationChannelDelegate:(id)delegate
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  objc_storeWeak(&self->_outputDevice->communicationChannelDelegate, delegate);
}

- (void)communicationChannelManager:(id)manager didReceiveData:(id)data fromCommunicationChannel:(id)channel
{
  v11 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_outputDevice->communicationChannelDelegate);
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [Weak outputDevice:self didReceiveData:data fromCommunicationChannel:channel];
  }

  else if (dword_1ED6F6B68)
  {
    v10 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)communicationChannelManager:(id)manager didCloseCommunicationChannel:(id)channel
{
  v9 = *MEMORY[0x1E69E9840];
  Weak = objc_loadWeak(&self->_outputDevice->communicationChannelDelegate);
  if (objc_opt_respondsToSelector())
  {
    if (dword_1ED6F6B68)
    {
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    [Weak outputDevice:self didCloseCommunicationChannel:channel];
  }

  else if (dword_1ED6F6B68)
  {
    v8 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }
}

- (void)configureUsingBlock:(id)block options:(id)options completionHandler:(id)handler
{
  v14 = *MEMORY[0x1E69E9840];
  [options objectForKeyedSubscript:@"AVOutputDeviceConfigurationOptionCancelConfigurationIfAuthRequired"];
  if (dword_1ED6F6B68)
  {
    v13 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  impl = [(AVOutputDevice *)self impl];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __64__AVOutputDevice_configureUsingBlock_options_completionHandler___block_invoke;
  v11[3] = &unk_1E794F600;
  v11[4] = handler;
  [impl configureUsingBlock:block options:options completionHandler:v11];
}

uint64_t __64__AVOutputDevice_configureUsingBlock_options_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)configureUsingBlock:(id)block completionHandler:(id)handler
{
  v11 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    v10 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __56__AVOutputDevice_configureUsingBlock_completionHandler___block_invoke;
  v8[3] = &unk_1E794F600;
  v8[4] = handler;
  [(AVOutputDevice *)self configureUsingBlock:block options:0 completionHandler:v8];
}

uint64_t __56__AVOutputDevice_configureUsingBlock_completionHandler___block_invoke(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)setMediaRemoteData:(id)data completionHandler:(id)handler
{
  impl = [(AVOutputDevice *)self impl];

  [impl setMediaRemoteData:data completionHandler:handler];
}

- (void)updateFrecencyScore
{
  v2 = [(AVOutputDevice *)self ID];

  [AVOutputDeviceFrecencyManager updateFrecencyListForDeviceID:v2];
}

- (id)OEMIcons
{
  impl = [(AVOutputDevice *)self impl];

  return [impl OEMIcons];
}

- (id)OEMIconLabel
{
  impl = [(AVOutputDevice *)self impl];

  return [impl OEMIconLabel];
}

- (BOOL)OEMIconVisible
{
  impl = [(AVOutputDevice *)self impl];

  return [impl OEMIconVisible];
}

- (id)outputDeviceHIDs
{
  impl = [(AVOutputDevice *)self impl];

  return [impl outputDeviceHIDs];
}

- (BOOL)nightMode
{
  impl = [(AVOutputDevice *)self impl];

  return [impl nightMode];
}

- (BOOL)isNightModeSupported
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isNightModeSupported];
}

- (BOOL)rightHandDrive
{
  impl = [(AVOutputDevice *)self impl];

  return [impl rightHandDrive];
}

- (id)limitedUIElements
{
  impl = [(AVOutputDevice *)self impl];

  return [impl limitedUIElements];
}

- (BOOL)limitedUI
{
  impl = [(AVOutputDevice *)self impl];

  return [impl limitedUI];
}

- (BOOL)carOwnsScreen
{
  impl = [(AVOutputDevice *)self impl];

  return [impl carOwnsScreen];
}

- (BOOL)ownsTurnByTurnNavigation
{
  impl = [(AVOutputDevice *)self impl];

  return [impl ownsTurnByTurnNavigation];
}

- (BOOL)recognizingSpeech
{
  impl = [(AVOutputDevice *)self impl];

  return [impl recognizingSpeech];
}

- (id)supportedFeatures
{
  impl = [(AVOutputDevice *)self impl];

  return [impl supportedFeatures];
}

- (int64_t)electronicTollCollection
{
  impl = [(AVOutputDevice *)self impl];

  return [impl electronicTollCollection];
}

- (int64_t)navigationAidedDriving
{
  impl = [(AVOutputDevice *)self impl];

  return [impl navigationAidedDriving];
}

- (int64_t)transportType
{
  impl = [(AVOutputDevice *)self impl];

  return [impl transportType];
}

- (id)MFiCertificateSerialNumber
{
  impl = [(AVOutputDevice *)self impl];

  return [impl MFiCertificateSerialNumber];
}

- (void)requestViewArea:(int64_t)area forScreenID:(id)d
{
  impl = [(AVOutputDevice *)self impl];

  [impl requestViewArea:area forScreenID:d];
}

- (void)requestCarUIForURL:(id)l withUUID:(id)d
{
  impl = [(AVOutputDevice *)self impl];

  [impl requestCarUIForURL:l withUUID:d];
}

- (id)requestTurnByTurnNavigationOwnership
{
  impl = [(AVOutputDevice *)self impl];

  return [impl requestTurnByTurnNavigationOwnership];
}

- (id)borrowScreenForClient:(id)client reason:(id)reason
{
  impl = [(AVOutputDevice *)self impl];

  return [impl borrowScreenForClient:client reason:reason];
}

- (void)takeScreenForClient:(id)client reason:(id)reason
{
  impl = [(AVOutputDevice *)self impl];

  [impl takeScreenForClient:client reason:reason];
}

- (BOOL)siriForwardingEnabled
{
  impl = [(AVOutputDevice *)self impl];

  return [impl siriForwardingEnabled];
}

- (void)setSiriForwardingEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  impl = [(AVOutputDevice *)self impl];

  [impl setSiriForwardingEnabled:enabledCopy];
}

- (BOOL)carOwnsMainAudio
{
  impl = [(AVOutputDevice *)self impl];

  return [impl carOwnsMainAudio];
}

- (id)displayCornerMasks
{
  impl = [(AVOutputDevice *)self impl];

  return [impl displayCornerMasks];
}

- (void)setDisplayCornerMasks:(id)masks
{
  impl = [(AVOutputDevice *)self impl];

  [impl setDisplayCornerMasks:masks];
}

- (int64_t)voiceTriggerMode
{
  impl = [(AVOutputDevice *)self impl];

  return [impl voiceTriggerMode];
}

- (int64_t)authenticationType
{
  impl = [(AVOutputDevice *)self impl];

  return [impl authenticationType];
}

- (id)currentScreenViewAreaForScreenID:(id)d
{
  impl = [(AVOutputDevice *)self impl];

  return [impl currentScreenViewAreaForScreenID:d];
}

- (BOOL)isActivated
{
  impl = [(AVOutputDevice *)self impl];

  return [impl isActivated];
}

- (id)screens
{
  impl = [(AVOutputDevice *)self impl];

  return [impl screens];
}

- (id)outputDeviceInfo
{
  impl = [(AVOutputDevice *)self impl];

  return [impl outputDeviceInfo];
}

- (void)suggestUIWithURLs:(id)ls completionHandler:(id)handler
{
  impl = [(AVOutputDevice *)self impl];

  [impl suggestUIWithURLs:ls completionHandler:handler];
}

- (void)performHapticFeedbackForUUID:(id)d withHapticType:(id)type completionHandler:(id)handler
{
  impl = [(AVOutputDevice *)self impl];

  [impl performHapticFeedbackForUUID:d withHapticType:type completionHandler:handler];
}

- (void)setDelegate:(id)delegate
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1ED6F6B68)
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  [-[AVOutputDevice impl](self "impl")];
}

- (id)delegate
{
  impl = [(AVOutputDevice *)self impl];

  return [impl delegate];
}

- (AVOutputDevice)initWithOutputDeviceImpl:(id)impl commChannelManager:(id)manager
{
  v10.receiver = self;
  v10.super_class = AVOutputDevice;
  v6 = [(AVOutputDevice *)&v10 init];
  if (v6 && (v6->_outputDevice = objc_alloc_init(AVOutputDeviceInternal), OUTLINED_FUNCTION_5_1(impl), v7))
  {
    v6->_outputDevice->name = [objc_msgSend(impl "name")];
    v6->_outputDevice->ID = [objc_msgSend(impl "ID")];
    v6->_outputDevice->deviceType = [impl deviceType];
    v6->_outputDevice->deviceSubType = [impl deviceSubType];
    v6->_outputDevice->manufacturer = [objc_msgSend(impl "manufacturer")];
    v6->_outputDevice->modelID = [objc_msgSend(impl "modelID")];
    v6->_outputDevice->serialNumber = [objc_msgSend(impl "serialNumber")];
    v6->_outputDevice->firmwareVersion = [objc_msgSend(impl "firmwareVersion")];
    v6->_outputDevice->MACAddress = [objc_msgSend(impl "identifyingMACAddress")];
    v6->_outputDevice->deviceFeatures = [impl deviceFeatures];
    [(AVOutputDeviceImpl *)v6->_outputDevice->impl setImplEventListener:v6];
    v6->_outputDevice->commChannelManager = manager;
    [(AVOutputDeviceCommunicationChannelManager *)v6->_outputDevice->commChannelManager setParentOutputDevice:v6];
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end