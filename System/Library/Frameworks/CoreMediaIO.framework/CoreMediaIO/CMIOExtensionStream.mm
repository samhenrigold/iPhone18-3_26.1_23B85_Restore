@interface CMIOExtensionStream
+ (CMIOExtensionStream)streamWithLocalizedName:(NSString *)localizedName streamID:(NSUUID *)streamID direction:(CMIOExtensionStreamDirection)direction clockType:(CMIOExtensionStreamClockType)clockType source:(id)source;
+ (CMIOExtensionStream)streamWithLocalizedName:(NSString *)localizedName streamID:(NSUUID *)streamID direction:(CMIOExtensionStreamDirection)direction customClockConfiguration:(CMIOExtensionStreamCustomClockConfiguration *)customClockConfiguration source:(id)source;
+ (id)internalProperties;
- (NSArray)streamingClients;
- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties;
- (id)_clientQueue_setAndRemoveInternalPropertyValuesForClient:(id)client propertyValues:(id)values error:(id *)error;
- (id)_initWithLocalizedName:(id)name streamID:(id)d direction:(int64_t)direction clockType:(int64_t)type customClockConfiguration:(id)configuration source:(id)source;
- (id)description;
- (void)_clientQueue_addStreamingClient:(id)client;
- (void)_clientQueue_removeStreamingClient:(id)client;
- (void)clientQueue_updateMutableStreamPropertiesByPolicy;
- (void)consumeSampleBufferFromClient:(CMIOExtensionClient *)client completionHandler:(void *)completionHandler;
- (void)dealloc;
- (void)enqueueReactionEffect:(id)effect completionHandler:(id)handler;
- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates;
- (void)notifyScheduledOutputChanged:(CMIOExtensionScheduledOutput *)scheduledOutput;
- (void)sendSampleBuffer:(CMSampleBufferRef)sampleBuffer discontinuity:(CMIOExtensionStreamDiscontinuityFlags)discontinuity hostTimeInNanoseconds:(uint64_t)hostTimeInNanoseconds;
- (void)setStreamingClients:(id)clients;
@end

@implementation CMIOExtensionStream

+ (id)internalProperties
{
  if (internalProperties_onceToken != -1)
  {
    +[CMIOExtensionStream internalProperties];
  }

  return internalProperties_gInternalStreamProperties;
}

void *__41__CMIOExtensionStream_internalProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358E78, 0x284358E98, 0x284358EB8, 0x284358ED8, 0x284358EF8, 0x284358F18, 0}];
  internalProperties_gInternalStreamProperties = result;
  return result;
}

+ (CMIOExtensionStream)streamWithLocalizedName:(NSString *)localizedName streamID:(NSUUID *)streamID direction:(CMIOExtensionStreamDirection)direction clockType:(CMIOExtensionStreamClockType)clockType source:(id)source
{
  v7 = [objc_alloc(objc_opt_class()) initWithLocalizedName:localizedName streamID:streamID direction:direction clockType:clockType source:source];

  return v7;
}

+ (CMIOExtensionStream)streamWithLocalizedName:(NSString *)localizedName streamID:(NSUUID *)streamID direction:(CMIOExtensionStreamDirection)direction customClockConfiguration:(CMIOExtensionStreamCustomClockConfiguration *)customClockConfiguration source:(id)source
{
  v12 = objc_alloc(objc_opt_class());

  return [v12 initWithLocalizedName:localizedName streamID:streamID direction:direction customClockConfiguration:customClockConfiguration source:source];
}

