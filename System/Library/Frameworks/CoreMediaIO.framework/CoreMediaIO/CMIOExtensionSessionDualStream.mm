@interface CMIOExtensionSessionDualStream
+ (id)sessionDualStreamWithPrimaryStream:(id)stream secondaryStream:(id)secondaryStream;
- (CMIOExtensionSessionDualStream)initWithPrimaryStream:(id)stream secondaryStream:(id)secondaryStream;
- (CMIOExtensionSessionStream)activeStream;
- (id)cachedPropertyStateForProperty:(id)property;
- (id)cachedPropertyStatesForProperties:(id)properties;
- (id)copySample:(BOOL *)sample streamID:(id)d error:(id *)error;
- (id)delegate;
- (id)formats;
- (unint64_t)activeFormatIndex;
- (void)completeTransaction;
- (void)dealloc;
- (void)propertyStatesForProperties:(id)properties reply:(id)reply;
- (void)receivedSample:(id)sample streamID:(id)d;
- (void)receivedScheduledOutput:(id)output streamID:(id)d;
- (void)selectStream:(unint64_t)stream;
- (void)setActiveFormatIndex:(unint64_t)index;
- (void)setActiveFormatIndex:(unint64_t)index reply:(id)reply;
- (void)setDelegate:(id)delegate;
- (void)setPropertyValues:(id)values reply:(id)reply;
- (void)startStream:(id)stream;
- (void)stopStream:(id)stream;
- (void)updatePropertyStates:(id)states streamID:(id)d;
@end

@implementation CMIOExtensionSessionDualStream

+ (id)sessionDualStreamWithPrimaryStream:(id)stream secondaryStream:(id)secondaryStream
{
  v4 = [objc_alloc(objc_opt_class()) initWithPrimaryStream:stream secondaryStream:secondaryStream];

  return v4;
}

- (CMIOExtensionSessionDualStream)initWithPrimaryStream:(id)stream secondaryStream:(id)secondaryStream
{
  v26 = *MEMORY[0x277D85DE8];
  if (stream && secondaryStream)
  {
    v6 = *(stream + 3);
    v17.receiver = self;
    v17.super_class = CMIOExtensionSessionDualStream;
    v7 = -[CMIOExtensionSessionStream initWithPropertyStates:provider:](&v17, sel_initWithPropertyStates_provider_, v6, [stream provider]);
    if (v7)
    {
      v7->_primaryStream = stream;
      v7->_secondaryStream = secondaryStream;
      v7->_activeStream = v7->_primaryStream;
      v8 = [CMIOExtensionPropertyState alloc];
      v9 = -[CMIOExtensionPropertyState initWithValue:](v8, "initWithValue:", [MEMORY[0x277CCABB0] numberWithInt:0]);
      v7->_cinematicFramingEnabled = v9;
      [(NSMutableDictionary *)v7->_primaryStream->_propertyStates setObject:v9 forKey:0x284358F38];
      [(NSMutableDictionary *)v7->_secondaryStream->_propertyStates setObject:v7->_cinematicFramingEnabled forKey:0x284358F38];
      v10 = [(NSSet *)v7->super._availableProperties mutableCopy];
      [v10 addObject:0x284358F38];

      v7->super._availableProperties = [v10 copy];
      v7->super._streamID = [MEMORY[0x277CCAD78] UUID];

      v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionDualStream: ID %@>", v7->super._streamID];
      v7->super._description = v11;
      if (CMIOModuleLogLevel_once != -1)
      {
        [CMIOExtensionSessionStream initWithPropertyStates:provider:];
      }

      if (CMIOModuleLogLevel_cmioLevel >= 1)
      {
        v13 = CMIOLog(v11, v12);
        if (v13)
        {
          v14 = v13;
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
            *buf = 136315906;
            v19 = v15;
            v20 = 1024;
            v21 = 485;
            v22 = 2080;
            v23 = "[CMIOExtensionSessionDualStream initWithPrimaryStream:secondaryStream:]";
            v24 = 2112;
            v25 = v7;
            _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
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
  v3.receiver = self;
  v3.super_class = CMIOExtensionSessionDualStream;
  [(CMIOExtensionSessionStream *)&v3 dealloc];
}

- (CMIOExtensionSessionStream)activeStream
{
  os_unfair_lock_lock(&self->super._lock);
  v3 = self->_activeStream;
  os_unfair_lock_unlock(&self->super._lock);
  return v3;
}

- (void)selectStream:(unint64_t)stream
{
  os_unfair_lock_lock(&self->super._lock);
  delegate = [(CMIOExtensionSessionStream *)self->_activeStream delegate];
  activeStream = self->_activeStream;
  streaming = activeStream->_streaming;
  p_primaryStream = &self->_primaryStream;
  if (stream && activeStream == *p_primaryStream)
  {
    v9 = activeStream;
    [(CMIOExtensionSessionStream *)v9 setDelegate:0];
    p_primaryStream = &self->_secondaryStream;
    v10 = 1;
LABEL_7:
    v11 = *p_primaryStream;
    self->_activeStream = v11;
    [(CMIOExtensionSessionStream *)v11 setDelegate:delegate];
    v12 = self->_activeStream;
    v13 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v12->_propertyStates];

    v14 = [CMIOExtensionPropertyState alloc];
    v15 = -[CMIOExtensionPropertyState initWithValue:](v14, "initWithValue:", [MEMORY[0x277CCABB0] numberWithInt:v10]);
    self->_cinematicFramingEnabled = v15;
    [v13 setObject:v15 forKey:0x284358F38];
    os_unfair_lock_unlock(&self->super._lock);
    if (v9)
    {
      [(CMIOExtensionSessionStream *)v12 updatePropertyStates:v13 streamID:[(NSUUID *)[(CMIOExtensionSessionStream *)v12 streamID] UUIDString]];
      if (streaming)
      {
        [(CMIOExtensionSessionStream *)v12 startStream:&__block_literal_global_1];

        [(CMIOExtensionSessionStream *)v9 stopStream:&__block_literal_global_136_0];
      }
    }

    return;
  }

  if (!stream && activeStream == self->_secondaryStream)
  {
    v9 = activeStream;
    [(CMIOExtensionSessionStream *)v9 setDelegate:0];
    v10 = 0;
    goto LABEL_7;
  }

  os_unfair_lock_unlock(&self->super._lock);
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = CMIOLog(result, a2);
    if (v2)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_cold_1();
      }
    }
  }
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_134(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = CMIOLog(result, a2);
    if (v2)
    {
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_134_cold_1();
      }
    }
  }
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
    v7 = CMIOLog(self, a2);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 136315906;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 579;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionDualStream updatePropertyStates:streamID:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v10, 0x26u);
      }
    }
  }

  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:d]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:d]))
  {
    [(CMIOExtensionSessionStream *)*p_primaryStream updatePropertyStates:states streamID:d];
  }
}

