@interface CMIOExtensionSessionProvider
+ (CMIOExtensionSessionProvider)sessionProviderWithEndpoint:(id)endpoint delegate:(id)delegate;
- (BOOL)registerStream:(id)stream streamID:(id)d;
- (CMIOExtensionSessionProvider)initWithEndpoint:(id)endpoint delegate:(id)delegate;
- (NSArray)devices;
- (NSSet)availableProperties;
- (NSString)bundleID;
- (NSString)description;
- (id)cachedPropertyStateForProperty:(id)property;
- (id)cachedPropertyStatesForProperties:(id)properties;
- (id)unregisterStreamID:(id)d;
- (void)dealloc;
- (void)extension:(id)extension availableDevicesChanged:(id)changed;
- (void)extension:(id)extension availableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds;
- (void)extension:(id)extension devicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states;
- (void)extension:(id)extension didFailWithError:(id)error;
- (void)extension:(id)extension pluginPropertiesChanged:(id)changed;
- (void)extension:(id)extension pullSampleWithStreamID:(id)d reply:(id)reply;
- (void)extension:(id)extension receivedSampleWithStreamID:(id)d sample:(id)sample;
- (void)extension:(id)extension streamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states;
- (void)extension:(id)extension streamScheduledOutputChangedWithStreamID:(id)d scheduledOutput:(id)output;
- (void)extensionHasBeenInvalidated:(id)invalidated;
- (void)propertyStatesForProperties:(id)availableProperties reply:(id)reply;
- (void)refreshExtensionConnection;
- (void)setBundleID:(id)d;
- (void)setPropertyValues:(id)values reply:(id)reply;
@end

@implementation CMIOExtensionSessionProvider

+ (CMIOExtensionSessionProvider)sessionProviderWithEndpoint:(id)endpoint delegate:(id)delegate
{
  v4 = [objc_alloc(objc_opt_class()) initWithEndpoint:endpoint delegate:delegate];

  return v4;
}

- (CMIOExtensionSessionProvider)initWithEndpoint:(id)endpoint delegate:(id)delegate
{
  v31 = *MEMORY[0x277D85DE8];
  if (!endpoint || MEMORY[0x2318F1BC0](endpoint, a2) != MEMORY[0x277D86478])
  {

    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = @"Invalid argument - endpoint";
LABEL_4:
    [v7 raise:v8 format:v9];
    return 0;
  }

  v22.receiver = self;
  v22.super_class = CMIOExtensionSessionProvider;
  v12 = [(CMIOExtensionSessionProvider *)&v22 init];
  v10 = v12;
  if (!v12)
  {
    return v10;
  }

  v12->_lock._os_unfair_lock_opaque = 0;
  v13 = xpc_connection_create_from_endpoint(endpoint);
  if (!v13)
  {

    v7 = MEMORY[0x277CBEAD8];
    v8 = *MEMORY[0x277CBE660];
    v9 = @"Invalid connection";
    goto LABEL_4;
  }

  v14 = v13;
  v10->_hostContext = [[CMIOExtensionProviderHostContext alloc] initWithConnection:v13 delegate:v10];
  xpc_release(v14);
  objc_storeWeak(&v10->_delegate, delegate);
  v10->_deviceIDs = objc_opt_new();
  v10->_devicesMap = objc_opt_new();
  v10->_streamsMap = objc_opt_new();
  v10->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionSessionProvider> provider bundleID %@ endpoint %p", objc_msgSend(delegate, "copyProviderBundleID"), endpoint];
  hostContext = v10->_hostContext;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke;
  v21[3] = &unk_27885C148;
  v21[4] = v10;
  v16 = [(CMIOExtensionProviderHostContext *)hostContext pluginStates:v21];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream initWithPropertyStates:provider:];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v18 = CMIOLog(v16, v17);
    if (v18)
    {
      v19 = v18;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        *buf = 136315906;
        v24 = v20;
        v25 = 1024;
        v26 = 1314;
        v27 = 2080;
        v28 = "[CMIOExtensionSessionProvider initWithEndpoint:delegate:]";
        v29 = 2112;
        v30 = v10;
        _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  return v10;
}