- (id)_initWithLocalizedName:(id)name streamID:(id)d direction:(int64_t)direction clockType:(int64_t)type customClockConfiguration:(id)configuration source:(id)source
{
  if (name && d && source && (type != 2 || configuration))
  {
    v24.receiver = self;
    v24.super_class = CMIOExtensionStream;
    v14 = [(CMIOExtensionStream *)&v24 init];
    if (v14)
    {
      *(v14 + 22) = [name copy];
      *(v14 + 23) = [d copy];
      *(v14 + 24) = direction;
      *(v14 + 25) = type;
      *(v14 + 26) = [configuration copy];
      objc_storeWeak(v14 + 20, source);
      *(v14 + 2) = 0;
      *(v14 + 2) = objc_opt_new();
      *(v14 + 3) = -1;
      *(v14 + 4) = -1;
      *(v14 + 5) = -1;
      *(v14 + 16) = objc_opt_new();
      *(v14 + 34) = 0;
      *(v14 + 18) = objc_opt_new();
      *(v14 + 21) = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionStream: name %@, ID %@>", *(v14 + 22), *(v14 + 23)];
      v16 = MEMORY[0x277CC0898];
      *(v14 + 3) = *MEMORY[0x277CC0898];
      *(v14 + 8) = *(v16 + 16);
      v17 = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
      v18 = dispatch_source_create(MEMORY[0x277D85D38], 0, 1uLL, v17);
      *(v14 + 15) = v18;
      v19 = dispatch_time(0, 1000000000);
      dispatch_source_set_timer(v18, v19, 0x3B9ACA00uLL, 0);
      objc_initWeak(&location, v14);
      v20 = *(v14 + 15);
      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __107__CMIOExtensionStream__initWithLocalizedName_streamID_direction_clockType_customClockConfiguration_source___block_invoke;
      handler[3] = &unk_27885B898;
      objc_copyWeak(&v22, &location);
      dispatch_source_set_event_handler(v20, handler);
      dispatch_source_set_cancel_handler(*(v14 + 15), &__block_literal_global_136);
      dispatch_resume(*(v14 + 15));
      objc_destroyWeak(&v22);
      objc_destroyWeak(&location);
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    return 0;
  }

  return v14;
}

void __107__CMIOExtensionStream__initWithLocalizedName_streamID_direction_clockType_customClockConfiguration_source___block_invoke(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = [WeakRetained _clientQueue_streamingClientsMap];
    if ([v3 count])
    {
      v4 = objc_alloc_init(MEMORY[0x277CCAB68]);
      v5 = v2[18];
      [v4 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"Stats for %@ streaming type %c%c%c%c subtype %c%c%c%c %dx%d ", v2, HIBYTE(v5), BYTE2(v5), BYTE1(v5), v5, HIBYTE(v2[19]), BYTE2(v2[19]), BYTE1(v2[19]), v2[19], v2[28], v2[29])}];
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v6 = [v3 allValues];
      v7 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v23;
        v10 = @"clients [%d";
        do
        {
          for (i = 0; i != v8; ++i)
          {
            if (*v23 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v4 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", v10, objc_msgSend(*(*(&v22 + 1) + 8 * i), "pid"))}];
            v10 = @", %d";
          }

          v8 = [v6 countByEnumeratingWithState:&v22 objects:v29 count:16];
          v10 = @", %d";
        }

        while (v8);
      }

      [v4 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"] "}];
      *time = *(v2 + 5);
      *&time[16] = *(v2 + 12);
      Seconds = CMTimeGetSeconds(time);
      v13 = *(v2 + 13);
      v14 = 0.0;
      if (v13 && Seconds > 0.0)
      {
        v15 = v13;
        *time = *(v2 + 5);
        *&time[16] = *(v2 + 12);
        Seconds = CMTimeGetSeconds(time);
        v13 = *(v2 + 13);
        v14 = v15 / Seconds;
      }

      v16 = [v4 appendString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"received %lld fps %f ", Seconds, v13, *&v14)}];
      v18 = CMIOLog(v16, v17);
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *time = 136315907;
          *&time[4] = v20;
          *&time[12] = 1024;
          *&time[14] = 926;
          *&time[18] = 2080;
          *&time[20] = "[CMIOExtensionStream _initWithLocalizedName:streamID:direction:clockType:customClockConfiguration:source:]_block_invoke";
          v27 = 2113;
          v28 = v4;
          _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{private}@", time, 0x26u);
        }
      }
    }

    v21 = MEMORY[0x277CC08F0];
    *(v2 + 5) = *MEMORY[0x277CC08F0];
    *(v2 + 12) = *(v21 + 16);
    *(v2 + 13) = 0;
  }
}

