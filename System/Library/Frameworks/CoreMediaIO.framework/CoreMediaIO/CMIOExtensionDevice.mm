@interface CMIOExtensionDevice
+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source;
+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source;
+ (id)internalProperties;
+ (id)internalWritableProperties;
- (BOOL)addStream:(CMIOExtensionStream *)stream error:(NSError *)outError;
- (BOOL)didRegister:(id *)register;
- (BOOL)removeStream:(CMIOExtensionStream *)stream error:(NSError *)outError;
- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source;
- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source;
- (NSArray)streams;
- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties;
- (id)_clientQueue_setAndRemoveInternalPropertyValuesForClient:(id)client propertyValues:(id)values error:(id *)error;
- (id)description;
- (void)dealloc;
- (void)didUnregister;
- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates;
@end

@implementation CMIOExtensionDevice

+ (id)internalProperties
{
  if (internalProperties_onceToken_246 != -1)
  {
    +[CMIOExtensionDevice internalProperties];
  }

  return internalProperties_gInternalDeviceProperties;
}

void *__41__CMIOExtensionDevice_internalProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358D98, 0x284358DB8, 0x284358DD8, 0x284358DF8, 0x284358E18, 0x284358E58, 0}];
  internalProperties_gInternalDeviceProperties = result;
  return result;
}

+ (id)internalWritableProperties
{
  if (internalWritableProperties_onceToken != -1)
  {
    +[CMIOExtensionDevice internalWritableProperties];
  }

  return internalWritableProperties_gInternalDeviceProperties;
}

void *__49__CMIOExtensionDevice_internalWritableProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358E58, 0}];
  internalWritableProperties_gInternalDeviceProperties = result;
  return result;
}

+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source
{
  v6 = [objc_alloc(objc_opt_class()) initWithLocalizedName:localizedName deviceID:deviceID legacyDeviceID:legacyDeviceID source:source];

  return v6;
}

+ (CMIOExtensionDevice)deviceWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source
{
  v5 = [objc_alloc(objc_opt_class()) initWithLocalizedName:localizedName deviceID:deviceID source:source];

  return v5;
}

- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID legacyDeviceID:(NSString *)legacyDeviceID source:(id)source
{
  v12.receiver = self;
  v12.super_class = CMIOExtensionDevice;
  v10 = [(CMIOExtensionDevice *)&v12 init];
  if (v10)
  {
    v10->_localizedName = [(NSString *)localizedName copy];
    v10->_deviceID = [(NSUUID *)deviceID copy];
    v10->_legacyDeviceID = [(NSString *)legacyDeviceID copy];
    objc_storeWeak(&v10->_source, source);
    v10->_streamsLock._os_unfair_lock_opaque = 0;
    v10->_streams = objc_opt_new();
    v10->_changedPropertiesLock._os_unfair_lock_opaque = 0;
    v10->_changedProperties = objc_opt_new();
    v10->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionDevice: name %@, ID %@>", v10->_localizedName, v10->_deviceID];
  }

  return v10;
}

