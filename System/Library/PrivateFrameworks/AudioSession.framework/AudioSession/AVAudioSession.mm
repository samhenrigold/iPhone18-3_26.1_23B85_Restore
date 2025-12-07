@interface AVAudioSession
+ (AVAudioSession)sharedInstance;
+ (id)auxiliarySession;
+ (id)retrieveSessionWithID:(unsigned int)d;
- (AVAudioSession)autorelease;
- (AVAudioSession)init;
- (AVAudioSession)initWithIsolatedAudioUseCaseID:(unsigned int)d publishingSession:(id)session;
- (AVAudioSession)initWithSessionID:(unsigned int)d;
- (AVAudioSession)initWithSessionType:(unint64_t)type;
- (AVAudioSession)initWithSiriEndpointIdentifier:(id)identifier;
- (AVAudioSession)initWithSpecification:(id)specification;
- (AVAudioSession)retain;
- (AVAudioSessionCategory)category;
- (AVAudioSessionCategoryOptions)categoryOptions;
- (AVAudioSessionDataSourceDescription)inputDataSource;
- (AVAudioSessionDataSourceDescription)outputDataSource;
- (AVAudioSessionMode)mode;
- (AVAudioSessionPortDescription)preferredInput;
- (AVAudioSessionPromptStyle)promptStyle;
- (AVAudioSessionRecordPermission)recordPermission;
- (AVAudioSessionRouteDescription)currentRoute;
- (AVAudioSessionRouteSharingPolicy)routeSharingPolicy;
- (AVAudioStereoOrientation)inputOrientation;
- (AVAudioStereoOrientation)preferredInputOrientation;
- (BOOL)allowEnhanceDialogue;
- (BOOL)allowHapticsAndSystemSoundsDuringRecording;
- (BOOL)allowMixableAudioWhileRecording;
- (BOOL)clearInputPreferences:(id *)preferences;
- (BOOL)deactivateAndSetInterruptionPriority:(int64_t)priority error:(id *)error;
- (BOOL)decoupledIO;
- (BOOL)eligibleForBTSmartRoutingConsideration;
- (BOOL)eligibleForBTTriangleConsideration;
- (BOOL)enableNotifications:(BOOL)notifications error:(id *)error;
- (BOOL)fixHardwareFormatToMultiChannel:(BOOL)channel error:(id *)error;
- (BOOL)forceSoundCheck;
- (BOOL)getInputAvailable;
- (BOOL)handleRemoteInterruption:(id)interruption postInterruptionNotification:(BOOL)notification error:(id *)error;
- (BOOL)iAmTheAssistant;
- (BOOL)inhibitSpeechDetection;
- (BOOL)isActive;
- (BOOL)isDolbyDigitalEncoderAvailable;
- (BOOL)isEarpieceActiveNoiseCancelationEnabled;
- (BOOL)isEchoCancelledInputAvailable;
- (BOOL)isEchoCancelledInputEnabled;
- (BOOL)isExpanseMediaSession;
- (BOOL)isHardwareFormatFixedToMultiChannel;
- (BOOL)isInputAvailable;
- (BOOL)isInputGainSettable;
- (BOOL)isMicrophoneInjectionAvailable;
- (BOOL)isMicrophoneInjectionServiceEnabledByUser;
- (BOOL)isOtherAudioPlaying;
- (BOOL)isOutputMuted;
- (BOOL)isPiPAvailable;
- (BOOL)isPropertyCached:(id)cached;
- (BOOL)isRelatedSession:(id)session;
- (BOOL)isRelatedSessionID:(unsigned int)d;
- (BOOL)isSessionInputMuted;
- (BOOL)lastActivationStoppedNowPlayingApp;
- (BOOL)muteSessionInput:(BOOL)input error:(id *)error;
- (BOOL)needsHighPowerBudgeting;
- (BOOL)overrideOutputAudioPort:(AVAudioSessionPortOverride)portOverride error:(NSError *)outError;
- (BOOL)participatesInMutePriority;
- (BOOL)participatesInNowPlayingAppPolicy;
- (BOOL)participatesInVolumePolicy;
- (BOOL)preferDecoupledIO:(BOOL)o error:(id *)error;
- (BOOL)prefersAggressiveCaching;
- (BOOL)prefersConcurrentAirPlayAudio;
- (BOOL)prefersEchoCancelledInput;
- (BOOL)prefersEnhanceDialogue;
- (BOOL)prefersInterruptionOnRouteDisconnect;
- (BOOL)prefersMultichannelAudio;
- (BOOL)prefersNoDucking;
- (BOOL)prefersNoInterruptionsFromSystemAlerts;
- (BOOL)prefersNoMicrophoneUsageIndicator;
- (BOOL)prefersToAcquireHWControlFromOtherSessions;
- (BOOL)prefersToVibeWhenVibrationsAreDisabled;
- (BOOL)privateSetActive:(BOOL)active withOptions:(unint64_t)options error:(id *)error core:(const void *)core;
- (BOOL)privateSetPrefersInterruptionOnRouteDisconnect:(BOOL)disconnect core:(const void *)core;
- (BOOL)privateSetRouteSharingPolicy:(unint64_t)policy error:(id *)error;
- (BOOL)recordingFromRemoteInput;
- (BOOL)requiresNoAudioResources;
- (BOOL)secondaryAudioShouldBeSilencedHint;
- (BOOL)selectIndependentRoutingContext:(id *)context;
- (BOOL)setActivationContext:(id)context error:(id *)error;
- (BOOL)setActive:(BOOL)active withOptions:(AVAudioSessionSetActiveOptions)options error:(NSError *)outError;
- (BOOL)setAggregatedIOPreference:(AVAudioSessionIOType)inIOType error:(NSError *)outError;
- (BOOL)setAllowEnhanceDialogue:(BOOL)dialogue error:(id *)error;
- (BOOL)setAllowHapticsAndSystemSoundsDuringRecording:(BOOL)inValue error:(NSError *)outError;
- (BOOL)setAllowMixableAudioWhileRecording:(BOOL)recording error:(id *)error;
- (BOOL)setAudioClockDevice:(id)device error:(id *)error;
- (BOOL)setAudioHardwareControlFlags:(unint64_t)flags error:(id *)error;
- (BOOL)setAudioIOProperties:(id)properties propertyErrors:(id *)errors;
- (BOOL)setAuditTokensForProcessAssertion:(id)assertion error:(id *)error;
- (BOOL)setBypassRingerSwitchPolicy:(BOOL)policy error:(id *)error;
- (BOOL)setCategory:(AVAudioSessionCategory)category error:(NSError *)outError;
- (BOOL)setCategory:(AVAudioSessionCategory)category mode:(AVAudioSessionMode)mode options:(AVAudioSessionCategoryOptions)options error:(NSError *)outError;
- (BOOL)setCategory:(AVAudioSessionCategory)category mode:(AVAudioSessionMode)mode routeSharingPolicy:(AVAudioSessionRouteSharingPolicy)policy options:(AVAudioSessionCategoryOptions)options error:(NSError *)outError;
- (BOOL)setCategory:(AVAudioSessionCategory)category withOptions:(AVAudioSessionCategoryOptions)options error:(NSError *)outError;
- (BOOL)setCategoryOptions:(unint64_t)options error:(id *)error;
- (BOOL)setConformsToSessionBehavior:(id)behavior error:(id *)error;
- (BOOL)setDefaultChatMode:(id)mode error:(id *)error;
- (BOOL)setDisallowedPorts:(id)ports error:(id *)error;
- (BOOL)setDuckToLevelDB:(id)b error:(id *)error;
- (BOOL)setDuckToLevelScalar:(id)scalar error:(id *)error;
- (BOOL)setDuckToLevelScalar:(id)scalar unduckToLevelScalar:(id)levelScalar error:(id *)error;
- (BOOL)setDuckingFadeOutDuration:(id)duration fadeInDuration:(id)inDuration error:(id *)error;
- (BOOL)setEligibleForBTSmartRoutingConsideration:(BOOL)consideration error:(id *)error;
- (BOOL)setEligibleForBTTriangleConsideration:(BOOL)consideration error:(id *)error;
- (BOOL)setForceSoundCheck:(BOOL)check error:(id *)error;
- (BOOL)setHapticThermalGain:(float)gain error:(id *)error;
- (BOOL)setHostProcessAttribution:(id)attribution error:(id *)error;
- (BOOL)setIAmTheAssistant:(BOOL)assistant error:(id *)error;
- (BOOL)setInhibitSpeechDetection:(BOOL)detection error:(id *)error;
- (BOOL)setInputDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError;
- (BOOL)setInputGain:(float)gain error:(NSError *)outError;
- (BOOL)setInterruptionFadeDuration:(id)duration error:(id *)error;
- (BOOL)setInterruptionPriority:(int64_t)priority error:(id *)error;
- (BOOL)setIsExpanseMediaSession:(BOOL)session error:(id *)error;
- (BOOL)setMXProperties:(id)properties propertyErrors:(id *)errors;
- (BOOL)setMXSessionProperty:(id)property value:(id)value error:(id *)error;
- (BOOL)setMode:(AVAudioSessionMode)mode error:(NSError *)outError;
- (BOOL)setNeedsHighPowerBudgeting:(BOOL)budgeting error:(id *)error;
- (BOOL)setOutputDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError;
- (BOOL)setOutputMuted:(BOOL)muted error:(id *)error;
- (BOOL)setParticipatesInMutePriority:(BOOL)priority error:(id *)error;
- (BOOL)setParticipatesInNowPlayingAppPolicy:(BOOL)policy error:(id *)error;
- (BOOL)setParticipatesInVolumePolicy:(BOOL)policy error:(id *)error;
- (BOOL)setPowerProfile:(id)profile error:(id *)error;
- (BOOL)setPreferredAudioFormat:(int64_t)format error:(id *)error;
- (BOOL)setPreferredIOBufferDuration:(NSTimeInterval)duration error:(NSError *)outError;
- (BOOL)setPreferredIOBufferFrameSize:(unint64_t)size error:(id *)error;
- (BOOL)setPreferredInput:(AVAudioSessionPortDescription *)inPort error:(NSError *)outError;
- (BOOL)setPreferredInputNumberOfChannels:(NSInteger)count error:(NSError *)outError;
- (BOOL)setPreferredInputOrientation:(AVAudioStereoOrientation)orientation error:(NSError *)outError;
- (BOOL)setPreferredInputSampleRate:(double)rate error:(id *)error;
- (BOOL)setPreferredMicrophoneInjectionMode:(int64_t)mode error:(id *)error;
- (BOOL)setPreferredOutputNumberOfChannels:(NSInteger)count error:(NSError *)outError;
- (BOOL)setPreferredOutputSampleRate:(double)rate error:(id *)error;
- (BOOL)setPreferredPersistentInputUIDs:(id)ds outputUIDs:(id)iDs error:(id *)error;
- (BOOL)setPreferredRouteControlConfig:(id)config error:(id *)error;
- (BOOL)setPreferredSampleRate:(double)sampleRate error:(NSError *)outError;
- (BOOL)setPrefersAggressiveCaching:(BOOL)caching error:(id *)error;
- (BOOL)setPrefersConcurrentAirPlayAudio:(BOOL)audio error:(id *)error;
- (BOOL)setPrefersEchoCancelledInput:(BOOL)input error:(id *)error;
- (BOOL)setPrefersEnhanceDialogue:(BOOL)dialogue error:(id *)error;
- (BOOL)setPrefersInterruptionOnRouteDisconnect:(BOOL)inValue error:(NSError *)outError;
- (BOOL)setPrefersMultichannelAudio:(BOOL)audio error:(id *)error;
- (BOOL)setPrefersNoDucking:(BOOL)ducking error:(id *)error;
- (BOOL)setPrefersNoInterruptionsFromSystemAlerts:(BOOL)inValue error:(NSError *)outError;
- (BOOL)setPrefersNoMicrophoneUsageIndicator:(BOOL)indicator error:(id *)error;
- (BOOL)setPrefersToAcquireHWControlFromOtherSessions:(BOOL)sessions error:(id *)error;
- (BOOL)setPrefersToVibeWhenVibrationsAreDisabled:(BOOL)disabled error:(id *)error;
- (BOOL)setRecordingFromRemoteInput:(BOOL)input error:(id *)error;
- (BOOL)setReporterID:(int64_t)d error:(id *)error;
- (BOOL)setRequiresNoAudioResources:(BOOL)resources error:(id *)error;
- (BOOL)setRoutingContextUID:(id)d error:(id *)error;
- (BOOL)setSpeakerThermalGain:(float)gain error:(id *)error;
- (BOOL)setSupportsMultichannelContent:(BOOL)inValue error:(NSError *)outError;
- (BOOL)silenceOutput:(unint64_t)output error:(id *)error;
- (BOOL)subscribeToNotifications:(id)notifications error:(id *)error;
- (BOOL)supportsMultichannelContent;
- (NSArray)availableCategories;
- (NSArray)availableModes;
- (NSArray)inputDataSources;
- (NSArray)outputDataSources;
- (NSInteger)inputNumberOfChannels;
- (NSInteger)maximumInputNumberOfChannels;
- (NSInteger)maximumOutputNumberOfChannels;
- (NSInteger)outputNumberOfChannels;
- (NSInteger)preferredInputNumberOfChannels;
- (NSInteger)preferredOutputNumberOfChannels;
- (NSTimeInterval)IOBufferDuration;
- (NSTimeInterval)inputLatency;
- (NSTimeInterval)outputLatency;
- (NSTimeInterval)preferredIOBufferDuration;
- (double)inputSafetyOffset;
- (double)inputSampleRate;
- (double)outputSafetyOffset;
- (double)outputSampleRate;
- (double)preferredInputSampleRate;
- (double)preferredOutputSampleRate;
- (double)preferredSampleRate;
- (double)sampleRate;
- (double)siriSpeechDetectionDeviceSampleRate;
- (double)speechDetectionDeviceSampleRate;
- (float)defaultCalibratedOutputSPL;
- (float)hapticThermalGain;
- (float)inputGain;
- (float)outputVolume;
- (float)speakerThermalGain;
- (id)IOController;
- (id)activeAudioRoute;
- (id)activeSessionDisplayIDs;
- (id)addObserverForType:(unint64_t)type name:(id)name block:(id)block;
- (id)audioClockDevice;
- (id)audioFormats;
- (id)auditTokensForProcessAssertion;
- (id)cachedPropertyValue:(id)value;
- (id)conformedPoliciesOfSession:(unsigned int)session;
- (id)consolidatedSourceContentInfo;
- (id)decoupledInputIOController;
- (id)defaultChatMode;
- (id)getAllSessionInformation;
- (id)getMXProperties:(id)properties propertyErrors:(id *)errors;
- (id)getMXSessionProperty:(id)property error:(id *)error;
- (id)hostProcessAttribution;
- (id)initAuxiliarySession;
- (id)initProxySession:(unsigned int)session autoReconnect:(BOOL)reconnect;
- (id)initSessionForIndependentInputRoute;
- (id)initSiblingSession:(unsigned int)session auditToken:(id *)token clientIdentifier:(id)identifier;
- (id)initSiblingSession:(unsigned int)session auditToken:(id *)token clientIdentifier:(id)identifier autoReconnect:(BOOL)reconnect;
- (id)inputTimeObserver;
- (id)outputTimeObserver;
- (id)pickedRoute;
- (id)powerBudget;
- (id)powerProfile;
- (id)preferredPersistentInputUIDs;
- (id)preferredPersistentOutputUIDs;
- (id)preferredRouteControlConfig;
- (id)privateGetDataSources:(BOOL)sources core:(const void *)core;
- (id)privateGetDataSources:core:;
- (id)privateGetRouteControlConfigWithDictionaryKey:(id)key withFeaturesKey:(id)featuresKey;
- (id)privateGetSelectedDataSource:(BOOL)source core:(const void *)core;
- (id)privateMakePreferredPersistentRouteDictWithInputUIDs:(id)ds outputUIDs:(id)iDs;
- (id)privateReadPreferredPersistentRoute;
- (id)privateRefreshAvailableInputs;
- (id)privateRefreshAvailableOutputs;
- (id)routeControlConfig;
- (id)routingContextUID;
- (id)spatialPreferences;
- (id)spatialPreferences:(int64_t)preferences;
- (id)supportedOutputChannelLayouts;
- (int64_t)audioFormat;
- (int64_t)interruptionPriority;
- (int64_t)preferredAudioFormat;
- (int64_t)renderingMode;
- (int64_t)reporterID;
- (uint64_t)IOBufferDuration;
- (uint64_t)audioFormats;
- (uint64_t)inputGain;
- (uint64_t)inputNumberOfChannels;
- (uint64_t)inputSampleRate;
- (uint64_t)isInputAvailable;
- (uint64_t)isPiPAvailable;
- (uint64_t)outputNumberOfChannels;
- (uint64_t)outputSampleRate;
- (uint64_t)outputVolume;
- (uint64_t)promptStyle;
- (uint64_t)sampleRate;
- (uint64_t)speechDetectionStyle;
- (unint64_t)IOBufferFrameSize;
- (unint64_t)availableRouteControlOptions:(id *)options;
- (unint64_t)preferredIOBufferFrameSize;
- (unint64_t)retainCount;
- (unint64_t)sessionType;
- (unint64_t)speechDetectionStyle;
- (unsigned)opaqueSessionID;
- (unsigned)sourceSessionID;
- (void)activateWithOptions:(AVAudioSessionActivationOptions)options completionHandler:(void *)handler;
- (void)addToCache:(id)cache value:(id)value;
- (void)dealloc;
- (void)handleMediaDaemonTerminationEvent:(int)event daemonName:(id)name;
- (void)invalidateCache;
- (void)privateGetDataSources:core:;
- (void)release;
- (void)removeObserverForType:(unint64_t)type observer:(id)observer name:(id)name;
- (void)requestRecordPermission:(void *)response;
@end