- (void)dealloc
{
  statsTimer = self->_statsTimer;
  if (statsTimer)
  {
    dispatch_source_cancel(statsTimer);
  }

  v4.receiver = self;
  v4.super_class = CMIOExtensionStream;
  [(CMIOExtensionStream *)&v4 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (NSArray)streamingClients
{
  os_unfair_lock_lock(&self->_streamingClientsLock);
  v3 = self->_streamingClients;
  os_unfair_lock_unlock(&self->_streamingClientsLock);

  return v3;
}

- (void)setStreamingClients:(id)clients
{
  os_unfair_lock_lock(&self->_streamingClientsLock);
  streamingClients = self->_streamingClients;
  self->_streamingClients = clients;
  os_unfair_lock_unlock(&self->_streamingClientsLock);
  [(CMIOExtensionStream *)self clientQueue_updateMutableStreamPropertiesByPolicy];
}

- (void)clientQueue_updateMutableStreamPropertiesByPolicy
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (properties)
  {
    if ([properties containsObject:0x284358E78])
    {
      v6 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_localizedName attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
      [dictionary setObject:v6 forKey:0x284358E78];
    }

    if (([properties containsObject:0x284358E98] & 1) == 0)
    {
LABEL_8:
      if (![properties containsObject:0x284358EB8])
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }
  }

  else
  {
    v7 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_localizedName attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [dictionary setObject:v7 forKey:0x284358E78];
  }

  v8 = [[CMIOExtensionPropertyState alloc] initWithValue:[(NSUUID *)self->_streamID UUIDString] attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
  [dictionary setObject:v8 forKey:0x284358E98];

  if (properties)
  {
    goto LABEL_8;
  }

LABEL_9:
  v9 = [CMIOExtensionPropertyState alloc];
  v10 = -[CMIOExtensionPropertyState initWithValue:attributes:](v9, "initWithValue:attributes:", [MEMORY[0x277CCABB0] numberWithInteger:self->_direction], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
  [dictionary setObject:v10 forKey:0x284358EB8];

  if (!properties)
  {
    goto LABEL_11;
  }

LABEL_10:
  if ([properties containsObject:0x284358ED8])
  {
LABEL_11:
    v11 = [CMIOExtensionPropertyState alloc];
    v12 = -[CMIOExtensionPropertyState initWithValue:attributes:](v11, "initWithValue:attributes:", [MEMORY[0x277CCABB0] numberWithInteger:self->_clockType], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    [dictionary setObject:v12 forKey:0x284358ED8];

    if (!properties)
    {
      goto LABEL_13;
    }
  }

  if (![properties containsObject:0x284358EF8])
  {
    goto LABEL_17;
  }

LABEL_13:
  if (self->_clockType == 2 && self->_customClockConfiguration)
  {
    v13 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_customClockConfiguration attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [dictionary setObject:v13 forKey:0x284358EF8];
  }

  if (properties)
  {
LABEL_17:
    if (![properties containsObject:0x284358F18])
    {
      goto LABEL_22;
    }
  }

  v14 = -[CMIOExtensionPropertyAttributes initWithMinValue:maxValue:validValues:readOnly:]([CMIOExtensionPropertyAttributes alloc], "initWithMinValue:maxValue:validValues:readOnly:", 0, 0, [objc_loadWeak(&self->_source) formats], 1);
  if ([objc_msgSend(objc_loadWeak(&self->_source) "formats")])
  {
    v15 = [objc_msgSend(objc_loadWeak(&self->_source) "formats")];
  }

  else
  {
    v15 = 0;
  }

  v16 = [[CMIOExtensionPropertyState alloc] initWithValue:v15 attributes:v14];

  [dictionary setObject:v16 forKey:0x284358F18];
LABEL_22:
  if ([dictionary count])
  {
    return dictionary;
  }

  else
  {
    return 0;
  }
}

- (id)_clientQueue_setAndRemoveInternalPropertyValuesForClient:(id)client propertyValues:(id)values error:(id *)error
{
  valuesCopy = values;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 1;
  v7 = [CMIOExtensionStream internalWritableProperties:client];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __101__CMIOExtensionStream__clientQueue_setAndRemoveInternalPropertyValuesForClient_propertyValues_error___block_invoke;
  v10[3] = &unk_27885B8C0;
  v10[4] = v7;
  v10[5] = &v11;
  [valuesCopy enumerateKeysAndObjectsUsingBlock:v10];
  if ((v12[3] & 1) == 0)
  {
    valuesCopy = [valuesCopy mutableCopy];
    v8 = objc_opt_new();
    [(CMIOExtensionStream *)self notifyPropertiesChanged:v8];
  }

  _Block_object_dispose(&v11, 8);
  return valuesCopy;
}

void *__101__CMIOExtensionStream__clientQueue_setAndRemoveInternalPropertyValuesForClient_propertyValues_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates
{
  os_unfair_lock_lock(&self->_changedPropertiesLock);
  [(NSMutableDictionary *)self->_changedProperties addEntriesFromDictionary:propertyStates];
  os_unfair_lock_unlock(&self->_changedPropertiesLock);
  v5 = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CMIOExtensionStream_notifyPropertiesChanged___block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __47__CMIOExtensionStream_notifyPropertiesChanged___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 8));
  v2 = [*(*(a1 + 32) + 16) copy];
  [*(*(a1 + 32) + 16) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 8));
  if ([v2 count])
  {
    [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
  }
}

- (void)sendSampleBuffer:(CMSampleBufferRef)sampleBuffer discontinuity:(CMIOExtensionStreamDiscontinuityFlags)discontinuity hostTimeInNanoseconds:(uint64_t)hostTimeInNanoseconds
{
  v66 = *MEMORY[0x277D85DE8];
  v58 = hostTimeInNanoseconds;
  if (self->_direction == 1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ You can't send sample from a sink stream.", self}];
  }

  if (sampleBuffer)
  {
    FormatDescription = CMSampleBufferGetFormatDescription(sampleBuffer);
    v10 = FormatDescription;
    if (!FormatDescription)
    {
      goto LABEL_9;
    }

    if (CMFormatDescriptionGetMediaType(FormatDescription) == 1936684398)
    {
      ++self->_audioSequenceNumber;
    }

    if (CMFormatDescriptionGetMediaType(v10) == 1835365473)
    {
      v11 = 40;
    }

    else
    {
LABEL_9:
      v11 = 24;
    }

    v12 = (*(&self->super.isa + v11) + 1);
    *(&self->super.isa + v11) = v12;
    valuePtr = v12;
    v13 = *MEMORY[0x277CBECE8];
    v14 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberSInt64Type, &valuePtr);
    CMSetAttachment(sampleBuffer, kCMIOSampleBufferAttachmentKey_SequenceNumber, v14, 1u);
    CFRelease(v14);
    if (hostTimeInNanoseconds)
    {
      v15 = CFNumberCreate(v13, kCFNumberSInt64Type, &v58);
      CMSetAttachment(sampleBuffer, kCMIOSampleBufferAttachmentKey_HostTime, v15, 1u);
      CFRelease(v15);
    }

    v56 = discontinuity;
    v16 = CMGetAttachment(sampleBuffer, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, 0);
    if (v16)
    {
      v17 = v16;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v17))
      {
        *time = 0;
        Value = CFNumberGetValue(v17, kCFNumberSInt32Type, time);
        v20 = *time;
        if (!Value)
        {
          v20 = 0;
        }

        v56 = v20 | discontinuity;
      }
    }

    v21 = CFNumberCreate(v13, kCFNumberSInt32Type, &v56);
    CMSetAttachment(sampleBuffer, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, v21, 1u);
    CFRelease(v21);
    memset(&v55, 0, sizeof(v55));
    HostTimeClock = CMClockGetHostTimeClock();
    CMClockGetTime(&v55, HostTimeClock);
    *time = v55;
    v23 = CMTimeCopyAsDictionary(time, v13);
    CMSetAttachment(sampleBuffer, @"com.apple.cmio.buffer_attachment.deliver_time", v23, 1u);
    CFRelease(v23);
    v25 = CMIOLogLevel(2, v24);
    if (v10)
    {
      if (v25)
      {
        memset(&v54, 0, sizeof(v54));
        CMSampleBufferGetPresentationTimeStamp(&v54, sampleBuffer);
        memset(&v53, 0, sizeof(v53));
        *time = v55;
        rhs = v54;
        CMTimeSubtract(&v53, time, &rhs);
        if (CMFormatDescriptionGetMediaType(v10) == 1986618469)
        {
          v27 = CMIOLogLevel(2, v26);
          if (v27)
          {
            v28 = v27;
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              v29 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *time = v54;
              Seconds = CMTimeGetSeconds(time);
              *time = v53;
              v31 = CMTimeGetSeconds(time);
              *time = 136316418;
              *&time[4] = v29;
              *&time[12] = 1024;
              *&time[14] = 1214;
              *&time[18] = 2080;
              *&time[20] = "[CMIOExtensionStream sendSampleBuffer:discontinuity:hostTimeInNanoseconds:]";
              v60 = 2048;
              v61 = Seconds;
              v62 = 2048;
              v63 = v31;
              v64 = 2048;
              v65 = valuePtr;
              v32 = "%s:%d:%s video [time %.3f diff %.3f] %lld";
LABEL_27:
              _os_log_impl(&dword_22EA08000, v28, OS_LOG_TYPE_DEFAULT, v32, time, 0x3Au);
            }
          }
        }

        else if (CMFormatDescriptionGetMediaType(v10) == 1936684398)
        {
          v34 = CMIOLogLevel(2, v33);
          if (v34)
          {
            v28 = v34;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v35 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *time = v54;
              v36 = CMTimeGetSeconds(time);
              *time = v53;
              v37 = CMTimeGetSeconds(time);
              *time = 136316418;
              *&time[4] = v35;
              *&time[12] = 1024;
              *&time[14] = 1217;
              *&time[18] = 2080;
              *&time[20] = "[CMIOExtensionStream sendSampleBuffer:discontinuity:hostTimeInNanoseconds:]";
              v60 = 2048;
              v61 = v36;
              v62 = 2048;
              v63 = v37;
              v64 = 2048;
              v65 = valuePtr;
              v32 = "%s:%d:%s audio [time %.3f diff %.3f] %lld";
              goto LABEL_27;
            }
          }
        }
      }
    }
  }

  v38 = [[CMIOExtensionSample alloc] initWithCMSampleBuffer:sampleBuffer];
  if (v38)
  {
    v39 = v38;
    memset(time, 0, 24);
    CMSampleBufferGetPresentationTimeStamp(time, sampleBuffer);
    memset(&v55, 0, sizeof(v55));
    CMSampleBufferGetDuration(&v55, sampleBuffer);
    v40 = CMSampleBufferGetFormatDescription(sampleBuffer);
    MediaType = CMFormatDescriptionGetMediaType(v40);
    MediaSubType = CMFormatDescriptionGetMediaSubType(v40);
    Dimensions = 0;
    if (MediaType == 1986618469)
    {
      Dimensions = CMVideoFormatDescriptionGetDimensions(v40);
    }

    v44 = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__CMIOExtensionStream_sendSampleBuffer_discontinuity_hostTimeInNanoseconds___block_invoke;
    block[3] = &unk_27885B910;
    v46 = v55;
    v47 = *time;
    v48 = *&time[16];
    v49 = MediaType;
    v50 = MediaSubType;
    v51 = Dimensions;
    block[4] = self;
    block[5] = v39;
    dispatch_async(v44, block);
  }
}