- (void)receivedSample:(id)sample streamID:(id)d
{
  v20 = *MEMORY[0x277D85DE8];
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
        v10 = 136316162;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 591;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionDualStream receivedSample:streamID:]";
        v16 = 2112;
        selfCopy = self;
        v18 = 2112;
        sampleCopy = sample;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, sample %@", &v10, 0x30u);
      }
    }
  }

  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:d]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:d]))
  {
    [(CMIOExtensionSessionStream *)*p_primaryStream receivedSample:sample streamID:d];
  }
}

- (id)copySample:(BOOL *)sample streamID:(id)d error:(id *)error
{
  v21 = *MEMORY[0x277D85DE8];
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
        v13 = 136315906;
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v15 = 1024;
        v16 = 603;
        v17 = 2080;
        v18 = "[CMIOExtensionSessionDualStream copySample:streamID:error:]";
        v19 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v13, 0x26u);
      }
    }
  }

  *sample = 0;
  *error = 0;
  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:d]& 1) != 0)
  {
    return [(CMIOExtensionSessionStream *)*p_primaryStream copySample:sample streamID:d error:error];
  }

  p_primaryStream = &self->_secondaryStream;
  if ([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:d])
  {
    return [(CMIOExtensionSessionStream *)*p_primaryStream copySample:sample streamID:d error:error];
  }

  else
  {
    return 0;
  }
}

- (void)receivedScheduledOutput:(id)output streamID:(id)d
{
  v18 = *MEMORY[0x277D85DE8];
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
        v10 = 136315906;
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v12 = 1024;
        v13 = 619;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionDualStream receivedScheduledOutput:streamID:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v10, 0x26u);
      }
    }
  }

  p_primaryStream = &self->_primaryStream;
  if (([(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_primaryStream streamID] UUIDString] isEqual:d]& 1) != 0 || (p_primaryStream = &self->_secondaryStream, [(NSString *)[(NSUUID *)[(CMIOExtensionSessionStream *)self->_secondaryStream streamID] UUIDString] isEqual:d]))
  {
    [(CMIOExtensionSessionStream *)*p_primaryStream receivedScheduledOutput:output streamID:d];
  }
}

- (id)delegate
{
  os_unfair_lock_lock(&self->super._lock);
  delegate = [(CMIOExtensionSessionStream *)self->_activeStream delegate];
  os_unfair_lock_unlock(&self->super._lock);
  return delegate;
}

- (void)setDelegate:(id)delegate
{
  os_unfair_lock_lock(&self->super._lock);
  [(CMIOExtensionSessionStream *)self->_activeStream setDelegate:delegate];

  os_unfair_lock_unlock(&self->super._lock);
}