@implementation AVAudioSession

- (unsigned)opaqueSessionID
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::sessionID(sessionCore);
}

- (AVAudioSession)retain
{
  selfCopy = self;
  if (!self->_impl || [(AVAudioSession *)self sessionType]!= 1886546285)
  {
    v4.receiver = selfCopy;
    v4.super_class = AVAudioSession;
    return [(AVAudioSession *)&v4 retain];
  }

  return selfCopy;
}

+ (AVAudioSession)sharedInstance
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__AVAudioSession_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[AVAudioSession sharedInstance]::onceToken != -1)
  {
    dispatch_once(&+[AVAudioSession sharedInstance]::onceToken, block);
  }

  v2 = avfaudio::gAVAudioSession;

  return v2;
}

void __32__AVAudioSession_sharedInstance__block_invoke(uint64_t a1)
{
  v3.receiver = *(a1 + 32);
  v3.super_class = &OBJC_METACLASS___AVAudioSession;
  v1 = [objc_msgSendSuper2(&v3 allocWithZone_];
  v2 = avfaudio::gAVAudioSession;
  avfaudio::gAVAudioSession = v1;
}

- (void)release
{
  if (!self->_impl || [(AVAudioSession *)self sessionType]!= 1886546285)
  {
    v3.receiver = self;
    v3.super_class = AVAudioSession;
    [(AVAudioSession *)&v3 release];
  }
}

- (AVAudioSession)autorelease
{
  selfCopy = self;
  if (!self->_impl || [(AVAudioSession *)self sessionType]!= 1886546285)
  {
    v4.receiver = selfCopy;
    v4.super_class = AVAudioSession;
    return [(AVAudioSession *)&v4 autorelease];
  }

  return selfCopy;
}

- (unint64_t)sessionType
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::sessionType(sessionCore);
}

- (id)initAuxiliarySession
{
  v5[0] = 1;
  v6 = 3432;
  v7 = 0u;
  v8 = 0u;
  kdebug_trace();
  v3 = [(AVAudioSession *)self initWithSessionType:1635088489];
  avas::ScopedTrace::~ScopedTrace(v5);
  return v3;
}

- (id)routingContextUID
{
  v5[0] = 1;
  v6 = 3397;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCore::routingContextUUID([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (unsigned)sourceSessionID
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  if (avas::client::SessionCore::sessionType(sessionCore) == 1935830119 || avas::client::SessionCore::sessionType(sessionCore) == 1886550137)
  {

    return avas::client::SessionCore::sourceSessionID(sessionCore);
  }

  else
  {

    return avas::client::SessionCore::sessionID(sessionCore);
  }
}

- (AVAudioSessionCategory)category
{
  v5[0] = 1;
  v6 = 3073;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCore::category([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (id)inputTimeObserver
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCoreLegacy_iOS::inputTimeObserver(sessionCore);
}

- (int64_t)reporterID
{
  v5[0] = 1;
  v6 = 3390;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = [(AVAudioSession *)self getCachedOrFromServerReporterID:[(AVAudioSession *)self sessionCore]];
  avas::ScopedTrace::~ScopedTrace(v5);
  return v3;
}

- (AVAudioSessionRecordPermission)recordPermission
{
  v11[0] = 1;
  v12 = 3080;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 1970168948;
  LOBYTE(v5) = 0;
  v6 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __34__AVAudioSession_recordPermission__block_invoke;
  v4[3] = &unk_1E7986E68;
  v4[4] = &v7;
  makeTCCAccessRequest(0, 2, 1919119972, &v5, v4);
  v2 = v8[3];
  _Block_object_dispose(&v7, 8);
  avas::ScopedTrace::~ScopedTrace(v11);
  return v2;
}

uint64_t __34__AVAudioSession_recordPermission__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = 1684369017;
  if (a2 == 1)
  {
    v2 = 1970168948;
  }

  if (a2 == 2)
  {
    v2 = 1735552628;
  }

  *(*(*(result + 32) + 8) + 24) = v2;
  return result;
}

- (BOOL)isOtherAudioPlaying
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3119;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0410], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (id)privateRefreshAvailableInputs
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSArray * {__strong}>(sessionCore, *MEMORY[0x1E69B03D8]);
  if (v4)
  {
    v5 = [AVAudioSessionPortDescription privateCreateArray:v4 owningSession:self];
  }

  else
  {
    v6 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AVAudioSession_iOS.mm";
      v10 = 1024;
      v11 = 2829;
      _os_log_impl(&dword_1AC8A4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Get SelectableInputs failed", &v8, 0x12u);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (id)outputTimeObserver
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCoreLegacy_iOS::outputTimeObserver(sessionCore);
}

+ (id)auxiliarySession
{
  v4.receiver = self;
  v4.super_class = &OBJC_METACLASS___AVAudioSession;
  allocWithZone_ = [objc_msgSendSuper2(&v4 allocWithZone_];

  return allocWithZone_;
}

- (BOOL)lastActivationStoppedNowPlayingApp
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3382;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0158], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (id)pickedRoute
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3402;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>(sessionCore, *MEMORY[0x1E69B01C0]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSession_iOS.mm";
      v17 = 1024;
      v18 = 2675;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Get PickedRoute failed", buf, 0x12u);
    }

    v6 = MEMORY[0x1E695E0F8];
  }

  avas::ScopedTrace::~ScopedTrace(v9);

  return v6;
}

- (id)consolidatedSourceContentInfo
{
  v8[0] = 1;
  v9 = 3331;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSArray * {__strong}>(sessionCore, *MEMORY[0x1E69AFDD8]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  avas::ScopedTrace::~ScopedTrace(v8);

  return v6;
}

- (int64_t)renderingMode
{
  v13 = *MEMORY[0x1E69E9840];
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69AFD38]);
  v5 = v3;
  if (v3)
  {
    v6 = avas::client::TranslateFromMXBadgingType(v3, v4);
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "AVAudioSession_iOS.mm";
      v11 = 1024;
      v12 = 3132;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Get renderingMode failed", &v9, 0x12u);
    }

    v6 = 0;
  }

  return v6;
}

- (AVAudioSessionRouteDescription)currentRoute
{
  v5[0] = 1;
  v6 = 3124;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCoreLegacy_iOS::currentRouteDescription([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (double)speechDetectionDeviceSampleRate
{
  v6[0] = 1;
  v7 = 3379;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69AFE90], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (double)sampleRate
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3113;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = sessionCore[5];
  v13[0] = &unk_1F215D900;
  v13[1] = &sessionCore;
  v13[3] = v13;
  updated = avas::client::KVOProperty<double>::UpdateIfDirty(v3 + 680, v13);
  std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v7);
  return updated;
}

- (NSTimeInterval)outputLatency
{
  v6[0] = 1;
  v7 = 3117;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AFE70], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (id)privateRefreshAvailableOutputs
{
  v12 = *MEMORY[0x1E69E9840];
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSArray * {__strong}>(sessionCore, *MEMORY[0x1E69B03E0]);
  if (v4)
  {
    v5 = [AVAudioSessionPortDescription privateCreateArray:v4 owningSession:self];
  }

  else
  {
    v6 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "AVAudioSession_iOS.mm";
      v10 = 1024;
      v11 = 2874;
      _os_log_impl(&dword_1AC8A4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Get SelectableOutputs failed", &v8, 0x12u);
    }

    v5 = MEMORY[0x1E695E0F0];
  }

  return v5;
}

- (NSTimeInterval)inputLatency
{
  v6[0] = 1;
  v7 = 3116;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AFE48], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (BOOL)isPropertyCached:(id)cached
{
  cachedCopy = cached;
  LOBYTE(self) = avas::client::CacheManager::isPropertyCached(*([(AVAudioSession *)self sessionCore]+ 96), cachedCopy);

  return self;
}

- (id)cachedPropertyValue:(id)value
{
  v10[2] = *MEMORY[0x1E69E9840];
  valueCopy = value;
  avas::client::CacheManager::getCachedValue(&v8, *([(AVAudioSession *)self sessionCore]+ 96), valueCopy);
  v5 = [MEMORY[0x1E696AD98] numberWithInt:v8];
  v10[0] = v5;
  v10[1] = v9;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:2];

  return v6;
}

- (void)invalidateCache
{
  v2 = *([(AVAudioSession *)self sessionCore]+ 96);

  avas::client::CacheManager::invalidateCache(v2);
}

- (void)addToCache:(id)cache value:(id)value
{
  cacheCopy = cache;
  valueCopy = value;
  avas::client::CacheManager::updateCache(*([(AVAudioSession *)self sessionCore]+ 96), cacheCopy, valueCopy);
}

- (AVAudioSession)init
{
  selfCopy = self;
  if (avfaudio::gAVAudioSession)
  {

    selfCopy = 0;
  }

  v3 = +[AVAudioSession sharedInstance];

  return v3;
}

- (AVAudioSession)initWithSessionType:(unint64_t)type
{
  v5 = objc_opt_new();
  [v5 setSessionType:type];
  [v5 setAutoReconnect:1];
  v6 = [(AVAudioSession *)self initWithSpecification:v5];

  return v6;
}

- (AVAudioSession)initWithSpecification:(id)specification
{
  specificationCopy = specification;
  avas::client::PerformanceTracker::PerformanceTracker(v9, "[AVAudioSession initWithSpecification:]", 0, 1);
  std::mutex::lock(&GetSessionInitMutex(void)::sMutex);
  if ([(_anonymous_namespace_ *)specificationCopy sessionType]== 1886546285 && avfaudio::gAVAudioSession)
  {

    v10 = avas::client::SessionCore::reporterID([avfaudio::gAVAudioSession sessionCore]);
    v5 = avfaudio::gAVAudioSession;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = AVAudioSession;
    v5 = [(AVAudioSession *)&v8 init];
    if (v5)
    {
    }
  }

  std::mutex::unlock(&GetSessionInitMutex(void)::sMutex);
  avas::client::PerformanceTracker::~PerformanceTracker(v9);

  return v5;
}

uint64_t __40__AVAudioSession_initWithSpecification___block_invoke(avas::client *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *avas::client::gSessionClientLog(a1);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_INFO))
  {
    v3 = 136315394;
    v4 = "AVAudioSession_iOS.mm";
    v5 = 1024;
    v6 = 253;
    _os_log_impl(&dword_1AC8A4000, v1, OS_LOG_TYPE_INFO, "%25s:%-5d Registering to CFNotificationCenter to notify of Observers of MicrophoneInjectionCapabilityChangeNotification", &v3, 0x12u);
  }

  return _CFNotificationCenterRegisterDependentNotificationList();
}

- (AVAudioSession)initWithSessionID:(unsigned int)d
{
  v17 = *MEMORY[0x1E69E9840];
  avas::client::PerformanceTracker::PerformanceTracker(v15, "[AVAudioSession initWithSessionID:]", 0, 1);
  std::mutex::lock(&GetSessionInitMutex(void)::sMutex);
  v5 = CADeprecated::TSingleton<avfaudio::SessionMap>::instance();
  v6 = avfaudio::SessionMap::LookupSession(v5, d);
  v7 = v6;
  if (v6)
  {
    v16 = avas::client::SessionCore::reporterID([v6 sessionCore]);
    v8 = v7;
LABEL_8:
    v11 = v8;
    goto LABEL_9;
  }

  v14.receiver = self;
  v14.super_class = AVAudioSession;
  v9 = [(AVAudioSession *)&v14 init];
  if (!v9)
  {
    v8 = 0;
    self = v8;
    goto LABEL_8;
  }

  v10 = objc_opt_new();
  v11 = v10;
  if (v10)
  {
    [(AVAudioSession *)v10 setSessionType:1702392942];
    [(AVAudioSession *)v11 setAutoReconnect:1];
  }

  self = v9;
LABEL_9:

  std::mutex::unlock(&GetSessionInitMutex(void)::sMutex);
  avas::client::PerformanceTracker::~PerformanceTracker(v15);

  return v11;
}

