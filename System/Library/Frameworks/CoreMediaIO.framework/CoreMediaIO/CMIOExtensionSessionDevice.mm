@interface CMIOExtensionSessionDevice
+ (id)sessionDeviceWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider;
- (CMIOExtensionSessionDevice)initWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider;
- (NSArray)streams;
- (NSSet)availableProperties;
- (id)cachedPropertyStateForProperty:(id)property;
- (id)cachedPropertyStatesForProperties:(id)properties;
- (id)description;
- (void)completeTransaction;
- (void)dealloc;
- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply;
- (void)setDeviceControlPID:(int)d reply:(id)reply;
- (void)setPropertyValues:(id)values reply:(id)reply;
- (void)unregister;
- (void)updatePropertyStates:(id)states;
- (void)updateStreamIDs:(id)ds;
@end

@implementation CMIOExtensionSessionDevice

+ (id)sessionDeviceWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider
{
  v5 = [objc_alloc(objc_opt_class()) initWithPropertyStates:states streamsStates:streamsStates provider:provider];

  return v5;
}

- (CMIOExtensionSessionDevice)initWithPropertyStates:(id)states streamsStates:(id)streamsStates provider:(id)provider
{
  v68 = *MEMORY[0x277D85DE8];
  if (!states || !streamsStates || !provider)
  {

    goto LABEL_9;
  }

  v58.receiver = self;
  v58.super_class = CMIOExtensionSessionDevice;
  v8 = [(CMIOExtensionSessionDevice *)&v58 init];
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  v8->_lock._os_unfair_lock_opaque = 0;
  lock = &v8->_lock;
  v10 = +[CMIOExtensionDevice internalProperties];
  v57[0] = MEMORY[0x277D85DD0];
  v57[1] = 3221225472;
  v57[2] = __76__CMIOExtensionSessionDevice_initWithPropertyStates_streamsStates_provider___block_invoke;
  v57[3] = &unk_27885C010;
  v57[4] = v10;
  v9->_availableProperties = [states keysOfEntriesPassingTest:v57];
  v9->_localizedName = [objc_msgSend(states objectForKeyedSubscript:{0x284358D98), "value"}];
  v11 = [states objectForKeyedSubscript:0x284358DB8];
  v9->_deviceID = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:{objc_msgSend(v11, "value")}];
  v9->_legacyDeviceID = [objc_msgSend(states objectForKeyedSubscript:{0x284358DD8), "value"}];
  v9->_manufacturer = [objc_msgSend(states objectForKeyedSubscript:{@"4cc_lmak_glob_0000", "value"}];
  v9->_modelID = [objc_msgSend(states objectForKeyedSubscript:{@"CMIOExtensionPropertyDeviceModel", "value"}];
  v9->_runningSomewhere = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358E18), "value"), "BOOLValue"}];
  v9->_streamIDs = [objc_msgSend(states objectForKeyedSubscript:{0x284358DF8), "value"}];
  p_streamIDs = &v9->_streamIDs;
  v9->_specialDeviceType = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{@"CMIOExtensionPropertyDeviceSpecialDeviceType", "value"), "intValue"}];
  v9->_deviceControlPID = [objc_msgSend(objc_msgSend(states objectForKeyedSubscript:{0x284358E58), "value"), "intValue"}];
  v13 = [objc_msgSend(states objectForKeyedSubscript:{@"4cc_cfds_glob_0000", "value"}];
  if (v13)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v13 length] == 1)
        {
          buf[0] = 0;
          [v13 getBytes:buf length:1];
          LOBYTE(v13) = buf[0];
          goto LABEL_18;
        }

        if ([v13 length] == 4)
        {
          *buf = 0;
          [v13 getBytes:buf length:4];
          LOBYTE(v13) = *buf != 0;
          goto LABEL_18;
        }
      }

      LOBYTE(v13) = 0;
      goto LABEL_18;
    }

    LOBYTE(v13) = [v13 BOOLValue];
  }