void __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  v58 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v6 = CMIOLog(a1, a2);
    if (v6)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke_cold_1();
      }
    }

    *(*(v5 + 32) + 88) = 1;
  }

  else
  {
    v10 = +[CMIOExtensionProvider internalProperties];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke_2;
    v48[3] = &unk_27885C010;
    v48[4] = v10;
    *(*(v5 + 32) + 40) = [a2 keysOfEntriesPassingTest:v48];
    v42 = a2;
    v11 = [a2 objectForKeyedSubscript:0x284358D78];
    v12 = *(*(v5 + 32) + 48);
    *(*(v5 + 32) + 48) = [v11 value];

    v13 = objc_alloc_init(MEMORY[0x277CBEA60]);
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v14 = *(*(v5 + 32) + 48);
    v15 = [v14 countByEnumeratingWithState:&v44 objects:v57 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v45;
      v43 = v5;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v45 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v44 + 1) + 8 * i);
          v20 = [a3 objectForKeyedSubscript:v19];
          if (v20)
          {
            v22 = [[CMIOExtensionSessionDevice alloc] initWithPropertyStates:v20 streamsStates:a4 provider:*(v5 + 32)];
            os_unfair_lock_lock((*(v5 + 32) + 8));
            v23 = [*(*(v5 + 32) + 56) objectForKey:{-[NSUUID UUIDString](-[CMIOExtensionSessionDevice deviceID](v22, "deviceID"), "UUIDString")}];
            if (!v23)
            {
              v24 = *(v5 + 32);
              v25 = v16;
              v26 = v13;
              v27 = v17;
              v28 = a3;
              v29 = v14;
              v30 = a4;
              v31 = *(v24 + 56);
              v32 = [(NSUUID *)[(CMIOExtensionSessionDevice *)v22 deviceID] UUIDString];
              v33 = v31;
              a4 = v30;
              v14 = v29;
              a3 = v28;
              v17 = v27;
              v13 = v26;
              v16 = v25;
              v5 = v43;
              [v33 setObject:v22 forKey:v32];
            }

            v13 = [objc_msgSend(*(*(v5 + 32) + 56) "allValues")];
            os_unfair_lock_unlock((*(v5 + 32) + 8));
            if (v23)
            {
              v36 = CMIOLog(v34, v35);
              if (v36)
              {
                v37 = v36;
                if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
                {
                  v40 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
                  *buf = 136315906;
                  v50 = v40;
                  v51 = 1024;
                  v52 = 1291;
                  v53 = 2080;
                  v54 = "[CMIOExtensionSessionProvider initWithEndpoint:delegate:]_block_invoke";
                  v55 = 2114;
                  v56 = v22;
                  _os_log_error_impl(&dword_22EA08000, v37, OS_LOG_TYPE_ERROR, "%s:%d:%s Mapping error for %{public}@", buf, 0x26u);
                }
              }
            }
          }

          else
          {
            v38 = CMIOLog(0, v21);
            if (v38)
            {
              v39 = v38;
              if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
              {
                v41 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
                *buf = 136315906;
                v50 = v41;
                v51 = 1024;
                v52 = 1273;
                v53 = 2080;
                v54 = "[CMIOExtensionSessionProvider initWithEndpoint:delegate:]_block_invoke";
                v55 = 2114;
                v56 = v19;
                _os_log_error_impl(&dword_22EA08000, v39, OS_LOG_TYPE_ERROR, "%s:%d:%s missing device properties for %{public}@", buf, 0x26u);
              }
            }
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v44 objects:v57 count:16];
      }

      while (v16);
    }

    *(*(v5 + 32) + 32) = [v42 mutableCopy];
    [objc_loadWeak((*(v5 + 32) + 16)) provider:*(v5 + 32) initializeDevices:v13 properties:*(*(v5 + 32) + 32)];
    if (v13)
    {
      [objc_loadWeak((*(v5 + 32) + 16)) provider:*(v5 + 32) availableDevicesChanged:v13];
    }
  }
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
        v9 = 1321;
        v10 = 2080;
        v11 = "[CMIOExtensionSessionProvider dealloc]";
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  v5.receiver = self;
  v5.super_class = CMIOExtensionSessionProvider;
  [(CMIOExtensionSessionProvider *)&v5 dealloc];
}