+ (id)retrieveSessionWithID:(unsigned int)d
{
  v3 = *&d;
  v18[0] = 1;
  v19 = 3418;
  dCopy = d;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v5 = kdebug_trace();
  GetPendingSessionDestroySet(v5, v6);
  os_unfair_lock_lock(&dword_1ED6D3760);
  v7 = qword_1ED6D3770;
  if (!qword_1ED6D3770)
  {
    goto LABEL_9;
  }

  v8 = &qword_1ED6D3770;
  do
  {
    v9 = *(v7 + 28);
    v10 = v9 >= v3;
    v11 = v9 < v3;
    if (v10)
    {
      v8 = v7;
    }

    v7 = *(v7 + 8 * v11);
  }

  while (v7);
  if (v8 != &qword_1ED6D3770 && *(v8 + 7) <= v3)
  {
    os_unfair_lock_unlock(&dword_1ED6D3760);
    v15 = 0;
  }

  else
  {
LABEL_9:
    os_unfair_lock_unlock(&dword_1ED6D3760);
    v12 = CADeprecated::TSingleton<avfaudio::SessionMap>::instance();
    allocWithZone_ = avfaudio::SessionMap::LookupSession(v12, v3);
    if (!allocWithZone_)
    {
      v17.receiver = self;
      v17.super_class = &OBJC_METACLASS___AVAudioSession;
      allocWithZone_ = [objc_msgSendSuper2(&v17 allocWithZone_];
      if (allocWithZone_)
      {
        v14 = CADeprecated::TSingleton<avfaudio::SessionMap>::instance();
        avfaudio::SessionMap::AddSession(v14, allocWithZone_, v3);
      }
    }

    v15 = allocWithZone_;
  }

  avas::ScopedTrace::~ScopedTrace(v18);

  return v15;
}

- (id)initSiblingSession:(unsigned int)session auditToken:(id *)token clientIdentifier:(id)identifier
{
  v6 = *&session;
  identifierCopy = identifier;
  v9 = objc_opt_new();
  [v9 setSessionType:1935830119];
  v10 = *&token->var0[4];
  v14 = *token->var0;
  v15 = v10;
  [v9 setClientAuditToken:&v14];
  [v9 setSourceSessionID:v6];
  [v9 setClientIdentifier:identifierCopy];
  [v9 setAutoReconnect:0];
  sourceSessionID = [v9 sourceSessionID];
  LOBYTE(v14) = 1;
  DWORD1(v14) = 3431;
  *(&v14 + 1) = sourceSessionID;
  v15 = 0uLL;
  v16 = 0;
  kdebug_trace();
  v12 = [(AVAudioSession *)self initWithSpecification:v9];
  avas::ScopedTrace::~ScopedTrace(&v14);

  return v12;
}

- (id)initProxySession:(unsigned int)session autoReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  v5 = *&session;
  v13 = *MEMORY[0x1E69E9840];
  v7 = objc_opt_new();
  [v7 setSessionType:1886550137];
  [v7 setSourceSessionID:v5];
  v8 = [v7 setAutoReconnect:reconnectCopy];
  if (v5 == -1 || reconnectCopy)
  {
    v10 = *avas::client::gSessionClientLog(v8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *v12 = 136315394;
      *&v12[4] = "AVAudioSession_iOS.mm";
      *&v12[12] = 1024;
      *&v12[14] = 670;
      _os_log_impl(&dword_1AC8A4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Proxy session creation with an AVAudioSessionTokenNoAudioSessionForServer or auto-reconnect is not yet supported.", v12, 0x12u);
    }

    selfCopy = 0;
  }

  else
  {
    v12[0] = 1;
    *&v12[4] = 3458;
    *&v12[8] = [v7 sourceSessionID];
    kdebug_trace();
    self = [(AVAudioSession *)self initWithSpecification:v7, *v12, 0, 0, 0, v13];
    avas::ScopedTrace::~ScopedTrace(v12);
    selfCopy = self;
  }

  return selfCopy;
}

- (id)initSiblingSession:(unsigned int)session auditToken:(id *)token clientIdentifier:(id)identifier autoReconnect:(BOOL)reconnect
{
  reconnectCopy = reconnect;
  v8 = *&session;
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v11 = objc_opt_new();
  [v11 setSessionType:1935830119];
  v12 = *&token->var0[4];
  *v18 = *token->var0;
  *&v18[16] = v12;
  [v11 setClientAuditToken:v18];
  [v11 setSourceSessionID:v8];
  [v11 setClientIdentifier:identifierCopy];
  v13 = [v11 setAutoReconnect:reconnectCopy];
  if (v8 == -1 || !reconnectCopy)
  {
    sourceSessionID = [v11 sourceSessionID];
    v18[0] = 1;
    *&v18[4] = 3431;
    *&v18[8] = sourceSessionID;
    *&v18[16] = 0uLL;
    v19 = 0;
    kdebug_trace();
    self = [(AVAudioSession *)self initWithSpecification:v11];
    avas::ScopedTrace::~ScopedTrace(v18);
    selfCopy = self;
  }

  else
  {
    v14 = *avas::client::gSessionClientLog(v13);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *v18 = 136315394;
      *&v18[4] = "AVAudioSession_iOS.mm";
      *&v18[12] = 1024;
      *&v18[14] = 692;
      _os_log_impl(&dword_1AC8A4000, v14, OS_LOG_TYPE_ERROR, "%25s:%-5d Sibling session creation with an explicit ID and auto-reconnect is not yet supported.", v18, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (AVAudioSession)initWithIsolatedAudioUseCaseID:(unsigned int)d publishingSession:(id)session
{
  v4 = *&d;
  v19 = *MEMORY[0x1E69E9840];
  sessionCopy = session;
  v7 = sessionCopy;
  if (v4)
  {
    v8 = *avas::client::gSessionClientLog(sessionCopy);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v13 = 136315650;
      v14 = "AVAudioSession_iOS.mm";
      v15 = 1024;
      v16 = 730;
      v17 = 1024;
      v18 = v4;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_INFO, "%25s:%-5d Creating secure session for use case id: %d", &v13, 0x18u);
    }

    v9 = objc_opt_new();
    [v9 setSessionType:1935897189];
    [v9 setUseCaseIdentifier:v4];
    [v9 setAutoReconnect:1];
    [v9 setPublishingSession:v7];
    self = [(AVAudioSession *)self initWithSpecification:v9];

    selfCopy = self;
  }

  else
  {
    v11 = *avas::client::gSessionClientLog(sessionCopy);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v13 = 136315394;
      v14 = "AVAudioSession_iOS.mm";
      v15 = 1024;
      v16 = 726;
      _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot create secure session: Invalid useCaseID", &v13, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (AVAudioSession)initWithSiriEndpointIdentifier:(id)identifier
{
  v17 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (identifierCopy && (identifierCopy = [(avas::client *)identifierCopy length]) != 0)
  {
    v6 = *avas::client::gSessionClientLog(identifierCopy);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v11 = 136315650;
      v12 = "AVAudioSession_iOS.mm";
      v13 = 1024;
      v14 = 748;
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_1AC8A4000, v6, OS_LOG_TYPE_INFO, "%25s:%-5d Creating side kick session for end point id: %@", &v11, 0x1Cu);
    }

    v7 = objc_opt_new();
    [v7 setSessionType:1936286827];
    [v7 setClientIdentifier:v5];
    [v7 setAutoReconnect:1];
    self = [(AVAudioSession *)self initWithSpecification:v7];

    selfCopy = self;
  }

  else
  {
    v9 = *avas::client::gSessionClientLog(identifierCopy);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = 136315394;
      v12 = "AVAudioSession_iOS.mm";
      v13 = 1024;
      v14 = 744;
      _os_log_impl(&dword_1AC8A4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d Cannot create side kick session: Invalid device ID", &v11, 0x12u);
    }

    selfCopy = 0;
  }

  return selfCopy;
}

- (id)initSessionForIndependentInputRoute
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = *avas::client::gSessionClientLog(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v7 = 136315394;
    v8 = "AVAudioSession_iOS.mm";
    v9 = 1024;
    v10 = 759;
    _os_log_impl(&dword_1AC8A4000, v3, OS_LOG_TYPE_INFO, "%25s:%-5d Creating session for independent input route", &v7, 0x12u);
  }

  v4 = objc_opt_new();
  [v4 setSessionType:1635088489];
  [v4 setClientIdentifier:@"AVAudioSessionIndependentRoutingSession"];
  [v4 setAutoReconnect:1];
  v5 = [(AVAudioSession *)self initWithSpecification:v4];

  return v5;
}

- (void)dealloc
{
  v23[4] = *MEMORY[0x1E69E9840];
  if (self->_impl && ![(AVAudioSession *)self isPrimary])
  {
    sessionCore = [(AVAudioSession *)self sessionCore];
    v4 = avas::client::SessionCore::sessionType(sessionCore);
    avas::client::SessionCore::resetSessionCreationHandler(sessionCore);
    avas::client::SessionCoreLegacy_iOS::unregisterForAvailableInputOutputChange(sessionCore);
    if (v4 != 1702392942)
    {
      v5 = avas::client::SessionCore::sessionID(sessionCore);
      v6 = sessionCore[10];
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __25__AVAudioSession_dealloc__block_invoke;
      v18[3] = &__block_descriptor_44_e21_v24__0__NSError_8_v16l;
      v18[4] = v4;
      v19 = v5;
      v21 = 0;
      v20[0] = &unk_1F215D688;
      v20[1] = MEMORY[0x1B26ED920](v18);
      v21 = v20;
      avas::client::XPCConnection::message<>(v6, v20, &v22);
      v7 = _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v20);
      GetPendingSessionDestroySet(v7, v8);
      os_unfair_lock_lock(&dword_1ED6D3760);
      v17 = avas::client::SessionCore::sessionID(sessionCore);
      std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int>(&qword_1ED6D3768, &v17, &v17);
      os_unfair_lock_unlock(&dword_1ED6D3760);
      v9 = objc_autoreleasePoolPush();
      v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::async_proxy(&v22);
      v11 = avas::client::SessionCore::sessionID(sessionCore);
      v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v22);
      [v10 destroySession:v11 reply:v12];

      objc_autoreleasePoolPop(v9);
      _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(v23);
    }

    impl = self->_impl;
    v14 = impl[1];
    *impl = 0;
    impl[1] = 0;
    if (v14)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      v15 = impl[1];
      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    MEMORY[0x1B26ED410](impl, 0x20C40A4A59CD2);
    self->_impl = 0;
  }

  v16.receiver = self;
  v16.super_class = AVAudioSession;
  [(AVAudioSession *)&v16 dealloc];
}

void __25__AVAudioSession_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v5 = v3;
  if (v3)
  {
    if (*(a1 + 32) != 1935830119)
    {
      v6 = *avas::client::gSessionClientLog(v3);
      v3 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      if (v3)
      {
        v7 = 136315650;
        v8 = "AVAudioSession_iOS.mm";
        v9 = 1024;
        v10 = 794;
        v11 = 2112;
        v12 = v5;
        _os_log_impl(&dword_1AC8A4000, v6, OS_LOG_TYPE_ERROR, "%25s:%-5d Server returned an error from destroySession:. %@", &v7, 0x1Cu);
      }
    }
  }

  GetPendingSessionDestroySet(v3, v4);
  os_unfair_lock_lock(&dword_1ED6D3760);
  std::__tree<unsigned int>::__erase_unique<unsigned int>(&qword_1ED6D3768, (a1 + 40));
  os_unfair_lock_unlock(&dword_1ED6D3760);
}

- (AVAudioSessionCategoryOptions)categoryOptions
{
  v5[0] = 1;
  v6 = 3074;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCore::categoryOptions([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);
  return v3;
}

- (AVAudioSessionRouteSharingPolicy)routeSharingPolicy
{
  v5[0] = 1;
  v6 = 3075;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCore::routeSharingPolicy([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);
  return v3;
}

- (NSArray)availableCategories
{
  v8[2] = *MEMORY[0x1E69E9840];
  if ([(AVAudioSession *)self sessionType]== 1936286827)
  {
    v8[0] = @"AVAudioSessionCategoryAlarm";
    v8[1] = @"AVAudioSessionCategoryPlayback";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v8;
    v4 = 2;
  }

  else
  {
    v7[0] = @"AVAudioSessionCategoryAmbient";
    v7[1] = @"AVAudioSessionCategorySoloAmbient";
    v7[2] = @"AVAudioSessionCategoryPlayback";
    v7[3] = @"AVAudioSessionCategoryRecord";
    v7[4] = @"AVAudioSessionCategoryPlayAndRecord";
    v7[5] = @"AVAudioSessionCategoryMultiRoute";
    v2 = MEMORY[0x1E695DEC8];
    v3 = v7;
    v4 = 6;
  }

  v5 = [v2 arrayWithObjects:v3 count:v4];

  return v5;
}

- (BOOL)setCategory:(AVAudioSessionCategory)category error:(NSError *)outError
{
  v5 = category;
  avas::client::SessionCore::setCategory([(AVAudioSession *)self sessionCore], v5, 0, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL);
  v6 = FormatNSErrorForReturn();

  return v6;
}

- (BOOL)setCategory:(AVAudioSessionCategory)category withOptions:(AVAudioSessionCategoryOptions)options error:(NSError *)outError
{
  v7 = category;
  avas::client::SessionCore::setCategory([(AVAudioSession *)self sessionCore], v7, 0, 0xFFFFFFFFFFFFFFFFLL, options);
  v8 = FormatNSErrorForReturn();

  return v8;
}

- (BOOL)setCategory:(AVAudioSessionCategory)category mode:(AVAudioSessionMode)mode options:(AVAudioSessionCategoryOptions)options error:(NSError *)outError
{
  v9 = category;
  v10 = mode;
  avas::client::SessionCore::setCategory([(AVAudioSession *)self sessionCore], v9, v10, 0xFFFFFFFFFFFFFFFFLL, options);
  v11 = FormatNSErrorForReturn();

  return v11;
}

- (BOOL)setCategory:(AVAudioSessionCategory)category mode:(AVAudioSessionMode)mode routeSharingPolicy:(AVAudioSessionRouteSharingPolicy)policy options:(AVAudioSessionCategoryOptions)options error:(NSError *)outError
{
  v11 = category;
  v12 = mode;
  if (avas::client::ValidateRouteSharingPolicyParameters(v11, v12, policy, options))
  {
    avas::client::SessionCore::setCategory([(AVAudioSession *)self sessionCore], v11, v12, policy, options);
  }

  v13 = FormatNSErrorForReturn();

  return v13;
}

- (BOOL)setCategoryOptions:(unint64_t)options error:(id *)error
{
  v11[0] = 1;
  v12 = 3443;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  v6 = objc_alloc_init(MEMORY[0x1E695DF90]);
  sessionCore = [(AVAudioSession *)self sessionCore];
  v8 = avas::client::SessionCore::category(sessionCore);
  avas::client::SessionCore::addCategoryOptionsToDictionary(sessionCore, v6, v8, options);

  avas::client::SessionCore::SetBatchPropertiesMX(sessionCore, v6);
  v9 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v11);
  return v9;
}

- (BOOL)isActive
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::isActive(sessionCore);
}

- (BOOL)setActive:(BOOL)active withOptions:(AVAudioSessionSetActiveOptions)options error:(NSError *)outError
{
  v7 = active;
  sessionCore = [(AVAudioSession *)self sessionCore];

  return [(AVAudioSession *)self privateSetActive:v7 withOptions:options error:outError core:sessionCore];
}

- (BOOL)privateSetActive:(BOOL)active withOptions:(unint64_t)options error:(id *)error core:(const void *)core
{
  activeCopy = active;
  v50 = *MEMORY[0x1E69E9840];
  if (active)
  {
    v11 = 3087;
  }

  else
  {
    v11 = 3088;
  }

  v32[0] = 1;
  v33 = v11;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v35 = 0;
  v36 = 0;
  v37 = 0;
  kdebug_trace();
  v12 = avas::client::SessionCore::reporterID(core);
  if (activeCopy)
  {
    v13 = "[AVAudioSession setActive:activate]";
  }

  else
  {
    v13 = "[AVAudioSession setActive:deactivate]";
  }

  avas::client::PerformanceTracker::PerformanceTracker(v31, v13, v12, 0);
  v14 = avas::client::SessionCore::clientPrefersLongFormRouteSharingPolicy(core);
  if (v14)
  {
    optionsCopy = options | 0x4000000;
  }

  else
  {
    optionsCopy = options;
  }

  v16 = *(core + 10);
  if (v16 && (v17 = atomic_load((v16 + 32)), (v17 & 1) != 0))
  {
    avas::client::XPCConnection::sync_message<>(*(core + 10), buf);
    v18 = objc_autoreleasePoolPush();
    v19 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(buf);
    opaqueSessionID2 = [(AVAudioSession *)self opaqueSessionID];
    v21 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(buf);
    if (activeCopy)
    {
      [v19 activateSession:opaqueSessionID2 options:optionsCopy requestID:0 reply:v21];
    }

    else
    {
      [v19 deactivateSession:opaqueSessionID2 options:optionsCopy priority:0 requestID:0 reply:v21];
    }

    objc_autoreleasePoolPop(v18);
    v25 = v49 == 0;
    if (v49)
    {
      if (error)
      {
        *error = v49;
      }
    }

    else
    {
      v27 = *avas::client::gSessionClientLog(v26);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        opaqueSessionID3 = [(AVAudioSession *)self opaqueSessionID];
        v29 = "Deactivated";
        v39 = "AVAudioSession_iOS.mm";
        v41 = 984;
        v42 = 2080;
        *v38 = 136315906;
        v40 = 1024;
        if (activeCopy)
        {
          v29 = "Activated";
        }

        v43 = v29;
        v44 = 1024;
        v45 = opaqueSessionID3;
        _os_log_impl(&dword_1AC8A4000, v27, OS_LOG_TYPE_DEFAULT, "%25s:%-5d %s session 0x%x", v38, 0x22u);
      }
    }

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&buf[8]);
  }

  else
  {
    v22 = *avas::client::gSessionClientLog(v14);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioSession_iOS.mm";
      v47 = 1024;
      v48 = 957;
      _os_log_impl(&dword_1AC8A4000, v22, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid XPC connection, probably media server died", buf, 0x12u);
    }

    v23 = @"deactivation";
    if (activeCopy)
    {
      v23 = @"activation";
    }

    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Server was dead when %@ request was made", v23];
    v25 = FormatNSErrorForReturn();
  }

  avas::client::PerformanceTracker::~PerformanceTracker(v31);
  avas::ScopedTrace::~ScopedTrace(v32);
  return v25;
}

- (void)activateWithOptions:(AVAudioSessionActivationOptions)options completionHandler:(void *)handler
{
  v8 = *MEMORY[0x1E69E9840];
  v5 = handler;
  LODWORD(v7) = 3089;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  std::allocate_shared[abi:ne200100]<avas::ScopedTrace,std::allocator<avas::ScopedTrace>,avas::AudioSessionTraceCode,unsigned int,0>();
}

