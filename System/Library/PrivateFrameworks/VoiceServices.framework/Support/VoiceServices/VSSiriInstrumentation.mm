@interface VSSiriInstrumentation
+ (id)sharedPowerLogger;
+ (int)outputRouteFromRouteInfo:(id)info;
+ (int)schemaFootprintFromFootprint:(int64_t)footprint;
+ (int)schemaVoiceGenderFromGender:(int64_t)gender;
+ (int)schemaVoiceTypeFromType:(int64_t)type;
+ (int)synthesisSourceFromSource:(int64_t)source;
+ (void)instrumentPowerEvent:(id)event ttsId:(id)id;
+ (void)instrumentVoicedProcessStartedPowerEvent;
- (VSSiriInstrumentation)initWithSiriRequestId:(id)id;
- (void)instrumentRequestReceivedWithText:(id)text requestedVoiceType:(int64_t)type requestedVoiceFootprint:(int64_t)footprint isPrivate:(BOOL)private;
- (void)instrumentSpeechCancelled;
- (void)instrumentSpeechEndedWithAudioDuration:(double)duration synthesisLatency:(double)latency realTimeFactor:(double)factor promptCount:(unint64_t)count errorCode:(int64_t)code;
- (void)instrumentSpeechFailedWithErrorCodes:(id)codes;
- (void)instrumentSpeechStartedWithSource:(int64_t)source customerPerceivedLatency:(double)latency audioOutputRoute:(id)route voiceType:(int64_t)type voiceFootprint:(int64_t)footprint voiceVersion:(unint64_t)version resourceVersion:(unint64_t)resourceVersion isWhisper:(BOOL)self0;
- (void)instrumentVoiceFallbackOccurredWithVoice:(id)voice resource:(id)resource;
- (void)makeRequestLinkEvent;
@end

@implementation VSSiriInstrumentation

- (void)instrumentVoiceFallbackOccurredWithVoice:(id)voice resource:(id)resource
{
  v6 = MEMORY[0x277D5B1B8];
  resourceCopy = resource;
  voiceCopy = voice;
  v31 = objc_alloc_init(v6);
  v9 = objc_alloc_init(MEMORY[0x277D5ACB8]);
  [v31 setVoiceSettings:?];

  [voiceCopy gender];
  [VSSiriInstrumentation schemaVoiceGenderFromGender:?];
  voiceSettings = [v31 voiceSettings];
  [voiceSettings setVoiceGender:?];

  name = [voiceCopy name];
  voiceSettings2 = [v31 voiceSettings];
  [voiceSettings2 setVoiceName:?];

  v13 = MEMORY[0x277D5ACF0];
  languages = [voiceCopy languages];
  firstObject = [languages firstObject];
  [v13 convertLanguageCodeToSchemaLocale:?];
  voiceSettings3 = [v31 voiceSettings];
  [voiceSettings3 setVoiceAccent:?];

  v17 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v31 setContext:?];

  [voiceCopy type];
  [VSSiriInstrumentation schemaVoiceTypeFromType:?];
  context = [v31 context];
  [context setVoiceType:?];

  [voiceCopy footprint];
  [VSSiriInstrumentation schemaFootprintFromFootprint:?];
  context2 = [v31 context];
  [context2 setVoiceFootprint:?];

  contentVersion = [voiceCopy contentVersion];

  [contentVersion integerValue];
  context3 = [v31 context];
  [context3 setVoiceVersion:?];

  contentVersion2 = [resourceCopy contentVersion];

  [contentVersion2 integerValue];
  context4 = [v31 context];
  [context4 setResourceVersion:?];

  v24 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v24 setVoiceFallbackOccurred:?];
  v25 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v24 setEventMetadata:?];

  v26 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v28 = [v26 initWithNSUUID:?];
  eventMetadata = [v24 eventMetadata];
  [eventMetadata setTtsId:?];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];
}