- (NSString)description
{
  v2 = self->_description;

  return v2;
}

- (NSString)bundleID
{
  v2 = self->_bundleID;

  return v2;
}

- (void)setBundleID:(id)d
{
  bundleID = self->_bundleID;
  self->_bundleID = d;
}

- (void)refreshExtensionConnection
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
      v7 = 1024;
      v8 = 1362;
      v9 = 2080;
      v10 = "[CMIOExtensionSessionProvider refreshExtensionConnection]";
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s ", &v5, 0x1Cu);
    }
  }

  [(CMIOExtensionProviderHostContext *)self->_hostContext refreshExtensionConnection];
  self->_invalidated = 0;
}

- (NSArray)devices
{
  os_unfair_lock_lock(&self->_lock);
  allValues = [(NSMutableDictionary *)self->_devicesMap allValues];
  os_unfair_lock_unlock(&self->_lock);
  return allValues;
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
        v24 = 1397;
        v25 = 2080;
        v26 = "[CMIOExtensionSessionProvider cachedPropertyStatesForProperties:]";
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
        *buf = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1429;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider propertyStatesForProperties:reply:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (!availableProperties)
  {
    availableProperties = self->_availableProperties;
  }

  hostContext = self->_hostContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__CMIOExtensionSessionProvider_propertyStatesForProperties_reply___block_invoke;
  v10[3] = &unk_27885C038;
  v10[4] = self;
  v10[5] = reply;
  [(CMIOExtensionProviderHostContext *)hostContext pluginPropertyStatesForProperties:availableProperties reply:v10];
}

uint64_t __66__CMIOExtensionSessionProvider_propertyStatesForProperties_reply___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    os_unfair_lock_lock((*(a1 + 32) + 8));
    [*(*(a1 + 32) + 32) addEntriesFromDictionary:a2];
    os_unfair_lock_unlock((*(a1 + 32) + 8));
  }

  v4 = *(*(a1 + 40) + 16);

  return v4();
}

- (void)setPropertyValues:(id)values reply:(id)reply
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
        *buf = 136316162;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1446;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider setPropertyValues:reply:]";
        v17 = 2112;
        selfCopy = self;
        v19 = 2112;
        valuesCopy = values;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyValues %@", buf, 0x30u);
      }
    }
  }

  hostContext = self->_hostContext;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __56__CMIOExtensionSessionProvider_setPropertyValues_reply___block_invoke;
  v10[3] = &unk_27885C060;
  v10[4] = reply;
  [(CMIOExtensionProviderHostContext *)hostContext setPluginPropertyValues:values reply:v10];
}

- (BOOL)registerStream:(id)stream streamID:(id)d
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
        v14 = 136316162;
        v15 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v16 = 1024;
        v17 = 1460;
        v18 = 2080;
        v19 = "[CMIOExtensionSessionProvider registerStream:streamID:]";
        v20 = 2112;
        selfCopy = self;
        v22 = 2112;
        streamCopy = stream;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, stream %@", &v14, 0x30u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v9 = [(NSMutableDictionary *)self->_streamsMap objectForKey:d];
  if (v9)
  {
    os_unfair_lock_unlock(&self->_lock);
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionProvider registerStream:streamID:];
    }
  }

  else
  {
    [(NSMutableDictionary *)self->_streamsMap setObject:stream forKey:d];
    os_unfair_lock_unlock(&self->_lock);
  }

  return v9 == 0;
}

- (id)unregisterStreamID:(id)d
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
        v9 = 136316162;
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v11 = 1024;
        v12 = 1479;
        v13 = 2080;
        v14 = "[CMIOExtensionSessionProvider unregisterStreamID:]";
        v15 = 2112;
        selfCopy = self;
        v17 = 2112;
        dCopy = d;
        _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, stream %@", &v9, 0x30u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v7 = [(NSMutableDictionary *)self->_streamsMap objectForKey:d];
  [(NSMutableDictionary *)self->_streamsMap removeObjectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (void)extension:(id)extension didFailWithError:(id)error
{
  v6 = CMIOLog(self, a2);
  if (v6 && os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionSessionProvider extension:didFailWithError:];
  }

  [objc_loadWeak(&self->_delegate) provider:self didFailWithError:error];
}