LABEL_18:
  objc_storeWeak(&v9->_provider, provider);
  v9->_propertyStates = [states mutableCopy];
  v9->_streams = objc_opt_new();
  v9->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionDevice: ID %@, legacy: %@>", v9->_deviceID, v9->_legacyDeviceID];
  if (v13)
  {
    v16 = [*p_streamIDs count];
    if (v16 != 2)
    {
      v49 = CMIOLog(v16, v17);
      if (v49 && os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:];
      }

      goto LABEL_69;
    }

    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 1;
    while (1)
    {
      v22 = v21;
      v23 = [streamsStates objectForKeyedSubscript:{objc_msgSend(*p_streamIDs, "objectAtIndexedSubscript:", v18)}];
      if (!v23)
      {
        isKindOfClass = CMIOLog(0, v24);
        if (isKindOfClass)
        {
          v29 = isKindOfClass;
          isKindOfClass = os_log_type_enabled(isKindOfClass, OS_LOG_TYPE_ERROR);
          if (isKindOfClass)
          {
            v51 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
            v30 = [*p_streamIDs objectAtIndexedSubscript:v18];
            *buf = 136315906;
            v61 = v51;
            v62 = 1024;
            v63 = 832;
            v64 = 2080;
            v65 = "[CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:]";
            v66 = 2114;
            v67 = v30;
            _os_log_error_impl(&dword_22EA08000, v29, OS_LOG_TYPE_ERROR, "%s:%d:%s missing stream properties for %{public}@", buf, 0x26u);
          }
        }

        goto LABEL_38;
      }

      v25 = v23;
      isKindOfClass = [objc_msgSend(v23 objectForKeyedSubscript:{@"4cc_cfac_glob_0000", "value"}];
      if (isKindOfClass)
      {
        v28 = isKindOfClass;
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          isKindOfClass = [v28 BOOLValue];
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_36;
          }
        }

        else
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_36;
          }

          if ([v28 length] == 1)
          {
            buf[0] = 0;
            isKindOfClass = [v28 getBytes:buf length:1];
            if ((buf[0] & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else
          {
            isKindOfClass = [v28 length];
            if (isKindOfClass != 4 || (*buf = 0, isKindOfClass = [v28 getBytes:buf length:4], !*buf))
            {
LABEL_36:
              if (!v20)
              {
                isKindOfClass = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:v25 provider:provider];
                v20 = isKindOfClass;
              }

              goto LABEL_38;
            }
          }
        }

        if (!v19)
        {
          isKindOfClass = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:v25 provider:provider];
          v19 = isKindOfClass;
        }
      }

LABEL_38:
      v21 = 0;
      v18 = 1;
      if ((v22 & 1) == 0)
      {
        if (v19 && v20)
        {
          v31 = v19;
          v14 = v9;
          v32 = [CMIOExtensionSessionDualStream sessionDualStreamWithPrimaryStream:v20 secondaryStream:v31];
          v33 = [provider registerStream:v32 streamID:{objc_msgSend(objc_msgSend(v20, "streamID"), "UUIDString")}];
          if (v33)
          {
            v33 = [provider registerStream:v32 streamID:{objc_msgSend(objc_msgSend(v31, "streamID"), "UUIDString")}];
            if (v33)
            {
              os_unfair_lock_lock(lock);
              [(NSMutableArray *)v9->_streams addObject:v32];
              os_unfair_lock_unlock(lock);
            }
          }

          goto LABEL_57;
        }

        v50 = CMIOLog(isKindOfClass, v27);
        if (v50 && os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:];
        }

LABEL_69:

LABEL_9:
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid argument"];
        return 0;
      }
    }
  }

  v14 = v9;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v35 = *p_streamIDs;
  v33 = [v35 countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v33)
  {
    v36 = v33;
    v37 = *v54;
    do
    {
      v38 = 0;
      do
      {
        if (*v54 != v37)
        {
          objc_enumerationMutation(v35);
        }

        v39 = *(*(&v53 + 1) + 8 * v38);
        v40 = [streamsStates objectForKeyedSubscript:v39];
        if (v40)
        {
          v42 = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:v40 provider:provider];
          if ([provider registerStream:v42 streamID:v39])
          {
            os_unfair_lock_lock(lock);
            [(NSMutableArray *)v14->_streams addObject:v42];
            os_unfair_lock_unlock(lock);
          }
        }

        else
        {
          v43 = CMIOLog(0, v41);
          if (v43)
          {
            v44 = v43;
            if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
            {
              v45 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
              *buf = 136315906;
              v61 = v45;
              v62 = 1024;
              v63 = 894;
              v64 = 2080;
              v65 = "[CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:]";
              v66 = 2114;
              v67 = v39;
              _os_log_error_impl(&dword_22EA08000, v44, OS_LOG_TYPE_ERROR, "%s:%d:%s missing stream properties for %{public}@", buf, 0x26u);
            }
          }
        }

        ++v38;
      }

      while (v36 != v38);
      v33 = [v35 countByEnumeratingWithState:&v53 objects:v59 count:16];
      v36 = v33;
    }

    while (v33);
  }