- (void)instrumentSpeechCancelled
{
  v16 = objc_alloc_init(MEMORY[0x277D5B170]);
  [v16 setExists:?];
  v3 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v3 setCancelled:?];
  v4 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v6 = [v4 initWithNSUUID:?];
  [v3 setContextId:?];

  v7 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v7 setSpeechContext:?];
  v8 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v7 setEventMetadata:?];

  v9 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v11 = [v9 initWithNSUUID:?];
  eventMetadata = [v7 eventMetadata];
  [eventMetadata setTtsId:?];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];

  context = [MEMORY[0x277D5FAA0] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:"instrumentPowerEvent:ttsId:" ttsId:?];
}

- (void)instrumentSpeechFailedWithErrorCodes:(id)codes
{
  v4 = MEMORY[0x277D5B180];
  codesCopy = codes;
  v19 = objc_alloc_init(v4);
  [v19 setErrorCodes:?];

  v6 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v6 setFailed:?];
  v7 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v9 = [v7 initWithNSUUID:?];
  [v6 setContextId:?];

  v10 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v10 setSpeechContext:?];
  v11 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v10 setEventMetadata:?];

  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v14 = [v12 initWithNSUUID:?];
  eventMetadata = [v10 eventMetadata];
  [eventMetadata setTtsId:?];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];

  context = [MEMORY[0x277D5FAB0] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:"instrumentPowerEvent:ttsId:" ttsId:?];
}

- (void)instrumentSpeechEndedWithAudioDuration:(double)duration synthesisLatency:(double)latency realTimeFactor:(double)factor promptCount:(unint64_t)count errorCode:(int64_t)code
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = objc_alloc_init(MEMORY[0x277D5B178]);
  [v8 setSynthesizedAudioDurationInSecond:?];
  [v8 setSynthesisLatencyInSecond:?];
  [v8 setSynthesisRealTimeFactor:?];
  [v8 setPromptCount:?];
  v9 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:v24];
  [v8 setErrorCodes:?];

  v11 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v11 setEnded:?];
  v12 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v14 = [v12 initWithNSUUID:?];
  [v11 setContextId:?];

  v15 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v15 setSpeechContext:?];
  v16 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v15 setEventMetadata:?];

  v17 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v19 = [v17 initWithNSUUID:?];
  eventMetadata = [v15 eventMetadata];
  [eventMetadata setTtsId:?];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];

  context = [MEMORY[0x277D5FAA8] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:"instrumentPowerEvent:ttsId:" ttsId:?];
}

- (void)instrumentSpeechStartedWithSource:(int64_t)source customerPerceivedLatency:(double)latency audioOutputRoute:(id)route voiceType:(int64_t)type voiceFootprint:(int64_t)footprint voiceVersion:(unint64_t)version resourceVersion:(unint64_t)resourceVersion isWhisper:(BOOL)self0
{
  v11 = MEMORY[0x277D5B188];
  routeCopy = route;
  v31 = objc_alloc_init(v11);
  [VSSiriInstrumentation outputRouteFromRouteInfo:?];

  [v31 setAudioOutputRoute:?];
  [v31 setCustomerPerceivedLatencyInSecond:?];
  [VSSiriInstrumentation synthesisSourceFromSource:?];
  [v31 setSynthesisSource:?];
  v13 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v31 setVoiceContext:?];

  [VSSiriInstrumentation schemaVoiceTypeFromType:?];
  voiceContext = [v31 voiceContext];
  [voiceContext setVoiceType:?];

  [VSSiriInstrumentation schemaFootprintFromFootprint:?];
  voiceContext2 = [v31 voiceContext];
  [voiceContext2 setVoiceFootprint:?];

  voiceContext3 = [v31 voiceContext];
  [voiceContext3 setVoiceVersion:?];

  voiceContext4 = [v31 voiceContext];
  [voiceContext4 setResourceVersion:?];

  [v31 setSynthesisEffect:?];
  v18 = objc_alloc_init(MEMORY[0x277D5B150]);
  [v18 setStartedOrChanged:?];
  v19 = objc_alloc(MEMORY[0x277D5AC78]);
  contextId = [(VSSiriInstrumentation *)self contextId];
  v21 = [v19 initWithNSUUID:?];
  [v18 setContextId:?];

  v22 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v22 setSpeechContext:?];
  v23 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v22 setEventMetadata:?];

  v24 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v26 = [v24 initWithNSUUID:?];
  eventMetadata = [v22 eventMetadata];
  [eventMetadata setTtsId:?];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];

  context = [MEMORY[0x277D5FAB8] context];
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:"instrumentPowerEvent:ttsId:" ttsId:?];
}

