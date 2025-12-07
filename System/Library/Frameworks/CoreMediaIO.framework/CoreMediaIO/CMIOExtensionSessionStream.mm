@interface CMIOExtensionSessionStream
+ (id)sessionStreamWithPropertyStates:(id)states provider:(id)provider;
- (CMIOExtensionSessionStream)initWithPropertyStates:(id)states provider:(id)provider;
- (NSArray)formats;
- (NSSet)availableProperties;
- (id)cachedPropertyStateForProperty:(id)property;
- (id)cachedPropertyStatesForProperties:(id)properties;
- (id)copySample:(BOOL *)sample streamID:(id)d error:(id *)error;
- (id)description;
- (void)captureAsyncStillImage:(int64_t)image options:(id)options reply:(id)reply;
- (void)completeTransaction;
- (void)dealloc;
- (void)enqueueReactionEffect:(id)effect reply:(id)reply;
- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply;
- (void)receivedSample:(id)sample streamID:(id)d;
- (void)receivedScheduledOutput:(id)output streamID:(id)d;
- (void)setActiveFormatIndex:(unint64_t)index reply:(id)reply;
- (void)setPropertyValues:(id)values reply:(id)reply;
- (void)startStream:(id)stream;
- (void)stopStream:(id)stream;
- (void)updatePropertyStates:(id)states streamID:(id)d;
@end

@implementation CMIOExtensionSessionStream

+ (id)sessionStreamWithPropertyStates:(id)states provider:(id)provider
{
  v4 = [objc_alloc(objc_opt_class()) initWithPropertyStates:states provider:provider];

  return v4;
}

- (CMIOExtensionSessionStream)initWithPropertyStates:(id)states provider:(id)provider
{
  v28 = *MEMORY[0x277D85DE8];
  if (states && provider)
  {
    v19.receiver = self;
    v19.super_class = CMIOExtensionSessionStream;
    v6 = [(CMIOExtensionSessionStream *)&v19 init];
    v7 = v6;
    if (v6)
    {
      v6->_lock._os_unfair_lock_opaque = 0;
      v8 = +[CMIOExtensionStream internalProperties];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __62__CMIOExtensionSessionStream_initWithPropertyStates_provider___block_invoke;
      v18[3] = &unk_27885C010;
      v18[4] = v8;
      v7->_availableProperties = [states keysOfEntriesPassingTest:v18];
      v7->_localizedName = [objc_msgSend(states objectForKeyedSubscript:{0x284358E78), "value"}];
      v9 = [objc_msgSend(states objectForKeyedSubscript:{0x284358E98), "value"}];
      v7->_streamID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
      v7->_direction = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358EB8), "value"), "integerValue"}];
      v10 = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358ED8), "value"), "integerValue"}];
      v7->_clockType = v10;
      if (v10 == 2)
      {
        v7->_customClockConfiguration = [objc_msgSend(states objectForKeyedSubscript:{0x284358EF8), "value"}];
      }

      v7->_formats = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358F18), "attributes"), "validValues"}];
      v11 = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{@"CMIOExtensionPropertyStreamActiveFormatIndex", "value"), "unsignedIntegerValue"}];
      v7->_activeFormatIndex = v11;
      v7->_activeFormatMediaType = CMFormatDescriptionGetMediaType([-[NSArray objectAtIndexedSubscript:](v7->_formats objectAtIndexedSubscript:{v11), "formatDescription"}]);
      v7->_propertyStates = [states mutableCopy];
      objc_storeWeak(&v7->_provider, provider);
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionStream: ID %@>", v7->_streamID];
      v7->_description = v12;
      if (CMIOModuleLogLevel_once != -1)
      {
        [CMIOExtensionSessionStream initWithPropertyStates:provider:];
      }

      if (CMIOModuleLogLevel_cmioLevel >= 1)
      {
        v14 = CMIOLog(v12, v13);
        if (v14)
        {
          v15 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
            *buf = 136315906;
            v21 = v16;
            v22 = 1024;
            v23 = 163;
            v24 = 2080;
            v25 = "[CMIOExtensionSessionStream initWithPropertyStates:provider:]";
            v26 = 2112;
            v27 = v7;
            _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
          }
        }
      }
    }
  }

  else
  {

    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
    return 0;
  }

  return v7;
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v3 = CMIOLog(self, a2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v8 = 1024;
        v9 = 170;
        v10 = 2080;
        v11 = "[CMIOExtensionSessionStream dealloc]";
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  v5.receiver = self;
  v5.super_class = CMIOExtensionSessionStream;
  [(CMIOExtensionSessionStream *)&v5 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (void)updatePropertyStates:(id)states streamID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v6 = CMIOLog(self, a2);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 190;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionStream updatePropertyStates:streamID:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v10, 0x26u);
      }
    }
  }

  if ([states count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_propertyStates addEntriesFromDictionary:states];
    os_unfair_lock_unlock(&self->_lock);
    v8 = [states objectForKeyedSubscript:@"CMIOExtensionPropertyStreamActiveFormatIndex"];
    if (v8)
    {
      v9 = [objc_msgSend(v8 "value")];
      [(CMIOExtensionSessionStream *)self setActiveFormatIndex:v9];
      self->_activeFormatMediaType = CMFormatDescriptionGetMediaType([-[NSArray objectAtIndexedSubscript:](self->_formats objectAtIndexedSubscript:{self->_activeFormatIndex), "formatDescription"}]);
      [objc_loadWeak(&self->_delegate) stream:self activeFormatIndexChanged:v9];
    }

    [objc_loadWeak(&self->_delegate) stream:self propertiesChanged:states];
  }
}