- (CMIOExtensionDevice)initWithLocalizedName:(NSString *)localizedName deviceID:(NSUUID *)deviceID source:(id)source
{
  v9 = cmio_VDCAssistantDeviceUIDForUSBAssistantNSUUID(deviceID);

  return [(CMIOExtensionDevice *)self initWithLocalizedName:localizedName deviceID:deviceID legacyDeviceID:v9 source:source];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CMIOExtensionDevice;
  [(CMIOExtensionDevice *)&v3 dealloc];
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (properties)
  {
    if ([properties containsObject:0x284358D98])
    {
      v6 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_localizedName attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
      [dictionary setObject:v6 forKey:0x284358D98];
    }

    if (([properties containsObject:0x284358DB8] & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_localizedName attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [dictionary setObject:v7 forKey:0x284358D98];
  }

  v8 = [[CMIOExtensionPropertyState alloc] initWithValue:[(NSUUID *)self->_deviceID UUIDString] attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
  [dictionary setObject:v8 forKey:0x284358DB8];

  if (!properties)
  {
    v10 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_legacyDeviceID attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [dictionary setObject:v10 forKey:0x284358DD8];

    goto LABEL_13;
  }

LABEL_8:
  if ([properties containsObject:0x284358DD8])
  {
    v9 = [[CMIOExtensionPropertyState alloc] initWithValue:self->_legacyDeviceID attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];
    [dictionary setObject:v9 forKey:0x284358DD8];
  }

  if ([properties containsObject:0x284358DF8])
  {
LABEL_13:
    v11 = objc_opt_new();
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    streams = [(CMIOExtensionDevice *)self streams];
    v13 = [(NSArray *)streams countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        v16 = 0;
        do
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(streams);
          }

          [v11 addObject:{objc_msgSend(objc_msgSend(*(*(&v23 + 1) + 8 * v16++), "streamID"), "UUIDString")}];
        }

        while (v14 != v16);
        v14 = [(NSArray *)streams countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v14);
    }

    v17 = [[CMIOExtensionPropertyState alloc] initWithValue:v11 attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];

    [dictionary setObject:v17 forKey:0x284358DF8];
    if (!properties)
    {
      goto LABEL_22;
    }
  }

  if (![properties containsObject:0x284358E18])
  {
    goto LABEL_23;
  }

LABEL_22:
  v18 = [CMIOExtensionPropertyState alloc];
  v19 = -[CMIOExtensionPropertyState initWithValue:attributes:](v18, "initWithValue:attributes:", [MEMORY[0x277CCABB0] numberWithBool:self->_runningSomewhere], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
  [dictionary setObject:v19 forKey:0x284358E18];

  if (properties)
  {
LABEL_23:
    if (![properties containsObject:0x284358E58])
    {
      goto LABEL_25;
    }
  }

  v20 = [CMIOExtensionPropertyState alloc];
  v21 = -[CMIOExtensionPropertyState initWithValue:](v20, "initWithValue:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_deviceControlPID]);
  [dictionary setObject:v21 forKey:0x284358E58];

LABEL_25:
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
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 1;
  v8 = [CMIOExtensionDevice internalWritableProperties:client];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __101__CMIOExtensionDevice__clientQueue_setAndRemoveInternalPropertyValuesForClient_propertyValues_error___block_invoke;
  v16[3] = &unk_27885B8C0;
  v16[4] = v8;
  v16[5] = &v17;
  [values enumerateKeysAndObjectsUsingBlock:v16];
  if (v18[3])
  {
    valuesCopy = values;
  }

  else
  {
    valuesCopy = [values mutableCopy];
    v10 = objc_opt_new();
    v11 = [values objectForKey:0x284358E58];
    v12 = v11;
    if (v11)
    {
      if ([v11 intValue] < 1)
      {
        v13 = -1;
      }

      else
      {
        v13 = [client pid];
      }

      self->_deviceControlPID = v13;
      [valuesCopy removeObjectForKey:0x284358E58];
      v14 = [[CMIOExtensionPropertyState alloc] initWithValue:v12];
      [v10 setObject:v14 forKey:0x284358E58];
    }

    [(CMIOExtensionDevice *)self notifyPropertiesChanged:v10];
  }

  _Block_object_dispose(&v17, 8);
  return valuesCopy;
}

void *__101__CMIOExtensionDevice__clientQueue_setAndRemoveInternalPropertyValuesForClient_propertyValues_error___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) containsObject:a2];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }

  return result;
}

- (BOOL)didRegister:(id *)register
{
  v39 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_streamsLock);
  v5 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_streamsLock);
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v33 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v32 + 1) + 8 * v10);
      v31 = 0;
      v12 = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
      if ((v12 & 1) == 0)
      {
        break;
      }

      [v6 addObject:v11];
      if (v8 == ++v10)
      {
        v8 = [v5 countByEnumeratingWithState:&v32 objects:v38 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }

    v19 = CMIOLog(v12, v13);
    if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice didRegister:];
      if (!register)
      {
LABEL_21:
        v23 = 0u;
        v24 = 0u;
        v25 = 0u;
        v26 = 0u;
        v14 = [v6 countByEnumeratingWithState:&v23 objects:v36 count:16];
        if (v14)
        {
          v20 = *v24;
          do
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v24 != v20)
              {
                objc_enumerationMutation(v6);
              }

              [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
            }

            v14 = [v6 countByEnumeratingWithState:&v23 objects:v36 count:16];
          }

          while (v14);
        }

        goto LABEL_28;
      }
    }

    else if (!register)
    {
      goto LABEL_21;
    }

    *register = v31;
    goto LABEL_21;
  }