- (void)instrumentRequestReceivedWithText:(id)text requestedVoiceType:(int64_t)type requestedVoiceFootprint:(int64_t)footprint isPrivate:(BOOL)private
{
  textCopy = text;
  v8 = objc_alloc_init(MEMORY[0x277D5B168]);
  v9 = v8;
  if (!private)
  {
    [v8 setTextToSynthesize:?];
  }

  v10 = objc_alloc(MEMORY[0x277D5AC78]);
  uUID = [MEMORY[0x277CCAD78] UUID];
  v12 = [v10 initWithNSUUID:?];
  [v9 setLinkId:?];

  v13 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v13 setRequestReceivedTier1:?];
  v14 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v13 setEventMetadata:?];

  v15 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId = [(VSSiriInstrumentation *)self ttsId];
  v17 = [v15 initWithNSUUID:?];
  eventMetadata = [v13 eventMetadata];
  [eventMetadata setTtsId:?];

  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];

  v20 = objc_alloc_init(MEMORY[0x277D5B160]);
  linkId = [v9 linkId];
  [v20 setLinkId:?];

  v22 = objc_alloc_init(MEMORY[0x277D5B1B0]);
  [v20 setRequestedVoiceContext:?];

  [VSSiriInstrumentation schemaVoiceTypeFromType:?];
  requestedVoiceContext = [v20 requestedVoiceContext];
  [requestedVoiceContext setVoiceType:?];

  [VSSiriInstrumentation schemaFootprintFromFootprint:?];
  requestedVoiceContext2 = [v20 requestedVoiceContext];
  [requestedVoiceContext2 setVoiceFootprint:?];

  [textCopy length];
  [v20 setInputTextLength:?];
  v25 = objc_alloc_init(MEMORY[0x277D5B140]);
  [v25 setRequestReceived:?];
  v26 = objc_alloc_init(MEMORY[0x277D5B148]);
  [v25 setEventMetadata:?];

  v27 = objc_alloc(MEMORY[0x277D5AC78]);
  ttsId2 = [(VSSiriInstrumentation *)self ttsId];
  v29 = [v27 initWithNSUUID:?];
  eventMetadata2 = [v25 eventMetadata];
  [eventMetadata2 setTtsId:?];

  mEMORY[0x277D552C0]2 = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0]2 emitMessage:?];

  context = [MEMORY[0x277D5FA98] context];
  ttsId3 = [(VSSiriInstrumentation *)self ttsId];
  [VSSiriInstrumentation instrumentPowerEvent:"instrumentPowerEvent:ttsId:" ttsId:?];
}

- (void)makeRequestLinkEvent
{
  v7 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:?];
  v2 = objc_alloc_init(MEMORY[0x277D5A9E0]);
  [v2 setUuid:?];
  [v2 setComponent:?];
  v3 = [objc_alloc(MEMORY[0x277D5AC78]) initWithNSUUID:?];
  v4 = objc_alloc_init(MEMORY[0x277D5A9E0]);
  [v4 setUuid:?];
  [v4 setComponent:?];
  v5 = objc_alloc_init(MEMORY[0x277D5A9D0]);
  [v5 setSource:?];
  [v5 setTarget:?];
  mEMORY[0x277D552C0] = [MEMORY[0x277D552C0] sharedStream];
  [mEMORY[0x277D552C0] emitMessage:?];
}