- (void)extensionHasBeenInvalidated:(id)invalidated
{
  v14 = *MEMORY[0x277D85DE8];
  if (CMIOModuleLogLevel_once != -1)
  {
    [CMIOExtensionSessionStream dealloc];
  }

  if (CMIOModuleLogLevel_cmioLevel >= 1)
  {
    v4 = CMIOLog(self, a2);
    if (v4)
    {
      v5 = v4;
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v6 = 136315906;
        v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v8 = 1024;
        v9 = 1500;
        v10 = 2080;
        v11 = "[CMIOExtensionSessionProvider extensionHasBeenInvalidated:]";
        v12 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v6, 0x26u);
      }
    }
  }

  self->_invalidated = 1;
  [objc_loadWeak(&self->_delegate) providerHasBeenInvalidated:self];
}

- (void)extension:(id)extension pluginPropertiesChanged:(id)changed
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
        v13 = 1508;
        v14 = 2080;
        v15 = "[CMIOExtensionSessionProvider extension:pluginPropertiesChanged:]";
        v16 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v10, 0x26u);
      }
    }
  }

  if ([changed count])
  {
    os_unfair_lock_lock(&self->_lock);
    [(NSMutableDictionary *)self->_propertyStates addEntriesFromDictionary:changed];
    os_unfair_lock_unlock(&self->_lock);
    [objc_loadWeak(&self->_delegate) provider:self propertiesChanged:changed];
  }

  else
  {
    v9 = CMIOLog(0, v8);
    if (v9)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionSessionProvider extension:pluginPropertiesChanged:];
      }
    }
  }
}

- (void)extension:(id)extension availableDevicesChanged:(id)changed
{
  selfCopy = self;
  v48 = *MEMORY[0x277D85DE8];
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
        *buf = 136315906;
        v41 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v42 = 1024;
        v43 = 1527;
        v44 = 2080;
        v45 = "[CMIOExtensionSessionProvider extension:availableDevicesChanged:]";
        v46 = 2112;
        v47 = selfCopy;
        _os_log_impl(&dword_22EA08000, &selfCopy2->super, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  if (changed)
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:changed];
    v8 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:selfCopy->_deviceIDs];
    deviceIDs = selfCopy->_deviceIDs;
    selfCopy->_deviceIDs = changed;

    v10 = [v8 mutableCopy];
    v28 = v7;
    [v10 minusSet:v7];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v35;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          os_unfair_lock_lock(&selfCopy->_lock);
          v17 = [(NSMutableDictionary *)selfCopy->_devicesMap objectForKey:v16];
          [(NSMutableDictionary *)selfCopy->_devicesMap removeObjectForKey:v16];
          os_unfair_lock_unlock(&selfCopy->_lock);
          if (v17)
          {
            [v17 unregister];
            delegate = [v17 delegate];
            v13 = 1;
            [v17 setInvalidated:1];
            [delegate deviceHasBeenInvalidated:v17];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v12);
      if (v13)
      {
        os_unfair_lock_lock(&selfCopy->_lock);
        allValues = [(NSMutableDictionary *)selfCopy->_devicesMap allValues];
        os_unfair_lock_unlock(&selfCopy->_lock);
        [objc_loadWeak(&selfCopy->_delegate) provider:selfCopy availableDevicesChanged:allValues];
      }
    }

    v20 = [v28 mutableCopy];
    [v20 minusSet:v8];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v31;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v31 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = *(*(&v30 + 1) + 8 * j);
          hostContext = selfCopy->_hostContext;
          v29[0] = MEMORY[0x277D85DD0];
          v29[1] = 3221225472;
          v29[2] = __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke;
          v29[3] = &unk_27885C170;
          v29[4] = selfCopy;
          [(CMIOExtensionProviderHostContext *)hostContext deviceStatesWithDeviceID:v25 reply:v29];
        }

        v22 = [v20 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v22);
    }
  }

  else
  {
    v27 = CMIOLog(self, a2);
    if (v27 && os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionSessionProvider extension:availableDevicesChanged:];
    }
  }
}