void __76__CMIOExtensionStream_sendSampleBuffer_discontinuity_hostTimeInNanoseconds___block_invoke(uint64_t a1)
{
  if (*(a1 + 60))
  {
    ++*(*(a1 + 32) + 104);
    v7 = *(a1 + 32);
    time2 = *(v7 + 80);
    rhs = *(a1 + 48);
    CMTimeAdd(&time1, &time2, &rhs);
    *(v7 + 80) = time1;
    v2 = *(a1 + 32);
    goto LABEL_6;
  }

  v2 = *(a1 + 32);
  if ((*(v2 + 60) & 1) == 0)
  {
LABEL_6:
    v5 = *(a1 + 72);
    v6 = *(a1 + 88);
    goto LABEL_7;
  }

  ++*(v2 + 104);
  time1 = *(*(a1 + 32) + 48);
  time2 = *(a1 + 72);
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    memset(&time1, 0, sizeof(time1));
    v3 = *(a1 + 32);
    time2 = *(a1 + 72);
    rhs = v3[2];
    CMTimeSubtract(&time1, &time2, &rhs);
    v4 = *(a1 + 32);
    rhs = *(v4 + 80);
    v8 = time1;
    CMTimeAdd(&time2, &rhs, &v8);
    *(v4 + 80) = time2;
    v2 = *(a1 + 32);
    v5 = *(a1 + 72);
    v6 = *(a1 + 88);
LABEL_7:
    *(v2 + 64) = v6;
    *(v2 + 48) = v5;
  }

  *(*(a1 + 32) + 72) = *(a1 + 96);
  *(*(a1 + 32) + 76) = *(a1 + 100);
  *(*(a1 + 32) + 112) = *(a1 + 104);
  [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
}

