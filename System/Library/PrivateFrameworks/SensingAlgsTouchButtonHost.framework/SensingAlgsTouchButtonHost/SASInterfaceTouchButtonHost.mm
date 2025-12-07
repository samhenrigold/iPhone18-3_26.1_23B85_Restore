@interface SASInterfaceTouchButtonHost
- (BOOL)fullPressEngaged:(BOOL)engaged timestamp:(unint64_t)timestamp;
- (BOOL)handleInputStream:(id)stream;
- (BOOL)injectAlgsProperty:(id)property;
- (BOOL)injectProperty:(id)property value:(id)value;
- (BOOL)runAlgs:(void *)algs timestamp:(unint64_t)timestamp;
- (SASInterfaceTouchButtonHost)initWithStreamSize:(unint64_t)size platformId:(unint64_t)id streamCallback:(id)callback;
- (id)extractAlgsState:(id)state;
- (id)generateNovaEvent:(const TouchSensitiveButtonEventPacket *)event force_stage_event:(const ForceStageEventPacket *)force_stage_event;
- (id)getProperty:(id)property;
- (unint64_t)timestampAbsoluteMachToUs:(unint64_t)us;
- (unint64_t)timestampUsToContinuousMach:(unint64_t)mach;
- (void)addVersion:(id)version;
- (void)callConfigurationCallback:(unint64_t)callback;
- (void)callEventCallback;
- (void)callResetRequestCallback:(unsigned __int16)callback arg_ptr:(const void *)arg_ptr;
- (void)callStreamCallback:(unint64_t)callback;
- (void)cleanup;
- (void)cleanupExtractions;
- (void)configureCallbacks;
- (void)defaultStreamingConfiguration;
- (void)initProperties;
- (void)processDoubleHalfPressResults:(const _SADynamicArrayDescriptor *)results results:(const BOOL *)a4;
- (void)sendNovaCAEvents:(const NovaCoreAnalytics *)events;
- (void)sendNovaHostCAEvents:(const NovaHostCoreAnalytics *)events;
- (void)setActive:(BOOL)active;
@end

@implementation SASInterfaceTouchButtonHost

- (SASInterfaceTouchButtonHost)initWithStreamSize:(unint64_t)size platformId:(unint64_t)id streamCallback:(id)callback
{
  callbackCopy = callback;
  v16.receiver = self;
  v16.super_class = SASInterfaceTouchButtonHost;
  v8 = [(SASInterfaceTouchButtonHost *)&v16 init];
  if (v8)
  {
    v9 = [MEMORY[0x277CBEB28] dataWithLength:size];
    outputBuffer = v8->_outputBuffer;
    v8->_outputBuffer = v9;

    v11 = [MEMORY[0x277CBEB28] dataWithLength:size];
    inputBuffer = v8->_inputBuffer;
    v8->_inputBuffer = v11;

    *[(NSMutableData *)v8->_outputBuffer mutableBytes]= 90;
    v13 = MEMORY[0x266759060](callbackCopy);
    streamCallback = v8->_streamCallback;
    v8->_streamCallback = v13;

    OUTLINED_FUNCTION_11();
    operator new();
  }

  return 0;
}

- (void)initProperties
{
  v33 = *MEMORY[0x277D85DE8];
  v25[0] = @"WorkNodeId";
  v25[1] = @"DataNodeId";
  v26[0] = &unk_2876F9438;
  v26[1] = &unk_2876F9450;
  v25[2] = @"Type";
  v26[2] = &unk_2876F9468;
  v27[0] = @"MaybeStageEnabled";
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  v28 = [v16 mutableCopy];
  v27[1] = @"AccelerationEnabled";
  v23[0] = @"WorkNodeId";
  v23[1] = @"DataNodeId";
  v24[0] = &unk_2876F9438;
  v24[1] = &unk_2876F9480;
  v23[2] = @"Type";
  v24[2] = &unk_2876F9468;
  v15 = v28;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  v29 = [v14 mutableCopy];
  v27[2] = @"ActiveMode";
  v21[0] = @"WorkNodeId";
  v21[1] = @"DataNodeId";
  v22[0] = &unk_2876F9498;
  v22[1] = &unk_2876F94B0;
  v21[2] = @"Type";
  v22[2] = &unk_2876F9468;
  v12 = v29;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  v11 = [v13 mutableCopy];
  v30 = v11;
  v27[3] = @"HalfPressThresholdModifier";
  v19[0] = @"WorkNodeId";
  v19[1] = @"DataNodeId";
  v20[0] = &unk_2876F94C8;
  v20[1] = &unk_2876F94E0;
  v19[2] = @"Type";
  v19[3] = @"IsExternalNode";
  v3 = MEMORY[0x277CBEC38];
  v20[2] = &unk_2876F94F8;
  v20[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:4];
  v5 = [v4 mutableCopy];
  v31 = v5;
  v27[4] = @"NovaCaseAttachState";
  v17[0] = @"WorkNodeId";
  v17[1] = @"DataNodeId";
  v18[0] = &unk_2876F94C8;
  v18[1] = &unk_2876F9510;
  v17[2] = @"Type";
  v17[3] = @"IsExternalNode";
  v18[2] = &unk_2876F9468;
  v18[3] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
  v7 = [v6 mutableCopy];
  v32 = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:v27 count:5];
  v9 = [v8 mutableCopy];
  propertyDatabase = self->_propertyDatabase;
  self->_propertyDatabase = v9;
}