void __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = CMIOLog(a1, a2);
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_1();
      }
    }
  }

  else
  {
    v6 = [[CMIOExtensionSessionDevice alloc] initWithPropertyStates:a2 streamsStates:a3 provider:*(a1 + 32)];
    os_unfair_lock_lock((*(a1 + 32) + 8));
    v7 = [*(*(a1 + 32) + 56) objectForKey:{-[NSUUID UUIDString](-[CMIOExtensionSessionDevice deviceID](v6, "deviceID"), "UUIDString")}];
    v8 = *(a1 + 32);
    if (v7)
    {
      os_unfair_lock_unlock((v8 + 8));
      v11 = CMIOLog(v9, v10);
      if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_2();
      }
    }

    else
    {
      [*(v8 + 56) setObject:v6 forKey:{-[NSUUID UUIDString](-[CMIOExtensionSessionDevice deviceID](v6, "deviceID"), "UUIDString")}];
      v12 = [*(*(a1 + 32) + 56) allValues];
      os_unfair_lock_unlock((*(a1 + 32) + 8));
      [objc_loadWeak((*(a1 + 32) + 16)) provider:*(a1 + 32) availableDevicesChanged:v12];
    }
  }
}

- (void)extension:(id)extension devicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1621;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider extension:devicePropertiesChangedWithDeviceID:propertyStates:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_devicesMap objectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 updatePropertyStates:states];
  }
}

- (void)extension:(id)extension availableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1637;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider extension:availableStreamsChangedWithDeviceID:streamIDs:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_devicesMap objectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 updateStreamIDs:ds];
  }
}

- (void)extension:(id)extension streamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1653;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider extension:streamPropertiesChangedWithStreamID:propertyStates:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 updatePropertyStates:states streamID:d];
  }
}

- (void)extension:(id)extension receivedSampleWithStreamID:(id)d sample:(id)sample
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1669;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider extension:receivedSampleWithStreamID:sample:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 receivedSample:sample streamID:d];
  }
}

- (void)extension:(id)extension pullSampleWithStreamID:(id)d reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
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
        *buf = 136315906;
        *&buf[4] = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v17 = 1024;
        v18 = 1685;
        v19 = 2080;
        v20 = "[CMIOExtensionSessionProvider extension:pullSampleWithStreamID:reply:]";
        v21 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    *buf = 0;
    v13 = 0;
    v11 = [v10 copySample:&v13 streamID:d error:buf];
    (*(reply + 2))(reply, v11, v13, *buf);
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v14 = *MEMORY[0x277CCA450];
    v15 = @"Invalid stream";
    (*(reply + 2))(reply, 0, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v15, &v14, 1)}]);
  }
}

- (void)extension:(id)extension streamScheduledOutputChangedWithStreamID:(id)d scheduledOutput:(id)output
{
  v19 = *MEMORY[0x277D85DE8];
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
        v11 = 136315906;
        v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
        v13 = 1024;
        v14 = 1709;
        v15 = 2080;
        v16 = "[CMIOExtensionSessionProvider extension:streamScheduledOutputChangedWithStreamID:scheduledOutput:]";
        v17 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v11, 0x26u);
      }
    }
  }

  os_unfair_lock_lock(&self->_lock);
  v10 = [(NSMutableDictionary *)self->_streamsMap objectForKey:d];
  os_unfair_lock_unlock(&self->_lock);
  if (v10)
  {
    [v10 receivedScheduledOutput:output streamID:d];
  }
}

void __58__CMIOExtensionSessionProvider_initWithEndpoint_delegate___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)registerStream:streamID:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)extension:didFailWithError:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)extension:pluginPropertiesChanged:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)extension:availableDevicesChanged:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionSession.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __66__CMIOExtensionSessionProvider_extension_availableDevicesChanged___block_invoke_cold_2()
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