void __56__AVAudioSession_activateWithOptions_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) sessionCore];
  v5 = v4;
  v6 = *(a1 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (!v3)
  {
    v14 = *avas::client::gSessionClientLog(v4);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [*(a1 + 32) opaqueSessionID];
      *buf = 136315650;
      v24 = "AVAudioSession_iOS.mm";
      v25 = 1024;
      v26 = 1072;
      v27 = 1024;
      LODWORD(v28) = v15;
      _os_log_impl(&dword_1AC8A4000, v14, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Activated session 0x%x", buf, 0x18u);
    }

    if (*(a1 + 64) && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [*(a1 + 64) requestSessionForNetworkStreamingInitialization];
    }

    goto LABEL_18;
  }

  v7 = *avas::client::gSessionClientLog(v4);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315650;
    v24 = "AVAudioSession_iOS.mm";
    v25 = 1024;
    v26 = 1040;
    v27 = 2112;
    v28 = v3;
    _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Server returned an error:. %@", buf, 0x1Cu);
  }

  if (!*(a1 + 64) || ![*(a1 + 32) privateRequiresWatchOSRoutePicker:*(a1 + 72) core:v5])
  {
LABEL_18:
    (*(*(a1 + 40) + 16))();
    goto LABEL_19;
  }

  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3321888768;
  v16[2] = __56__AVAudioSession_activateWithOptions_completionHandler___block_invoke_130;
  v16[3] = &unk_1F215D568;
  v8 = *(a1 + 56);
  v18 = *(a1 + 48);
  v19 = v8;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = (a1 + 64);
  v12 = *(v11 - 3);
  v16[4] = *(v11 - 4);
  v20 = v10;
  v21 = v5;
  v22 = v9;
  v17 = v12;
  v13 = MEMORY[0x1B26ED920](v16);
  [*v11 presentRoutePickerAlertWithOptions:0 completionHandler:v13];

  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

LABEL_19:
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void __56__AVAudioSession_activateWithOptions_completionHandler___block_invoke_130(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 56);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 32);
  v10 = 0;
  v8 = [v7 privateHandleWatchOSActivationAfterRoutePickerSelection:a2 options:*(a1 + 64) error:&v10 core:*(a1 + 72)];
  v9 = v10;
  if (v8 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [*(a1 + 80) requestSessionForNetworkStreamingInitialization];
  }

  (*(*(a1 + 40) + 16))();

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

- (BOOL)deactivateAndSetInterruptionPriority:(int64_t)priority error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  v17[0] = 1;
  v18 = 3419;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v20 = 0;
  v21 = 0;
  v22 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::XPCConnection::sync_message<>(sessionCore[10], &v29);
  v8 = objc_autoreleasePoolPush();
  v9 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v29);
  v10 = avas::client::SessionCore::sessionID(sessionCore);
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v29);
  [v9 deactivateSession:v10 options:0 priority:v11 requestID:0 reply:v12];

  objc_autoreleasePoolPop(v8);
  v14 = v31;
  if (v31)
  {
    if (error)
    {
      *error = v31;
    }
  }

  else
  {
    v15 = *avas::client::gSessionClientLog(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v24 = "AVAudioSession_iOS.mm";
      v25 = 1024;
      v26 = 1130;
      v27 = 1024;
      v28 = avas::client::SessionCore::sessionID(sessionCore);
      _os_log_impl(&dword_1AC8A4000, v15, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Deactivated session 0x%x", buf, 0x18u);
    }

    avas::client::KVOManager::markPropertiesDirtyAll(sessionCore[5]);
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v30);
  avas::ScopedTrace::~ScopedTrace(v17);
  return v14 == 0;
}

- (void)requestRecordPermission:(void *)response
{
  v4 = response;
  v5 = 3081;
  LODWORD(location) = [(AVAudioSession *)self opaqueSessionID];
  std::allocate_shared[abi:ne200100]<avas::ScopedTrace,std::allocator<avas::ScopedTrace>,avas::AudioSessionTraceCode,unsigned int,0>();
}

void __42__AVAudioSession_requestRecordPermission___block_invoke(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *avas::client::gSessionClientLog(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AVAudioSession_iOS.mm";
    v21 = 1024;
    v22 = 1209;
    v23 = 1024;
    v24 = a2 == 2;
    _os_log_impl(&dword_1AC8A4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Got Permission value %d", buf, 0x18u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v6 = WeakRetained;
  if (WeakRetained)
  {
    avas::client::XPCConnection::sync_message<>(*([WeakRetained sessionCore] + 80), buf);
    v7 = objc_autoreleasePoolPush();
    v8 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(buf);
    v9 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(buf);
    [v8 updateMicrophonePermission:1919119972 clientToken:0 reply:v9];

    objc_autoreleasePoolPop(v7);
    if (v25)
    {
      v11 = *avas::client::gSessionClientLog(v10);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v12 = v25;
        v14 = 136315650;
        v15 = "AVAudioSession_iOS.mm";
        v16 = 1024;
        v17 = 1225;
        v18 = 2112;
        v19 = v12;
        _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Server returned an error from -updateMicrophonePermission:. %@", &v14, 0x1Cu);
      }
    }

    _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&buf[8]);
  }

  else
  {
    v13 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioSession_iOS.mm";
      v21 = 1024;
      v22 = 1229;
      _os_log_impl(&dword_1AC8A4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d Session object is no longer valid while returning TCC permission value", buf, 0x12u);
    }
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)setPreferredSampleRate:(double)sampleRate error:(NSError *)outError
{
  v17[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v14) = 1;
  HIDWORD(v14) = 3090;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  kdebug_trace();
  v6 = [(AVAudioSession *)self sessionCore:v14];
  v7 = *MEMORY[0x1E69B0230];
  v16[0] = v7;
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:sampleRate];
  v17[0] = v8;
  v9 = *MEMORY[0x1E69B0268];
  v16[1] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:sampleRate];
  v17[1] = v10;
  v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:2];

  avas::client::SessionCore::SetBatchPropertiesMX(v6, v11);
  v12 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(&v14);
  return v12;
}

- (BOOL)setPreferredIOBufferDuration:(NSTimeInterval)duration error:(NSError *)outError
{
  v10[0] = 1;
  v11 = 3092;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:duration];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B01F0], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setPreferredIOBufferFrameSize:(unint64_t)size error:(id *)error
{
  v10[0] = 1;
  v11 = 3373;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:size];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0208], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setInterruptionPriority:(int64_t)priority error:(id *)error
{
  v10[0] = 1;
  v11 = 3380;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:priority];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFDB0], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setPreferredInputNumberOfChannels:(NSInteger)count error:(NSError *)outError
{
  v10[0] = 1;
  v11 = 3094;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithInteger:count];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0250], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setPreferredOutputNumberOfChannels:(NSInteger)count error:(NSError *)outError
{
  v10[0] = 1;
  v11 = 3096;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:count];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0260], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setInputGain:(float)gain error:(NSError *)outError
{
  v14[0] = 1;
  v15 = 3103;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = *MEMORY[0x1E69B0000];
  *&v8 = gain;
  v9 = [MEMORY[0x1E696AD98] numberWithFloat:v8];
  v10 = avas::client::SessionCore::SetProperty(sessionCore, v7, v9, 1);

  if (!v10)
  {
    Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, v7, 1);
    avas::client::KVOProperty<float>::UpdateAndNotify((sessionCore[5] + 56), &Property_DefaultTo, 0);
  }

  v11 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v14);
  return v11;
}

- (BOOL)setInputDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError
{
  v6 = dataSource;
  v12[0] = 1;
  v13 = 3109;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  kdebug_trace();
  currentRoute = [(AVAudioSession *)self currentRoute];
  inputs = [currentRoute inputs];

  if ([inputs count])
  {
    v9 = [inputs objectAtIndex:0];
  }

  else
  {
    v9 = 0;
  }

  v10 = [v9 setPreferredDataSource:v6 error:outError];
  if (v10)
  {
    avas::client::KVOManager::markPropertiesDirty(*([(AVAudioSession *)self sessionCore]+ 40), 4);
  }

  avas::ScopedTrace::~ScopedTrace(v12);
  return v10;
}

- (BOOL)setOutputDataSource:(AVAudioSessionDataSourceDescription *)dataSource error:(NSError *)outError
{
  v6 = dataSource;
  v14[0] = 1;
  v15 = 3112;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  kdebug_trace();
  currentRoute = [(AVAudioSession *)self currentRoute];
  outputs = [currentRoute outputs];
  if ([outputs count])
  {
    currentRoute2 = [(AVAudioSession *)self currentRoute];
    outputs2 = [currentRoute2 outputs];
    v11 = [outputs2 objectAtIndex:0];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v11 setPreferredDataSource:v6 error:outError];
  if (v12)
  {
    avas::client::KVOManager::markPropertiesDirty(*([(AVAudioSession *)self sessionCore]+ 40), 8);
  }

  avas::ScopedTrace::~ScopedTrace(v14);
  return v12;
}

- (BOOL)setPreferredInputOrientation:(AVAudioStereoOrientation)orientation error:(NSError *)outError
{
  v23 = *MEMORY[0x1E69E9840];
  v13[0] = 1;
  v14 = 3098;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  if ((orientation - 1) > 3)
  {
    v10 = *avas::client::gSessionClientLog(sessionCore);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v20 = "AVAudioSession_iOS.mm";
      v21 = 1024;
      v22 = 1369;
      _os_log_impl(&dword_1AC8A4000, v10, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid value for input orientation.", buf, 0x12u);
    }

    v9 = FormatNSErrorForReturn();
  }

  else
  {
    v7 = sessionCore;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:orientation];
    avas::client::SessionCore::SetProperty(v7, *MEMORY[0x1E69B0290], v8, 1);

    v9 = FormatNSErrorForReturn();
  }

  v11 = v9;
  avas::ScopedTrace::~ScopedTrace(v13);
  return v11;
}

- (AVAudioStereoOrientation)preferredInputOrientation
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6[0] = 1;
  v7 = 3099;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<unsigned int>(sessionCore, *MEMORY[0x1E69B0290], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (AVAudioStereoOrientation)inputOrientation
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6[0] = 1;
  v7 = 3100;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<unsigned int>(sessionCore, *MEMORY[0x1E69AFEA0], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (float)outputVolume
{
  v13[4] = *MEMORY[0x1E69E9840];
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6[0] = 1;
  v7 = 3121;
  v8 = avas::client::SessionCore::sessionID(sessionCore);
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  v2 = *(sessionCore + 5);
  v13[0] = &unk_1F215D708;
  v13[1] = &sessionCore;
  v13[3] = v13;
  updated = avas::client::KVOProperty<float>::UpdateIfDirty(v2 + 8, v13);
  if (updated != 0.0 && updated != 1.0)
  {
    updated = roundf(updated / 0.05) * 0.05;
  }

  std::__function::__value_func<float ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v6);
  return updated;
}

- (AVAudioSessionPromptStyle)promptStyle
{
  selfCopy = self;
  v12[4] = *MEMORY[0x1E69E9840];
  v6[0] = 1;
  v7 = 3122;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  v3 = *(sessionCore + 40);
  v12[0] = &unk_1F215D750;
  v12[1] = &sessionCore;
  v12[3] = v12;
  LODWORD(selfCopy) = avas::client::KVOProperty<unsigned int>::UpdateIfDirty(v3 + 296, v12);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](v12);
  avas::ScopedTrace::~ScopedTrace(v6);
  return selfCopy;
}

- (BOOL)setAllowHapticsAndSystemSoundsDuringRecording:(BOOL)inValue error:(NSError *)outError
{
  v4 = inValue;
  v25 = *MEMORY[0x1E69E9840];
  v13[0] = 1;
  v14 = 3078;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v6 = kdebug_trace();
  v7 = *avas::client::gSessionClientLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = "FALSE";
    v20 = "AVAudioSession_iOS.mm";
    *buf = 136315650;
    if (v4)
    {
      v8 = "TRUE";
    }

    v21 = 1024;
    v22 = 1422;
    v23 = 2080;
    v24 = v8;
    _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_DEBUG, "%25s:%-5d ---> %s", buf, 0x1Cu);
  }

  sessionCore = [(AVAudioSession *)self sessionCore];
  v10 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFC68], v10, 1);

  v11 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v13);
  return v11;
}

- (BOOL)allowHapticsAndSystemSoundsDuringRecording
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3079;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69AFC68], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (id)audioFormats
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3329;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = sessionCore[5];
  v13[0] = &unk_1F215D798;
  v13[1] = &sessionCore;
  v13[3] = v13;
  v4 = avas::client::KVOProperty<NSArray * {__strong}>::UpdateIfDirty(v3 + 200, v13);
  std::__function::__value_func<NSArray * ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v7);

  return v4;
}

- (void)handleMediaDaemonTerminationEvent:(int)event daemonName:(id)name
{
  v4 = *&event;
  nameCopy = name;
  v7 = nameCopy;
  if (!nameCopy)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", v4];
  }

  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::AVAudioSessionDaemonsStateManager::processServiceTermination(sessionCore[9], v7);
  v9 = dispatch_time(0, 500000000);
  v10 = *(sessionCore[10] + 2);
  objc_initWeak(&location, self);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__AVAudioSession_handleMediaDaemonTerminationEvent_daemonName___block_invoke;
  block[3] = &unk_1E7986EB8;
  v11 = v10;
  objc_copyWeak(&v15, &location);
  v14 = v7;
  v12 = v7;
  dispatch_after(v9, v11, block);

  objc_destroyWeak(&v15);
  objc_destroyWeak(&location);
}

void __63__AVAudioSession_handleMediaDaemonTerminationEvent_daemonName___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    avas::client::AVAudioSessionDaemonsStateManager::processServiceReset(*([WeakRetained sessionCore] + 72), *(a1 + 32));
  }
}

- (int64_t)audioFormat
{
  v8[0] = 1;
  v9 = 3330;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69AFE00]);
  v6 = avas::client::TranslateFromMXAudioHardwareFormat(v4, v5);

  avas::ScopedTrace::~ScopedTrace(v8);
  return v6;
}

- (BOOL)setPreferredAudioFormat:(int64_t)format error:(id *)error
{
  v10[0] = 1;
  v11 = 3456;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = avas::client::TranslateToMXAudioHardwareFormat(format);
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B01E8], v7, 1);
  v8 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (int64_t)preferredAudioFormat
{
  v8[0] = 1;
  v9 = 3457;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69B01E8]);
  v6 = avas::client::TranslateFromMXAudioHardwareFormat(v4, v5);

  avas::ScopedTrace::~ScopedTrace(v8);
  return v6;
}

- (BOOL)isDolbyDigitalEncoderAvailable
{
  selfCopy = self;
  v4[0] = 1;
  v5 = 3332;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  kdebug_trace();
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>([(AVAudioSession *)selfCopy sessionCore], @"DolbyDigitalEncoderAvailable", 0);
  avas::ScopedTrace::~ScopedTrace(v4);
  return selfCopy;
}

- (BOOL)isEarpieceActiveNoiseCancelationEnabled
{
  selfCopy = self;
  v4[0] = 1;
  v5 = 3334;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  kdebug_trace();
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>([(AVAudioSession *)selfCopy sessionCore], @"EarpieceANCEnabled", 0);
  avas::ScopedTrace::~ScopedTrace(v4);
  return selfCopy;
}

- (BOOL)isPiPAvailable
{
  selfCopy = self;
  v12[4] = *MEMORY[0x1E69E9840];
  v6[0] = 1;
  v7 = 3335;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  v3 = *(sessionCore + 40);
  v12[0] = &unk_1F215D7E0;
  v12[1] = &sessionCore;
  v12[3] = v12;
  LOBYTE(selfCopy) = avas::client::KVOProperty<unsigned int>::UpdateIfDirty(v3 + 440, v12) != 0;
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](v12);
  avas::ScopedTrace::~ScopedTrace(v6);
  return selfCopy;
}

- (BOOL)isEchoCancelledInputAvailable
{
  v17 = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3459;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v3 = kdebug_trace();
  v4 = *avas::client::gSessionClientLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "AVAudioSession_iOS.mm";
    v15 = 1024;
    v16 = 1582;
    _os_log_impl(&dword_1AC8A4000, v4, OS_LOG_TYPE_DEFAULT, "%25s:%-5d Getting echo cancelled input availability", buf, 0x12u);
  }

  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>([(AVAudioSession *)self sessionCore], @"SupportsEchoCancelledInput", 1);
  avas::ScopedTrace::~ScopedTrace(v7);
  return Property_DefaultTo;
}

- (BOOL)isOutputMuted
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3137;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B00B0], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setOutputMuted:(BOOL)muted error:(id *)error
{
  mutedCopy = muted;
  v10[0] = 1;
  v11 = 3136;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:mutedCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B00B0], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)forceSoundCheck
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3336;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69AFF70], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setForceSoundCheck:(BOOL)check error:(id *)error
{
  checkCopy = check;
  v10[0] = 1;
  v11 = 3337;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:checkCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFF70], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)requiresNoAudioResources
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3338;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69AFF20], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setRequiresNoAudioResources:(BOOL)resources error:(id *)error
{
  resourcesCopy = resources;
  v10[0] = 1;
  v11 = 3339;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:resourcesCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFF20], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)allowMixableAudioWhileRecording
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3340;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69AFC58], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (id)conformedPoliciesOfSession:(unsigned int)session
{
  v6[0] = 1;
  v7 = 3460;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>([(AVAudioSession *)self sessionCore], @"ShadowingAudioSessionOptions");
  avas::ScopedTrace::~ScopedTrace(v6);

  return v4;
}