- (void)consumeSampleBufferFromClient:(CMIOExtensionClient *)client completionHandler:(void *)completionHandler
{
  if (self->_direction != 1)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:{@"%@ You can't consume sample if the steam is not sink.", self}];
  }

  v7 = +[CMIOExtensionProvider sharedProvider];

  [v7 consumeSampleBufferForStream:self client:client reply:completionHandler];
}

- (void)notifyScheduledOutputChanged:(CMIOExtensionScheduledOutput *)scheduledOutput
{
  v5 = +[CMIOExtensionProvider sharedProvider];

  [v5 notifyScheduledOutputChangedForStream:self scheduledOutput:scheduledOutput];
}

- (void)enqueueReactionEffect:(id)effect completionHandler:(id)handler
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog(self, a2);
  if (v5 && os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionStream enqueueReactionEffect:completionHandler:];
  }

  FigCopyBacktrace();
  if (handler)
  {
    (*(handler + 2))(handler, 4294967293);
  }
}

- (void)_clientQueue_addStreamingClient:(id)client
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableDictionary setObject:forKey:](self->_streamingClientsMap, "setObject:forKey:", client, [client clientID]);
  v7 = CMIOLog(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = 136316163;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v11 = 1024;
      v12 = 1302;
      v13 = 2080;
      v14 = "[CMIOExtensionStream _clientQueue_addStreamingClient:]";
      v15 = 2114;
      selfCopy = self;
      v17 = 1025;
      v18 = [client pid];
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, adding streaming client with %{private}d pid", &v9, 0x2Cu);
    }
  }

  [(CMIOExtensionStream *)self setStreamingClients:[(NSMutableDictionary *)self->_streamingClientsMap allValues]];
}