- (void)receivedSample:(id)sample streamID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v6 = CMIOLog(self, a2);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136316162;
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v10 = 1024;
        v11 = 215;
        v12 = 2080;
        v13 = "[CMIOExtensionSessionStream receivedSample:streamID:]";
        v14 = 2112;
        selfCopy = self;
        v16 = 2112;
        sampleCopy = sample;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, sample %@", &v8, 0x30u);
      }
    }
  }

  [objc_loadWeak(&self->_delegate) stream:self receivedSampleBuffer:{objc_msgSend(sample, "sampleBuffer")}];
}

- (id)copySample:(BOOL *)sample streamID:(id)d error:(id *)error
{
  v22 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v8 = CMIOLog(self, a2);
    if (v8)
    {
      v9 = v8;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v14 = 136315906;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 222;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionStream copySample:streamID:error:]";
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v14, 0x26u);
      }
    }
  }

  *sample = 0;
  *error = 0;
  v10 = [objc_loadWeak(&self->_delegate) stream:self copySampleBuffer:sample error:error];
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  v12 = [[CMIOExtensionSample alloc] initWithCMSampleBuffer:v10];
  CFRelease(v11);
  return v12;
}

- (void)receivedScheduledOutput:(id)output streamID:(id)d
{
  v16 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v6 = CMIOLog(self, a2);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 136315906;
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v10 = 1024;
        v11 = 238;
        v12 = 2080;
        v13 = "[CMIOExtensionSessionStream receivedScheduledOutput:streamID:]";
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v8, 0x26u);
      }
    }
  }

  [objc_loadWeak(&self->_delegate) stream:self scheduledOutputChanged:output];
}

- (NSSet)availableProperties
{
  v2 = self->_availableProperties;

  return v2;
}

- (id)cachedPropertyStateForProperty:(id)property
{
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_propertyStates objectForKey:property];
  os_unfair_lock_unlock(&self->_lock);
  return v5;
}