- (BOOL)setConformsToSessionBehavior:(id)behavior error:(id *)error
{
  behaviorCopy = behavior;
  v8[0] = 1;
  v9 = 3461;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  avas::client::SessionCore::SetProperty([(AVAudioSession *)self sessionCore], @"ShadowingAudioSessionOptions", behaviorCopy, 1);
  v6 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v8);

  return v6;
}

- (BOOL)setAllowMixableAudioWhileRecording:(BOOL)recording error:(id *)error
{
  recordingCopy = recording;
  v10[0] = 1;
  v11 = 3341;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:recordingCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFC58], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)participatesInNowPlayingAppPolicy
{
  selfCopy = self;
  v4[0] = 1;
  v5 = 3342;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  kdebug_trace();
  LOBYTE(selfCopy) = avas::client::SessionCoreLegacy_iOS::participatesInNowPlayingAppPolicy([(AVAudioSession *)selfCopy sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v4);
  return selfCopy;
}

- (BOOL)setParticipatesInNowPlayingAppPolicy:(BOOL)policy error:(id *)error
{
  policyCopy = policy;
  v8[0] = 1;
  v9 = 3343;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  avas::client::SessionCoreLegacy_iOS::setParticipatesInNowPlayingAppPolicy([(AVAudioSession *)self sessionCore], policyCopy);
  v6 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v8);
  return v6;
}

- (BOOL)eligibleForBTSmartRoutingConsideration
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3344;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0040], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setEligibleForBTSmartRoutingConsideration:(BOOL)consideration error:(id *)error
{
  considerationCopy = consideration;
  v10[0] = 1;
  v11 = 3345;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:considerationCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0040], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)eligibleForBTTriangleConsideration
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3433;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0050], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setEligibleForBTTriangleConsideration:(BOOL)consideration error:(id *)error
{
  considerationCopy = consideration;
  v10[0] = 1;
  v11 = 3434;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:considerationCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0050], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)prefersToAcquireHWControlFromOtherSessions
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3346;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0350], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setPrefersToAcquireHWControlFromOtherSessions:(BOOL)sessions error:(id *)error
{
  sessionsCopy = sessions;
  v10[0] = 1;
  v11 = 3347;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:sessionsCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0350], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)inhibitSpeechDetection
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3447;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0320], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy ^ 1;
}

- (BOOL)setInhibitSpeechDetection:(BOOL)detection error:(id *)error
{
  detectionCopy = detection;
  v10[0] = 1;
  v11 = 3448;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:!detectionCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0320], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)prefersNoMicrophoneUsageIndicator
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3348;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0328], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setPrefersNoMicrophoneUsageIndicator:(BOOL)indicator error:(id *)error
{
  indicatorCopy = indicator;
  v10[0] = 1;
  v11 = 3349;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:indicatorCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0328], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)participatesInMutePriority
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3350;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0160], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy ^ 1;
}

- (BOOL)setParticipatesInMutePriority:(BOOL)priority error:(id *)error
{
  priorityCopy = priority;
  v10[0] = 1;
  v11 = 3351;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:!priorityCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0160], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)recordingFromRemoteInput
{
  selfCopy = self;
  v4[0] = 1;
  v5 = 3352;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v7 = 0;
  v8 = 0;
  v9 = 0;
  kdebug_trace();
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>([(AVAudioSession *)selfCopy sessionCore], @"RecordingFromRemoteInput", 0);
  avas::ScopedTrace::~ScopedTrace(v4);
  return selfCopy;
}

- (BOOL)setRecordingFromRemoteInput:(BOOL)input error:(id *)error
{
  inputCopy = input;
  v10[0] = 1;
  v11 = 3353;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:inputCopy];
  avas::client::SessionCore::SetProperty(sessionCore, @"RecordingFromRemoteInput", v7, 0);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)iAmTheAssistant
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3356;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<unsigned int>(sessionCore, *MEMORY[0x1E69AFFA8], 1) != 0;
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setIAmTheAssistant:(BOOL)assistant error:(id *)error
{
  assistantCopy = assistant;
  v10[0] = 1;
  v11 = 3357;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:assistantCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFFA8], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setBypassRingerSwitchPolicy:(BOOL)policy error:(id *)error
{
  policyCopy = policy;
  v10[0] = 1;
  v11 = 3383;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:policyCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFFC8], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setAudioHardwareControlFlags:(unint64_t)flags error:(id *)error
{
  flagsCopy = flags;
  v10[0] = 1;
  v11 = 3384;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:avas::client::MapToMxHWCtrlFlags(flagsCopy)];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFCD8], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setInterruptionFadeDuration:(id)duration error:(id *)error
{
  durationCopy = duration;
  v9[0] = 1;
  v10 = 3385;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0010], durationCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (BOOL)setDuckingFadeOutDuration:(id)duration fadeInDuration:(id)inDuration error:(id *)error
{
  v22[2] = *MEMORY[0x1E69E9840];
  durationCopy = duration;
  inDurationCopy = inDuration;
  LOBYTE(v16) = 1;
  HIDWORD(v16) = 3386;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  kdebug_trace();
  v9 = *MEMORY[0x1E69AFF28];
  v21[0] = v9;
  null = durationCopy;
  if (!durationCopy)
  {
    null = [MEMORY[0x1E695DFB0] null];
  }

  v22[0] = null;
  v11 = *MEMORY[0x1E69B0458];
  v21[1] = v11;
  null2 = inDurationCopy;
  if (!inDurationCopy)
  {
    null2 = [MEMORY[0x1E695DFB0] null];
  }

  v22[1] = null2;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:{2, v16}];
  if (!inDurationCopy)
  {
  }

  if (!durationCopy)
  {
  }

  avas::client::SessionCore::SetBatchPropertiesMX([(AVAudioSession *)self sessionCore], v13);
  v14 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(&v16);
  return v14;
}

- (BOOL)setDuckToLevelScalar:(id)scalar unduckToLevelScalar:(id)levelScalar error:(id *)error
{
  scalarCopy = scalar;
  levelScalarCopy = levelScalar;
  v15[0] = 1;
  v16 = 3446;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  kdebug_trace();
  v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v10 = v9;
  if (scalarCopy | levelScalarCopy)
  {
    if (scalarCopy)
    {
      [v9 setObject:scalarCopy forKeyedSubscript:*MEMORY[0x1E69AFF48]];
    }

    if (levelScalarCopy)
    {
      [v10 setObject:levelScalarCopy forKeyedSubscript:*MEMORY[0x1E69B0468]];
    }
  }

  else
  {
    null = [MEMORY[0x1E695DFB0] null];
    [v10 setObject:null forKeyedSubscript:*MEMORY[0x1E69AFF48]];

    null2 = [MEMORY[0x1E695DFB0] null];
    [v10 setObject:null2 forKeyedSubscript:*MEMORY[0x1E69B0468]];
  }

  avas::client::SessionCore::SetBatchPropertiesMX([(AVAudioSession *)self sessionCore], v10);
  v13 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v15);
  return v13;
}

- (BOOL)setDuckToLevelDB:(id)b error:(id *)error
{
  bCopy = b;
  v9[0] = 1;
  v10 = 3387;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFF40], bCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (BOOL)setDuckToLevelScalar:(id)scalar error:(id *)error
{
  scalarCopy = scalar;
  v9[0] = 1;
  v10 = 3388;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFF48], scalarCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (BOOL)isExpanseMediaSession
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = *MEMORY[0x1E69B0070];

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, v3, 1);
}

- (BOOL)setIsExpanseMediaSession:(BOOL)session error:(id *)error
{
  sessionCopy = session;
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6 = *MEMORY[0x1E69B0070];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:sessionCopy];
  avas::client::SessionCore::SetProperty(sessionCore, v6, v7, 1);

  return FormatNSErrorForReturn();
}

- (BOOL)prefersAggressiveCaching
{
  v2 = *([(AVAudioSession *)self sessionCore]+ 96);

  return avas::client::CacheManager::getCachingPreference(v2);
}

- (BOOL)setPrefersAggressiveCaching:(BOOL)caching error:(id *)error
{
  avas::client::CacheManager::setCachingPreference(*([(AVAudioSession *)self sessionCore]+ 96), caching);

  return FormatNSErrorForReturn();
}

- (BOOL)prefersConcurrentAirPlayAudio
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = *MEMORY[0x1E69B02C0];

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, v3, 1);
}

- (BOOL)setPrefersConcurrentAirPlayAudio:(BOOL)audio error:(id *)error
{
  audioCopy = audio;
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6 = *MEMORY[0x1E69B02C0];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:audioCopy];
  avas::client::SessionCore::SetProperty(sessionCore, v6, v7, 1);

  return FormatNSErrorForReturn();
}

- (BOOL)setReporterID:(int64_t)d error:(id *)error
{
  v17[1] = *MEMORY[0x1E69E9840];
  v11[0] = 1;
  v12 = 3389;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithLongLong:d];
  v17[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];

  if (!avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0378], v8, 1))
  {
    avas::client::SessionCore::setReporterID(sessionCore, d);
  }

  v9 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v11);
  return v9;
}

- (BOOL)isHardwareFormatFixedToMultiChannel
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3354;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69AFF00], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)fixHardwareFormatToMultiChannel:(BOOL)channel error:(id *)error
{
  channelCopy = channel;
  v10[0] = 1;
  v11 = 3355;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:channelCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFF00], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (float)inputGain
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3104;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = sessionCore[5];
  v13[0] = &unk_1F215D828;
  v13[1] = &sessionCore;
  v13[3] = v13;
  updated = avas::client::KVOProperty<float>::UpdateIfDirty(v3 + 56, v13);
  std::__function::__value_func<float ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v7);
  return updated;
}

- (id)privateGetDataSources:(BOOL)sources core:(const void *)core
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = *(core + 5);
  if (sources)
  {
    v6 = 104;
  }

  else
  {
    v6 = 152;
  }

  selfCopy = self;
  v10[0] = &unk_1F215D870;
  v10[1] = selfCopy;
  sourcesCopy = sources;
  memset(v12, 0, sizeof(v12));
  v13 = v10;
  v8 = avas::client::KVOProperty<NSArray * {__strong}>::UpdateIfDirty(v5 + v6, v10);
  std::__function::__value_func<NSArray * ()(void)>::~__value_func[abi:ne200100](v10);

  return v8;
}

- (id)privateGetSelectedDataSource:(BOOL)source core:(const void *)core
{
  sourceCopy = source;
  v5 = avas::client::SessionCoreLegacy_iOS::currentRouteDescription([(AVAudioSession *)self sessionCore:source]);
  v6 = v5;
  if (sourceCopy)
  {
    [v5 inputs];
  }

  else
  {
    [v5 outputs];
  }
  v7 = ;
  if ([v7 count])
  {
    v8 = [v7 objectAtIndex:0];
  }

  else
  {
    v8 = 0;
  }

  selectedDataSource = [v8 selectedDataSource];

  return selectedDataSource;
}

- (NSArray)inputDataSources
{
  v5[0] = 1;
  v6 = 3107;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = [(AVAudioSession *)self privateGetDataSources:1 core:[(AVAudioSession *)self sessionCore]];
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (AVAudioSessionDataSourceDescription)inputDataSource
{
  v5[0] = 1;
  v6 = 3108;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = [(AVAudioSession *)self privateGetSelectedDataSource:1 core:[(AVAudioSession *)self sessionCore]];
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (NSArray)outputDataSources
{
  v5[0] = 1;
  v6 = 3110;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = [(AVAudioSession *)self privateGetDataSources:0 core:[(AVAudioSession *)self sessionCore]];
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (AVAudioSessionDataSourceDescription)outputDataSource
{
  v5[0] = 1;
  v6 = 3111;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = [(AVAudioSession *)self privateGetSelectedDataSource:0 core:[(AVAudioSession *)self sessionCore]];
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (BOOL)isInputGainSettable
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3105;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69AFFF0], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)getInputAvailable
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::isInputAvailable(sessionCore);
}

- (BOOL)isInputAvailable
{
  selfCopy = self;
  v12[4] = *MEMORY[0x1E69E9840];
  v6[0] = 1;
  v7 = 3106;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  v3 = *(sessionCore + 40);
  v12[0] = &unk_1F215D8B8;
  v12[1] = &sessionCore;
  v12[3] = v12;
  LOBYTE(selfCopy) = avas::client::KVOProperty<unsigned int>::UpdateIfDirty(v3 + 488, v12) != 0;
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](v12);
  avas::ScopedTrace::~ScopedTrace(v6);
  return selfCopy;
}

- (BOOL)secondaryAudioShouldBeSilencedHint
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3120;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0420], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (double)inputSafetyOffset
{
  v6[0] = 1;
  v7 = 3371;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AEDC8], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (double)outputSafetyOffset
{
  v6[0] = 1;
  v7 = 3372;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AEDE0], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (id)activeSessionDisplayIDs
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3368;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSArray * {__strong}>(sessionCore, *MEMORY[0x1E69AEDF8]);
  v5 = v4;
  if (v4 && (v4 = [(avas::client *)v4 count]) != 0)
  {
    v6 = v5;
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(v4);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSession_iOS.mm";
      v17 = 1024;
      v18 = 2231;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get DisplayIDsOfActiveSessions", buf, 0x12u);
    }

    v6 = MEMORY[0x1E695E0F0];
  }

  avas::ScopedTrace::~ScopedTrace(v9);

  return v6;
}

- (NSTimeInterval)IOBufferDuration
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3118;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = sessionCore[5];
  v13[0] = &unk_1F215D948;
  v13[1] = &sessionCore;
  v13[3] = v13;
  updated = avas::client::KVOProperty<double>::UpdateIfDirty(v3 + 728, v13);
  std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v7);
  return updated;
}

- (unint64_t)IOBufferFrameSize
{
  v5[0] = 1;
  v6 = 3375;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCoreLegacy_iOS::ioBufferFrameSize([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);
  return v3;
}

- (id)supportedOutputChannelLayouts
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3135;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSArray * {__strong}>(sessionCore, *MEMORY[0x1E69B0440]);
  v5 = v4;
  if (v4)
  {
    v6 = avas::client::TranslateOutputChannelLayoutsFromMX(v4);
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSession_iOS.mm";
      v17 = 1024;
      v18 = 2264;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Get SupportedOutputChannelLayouts failed", buf, 0x12u);
    }

    v6 = MEMORY[0x1E695E0F0];
  }

  avas::ScopedTrace::~ScopedTrace(v9);

  return v6;
}

- (unint64_t)speechDetectionStyle
{
  selfCopy = self;
  v12[4] = *MEMORY[0x1E69E9840];
  v6[0] = 1;
  v7 = 3449;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  v3 = *(sessionCore + 40);
  v12[0] = &unk_1F215D990;
  v12[1] = &sessionCore;
  v12[3] = v12;
  LODWORD(selfCopy) = avas::client::KVOProperty<unsigned int>::UpdateIfDirty(v3 + 536, v12);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](v12);
  avas::ScopedTrace::~ScopedTrace(v6);
  return selfCopy;
}

- (int64_t)interruptionPriority
{
  v6[0] = 1;
  v7 = 3381;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<int>(sessionCore, *MEMORY[0x1E69AFDB0], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (double)preferredSampleRate
{
  v9[0] = 1;
  v10 = 3091;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::category(sessionCore);
  v5 = [v4 isEqualToString:@"AVAudioSessionCategoryRecord"];

  if (v5)
  {
    Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69B0230], 1);
  }

  else
  {
    Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69B0268], 1);
  }

  v7 = Property_DefaultTo;
  avas::ScopedTrace::~ScopedTrace(v9);
  return v7;
}