LABEL_57:
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream initWithPropertyStates:provider:];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v46 = CMIOLog(v33, v34);
    if (v46)
    {
      v47 = v46;
      if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
      {
        v48 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        *buf = 136315906;
        v61 = v48;
        v62 = 1024;
        v63 = 910;
        v64 = 2080;
        v65 = "[CMIOExtensionSessionDevice initWithPropertyStates:streamsStates:provider:]";
        v66 = 2112;
        v67 = v14;
        _os_log_impl(&dword_22EA08000, v47, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  return v14;
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
        v9 = 917;
        v10 = 2080;
        v11 = "[CMIOExtensionSessionDevice dealloc]";
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  v5.receiver = self;
  v5.super_class = CMIOExtensionSessionDevice;
  [(CMIOExtensionSessionDevice *)&v5 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (void)updatePropertyStates:(id)states
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 940;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionDevice updatePropertyStates:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  if ([states count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_propertyStates addEntriesFromDictionary:states];
    os_unfair_lock_unlock(&self->_lock);
    v7 = [states objectForKeyedSubscript:0x284358E18];
    if (v7)
    {
      v8 = [objc_msgSend(v7 "value")];
      [(CMIOExtensionSessionDevice *)self setRunningSomewhere:v8];
      [objc_loadWeak(&self->_delegate) device:self runningSomewhereChanged:v8];
    }

    v9 = [states objectForKeyedSubscript:0x284358E58];
    if (v9)
    {
      v10 = [objc_msgSend(v9 "value")];
      [(CMIOExtensionSessionDevice *)self setDeviceControlPID:v10];
      [objc_loadWeak(&self->_delegate) device:self deviceControlPIDChanged:v10];
    }

    [objc_loadWeak(&self->_delegate) device:self propertiesChanged:states];
  }
}

- (void)updateStreamIDs:(id)ds
{
  selfCopy = self;
  v51 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    self = CMIOLog(self, a2);
    if (self)
    {
      selfCopy2 = self;
      self = os_log_type_enabled(&self->super, OS_LOG_TYPE_DEFAULT);
      if (self)
      {
        *buf = 136316162;
        v42 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v43 = 1024;
        v44 = 973;
        v45 = 2080;
        v46 = "[CMIOExtensionSessionDevice updateStreamIDs:]";
        v47 = 2112;
        v48 = selfCopy;
        v49 = 2112;
        dsCopy = ds;
        _os_log_impl(&dword_22EA08000, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, streamIDs %@", buf, 0x30u);
      }
    }
  }

  if (ds)
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:ds];
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:selfCopy->_streamIDs];
    streamIDs = selfCopy->_streamIDs;
    selfCopy->_streamIDs = ds;

    v29 = v7;
    v9 = [v7 mutableCopy];
    [v9 minusSet:v6];
    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = *v36;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = [objc_loadWeak(&selfCopy->_provider) unregisterStreamID:*(*(&v35 + 1) + 8 * i)];
          if (v15)
          {
            v16 = v15;
            os_unfair_lock_lock(&selfCopy->_lock);
            [(NSMutableArray *)selfCopy->_streams removeObject:v16];
            os_unfair_lock_unlock(&selfCopy->_lock);
            delegate = [v16 delegate];
            v12 = 1;
            [v16 setInvalidated:1];
            [delegate streamHasBeenInvalidated:v16];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
      if (v12)
      {
        os_unfair_lock_lock(&selfCopy->_lock);
        v18 = [(NSMutableArray *)selfCopy->_streams copy];
        os_unfair_lock_unlock(&selfCopy->_lock);
        [objc_loadWeak(&selfCopy->_delegate) device:selfCopy availableStreamsChanged:v18];
      }
    }

    v19 = [v6 mutableCopy];
    [v19 minusSet:v29];
    Weak = objc_loadWeak(&selfCopy->_provider);
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v32;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v32 != v23)
          {
            objc_enumerationMutation(v19);
          }

          v25 = *(*(&v31 + 1) + 8 * j);
          hostContext = [Weak hostContext];
          v30[0] = MEMORY[0x277D85DD0];
          v30[1] = 3221225472;
          v30[2] = __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke;
          v30[3] = &unk_27885C120;
          v30[4] = Weak;
          v30[5] = v25;
          v30[6] = selfCopy;
          [hostContext streamPropertyStatesWithStreamID:v25 properties:0 reply:v30];
        }

        v22 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v27 = CMIOLog(self, a2);
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionDevice updateStreamIDs:];
    }
  }
}