- (id)cachedPropertyStatesForProperties:(id)properties
{
  v29 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v5 = CMIOLog(self, a2);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v23 = 1024;
        v24 = 271;
        v25 = 2080;
        v26 = "[CMIOExtensionSessionStream cachedPropertyStatesForProperties:]";
        v27 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (properties)
  {
    v7 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = [properties countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(properties);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          os_unfair_lock_lock(&self->_lock);
          v13 = [(NSMutableDictionary *)self->_propertyStates objectForKey:v12];
          os_unfair_lock_unlock(&self->_lock);
          if (v13)
          {
            [v7 setObject:v13 forKey:v12];
          }
        }

        v9 = [properties countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:v7];
  }

  else
  {
    os_unfair_lock_lock(&self->_lock);
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithDictionary:self->_propertyStates];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v14;
}

- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply
{
  v24 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v18 = 1024;
        v19 = 303;
        v20 = 2080;
        v21 = "[CMIOExtensionSessionStream propertyStatesForProperties:reply:]";
        v22 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (!availableProperties)
  {
    availableProperties = self->_availableProperties;
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__CMIOExtensionSessionStream_propertyStatesForProperties_reply___block_invoke;
    v13[3] = &unk_27885C038;
    v13[4] = self;
    v13[5] = reply;
    [v10 streamPropertyStatesWithStreamID:uUIDString properties:availableProperties reply:v13];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid session";
    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }
}

uint64_t __64__CMIOExtensionSessionStream_propertyStatesForProperties_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 24) addEntriesFromDictionary:a2];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setPropertyValues:(id)values reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v18 = 1024;
        v19 = 325;
        v20 = 2080;
        v21 = "[CMIOExtensionSessionStream setPropertyValues:reply:]";
        v22 = 2112;
        selfCopy = self;
        v24 = 2112;
        valuesCopy = values;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyValues %@", buf, 0x30u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__CMIOExtensionSessionStream_setPropertyValues_reply___block_invoke;
    v13[3] = &unk_27885C060;
    v13[4] = reply;
    [v10 setStreamPropertyValuesWithStreamID:uUIDString propertyValues:values reply:v13];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid session";
    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }
}

- (NSArray)formats
{
  v2 = self->_formats;

  return v2;
}

- (void)setActiveFormatIndex:(unint64_t)index reply:(id)reply
{
  v36 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136316162;
        v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v28 = 1024;
        v29 = 344;
        v30 = 2080;
        v31 = "[CMIOExtensionSessionStream setActiveFormatIndex:reply:]";
        v32 = 2112;
        selfCopy = self;
        v34 = 1024;
        indexCopy = index;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %d", buf, 0x2Cu);
      }
    }
  }

  v9 = [(NSArray *)self->_formats count];
  if (v9 <= index)
  {
    v15 = CMIOLog(v9, v10);
    if (v15)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSessionStream setActiveFormatIndex:reply:];
      }
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA590];
    v24 = *MEMORY[0x277CCA450];
    v25 = @"Invalid format value";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v25;
    v20 = &v24;
  }

  else
  {
    hostContext = [objc_loadWeak(&self->_provider) hostContext];
    if (hostContext)
    {
      v12 = hostContext;
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", index), @"CMIOExtensionPropertyStreamActiveFormatIndex"}];
      uUIDString = [(NSUUID *)self->_streamID UUIDString];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke;
      v21[3] = &unk_27885C088;
      v21[5] = reply;
      v21[6] = index;
      v21[4] = self;
      [v12 setStreamPropertyValuesWithStreamID:uUIDString propertyValues:v13 reply:v21];
      return;
    }

    v16 = MEMORY[0x277CCA9B8];
    v17 = *MEMORY[0x277CCA590];
    v22 = *MEMORY[0x277CCA450];
    v23 = @"Invalid session";
    v18 = MEMORY[0x277CBEAC0];
    v19 = &v23;
    v20 = &v22;
  }

  (*(reply + 2))(reply, [v16 errorWithDomain:v17 code:-50 userInfo:{objc_msgSend(v18, "dictionaryWithObjects:forKeys:count:", v19, v20, 1)}]);
}