- (BOOL)handleInputStream:(id)stream
{
  v46 = *MEMORY[0x277D85DE8];
  streamCopy = stream;
  caseConnected = [(SACaseConnectionInfoProvider *)self->_caseConnectionInfoProvider caseConnected];
  if (self->_caseAttached != caseConnected)
  {
    v8 = SALoggingGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(buf, caseConnected);
      _os_log_impl(&dword_2655CA000, v8, OS_LOG_TYPE_DEFAULT, "[SASInterfaceTouchButtonHost] updating case attach state to %d", buf, 8u);
    }

    v3 = [MEMORY[0x277CCABB0] numberWithBool:caseConnected];
    [(SASInterfaceTouchButtonHost *)self injectProperty:@"NovaCaseAttachState" value:v3];

    self->_caseAttached = caseConnected;
  }

  v9 = streamCopy;
  bytes = [streamCopy bytes];
  if (![streamCopy length] || *bytes != 90)
  {
    v11 = 1;
    goto LABEL_10;
  }

  StreamingParser::StreamingParser(buf, (bytes + 1), [streamCopy length] - 1, 0);
  if (v45 <= 1)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_6();
  if (!v14 || v13[1] != 1 || !self->_active)
  {
    v38 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_18;
  }

  [(SASInterfaceTouchButtonHost *)self cleanup];
  v13 = v44;
  v38 = 0;
  v39 = 0;
  v40 = 0;
  if (v45 >= 2)
  {
LABEL_18:
    if (*v13 == 1 && v13[1] == 2)
    {
      StreamingParser::parseRun(buf, &v38, 0, 0);
      if (v38 == 0x2000)
      {
        LODWORD(v3) = *(v40 + 8);
        v4 = *(v40 + 16);
        self->_lastFrameId = v3;
      }
    }
  }

LABEL_22:
  v37 = 0;
  v36 = [(NSMutableData *)self->_outputBuffer length]- 1;
  mutableBytes = [(NSMutableData *)self->_outputBuffer mutableBytes];
  v35 = 0;
  v34 = 0;
  v32 = 0;
  v33 = 0;
  mach_get_times();
  device = self->_device;
  v17 = streamCopy;
  v11 = AlgsDevice::handleInputStream(device, ([streamCopy bytes] + 1), objc_msgSend(streamCopy, "length") - 1, mutableBytes + 1, &v36, &v37, &v34, &v35);
  if (v45 >= 2)
  {
    OUTLINED_FUNCTION_6();
    if (v14)
    {
      if (*(v18 + 1) == 2)
      {
        v19 = SALoggingHIDEventSignpost();
        v20 = SALoggingHIDEventSignpost();
        v21 = os_signpost_id_generate(v20);

        if (v21 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v19))
        {
          __os_log_helper_16_0_3_8_2_8_0_4_0(v42, v33, v4, v3);
          _os_signpost_emit_with_name_impl(&dword_2655CA000, v19, OS_SIGNPOST_EVENT, v21, "HandleInputStream", "%{public, signpost.description:begin_time}llu timestamp:%llu frameId:%d ", v42, 0x1Cu);
        }
      }
    }
  }

  [(SASInterfaceTouchButtonHost *)self callStreamCallback:v36];
  [(SASInterfaceTouchButtonHost *)self callEventCallback];
  v22 = v37;
  if (v37 == 1)
  {
    [(SASInterfaceTouchButtonHost *)self callResetRequestCallback:v34 arg_ptr:v35];
    v22 = v37;
  }

  if (v22 == 2)
  {
    [(SASInterfaceTouchButtonHost *)self defaultStreamingConfiguration];
  }

  if (v45 >= 2)
  {
    OUTLINED_FUNCTION_6();
    if (v14)
    {
      if (*(v23 + 1) == 1)
      {
        [(SASInterfaceTouchButtonHost *)self configureCallbacks];
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v24 = self->_propertyDatabase;
        v25 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v28 objects:v41 count:16];
        if (v25)
        {
          v26 = *v29;
          do
          {
            for (i = 0; i < v25; ++i)
            {
              if (*v29 != v26)
              {
                objc_enumerationMutation(v24);
              }

              [(SASInterfaceTouchButtonHost *)self injectAlgsProperty:*(*(&v28 + 1) + 8 * i), v28];
            }

            v25 = [(NSMutableDictionary *)v24 countByEnumeratingWithState:&v28 objects:v41 count:16];
          }

          while (v25);
        }
      }
    }
  }

LABEL_10:

  return v11;
}