- (NSTimeInterval)preferredIOBufferDuration
{
  v6[0] = 1;
  v7 = 3093;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69B01F0], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (unint64_t)preferredIOBufferFrameSize
{
  v6[0] = 1;
  v7 = 3374;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<unsigned long>(sessionCore, *MEMORY[0x1E69B0208], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (NSInteger)preferredInputNumberOfChannels
{
  v6[0] = 1;
  v7 = 3095;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<long>(sessionCore, *MEMORY[0x1E69B0250], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (NSInteger)preferredOutputNumberOfChannels
{
  v6[0] = 1;
  v7 = 3097;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<long>(sessionCore, *MEMORY[0x1E69B0260], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (NSInteger)inputNumberOfChannels
{
  selfCopy = self;
  v12[4] = *MEMORY[0x1E69E9840];
  v6[0] = 1;
  v7 = 3114;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  v3 = *(sessionCore + 40);
  v12[0] = &unk_1F215D9D8;
  v12[1] = &sessionCore;
  v12[3] = v12;
  LODWORD(selfCopy) = avas::client::KVOProperty<unsigned int>::UpdateIfDirty(v3 + 344, v12);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](v12);
  avas::ScopedTrace::~ScopedTrace(v6);
  return selfCopy;
}

- (NSInteger)outputNumberOfChannels
{
  selfCopy = self;
  v12[4] = *MEMORY[0x1E69E9840];
  v6[0] = 1;
  v7 = 3115;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  v3 = *(sessionCore + 40);
  v12[0] = &unk_1F215DA20;
  v12[1] = &sessionCore;
  v12[3] = v12;
  LODWORD(selfCopy) = avas::client::KVOProperty<unsigned int>::UpdateIfDirty(v3 + 392, v12);
  std::__function::__value_func<unsigned int ()(void)>::~__value_func[abi:ne200100](v12);
  avas::ScopedTrace::~ScopedTrace(v6);
  return selfCopy;
}

- (NSInteger)maximumInputNumberOfChannels
{
  v6[0] = 1;
  v7 = 3101;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<long>(sessionCore, *MEMORY[0x1E69B0118], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (NSInteger)maximumOutputNumberOfChannels
{
  v6[0] = 1;
  v7 = 3102;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<long>(sessionCore, *MEMORY[0x1E69B0120], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (NSArray)availableModes
{
  v4[9] = *MEMORY[0x1E69E9840];
  v4[0] = @"AVAudioSessionModeDefault";
  v4[1] = @"AVAudioSessionModeVoiceChat";
  v4[2] = @"AVAudioSessionModeVideoRecording";
  v4[3] = @"AVAudioSessionModeMeasurement";
  v4[4] = @"AVAudioSessionModeMoviePlayback";
  v4[5] = @"AVAudioSessionModeVideoChat";
  v4[6] = @"AVAudioSessionModeShortFormVideo";
  v4[7] = @"AVAudioSessionModeSpokenAudio";
  v4[8] = @"AVAudioSessionModeVoicePrompt";
  v2 = [MEMORY[0x1E695DEC8] arrayWithObjects:v4 count:9];

  return v2;
}

- (AVAudioSessionMode)mode
{
  v5[0] = 1;
  v6 = 3077;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCore::mode([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (BOOL)setMode:(AVAudioSessionMode)mode error:(NSError *)outError
{
  v26 = *MEMORY[0x1E69E9840];
  v6 = mode;
  v14[0] = 1;
  v15 = 3076;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v17 = 0;
  v18 = 0;
  v19 = 0;
  kdebug_trace();
  v7 = TranslateAVASModeToMXModeString(v6);
  if (!v7)
  {
    if (outError)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
      *outError = v12 = 0;
      goto LABEL_10;
    }

LABEL_9:
    v12 = 0;
    goto LABEL_10;
  }

  sessionCore = [(AVAudioSession *)self sessionCore];
  v9 = avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFCE8], v7, 1);
  v10 = v9;
  if (v9)
  {
    v11 = *avas::client::gSessionClientLog(v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v21 = "AVAudioSession_iOS.mm";
      v22 = 1024;
      v23 = 2462;
      v24 = 1024;
      v25 = v10;
      _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to set mode: %d", buf, 0x18u);
    }
  }

  if (!FormatNSErrorForReturn())
  {
    goto LABEL_9;
  }

  avas::client::KVOManager::markPropertiesDirty(sessionCore[5], 4294967263);
  v12 = 1;
LABEL_10:

  avas::ScopedTrace::~ScopedTrace(v14);
  return v12;
}

- (BOOL)privateSetRouteSharingPolicy:(unint64_t)policy error:(id *)error
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::setClientPrefersLongFormRouteSharingPolicy(sessionCore, (policy & 0xFFFFFFFFFFFFFFFDLL) == 1);
  v6 = *MEMORY[0x1E69B03B0];
  v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:policy];
  avas::client::SessionCore::SetProperty(sessionCore, v6, v7, 1);

  return FormatNSErrorForReturn();
}

- (id)auditTokensForProcessAssertion
{
  v8[0] = 1;
  v9 = 3391;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSArray * {__strong}>(sessionCore, *MEMORY[0x1E69B0368]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = MEMORY[0x1E695E0F0];
  }

  avas::ScopedTrace::~ScopedTrace(v8);

  return v6;
}

- (BOOL)setAuditTokensForProcessAssertion:(id)assertion error:(id *)error
{
  assertionCopy = assertion;
  v9[0] = 1;
  v10 = 3392;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0368], assertionCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (id)powerBudget
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3395;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>(sessionCore, *MEMORY[0x1E69B01D0]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSession_iOS.mm";
      v17 = 1024;
      v18 = 2521;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Get powerBudget failed", buf, 0x12u);
    }

    v6 = MEMORY[0x1E695E0F8];
  }

  avas::ScopedTrace::~ScopedTrace(v9);

  return v6;
}

- (id)powerProfile
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3393;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>(sessionCore, *MEMORY[0x1E69B01D8]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSession_iOS.mm";
      v17 = 1024;
      v18 = 2535;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Get powerProfile failed", buf, 0x12u);
    }

    v6 = MEMORY[0x1E695E0F8];
  }

  avas::ScopedTrace::~ScopedTrace(v9);

  return v6;
}

- (BOOL)setPowerProfile:(id)profile error:(id *)error
{
  profileCopy = profile;
  v9[0] = 1;
  v10 = 3394;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B01D8], profileCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (BOOL)subscribeToNotifications:(id)notifications error:(id *)error
{
  v32 = *MEMORY[0x1E69E9840];
  notificationsCopy = notifications;
  v21[0] = 1;
  v22 = 3396;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v24 = 0;
  v25 = 0;
  v26 = 0;
  kdebug_trace();
  if (notificationsCopy)
  {
    selfCopy = self;
    errorCopy = error;
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v7 = notificationsCopy;
    v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
    if (v8)
    {
      v9 = *v28;
      v20 = *MEMORY[0x1E69AFBE8];
      v10 = *MEMORY[0x1E69AFBD8];
      v11 = *MEMORY[0x1E69AFBB0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v28 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v27 + 1) + 8 * i);
          if ([v13 isEqual:{@"AVAudioSessionBeaconBudgetChangeNotification", selfCopy, errorCopy}])
          {
            [v6 addObject:v11];
          }

          else if ([v13 isEqual:@"AVAudioSessionConcurrentAirPlayAudioPreferenceChangeNotification"])
          {
            [v6 addObject:v10];
          }

          else if ([v13 isEqual:@"AVAudioSessionRouteControlChangeNotification"])
          {
            [v6 addObject:v20];
          }
        }

        v8 = [v7 countByEnumeratingWithState:&v27 objects:v31 count:16];
      }

      while (v8);
    }

    self = selfCopy;
  }

  else
  {
    v6 = 0;
  }

  v14 = [(AVAudioSession *)self sessionCore:selfCopy];
  avas::client::SessionCore::SetProperty(v14, *MEMORY[0x1E69B0430], v6, 1);
  v15 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v21);
  return v15;
}

- (BOOL)setRoutingContextUID:(id)d error:(id *)error
{
  dCopy = d;
  v9[0] = 1;
  v10 = 3398;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  if (!avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B03C8], dCopy, 1))
  {
    avas::client::SessionCoreLegacy_iOS::initializeAVOutputContextObject(sessionCore, dCopy);
  }

  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (id)hostProcessAttribution
{
  v7[0] = 1;
  v8 = 3399;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCore::GetPropertyAVAS_DefaultToZero<NSArray * {__strong}>([(AVAudioSession *)self sessionCore], @"AS_HostProcessAttribution");
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  avas::ScopedTrace::~ScopedTrace(v7);

  return v5;
}

- (BOOL)setHostProcessAttribution:(id)attribution error:(id *)error
{
  attributionCopy = attribution;
  v8[0] = 1;
  v9 = 3400;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  avas::client::SessionCore::SetProperty([(AVAudioSession *)self sessionCore], @"AS_HostProcessAttribution", attributionCopy, 0);
  v6 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v8);

  return v6;
}

- (BOOL)selectIndependentRoutingContext:(id *)context
{
  v6[0] = 1;
  v7 = 3401;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  LOBYTE(context) = [(AVAudioSession *)self privateSetRouteSharingPolicy:2 error:context];
  avas::ScopedTrace::~ScopedTrace(v6);
  return context;
}

- (BOOL)overrideOutputAudioPort:(AVAudioSessionPortOverride)portOverride error:(NSError *)outError
{
  v10[0] = 1;
  v11 = 3082;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  if (portOverride == AVAudioSessionPortOverrideSpeaker)
  {
    v6 = @"Speaker";
  }

  else
  {
    v6 = 0;
  }

  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0180], v6, 1);
  v8 = FormatNSErrorForReturn();
  if (v8)
  {
    avas::client::KVOManager::markPropertiesDirty(sessionCore[5], 40);
  }

  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setPreferredInput:(AVAudioSessionPortDescription *)inPort error:(NSError *)outError
{
  v5 = inPort;
  v8[0] = 1;
  v9 = 3083;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  avas::client::SessionCoreLegacy_iOS::setPreferredInputPort([(AVAudioSession *)self sessionCore], v5);
  v6 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v8);

  return v6;
}

- (AVAudioSessionPortDescription)preferredInput
{
  v5[0] = 1;
  v6 = 3084;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCoreLegacy_iOS::preferredInputPort([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (id)activeAudioRoute
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69AFC38]);

  return v3;
}

- (BOOL)setSupportsMultichannelContent:(BOOL)inValue error:(NSError *)outError
{
  v4 = inValue;
  v11[0] = 1;
  v12 = 3126;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  v6 = MEMORY[0x1E69B06B8];
  if (!v4)
  {
    v6 = MEMORY[0x1E69B06C0];
  }

  v7 = *v6;
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFD40], v7, 1);
  v9 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v11);
  return v9;
}

- (BOOL)supportsMultichannelContent
{
  v19 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3127;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69AFD40]);
  v5 = v4;
  if (v4)
  {
    v6 = [v4 isEqualToString:*MEMORY[0x1E69B06C0]] ^ 1;
  }

  else
  {
    v7 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v16 = "AVAudioSession_iOS.mm";
      v17 = 1024;
      v18 = 2710;
      _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_ERROR, "%25s:%-5d Get supportsMultichannelContent failed", buf, 0x12u);
    }

    LOBYTE(v6) = 0;
  }

  avas::ScopedTrace::~ScopedTrace(v9);
  return v6;
}

- (BOOL)setPrefersInterruptionOnRouteDisconnect:(BOOL)inValue error:(NSError *)outError
{
  v4 = inValue;
  v8[0] = 1;
  v9 = 3133;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  [(AVAudioSession *)self privateSetPrefersInterruptionOnRouteDisconnect:v4 core:[(AVAudioSession *)self sessionCore]];
  v6 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v8);
  return v6;
}

- (BOOL)prefersInterruptionOnRouteDisconnect
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3134;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B02D8], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setAudioClockDevice:(id)device error:(id *)error
{
  deviceCopy = device;
  v9[0] = 1;
  v10 = 3421;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFCC8], deviceCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (id)audioClockDevice
{
  v8[0] = 1;
  v9 = 3420;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v11 = 0;
  v12 = 0;
  v13 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69AFCC8]);
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F215EEF0;
  }

  avas::ScopedTrace::~ScopedTrace(v8);

  return v6;
}

- (double)siriSpeechDetectionDeviceSampleRate
{
  v6[0] = 1;
  v7 = 3379;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69AFE90], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (id)privateMakePreferredPersistentRouteDictWithInputUIDs:(id)ds outputUIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  if (dsCopy | iDsCopy)
  {
    v8 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
    v7 = v8;
    if (dsCopy)
    {
      [v8 setObject:dsCopy forKeyedSubscript:*MEMORY[0x1E69B05C0]];
    }

    if (iDsCopy)
    {
      [v7 setObject:iDsCopy forKeyedSubscript:*MEMORY[0x1E69B05C8]];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)privateReadPreferredPersistentRoute
{
  v6[0] = 1;
  v7 = 3445;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>(sessionCore, *MEMORY[0x1E69B0278]);
  avas::ScopedTrace::~ScopedTrace(v6);

  return v4;
}

- (BOOL)setPreferredPersistentInputUIDs:(id)ds outputUIDs:(id)iDs error:(id *)error
{
  dsCopy = ds;
  iDsCopy = iDs;
  v13[0] = 1;
  v14 = 3444;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  v9 = [(AVAudioSession *)self privateMakePreferredPersistentRouteDictWithInputUIDs:dsCopy outputUIDs:iDsCopy];
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0278], v9, 1);
  v11 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(v13);
  return v11;
}

- (id)preferredPersistentInputUIDs
{
  privateReadPreferredPersistentRoute = [(AVAudioSession *)self privateReadPreferredPersistentRoute];
  v3 = [privateReadPreferredPersistentRoute objectForKeyedSubscript:*MEMORY[0x1E69B05C0]];

  return v3;
}

- (id)preferredPersistentOutputUIDs
{
  privateReadPreferredPersistentRoute = [(AVAudioSession *)self privateReadPreferredPersistentRoute];
  v3 = [privateReadPreferredPersistentRoute objectForKeyedSubscript:*MEMORY[0x1E69B05C8]];

  return v3;
}

- (BOOL)setActivationContext:(id)context error:(id *)error
{
  contextCopy = context;
  v13[0] = 1;
  v14 = 3367;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  kdebug_trace();
  if (avas::client::ValidateActivationContext(contextCopy, v6))
  {
    sessionCore = [(AVAudioSession *)self sessionCore];
    v8 = [contextCopy mutableCopy];
    v10 = avas::client::TranslateActivationContextForMX(v8, v9);
    avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFC30], v10, 1);

    if (FormatNSErrorForReturn())
    {
      avas::client::KVOManager::markPropertiesDirty(sessionCore[5], 12);
      v11 = 1;
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = FormatNSErrorForReturn();
  }

  avas::ScopedTrace::~ScopedTrace(v13);

  return v11;
}

- (BOOL)setDisallowedPorts:(id)ports error:(id *)error
{
  portsCopy = ports;
  v9[0] = 1;
  v10 = 3370;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFF58], portsCopy, 1);
  v7 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (BOOL)silenceOutput:(unint64_t)output error:(id *)error
{
  errorCopy = error;
  v33 = *MEMORY[0x1E69E9840];
  sessionCore = [(AVAudioSession *)self sessionCore];
  v18[0] = 1;
  v19 = 3376;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v21 = 0;
  v22 = 0;
  v23 = 0;
  kdebug_trace();
  v8 = avas::client::SessionCore::reporterID(sessionCore);
  avas::client::PerformanceTracker::PerformanceTracker(v17, "[AVAudioSession silenceOutput:error:]", v8, 1);
  avas::client::XPCConnection::sync_message<>(sessionCore[10], &v30);
  v9 = objc_autoreleasePoolPush();
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v30);
  opaqueSessionID2 = [(AVAudioSession *)self opaqueSessionID];
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v30);
  [v10 silenceOutput:opaqueSessionID2 options:output reply:v12];

  objc_autoreleasePoolPop(v9);
  v13 = v32;
  v14 = v13;
  if (v13)
  {
    v15 = *avas::client::gSessionClientLog(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v25 = "AVAudioSession_iOS.mm";
      v26 = 1024;
      v27 = 3009;
      v28 = 2112;
      v29 = v14;
      _os_log_impl(&dword_1AC8A4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Server returned an error: %@", buf, 0x1Cu);
    }

    [(avas::client *)v14 code];
    errorCopy = FormatNSErrorForReturn();
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v31);
  avas::client::PerformanceTracker::~PerformanceTracker(v17);
  avas::ScopedTrace::~ScopedTrace(v18);
  return (v14 == 0) | errorCopy & 1;
}