void __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = CMIOLog(a1, a2);
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v5 = [CMIOExtensionSessionStream sessionStreamWithPropertyStates:a2 provider:*(a1 + 32)];
    if ([*(a1 + 32) registerStream:v5 streamID:*(a1 + 40)])
    {
      os_unfair_lock_lock((*(a1 + 48) + 8));
      [*(*(a1 + 48) + 40) addObject:v5];
      v6 = [*(*(a1 + 48) + 40) copy];
      os_unfair_lock_unlock((*(a1 + 48) + 8));
      if (v6)
      {
        [objc_loadWeak((*(a1 + 48) + 16)) device:*(a1 + 48) availableStreamsChanged:v6];
      }
    }
  }
}

- (void)unregister
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  streams = [(CMIOExtensionSessionDevice *)self streams];
  v4 = [(NSArray *)streams countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(streams);
        }

        [objc_loadWeak(&self->_provider) unregisterStreamID:{objc_msgSend(objc_msgSend(*(*(&v8 + 1) + 8 * v7++), "streamID"), "UUIDString")}];
      }

      while (v5 != v7);
      v5 = [(NSArray *)streams countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (NSArray)streams
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
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
        v24 = 1111;
        v25 = 2080;
        v26 = "[CMIOExtensionSessionDevice cachedPropertyStatesForProperties:]";
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
        v19 = 1143;
        v20 = 2080;
        v21 = "[CMIOExtensionSessionDevice propertyStatesForProperties:reply:]";
        v22 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    if (!availableProperties)
    {
      availableProperties = self->_availableProperties;
    }

    uUIDString = [(NSUUID *)self->_deviceID UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __64__CMIOExtensionSessionDevice_propertyStatesForProperties_reply___block_invoke;
    v13[3] = &unk_27885C038;
    v13[4] = self;
    v13[5] = reply;
    [v10 devicePropertyStatesWithDeviceID:uUIDString properties:availableProperties reply:v13];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid session";
    (*(reply + 2))(reply, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }
}

uint64_t __64__CMIOExtensionSessionDevice_propertyStatesForProperties_reply___block_invoke(uint64_t a1, uint64_t a2)
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
        v19 = 1165;
        v20 = 2080;
        v21 = "[CMIOExtensionSessionDevice setPropertyValues:reply:]";
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
    uUIDString = [(NSUUID *)self->_deviceID UUIDString];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __54__CMIOExtensionSessionDevice_setPropertyValues_reply___block_invoke;
    v13[3] = &unk_27885C060;
    v13[4] = reply;
    [v10 setDevicePropertyValuesWithDeviceID:uUIDString propertyValues:values reply:v13];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid session";
    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }
}

- (void)setDeviceControlPID:(int)d reply:(id)reply
{
  v5 = *&d;
  v27 = *MEMORY[0x277D85DE8];
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
        *buf = 136316163;
        v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v19 = 1024;
        v20 = 1179;
        v21 = 2080;
        v22 = "[CMIOExtensionSessionDevice setDeviceControlPID:reply:]";
        v23 = 2112;
        selfCopy = self;
        v25 = 1025;
        v26 = v5;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %{private}d", buf, 0x2Cu);
      }
    }
  }

  hostContext = [objc_loadWeak(&self->_provider) hostContext];
  if (hostContext)
  {
    v10 = hostContext;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithInt:", v5), 0x284358E58}];
    uUIDString = [(NSUUID *)self->_deviceID UUIDString];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke;
    v14[3] = &unk_27885C060;
    v14[4] = reply;
    [v10 setDevicePropertyValuesWithDeviceID:uUIDString propertyValues:v11 reply:v14];
  }

  else
  {
    v13 = *MEMORY[0x277CCA590];
    v15 = *MEMORY[0x277CCA450];
    v16 = @"Invalid session";
    (*(reply + 2))(reply, [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v16, &v15, 1)}]);
  }
}

uint64_t __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = CMIOLog(a1, a2);
    if (v3)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke_cold_1();
      }
    }
  }

  return (*(*(a1 + 32) + 16))();
}

- (void)completeTransaction
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)initWithPropertyStates:streamsStates:provider:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)initWithPropertyStates:streamsStates:provider:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)updateStreamIDs:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __46__CMIOExtensionSessionDevice_updateStreamIDs___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __56__CMIOExtensionSessionDevice_setDeviceControlPID_reply___block_invoke_cold_1()
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