- (void)defaultStreamingConfiguration
{
  OUTLINED_FUNCTION_13();
  AlgDataExtractor::AlgDataExtractor(v3, 4);
  OUTLINED_FUNCTION_0_0();
  v11 = OUTLINED_FUNCTION_3(v4, v5, 0xF761B8249EC06F80, v6, v7, v8, v9, v10, v39, v40[0]);
  OUTLINED_FUNCTION_18(v11, v12, v13, v14);
  OUTLINED_FUNCTION_0_0();
  v22 = OUTLINED_FUNCTION_3(v15, v16, 0x5BF249159B57CEALL, v17, v18, v19, v20, v21, v39, v40[0]);
  OUTLINED_FUNCTION_18(v22, v23, v24, v25);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_18(v40, v26, v27, 1);
  OUTLINED_FUNCTION_0_0();
  v35 = OUTLINED_FUNCTION_3(v28, v29, 0xAF483000465377DCLL, v30, v31, v32, v33, v34, v39, v40[0]);
  OUTLINED_FUNCTION_18(v35, v36, v37, v38);
  v39 = [*(v2 + 64) length] - 1;
  AlgsDevice::configureStreaming(*(v2 + 88), 0, v40, ([*(v2 + 64) mutableBytes] + 1), &v39);
  [v2 callStreamCallback:v39];
  PacketCollection::~PacketCollection(v40);
}

- (void)callStreamCallback:(unint64_t)callback
{
  if (callback && self->_streamCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{callback + 1, 0}];
    (*(self->_streamCallback + 2))();
  }
}

- (void)configureCallbacks
{
  v12 = *self;
  [v12 setDoubleHalfPressEventsDescriptor:*(self + 40)];
  [v12 setDoubleHalfPressResults:*(self + 56)];
  doubleHalfPressEventsDescriptor = [v12 doubleHalfPressEventsDescriptor];
  v10 = [OUTLINED_FUNCTION_5(doubleHalfPressEventsDescriptor v3];
  [v13 processDoubleHalfPressResults:self results:v10];
}

- (void)callResetRequestCallback:(unsigned __int16)callback arg_ptr:(const void *)arg_ptr
{
  resetRequestCallback = self->_resetRequestCallback;
  if (resetRequestCallback)
  {
    if (callback == 1)
    {
      v5 = *arg_ptr;
    }

    else
    {
      v5 = 0;
    }

    resetRequestCallback[2](resetRequestCallback, v5);
  }
}

- (void)callEventCallback
{
  if (self->_eventCallback && self->_touchSensitiveButtonEvents && self->_touchSensitiveButtonEventsDescriptor && self->_forceStageEvents && self->_forceStageEventsDescriptor)
  {
    v3 = objc_opt_new();
    v4 = 0;
    v5 = 0;
    for (i = 0; i < self->_touchSensitiveButtonEventsDescriptor->var3; ++i)
    {
      v7 = [(SASInterfaceTouchButtonHost *)self generateNovaEvent:&self->_touchSensitiveButtonEvents[v4] force_stage_event:&self->_forceStageEvents[v5]];
      if (v7)
      {
        [v3 addObject:v7];
      }

      else
      {
        v8 = SALoggingGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_0_0(v9);
          _os_log_error_impl(&dword_2655CA000, v8, OS_LOG_TYPE_ERROR, "Error creating TouchSensitiveButton event!", v9, 2u);
        }
      }

      ++v5;
      ++v4;
    }

    (*(self->_eventCallback + 2))();
    [(SASInterfaceTouchButtonHost *)self cleanupExtractions];
  }

  else
  {

    [(SASInterfaceTouchButtonHost *)self cleanupExtractions];
  }
}

- (void)callConfigurationCallback:(unint64_t)callback
{
  if (callback && self->_configurationCallback)
  {
    v4 = [MEMORY[0x277CBEA90] dataWithBytesNoCopy:-[NSMutableData mutableBytes](self->_outputBuffer length:"mutableBytes") freeWhenDone:{callback, 0}];
    if (((*(self->_configurationCallback + 2))() & 1) == 0)
    {
      v5 = SALoggingGeneral();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        __os_log_helper_16_0_0(v12);
        OUTLINED_FUNCTION_16(&dword_2655CA000, v6, v7, "Error calling configuration callback", v8, v9, v10, v11);
      }
    }
  }
}

- (void)cleanupExtractions
{
  self->_touchSensitiveButtonEventsDescriptor = 0;
  self->_forceStageEventsDescriptor = 0;
  self->_touchSensitiveButtonEvents = 0;
  self->_forceStageEvents = 0;
}