- (BOOL)isSessionInputMuted
{
  v7[0] = 1;
  v8 = 3377;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  {
    avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
  }

  if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
  {
    Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B00D8], 1);
  }

  else
  {
    Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, @"MuteSessionInputs", 0);
  }

  v5 = Property_DefaultTo;
  avas::ScopedTrace::~ScopedTrace(v7);
  return v5;
}

- (BOOL)muteSessionInput:(BOOL)input error:(id *)error
{
  inputCopy = input;
  v11[0] = 1;
  v12 = 3378;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:inputCopy];
  v8 = avas::client::SessionCore::SetProperty(sessionCore, @"MuteSessionInputs", v7, 0);

  if (!v8)
  {
    {
      avas::AudioSessionMuteEnabled(void)::enabled = _os_feature_enabled_impl();
    }

    if (avas::AudioSessionMuteEnabled(void)::enabled == 1)
    {
      avas::client::SessionCore::setIsSessionInputMutedCached(sessionCore, inputCopy);
    }
  }

  v9 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v11);
  return v9;
}

- (id)defaultChatMode
{
  v9[0] = 1;
  v10 = 3441;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(sessionCore, *MEMORY[0x1E69AFED0]);
  v5 = v4;
  if (v4)
  {
    v6 = TranslateMXModeToAVASModeString(v4);
  }

  else
  {
    v6 = @"AVAudioSessionModeDefault";
  }

  v7 = v6;

  avas::ScopedTrace::~ScopedTrace(v9);

  return v7;
}

- (BOOL)setDefaultChatMode:(id)mode error:(id *)error
{
  modeCopy = mode;
  v12[0] = 1;
  v13 = 3366;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  kdebug_trace();
  if (![modeCopy compare:@"AVAudioSessionModeVoiceChat"])
  {
    v9 = MEMORY[0x1E69AF988];
LABEL_11:
    v7 = *v9;
    sessionCore = [(AVAudioSession *)self sessionCore];
    avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFED0], v7, 1);
    v8 = FormatNSErrorForReturn();
    goto LABEL_12;
  }

  if (![modeCopy compare:@"AVAudioSessionModeGameChat"])
  {
    v9 = MEMORY[0x1E69AF848];
    goto LABEL_11;
  }

  if (![modeCopy compare:@"AVAudioSessionModeVideoChat"])
  {
    v9 = MEMORY[0x1E69AF950];
    goto LABEL_11;
  }

  if (![modeCopy compare:@"AVAudioSessionModeVideoChatForMedia"])
  {
    v9 = MEMORY[0x1E69AF960];
    goto LABEL_11;
  }

  if (error)
  {
    [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:-50 userInfo:0];
    v7 = 0;
    *error = v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

LABEL_12:

  avas::ScopedTrace::~ScopedTrace(v12);
  return v8;
}

- (BOOL)prefersNoInterruptionsFromSystemAlerts
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3086;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0308], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setPrefersNoInterruptionsFromSystemAlerts:(BOOL)inValue error:(NSError *)outError
{
  v4 = inValue;
  v10[0] = 1;
  v11 = 3085;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:v4];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0308], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setPreferredMicrophoneInjectionMode:(int64_t)mode error:(id *)error
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  avas::client::SessionCore::SetProperty(sessionCore, @"PreferredMicrophoneInjectionMode", v6, 0);

  return FormatNSErrorForReturn();
}

- (BOOL)isMicrophoneInjectionAvailable
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, @"MicrophoneInjectionIsEnabled", 0);
}

- (BOOL)isMicrophoneInjectionServiceEnabledByUser
{
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, @"MicrophoneInjectionIsAllowedByUser", 0);
}

- (BOOL)prefersNoDucking
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3358;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B02F0], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setPrefersNoDucking:(BOOL)ducking error:(id *)error
{
  duckingCopy = ducking;
  v10[0] = 1;
  v11 = 3359;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:duckingCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B02F0], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)needsHighPowerBudgeting
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3360;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0138], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setNeedsHighPowerBudgeting:(BOOL)budgeting error:(id *)error
{
  budgetingCopy = budgeting;
  v10[0] = 1;
  v11 = 3361;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:budgetingCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0138], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)participatesInVolumePolicy
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3362;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B04B0], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setParticipatesInVolumePolicy:(BOOL)policy error:(id *)error
{
  policyCopy = policy;
  v10[0] = 1;
  v11 = 3363;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:policyCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B04B0], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)prefersToVibeWhenVibrationsAreDisabled
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3364;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0358], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setPrefersToVibeWhenVibrationsAreDisabled:(BOOL)disabled error:(id *)error
{
  disabledCopy = disabled;
  v10[0] = 1;
  v11 = 3365;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:disabledCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0358], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (float)defaultCalibratedOutputSPL
{
  v6[0] = 1;
  v7 = 3435;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AFEC0], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (BOOL)clearInputPreferences:(id *)preferences
{
  v7[0] = 1;
  v8 = 3369;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFED8], MEMORY[0x1E695E0F0], 1);
  v5 = FormatNSErrorForReturn();
  if (v5)
  {
    avas::client::SessionCoreLegacy_iOS::setPreferredInputPort(sessionCore, 0);
  }

  avas::ScopedTrace::~ScopedTrace(v7);
  return v5;
}

- (BOOL)preferDecoupledIO:(BOOL)o error:(id *)error
{
  oCopy = o;
  v10[0] = 1;
  v11 = 3410;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:oCopy];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0218], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)setAggregatedIOPreference:(AVAudioSessionIOType)inIOType error:(NSError *)outError
{
  v10[0] = 1;
  v11 = 3125;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  aVAudioSessionIOTypeNotSpecified = [MEMORY[0x1E696AD98] numberWithBool:inIOType != AVAudioSessionIOTypeNotSpecified];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0388], aVAudioSessionIOTypeNotSpecified, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (BOOL)decoupledIO
{
  selfCopy = self;
  v5[0] = 1;
  v6 = 3411;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)selfCopy sessionCore];
  LOBYTE(selfCopy) = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B0080], 1);
  avas::ScopedTrace::~ScopedTrace(v5);
  return selfCopy;
}

- (BOOL)setPreferredInputSampleRate:(double)rate error:(id *)error
{
  v10[0] = 1;
  v11 = 3412;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0230], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (double)preferredInputSampleRate
{
  v6[0] = 1;
  v7 = 3414;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69B0230], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (BOOL)setPreferredOutputSampleRate:(double)rate error:(id *)error
{
  v10[0] = 1;
  v11 = 3413;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:rate];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0268], v7, 1);

  v8 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v10);
  return v8;
}

- (double)preferredOutputSampleRate
{
  v6[0] = 1;
  v7 = 3415;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<double>(sessionCore, *MEMORY[0x1E69B0268], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (double)inputSampleRate
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3416;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = sessionCore[5];
  v13[0] = &unk_1F215DA68;
  v13[1] = &sessionCore;
  v13[3] = v13;
  updated = avas::client::KVOProperty<double>::UpdateIfDirty(v3 + 584, v13);
  std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v7);
  return updated;
}

- (double)outputSampleRate
{
  v13[4] = *MEMORY[0x1E69E9840];
  v7[0] = 1;
  v8 = 3417;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v10 = 0;
  v11 = 0;
  v12 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = sessionCore[5];
  v13[0] = &unk_1F215DAB0;
  v13[1] = &sessionCore;
  v13[3] = v13;
  updated = avas::client::KVOProperty<double>::UpdateIfDirty(v3 + 632, v13);
  std::__function::__value_func<double ()(void)>::~__value_func[abi:ne200100](v13);
  avas::ScopedTrace::~ScopedTrace(v7);
  return updated;
}

- (BOOL)setSpeakerThermalGain:(float)gain error:(id *)error
{
  v11[0] = 1;
  v12 = 3406;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  *&v7 = gain;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AEE20], v8, 1);

  v9 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v11);
  return v9;
}

- (BOOL)setHapticThermalGain:(float)gain error:(id *)error
{
  v11[0] = 1;
  v12 = 3408;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  *&v7 = gain;
  v8 = [MEMORY[0x1E696AD98] numberWithFloat:v7];
  avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AEE10], v8, 1);

  v9 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v11);
  return v9;
}

- (float)speakerThermalGain
{
  v6[0] = 1;
  v7 = 3407;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AEE20], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (float)hapticThermalGain
{
  v6[0] = 1;
  v7 = 3409;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<float>(sessionCore, *MEMORY[0x1E69AEE10], 1);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (BOOL)privateSetPrefersInterruptionOnRouteDisconnect:(BOOL)disconnect core:(const void *)core
{
  v5 = *MEMORY[0x1E69B02D8];
  v6 = [MEMORY[0x1E696AD98] numberWithBool:disconnect];
  LOBYTE(core) = avas::client::SessionCore::SetProperty(core, v5, v6, 1) != 0;

  return core;
}

- (BOOL)enableNotifications:(BOOL)notifications error:(id *)error
{
  notificationsCopy = notifications;
  v21 = *MEMORY[0x1E69E9840];
  v9[0] = 1;
  v10 = 3403;
  v11 = [(AVAudioSession *)self opaqueSessionID:notifications];
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = kdebug_trace();
  v7 = *avas::client::gSessionClientLog(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "AVAudioSession_iOS.mm";
    v17 = 1024;
    v18 = 3446;
    v19 = 1024;
    v20 = notificationsCopy;
    _os_log_impl(&dword_1AC8A4000, v7, OS_LOG_TYPE_DEFAULT, "%25s:%-5d enableNotifications: inValue = %d", buf, 0x18u);
  }

  avas::client::SessionCore::setAVASNotificationsEnabled([(AVAudioSession *)self sessionCore], notificationsCopy);
  avas::ScopedTrace::~ScopedTrace(v9);
  return 1;
}

- (BOOL)setPrefersMultichannelAudio:(BOOL)audio error:(id *)error
{
  audioCopy = audio;
  v27 = *MEMORY[0x1E69E9840];
  v15[0] = 1;
  v16 = 3404;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v18 = 0;
  v19 = 0;
  v20 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  v7 = atomic_load(sessionCore + 76);
  if ((v7 & 0x100) != 0 && audioCopy == v7)
  {
    v8 = *avas::client::gSessionClientLog(sessionCore);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "AVAudioSession_iOS.mm";
      v23 = 1024;
      v24 = 3458;
      v25 = 1024;
      v26 = audioCopy;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_DEFAULT, "%25s:%-5d prefersMultichannelAudio: inValue = %d matches cached value", buf, 0x18u);
    }
  }

  else
  {
    v9 = *avas::client::gSessionClientLog(sessionCore);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315650;
      v22 = "AVAudioSession_iOS.mm";
      v23 = 1024;
      v24 = 3461;
      v25 = 1024;
      v26 = audioCopy;
      _os_log_impl(&dword_1AC8A4000, v9, OS_LOG_TYPE_DEFAULT, "%25s:%-5d prefersMultichannelAudio: inValue = %d", buf, 0x18u);
    }

    sessionCore2 = [(AVAudioSession *)self sessionCore];
    v11 = [MEMORY[0x1E696AD98] numberWithBool:audioCopy];
    v12 = avas::client::SessionCore::SetProperty(sessionCore2, *MEMORY[0x1E69B02E0], v11, 1);

    if (!v12)
    {
      atomic_store(audioCopy | 0x100, sessionCore2 + 76);
    }
  }

  v13 = FormatNSErrorForReturn();
  avas::ScopedTrace::~ScopedTrace(v15);
  return v13;
}

- (BOOL)prefersMultichannelAudio
{
  v6[0] = 1;
  v7 = 3405;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v9 = 0;
  v10 = 0;
  v11 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  Property_DefaultTo = avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, *MEMORY[0x1E69B02E0], 1);
  atomic_store(Property_DefaultTo | 0x100, sessionCore + 76);
  avas::ScopedTrace::~ScopedTrace(v6);
  return Property_DefaultTo;
}

- (unint64_t)availableRouteControlOptions:(id *)options
{
  LOBYTE(v11) = 1;
  HIDWORD(v11) = 3452;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  avas::ScopedTrace::~ScopedTrace(&v11);
  sessionCore = [(AVAudioSession *)self sessionCore];
  v5 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>(sessionCore, *MEMORY[0x1E69AFD28]);
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:*MEMORY[0x1E69AFD30]];
    NSLog(&cfstr_Availableroute.isa, v7, v11, opaqueSessionID, v13, v14, v15);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (BOOL)setPreferredRouteControlConfig:(id)config error:(id *)error
{
  v23[1] = *MEMORY[0x1E69E9840];
  configCopy = config;
  LOBYTE(v20) = 1;
  HIDWORD(v20) = 3453;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  kdebug_trace();
  v6 = configCopy;
  routeControlOptions = [v6 routeControlOptions];
  constantOutputVolumeLeveldB = [v6 constantOutputVolumeLeveldB];

  if (routeControlOptions == 1)
  {
    v9 = 3;
  }

  else
  {
    v9 = 2;
  }

  if (constantOutputVolumeLeveldB)
  {
    v10 = v9;
  }

  else
  {
    v10 = routeControlOptions == 1;
  }

  v11 = *MEMORY[0x1E69B0288];
  v22 = v11;
  v12 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v10];
  v23[0] = v12;
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];

  sessionCore = [(AVAudioSession *)self sessionCore];
  if (!avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69B0280], v13, 1))
  {
    constantOutputVolumeLeveldB2 = [v6 constantOutputVolumeLeveldB];
    v16 = constantOutputVolumeLeveldB2 == 0;

    if (!v16)
    {
      constantOutputVolumeLeveldB3 = [v6 constantOutputVolumeLeveldB];
      avas::client::SessionCore::SetProperty(sessionCore, *MEMORY[0x1E69AFDE0], constantOutputVolumeLeveldB3, 1);
    }
  }

  v18 = FormatNSErrorForReturn();

  avas::ScopedTrace::~ScopedTrace(&v20);
  return v18;
}

- (id)privateGetRouteControlConfigWithDictionaryKey:(id)key withFeaturesKey:(id)featuresKey
{
  v26 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  featuresKeyCopy = featuresKey;
  sessionCore = [(AVAudioSession *)self sessionCore];
  v9 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSDictionary * {__strong}>(sessionCore, keyCopy);
  v10 = v9;
  if (!v9)
  {
    v16 = 0;
    goto LABEL_11;
  }

  v11 = [v9 objectForKeyedSubscript:featuresKeyCopy];
  v12 = objc_alloc_init(AVAudioSessionRouteControl);
  if (([(AVAudioSessionRouteControl *)v12 routeControlOptions]& 2) != 0)
  {
    avas::client::SessionCore::GetProperty(&v18, sessionCore, *MEMORY[0x1E69AFDE0], 1);
    if (v18)
    {
      v15 = *avas::client::gSessionClientLog(v14);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v21 = "AVAudioSession_iOS.mm";
        v22 = 1024;
        v23 = 3550;
        v24 = 1024;
        v25 = v18;
        _os_log_impl(&dword_1AC8A4000, v15, OS_LOG_TYPE_ERROR, "%25s:%-5d Reading ConstantOutputVolumeLeveldB failed with error: %d", buf, 0x18u);
      }

      v16 = 0;
      goto LABEL_10;
    }

    [(AVAudioSessionRouteControl *)v12 setConstantOutputVolumeLeveldB:v19];
  }

  v16 = v12;
LABEL_10:

LABEL_11:

  return v16;
}

- (id)preferredRouteControlConfig
{
  v5[0] = 1;
  v6 = 3455;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  avas::ScopedTrace::~ScopedTrace(v5);
  v3 = [(AVAudioSession *)self privateGetRouteControlConfigWithDictionaryKey:*MEMORY[0x1E69B0280] withFeaturesKey:*MEMORY[0x1E69B0288]];

  return v3;
}

- (id)routeControlConfig
{
  v5[0] = 1;
  v6 = 3454;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  avas::ScopedTrace::~ScopedTrace(v5);
  v3 = [(AVAudioSession *)self privateGetRouteControlConfigWithDictionaryKey:*MEMORY[0x1E69B0398] withFeaturesKey:*MEMORY[0x1E69B03A0]];

  return v3;
}