- (VSSiriInstrumentation)initWithSiriRequestId:(id)id
{
  idCopy = id;
  v15.receiver = self;
  v15.super_class = VSSiriInstrumentation;
  v6 = [(VSSiriInstrumentation *)&v15 init];
  if (!v6)
  {
    goto LABEL_4;
  }

  v7 = [MEMORY[0x277D552C0] derivedIdentifierForComponentName:? fromSourceIdentifier:?];
  ttsId = v6->_ttsId;
  v6->_ttsId = v7;

  if (v6->_ttsId)
  {
    objc_storeStrong(&v6->_siriRequestId, id);
    uUID = [MEMORY[0x277CCAD78] UUID];
    contextId = v6->_contextId;
    v6->_contextId = uUID;

    [(VSSiriInstrumentation *)v6 makeRequestLinkEvent];
LABEL_4:
    v11 = v6;
    goto LABEL_8;
  }

  v12 = VSGetLogDefault();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *v14 = 0;
    _os_log_fault_impl(&dword_2727E4000, v12, OS_LOG_TYPE_FAULT, "AssistantSiriAnalytics should always derive an identifier for SISchemaComponentName_COMPONENTNAME_TTS", v14, 2u);
  }

  v11 = 0;
LABEL_8:

  return v11;
}

+ (void)instrumentPowerEvent:(id)event ttsId:(id)id
{
  idCopy = id;
  eventCopy = event;
  v8 = +[VSSiriInstrumentation sharedPowerLogger];
  captureSnapshot = [v8 captureSnapshot];
  [captureSnapshot logWithEventContext:? ttsIdentifier:?];
}

+ (void)instrumentVoicedProcessStartedPowerEvent
{
  v4 = +[VSSiriInstrumentation sharedPowerLogger];
  captureSnapshot = [v4 captureSnapshot];
  context = [MEMORY[0x277D5FA90] context];
  [captureSnapshot logWithEventContext:?];
}

+ (id)sharedPowerLogger
{
  if (sharedPowerLogger_once != -1)
  {
    dispatch_once(&sharedPowerLogger_once, &__block_literal_global_3556);
  }

  v3 = sharedPowerLogger_sharedInstance;

  return v3;
}

uint64_t __42__VSSiriInstrumentation_sharedPowerLogger__block_invoke()
{
  sharedPowerLogger_sharedInstance = [objc_alloc(MEMORY[0x277D5FA88]) initWithCurrentProcess];

  return MEMORY[0x2821F96F8]();
}

+ (int)synthesisSourceFromSource:(int64_t)source
{
  if (source > 8)
  {
    return 1;
  }

  else
  {
    return dword_272832734[source];
  }
}

+ (int)outputRouteFromRouteInfo:(id)info
{
  infoCopy = info;
  audioRouteName = [infoCopy audioRouteName];
  if ([audioRouteName isEqualToString:?])
  {
    v5 = 2;
  }

  else if ([audioRouteName isEqualToString:?])
  {
    v5 = 7;
  }

  else
  {
    isBluetoothRoute = [infoCopy isBluetoothRoute];
    isAppleProduct = [infoCopy isAppleProduct];
    v8 = isAppleProduct ^ 1;
    if (((isBluetoothRoute ^ 1) & 1) != 0 || v8)
    {
      v9 = isBluetoothRoute | v8;
      if ((isBluetoothRoute | isAppleProduct))
      {
        v10 = 1;
      }

      else
      {
        v10 = 6;
      }

      if (v9)
      {
        v11 = v10;
      }

      else
      {
        v11 = 5;
      }

      if ((isBluetoothRoute ^ 1 | isAppleProduct))
      {
        v5 = v11;
      }

      else
      {
        v5 = 4;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  return v5;
}

+ (int)schemaFootprintFromFootprint:(int64_t)footprint
{
  if ((footprint - 1) >= 3)
  {
    return 1;
  }

  else
  {
    return footprint + 1;
  }
}

+ (int)schemaVoiceTypeFromType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return 1;
  }

  else
  {
    return dword_2728326C0[type - 1];
  }
}

+ (int)schemaVoiceGenderFromGender:(int64_t)gender
{
  if ((gender - 1) > 2)
  {
    return 0;
  }

  else
  {
    return dword_272832728[gender - 1];
  }
}

@end