- (id)generateNovaEvent:(const TouchSensitiveButtonEventPacket *)event force_stage_event:(const ForceStageEventPacket *)force_stage_event
{
  v25 = *MEMORY[0x277D85DE8];
  v7 = [(SASInterfaceTouchButtonHost *)self timestampUsToAbsoluteMach:event->var0];
  if (self->_touchSensitiveButtonEventsEnabled)
  {
    TouchSensitiveButtonEventWithRadius = IOHIDEventCreateTouchSensitiveButtonEventWithRadius();
    IOHIDEventSetPhase();
    ForceStageEvent = IOHIDEventCreateForceStageEvent();
    IOHIDEventSetPhase();
    [TouchSensitiveButtonEventWithRadius appendEvent:ForceStageEvent];
  }

  else
  {
    v10 = *&force_stage_event->var5;
    v21 = vcvtq_f64_f32(*&force_stage_event->var2);
    var1 = force_stage_event->var1;
    var4 = force_stage_event->var4;
    v23 = var1;
    v24 = 0x7FF8000000000000;
    var2 = event->var2;
    *buf = v10;
    LODWORD(v17) = 0;
    TouchSensitiveButtonEventWithRadius = [MEMORY[0x277CD2858] vendorDefinedEvent:v7 usagePage:self->_usagePage usage:self->_usage version:0 data:&var2 length:8 options:v17];
    LODWORD(v18) = 0;
    v12 = [MEMORY[0x277CD2858] vendorDefinedEvent:v7 usagePage:65280 usage:17 version:0 data:buf length:48 options:v18];
    IOHIDEventSetPhase();
    IOHIDEventSetPhase();
    [TouchSensitiveButtonEventWithRadius appendEvent:v12];
  }

  v13 = SALoggingHIDEventSignpost();
  v14 = SALoggingHIDEventSignpost();
  v15 = os_signpost_id_generate(v14);

  if (v15 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
  {
    __os_log_helper_16_0_7_8_2_8_0_8_0_4_0_4_0_4_0_4_0(buf, [(SASInterfaceTouchButtonHost *)self timestampUsToContinuousMach:event->var0], COERCE__INT64(event->var1), COERCE__INT64(event->var2), force_stage_event->var5, force_stage_event->var6, force_stage_event->var7, event->var6);
    _os_signpost_emit_with_name_impl(&dword_2655CA000, v13, OS_SIGNPOST_EVENT, v15, "GenerateTouchSensitiveButtonEvent", "%{public, signpost.description:begin_time}llu position=%3f positionDelta=%3f forceStage:%d forceTransition:%d phase:0x%x touching:%d", buf, 0x38u);
  }

  return TouchSensitiveButtonEventWithRadius;
}

- (unint64_t)timestampUsToContinuousMach:(unint64_t)mach
{
  HIDWORD(v4) = 1083129856;
  LODWORD(v3) = self->_timebase.numer;
  LODWORD(v4) = self->_timebase.denom;
  return (mach * 1000.0 * v4 / v3);
}

- (unint64_t)timestampAbsoluteMachToUs:(unint64_t)us
{
  OUTLINED_FUNCTION_7(self, a2, us, v3, v4, v5, v6, v7, v12, v14);
  LODWORD(v10) = *(v9 + 84);
  return (((v15 + v8 - v13) * *(v9 + 80)) / v10 / 1000.0);
}

- (void)cleanup
{
  [(SASInterfaceTouchButtonHost *)self injectProperty:@"ActiveMode" value:MEMORY[0x277CBEC28]];
  AlgDataInjector::AlgDataInjector(v12, 0);
  if (![(SASInterfaceTouchButtonHost *)self runAlgs:v12 timestamp:[(SASInterfaceTouchButtonHost *)self timestampAbsoluteMachToUs:mach_absolute_time()]])
  {
    v3 = SALoggingGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_0_0(&v11);
      OUTLINED_FUNCTION_16(&dword_2655CA000, v5, v6, "[SASInterfaceTouchButtonHost] Failed to run cleanup!", v7, v8, v9, v10);
    }
  }

  if (self->_active)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithBool:1];
    [(SASInterfaceTouchButtonHost *)self injectProperty:@"ActiveMode" value:v4];
  }

  PacketCollection::~PacketCollection(v12);
}