- (void)_clientQueue_removeStreamingClient:(id)client
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = -[NSMutableDictionary removeObjectForKey:](self->_streamingClientsMap, "removeObjectForKey:", [client clientID]);
  v7 = CMIOLog(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v12 = 136316163;
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v14 = 1024;
      v15 = 1311;
      v16 = 2080;
      v17 = "[CMIOExtensionStream _clientQueue_removeStreamingClient:]";
      v18 = 2114;
      selfCopy = self;
      v20 = 1025;
      v21 = [client pid];
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, removing streaming client with %{private}d pid", &v12, 0x2Cu);
    }
  }

  if (![(NSMutableDictionary *)self->_streamingClientsMap count])
  {
    *&v9 = 0;
    v10 = MEMORY[0x277CC0898];
    *&self->_statsLastSampleTime.value = *MEMORY[0x277CC0898];
    *&self->_statsMediaType = 0;
    v11 = MEMORY[0x277CC08F0];
    *&self->_statsTotalDuration.value = *MEMORY[0x277CC08F0];
    self->_statsLastSampleTime.epoch = *(v10 + 16);
    self->_statsTotalDuration.epoch = *(v11 + 16);
    *&self->_statsTotalSampleCount = v9;
  }

  [(CMIOExtensionStream *)self setStreamingClients:[(NSMutableDictionary *)self->_streamingClientsMap allValues]];
}

- (void)enqueueReactionEffect:completionHandler:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end