- (id)cachedPropertyStateForProperty:(id)property
{
  activeStream = [(CMIOExtensionSessionDualStream *)self activeStream];

  return [(CMIOExtensionSessionStream *)activeStream cachedPropertyStateForProperty:property];
}

- (id)cachedPropertyStatesForProperties:(id)properties
{
  v16 = *MEMORY[0x277D85DE8];
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
        v8 = 136315906;
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v10 = 1024;
        v11 = 656;
        v12 = 2080;
        v13 = "[CMIOExtensionSessionDualStream cachedPropertyStatesForProperties:]";
        v14 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v8, 0x26u);
      }
    }
  }

  return [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] cachedPropertyStatesForProperties:properties];
}

- (void)propertyStatesForProperties:(id)properties reply:(id)reply
{
  v17 = *MEMORY[0x277D85DE8];
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
        v9 = 136315906;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v11 = 1024;
        v12 = 663;
        v13 = 2080;
        v14 = "[CMIOExtensionSessionDualStream propertyStatesForProperties:reply:]";
        v15 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v9, 0x26u);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] propertyStatesForProperties:properties reply:reply];
}

- (void)setPropertyValues:(id)values reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
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
        v13 = 136316162;
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v15 = 1024;
        v16 = 670;
        v17 = 2080;
        v18 = "[CMIOExtensionSessionDualStream setPropertyValues:reply:]";
        v19 = 2112;
        selfCopy = self;
        v21 = 2112;
        valuesCopy = values;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyValues %@", &v13, 0x30u);
      }
    }
  }

  activeStream = [(CMIOExtensionSessionDualStream *)self activeStream];
  v10 = [values objectForKeyedSubscript:0x284358F38];
  if (v10)
  {
    v11 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      unsignedIntegerValue = [v11 unsignedIntegerValue];
      goto LABEL_16;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_15;
    }

    if ([v11 length] == 1)
    {
      LOBYTE(v13) = 0;
      [v11 getBytes:&v13 length:1];
      unsignedIntegerValue = v13;
      goto LABEL_16;
    }

    if ([v11 length] == 4)
    {
      v13 = 0;
      [v11 getBytes:&v13 length:4];
      unsignedIntegerValue = v13;
    }

    else
    {
LABEL_15:
      unsignedIntegerValue = 0;
    }

LABEL_16:
    [(CMIOExtensionSessionDualStream *)self selectStream:unsignedIntegerValue];
    if ([values count] >= 2)
    {
      values = [MEMORY[0x277CBEB38] dictionaryWithDictionary:values];
      [values removeObjectForKey:0x284358F38];
    }
  }

  [(CMIOExtensionSessionStream *)activeStream setPropertyValues:values reply:reply];
}

- (id)formats
{
  activeStream = [(CMIOExtensionSessionDualStream *)self activeStream];

  return [(CMIOExtensionSessionStream *)activeStream formats];
}

- (unint64_t)activeFormatIndex
{
  activeStream = [(CMIOExtensionSessionDualStream *)self activeStream];

  return [(CMIOExtensionSessionStream *)activeStream activeFormatIndex];
}

- (void)setActiveFormatIndex:(unint64_t)index
{
  activeStream = [(CMIOExtensionSessionDualStream *)self activeStream];

  [(CMIOExtensionSessionStream *)activeStream setActiveFormatIndex:index];
}

- (void)setActiveFormatIndex:(unint64_t)index reply:(id)reply
{
  v19 = *MEMORY[0x277D85DE8];
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
        v9 = 136316162;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v11 = 1024;
        v12 = 722;
        v13 = 2080;
        v14 = "[CMIOExtensionSessionDualStream setActiveFormatIndex:reply:]";
        v15 = 2112;
        selfCopy = self;
        v17 = 1024;
        indexCopy = index;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %d", &v9, 0x2Cu);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] setActiveFormatIndex:index reply:reply];
}

- (void)startStream:(id)stream
{
  v15 = *MEMORY[0x277D85DE8];
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
        v7 = 136315906;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v9 = 1024;
        v10 = 729;
        v11 = 2080;
        v12 = "[CMIOExtensionSessionDualStream startStream:]";
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v7, 0x26u);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] startStream:stream];
}

- (void)stopStream:(id)stream
{
  v15 = *MEMORY[0x277D85DE8];
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
        v7 = 136315906;
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v9 = 1024;
        v10 = 736;
        v11 = 2080;
        v12 = "[CMIOExtensionSessionDualStream stopStream:]";
        v13 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v7, 0x26u);
      }
    }
  }

  [(CMIOExtensionSessionStream *)[(CMIOExtensionSessionDualStream *)self activeStream] stopStream:stream];
}

- (void)completeTransaction
{
  activeStream = [(CMIOExtensionSessionDualStream *)self activeStream];

  [(CMIOExtensionSessionStream *)activeStream completeTransaction];
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __47__CMIOExtensionSessionDualStream_selectStream___block_invoke_134_cold_1()
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