- (BOOL)injectProperty:(id)property value:(id)value
{
  v18 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  valueCopy = value;
  v8 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];
  v9 = v8;
  if (!v8)
  {
    if (([propertyCopy isEqualToString:@"SwitchPressedTimestamp"] & 1) != 0 || objc_msgSend(propertyCopy, "isEqualToString:", @"SwitchReleasedTimestamp"))
    {
      v11 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        isKindOfClass = -[SASInterfaceTouchButtonHost fullPressEngaged:timestamp:](self, "fullPressEngaged:timestamp:", [propertyCopy isEqualToString:@"SwitchPressedTimestamp"], objc_msgSend(v11, "unsignedLongLongValue"));
      }

      else
      {
        isKindOfClass = 0;
      }

LABEL_8:

      goto LABEL_9;
    }

    if ([propertyCopy isEqualToString:@"CameraButtonScanActive"])
    {
      v11 = valueCopy;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if (isKindOfClass)
      {
        -[SASInterfaceTouchButtonHost setActive:](self, "setActive:", [v11 BOOLValue]);
      }

      goto LABEL_8;
    }

    if ([propertyCopy isEqualToString:@"PrimaryUsagePage"])
    {
      v13 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntValue = [v13 unsignedIntValue];
        v15 = 12;
LABEL_19:
        *(&self->super.isa + v15) = unsignedIntValue;

        v16 = SALoggingGeneral();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_2_2_8_64_8_64(v17, propertyCopy, valueCopy);
          _os_log_impl(&dword_2655CA000, v16, OS_LOG_TYPE_DEFAULT, "[SASInterfaceTouchButtonHost] Injected property: %@ : %@", v17, 0x16u);
        }

        goto LABEL_22;
      }
    }

    else
    {
      if (![propertyCopy isEqualToString:@"PrimaryUsage"])
      {
LABEL_22:
        isKindOfClass = 1;
        goto LABEL_9;
      }

      v13 = valueCopy;
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        unsignedIntValue = [v13 unsignedIntValue];
        v15 = 14;
        goto LABEL_19;
      }
    }

    isKindOfClass = 0;
    goto LABEL_9;
  }

  [v8 setObject:valueCopy forKeyedSubscript:@"Value"];
  isKindOfClass = [(SASInterfaceTouchButtonHost *)self injectAlgsProperty:propertyCopy];
LABEL_9:

  return isKindOfClass & 1;
}

- (id)getProperty:(id)property
{
  propertyCopy = property;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];

  if (v5)
  {
    v6 = [(SASInterfaceTouchButtonHost *)self extractAlgsState:propertyCopy];
LABEL_7:
    v7 = v6;
    goto LABEL_8;
  }

  if ([propertyCopy isEqualToString:@"ForceStages"])
  {
    v6 = self->_forceStages;
    goto LABEL_7;
  }

  if ([propertyCopy isEqualToString:@"CameraButtonScanActive"])
  {
    v6 = [MEMORY[0x277CCABB0] numberWithBool:self->_active];
    goto LABEL_7;
  }

  v7 = 0;
LABEL_8:

  return v7;
}

- (BOOL)fullPressEngaged:(BOOL)engaged timestamp:(unint64_t)timestamp
{
  engagedCopy = engaged;
  selfCopy = self;
  v6 = [(SASInterfaceTouchButtonHost *)self timestampAbsoluteMachToUs:timestamp];
  v12 = engagedCopy;
  AlgDataInjector::AlgDataInjector(v11, 1);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_14();
  AlgDataPacket::AlgDataPacket(v10, v7, v8, 20480, 1, 1, &v12, 4, 0, 0);
  AlgDataInjector::add(v11, v10);
  AlgDataPacket::~AlgDataPacket(v10);
  LOBYTE(selfCopy) = [(SASInterfaceTouchButtonHost *)selfCopy runAlgs:v11 timestamp:v6];
  PacketCollection::~PacketCollection(v11);
  return selfCopy;
}

- (BOOL)runAlgs:(void *)algs timestamp:(unint64_t)timestamp
{
  lastFrameId = self->_lastFrameId;
  v11 = 0;
  timestampCopy = timestamp;
  v8[1] = 24;
  v8[0] = 0x2000;
  v8[2] = &timestampCopy2;
  timestampCopy2 = timestamp;
  v7 = [(NSMutableData *)self->_outputBuffer length]- 1;
  LOBYTE(algs) = (*(*self->_device + 24))(self->_device, v8, algs, [(NSMutableData *)self->_outputBuffer mutableBytes]+ 1, &v7);
  [(SASInterfaceTouchButtonHost *)self callStreamCallback:v7];
  [(SASInterfaceTouchButtonHost *)self callEventCallback];
  return algs;
}

- (BOOL)injectAlgsProperty:(id)property
{
  v44 = *MEMORY[0x277D85DE8];
  propertyCopy = property;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:propertyCopy];
  AlgDataInjector::AlgDataInjector(v40, 1);
  AlgDataExtractor::AlgDataExtractor(v39, 0);
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"WorkNodeId"];
    unsignedLongLongValue = [v6 unsignedLongLongValue];

    v8 = [v5 objectForKeyedSubscript:@"DataNodeId"];
    unsignedLongLongValue2 = [v8 unsignedLongLongValue];

    v10 = [v5 objectForKeyedSubscript:@"Type"];
    unsignedShortValue = [v10 unsignedShortValue];

    v12 = [v5 objectForKeyedSubscript:@"Value"];
    v13 = v12;
    if (v12)
    {
      switch(unsignedShortValue)
      {
        case 20480:
        case 20486:
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v43 = [v14 unsignedIntValue];
            v36 = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:4];
            v15 = 4;
            goto LABEL_14;
          }

          v23 = SALoggingGeneral();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v28 = objc_opt_class();
            v29 = NSStringFromClass(v28);
            __os_log_helper_16_2_2_8_64_4_0(v43, v29, unsignedShortValue);
            OUTLINED_FUNCTION_15(&dword_2655CA000, v30, v31, "[SASInterfaceTouchButtonHost] InjectProperty: unexpected id %@ for type 0x%x");
          }

          goto LABEL_27;
        case 20483:
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v43[0] = [v14 charValue];
            v36 = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:1];
            v15 = 1;
            goto LABEL_14;
          }

          v23 = SALoggingGeneral();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v32 = objc_opt_class();
            v33 = NSStringFromClass(v32);
            __os_log_helper_16_2_2_8_64_4_0(v43, v33, 20483);
            OUTLINED_FUNCTION_15(&dword_2655CA000, v34, v35, "[SASInterfaceTouchButtonHost] InjectProperty: unexpected id %@ for type 0x%x");
          }