LABEL_9:
  LOBYTE(v14) = 1;
  self->_isRegistered = 1;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v15 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      for (j = 0; j != v16; ++j)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v27 + 1) + 8 * j) setParent:self];
      }

      v16 = [v5 countByEnumeratingWithState:&v27 objects:v37 count:16];
    }

    while (v16);
    LOBYTE(v14) = 1;
  }

LABEL_28:

  return v14;
}

- (void)didUnregister
{
  v30 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_streamsLock);
  v3 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_streamsLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v17 objects:v29 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v18;
    *&v5 = 136315906;
    v15 = v5;
    do
    {
      v8 = 0;
      do
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v17 + 1) + 8 * v8);
        v16 = 0;
        sharedProvider = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider sharedProvider];
        if ((sharedProvider & 1) == 0)
        {
          v12 = CMIOLog(sharedProvider, v11);
          if (v12)
          {
            v13 = v12;
            if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
            {
              v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *buf = v15;
              v22 = v14;
              v23 = 1024;
              v24 = 1546;
              v25 = 2080;
              v26 = "[CMIOExtensionDevice didUnregister]";
              v27 = 2114;
              v28 = v16;
              _os_log_error_impl(&dword_22EA08000, v13, OS_LOG_TYPE_ERROR, "%s:%d:%s unregisterStream error %{public}@", buf, 0x26u);
            }
          }
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v3 countByEnumeratingWithState:&v17 objects:v29 count:16];
    }

    while (v6);
  }

  self->_isRegistered = 0;
}

- (NSArray)streams
{
  os_unfair_lock_lock(&self->_streamsLock);
  v3 = [(NSMutableArray *)self->_streams copy];
  os_unfair_lock_unlock(&self->_streamsLock);

  return v3;
}

- (BOOL)addStream:(CMIOExtensionStream *)stream error:(NSError *)outError
{
  v40 = *MEMORY[0x277D85DE8];
  isKindOfClass = CMIOLogLevel(1, a2);
  if (isKindOfClass)
  {
    v9 = isKindOfClass;
    isKindOfClass = os_log_type_enabled(isKindOfClass, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      *buf = 136316162;
      v31 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v32 = 1024;
      v33 = 1567;
      v34 = 2080;
      v35 = "[CMIOExtensionDevice addStream:error:]";
      v36 = 2112;
      selfCopy2 = self;
      v38 = 2112;
      v39 = stream;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!stream || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v18 = CMIOLog(isKindOfClass, v8);
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice addStream:error:];
      if (!outError)
      {
        return 0;
      }
    }

    else if (!outError)
    {
      return 0;
    }

    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277CCA590];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"Invalid stream";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v29;
    v17 = &v28;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_streamsLock);
  if (([(NSMutableArray *)self->_streams containsObject:stream]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_streamsLock);
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice addStream:error:];
      if (outError)
      {
        goto LABEL_10;
      }
    }

    else if (outError)
    {
LABEL_10:
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277CCA590];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"Stream already included";
      v15 = MEMORY[0x277CBEAC0];
      v16 = &v27;
      v17 = &v26;