uint64_t __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke(void *a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog(a1, a2);
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke_cold_1();
    }
  }

  else
  {
    *(a1[4] + 112) = a1[6];
  }

  return (*(a1[5] + 16))();
}

- (void)startStream:(id)stream
{
  v22 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v5 = CMIOLog(self, a2);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 372;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionStream startStream:]";
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v8 = hostContext;
    self->_streaming = 1;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __42__CMIOExtensionSessionStream_startStream___block_invoke;
    v11[3] = &unk_27885C0B0;
    v11[4] = self;
    v11[5] = stream;
    [v8 startStreamWithStreamID:uUIDString reply:v11];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Invalid session";
    (*(stream + 2))(stream, [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }
}

uint64_t __42__CMIOExtensionSessionStream_startStream___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog(a1, a2);
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __42__CMIOExtensionSessionStream_startStream___block_invoke_cold_1();
    }

    *(*(a1 + 32) + 56) = 0;
  }

  return (*(*(a1 + 40) + 16))();
}

- (void)stopStream:(id)stream
{
  v22 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v5 = CMIOLog(self, a2);
    if (v5)
    {
      v6 = v5;
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 391;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionStream stopStream:]";
        v20 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v8 = hostContext;
    self->_streaming = 0;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __41__CMIOExtensionSessionStream_stopStream___block_invoke;
    v11[3] = &unk_27885C060;
    v11[4] = stream;
    [v8 stopStreamWithStreamID:uUIDString reply:v11];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v12 = *MEMORY[0x277CCA450];
    v13 = @"Invalid session";
    (*(stream + 2))(stream, [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v13, &v12, 1)}]);
  }
}

uint64_t __41__CMIOExtensionSessionStream_stopStream___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog(a1, a2);
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __41__CMIOExtensionSessionStream_stopStream___block_invoke_cold_1();
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)captureAsyncStillImage:(int64_t)image options:(id)options reply:(id)reply
{
  v26 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v9 = CMIOLog(self, a2);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v20 = 1024;
        v21 = 409;
        v22 = 2080;
        v23 = "[CMIOExtensionSessionStream captureAsyncStillImage:options:reply:]";
        v24 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v12 = hostContext;
    uUIDString = [(NSUUID *)self->_streamID UUIDString];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke;
    v15[3] = &unk_27885C0D8;
    v15[4] = reply;
    [v12 captureAsyncStillImageWithStreamID:uUIDString uniqueID:image options:options reply:v15];
  }

  else
  {
    v14 = *MEMORY[0x277CCA590];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"Invalid session";
    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}]);
  }
}

uint64_t __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = CMIOLog(a1, a2);
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke_cold_1();
      }
    }

    return (*(*(a1 + 32) + 16))();
  }

  else
  {
    v6 = *(*(a1 + 32) + 16);

    return v6();
  }
}

- (void)enqueueReactionEffect:(id)effect reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315906;
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v15 = 1024;
        v16 = 429;
        v17 = 2080;
        v18 = "[CMIOExtensionSessionStream enqueueReactionEffect:reply:]";
        v19 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    [hostContext enqueueReactionEffect:-[NSUUID UUIDString](self->_streamID reactionType:"UUIDString") reply:{effect, reply}];
  }

  else
  {
    v10 = *MEMORY[0x277CCA590];
    v11 = *MEMORY[0x277CCA450];
    v12 = @"Invalid session";
    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:v10 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v12, &v11, 1)}]);
  }
}

- (void)completeTransaction
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)setActiveFormatIndex:reply:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __57__CMIOExtensionSessionStream_setActiveFormatIndex_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __42__CMIOExtensionSessionStream_startStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __41__CMIOExtensionSessionStream_stopStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __67__CMIOExtensionSessionStream_captureAsyncStillImage_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end