LABEL_27:

          goto LABEL_28;
        case 20488:
          v14 = v12;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            *v43 = [v14 unsignedLongLongValue];
            v36 = [MEMORY[0x277CBEA90] dataWithBytes:v43 length:8];
            v15 = 8;
LABEL_14:

            v17 = v36;
            AlgDataPacket::AlgDataPacket(v43, unsignedLongLongValue, unsignedLongLongValue2, unsignedShortValue, 1, 1, [v36 bytes], v15, 0, 0);
            AlgDataInjector::add(v40, v43);
            v18 = [(NSMutableData *)self->_outputBuffer length]- 1;
            v38 = v18;
            mutableBytes = [(NSMutableData *)self->_outputBuffer mutableBytes];
            v20 = [v5 objectForKeyedSubscript:@"IsExternalNode"];
            bOOLValue = [v20 BOOLValue];

            if (bOOLValue)
            {
              StreamingWriter::StreamingWriter(buf, mutableBytes + 1, v18, 0);
              v16 = StreamingWriter::writeInjext(buf, 0, v40, 0, 0, 0);
              if (v16)
              {
                [(SASInterfaceTouchButtonHost *)self callConfigurationCallback:v42 + 1];
              }

              else
              {
                v24 = SALoggingGeneral();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  __os_log_helper_16_0_0(v37);
                  _os_log_error_impl(&dword_2655CA000, v24, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] failed to write injext data", v37, 2u);
                }
              }
            }

            else
            {
              v16 = (*(*self->_device + 32))(self->_device, v40, v39, mutableBytes + 1, &v38);
              [(SASInterfaceTouchButtonHost *)self callStreamCallback:v38];
            }

            v25 = SALoggingGeneral();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              if (v16)
              {
                v26 = "OK";
              }

              else
              {
                v26 = "Error";
              }

              __os_log_helper_16_2_6_8_64_4_0_8_0_8_0_8_64_8_32(buf, propertyCopy, bOOLValue, unsignedLongLongValue, unsignedLongLongValue2, v13, v26);
              _os_log_impl(&dword_2655CA000, v25, OS_LOG_TYPE_DEFAULT, "[SASInterfaceTouchButtonHost] InjectProperty: %@, External: %d, (%llu,%llu)=%@ result %s", buf, 0x3Au);
            }

            AlgDataPacket::~AlgDataPacket(v43);
          }

          else
          {

LABEL_28:
            LOBYTE(v16) = 0;
            v13 = v14;
          }

          break;
        default:
          v22 = SALoggingGeneral();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __os_log_helper_16_0_1_4_0(v43, unsignedShortValue);
            _os_log_error_impl(&dword_2655CA000, v22, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] InjectProperty: cannot handle type 0x%x", v43, 8u);
          }

          goto LABEL_8;
      }
    }

    else
    {
      LOBYTE(v16) = 1;
    }
  }

  else
  {
    v13 = SALoggingGeneral();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v43, propertyCopy);
      _os_log_error_impl(&dword_2655CA000, v13, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] InjectProperty: %@ key config not found", v43, 0xCu);
    }

LABEL_8:
    LOBYTE(v16) = 0;
  }

  PacketCollection::~PacketCollection(v39);
  PacketCollection::~PacketCollection(v40);

  return v16;
}