LABEL_15:
      v19 = [v13 errorWithDomain:v14 code:-50 userInfo:{objc_msgSend(v15, "dictionaryWithObjects:forKeys:count:", v16, v17, 1, v26, v27, v28, v29)}];
      result = 0;
      *outError = v19;
      return result;
    }

    return 0;
  }

  [(NSMutableArray *)self->_streams addObject:stream];
  os_unfair_lock_unlock(&self->_streamsLock);
  v23 = CMIOLog(v21, v22);
  if (v23)
  {
    v24 = v23;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v25 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v31 = v25;
      v32 = 1024;
      v33 = 1595;
      v34 = 2080;
      v35 = "[CMIOExtensionDevice addStream:error:]";
      v36 = 2114;
      selfCopy2 = self;
      v38 = 2114;
      v39 = stream;
      _os_log_impl(&dword_22EA08000, v24, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
    }
  }

  if (!self->_isRegistered)
  {
    return 1;
  }

  if ([+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")])
  {
    [(CMIOExtensionStream *)stream setParent:self];
    return 1;
  }

  os_unfair_lock_lock(&self->_streamsLock);
  [(NSMutableArray *)self->_streams removeObject:stream];
  os_unfair_lock_unlock(&self->_streamsLock);
  return 0;
}

- (BOOL)removeStream:(CMIOExtensionStream *)stream error:(NSError *)outError
{
  v43 = *MEMORY[0x277D85DE8];
  isKindOfClass = CMIOLogLevel(1, a2);
  if (isKindOfClass)
  {
    v9 = isKindOfClass;
    isKindOfClass = os_log_type_enabled(isKindOfClass, OS_LOG_TYPE_DEFAULT);
    if (isKindOfClass)
    {
      *buf = 136316162;
      v34 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v35 = 1024;
      v36 = 1613;
      v37 = 2080;
      v38 = "[CMIOExtensionDevice removeStream:error:]";
      v39 = 2112;
      selfCopy2 = self;
      v41 = 2112;
      v42 = stream;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!stream || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v18 = CMIOLog(isKindOfClass, v8);
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice removeStream:error:];
      if (!outError)
      {
        return 0;
      }
    }

    else if (!outError)
    {
      return 0;
    }

    v19 = MEMORY[0x277CCA9B8];
    v20 = *MEMORY[0x277CCA590];
    v31 = *MEMORY[0x277CCA450];
    v32 = @"Invalid stream";
    v21 = MEMORY[0x277CBEAC0];
    v22 = &v32;
    v23 = &v31;
LABEL_16:
    v24 = [v19 errorWithDomain:v20 code:-50 userInfo:{objc_msgSend(v21, "dictionaryWithObjects:forKeys:count:", v22, v23, 1, v29, v30, v31, v32)}];
    v17 = 0;
    *outError = v24;
    return v17;
  }

  os_unfair_lock_lock(&self->_streamsLock);
  if (([(NSMutableArray *)self->_streams containsObject:stream]& 1) == 0)
  {
    os_unfair_lock_unlock(&self->_streamsLock);
    v27 = CMIOLog(v25, v26);
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionDevice removeStream:error:];
      if (outError)
      {
        goto LABEL_20;
      }
    }

    else if (outError)
    {
LABEL_20:
      v19 = MEMORY[0x277CCA9B8];
      v20 = *MEMORY[0x277CCA590];
      v29 = *MEMORY[0x277CCA450];
      v30 = @"Stream not present";
      v21 = MEMORY[0x277CBEAC0];
      v22 = &v30;
      v23 = &v29;
      goto LABEL_16;
    }

    return 0;
  }

  [(NSMutableArray *)self->_streams removeObject:stream];
  os_unfair_lock_unlock(&self->_streamsLock);
  v12 = CMIOLog(v10, v11);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v34 = v14;
      v35 = 1024;
      v36 = 1641;
      v37 = 2080;
      v38 = "[CMIOExtensionDevice removeStream:error:]";
      v39 = 2114;
      selfCopy2 = self;
      v41 = 2114;
      v42 = stream;
      _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
    }
  }

  if (!self->_isRegistered)
  {
    return 1;
  }

  v15 = +[CMIOExtensionProvider sharedProvider];
  deviceID = self->_deviceID;
  v17 = 1;
  [v15 unregisterStream:stream withDeviceID:deviceID notify:1 error:outError];
  return v17;
}

- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates
{
  os_unfair_lock_lock(&self->_changedPropertiesLock);
  [(NSMutableDictionary *)self->_changedProperties addEntriesFromDictionary:propertyStates];
  os_unfair_lock_unlock(&self->_changedPropertiesLock);
  v5 = [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__CMIOExtensionDevice_notifyPropertiesChanged___block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_async(v5, block);
}

void __47__CMIOExtensionDevice_notifyPropertiesChanged___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 32) copy];
  [*(*(a1 + 32) + 32) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 24));
  if ([v2 count])
  {
    [+[CMIOExtensionProvider sharedProvider](CMIOExtensionProvider "sharedProvider")];
  }
}

- (void)didRegister:.cold.1()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)addStream:error:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)addStream:error:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)removeStream:error:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)removeStream:error:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

@end