- (id)IOController
{
  v5[0] = 1;
  v6 = 3438;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCoreLegacy_iOS::ioController([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (id)decoupledInputIOController
{
  v5[0] = 1;
  v6 = 3439;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v8 = 0;
  v9 = 0;
  v10 = 0;
  kdebug_trace();
  v3 = avas::client::SessionCoreLegacy_iOS::decoupledIOController([(AVAudioSession *)self sessionCore]);
  avas::ScopedTrace::~ScopedTrace(v5);

  return v3;
}

- (id)spatialPreferences
{
  v20 = *MEMORY[0x1E69E9840];
  v10[0] = 1;
  v11 = 3440;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v13 = 0;
  v14 = 0;
  v15 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::XPCConnection::sync_message<AVAudioSessionSpatialPreferences * {__strong}>(sessionCore[10], &v16);
  v4 = objc_autoreleasePoolPush();
  v5 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},AVAudioSessionSpatialPreferences * {__strong}>::sync_proxy(&v16);
  v6 = avas::client::SessionCore::sessionID(sessionCore);
  v7 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},AVAudioSessionSpatialPreferences * {__strong}>::reply(&v16);
  [v5 getSpatialPreferencesForSession:v6 reply:v7];

  objc_autoreleasePoolPop(v4);
  if (v18)
  {
    v8 = 0;
  }

  else
  {
    v8 = v19;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<AVAudioSessionSpatialPreferences * {__strong}> &&)>::~__value_func[abi:ne200100](&v17);
  avas::ScopedTrace::~ScopedTrace(v10);

  return v8;
}

- (id)spatialPreferences:(int64_t)preferences
{
  v22 = *MEMORY[0x1E69E9840];
  v12[0] = 1;
  v13 = 3440;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::XPCConnection::sync_message<AVAudioSessionSpatialPreferences * {__strong}>(sessionCore[10], &v18);
  v6 = objc_autoreleasePoolPush();
  v7 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},AVAudioSessionSpatialPreferences * {__strong}>::sync_proxy(&v18);
  v8 = avas::client::SessionCore::sessionID(sessionCore);
  v9 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong},AVAudioSessionSpatialPreferences * {__strong}>::reply(&v18);
  [v7 getSpatialPreferencesForSession:v8 contentType:preferences reply:v9];

  objc_autoreleasePoolPop(v6);
  if (v20)
  {
    v10 = 0;
  }

  else
  {
    v10 = v21;
  }

  std::__function::__value_func<void ()(NSError *,std::tuple<AVAudioSessionSpatialPreferences * {__strong}> &&)>::~__value_func[abi:ne200100](&v19);
  avas::ScopedTrace::~ScopedTrace(v12);

  return v10;
}

- (BOOL)handleRemoteInterruption:(id)interruption postInterruptionNotification:(BOOL)notification error:(id *)error
{
  notificationCopy = notification;
  v25 = *MEMORY[0x1E69E9840];
  interruptionCopy = interruption;
  v16[0] = 1;
  v17 = 3442;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  kdebug_trace();
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::XPCConnection::sync_message<>(sessionCore[10], &v22);
  v9 = objc_autoreleasePoolPush();
  v10 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::sync_proxy(&v22);
  v11 = avas::client::SessionCore::sessionID(sessionCore);
  v12 = caulk::xpc::message<objc_object  {objcproto25SessionManagerXPCProtocol}* {__strong}>::reply(&v22);
  [v10 handleRemoteInterruption:v11 interruptionStatus:interruptionCopy postInterruptionNotification:notificationCopy reply:v12];

  objc_autoreleasePoolPop(v9);
  v13 = v24;
  v14 = v13;
  if (v13)
  {
    [v13 code];
    FormatNSErrorForReturn();
  }

  _ZNSt3__110__function12__value_funcIFvP7NSErrorONS_5tupleIJEEEEED2B8ne200100Ev(&v23);
  avas::ScopedTrace::~ScopedTrace(v16);

  return v14 == 0;
}

- (BOOL)isRelatedSession:(id)session
{
  sessionCopy = session;
  LODWORD(self) = [(AVAudioSession *)self sourceSessionID];
  LOBYTE(self) = self == [sessionCopy sourceSessionID];

  return self;
}

- (BOOL)isRelatedSessionID:(unsigned int)d
{
  v3 = *&d;
  sessionCore = [(AVAudioSession *)self sessionCore];

  return avas::client::SessionCore::isRelatedSessionID(sessionCore, v3);
}

- (BOOL)setPrefersEchoCancelledInput:(BOOL)input error:(id *)error
{
  inputCopy = input;
  sessionCore = [(AVAudioSession *)self sessionCore];
  v6 = *MEMORY[0x1E69B02C8];
  v7 = [MEMORY[0x1E696AD98] numberWithBool:inputCopy];
  avas::client::SessionCore::SetProperty(sessionCore, v6, v7, 1);

  return FormatNSErrorForReturn();
}

- (BOOL)prefersEchoCancelledInput
{
  v20 = *MEMORY[0x1E69E9840];
  sessionCore = [(AVAudioSession *)self sessionCore];
  avas::client::SessionCore::GetProperty(&v10, sessionCore, *MEMORY[0x1E69B02C8], 1);
  if (v10 || (v4 = v11) == 0)
  {
    v5 = *avas::client::gSessionClientLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = v10;
      opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
      *buf = 136315906;
      v13 = "AVAudioSession_iOS.mm";
      v14 = 1024;
      v15 = 4098;
      v16 = 1024;
      v17 = v6;
      v18 = 1024;
      v19 = opaqueSessionID;
      _os_log_impl(&dword_1AC8A4000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Failed to get prefersEchoCancelledInput, error: %d, session 0x%x", buf, 0x1Eu);
    }

    bOOLValue = 0;
  }

  else
  {
    bOOLValue = [v11 BOOLValue];
  }

  return bOOLValue;
}

- (BOOL)isEchoCancelledInputEnabled
{
  sessionCore = [(AVAudioSession *)self sessionCore];
  v3 = *MEMORY[0x1E69AFF78];

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, v3, 1);
}

- (BOOL)allowEnhanceDialogue
{
  {
    avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
  }

  v3 = avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled;
  sessionCore = [(AVAudioSession *)self sessionCore];
  if (v3 == 1)
  {
    v5 = *MEMORY[0x1E69AFC50];
    v6 = 1;
  }

  else
  {
    v5 = @"AllowEnhanceDialogue";
    v6 = 0;
  }

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, v5, v6);
}

- (BOOL)setAllowEnhanceDialogue:(BOOL)dialogue error:(id *)error
{
  dialogueCopy = dialogue;
  {
    avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
  }

  v6 = avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled;
  sessionCore = [(AVAudioSession *)self sessionCore];
  if (v6 == 1)
  {
    v8 = *MEMORY[0x1E69AFC50];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:dialogueCopy];
    avas::client::SessionCore::SetProperty(sessionCore, v8, v9, 1);
  }

  else
  {
    v9 = [MEMORY[0x1E696AD98] numberWithBool:dialogueCopy];
    avas::client::SessionCore::SetProperty(sessionCore, @"AllowEnhanceDialogue", v9, 0);
  }

  return FormatNSErrorForReturn();
}

- (BOOL)prefersEnhanceDialogue
{
  {
    avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
  }

  if (avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled != 1)
  {
    return 0;
  }

  sessionCore = [(AVAudioSession *)self sessionCore];
  v4 = *MEMORY[0x1E69B02D0];

  return avas::client::SessionCore::GetProperty_DefaultToZero<BOOL>(sessionCore, v4, 1);
}

- (BOOL)setPrefersEnhanceDialogue:(BOOL)dialogue error:(id *)error
{
  dialogueCopy = dialogue;
  {
    avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled = _os_feature_enabled_impl();
  }

  if (avas::EnhanceDialogueBriocheEnabled(void)::enhanceDialogueBriocheEnabled)
  {
    sessionCore = [(AVAudioSession *)self sessionCore];
    v8 = *MEMORY[0x1E69B02D0];
    v9 = [MEMORY[0x1E696AD98] numberWithBool:dialogueCopy];
    avas::client::SessionCore::SetProperty(sessionCore, v8, v9, 1);

    return FormatNSErrorForReturn();
  }

  else
  {

    return MEMORY[0x1EEDEEE78](error, a2);
  }
}

- (uint64_t)outputVolume
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D708;
  a2[1] = v2;
  return result;
}

- (uint64_t)promptStyle
{
  v1 = avas::client::SessionCore::GetPropertyMX_DefaultToZero<NSString * {__strong}>(**(self + 8), *MEMORY[0x1E69AEE28]);
  v2 = TranslateMXVoicePromptStyleToAVASVoicePromptStyle(v1);

  return v2;
}

- (uint64_t)audioFormats
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D798;
  a2[1] = v2;
  return result;
}

- (uint64_t)isPiPAvailable
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D7E0;
  a2[1] = v2;
  return result;
}

- (uint64_t)inputGain
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D828;
  a2[1] = v2;
  return result;
}

- (void)privateGetDataSources:core:
{

  operator delete(self);
}

- (id)privateGetDataSources:core:
{
  currentRoute = [*(self + 8) currentRoute];
  v3 = currentRoute;
  if (*(self + 16) == 1)
  {
    [currentRoute inputs];
  }

  else
  {
    [currentRoute outputs];
  }
  v4 = ;
  if ([v4 count])
  {
    v5 = [v4 objectAtIndex:0];
  }

  else
  {
    v5 = 0;
  }

  dataSources = [v5 dataSources];

  return dataSources;
}

- (uint64_t)isInputAvailable
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D8B8;
  a2[1] = v2;
  return result;
}

- (uint64_t)sampleRate
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D900;
  a2[1] = v2;
  return result;
}

- (uint64_t)IOBufferDuration
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D948;
  a2[1] = v2;
  return result;
}

- (uint64_t)speechDetectionStyle
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D990;
  a2[1] = v2;
  return result;
}

- (uint64_t)inputNumberOfChannels
{
  v2 = *(result + 8);
  *a2 = &unk_1F215D9D8;
  a2[1] = v2;
  return result;
}

- (uint64_t)outputNumberOfChannels
{
  v2 = *(result + 8);
  *a2 = &unk_1F215DA20;
  a2[1] = v2;
  return result;
}

- (uint64_t)inputSampleRate
{
  v2 = *(result + 8);
  *a2 = &unk_1F215DA68;
  a2[1] = v2;
  return result;
}

- (uint64_t)outputSampleRate
{
  v2 = *(result + 8);
  *a2 = &unk_1F215DAB0;
  a2[1] = v2;
  return result;
}

- (unint64_t)retainCount
{
  if (self->_impl && [(AVAudioSession *)self sessionType]== 1886546285)
  {
    return -1;
  }

  v4.receiver = self;
  v4.super_class = AVAudioSession;
  return [(AVAudioSession *)&v4 retainCount];
}

- (id)addObserverForType:(unint64_t)type name:(id)name block:(id)block
{
  nameCopy = name;
  blockCopy = block;
  v10 = avas::client::SessionCore::addObserverForType([(AVAudioSession *)self sessionCore], type, nameCopy, blockCopy);

  return v10;
}

- (void)removeObserverForType:(unint64_t)type observer:(id)observer name:(id)name
{
  observerCopy = observer;
  nameCopy = name;
  avas::client::SessionCore::removeObserverForType([(AVAudioSession *)self sessionCore], type, observerCopy, nameCopy);
}

- (id)getMXSessionProperty:(id)property error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  v11[0] = 1;
  v12 = 3426;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v7 = kdebug_trace();
  if (propertyCopy)
  {
    avas::client::SessionCore::GetPropertyMX_GenericPipe([(AVAudioSession *)self sessionCore], propertyCopy, buf);
    if (buf[8])
    {
      v8 = *buf;
    }

    else
    {
      v8 = 0;
      if (error)
      {
        *error = *buf;
      }
    }
  }

  else
  {
    v9 = *avas::client::gSessionClientLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "AVAudioSession_GenericPipe.mm";
      v18 = 1024;
      v19 = 66;
      _os_log_impl(&dword_1AC8A4000, v9, OS_LOG_TYPE_ERROR, "%25s:%-5d getMXSessionProperty: Invalid MXProperty provided", buf, 0x12u);
    }

    if (error)
    {
      [MEMORY[0x1E696ABC0] errorWithDomain:*MEMORY[0x1E696A768] code:2003329396 userInfo:0];
      *error = v8 = 0;
    }

    else
    {
      v8 = 0;
    }
  }

  avas::ScopedTrace::~ScopedTrace(v11);

  return v8;
}

- (BOOL)setMXSessionProperty:(id)property value:(id)value error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  propertyCopy = property;
  valueCopy = value;
  v16[0] = 1;
  v17 = 3427;
  opaqueSessionID = [(AVAudioSession *)self opaqueSessionID];
  v19 = 0;
  v20 = 0;
  v21 = 0;
  v9 = kdebug_trace();
  if (propertyCopy)
  {
    if (!valueCopy)
    {
      valueCopy = [MEMORY[0x1E695DFB0] null];
    }

    sessionCore = [(AVAudioSession *)self sessionCore];
    v22 = propertyCopy;
    v23 = valueCopy;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
    avas::client::SessionCore::SetBatchProperties(sessionCore, v11, 0, 2, 1, 1);

    v12 = FormatNSErrorForReturn();
  }

  else
  {
    v13 = *avas::client::gSessionClientLog(v9);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v25 = "AVAudioSession_GenericPipe.mm";
      v26 = 1024;
      v27 = 97;
      _os_log_impl(&dword_1AC8A4000, v13, OS_LOG_TYPE_ERROR, "%25s:%-5d setMXSessionProperty: Invalid MXProperty provided", buf, 0x12u);
    }

    v12 = FormatNSErrorForReturn();
  }

  v14 = v12;
  avas::ScopedTrace::~ScopedTrace(v16);

  return v14;
}

- (BOOL)setMXProperties:(id)properties propertyErrors:(id *)errors
{
  v22 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v7 = avas::client::SessionCore::SetBatchProperties([(AVAudioSession *)self sessionCore], propertiesCopy, errors, 2, 1, 1);
    v8 = v7;
    if (!v7)
    {
      v14 = 1;
      goto LABEL_10;
    }

    v9 = *avas::client::gSessionClientLog(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315650;
      v17 = "AVAudioSession_GenericPipe.mm";
      v18 = 1024;
      v19 = 125;
      v20 = 1024;
      v21 = v8;
      v10 = "%25s:%-5d setProperties failed with code: %d";
      v11 = v9;
      v12 = 24;
LABEL_7:
      _os_log_impl(&dword_1AC8A4000, v11, OS_LOG_TYPE_ERROR, v10, &v16, v12);
    }
  }

  else
  {
    v13 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "AVAudioSession_GenericPipe.mm";
      v18 = 1024;
      v19 = 113;
      v10 = "%25s:%-5d Invalid propertiesDictionary";
      v11 = v13;
      v12 = 18;
      goto LABEL_7;
    }
  }

  v14 = 0;
LABEL_10:

  return v14;
}

- (id)getMXProperties:(id)properties propertyErrors:(id *)errors
{
  v14 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v7 = avas::client::SessionCore::GetBatchPropertiesMX([(AVAudioSession *)self sessionCore], propertiesCopy, errors);
  }

  else
  {
    v8 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AVAudioSession_GenericPipe.mm";
      v12 = 1024;
      v13 = 136;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid mxProperties", &v10, 0x12u);
    }

    v7 = MEMORY[0x1E695E0F8];
  }

  return v7;
}

- (BOOL)setAudioIOProperties:(id)properties propertyErrors:(id *)errors
{
  v14 = *MEMORY[0x1E69E9840];
  propertiesCopy = properties;
  if (propertiesCopy)
  {
    v7 = avas::client::SessionCore::SetAudioIOProperties([(AVAudioSession *)self sessionCore], propertiesCopy, errors) == 0;
  }

  else
  {
    v8 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = 136315394;
      v11 = "AVAudioSession_GenericPipe.mm";
      v12 = 1024;
      v13 = 156;
      _os_log_impl(&dword_1AC8A4000, v8, OS_LOG_TYPE_ERROR, "%25s:%-5d Invalid input for setting AudioIOProperties", &v10, 0x12u);
    }

    v7 = 0;
  }

  return v7;
}

- (id)getAllSessionInformation
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = avas::client::SessionCore::GetPropertyAVAS_DefaultToZero<NSArray * {__strong}>([(AVAudioSession *)self sessionCore], @"AllSessionInformation");
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v5 = *avas::client::gSessionClientLog(0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = 136315394;
      v8 = "AVAudioSession_AudioHUD.mm";
      v9 = 1024;
      v10 = 23;
      _os_log_impl(&dword_1AC8A4000, v5, OS_LOG_TYPE_ERROR, "%25s:%-5d Retrieving session information failed", &v7, 0x12u);
    }

    v4 = MEMORY[0x1E695E0F0];
  }

  return v4;
}

@end