- (id)extractAlgsState:(id)state
{
  v73 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = [(NSMutableDictionary *)self->_propertyDatabase objectForKeyedSubscript:stateCopy];
  AlgDataInjector::AlgDataInjector(&v64, 0);
  AlgDataExtractor::AlgDataExtractor(&v55, 1);
  if (v5)
  {
    v6 = [v5 objectForKeyedSubscript:@"IsExternalNode"];
    bOOLValue = [v6 BOOLValue];

    if (bOOLValue)
    {
      v8 = [v5 objectForKeyedSubscript:@"Value"];
    }

    else
    {
      v10 = [v5 objectForKeyedSubscript:@"WorkNodeId"];
      unsignedLongLongValue = [v10 unsignedLongLongValue];

      v12 = [v5 objectForKeyedSubscript:@"DataNodeId"];
      unsignedLongLongValue2 = [v12 unsignedLongLongValue];

      v14 = [v5 objectForKeyedSubscript:@"Type"];
      unsignedShortValue = [v14 unsignedShortValue];

      AlgDataPacket::AlgDataPacket(v72, unsignedLongLongValue, unsignedLongLongValue2, unsignedShortValue, 2, 2, 0, 0, 0, 0);
      AlgDataExtractor::add(&v55, v72);
      v54 = 0;
      v16 = (*(*self->_device + 32))(self->_device, &v64, &v55, 0, &v54);
      if (v16)
      {
        switch(unsignedShortValue)
        {
          case 20480:
            v24 = [MEMORY[0x277CCABB0] numberWithBool:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19, v20, v21, v22, v23) + 56)}];
            break;
          case 20483:
            v24 = [MEMORY[0x277CCABB0] numberWithChar:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19, v20, v21, v22, v23) + 56)}];
            break;
          case 20486:
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19, v20, v21, v22, v23) + 56)}];
            break;
          case 20488:
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{**(OUTLINED_FUNCTION_17(v16, v17, v18, v19, v20, v21, v22, v23) + 56)}];
            break;
          default:
            v25 = SALoggingGeneral();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
            {
              __os_log_helper_16_0_1_4_0(buf, unsignedShortValue);
              _os_log_error_impl(&dword_2655CA000, v25, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] ExtractProperty: cannot handle type 0x%x", buf, 8u);
            }

            goto LABEL_19;
        }

        v8 = v24;
        v25 = SALoggingGeneral();
        v38 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
        if (v38)
        {
          v46 = OUTLINED_FUNCTION_10(v38, v39, v40, v41, v42, v43, v44, v45, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, buf[0]);
          __os_log_helper_16_2_4_8_64_8_0_8_0_8_64(v46, v47, v48, v49, v8);
          _os_log_impl(&dword_2655CA000, v25, OS_LOG_TYPE_INFO, "[SASInterfaceTouchButtonHost] ExtractProperty: %@, (%llu,%llu)=%@", buf, 0x2Au);
        }
      }

      else
      {
        v25 = SALoggingGeneral();
        v26 = os_log_type_enabled(v25, OS_LOG_TYPE_INFO);
        if (v26)
        {
          v34 = OUTLINED_FUNCTION_10(v26, v27, v28, v29, v30, v31, v32, v33, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, buf[0]);
          __os_log_helper_16_2_3_8_64_8_0_8_0(v34, v35, v36, v37);
          _os_log_impl(&dword_2655CA000, v25, OS_LOG_TYPE_INFO, "[SASInterfaceTouchButtonHost] ExtractProperty: %@, (%llu,%llu) extraction failed", buf, 0x20u);
        }

LABEL_19:
        v8 = 0;
      }

      AlgDataPacket::~AlgDataPacket(v72);
    }
  }

  else
  {
    v9 = SALoggingGeneral();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v72, stateCopy);
      _os_log_error_impl(&dword_2655CA000, v9, OS_LOG_TYPE_ERROR, "[SASInterfaceTouchButtonHost] ExtractProperty: %@ key config not found", v72, 0xCu);
    }

    v8 = 0;
  }

  PacketCollection::~PacketCollection(&v55);
  PacketCollection::~PacketCollection(&v64);

  return v8;
}

- (void)addVersion:(id)version
{
  versionCopy = version;
  [(NSMutableArray *)self->_versions addObject:?];
  AlgsDevice::addVersion(self->_device, [versionCopy UTF8String]);
}

- (void)setActive:(BOOL)active
{
  v6 = *MEMORY[0x277D85DE8];
  if (self->_active != active)
  {
    activeCopy = active;
    self->_active = active;
    if (active)
    {
      [(SASInterfaceTouchButtonHost *)self injectProperty:@"ActiveMode" value:MEMORY[0x277CBEC38]];
    }

    else
    {
      [(SASInterfaceTouchButtonHost *)self cleanup];
    }

    v4 = SALoggingGeneral();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      __os_log_helper_16_0_1_4_0(v5, activeCopy);
      _os_log_impl(&dword_2655CA000, v4, OS_LOG_TYPE_INFO, "[SASInterfaceTouchButtonHost] active state switched to: %d", v5, 8u);
    }
  }
}

- (void)sendNovaCAEvents:(const NovaCoreAnalytics *)events
{
  v74[2] = *MEMORY[0x277D85DE8];
  if (events)
  {
    coreAnalyticsCallback = self->_coreAnalyticsCallback;
    if (coreAnalyticsCallback)
    {
      if (events->var1)
      {
        v73[0] = @"PrimaryFreqResidency";
        *&v3 = events->var8;
        v6 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
        v74[0] = v6;
        v73[1] = @"NoiseLevel";
        *&v7 = events->var12;
        v8 = [MEMORY[0x277CCABB0] numberWithFloat:v7];
        v74[1] = v8;
        v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
        coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.TouchSensitiveButton.FreqResidencyNoiseLevel", v9);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v10, v11))
        {
          __os_log_helper_16_0_0(&v64);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v12, v13, "[SASInterfaceTouchButtonHost] CA FreqResidencyNoiseLevel event emitted", v14, v15, v16, v17);
        }
      }

      if (events->var2)
      {
        v71 = @"Full_Scale";
        *&v3 = events->var10;
        v18 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
        v72 = v18;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_2();
        v19 = OUTLINED_FUNCTION_8();
        v20(v19);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v21, v22))
        {
          __os_log_helper_16_0_0(&v64);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v23, v24, "[SASInterfaceTouchButtonHost] CA FS_Estimate event emitted", v25, v26, v27, v28);
        }
      }

      if (events->var3)
      {
        v69 = @"fingerPosition";
        *&v3 = events->var11;
        v29 = [MEMORY[0x277CCABB0] numberWithFloat:v3];
        v70 = v29;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v70 forKeys:&v69 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_2();
        v30 = OUTLINED_FUNCTION_8();
        v31(v30);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v32, v33))
        {
          __os_log_helper_16_0_0(&v64);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v34, v35, "[SASInterfaceTouchButtonHost] CA HalfPressPressed event emitted", v36, v37, v38, v39);
        }
      }

      if (events->var4)
      {
        v67 = @"EntryGestureType";
        v40 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:events->var5];
        v68 = v40;
        [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_2();
        v41 = OUTLINED_FUNCTION_8();
        v42(v41);

        SALoggingGeneral();
        objc_claimAutoreleasedReturnValue();
        OUTLINED_FUNCTION_9();
        if (os_log_type_enabled(v43, v44))
        {
          __os_log_helper_16_0_0(&v64);
          OUTLINED_FUNCTION_1(&dword_2655CA000, v45, v46, "[SASInterfaceTouchButtonHost] CA EntryGestureType event emitted", v47, v48, v49, v50);
        }
      }

      if (events->var6)
      {
        v65[0] = @"breakDueToBaselineRecapture";
        v51 = [MEMORY[0x277CCABB0] numberWithChar:?];
        v65[1] = @"FSEstimate";
        v66[0] = v51;
        *&v52 = events->var13;
        v53 = [MEMORY[0x277CCABB0] numberWithFloat:v52];
        v66[1] = v53;
        v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v66 forKeys:v65 count:2];
        v55 = OUTLINED_FUNCTION_8();
        v56(v55);

        v57 = SALoggingGeneral();
        if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
        {
          __os_log_helper_16_0_0(&v64);
          OUTLINED_FUNCTION_4(&dword_2655CA000, v58, v59, "[SASInterfaceTouchButtonHost] CA StuckTouchRecapture event emitted", v60, v61, v62, v63);
        }
      }
    }
  }
}

- (void)sendNovaHostCAEvents:(const NovaHostCoreAnalytics *)events
{
  v31[1] = *MEMORY[0x277D85DE8];
  if (events && self->_coreAnalyticsCallback)
  {
    if (events->var2)
    {
      v30 = @"EntryGestureType";
      v7 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:events->var3];
      v31[0] = v7;
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
      objc_claimAutoreleasedReturnValue();
      OUTLINED_FUNCTION_2();
      v8 = OUTLINED_FUNCTION_8();
      v9(v8);

      v10 = SALoggingGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_0(&v27);
        OUTLINED_FUNCTION_4(&dword_2655CA000, v11, v12, "[SASInterfaceTouchButtonHost] CA EntryGestureType event emitted", v13, v14, v15, v16);
      }
    }

    if (events->var1)
    {
      coreAnalyticsCallback = self->_coreAnalyticsCallback;
      v28 = @"fingerPosition";
      *&v4 = events->var4;
      v18 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
      v29 = v18;
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      coreAnalyticsCallback[2](coreAnalyticsCallback, @"com.apple.TouchSensitiveButton.tactSwitchPressed", v19);

      v20 = SALoggingGeneral();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_0(&v27);
        OUTLINED_FUNCTION_4(&dword_2655CA000, v21, v22, "[SASInterfaceTouchButtonHost] CA TactSwitchPressed event emitted", v23, v24, v25, v26);
      }
    }
  }
}

- (void)processDoubleHalfPressResults:(const _SADynamicArrayDescriptor *)results results:(const BOOL *)a4
{
  v6 = 0;
  v16 = *MEMORY[0x277D85DE8];
  while (v6 < results->var3)
  {
    v7 = a4[v6];
    v8 = SALoggingGeneral();
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      __os_log_helper_16_0_1_4_0(&v15, v6);
      v10 = OUTLINED_FUNCTION_12();
      v14 = "[SASInterfaceTouchButtonHost] double half press = YES for %d-th event";
    }

    else
    {
      if (!v9)
      {
        goto LABEL_9;
      }

      __os_log_helper_16_0_1_4_0(&v15, v6);
      v10 = OUTLINED_FUNCTION_12();
      v14 = "[SASInterfaceTouchButtonHost] double half press = NO for %d-th event";
    }

    _os_log_impl(v10, v11, v12, v14, v13, 8u);
LABEL_9:

    ++v6;
  }
}

@end