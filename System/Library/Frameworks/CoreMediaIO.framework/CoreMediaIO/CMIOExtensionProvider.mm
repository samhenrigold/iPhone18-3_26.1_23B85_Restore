@interface CMIOExtensionProvider
+ (CMIOExtensionProvider)providerWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue;
+ (id)internalProperties;
+ (id)proprietaryDefaultsDomainForAuditToken:(id *)token;
+ (id)sharedProvider;
+ (void)ignoreSIGTERM;
+ (void)startServiceWithProvider:(CMIOExtensionProvider *)provider;
+ (void)stopServiceWithProvider:(id)provider;
- (BOOL)addDevice:(CMIOExtensionDevice *)device error:(NSError *)outError;
- (BOOL)registerDevice:(id)device error:(id *)error;
- (BOOL)registerStream:(id)stream withDeviceID:(id)d error:(id *)error;
- (BOOL)removeDevice:(CMIOExtensionDevice *)device error:(NSError *)outError;
- (BOOL)unregisterDevice:(id)device error:(id *)error;
- (BOOL)unregisterStream:(id)stream withDeviceID:(id)d notify:(BOOL)notify error:(id *)error;
- (CMIOExtensionProvider)initWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue;
- (NSArray)connectedClients;
- (NSArray)devices;
- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties;
- (id)description;
- (int)_clientQueue_pendingStartStreamCountForClient:(id)client streamID:(id)d;
- (int64_t)authorizationStatusForClient:(id)client mediaType:(unsigned int)type;
- (void)_addAvailablePropertyStatesForDevice:(id)device toDictionary:(id)dictionary;
- (void)_clientQueue_decrementPendingStreamStartCountForClientID:(id)d streamID:(id)iD;
- (void)_clientQueue_incrementPendingStartStreamCountForClientID:(id)d streamID:(id)iD;
- (void)_clientQueue_notifyDevicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states;
- (void)_clientQueue_notifyIsRunningSomewhereForStream:(id)stream;
- (void)_clientQueue_notifyStreamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states;
- (void)_clientQueue_removePendingStartStreamCountForClient:(id)client streamID:(id)d;
- (void)_clientQueue_sendSampleForStream:(id)stream sample:(id)sample;
- (void)_clientQueue_startStreamForClientID:(id)d streamID:(id)iD requestAudio:(BOOL)audio requestVideo:(BOOL)video reply:(id)reply;
- (void)_performDeferredStreamStartsForClient:(id)client streamID:(id)d requestVideo:(BOOL)video requestAudio:(BOOL)audio;
- (void)availableDevicePropertiesForClientID:(id)d deviceID:(id)iD reply:(id)reply;
- (void)availablePluginPropertiesForClientID:(id)d reply:(id)reply;
- (void)availableStreamPropertiesForClientID:(id)d streamID:(id)iD reply:(id)reply;
- (void)beginProviderContextRegistration:(id)registration;
- (void)captureAsyncStillImageForClientID:(id)d streamID:(id)iD uniqueID:(int64_t)uniqueID options:(id)options reply:(id)reply;
- (void)consumeSampleBufferForStream:(id)stream client:(id)client reply:(id)reply;
- (void)dealloc;
- (void)devicePropertyStatesForClientID:(id)d deviceID:(id)iD properties:(id)properties reply:(id)reply;
- (void)deviceStatesForClientID:(id)d deviceID:(id)iD reply:(id)reply;
- (void)enqueueReactionEffectForClientID:(id)d streamID:(id)iD reactionType:(id)type reply:(id)reply;
- (void)finishProviderContextRegistration:(id)registration;
- (void)notifyAvailableDevicesChanged:(id)changed;
- (void)notifyAvailableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds;
- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates;
- (void)notifyScheduledOutputChangedForStream:(id)stream scheduledOutput:(id)output;
- (void)pluginPropertyStatesForClientID:(id)d properties:(id)properties reply:(id)reply;
- (void)pluginStatesForClientID:(id)d reply:(id)reply;
- (void)removeAllProviderContexts;
- (void)removeProviderContext:(id)context;
- (void)requestAccessForClient:(id)client mediaType:(unsigned int)type completionHandler:(id)handler;
- (void)setConnectedClients:(id)clients;
- (void)setDevicePropertyValuesForClientID:(id)d deviceID:(id)iD propertyValues:(id)values reply:(id)reply;
- (void)setPluginPropertyValuesForClientID:(id)d propertyValues:(id)values reply:(id)reply;
- (void)setStreamPropertyValuesForClientID:(id)d streamID:(id)iD propertyValues:(id)values reply:(id)reply;
- (void)startStreamForClientID:(id)d streamID:(id)iD reply:(id)reply;
- (void)stopStreamForClientID:(id)d streamID:(id)iD reply:(id)reply;
- (void)streamPropertyStatesForClientID:(id)d streamID:(id)iD properties:(id)properties reply:(id)reply;
- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds;
@end

@implementation CMIOExtensionProvider

+ (CMIOExtensionProvider)providerWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue
{
  v4 = [objc_alloc(objc_opt_class()) initWithSource:source clientQueue:clientQueue];

  return v4;
}

- (CMIOExtensionProvider)initWithSource:(id)source clientQueue:(dispatch_queue_t)clientQueue
{
  v36 = *MEMORY[0x277D85DE8];
  v23.receiver = self;
  v23.super_class = CMIOExtensionProvider;
  v6 = [(CMIOExtensionProvider *)&v23 init];
  v8 = v6;
  if (v6)
  {
    v9 = CMIOLog(v6, v7);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316418;
        v25 = v11;
        v26 = 1024;
        v27 = 1693;
        v28 = 2080;
        v29 = "[CMIOExtensionProvider initWithSource:clientQueue:]";
        v30 = 2048;
        v31 = v8;
        v32 = 2048;
        v33 = source;
        v34 = 2048;
        v35 = clientQueue;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s initializing provider %p with source %p : queue %p", buf, 0x3Au);
      }
    }

    objc_storeWeak(&v8->_source, source);
    if (clientQueue)
    {
      TargetingWorkloopWithPriority = clientQueue;
    }

    else
    {
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      TargetingWorkloopWithPriority = FigDispatchQueueCreateTargetingWorkloopWithPriority();
    }

    v8->_clientQueue = TargetingWorkloopWithPriority;
    v8->_contextsMapLock._os_unfair_lock_opaque = 0;
    v8->_contextsRegistration = objc_opt_new();
    v8->_contextsMap = objc_opt_new();
    v8->_pendingCountMap = objc_opt_new();
    v8->_connectedClientsLock._os_unfair_lock_opaque = 0;
    v8->_connectedClients = objc_opt_new();
    v8->_devicesMapLock._os_unfair_lock_opaque = 0;
    v8->_devicesMap = objc_opt_new();
    v8->_streamsMapLock._os_unfair_lock_opaque = 0;
    v8->_streamsMap = objc_opt_new();
    v8->_devicesLock._os_unfair_lock_opaque = 0;
    v8->_devices = objc_opt_new();
    v8->_changedDeviceIDsLock._os_unfair_lock_opaque = 0;
    v8->_changedDeviceIDs = 0;
    v8->_changedStreamIDsLock._os_unfair_lock_opaque = 0;
    v8->_changedStreamIDs = 0;
    v8->_changedPropertiesLock._os_unfair_lock_opaque = 0;
    v8->_changedProperties = objc_opt_new();
    internalDaemon = [+[CMIOExtensionProviderServer sharedServer](CMIOExtensionProviderServer internalDaemon];
    if (internalDaemon)
    {
      v15 = CMIOLog(internalDaemon, v14);
      if (v15)
      {
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProvider initWithSource:clientQueue:];
        }
      }
    }

    v8->_nonStreamingProxyFrontedExtensionPIDs = objc_opt_new();
    v8->_nonStreamingProxyFrontedExtensionPIDsHasChanged = 0;
    v8->_description = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"<CMIOExtensionProvider>"];
    if (gProvider)
    {

      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"There should be only one CMIOProvider per extension."];
      return 0;
    }

    else
    {
      gProvider = v8;
      v18 = CMIOLog(gProvider, v17);
      if (v18)
      {
        v19 = v18;
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v21 = gProvider;
          v22 = [gProvider retainCount];
          *buf = 136316162;
          v25 = v20;
          v26 = 1024;
          v27 = 1753;
          v28 = 2080;
          v29 = "[CMIOExtensionProvider initWithSource:clientQueue:]";
          v30 = 2048;
          v31 = v21;
          v32 = 1024;
          LODWORD(v33) = v22;
          _os_log_impl(&dword_22EA08000, v19, OS_LOG_TYPE_DEFAULT, "%s:%d:%s Retained and set gProvider to %p (retain count %d)", buf, 0x2Cu);
        }
      }
    }
  }

  return v8;
}

- (void)dealloc
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = CMIOLog(self, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 1766;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider dealloc]";
      v22 = 2048;
      v23 = gProvider;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc starting, shared provider reference %p", buf, 0x26u);
    }
  }

  gProvider = 0;

  v7 = CMIOLog(v5, v6);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136315650;
      v17 = v9;
      v18 = 1024;
      v19 = 1787;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider dealloc]";
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s calling [super dealloc]", buf, 0x1Cu);
    }
  }

  v15.receiver = self;
  v15.super_class = CMIOExtensionProvider;
  v10 = [(CMIOExtensionProvider *)&v15 dealloc];
  v12 = CMIOLog(v10, v11);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136315650;
      v17 = v14;
      v18 = 1024;
      v19 = 1790;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider dealloc]";
      _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s dealloc done", buf, 0x1Cu);
    }
  }
}

- (id)description
{
  v2 = self->_description;

  return v2;
}

+ (id)sharedProvider
{
  v17 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&gProviderLock);
  v2 = gProvider;
  os_unfair_lock_unlock(&gProviderLock);
  v4 = CMIOLogLevel(1, v3);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136316162;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v9 = 1024;
      v10 = 1808;
      v11 = 2080;
      v12 = "+[CMIOExtensionProvider sharedProvider]";
      v13 = 2048;
      v14 = v2;
      v15 = 1024;
      v16 = [v2 retainCount];
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s returning autoreleased global provider %p (its retain count is %d)", &v7, 0x2Cu);
    }
  }

  return v2;
}

+ (id)internalProperties
{
  if (internalProperties_onceToken_331 != -1)
  {
    +[CMIOExtensionProvider internalProperties];
  }

  return internalProperties_gInternalProviderProperties;
}

void *__43__CMIOExtensionProvider_internalProperties__block_invoke()
{
  result = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{0x284358D78, 0}];
  internalProperties_gInternalProviderProperties = result;
  return result;
}

+ (void)startServiceWithProvider:(CMIOExtensionProvider *)provider
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = +[CMIOExtensionProvider sharedProvider];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v8 = CMIOLog(mainBundle, v7);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 136316674;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v20 = 1024;
      v21 = 1835;
      v22 = 2080;
      v23 = "+[CMIOExtensionProvider startServiceWithProvider:]";
      v24 = 2048;
      v25 = provider;
      v26 = 2112;
      bundleIdentifier = [mainBundle bundleIdentifier];
      v28 = 2048;
      v29 = v5;
      v30 = 1024;
      v31 = [(CMIOExtensionProvider *)v5 retainCount];
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %p (%@), autoreleased global provider %p (its retain count is %d)", &v18, 0x40u);
    }
  }

  v10 = MEMORY[0x277CBE660];
  if (v5 != provider)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid provider."];
  }

  v11 = [mainBundle objectForInfoDictionaryKey:@"CMIOExtension"];
  if (!v11 || (v12 = v11, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![v12 count])
  {
    [MEMORY[0x277CBEAD8] raise:*v10 format:@"CMIOExtension information dictionary missing from the Info.plist."];
  }

  if (startServiceWithProvider__onceToken != -1)
  {
    +[CMIOExtensionProvider startServiceWithProvider:];
  }

  objc_autoreleasePoolPop(v4);
  v15 = CMIOLog(v13, v14);
  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 136315650;
      v19 = v17;
      v20 = 1024;
      v21 = 1865;
      v22 = 2080;
      v23 = "+[CMIOExtensionProvider startServiceWithProvider:]";
      _os_log_impl(&dword_22EA08000, v16, OS_LOG_TYPE_DEFAULT, "%s:%d:%s leaving", &v18, 0x1Cu);
    }
  }
}

uint64_t __50__CMIOExtensionProvider_startServiceWithProvider___block_invoke(uint64_t a1, uint64_t a2)
{
  CMIOPreferences(a1, a2);
  global_queue = dispatch_get_global_queue(21, 0);
  gSignalHandlerSource = dispatch_source_create(MEMORY[0x277D85D30], 0xFuLL, 0, global_queue);
  dispatch_source_set_event_handler(gSignalHandlerSource, &__block_literal_global_344);
  dispatch_activate(gSignalHandlerSource);
  v3 = +[CMIOExtensionProviderServer sharedServer];

  return [(CMIOExtensionProviderServer *)v3 start];
}

void __50__CMIOExtensionProvider_startServiceWithProvider___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = gIgnoreSIGTERM;
  v3 = CMIOLog(a1, a2);
  v4 = v3;
  if (v2 != 1)
  {
    if (v3 && os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = 1024;
      v8 = 1856;
      v9 = 2080;
      v10 = "+[CMIOExtensionProvider startServiceWithProvider:]_block_invoke";
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s SIGTERM signal received, exiting", &v5, 0x1Cu);
    }

    exit(0);
  }

  if (v3)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 136315650;
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = 1024;
      v8 = 1853;
      v9 = 2080;
      v10 = "+[CMIOExtensionProvider startServiceWithProvider:]_block_invoke_2";
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s SIGTERM signal received, but told to ignore", &v5, 0x1Cu);
    }
  }
}

+ (void)stopServiceWithProvider:(id)provider
{
  v52 = *MEMORY[0x277D85DE8];
  v4 = objc_autoreleasePoolPush();
  v5 = +[CMIOExtensionProvider sharedProvider];
  v7 = CMIOLog(v5, v6);
  if (v7)
  {
    v9 = v7;
    v7 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v40 = 136316418;
      v41 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v42 = 1024;
      v43 = 1872;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v46 = 2048;
      providerCopy2 = provider;
      v48 = 2048;
      v49 = v5;
      v50 = 1024;
      v51 = [v5 retainCount];
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %p, autoreleased global provider %p (its retain count is %d)", &v40, 0x36u);
    }
  }

  if (v5 != provider)
  {
    v7 = [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"Invalid provider."];
  }

  v10 = CMIOLog(v7, v8);
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v40 = 136315906;
      v41 = v12;
      v42 = 1024;
      v43 = 1877;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v46 = 2112;
      providerCopy2 = provider;
      _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d:%s removing all contexts from %@", &v40, 0x26u);
    }
  }

  removeAllProviderContexts = [provider removeAllProviderContexts];
  v15 = CMIOLog(removeAllProviderContexts, v14);
  if (v15)
  {
    v16 = v15;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = +[CMIOExtensionProviderServer sharedServer];
      v40 = 136315906;
      v41 = v17;
      v42 = 1024;
      v43 = 1879;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v46 = 2112;
      providerCopy2 = v18;
      _os_log_impl(&dword_22EA08000, v16, OS_LOG_TYPE_DEFAULT, "%s:%d:%s stopping shared server %@", &v40, 0x26u);
    }
  }

  stop = [+[CMIOExtensionProviderServer sharedServer](CMIOExtensionProviderServer stop];
  v21 = CMIOLog(stop, v20);
  if (v21)
  {
    v23 = v21;
    v21 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
    if (v21)
    {
      v24 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v25 = +[CMIOExtensionProviderServer sharedServer];
      v40 = 136315906;
      v41 = v24;
      v42 = 1024;
      v43 = 1881;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v46 = 2112;
      providerCopy2 = v25;
      _os_log_impl(&dword_22EA08000, v23, OS_LOG_TYPE_DEFAULT, "%s:%d:%s shared server %@ has been stopped", &v40, 0x26u);
    }
  }

  v26 = CMIOLog(v21, v22);
  if (v26)
  {
    v27 = v26;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v29 = [v5 retainCount];
      v40 = 136316162;
      v41 = v28;
      v42 = 1024;
      v43 = 1882;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      v46 = 2048;
      providerCopy2 = v5;
      v48 = 1024;
      LODWORD(v49) = v29;
      _os_log_impl(&dword_22EA08000, v27, OS_LOG_TYPE_DEFAULT, "%s:%d:%s releasing shared provider reference %p (its retain count is %d)", &v40, 0x2Cu);
    }
  }

  os_unfair_lock_lock(&gProviderLock);

  gProvider = 0;
  os_unfair_lock_unlock(&gProviderLock);
  v32 = CMIOLog(v30, v31);
  if (v32)
  {
    v33 = v32;
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v34 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v40 = 136315650;
      v41 = v34;
      v42 = 1024;
      v43 = 1890;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      _os_log_impl(&dword_22EA08000, v33, OS_LOG_TYPE_DEFAULT, "%s:%d:%s released and set shared provider reference to nil", &v40, 0x1Cu);
    }
  }

  objc_autoreleasePoolPop(v4);
  v37 = CMIOLog(v35, v36);
  if (v37)
  {
    v38 = v37;
    if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
    {
      v39 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v40 = 136315650;
      v41 = v39;
      v42 = 1024;
      v43 = 1892;
      v44 = 2080;
      v45 = "+[CMIOExtensionProvider stopServiceWithProvider:]";
      _os_log_impl(&dword_22EA08000, v38, OS_LOG_TYPE_DEFAULT, "%s:%d:%s leaving", &v40, 0x1Cu);
    }
  }
}

+ (void)ignoreSIGTERM
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = CMIOLog(self, a2);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 136315650;
      v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v6 = 1024;
      v7 = 1897;
      v8 = 2080;
      v9 = "+[CMIOExtensionProvider ignoreSIGTERM]";
      _os_log_impl(&dword_22EA08000, v3, OS_LOG_TYPE_DEFAULT, "%s:%d:%s will be ignoring the SIGTERM signal", &v4, 0x1Cu);
    }
  }

  gIgnoreSIGTERM = 1;
}

- (NSArray)connectedClients
{
  os_unfair_lock_lock(&self->_connectedClientsLock);
  v3 = self->_connectedClients;
  os_unfair_lock_unlock(&self->_connectedClientsLock);

  return v3;
}

- (void)setConnectedClients:(id)clients
{
  os_unfair_lock_lock(&self->_connectedClientsLock);
  connectedClients = self->_connectedClients;
  self->_connectedClients = clients;
  os_unfair_lock_unlock(&self->_connectedClientsLock);
}

- (NSArray)devices
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = CMIOLogLevel(1, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315906;
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v9 = 1024;
      v10 = 1931;
      v11 = 2080;
      v12 = "[CMIOExtensionProvider devices]";
      v13 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", &v7, 0x26u);
    }
  }

  os_unfair_lock_lock(&self->_devicesLock);
  v5 = [(NSMutableArray *)self->_devices copy];
  os_unfair_lock_unlock(&self->_devicesLock);
  return v5;
}

- (BOOL)addDevice:(CMIOExtensionDevice *)device error:(NSError *)outError
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
      v33 = 1945;
      v34 = 2080;
      v35 = "[CMIOExtensionProvider addDevice:error:]";
      v36 = 2112;
      selfCopy2 = self;
      v38 = 2112;
      v39 = device;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!device || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v18 = CMIOLog(isKindOfClass, v8);
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider addDevice:error:];
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
    v29 = @"Invalid device";
    v15 = MEMORY[0x277CBEAC0];
    v16 = &v29;
    v17 = &v28;
    goto LABEL_15;
  }

  os_unfair_lock_lock(&self->_devicesLock);
  if (([(NSMutableArray *)self->_devices containsObject:device]& 1) != 0)
  {
    os_unfair_lock_unlock(&self->_devicesLock);
    v12 = CMIOLog(v10, v11);
    if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider addDevice:error:];
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
      v27 = @"Device already included";
      v15 = MEMORY[0x277CBEAC0];
      v16 = &v27;
      v17 = &v26;
LABEL_15:
      v19 = [v13 errorWithDomain:v14 code:-50 userInfo:{objc_msgSend(v15, "dictionaryWithObjects:forKeys:count:", v16, v17, 1, v26, v27, v28, v29)}];
      result = 0;
      *outError = v19;
      return result;
    }
  }

  else
  {
    [(NSMutableArray *)self->_devices addObject:device];
    os_unfair_lock_unlock(&self->_devicesLock);
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
        v33 = 1966;
        v34 = 2080;
        v35 = "[CMIOExtensionProvider addDevice:error:]";
        v36 = 2114;
        selfCopy2 = self;
        v38 = 2114;
        v39 = device;
        _os_log_impl(&dword_22EA08000, v24, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
      }
    }

    if ([(CMIOExtensionProvider *)self registerDevice:device error:outError])
    {
      [(CMIOExtensionDevice *)device setParent:self];
      return 1;
    }

    os_unfair_lock_lock(&self->_devicesLock);
    [(NSMutableArray *)self->_devices removeObject:device];
    os_unfair_lock_unlock(&self->_devicesLock);
  }

  return 0;
}

- (BOOL)removeDevice:(CMIOExtensionDevice *)device error:(NSError *)outError
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
      v33 = 1990;
      v34 = 2080;
      v35 = "[CMIOExtensionProvider removeDevice:error:]";
      v36 = 2112;
      selfCopy2 = self;
      v38 = 2112;
      v39 = device;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  if (!device || (objc_opt_class(), isKindOfClass = objc_opt_isKindOfClass(), (isKindOfClass & 1) == 0))
  {
    v16 = CMIOLog(isKindOfClass, v8);
    if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider removeDevice:error:];
      if (!outError)
      {
        return 0;
      }
    }

    else if (!outError)
    {
      return 0;
    }

    v17 = MEMORY[0x277CCA9B8];
    v18 = *MEMORY[0x277CCA590];
    v28 = *MEMORY[0x277CCA450];
    v29 = @"Invalid device";
    v19 = MEMORY[0x277CBEAC0];
    v20 = &v29;
    v21 = &v28;
LABEL_15:
    v22 = [v17 errorWithDomain:v18 code:-50 userInfo:{objc_msgSend(v19, "dictionaryWithObjects:forKeys:count:", v20, v21, 1, v26, v27, v28, v29)}];
    result = 0;
    *outError = v22;
    return result;
  }

  os_unfair_lock_lock(&self->_devicesLock);
  if (([(NSMutableArray *)self->_devices containsObject:device]& 1) == 0)
  {
    os_unfair_lock_unlock(&self->_devicesLock);
    v25 = CMIOLog(v23, v24);
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider removeDevice:error:];
      if (outError)
      {
        goto LABEL_19;
      }
    }

    else if (outError)
    {
LABEL_19:
      v17 = MEMORY[0x277CCA9B8];
      v18 = *MEMORY[0x277CCA590];
      v26 = *MEMORY[0x277CCA450];
      v27 = @"Device not included";
      v19 = MEMORY[0x277CBEAC0];
      v20 = &v27;
      v21 = &v26;
      goto LABEL_15;
    }

    return 0;
  }

  [(NSMutableArray *)self->_devices removeObject:device];
  os_unfair_lock_unlock(&self->_devicesLock);
  v12 = CMIOLog(v10, v11);
  if (v12)
  {
    v13 = v12;
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v31 = v14;
      v32 = 1024;
      v33 = 2018;
      v34 = 2080;
      v35 = "[CMIOExtensionProvider removeDevice:error:]";
      v36 = 2114;
      selfCopy2 = self;
      v38 = 2114;
      v39 = device;
      _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@", buf, 0x30u);
    }
  }

  [(CMIOExtensionProvider *)self unregisterDevice:device error:outError];
  return 1;
}

- (void)notifyPropertiesChanged:(NSDictionary *)propertyStates
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v11 = 1024;
      v12 = 2026;
      v13 = 2080;
      v14 = "[CMIOExtensionProvider notifyPropertiesChanged:]";
      v15 = 2112;
      selfCopy = self;
      v17 = 2112;
      v18 = propertyStates;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, propertyStates %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_changedPropertiesLock);
  [(NSMutableDictionary *)self->_changedProperties addEntriesFromDictionary:propertyStates];
  os_unfair_lock_unlock(&self->_changedPropertiesLock);
  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__CMIOExtensionProvider_notifyPropertiesChanged___block_invoke;
  v8[3] = &unk_27885B938;
  v8[4] = self;
  v8[5] = propertyStates;
  dispatch_async(clientQueue, v8);
}

void __49__CMIOExtensionProvider_notifyPropertiesChanged___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 144));
  v2 = [*(*(a1 + 32) + 152) copy];
  [*(*(a1 + 32) + 152) removeAllObjects];
  os_unfair_lock_unlock((*(a1 + 32) + 144));
  if ([v2 count])
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v3 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
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
            objc_enumerationMutation(v3);
          }

          [*(*(&v8 + 1) + 8 * v7++) pluginPropertiesChanged:*(a1 + 40)];
        }

        while (v5 != v7);
        v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
      }

      while (v5);
    }
  }
}

- (int64_t)authorizationStatusForClient:(id)client mediaType:(unsigned int)type
{
  v4 = *&type;
  os_unfair_lock_lock(&self->_contextsMapLock);
  v7 = -[NSMutableDictionary objectForKey:](self->_contextsMap, "objectForKey:", [client clientID]);
  os_unfair_lock_unlock(&self->_contextsMapLock);
  if (!v7)
  {
    return 0;
  }

  clientInfo = [v7 clientInfo];

  return [clientInfo authorizationStatusForMediaType:v4];
}

- (void)requestAccessForClient:(id)client mediaType:(unsigned int)type completionHandler:(id)handler
{
  v6 = *&type;
  os_unfair_lock_lock(&self->_contextsMapLock);
  v9 = -[NSMutableDictionary objectForKey:](self->_contextsMap, "objectForKey:", [client clientID]);
  os_unfair_lock_unlock(&self->_contextsMapLock);
  if (v9)
  {
    clientInfo = [v9 clientInfo];

    [clientInfo requestAccessForMediaType:v6 reply:handler];
  }

  else
  {
    v11 = *(handler + 2);

    v11(handler, 0);
  }
}

- (void)removeAllProviderContexts
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = CMIOLogLevel(1, a2);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 2097;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider removeAllProviderContexts]";
      v22 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  if ([allValues count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:allValues];
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(&self->_contextsMapLock);
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(CMIOExtensionProvider *)self removeProviderContext:*(*(&v11 + 1) + 8 * v10++)];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

+ (id)proprietaryDefaultsDomainForAuditToken:(id *)token
{
  v110 = *MEMORY[0x277D85DE8];
  v93 = 0;
  if (!SystemStatusLibraryCore(0))
  {
    return @"unknown";
  }

  if (proprietaryDefaultsDomainForAuditToken__onceToken != -1)
  {
    +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
  }

  v4 = *&token->var0[4];
  *atoken = *token->var0;
  *&atoken[16] = v4;
  v88 = audit_token_to_pid(atoken);
  v89 = [MEMORY[0x277CCABB0] numberWithInt:v88];
  v5 = [sProprietaryDefaultsDomainsByPID objectForKeyedSubscript:v89];
  v7 = v5;
  if (!v5)
  {
    v12 = [MEMORY[0x277D46F48] handleForIdentifier:objc_msgSend(MEMORY[0x277CCABB0] error:{"numberWithInt:", v88), &v93}];
    if (v12)
    {
      v14 = [objc_msgSend(objc_msgSend(v12 "bundle")];
      if (v14)
      {
        v16 = CMIOLog(v14, v15);
        v17 = v16;
        if (v16 && os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136315907;
          *&atoken[4] = v18;
          *&atoken[12] = 1024;
          *&atoken[14] = 2187;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v88;
          _os_log_impl(&dword_22EA08000, v17, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] client is a secure capture extension, looking up containing app", atoken, 0x22u);
        }

        v19 = *&token->var0[4];
        *atoken = *token->var0;
        *&atoken[16] = v19;
        v21 = [MEMORY[0x277CC1E90] bundleRecordForAuditToken:atoken error:&v93];
        if (v21)
        {
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();
          if (isKindOfClass)
          {
            v24 = [objc_msgSend(v21 "containingBundleRecord")];
            *atoken = 0;
            *&atoken[8] = atoken;
            *&atoken[16] = 0x3052000000;
            *&atoken[24] = __Block_byref_object_copy_;
            v25 = getSTExecutableIdentityClass_softClass;
            *&atoken[32] = __Block_byref_object_dispose_;
            *&atoken[40] = getSTExecutableIdentityClass_softClass;
            if (!getSTExecutableIdentityClass_softClass)
            {
              *&v94 = MEMORY[0x277D85DD0];
              *(&v94 + 1) = 3221225472;
              *&v95 = __getSTExecutableIdentityClass_block_invoke;
              *(&v95 + 1) = &unk_27885BC18;
              *&v96 = atoken;
              __getSTExecutableIdentityClass_block_invoke(&v94);
              v25 = *(*&atoken[8] + 40);
            }

            _Block_object_dispose(atoken, 8);
            v26 = [[v25 alloc] initWithApplicationBundleIdentifier:v24];
            goto LABEL_25;
          }

          v26 = CMIOLog(isKindOfClass, v23);
          v30 = v26;
          if (!v26)
          {
            goto LABEL_36;
          }

          v26 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
          if (v26)
          {
            +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
          }
        }

        else
        {
          v26 = CMIOLog(0, v20);
          if (v26)
          {
            v26 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
            if (v26)
            {
              +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
            }
          }
        }

        goto LABEL_35;
      }
    }

    else
    {
      v14 = CMIOLog(0, v13);
      if (v14)
      {
        v14 = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
        if (v14)
        {
          +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
        }
      }
    }

    if (sResponsibleIdentityForAuditTokenIsSupported == 1)
    {
      STExecutableIdentityResolverClass = getSTExecutableIdentityResolverClass();
      v29 = *&token->var0[4];
      *atoken = *token->var0;
      *&atoken[16] = v29;
      v26 = [STExecutableIdentityResolverClass responsibleIdentityForAuditToken:atoken];
LABEL_25:
      v30 = v26;
LABEL_36:
      v33 = CMIOLog(v26, v27);
      v34 = v33;
      if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v35 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *atoken = 136316163;
        *&atoken[4] = v35;
        *&atoken[12] = 1024;
        *&atoken[14] = 2220;
        *&atoken[18] = 2080;
        *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
        *&atoken[28] = 1025;
        *&atoken[30] = v88;
        *&atoken[34] = 2113;
        *&atoken[36] = v30;
        _os_log_impl(&dword_22EA08000, v34, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] resolvedIdentity: %{private}@", atoken, 0x2Cu);
      }

      bundleIdentifier = [v30 bundleIdentifier];
      if (!bundleIdentifier)
      {
        executablePath = [v30 executablePath];
        v39 = executablePath;
        if (!executablePath)
        {
          goto LABEL_45;
        }

        v40 = CMIOLog(executablePath, v38);
        v41 = v40;
        if (v40 && os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          v42 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316163;
          *&atoken[4] = v42;
          *&atoken[12] = 1024;
          *&atoken[14] = 2225;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v88;
          *&atoken[34] = 2113;
          *&atoken[36] = v39;
          _os_log_impl(&dword_22EA08000, v41, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] falling back to using last part of the executable's path %{private}@", atoken, 0x2Cu);
        }

        executablePath = [-[__CFString componentsSeparatedByString:](v39 componentsSeparatedByString:{@"/", "lastObject"}];
        bundleIdentifier = executablePath;
        if (!executablePath)
        {
LABEL_45:
          v43 = CMIOLog(executablePath, v38);
          if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            +[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:];
          }

          bundleIdentifier = @"unknown";
        }
      }

      v44 = [(__CFString *)bundleIdentifier isEqualToString:@"avconferenced"];
      if (v44 & 1) != 0 || (v44 = [(__CFString *)bundleIdentifier isEqualToString:@"com.apple.avconferenced"], (v44) || (v44 = [(__CFString *)bundleIdentifier isEqualToString:@"com.apple.InCallService"], (v44) || (v44 = [(__CFString *)bundleIdentifier isEqualToString:@"com.apple.FaceTime.FaceTimeNotificationCenterService"], (v44) || (v44 = [(__CFString *)bundleIdentifier isEqualToString:@"com.apple.TelephonyUtilities"], v44))
      {
        v46 = CMIOLog(v44, v45);
        v47 = v46;
        if (v46)
        {
          v87 = @"com.apple.FaceTime";
          if (!os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_60;
          }

          v48 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316419;
          *&atoken[4] = v48;
          *&atoken[12] = 1024;
          *&atoken[14] = 2242;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v88;
          *&atoken[34] = 2113;
          *&atoken[36] = bundleIdentifier;
          *&atoken[44] = 2113;
          *&atoken[46] = @"com.apple.FaceTime";
          goto LABEL_57;
        }

        v49 = @"com.apple.FaceTime";
        goto LABEL_59;
      }

      v83 = [(__CFString *)bundleIdentifier isEqualToString:@"com.cisco.webexmeetingsapp"];
      if (v83 & 1) != 0 || (v83 = [(__CFString *)bundleIdentifier isEqualToString:@"Cisco-Systems-Spark"], (v83) || (v83 = [(__CFString *)bundleIdentifier isEqualToString:@"Cisco-Systems.Spark"], v83))
      {
        v85 = CMIOLog(v83, v84);
        v47 = v85;
        if (!v85)
        {
          v49 = @"com.webex.meetingmanager";
LABEL_59:
          v87 = v49;
          goto LABEL_60;
        }

        v87 = @"com.webex.meetingmanager";
        if (os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT))
        {
          v86 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *atoken = 136316419;
          *&atoken[4] = v86;
          *&atoken[12] = 1024;
          *&atoken[14] = 2254;
          *&atoken[18] = 2080;
          *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
          *&atoken[28] = 1025;
          *&atoken[30] = v88;
          *&atoken[34] = 2113;
          *&atoken[36] = bundleIdentifier;
          *&atoken[44] = 2113;
          *&atoken[46] = @"com.webex.meetingmanager";
LABEL_57:
          _os_log_impl(&dword_22EA08000, v47, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] remapping preference domain %{private}@ to %{private}@", atoken, 0x36u);
        }
      }

      else
      {
        v87 = bundleIdentifier;
      }

LABEL_60:
      v50 = sMostRecentProprietaryDefaultDomainLookupTimeByPID;
      v92 = sPostTerminationTimoutForClearingEntryFromProprietaryDefaultsDomainsByPID;
      v90 = sProprietaryDefaultsDomainsByPID;
      obj = [sProprietaryDefaultsDomainsByPID allKeys];
      v96 = 0u;
      v97 = 0u;
      v94 = 0u;
      v95 = 0u;
      v51 = [obj countByEnumeratingWithState:&v94 objects:atoken count:16];
      if (!v51)
      {
LABEL_89:
        [sProprietaryDefaultsDomainsByPID setObject:v87 forKeyedSubscript:v89];
        v77 = [sMostRecentProprietaryDefaultDomainLookupTimeByPID setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithLongLong:", FigGetUpTimeNanoseconds()), v89}];
        v79 = CMIOLog(v77, v78);
        v80 = v79;
        if (!v79 || !os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          return v87;
        }

        v81 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *atoken = 136316163;
        *&atoken[4] = v81;
        *&atoken[12] = 1024;
        *&atoken[14] = 2263;
        *&atoken[18] = 2080;
        *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
        *&atoken[28] = 1025;
        *&atoken[30] = v88;
        *&atoken[34] = 2113;
        v11 = v87;
        *&atoken[36] = v87;
        _os_log_impl(&dword_22EA08000, v80, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] preference domain %{private}@", atoken, 0x2Cu);
        return v11;
      }

      UpTimeNanoseconds = 0;
      v53 = *v95;
LABEL_62:
      v54 = 0;
      while (1)
      {
        if (*v95 != v53)
        {
          objc_enumerationMutation(obj);
        }

        v55 = *(*(&v94 + 1) + 8 * v54);
        intValue = [v55 intValue];
        if (intValue < 2)
        {
LABEL_68:
          if (!UpTimeNanoseconds)
          {
            UpTimeNanoseconds = FigGetUpTimeNanoseconds();
          }

          v61 = [objc_msgSend(v50 objectForKeyedSubscript:{v55), "longLongValue"}];
          v62 = (UpTimeNanoseconds - v61) / 0x3B9ACA00uLL;
          v64 = CMIOLog(v61, v63);
          v65 = v64;
          if (v92 >= v62)
          {
            if (v64 && os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v67 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *buf = 136316163;
              v101 = v67;
              v102 = 1024;
              v103 = 2286;
              v104 = 2080;
              v105 = "cmioep_pruneStalePIDsFromDictionary";
              v106 = 1025;
              v107 = intValue;
              v108 = 2048;
              v109 = v62;
              _os_log_impl(&dword_22EA08000, v65, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] keeping stale pid because it was accessed %lld seconds ago", buf, 0x2Cu);
            }
          }

          else
          {
            if (v64 && os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
            {
              v66 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              *buf = 136316163;
              v101 = v66;
              v102 = 1024;
              v103 = 2281;
              v104 = 2080;
              v105 = "cmioep_pruneStalePIDsFromDictionary";
              v106 = 1025;
              v107 = intValue;
              v108 = 2048;
              v109 = v62;
              _os_log_impl(&dword_22EA08000, v65, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] dropping stale pid; last accessed %lld seconds ago", buf, 0x2Cu);
            }

            [v90 setObject:0 forKeyedSubscript:v55];
            [v50 setObject:0 forKeyedSubscript:v55];
          }

          goto LABEL_84;
        }

        v98 = 0;
        v57 = [MEMORY[0x277D46F48] handleForIdentifier:objc_msgSend(MEMORY[0x277D46F50] error:{"identifierWithPid:", intValue), &v98}];
        if (!v98)
        {
          break;
        }

        code = [v98 code];
        if (code == 3)
        {
          goto LABEL_68;
        }

        v73 = CMIOLog(code, v60);
        v74 = v73;
        if (v73 && os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v75 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          *buf = 136316162;
          v101 = v75;
          v102 = 1024;
          v103 = 2307;
          v104 = 2080;
          v105 = "cmioep_pidIsValid";
          v106 = 1024;
          v107 = intValue;
          v108 = 2112;
          v109 = v98;
          v71 = v74;
          v72 = "%s:%d:%s [%d] creating process handle returned error: %@";
LABEL_87:
          _os_log_error_impl(&dword_22EA08000, v71, OS_LOG_TYPE_ERROR, v72, buf, 0x2Cu);
        }

LABEL_84:
        if (v51 == ++v54)
        {
          v76 = [obj countByEnumeratingWithState:&v94 objects:atoken count:16];
          v51 = v76;
          if (!v76)
          {
            goto LABEL_89;
          }

          goto LABEL_62;
        }
      }

      if (v57)
      {
        goto LABEL_84;
      }

      v68 = CMIOLog(0, v58);
      v69 = v68;
      if (!v68 || !os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_84;
      }

      v70 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136316162;
      v101 = v70;
      v102 = 1024;
      v103 = 2311;
      v104 = 2080;
      v105 = "cmioep_pidIsValid";
      v106 = 1024;
      v107 = intValue;
      v108 = 2112;
      v109 = v98;
      v71 = v69;
      v72 = "%s:%d:%s [%d] could not create process handle: %@";
      goto LABEL_87;
    }

    v26 = CMIOLog(v14, v15);
    v31 = v26;
    if (v26)
    {
      v26 = os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT);
      if (v26)
      {
        v32 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *atoken = 136315650;
        *&atoken[4] = v32;
        *&atoken[12] = 1024;
        *&atoken[14] = 2217;
        *&atoken[18] = 2080;
        *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
        _os_log_impl(&dword_22EA08000, v31, OS_LOG_TYPE_DEFAULT, "%s:%d:%s proper version of System Status not present to support this call.", atoken, 0x1Cu);
      }
    }

LABEL_35:
    v30 = 0;
    goto LABEL_36;
  }

  v8 = CMIOLog(v5, v6);
  v9 = v8;
  if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    *atoken = 136316163;
    *&atoken[4] = v10;
    *&atoken[12] = 1024;
    *&atoken[14] = 2158;
    *&atoken[18] = 2080;
    *&atoken[20] = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]";
    *&atoken[28] = 1025;
    *&atoken[30] = v88;
    *&atoken[34] = 2113;
    *&atoken[36] = v7;
    _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] returning cached preference domain %{private}@", atoken, 0x2Cu);
  }

  [sMostRecentProprietaryDefaultDomainLookupTimeByPID setObject:objc_msgSend(MEMORY[0x277CCABB0] forKeyedSubscript:{"numberWithLongLong:", FigGetUpTimeNanoseconds()), v89}];
  return v7;
}

uint64_t __64__CMIOExtensionProvider_proprietaryDefaultsDomainForAuditToken___block_invoke()
{
  v16 = *MEMORY[0x277D85DE8];
  sProprietaryDefaultsDomainsByPID = objc_alloc_init(MEMORY[0x277CBEB38]);
  sMostRecentProprietaryDefaultDomainLookupTimeByPID = objc_alloc_init(MEMORY[0x277CBEB38]);
  v7 = 0;
  IntegerValue = CMIOPreferencesGetIntegerValue(@"proprietary_default_domain_most_recent_pid_lookup_time_limit", &v7);
  if (v7)
  {
    v2 = IntegerValue;
  }

  else
  {
    v2 = 15;
  }

  sPostTerminationTimoutForClearingEntryFromProprietaryDefaultsDomainsByPID = v2;
  v3 = CMIOLog(IntegerValue, v1);
  if (v3)
  {
    v4 = v3;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136315906;
      v9 = v5;
      v10 = 1024;
      v11 = 2142;
      v12 = 2080;
      v13 = "+[CMIOExtensionProvider proprietaryDefaultsDomainForAuditToken:]_block_invoke";
      v14 = 1024;
      v15 = sPostTerminationTimoutForClearingEntryFromProprietaryDefaultsDomainsByPID;
      _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_DEFAULT, "%s:%d:%s stale pid timeout: %d seconds", buf, 0x22u);
    }
  }

  getSTExecutableIdentityResolverClass();
  result = objc_opt_respondsToSelector();
  sResponsibleIdentityForAuditTokenIsSupported = result & 1;
  return result;
}

- (id)_clientQueue_internalPropertyStatesForProperties:(id)properties
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v23 = 1024;
      v24 = 2334;
      v25 = 2080;
      v26 = "[CMIOExtensionProvider _clientQueue_internalPropertyStatesForProperties:]";
      v27 = 2112;
      selfCopy = self;
      v29 = 2112;
      propertiesCopy = properties;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, properties %@", buf, 0x30u);
    }
  }

  if (properties && ![properties containsObject:0x284358D78])
  {
    return 0;
  }

  v7 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  devices = [(CMIOExtensionProvider *)self devices];
  v9 = [(NSArray *)devices countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v17;
    do
    {
      v12 = 0;
      do
      {
        if (*v17 != v11)
        {
          objc_enumerationMutation(devices);
        }

        [v7 addObject:{objc_msgSend(objc_msgSend(*(*(&v16 + 1) + 8 * v12++), "deviceID"), "UUIDString")}];
      }

      while (v10 != v12);
      v10 = [(NSArray *)devices countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v10);
  }

  v13 = [[CMIOExtensionPropertyState alloc] initWithValue:v7 attributes:+[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute]];

  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObject:v13 forKey:0x284358D78];
  return v14;
}

- (void)beginProviderContextRegistration:(id)registration
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v11 = 1024;
      v12 = 2353;
      v13 = 2080;
      v14 = "[CMIOExtensionProvider beginProviderContextRegistration:]";
      v15 = 2112;
      selfCopy = self;
      v17 = 2112;
      registrationCopy = registration;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __58__CMIOExtensionProvider_beginProviderContextRegistration___block_invoke;
  v8[3] = &unk_27885B938;
  v8[4] = self;
  v8[5] = registration;
  dispatch_async(clientQueue, v8);
}

- (void)finishProviderContextRegistration:(id)registration
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v11 = 1024;
      v12 = 2362;
      v13 = 2080;
      v14 = "[CMIOExtensionProvider finishProviderContextRegistration:]";
      v15 = 2112;
      selfCopy = self;
      v17 = 2112;
      registrationCopy = registration;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke;
  v8[3] = &unk_27885B938;
  v8[4] = self;
  v8[5] = registration;
  dispatch_async(clientQueue, v8);
}

uint64_t __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke(uint64_t a1)
{
  v52 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  if ((v3 & 1) == 0)
  {
    v5 = CMIOLog(v3, v4);
    if (v5)
    {
      v5 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_1();
      }
    }

    v7 = CMIOLog(v5, v6);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v10 = *v2;
      *buf = 136315906;
      v45 = v9;
      v46 = 1024;
      v47 = 2367;
      v48 = 2080;
      v49 = "[CMIOExtensionProvider finishProviderContextRegistration:]_block_invoke";
      v50 = 2112;
      v51 = v10;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s Unregistered provider context %@, don't be surprised if things go badly", buf, 0x26u);
    }
  }

  v34 = 0;
  v11 = [objc_loadWeak((*(a1 + 32) + 176)) connectClient:objc_msgSend(*(a1 + 40) error:{"clientInfo"), &v34}];
  if (v11)
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    [*(*(a1 + 32) + 32) setObject:*(a1 + 40) forKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "clientInfo"), "clientID")}];
    v13 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v14 = [MEMORY[0x277CBEB18] array];
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (v15)
    {
      v16 = *v31;
      do
      {
        v17 = 0;
        do
        {
          if (*v31 != v16)
          {
            objc_enumerationMutation(v13);
          }

          [v14 addObject:{objc_msgSend(*(*(&v30 + 1) + 8 * v17++), "clientInfo")}];
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v30 objects:v35 count:16];
      }

      while (v15);
    }

    v18 = [*(a1 + 32) setConnectedClients:v14];
  }

  else
  {
    v20 = CMIOLog(v11, v12);
    if (v20)
    {
      v20 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
      if (v20)
      {
        __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_3();
      }
    }

    v18 = CMIOLog(v20, v21);
    v22 = v18;
    if (v18)
    {
      v18 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v18)
      {
        v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v24 = [*v2 clientInfo];
        *v36 = 136315906;
        v37 = v23;
        v38 = 1024;
        v39 = 2382;
        v40 = 2080;
        v41 = "[CMIOExtensionProvider finishProviderContextRegistration:]_block_invoke";
        v42 = 2112;
        v43 = v24;
        _os_log_impl(&dword_22EA08000, v22, OS_LOG_TYPE_INFO, "%s:%d:%s Refusing connection(%@)", v36, 0x26u);
      }
    }
  }

  v25 = CMIOLog(v18, v19);
  v26 = v25;
  if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
  {
    v27 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v28 = [*v2 clientInfo];
    *v36 = 136315906;
    v37 = v27;
    v38 = 1024;
    v39 = 2400;
    v40 = 2080;
    v41 = "[CMIOExtensionProvider finishProviderContextRegistration:]_block_invoke";
    v42 = 2112;
    v43 = v28;
    _os_log_impl(&dword_22EA08000, v26, OS_LOG_TYPE_INFO, "%s:%d:%s New connection(%@)", v36, 0x26u);
  }

  return [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
}

- (void)removeProviderContext:(id)context
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v11 = 1024;
      v12 = 2407;
      v13 = 2080;
      v14 = "[CMIOExtensionProvider removeProviderContext:]";
      v15 = 2112;
      selfCopy = self;
      v17 = 2112;
      contextCopy = context;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__CMIOExtensionProvider_removeProviderContext___block_invoke;
  v8[3] = &unk_27885B938;
  v8[4] = self;
  v8[5] = context;
  dispatch_async_and_wait(clientQueue, v8);
}

uint64_t __47__CMIOExtensionProvider_removeProviderContext___block_invoke(uint64_t a1)
{
  v64 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 24) containsObject:*(a1 + 40)];
  if ((v3 & 1) == 0)
  {
    v5 = CMIOLog(v3, v4);
    if (v5)
    {
      v5 = os_log_type_enabled(v5, OS_LOG_TYPE_ERROR);
      if (v5)
      {
        __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_1();
      }
    }

    v7 = CMIOLog(v5, v6);
    v8 = v7;
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v10 = *v2;
      *buf = 136315906;
      v57 = v9;
      v58 = 1024;
      v59 = 2413;
      v60 = 2080;
      v61 = "[CMIOExtensionProvider removeProviderContext:]_block_invoke";
      v62 = 2112;
      v63 = v10;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s Unregistered provider context %@, don't be surprised if things go badly", buf, 0x26u);
    }
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = [*(a1 + 32) devices];
  v36 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
  if (v36)
  {
    v35 = *v50;
    v32 = *MEMORY[0x277CCA450];
    v33 = *MEMORY[0x277CCA590];
    do
    {
      for (i = 0; i != v36; ++i)
      {
        if (*v50 != v35)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v38 = v11;
        v39 = [v11 streams];
        v12 = [v39 countByEnumeratingWithState:&v45 objects:v54 count:16];
        if (v12)
        {
          v13 = *v46;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v46 != v13)
              {
                objc_enumerationMutation(v39);
              }

              v15 = *(*(&v45 + 1) + 8 * j);
              v16 = [v15 _clientQueue_streamingClientsMap];
              if ([v16 objectForKey:{objc_msgSend(objc_msgSend(*v2, "clientInfo"), "clientID")}] && objc_msgSend(v16, "count") == 1)
              {
                v44 = 0;
                v17 = [objc_msgSend(v15 "source")];
                if ((v17 & 1) == 0)
                {
                  v19 = CMIOLog(v17, v18);
                  v20 = v19;
                  if (v19)
                  {
                    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                    {
                      v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                      *buf = 136315906;
                      v57 = v21;
                      v58 = 1024;
                      v59 = 2431;
                      v60 = 2080;
                      v61 = "[CMIOExtensionProvider removeProviderContext:]_block_invoke";
                      v62 = 2112;
                      v63 = v44;
                      _os_log_error_impl(&dword_22EA08000, v20, OS_LOG_TYPE_ERROR, "%s:%d:%s Could not stop streaming %@", buf, 0x26u);
                    }
                  }
                }

                [v15 _clientQueue_removeStreamingClient:{objc_msgSend(*(a1 + 40), "clientInfo")}];
                [*(a1 + 32) _clientQueue_notifyIsRunningSomewhereForStream:v15];
              }

              else
              {
                [v15 _clientQueue_removeStreamingClient:{objc_msgSend(*v2, "clientInfo")}];
              }

              [*(a1 + 32) _clientQueue_removePendingStartStreamCountForClient:objc_msgSend(objc_msgSend(*(a1 + 40) streamID:{"clientInfo"), "clientID"), objc_msgSend(v15, "streamID")}];
              [*(a1 + 32) removeSystemStatusAttributionsForClient:objc_msgSend(*(a1 + 40) stream:{"clientInfo"), v15}];
            }

            v12 = [v39 countByEnumeratingWithState:&v45 objects:v54 count:16];
          }

          while (v12);
        }

        v22 = [v38 deviceControlPID];
        if (v22 == [objc_msgSend(*v2 "clientInfo")])
        {
          [v38 setDeviceControlPID:0xFFFFFFFFLL];
          v23 = objc_opt_new();
          v24 = [CMIOExtensionPropertyState alloc];
          v25 = -[CMIOExtensionPropertyState initWithValue:](v24, "initWithValue:", [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v38, "deviceControlPID")}]);
          [v23 setObject:v25 forKey:0x284358E58];

          [v38 notifyPropertiesChanged:v23];
        }
      }

      v36 = [obj countByEnumeratingWithState:&v49 objects:v55 count:16];
    }

    while (v36);
  }

  [objc_loadWeak((*(a1 + 32) + 176)) disconnectClient:{objc_msgSend(*(a1 + 40), "clientInfo")}];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  [*(*(a1 + 32) + 32) removeObjectForKey:{objc_msgSend(objc_msgSend(*(a1 + 40), "clientInfo"), "clientID")}];
  v26 = [*(*(a1 + 32) + 32) allValues];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v27 = [MEMORY[0x277CBEB18] array];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v28 = [v26 countByEnumeratingWithState:&v40 objects:v53 count:16];
  if (v28)
  {
    v29 = *v41;
    do
    {
      for (k = 0; k != v28; ++k)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(v26);
        }

        [v27 addObject:{objc_msgSend(*(*(&v40 + 1) + 8 * k), "clientInfo")}];
      }

      v28 = [v26 countByEnumeratingWithState:&v40 objects:v53 count:16];
    }

    while (v28);
  }

  [*(a1 + 32) setConnectedClients:v27];
  return [*(*(a1 + 32) + 24) removeObject:*(a1 + 40)];
}

- (BOOL)registerDevice:(id)device error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v20 = 1024;
      v21 = 2482;
      v22 = 2080;
      v23 = "[CMIOExtensionProvider registerDevice:error:]";
      v24 = 2112;
      selfCopy = self;
      v26 = 2112;
      deviceCopy = device;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_devicesMapLock);
  if (-[NSMutableDictionary objectForKey:](self->_devicesMap, "objectForKey:", [device deviceID]))
  {
    os_unfair_lock_unlock(&self->_devicesMapLock);
    v11 = CMIOLog(v9, v10);
    if (v11 && os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider registerDevice:error:];
      if (error)
      {
        goto LABEL_8;
      }
    }

    else if (error)
    {
LABEL_8:
      v12 = *MEMORY[0x277CCA590];
      v16 = *MEMORY[0x277CCA450];
      v17 = @"deviceID already included";
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}];
      result = 0;
      *error = v13;
      return result;
    }
  }

  else
  {
    -[NSMutableDictionary setObject:forKey:](self->_devicesMap, "setObject:forKey:", device, [device deviceID]);
    allKeys = [(NSMutableDictionary *)self->_devicesMap allKeys];
    os_unfair_lock_unlock(&self->_devicesMapLock);
    if ([device didRegister:error])
    {
      [(CMIOExtensionProvider *)self notifyAvailableDevicesChanged:allKeys];
      return 1;
    }

    os_unfair_lock_lock(&self->_devicesMapLock);
    -[NSMutableDictionary removeObjectForKey:](self->_devicesMap, "removeObjectForKey:", [device deviceID]);
    os_unfair_lock_unlock(&self->_devicesMapLock);
  }

  return 0;
}

- (BOOL)unregisterDevice:(id)device error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v20 = 1024;
      v21 = 2519;
      v22 = 2080;
      v23 = "[CMIOExtensionProvider unregisterDevice:error:]";
      v24 = 2112;
      selfCopy = self;
      v26 = 2112;
      deviceCopy = device;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_devicesMapLock);
  v9 = -[NSMutableDictionary objectForKey:](self->_devicesMap, "objectForKey:", [device deviceID]);
  if (!v9)
  {
    os_unfair_lock_unlock(&self->_devicesMapLock);
    v13 = CMIOLog(v11, v12);
    if (v13 && os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider unregisterDevice:error:];
      if (!error)
      {
        return v9 != 0;
      }
    }

    else if (!error)
    {
      return v9 != 0;
    }

    v14 = *MEMORY[0x277CCA590];
    v16 = *MEMORY[0x277CCA450];
    v17 = @"deviceID not registered";
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:v14 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v17, &v16, 1)}];
    return v9 != 0;
  }

  -[NSMutableDictionary removeObjectForKey:](self->_devicesMap, "removeObjectForKey:", [device deviceID]);
  allKeys = [(NSMutableDictionary *)self->_devicesMap allKeys];
  os_unfair_lock_unlock(&self->_devicesMapLock);
  [device didUnregister];
  [(CMIOExtensionProvider *)self notifyAvailableDevicesChanged:allKeys];
  return v9 != 0;
}

- (BOOL)registerStream:(id)stream withDeviceID:(id)d error:(id *)error
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v22 = 1024;
      v23 = 2549;
      v24 = 2080;
      v25 = "[CMIOExtensionProvider registerStream:withDeviceID:error:]";
      v26 = 2112;
      selfCopy = self;
      v28 = 2112;
      streamCopy = stream;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_streamsMapLock);
  v11 = -[NSMutableDictionary objectForKey:](self->_streamsMap, "objectForKey:", [stream streamID]);
  if (!v11)
  {
    -[NSMutableDictionary setObject:forKey:](self->_streamsMap, "setObject:forKey:", stream, [stream streamID]);
    allKeys = [(NSMutableDictionary *)self->_streamsMap allKeys];
    os_unfair_lock_unlock(&self->_streamsMapLock);
    [(CMIOExtensionProvider *)self notifyAvailableStreamsChangedWithDeviceID:d streamIDs:allKeys];
    return v11 == 0;
  }

  os_unfair_lock_unlock(&self->_streamsMapLock);
  v14 = CMIOLog(v12, v13);
  if (v14 && os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    [CMIOExtensionProvider registerStream:withDeviceID:error:];
    if (!error)
    {
      return v11 == 0;
    }

    goto LABEL_8;
  }

  if (error)
  {
LABEL_8:
    v15 = *MEMORY[0x277CCA590];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"streamID already included";
    *error = [MEMORY[0x277CCA9B8] errorWithDomain:v15 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", &v19, &v18, 1)}];
  }

  return v11 == 0;
}

- (BOOL)unregisterStream:(id)stream withDeviceID:(id)d notify:(BOOL)notify error:(id *)error
{
  notifyCopy = notify;
  v68 = *MEMORY[0x277D85DE8];
  v8 = CMIOLogLevel(1, a2);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v56 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v57 = 1024;
      v58 = 2578;
      v59 = 2080;
      v60 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
      v61 = 2112;
      selfCopy4 = self;
      v63 = 2112;
      streamCopy3 = stream;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  v49 = 0;
  v50 = &v49;
  v51 = 0x2020000000;
  v52 = 0;
  os_unfair_lock_lock(&self->_streamsMapLock);
  if ([(NSMutableDictionary *)self->_streamsMap count])
  {
    v42 = [objc_alloc(MEMORY[0x277CBEB58]) initWithArray:{-[NSMutableDictionary allKeys](self->_streamsMap, "allKeys")}];
  }

  else
  {
    v42 = objc_alloc_init(MEMORY[0x277CBEB58]);
  }

  v43 = -[NSMutableDictionary objectForKey:](self->_streamsMap, "objectForKey:", [stream streamID]);
  if (v43)
  {
    v10 = [objc_msgSend(stream "streamingClients")];
    v50[3] = v10;
    if (v10)
    {
      v12 = CMIOLog(v10, v11);
      v13 = v12;
      if (v12 && os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316162;
        v56 = v14;
        v57 = 1024;
        v58 = 2591;
        v59 = 2080;
        v60 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
        v61 = 2114;
        selfCopy4 = self;
        v63 = 2114;
        streamCopy3 = stream;
        _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@ pending stream clients for %{public}@, wait for stream stop before removing it", buf, 0x30u);
      }

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      streamingClients = [stream streamingClients];
      v16 = [streamingClients countByEnumeratingWithState:&v45 objects:v67 count:16];
      v18 = v16;
      if (v16)
      {
        v19 = *v46;
        do
        {
          v20 = 0;
          do
          {
            if (*v46 != v19)
            {
              objc_enumerationMutation(streamingClients);
            }

            v21 = *(*(&v45 + 1) + 8 * v20);
            v22 = CMIOLog(v16, v17);
            v23 = v22;
            if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
            {
              v24 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              v25 = [objc_msgSend(stream "streamID")];
              *buf = 136316419;
              v56 = v24;
              v57 = 1024;
              v58 = 2593;
              v59 = 2080;
              v60 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
              v61 = 2114;
              selfCopy4 = self;
              v63 = 2114;
              streamCopy3 = v25;
              v65 = 2113;
              v66 = v21;
              _os_log_impl(&dword_22EA08000, v23, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{public}@, %{private}@", buf, 0x3Au);
            }

            v26 = +[CMIOExtensionProvider sharedProvider];
            clientID = [v21 clientID];
            streamID = [stream streamID];
            v44[0] = MEMORY[0x277D85DD0];
            v44[1] = 3221225472;
            v44[2] = __68__CMIOExtensionProvider_unregisterStream_withDeviceID_notify_error___block_invoke;
            v44[3] = &unk_27885B960;
            v44[5] = stream;
            v44[6] = &v49;
            v44[4] = self;
            [v26 stopStreamForClientID:clientID streamID:streamID reply:v44];
            v16 = [(CMIOExtensionProvider *)self removeSystemStatusAttributionsForClient:v21 stream:stream];
            ++v20;
          }

          while (v18 != v20);
          v16 = [streamingClients countByEnumeratingWithState:&v45 objects:v67 count:16];
          v18 = v16;
        }

        while (v16);
      }
    }

    else
    {
      v30 = CMIOLog(0, v11);
      v31 = v30;
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v32 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        *buf = 136316162;
        v56 = v32;
        v57 = 1024;
        v58 = 2606;
        v59 = 2080;
        v60 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
        v61 = 2114;
        selfCopy4 = self;
        v63 = 2114;
        streamCopy3 = stream;
        _os_log_impl(&dword_22EA08000, v31, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@ no active clients for %{public}@ removing it", buf, 0x30u);
      }

      -[NSMutableDictionary removeObjectForKey:](self->_streamsMap, "removeObjectForKey:", [stream streamID]);
    }

    [v42 removeObject:{objc_msgSend(stream, "streamID")}];
    allObjects = [v42 allObjects];
  }

  else
  {
    allObjects = 0;
  }

  os_unfair_lock_unlock(&self->_streamsMapLock);

  if (v43)
  {
    if (notifyCopy)
    {
      [(CMIOExtensionProvider *)self notifyAvailableStreamsChangedWithDeviceID:d streamIDs:allObjects];
    }
  }

  else
  {
    v35 = CMIOLog(v33, v34);
    if (v35 && os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      [stream streamID];
      [CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:];
    }

    if (error)
    {
      v36 = MEMORY[0x277CCA9B8];
      v53 = *MEMORY[0x277CCA450];
      v54 = @"streamID not register";
      v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
      *error = [v36 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v37];
    }
  }

  _Block_object_dispose(&v49, 8);
  return v43 != 0;
}

void *__68__CMIOExtensionProvider_unregisterStream_withDeviceID_notify_error___block_invoke(void *result, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  if (!--*(*(result[6] + 8) + 24))
  {
    v2 = result;
    v3 = CMIOLog(result, a2);
    if (v3)
    {
      v4 = v3;
      if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
      {
        v5 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v6 = v2[4];
        v7 = [v2[5] streamID];
        v8 = 136316162;
        v9 = v5;
        v10 = 1024;
        v11 = 2598;
        v12 = 2080;
        v13 = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]_block_invoke";
        v14 = 2114;
        v15 = v6;
        v16 = 2114;
        v17 = v7;
        _os_log_impl(&dword_22EA08000, v4, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@ stop stream complete, remove %{public}@", &v8, 0x30u);
      }
    }

    return [*(v2[4] + 88) removeObjectForKey:{objc_msgSend(v2[5], "streamID")}];
  }

  return result;
}

- (void)availablePluginPropertiesForClientID:(id)d reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v13 = 1024;
      v14 = 2637;
      v15 = 2080;
      v16 = "[CMIOExtensionProvider availablePluginPropertiesForClientID:reply:]";
      v17 = 2112;
      selfCopy = self;
      v19 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __68__CMIOExtensionProvider_availablePluginPropertiesForClientID_reply___block_invoke;
  v10[3] = &unk_27885B988;
  v10[4] = self;
  v10[5] = reply;
  dispatch_async(clientQueue, v10);
}

uint64_t __68__CMIOExtensionProvider_availablePluginPropertiesForClientID_reply___block_invoke(uint64_t a1)
{
  [objc_loadWeak((*(a1 + 32) + 176)) availableProperties];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)pluginStatesForClientID:(id)d reply:(id)reply
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v13 = 1024;
      v14 = 2648;
      v15 = 2080;
      v16 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]";
      v17 = 2112;
      selfCopy = self;
      v19 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke;
  v10[3] = &unk_27885B988;
  v10[4] = self;
  v10[5] = reply;
  dispatch_async(clientQueue, v10);
}

uint64_t __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke(uint64_t a1)
{
  v82 = *MEMORY[0x277D85DE8];
  v69 = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v52 = a1;
  v57 = (a1 + 32);
  v3 = [*(a1 + 32) _clientQueue_internalPropertyStatesForProperties:0];
  if ([v3 count])
  {
    [v2 addEntriesFromDictionary:v3];
  }

  v53 = v2;
  v4 = [objc_loadWeak(*v57 + 22) availableProperties];
  v6 = CMIOLog(v4, v5);
  if (v6)
  {
    v7 = v6;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v9 = *v57;
      *buf = 136316162;
      v73 = v8;
      v74 = 1024;
      v75 = 2658;
      v76 = 2080;
      v77 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
      v78 = 2114;
      v79 = v9;
      v80 = 2114;
      v81 = v4;
      _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, availableProperties %{public}@", buf, 0x30u);
    }
  }

  if ([v4 count])
  {
    v10 = [objc_msgSend(objc_loadWeak(*v57 + 22) providerPropertiesForProperties:v4 error:{&v69), "propertiesDictionary"}];
    v12 = v10;
    if (v69)
    {
      v13 = CMIOLog(v10, v11);
      v14 = v13;
      if (v13)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v48 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v49 = v69;
          v50 = [v69 localizedDescription];
          *buf = 136316162;
          v73 = v48;
          v74 = 1024;
          v75 = 2665;
          v76 = 2080;
          v77 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
          v78 = 2112;
          v79 = v49;
          v80 = 2112;
          v81 = v50;
          _os_log_error_impl(&dword_22EA08000, v14, OS_LOG_TYPE_ERROR, "%s:%d:%s providerPropertiesForProperties error %@ localizedDescription: %@", buf, 0x30u);
        }
      }
    }

    if ([v12 count])
    {
      [v53 addEntriesFromDictionary:v12];
    }

    else
    {
      v47 = CMIOLog(0, v15);
      if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_2();
      }
    }
  }

  v56 = [MEMORY[0x277CBEB18] array];
  v16 = [MEMORY[0x277CBEB18] array];
  v67 = 0u;
  v68 = 0u;
  v65 = 0u;
  v66 = 0u;
  obj = [*v57 devices];
  v58 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
  if (v58)
  {
    v55 = *v66;
    *&v17 = 136315906;
    v51 = v17;
    do
    {
      v18 = 0;
      do
      {
        if (*v66 != v55)
        {
          v19 = v18;
          objc_enumerationMutation(obj);
          v18 = v19;
        }

        v59 = v18;
        v20 = *(*(&v65 + 1) + 8 * v18);
        v21 = [MEMORY[0x277CBEB38] dictionary];
        v22 = [v20 _clientQueue_internalPropertyStatesForProperties:0];
        if ([v22 count])
        {
          [v21 addEntriesFromDictionary:v22];
        }

        [*v57 _addAvailablePropertyStatesForDevice:v20 toDictionary:v21];
        [v56 addObject:v21];
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v23 = [v20 streams];
        v24 = [v23 countByEnumeratingWithState:&v61 objects:v70 count:16];
        if (v24)
        {
          v25 = *v62;
          do
          {
            v26 = 0;
            do
            {
              if (*v62 != v25)
              {
                objc_enumerationMutation(v23);
              }

              v27 = *(*(&v61 + 1) + 8 * v26);
              v28 = [MEMORY[0x277CBEB38] dictionary];
              v29 = [v27 _clientQueue_internalPropertyStatesForProperties:0];
              if ([v29 count])
              {
                [v28 addEntriesFromDictionary:v29];
              }

              v30 = [objc_msgSend(v27 "source")];
              v32 = CMIOLog(v30, v31);
              v33 = v32;
              if (v32 && os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
              {
                v34 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                *buf = 136316162;
                v73 = v34;
                v74 = 1024;
                v75 = 2703;
                v76 = 2080;
                v77 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
                v78 = 2114;
                v79 = v27;
                v80 = 2114;
                v81 = v30;
                _os_log_impl(&dword_22EA08000, v33, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, stream availableProperties %{public}@", buf, 0x30u);
              }

              if ([v30 count])
              {
                v35 = [objc_msgSend(objc_msgSend(v27 "source")];
                v37 = v35;
                if (v69)
                {
                  v38 = CMIOLog(v35, v36);
                  v39 = v38;
                  if (v38)
                  {
                    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
                    {
                      v60 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                      v43 = v69;
                      v44 = [v69 localizedDescription];
                      *buf = 136316162;
                      v73 = v60;
                      v74 = 1024;
                      v75 = 2710;
                      v76 = 2080;
                      v77 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
                      v78 = 2114;
                      v79 = v43;
                      v80 = 2114;
                      v81 = v44;
                      _os_log_error_impl(&dword_22EA08000, v39, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                    }
                  }
                }

                if ([v37 count])
                {
                  [v28 addEntriesFromDictionary:v37];
                }

                else
                {
                  v41 = CMIOLog(0, v40);
                  v42 = v41;
                  if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
                  {
                    v45 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    *buf = 136316162;
                    v73 = v45;
                    v74 = 1024;
                    v75 = 2721;
                    v76 = 2080;
                    v77 = "[CMIOExtensionProvider pluginStatesForClientID:reply:]_block_invoke";
                    v78 = 2114;
                    v79 = v69;
                    v80 = 2114;
                    v81 = v27;
                    _os_log_error_impl(&dword_22EA08000, v42, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ for stream %{public}@", buf, 0x30u);
                  }
                }
              }

              [v16 addObject:v28];
              ++v26;
            }

            while (v24 != v26);
            v24 = [v23 countByEnumeratingWithState:&v61 objects:v70 count:16];
          }

          while (v24);
        }

        v18 = v59 + 1;
      }

      while (v59 + 1 != v58);
      v58 = [obj countByEnumeratingWithState:&v65 objects:v71 count:16];
    }

    while (v58);
  }

  return (*(*(v52 + 40) + 16))();
}

- (void)_addAvailablePropertyStatesForDevice:(id)device toDictionary:(id)dictionary
{
  v31 = *MEMORY[0x277D85DE8];
  v20[0] = 0;
  v6 = [objc_msgSend(device "source")];
  v8 = CMIOLog(v6, v7);
  if (v8)
  {
    v9 = v8;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 136316162;
      v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v23 = 1024;
      v24 = 2736;
      v25 = 2080;
      v26 = "[CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:]";
      v27 = 2114;
      deviceCopy = device;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, device availableProperties %{public}@", buf, 0x30u);
    }
  }

  if ([v6 count])
  {
    v10 = [objc_msgSend(objc_msgSend(device "source")];
    v12 = v10;
    if (v20[0])
    {
      v13 = CMIOLog(v10, v11);
      v14 = v13;
      if (v13)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v18 = v20[0];
          localizedDescription = [v20[0] localizedDescription];
          *buf = 136316162;
          v22 = v17;
          v23 = 1024;
          v24 = 2743;
          v25 = 2080;
          v26 = "[CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:]";
          v27 = 2114;
          deviceCopy = v18;
          v29 = 2114;
          v30 = localizedDescription;
          _os_log_error_impl(&dword_22EA08000, v14, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v12 count])
    {
      [dictionary addEntriesFromDictionary:v12];
    }

    else
    {
      v16 = CMIOLog(0, v15);
      if (v16)
      {
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          [CMIOExtensionProvider _addAvailablePropertyStatesForDevice:toDictionary:];
        }
      }
    }
  }
}

- (void)pluginPropertyStatesForClientID:(id)d properties:(id)properties reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 2762;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider pluginPropertyStatesForClientID:properties:reply:]";
      v19 = 2112;
      selfCopy = self;
      v21 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = properties;
  block[6] = reply;
  dispatch_async(clientQueue, block);
}

uint64_t __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v22[0] = 0;
  v2 = [MEMORY[0x277CBEB38] dictionary];
  v3 = a1 + 32;
  v4 = [*(a1 + 32) _clientQueue_internalPropertyStatesForProperties:*(a1 + 40)];
  if ([v4 count])
  {
    [v2 addEntriesFromDictionary:v4];
  }

  if (*(a1 + 40))
  {
    v5 = [MEMORY[0x277CBEB58] setWithSet:?];
    if (+[CMIOExtensionProvider internalProperties])
    {
      [v5 minusSet:{+[CMIOExtensionProvider internalProperties](CMIOExtensionProvider, "internalProperties")}];
    }
  }

  else
  {
    v5 = [objc_loadWeak((*v3 + 176)) availableProperties];
    v7 = CMIOLog(v5, v6);
    if (v7)
    {
      v8 = v7;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v10 = *v3;
        *buf = 136316162;
        v24 = v9;
        v25 = 1024;
        v26 = 2774;
        v27 = 2080;
        v28 = "[CMIOExtensionProvider pluginPropertyStatesForClientID:properties:reply:]_block_invoke";
        v29 = 2114;
        v30 = v10;
        v31 = 2114;
        v32 = v5;
        _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, availableProperties %{public}@", buf, 0x30u);
      }
    }
  }

  if ([v5 count])
  {
    v11 = [objc_msgSend(objc_loadWeak((*v3 + 176)) providerPropertiesForProperties:v5 error:{v22), "propertiesDictionary"}];
    v13 = v11;
    if (v22[0])
    {
      v14 = CMIOLog(v11, v12);
      v15 = v14;
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          v19 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v20 = v22[0];
          v21 = [v22[0] localizedDescription];
          *buf = 136316162;
          v24 = v19;
          v25 = 1024;
          v26 = 2788;
          v27 = 2080;
          v28 = "[CMIOExtensionProvider pluginPropertyStatesForClientID:properties:reply:]_block_invoke";
          v29 = 2114;
          v30 = v20;
          v31 = 2114;
          v32 = v21;
          _os_log_error_impl(&dword_22EA08000, v15, OS_LOG_TYPE_ERROR, "%s:%d:%s providerPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v13 count])
    {
      [v2 addEntriesFromDictionary:v13];
    }

    else
    {
      v18 = CMIOLog(0, v16);
      if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_2();
      }
    }
  }

  return (*(*(a1 + 48) + 16))();
}

- (void)setPluginPropertyValuesForClientID:(id)d propertyValues:(id)values reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 2814;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider setPluginPropertyValuesForClientID:propertyValues:reply:]";
      v19 = 2112;
      selfCopy = self;
      v21 = 2112;
      dCopy = d;
      v23 = 2112;
      valuesCopy = values;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, propertyValues %@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke;
  v12[3] = &unk_27885BA00;
  v12[4] = values;
  v12[5] = self;
  v12[6] = d;
  v12[7] = reply;
  dispatch_async(clientQueue, v12);
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke(uint64_t a1)
{
  v41[1] = *MEMORY[0x277D85DE8];
  v29[0] = 0;
  if ([*(a1 + 32) count])
  {
    v3 = [MEMORY[0x277CBEB98] setWithArray:{objc_msgSend(*(a1 + 32), "allKeys")}];
    os_unfair_lock_lock((*(a1 + 40) + 16));
    v4 = [*(*(a1 + 40) + 32) objectForKey:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 40) + 16));
    v5 = -[CMIOExtensionProviderProperties initWithPropertyValues:client:]([CMIOExtensionProviderProperties alloc], "initWithPropertyValues:client:", *(a1 + 32), [v4 clientInfo]);
    [objc_loadWeak((*(a1 + 40) + 176)) setProviderProperties:v5 error:v29];

    if (v29[0])
    {
      v8 = CMIOLog(v6, v7);
      v9 = v8;
      if (v8)
      {
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v24 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v25 = v29[0];
          v26 = [v29[0] localizedDescription];
          *buf = 136316162;
          v31 = v24;
          v32 = 1024;
          v33 = 2840;
          v34 = 2080;
          v35 = "[CMIOExtensionProvider setPluginPropertyValuesForClientID:propertyValues:reply:]_block_invoke";
          v36 = 2112;
          v37 = v25;
          v38 = 2112;
          v39 = v26;
          _os_log_error_impl(&dword_22EA08000, v9, OS_LOG_TYPE_ERROR, "%s:%d:%s setProviderProperties error %@ localizedDescription: %@", buf, 0x30u);
        }
      }
    }

    v28 = 0;
    v10 = [objc_msgSend(objc_loadWeak((*(a1 + 40) + 176)) providerPropertiesForProperties:v3 error:{&v28), "propertiesDictionary"}];
    v12 = v10;
    if (v28)
    {
      v13 = CMIOLog(v10, v11);
      v14 = v13;
      if (v13)
      {
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v22 = v28;
          v23 = [v28 localizedDescription];
          *buf = 136316162;
          v31 = v21;
          v32 = 1024;
          v33 = 2855;
          v34 = 2080;
          v35 = "[CMIOExtensionProvider setPluginPropertyValuesForClientID:propertyValues:reply:]_block_invoke";
          v36 = 2114;
          v37 = v22;
          v38 = 2114;
          v39 = v23;
          _os_log_error_impl(&dword_22EA08000, v14, OS_LOG_TYPE_ERROR, "%s:%d:%s providerPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
        }
      }
    }

    [*(a1 + 40) notifyPropertiesChanged:v12];
    v15 = *(*(a1 + 40) + 8);
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_422;
    v27[3] = &unk_27885B9D8;
    v16 = *(a1 + 56);
    v27[4] = v29[0];
    v27[5] = v16;
    dispatch_async(v15, v27);
  }

  else
  {
    v17 = CMIOLog(0, v2);
    if (v17 && os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_3();
    }

    v18 = *(a1 + 56);
    v19 = MEMORY[0x277CCA9B8];
    v40 = *MEMORY[0x277CCA450];
    v41[0] = @"Invalid property value";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    (*(v18 + 16))(v18, [v19 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v20]);
  }
}

- (void)availableDevicePropertiesForClientID:(id)d deviceID:(id)iD reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 2872;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider availableDevicePropertiesForClientID:deviceID:reply:]";
      v19 = 2112;
      selfCopy = self;
      v21 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = iD;
  block[6] = reply;
  dispatch_async(clientQueue, block);
}

uint64_t __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 64));
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 64));
  if (v2)
  {
    [objc_msgSend(v2 "source")];
    v5 = *(a1[6] + 16);

    return v5();
  }

  else
  {
    v7 = CMIOLog(v3, v4);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke_cold_1();
    }

    v8 = a1[6];
    v9 = *MEMORY[0x277CCA590];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Invalid deviceID";
    return (*(v8 + 16))(v8, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }
}

- (void)deviceStatesForClientID:(id)d deviceID:(id)iD reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 2895;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]";
      v19 = 2112;
      selfCopy = self;
      v21 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = iD;
  block[6] = reply;
  dispatch_async(clientQueue, block);
}

uint64_t __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke(void *a1)
{
  v72[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 64));
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 64));
  if (v2)
  {
    v59 = 0;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [v2 _clientQueue_internalPropertyStatesForProperties:0];
    if ([v6 count])
    {
      [v5 addEntriesFromDictionary:v6];
    }

    v52 = a1;
    v53 = v5;
    v7 = [objc_msgSend(v2 "source")];
    v9 = CMIOLog(v7, v8);
    if (v9)
    {
      v10 = v9;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *buf = 136316162;
        v62 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v63 = 1024;
        v64 = 2918;
        v65 = 2080;
        v66 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
        v67 = 2114;
        v68 = v2;
        v69 = 2114;
        v70 = v7;
        _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, device availableProperties %{public}@", buf, 0x30u);
      }
    }

    if ([v7 count])
    {
      v11 = [objc_msgSend(objc_msgSend(v2 "source")];
      v13 = v11;
      if (v59)
      {
        v14 = CMIOLog(v11, v12);
        v15 = v14;
        if (v14)
        {
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            v48 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v49 = v59;
            v50 = [v59 localizedDescription];
            *buf = 136316162;
            v62 = v48;
            v63 = 1024;
            v64 = 2925;
            v65 = 2080;
            v66 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
            v67 = 2114;
            v68 = v49;
            v69 = 2114;
            v70 = v50;
            _os_log_error_impl(&dword_22EA08000, v15, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
          }
        }
      }

      if ([v13 count])
      {
        [v53 addEntriesFromDictionary:v13];
      }

      else
      {
        v47 = CMIOLog(0, v16);
        if (v47 && os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_2();
        }
      }
    }

    v17 = [MEMORY[0x277CBEB18] array];
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v18 = [v2 streams];
    v19 = [v18 countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v19)
    {
      v21 = *v56;
      *&v20 = 136315906;
      v51 = v20;
      do
      {
        v22 = 0;
        do
        {
          if (*v56 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v55 + 1) + 8 * v22);
          v24 = [MEMORY[0x277CBEB38] dictionary];
          v25 = [v23 _clientQueue_internalPropertyStatesForProperties:0];
          if ([v25 count])
          {
            [v24 addEntriesFromDictionary:v25];
          }

          v26 = [objc_msgSend(v23 "source")];
          v28 = CMIOLog(v26, v27);
          v29 = v28;
          if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            *buf = 136316162;
            v62 = v30;
            v63 = 1024;
            v64 = 2949;
            v65 = 2080;
            v66 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
            v67 = 2114;
            v68 = v23;
            v69 = 2114;
            v70 = v26;
            _os_log_impl(&dword_22EA08000, v29, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, stream availableProperties %{public}@", buf, 0x30u);
          }

          if ([v26 count])
          {
            v31 = [objc_msgSend(objc_msgSend(v23 "source")];
            v33 = v31;
            if (v59)
            {
              v34 = CMIOLog(v31, v32);
              v35 = v34;
              if (v34)
              {
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v54 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                  v39 = v59;
                  v40 = [v59 localizedDescription];
                  *buf = 136316162;
                  v62 = v54;
                  v63 = 1024;
                  v64 = 2956;
                  v65 = 2080;
                  v66 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
                  v67 = 2114;
                  v68 = v39;
                  v69 = 2114;
                  v70 = v40;
                  _os_log_error_impl(&dword_22EA08000, v35, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                }
              }
            }

            if ([v33 count])
            {
              [v24 addEntriesFromDictionary:v33];
            }

            else
            {
              v37 = CMIOLog(0, v36);
              v38 = v37;
              if (v37)
              {
                if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
                {
                  v41 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                  *buf = 136316162;
                  v62 = v41;
                  v63 = 1024;
                  v64 = 2967;
                  v65 = 2080;
                  v66 = "[CMIOExtensionProvider deviceStatesForClientID:deviceID:reply:]_block_invoke";
                  v67 = 2114;
                  v68 = v59;
                  v69 = 2114;
                  v70 = v23;
                  _os_log_error_impl(&dword_22EA08000, v38, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ for stream %{public}@", buf, 0x30u);
                }
              }
            }
          }

          [v17 addObject:v24];
          ++v22;
        }

        while (v19 != v22);
        v19 = [v18 countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v19);
    }

    return (*(v52[6] + 16))();
  }

  else
  {
    v43 = CMIOLog(v3, v4);
    if (v43 && os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_3();
    }

    v44 = a1[6];
    v45 = MEMORY[0x277CCA9B8];
    v71 = *MEMORY[0x277CCA450];
    v72[0] = @"Invalid deviceID";
    v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:&v71 count:1];
    return (*(v44 + 16))(v44, 0, 0, [v45 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v46]);
  }
}

- (void)devicePropertyStatesForClientID:(id)d deviceID:(id)iD properties:(id)properties reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = CMIOLogLevel(1, a2);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v17 = 1024;
      v18 = 2978;
      v19 = 2080;
      v20 = "[CMIOExtensionProvider devicePropertyStatesForClientID:deviceID:properties:reply:]";
      v21 = 2112;
      selfCopy = self;
      v23 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke;
  v14[3] = &unk_27885BA28;
  v14[4] = self;
  v14[5] = iD;
  v14[6] = properties;
  v14[7] = reply;
  dispatch_async(clientQueue, v14);
}

uint64_t __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke(void *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 64));
  v2 = [*(a1[4] + 72) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 64));
  if (v2)
  {
    v26[0] = 0;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [v2 _clientQueue_internalPropertyStatesForProperties:a1[6]];
    if ([v6 count])
    {
      [v5 addEntriesFromDictionary:v6];
    }

    if (a1[6])
    {
      v7 = [MEMORY[0x277CBEB58] setWithSet:?];
      if (+[CMIOExtensionDevice internalProperties])
      {
        [v7 minusSet:{+[CMIOExtensionDevice internalProperties](CMIOExtensionDevice, "internalProperties")}];
      }
    }

    else
    {
      v7 = [objc_msgSend(v2 "source")];
      v14 = CMIOLog(v7, v13);
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136316162;
          v28 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v29 = 1024;
          v30 = 3003;
          v31 = 2080;
          v32 = "[CMIOExtensionProvider devicePropertyStatesForClientID:deviceID:properties:reply:]_block_invoke";
          v33 = 2114;
          v34 = v2;
          v35 = 2114;
          v36 = v7;
          _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, device availableProperties %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v7 count])
    {
      v16 = [objc_msgSend(objc_msgSend(v2 "source")];
      v18 = v16;
      if (v26[0])
      {
        v19 = CMIOLog(v16, v17);
        v20 = v19;
        if (v19)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v24 = v26[0];
            v25 = [v26[0] localizedDescription];
            *buf = 136316162;
            v28 = v23;
            v29 = 1024;
            v30 = 3017;
            v31 = 2080;
            v32 = "[CMIOExtensionProvider devicePropertyStatesForClientID:deviceID:properties:reply:]_block_invoke";
            v33 = 2114;
            v34 = v24;
            v35 = 2114;
            v36 = v25;
            _os_log_error_impl(&dword_22EA08000, v20, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
          }
        }
      }

      if ([v18 count])
      {
        [v5 addEntriesFromDictionary:v18];
      }

      else
      {
        v22 = CMIOLog(0, v21);
        if (v22)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_2();
          }
        }
      }
    }

    return (*(a1[7] + 16))();
  }

  else
  {
    v8 = CMIOLog(v3, v4);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_3();
    }

    v9 = a1[7];
    v10 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"Invalid deviceID";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    return (*(v9 + 16))(v9, 0, [v10 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v11]);
  }
}

- (void)setDevicePropertyValuesForClientID:(id)d deviceID:(id)iD propertyValues:(id)values reply:(id)reply
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = CMIOLog(self, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136316163;
      v40 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v41 = 1024;
      v42 = 3043;
      v43 = 2080;
      v44 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]";
      v45 = 2114;
      selfCopy = self;
      v47 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  dCopy2 = d;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  allKeys = [values allKeys];
  v12 = [allKeys countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v35;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v35 != v14)
        {
          objc_enumerationMutation(allKeys);
        }

        v16 = *(*(&v34 + 1) + 8 * i);
        v17 = [(CMIOExtensionProvider *)v16 isEqualToString:0x284358E58];
        v18 = v17;
        v20 = CMIOLog(v17, v19);
        v21 = v20;
        if (v18)
        {
          if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v22 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v23 = [values objectForKeyedSubscript:v16];
            *buf = 136316163;
            v40 = v22;
            v41 = 1024;
            v42 = 3046;
            v43 = 2080;
            v44 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]";
            v45 = 2113;
            selfCopy = v16;
            v47 = 2113;
            dCopy = v23;
            v24 = v21;
            v25 = "%s:%d:%s %{private}@ : %{private}@";
LABEL_16:
            _os_log_impl(&dword_22EA08000, v24, OS_LOG_TYPE_INFO, v25, buf, 0x30u);
            continue;
          }
        }

        else if (v20 && os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v26 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v27 = [values objectForKeyedSubscript:v16];
          *buf = 136316162;
          v40 = v26;
          v41 = 1024;
          v42 = 3049;
          v43 = 2080;
          v44 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]";
          v45 = 2114;
          selfCopy = v16;
          v47 = 2114;
          dCopy = v27;
          v24 = v21;
          v25 = "%s:%d:%s %{public}@ : %{public}@";
          goto LABEL_16;
        }
      }

      v13 = [allKeys countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v13);
  }

  v28 = *(v29 + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke;
  block[3] = &unk_27885BA50;
  block[4] = v29;
  block[5] = iD;
  block[7] = dCopy2;
  block[8] = reply;
  block[6] = values;
  dispatch_async(v28, block);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke(uint64_t a1)
{
  v68[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 64));
  v2 = [*(*(a1 + 32) + 72) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 64));
  if (v2)
  {
    if ([*(a1 + 48) count])
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v6 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 56)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      if (v6)
      {
        if ([v2 deviceControlPID] < 1 || (v9 = objc_msgSend(v2, "deviceControlPID"), v10 = objc_msgSend(objc_msgSend(v6, "clientInfo"), "pid"), v9 == v10))
        {
          v50[0] = 0;
          v12 = [v2 _clientQueue_setAndRemoveInternalPropertyValuesForClient:objc_msgSend(v6 propertyValues:"clientInfo") error:{*(a1 + 48), v50}];
          if (!v50[0])
          {
            v13 = v12;
            if ([v12 count])
            {
              v14 = [[CMIOExtensionDeviceProperties alloc] initWithPropertyValues:v13];
              [objc_msgSend(v2 "source")];

              if (v50[0])
              {
                v17 = CMIOLog(v15, v16);
                v18 = v17;
                if (v17)
                {
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    v42 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v43 = v50[0];
                    v44 = [v50[0] localizedDescription];
                    *buf = 136316162;
                    v52 = v42;
                    v53 = 1024;
                    v54 = 3101;
                    v55 = 2080;
                    v56 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]_block_invoke";
                    v57 = 2114;
                    v58 = v43;
                    v59 = 2114;
                    v60 = v44;
                    _os_log_error_impl(&dword_22EA08000, v18, OS_LOG_TYPE_ERROR, "%s:%d:%s setDeviceProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              v49 = 0;
              v19 = [objc_msgSend(objc_msgSend(v2 "source")];
              v21 = v19;
              if (v49)
              {
                v22 = CMIOLog(v19, v20);
                v23 = v22;
                if (v22)
                {
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v45 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v46 = v49;
                    v47 = [v49 localizedDescription];
                    *buf = 136316162;
                    v52 = v45;
                    v53 = 1024;
                    v54 = 3117;
                    v55 = 2080;
                    v56 = "[CMIOExtensionProvider setDevicePropertyValuesForClientID:deviceID:propertyValues:reply:]_block_invoke";
                    v57 = 2114;
                    v58 = v46;
                    v59 = 2114;
                    v60 = v47;
                    _os_log_error_impl(&dword_22EA08000, v23, OS_LOG_TYPE_ERROR, "%s:%d:%s devicePropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              [v2 notifyPropertiesChanged:v21];
            }
          }

          v24 = *(*(a1 + 32) + 8);
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_433;
          v48[3] = &unk_27885B9D8;
          v25 = *(a1 + 64);
          v48[4] = v50[0];
          v48[5] = v25;
          dispatch_async(v24, v48);
        }

        else
        {
          v38 = CMIOLog(v10, v11);
          if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_1();
          }

          v39 = *(a1 + 64);
          v40 = MEMORY[0x277CCA9B8];
          v61 = *MEMORY[0x277CCA450];
          v62 = @"Invalid deviceControlPID";
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          (*(v39 + 16))(v39, [v40 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v41]);
        }
      }

      else
      {
        v34 = CMIOLog(v7, v8);
        if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_4();
        }

        v35 = *(a1 + 64);
        v36 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277CCA450];
        v64 = @"Invalid clientID";
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        (*(v35 + 16))(v35, [v36 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v37]);
      }
    }

    else
    {
      v30 = CMIOLog(0, v5);
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_5();
      }

      v31 = *(a1 + 64);
      v32 = MEMORY[0x277CCA9B8];
      v65 = *MEMORY[0x277CCA450];
      v66 = @"Invalid property value";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      (*(v31 + 16))(v31, [v32 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v33]);
    }
  }

  else
  {
    v26 = CMIOLog(v3, v4);
    if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_6();
    }

    v27 = *(a1 + 64);
    v28 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v68[0] = @"Invalid deviceID";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    (*(v27 + 16))(v27, [v28 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v29]);
  }
}

- (void)availableStreamPropertiesForClientID:(id)d streamID:(id)iD reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(1, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 3135;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider availableStreamPropertiesForClientID:streamID:reply:]";
      v19 = 2112;
      selfCopy = self;
      v21 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke;
  block[3] = &unk_27885B9B0;
  block[4] = self;
  block[5] = iD;
  block[6] = reply;
  dispatch_async(clientQueue, block);
}

uint64_t __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke(void *a1)
{
  v11[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    [objc_msgSend(v2 "source")];
    v5 = *(a1[6] + 16);

    return v5();
  }

  else
  {
    v7 = CMIOLog(v3, v4);
    if (v7 && os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke_cold_1();
    }

    v8 = a1[6];
    v9 = *MEMORY[0x277CCA590];
    v10 = *MEMORY[0x277CCA450];
    v11[0] = @"Invalid streamID";
    return (*(v8 + 16))(v8, 0, [MEMORY[0x277CCA9B8] errorWithDomain:v9 code:-50 userInfo:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v11, &v10, 1)}]);
  }
}

- (void)streamPropertyStatesForClientID:(id)d streamID:(id)iD properties:(id)properties reply:(id)reply
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = CMIOLogLevel(1, a2);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v17 = 1024;
      v18 = 3158;
      v19 = 2080;
      v20 = "[CMIOExtensionProvider streamPropertyStatesForClientID:streamID:properties:reply:]";
      v21 = 2112;
      selfCopy = self;
      v23 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke;
  v14[3] = &unk_27885BA28;
  v14[4] = self;
  v14[5] = iD;
  v14[6] = properties;
  v14[7] = reply;
  dispatch_async(clientQueue, v14);
}

uint64_t __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke(void *a1)
{
  v38[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    v26[0] = 0;
    v5 = [MEMORY[0x277CBEB38] dictionary];
    v6 = [v2 _clientQueue_internalPropertyStatesForProperties:a1[6]];
    if ([v6 count])
    {
      [v5 addEntriesFromDictionary:v6];
    }

    if (a1[6])
    {
      v7 = [MEMORY[0x277CBEB58] setWithSet:?];
      if (+[CMIOExtensionStream internalProperties])
      {
        [v7 minusSet:{+[CMIOExtensionStream internalProperties](CMIOExtensionStream, "internalProperties")}];
      }
    }

    else
    {
      v7 = [objc_msgSend(v2 "source")];
      v14 = CMIOLog(v7, v13);
      if (v14)
      {
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          *buf = 136316162;
          v28 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v29 = 1024;
          v30 = 3183;
          v31 = 2080;
          v32 = "[CMIOExtensionProvider streamPropertyStatesForClientID:streamID:properties:reply:]_block_invoke";
          v33 = 2114;
          v34 = v2;
          v35 = 2114;
          v36 = v7;
          _os_log_impl(&dword_22EA08000, v15, OS_LOG_TYPE_INFO, "%s:%d:%s %{public}@, stream availableProperties %{public}@", buf, 0x30u);
        }
      }
    }

    if ([v7 count])
    {
      v16 = [objc_msgSend(objc_msgSend(v2 "source")];
      v18 = v16;
      if (v26[0])
      {
        v19 = CMIOLog(v16, v17);
        v20 = v19;
        if (v19)
        {
          if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
          {
            v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v24 = v26[0];
            v25 = [v26[0] localizedDescription];
            *buf = 136316162;
            v28 = v23;
            v29 = 1024;
            v30 = 3197;
            v31 = 2080;
            v32 = "[CMIOExtensionProvider streamPropertyStatesForClientID:streamID:properties:reply:]_block_invoke";
            v33 = 2114;
            v34 = v24;
            v35 = 2114;
            v36 = v25;
            _os_log_error_impl(&dword_22EA08000, v20, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
          }
        }
      }

      if ([v18 count])
      {
        [v5 addEntriesFromDictionary:v18];
      }

      else
      {
        v22 = CMIOLog(0, v21);
        if (v22)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_2();
          }
        }
      }
    }

    return (*(a1[7] + 16))();
  }

  else
  {
    v8 = CMIOLog(v3, v4);
    if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_3();
    }

    v9 = a1[7];
    v10 = MEMORY[0x277CCA9B8];
    v37 = *MEMORY[0x277CCA450];
    v38[0] = @"Invalid streamID";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:&v37 count:1];
    return (*(v9 + 16))(v9, 0, [v10 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v11]);
  }
}

- (void)setStreamPropertyValuesForClientID:(id)d streamID:(id)iD propertyValues:(id)values reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = CMIOLog(self, a2);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316419;
      v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v17 = 1024;
      v18 = 3223;
      v19 = 2080;
      v20 = "[CMIOExtensionProvider setStreamPropertyValuesForClientID:streamID:propertyValues:reply:]";
      v21 = 2114;
      selfCopy = self;
      v23 = 2113;
      dCopy = d;
      v25 = 2114;
      valuesCopy = values;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@, propertyValues %{public}@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke;
  block[3] = &unk_27885BA50;
  block[4] = self;
  block[5] = iD;
  block[7] = d;
  block[8] = reply;
  block[6] = values;
  dispatch_async(clientQueue, block);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke(uint64_t a1)
{
  v68[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v2 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 80));
  if (v2)
  {
    if ([*(a1 + 48) count])
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v6 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 56)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      if (v6)
      {
        if ([objc_msgSend(v2 "parent")] < 1 || (v9 = objc_msgSend(objc_msgSend(v2, "parent"), "deviceControlPID"), v10 = objc_msgSend(objc_msgSend(v6, "clientInfo"), "pid"), v9 == v10))
        {
          v50[0] = 0;
          v12 = [v2 _clientQueue_setAndRemoveInternalPropertyValuesForClient:objc_msgSend(v6 propertyValues:"clientInfo") error:{*(a1 + 48), v50}];
          if (!v50[0])
          {
            v13 = v12;
            if ([v12 count])
            {
              v14 = -[CMIOExtensionStreamProperties initWithPropertyValues:client:]([CMIOExtensionStreamProperties alloc], "initWithPropertyValues:client:", v13, [v6 clientInfo]);
              [objc_msgSend(v2 "source")];

              if (v50[0])
              {
                v17 = CMIOLog(v15, v16);
                v18 = v17;
                if (v17)
                {
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
                  {
                    v45 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v46 = v50[0];
                    v47 = [v50[0] localizedDescription];
                    *buf = 136316162;
                    v52 = v45;
                    v53 = 1024;
                    v54 = 3273;
                    v55 = 2080;
                    v56 = "[CMIOExtensionProvider setStreamPropertyValuesForClientID:streamID:propertyValues:reply:]_block_invoke";
                    v57 = 2114;
                    v58 = v46;
                    v59 = 2114;
                    v60 = v47;
                    _os_log_error_impl(&dword_22EA08000, v18, OS_LOG_TYPE_ERROR, "%s:%d:%s setStreamProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              v49 = 0;
              v19 = [objc_msgSend(objc_msgSend(v2 "source")];
              v21 = v19;
              if (v49)
              {
                v22 = CMIOLog(v19, v20);
                v23 = v22;
                if (v22)
                {
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
                  {
                    v42 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                    v43 = v49;
                    v44 = [v49 localizedDescription];
                    *buf = 136316162;
                    v52 = v42;
                    v53 = 1024;
                    v54 = 3289;
                    v55 = 2080;
                    v56 = "[CMIOExtensionProvider setStreamPropertyValuesForClientID:streamID:propertyValues:reply:]_block_invoke";
                    v57 = 2114;
                    v58 = v43;
                    v59 = 2114;
                    v60 = v44;
                    _os_log_error_impl(&dword_22EA08000, v23, OS_LOG_TYPE_ERROR, "%s:%d:%s streamPropertiesForProperties error %{public}@ localizedDescription: %{public}@", buf, 0x30u);
                  }
                }
              }

              [v2 notifyPropertiesChanged:v21];
            }
          }

          v24 = *(*(a1 + 32) + 8);
          v48[0] = MEMORY[0x277D85DD0];
          v48[1] = 3221225472;
          v48[2] = __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_437;
          v48[3] = &unk_27885B9D8;
          v25 = *(a1 + 64);
          v48[4] = v50[0];
          v48[5] = v25;
          dispatch_async(v24, v48);
        }

        else
        {
          v38 = CMIOLog(v10, v11);
          if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_1();
          }

          v39 = *(a1 + 64);
          v40 = MEMORY[0x277CCA9B8];
          v61 = *MEMORY[0x277CCA450];
          v62 = @"Invalid deviceControlPID";
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
          (*(v39 + 16))(v39, [v40 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v41]);
        }
      }

      else
      {
        v34 = CMIOLog(v7, v8);
        if (v34 && os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_4();
        }

        v35 = *(a1 + 64);
        v36 = MEMORY[0x277CCA9B8];
        v63 = *MEMORY[0x277CCA450];
        v64 = @"Invalid clientID";
        v37 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        (*(v35 + 16))(v35, [v36 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v37]);
      }
    }

    else
    {
      v30 = CMIOLog(0, v5);
      if (v30 && os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_5();
      }

      v31 = *(a1 + 64);
      v32 = MEMORY[0x277CCA9B8];
      v65 = *MEMORY[0x277CCA450];
      v66 = @"Invalid property value";
      v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
      (*(v31 + 16))(v31, [v32 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v33]);
    }
  }

  else
  {
    v26 = CMIOLog(v3, v4);
    if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_6();
    }

    v27 = *(a1 + 64);
    v28 = MEMORY[0x277CCA9B8];
    v67 = *MEMORY[0x277CCA450];
    v68[0] = @"Invalid streamID";
    v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v68 forKeys:&v67 count:1];
    (*(v27 + 16))(v27, [v28 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v29]);
  }
}

- (void)_clientQueue_incrementPendingStartStreamCountForClientID:(id)d streamID:(id)iD
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(d, "UUIDString"), objc_msgSend(iD, "UUIDString")];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap objectForKeyedSubscript:{v5), "intValue"}];
  v7 = v6;
  v8 = (v6 + 1);
  v10 = CMIOLog(v6, v9);
  if (v10)
  {
    v11 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316675;
      v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v14 = 1024;
      v15 = 3316;
      v16 = 2080;
      v17 = "[CMIOExtensionProvider _clientQueue_incrementPendingStartStreamCountForClientID:streamID:]";
      v18 = 2114;
      selfCopy = self;
      v20 = 2113;
      v21 = v5;
      v22 = 1025;
      v23 = v7;
      v24 = 1025;
      v25 = v8;
      _os_log_impl(&dword_22EA08000, v11, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@ : %{private}d => %{private}d", buf, 0x3Cu);
    }
  }

  -[NSMutableDictionary setObject:forKeyedSubscript:](self->_pendingCountMap, "setObject:forKeyedSubscript:", [MEMORY[0x277CCABB0] numberWithInt:v8], v5);
}

- (void)_clientQueue_decrementPendingStreamStartCountForClientID:(id)d streamID:(id)iD
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(d, "UUIDString"), objc_msgSend(iD, "UUIDString")];
  v6 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap objectForKeyedSubscript:{v5), "intValue"}];
  v7 = v6;
  v8 = (v6 - 1);
  v10 = CMIOLog(v6, v9);
  if (v10)
  {
    v12 = v10;
    v10 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      *buf = 136316675;
      v17 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v18 = 1024;
      v19 = 3325;
      v20 = 2080;
      v21 = "[CMIOExtensionProvider _clientQueue_decrementPendingStreamStartCountForClientID:streamID:]";
      v22 = 2114;
      selfCopy = self;
      v24 = 2113;
      v25 = v5;
      v26 = 1025;
      v27 = v7;
      v28 = 1025;
      v29 = v8;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@ : %{private}d => %{private}d", buf, 0x3Cu);
    }
  }

  if (v7 >= 2)
  {
    v13 = [MEMORY[0x277CCABB0] numberWithInt:v8];
    pendingCountMap = self->_pendingCountMap;
LABEL_11:
    [(NSMutableDictionary *)pendingCountMap setObject:v13 forKeyedSubscript:v5];
    return;
  }

  if (!v8)
  {
    pendingCountMap = self->_pendingCountMap;
    v13 = 0;
    goto LABEL_11;
  }

  v15 = CMIOLog(v10, v11);
  if (v15)
  {
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider _clientQueue_decrementPendingStreamStartCountForClientID:streamID:];
    }
  }
}

- (int)_clientQueue_pendingStartStreamCountForClient:(id)client streamID:(id)d
{
  v4 = -[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap, "objectForKeyedSubscript:", [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(client, "UUIDString"), objc_msgSend(d, "UUIDString")]);

  return [v4 intValue];
}

- (void)_clientQueue_removePendingStartStreamCountForClient:(id)client streamID:(id)d
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@:start-stream", objc_msgSend(client, "UUIDString"), objc_msgSend(d, "UUIDString")];
  v6 = [(NSMutableDictionary *)self->_pendingCountMap objectForKeyedSubscript:v5];
  v8 = CMIOLog(v6, v7);
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v10 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v11 = [-[NSMutableDictionary objectForKeyedSubscript:](self->_pendingCountMap objectForKeyedSubscript:{v5), "intValue"}];
        *buf = 136316419;
        v13 = v10;
        v14 = 1024;
        v15 = 3347;
        v16 = 2080;
        v17 = "[CMIOExtensionProvider _clientQueue_removePendingStartStreamCountForClient:streamID:]";
        v18 = 2112;
        selfCopy2 = self;
        v20 = 2113;
        v21 = v5;
        v22 = 1024;
        v23 = v11;
        _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@{public}, %{private}@: forcing pending stream start count %d => 0", buf, 0x36u);
      }
    }

    [(NSMutableDictionary *)self->_pendingCountMap setObject:0 forKeyedSubscript:v5];
  }

  else if (v8 && os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136316163;
    v13 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v14 = 1024;
    v15 = 3351;
    v16 = 2080;
    v17 = "[CMIOExtensionProvider _clientQueue_removePendingStartStreamCountForClient:streamID:]";
    v18 = 2112;
    selfCopy2 = self;
    v20 = 2113;
    v21 = v5;
    _os_log_impl(&dword_22EA08000, v9, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@{public}, %{private}@: no pending stream starts", buf, 0x30u);
  }
}

- (void)startStreamForClientID:(id)d streamID:(id)iD reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLog(self, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316163;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 3357;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]";
      v19 = 2114;
      selfCopy = self;
      v21 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke;
  v12[3] = &unk_27885BA28;
  v12[4] = self;
  v12[5] = iD;
  v12[6] = d;
  v12[7] = reply;
  dispatch_async(clientQueue, v12);
}

uint64_t __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke(uint64_t a1)
{
  v82[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 80));
  v2 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 40)];
  os_unfair_lock_unlock((*(a1 + 32) + 80));
  if (!v2)
  {
    v18 = CMIOLog(v3, v4);
    if (v18 && os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_3();
    }

    v19 = *(a1 + 56);
    v20 = MEMORY[0x277CCA9B8];
    v81 = *MEMORY[0x277CCA450];
    v82[0] = @"Invalid streamID";
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v82 forKeys:&v81 count:1];
    return (*(v19 + 16))(v19, [v20 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v21]);
  }

  os_unfair_lock_lock((*(a1 + 32) + 16));
  v5 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 48)];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  if (!v5)
  {
    v22 = CMIOLog(v6, v7);
    if (v22 && os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_2();
    }

    v23 = *(a1 + 56);
    v24 = MEMORY[0x277CCA9B8];
    v79 = *MEMORY[0x277CCA450];
    v80 = @"Invalid clientID";
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
    return (*(v23 + 16))(v23, [v24 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v25]);
  }

  v8 = [v5 clientInfo];
  v9 = [objc_msgSend(v2 "source")];
  if ((v9 & 1) == 0)
  {
    v42 = CMIOLog(v9, v10);
    v43 = v42;
    if (v42 && os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
    {
      v44 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v45 = *(a1 + 32);
      v46 = *(a1 + 48);
      *buf = 136316163;
      v63 = v44;
      v64 = 1024;
      v65 = 3394;
      v66 = 2080;
      v67 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      v68 = 2114;
      v69 = v45;
      v70 = 2113;
      *v71 = v46;
      _os_log_impl(&dword_22EA08000, v43, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: refusing streaming for clientID %{private}@", buf, 0x30u);
    }

    v47 = *(a1 + 56);
    v48 = MEMORY[0x277CCA9B8];
    v77 = *MEMORY[0x277CCA450];
    v78 = @"Refusing streaming request";
    v49 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v78 forKeys:&v77 count:1];
    return (*(v47 + 16))(v47, [v48 errorWithDomain:*MEMORY[0x277CCA590] code:-4 userInfo:v49]);
  }

  v11 = [v2 direction];
  if (v11)
  {
    v13 = 0;
    v14 = 0;
    goto LABEL_6;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v34 = [objc_msgSend(v2 "source")];
  v11 = [v34 countByEnumeratingWithState:&v58 objects:v76 count:16];
  v14 = v11;
  if (!v11)
  {
    v13 = 0;
LABEL_6:
    v15 = 0;
LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v35 = 0;
  v36 = 0;
  v37 = *v59;
  while (2)
  {
    v38 = 0;
    do
    {
      if (*v59 != v37)
      {
        objc_enumerationMutation(v34);
      }

      MediaType = CMFormatDescriptionGetMediaType([*(*(&v58 + 1) + 8 * v38) formatDescription]);
      if (MediaType == 1836415096)
      {
        v35 = 1;
LABEL_44:
        v36 = 1;
        if ((v35 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }

      if (MediaType != 1936684398)
      {
        goto LABEL_44;
      }

      v35 = 1;
LABEL_45:
      if (v36)
      {
        v36 = 1;
        goto LABEL_51;
      }

LABEL_46:
      ++v38;
    }

    while (v14 != v38);
    v11 = [v34 countByEnumeratingWithState:&v58 objects:v76 count:16];
    v14 = v11;
    if (v11)
    {
      continue;
    }

    break;
  }

  if ((v35 & 1) == 0)
  {
    v13 = 0;
    v15 = 0;
    goto LABEL_57;
  }

LABEL_51:
  if (![v8 microphoneAuthorizationStatus])
  {
    [v8 authorizationStatusForMediaType:1936684398];
  }

  v15 = [v8 microphoneAuthorizationStatus] != 3;
  v11 = [v8 microphoneAuthorizationStatus];
  if (v11)
  {
    v13 = 1;
    goto LABEL_57;
  }

  v11 = [v8 hasPendingMicrophoneAuthorizationRequest];
  v13 = 1;
  if (v11)
  {
LABEL_57:
    if (v36)
    {
      goto LABEL_58;
    }

LABEL_65:
    v14 = 0;
    goto LABEL_7;
  }

  v54[0] = MEMORY[0x277D85DD0];
  v54[1] = 3221225472;
  v54[2] = __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_441;
  v54[3] = &unk_27885BA78;
  v41 = *(a1 + 32);
  v56 = v36 & 1;
  v54[4] = v41;
  v54[5] = v8;
  v55 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v57 = 1;
  v11 = [v8 requestAccessForMediaType:1936684398 performPreFlightTest:0 reply:v54];
  if ((v36 & 1) == 0)
  {
    goto LABEL_65;
  }

LABEL_58:
  if (![v8 cameraAuthorizationStatus])
  {
    [v8 authorizationStatusForMediaType:1986618469];
  }

  v16 = [v8 cameraAuthorizationStatus] != 3;
  v11 = [v8 cameraAuthorizationStatus];
  if (v11)
  {
    v14 = 1;
  }

  else
  {
    v11 = [v8 hasPendingCameraAuthorizationRequest];
    v14 = 1;
    if ((v11 & 1) == 0)
    {
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_443;
      v50[3] = &unk_27885BA78;
      v40 = *(a1 + 32);
      v52 = v13;
      v50[4] = v40;
      v50[5] = v8;
      v51 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
      v53 = 1;
      v11 = [v8 requestAccessForMediaType:1986618469 performPreFlightTest:0 reply:v50];
    }
  }

LABEL_8:
  if (!v15 && !v16)
  {
    return [*(a1 + 32) _clientQueue_startStreamForClientID:*(a1 + 48) streamID:*(a1 + 40) requestAudio:v13 requestVideo:v14 reply:*(a1 + 56)];
  }

  v26 = CMIOLog(v11, v12);
  v27 = v26;
  if (v26 && os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v28 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v29 = *(a1 + 32);
    if (v15)
    {
      v30 = 84;
    }

    else
    {
      v30 = 70;
    }

    *buf = 136316930;
    if (v16)
    {
      v31 = 84;
    }

    else
    {
      v31 = 70;
    }

    v63 = v28;
    v65 = 3469;
    if (v13)
    {
      v32 = 84;
    }

    else
    {
      v32 = 70;
    }

    v64 = 1024;
    v66 = 2080;
    v67 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
    if (v14)
    {
      v33 = 84;
    }

    else
    {
      v33 = 70;
    }

    v68 = 2114;
    v69 = v29;
    v70 = 1024;
    *v71 = v30;
    *&v71[4] = 1024;
    *&v71[6] = v31;
    v72 = 1024;
    v73 = v32;
    v74 = 1024;
    v75 = v33;
    _os_log_impl(&dword_22EA08000, v27, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: waiting for authorization (audio %c, video %c), requesting audio %c, video %c... returning no error so we don't jam up the caller", buf, 0x3Eu);
  }

  [*(a1 + 32) _clientQueue_incrementPendingStartStreamCountForClientID:*(a1 + 48) streamID:*(a1 + 40)];
  return (*(*(a1 + 56) + 16))();
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_441(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *(a1 + 32);
      *v10 = 136316162;
      if (a2 == 3)
      {
        v8 = 89;
      }

      else
      {
        v8 = 78;
      }

      *&v10[4] = v6;
      v11 = 1024;
      v12 = 3433;
      v13 = 2080;
      v14 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      v15 = 2114;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: authorized for microphone %c", v10, 0x2Cu);
    }
  }

  if (a2 == 3)
  {
    if (*(a1 + 64) == 1)
    {
      if ([*(a1 + 40) cameraAuthorizationStatus] != 3)
      {
        return;
      }

      v9 = *(a1 + 64);
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 32) _performDeferredStreamStartsForClient:*(a1 + 48) streamID:*(a1 + 56) requestVideo:v9 & 1 requestAudio:{*(a1 + 65), *v10}];
  }
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_443(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog(a1, a2);
  if (v4)
  {
    v5 = v4;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v7 = *(a1 + 32);
      *v10 = 136316162;
      if (a2 == 3)
      {
        v8 = 89;
      }

      else
      {
        v8 = 78;
      }

      *&v10[4] = v6;
      v11 = 1024;
      v12 = 3456;
      v13 = 2080;
      v14 = "[CMIOExtensionProvider startStreamForClientID:streamID:reply:]_block_invoke";
      v15 = 2114;
      v16 = v7;
      v17 = 1024;
      v18 = v8;
      _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: authorized for camera %c", v10, 0x2Cu);
    }
  }

  if (a2 == 3)
  {
    if (*(a1 + 64) == 1)
    {
      if ([*(a1 + 40) microphoneAuthorizationStatus] != 3)
      {
        return;
      }

      v9 = *(a1 + 64);
    }

    else
    {
      v9 = 0;
    }

    [*(a1 + 32) _performDeferredStreamStartsForClient:*(a1 + 48) streamID:*(a1 + 56) requestVideo:*(a1 + 65) requestAudio:{v9 & 1, *v10}];
  }
}

- (void)_clientQueue_startStreamForClientID:(id)d streamID:(id)iD requestAudio:(BOOL)audio requestVideo:(BOOL)video reply:(id)reply
{
  v57[1] = *MEMORY[0x277D85DE8];
  v11 = CMIOLog(self, a2);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316163;
      v46 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v47 = 1024;
      v48 = 3509;
      v49 = 2080;
      v50 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
      v51 = 2114;
      *v52 = self;
      *&v52[8] = 2113;
      v53[0] = d;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_streamsMapLock);
  v13 = [(NSMutableDictionary *)self->_streamsMap objectForKey:iD];
  os_unfair_lock_unlock(&self->_streamsMapLock);
  if (v13)
  {
    os_unfair_lock_lock(&self->_contextsMapLock);
    v16 = [(NSMutableDictionary *)self->_contextsMap objectForKey:d];
    os_unfair_lock_unlock(&self->_contextsMapLock);
    if (v16)
    {
      clientInfo = [v16 clientInfo];
      v44[0] = 0;
      v20 = [objc_msgSend(v13 "_clientQueue_streamingClientsMap")];
      if (v20)
      {
        v22 = CMIOLog(v20, v21);
        v23 = v22;
        if (v22)
        {
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            v24 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            *buf = 136316163;
            v46 = v24;
            v47 = 1024;
            v48 = 3560;
            v49 = 2080;
            v50 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
            v51 = 2114;
            *v52 = self;
            *&v52[8] = 2113;
            v53[0] = clientInfo;
            _os_log_impl(&dword_22EA08000, v23, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: add streaming client %{private}@", buf, 0x30u);
          }
        }

        [v13 _clientQueue_addStreamingClient:clientInfo];
      }

      else
      {
        v31 = [v16 setClientSourcedByNonStreamingProxyFrontedExtension:{-[NSArray containsObject:](self->_nonStreamingProxyFrontedExtensionPIDs, "containsObject:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(clientInfo, "pid")))}];
        v33 = CMIOLog(v31, v32);
        v34 = v33;
        if (v33 && os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          v35 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v36 = [clientInfo pid];
          isClientSourcedByNonStreamingProxyFrontedExtension = [v16 isClientSourcedByNonStreamingProxyFrontedExtension];
          *buf = 136316419;
          if (isClientSourcedByNonStreamingProxyFrontedExtension)
          {
            v38 = 84;
          }

          else
          {
            v38 = 70;
          }

          v46 = v35;
          v47 = 1024;
          v48 = 3543;
          v49 = 2080;
          v50 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
          v51 = 1025;
          *v52 = v36;
          *&v52[4] = 1024;
          *&v52[6] = v38;
          LOWORD(v53[0]) = 2112;
          *(v53 + 2) = v16;
          _os_log_impl(&dword_22EA08000, v34, OS_LOG_TYPE_DEFAULT, "%s:%d:%s [%{private}d] set proxy streaming status to %c for %@", buf, 0x32u);
        }

        v39 = [objc_msgSend(v13 "source")];
        if (v39)
        {
          v41 = CMIOLog(v39, v40);
          v42 = v41;
          if (v41 && os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
          {
            v43 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            *buf = 136316163;
            v46 = v43;
            v47 = 1024;
            v48 = 3553;
            v49 = 2080;
            v50 = "[CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:]";
            v51 = 2114;
            *v52 = self;
            *&v52[8] = 2113;
            v53[0] = clientInfo;
            _os_log_impl(&dword_22EA08000, v42, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: start streaming for client %{private}@", buf, 0x30u);
          }

          [v13 _clientQueue_addStreamingClient:clientInfo];
          [(CMIOExtensionProvider *)self _clientQueue_notifyIsRunningSomewhereForStream:v13];
        }
      }

      (*(reply + 2))(reply, v44[0]);
    }

    else
    {
      v28 = CMIOLog(v17, v18);
      if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        [CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:];
      }

      v29 = MEMORY[0x277CCA9B8];
      v54 = *MEMORY[0x277CCA450];
      v55 = @"Invalid clientID";
      v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
      (*(reply + 2))(reply, [v29 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v30]);
    }
  }

  else
  {
    v25 = CMIOLog(v14, v15);
    if (v25 && os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      [CMIOExtensionProvider _clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:];
    }

    v26 = MEMORY[0x277CCA9B8];
    v56 = *MEMORY[0x277CCA450];
    v57[0] = @"Invalid streamID";
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    (*(reply + 2))(reply, [v26 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v27]);
  }
}

- (void)_performDeferredStreamStartsForClient:(id)client streamID:(id)d requestVideo:(BOOL)video requestAudio:(BOOL)audio
{
  v25 = *MEMORY[0x277D85DE8];
  v11 = CMIOLog(self, a2);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v19 = 1024;
      v20 = 3606;
      v21 = 2080;
      v22 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]";
      v23 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: dispatching pending stream starting to client queue", buf, 0x26u);
    }
  }

  clientQueue = self->_clientQueue;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke;
  v14[3] = &unk_27885BAC8;
  v14[4] = self;
  v14[5] = client;
  v14[6] = d;
  audioCopy = audio;
  videoCopy = video;
  dispatch_async(clientQueue, v14);
}

void __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) _clientQueue_pendingStartStreamCountForClient:*(a1 + 40) streamID:*(a1 + 48)];
  v3 = [*(a1 + 32) _clientQueue_removePendingStartStreamCountForClient:*(a1 + 40) streamID:*(a1 + 48)];
  v5 = CMIOLog(v3, v4);
  if (v5)
  {
    v8 = v5;
    v5 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v9 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v10 = *(a1 + 32);
      *buf = 136316162;
      v26 = v9;
      v27 = 1024;
      v28 = 3610;
      v29 = 2080;
      v30 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]_block_invoke";
      v31 = 2114;
      v32 = v10;
      v33 = 1024;
      v34 = v2;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: %d stream starts are pending", buf, 0x2Cu);
    }
  }

  if (v2 >= 1)
  {
    v11 = 1;
    *&v7 = 136316162;
    v21 = v7;
    do
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2020000000;
      v24 = v11;
      v12 = CMIOLog(v5, v6);
      v13 = v12;
      if (v12)
      {
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
          v15 = *(a1 + 32);
          *buf = v21;
          v26 = v14;
          v27 = 1024;
          v28 = 3614;
          v29 = 2080;
          v30 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]_block_invoke";
          v31 = 2114;
          v32 = v15;
          v33 = 1024;
          v34 = v11;
          _os_log_impl(&dword_22EA08000, v13, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: attempting deferred stream start %d", buf, 0x2Cu);
        }
      }

      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = *(a1 + 57);
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444;
      v22[3] = &unk_27885BAA0;
      v22[4] = v16;
      v22[5] = v23;
      [v16 _clientQueue_startStreamForClientID:v17 streamID:v18 requestAudio:v19 requestVideo:v20 reply:{v22, v21}];
      _Block_object_dispose(v23, 8);
      ++v11;
      --v2;
    }

    while (v2);
  }
}

void __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = CMIOLog(a1, a2);
  v5 = v4;
  if (a2)
  {
    if (v4)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444_cold_1();
      }
    }
  }

  else if (v4 && os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
    v7 = *(a1 + 32);
    v8 = *(*(*(a1 + 40) + 8) + 24);
    v9 = 136316162;
    v10 = v6;
    v11 = 1024;
    v12 = 3620;
    v13 = 2080;
    v14 = "[CMIOExtensionProvider _performDeferredStreamStartsForClient:streamID:requestVideo:requestAudio:]_block_invoke";
    v15 = 2114;
    v16 = v7;
    v17 = 1026;
    v18 = v8;
    _os_log_impl(&dword_22EA08000, v5, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: startStream %{public}d succeeded", &v9, 0x2Cu);
  }
}

- (void)stopStreamForClientID:(id)d streamID:(id)iD reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLog(self, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316163;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 3630;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]";
      v19 = 2114;
      selfCopy = self;
      v21 = 2113;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, %{private}@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke;
  v12[3] = &unk_27885BAF0;
  v12[4] = self;
  v12[5] = d;
  v12[6] = iD;
  v12[7] = reply;
  dispatch_async(clientQueue, v12);
}

uint64_t __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke(uint64_t a1)
{
  v56[1] = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(a1 + 32) _clientQueue_pendingStartStreamCountForClient:*(a1 + 40) streamID:*(a1 + 48)];
  if (v3 < 1)
  {
    os_unfair_lock_lock((*(a1 + 32) + 80));
    v11 = [*(*(a1 + 32) + 88) objectForKey:*(a1 + 48)];
    os_unfair_lock_unlock((*(a1 + 32) + 80));
    if (v11)
    {
      os_unfair_lock_lock((*(a1 + 32) + 16));
      v14 = [*(*(a1 + 32) + 32) objectForKey:*(a1 + 40)];
      os_unfair_lock_unlock((*(a1 + 32) + 16));
      if (v14)
      {
        v17 = [v14 clientInfo];
        v42 = 0;
        v18 = [v11 _clientQueue_streamingClientsMap];
        if ([v18 objectForKey:*v2] && objc_msgSend(v18, "count") == 1)
        {
          v19 = [objc_msgSend(v11 "source")];
          if ((v19 & 1) == 0)
          {
            v21 = CMIOLog(v19, v20);
            if (v21)
            {
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_2();
              }
            }
          }

          v22 = [v11 _clientQueue_removeStreamingClient:v17];
          v24 = CMIOLog(v22, v23);
          v25 = v24;
          if (v24 && os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v26 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
            v27 = *(a1 + 32);
            *buf = 136316163;
            v44 = v26;
            v45 = 1024;
            v46 = 3684;
            v47 = 2080;
            v48 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]_block_invoke";
            v49 = 2114;
            v50 = v27;
            v51 = 2113;
            v52 = v17;
            _os_log_impl(&dword_22EA08000, v25, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, stop streaming for client %{private}@", buf, 0x30u);
          }

          [*(a1 + 32) _clientQueue_notifyIsRunningSomewhereForStream:v11];
        }

        else
        {
          v32 = [v11 _clientQueue_removeStreamingClient:v17];
          v34 = CMIOLog(v32, v33);
          if (v34)
          {
            v35 = v34;
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              v36 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
              v37 = *(a1 + 32);
              *buf = 136316163;
              v44 = v36;
              v45 = 1024;
              v46 = 3691;
              v47 = 2080;
              v48 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]_block_invoke";
              v49 = 2114;
              v50 = v37;
              v51 = 2113;
              v52 = v17;
              _os_log_impl(&dword_22EA08000, v35, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@, removed streaming client %{private}@", buf, 0x30u);
            }
          }
        }

        if (![v11 direction])
        {
          [*(a1 + 32) removeSystemStatusAttributionsForClient:v17 stream:v11];
        }

        return (*(*(a1 + 56) + 16))();
      }

      else
      {
        v38 = CMIOLog(v15, v16);
        if (v38 && os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_3();
        }

        v39 = *(a1 + 56);
        v40 = MEMORY[0x277CCA9B8];
        v53 = *MEMORY[0x277CCA450];
        v54 = @"Invalid clientID";
        v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v54 forKeys:&v53 count:1];
        return (*(v39 + 16))(v39, [v40 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v41]);
      }
    }

    else
    {
      v28 = CMIOLog(v12, v13);
      if (v28 && os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_4();
      }

      v29 = *(a1 + 56);
      v30 = MEMORY[0x277CCA9B8];
      v55 = *MEMORY[0x277CCA450];
      v56[0] = @"Invalid streamID";
      v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:&v55 count:1];
      return (*(v29 + 16))(v29, [v30 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v31]);
    }
  }

  else
  {
    v5 = v3;
    v6 = CMIOLog(v3, v4);
    if (v6)
    {
      v7 = v6;
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
        v9 = *(a1 + 32);
        *buf = 136316162;
        v44 = v8;
        v45 = 1024;
        v46 = 3636;
        v47 = 2080;
        v48 = "[CMIOExtensionProvider stopStreamForClientID:streamID:reply:]_block_invoke";
        v49 = 2114;
        v50 = v9;
        v51 = 1024;
        LODWORD(v52) = v5;
        _os_log_impl(&dword_22EA08000, v7, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %{public}@: stop called for pending deferred start %d... just returning", buf, 0x2Cu);
      }
    }

    [*(a1 + 32) _clientQueue_decrementPendingStreamStartCountForClientID:*(a1 + 40) streamID:*(a1 + 48)];
    return (*(*(a1 + 56) + 16))();
  }
}

- (void)notifyAvailableDevicesChanged:(id)changed
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v21 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v22 = 1024;
      v23 = 3704;
      v24 = 2080;
      v25 = "[CMIOExtensionProvider notifyAvailableDevicesChanged:]";
      v26 = 2112;
      selfCopy = self;
      v28 = 2112;
      changedCopy = changed;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = [changed countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(changed);
        }

        -[NSArray addObject:](v7, "addObject:", [*(*(&v15 + 1) + 8 * v11++) UUIDString]);
      }

      while (v9 != v11);
      v9 = [changed countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }

  os_unfair_lock_lock(&self->_changedDeviceIDsLock);
  changedDeviceIDs = self->_changedDeviceIDs;
  self->_changedDeviceIDs = v7;
  os_unfair_lock_unlock(&self->_changedDeviceIDsLock);

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__CMIOExtensionProvider_notifyAvailableDevicesChanged___block_invoke;
  block[3] = &unk_27885B8E8;
  block[4] = self;
  dispatch_async(clientQueue, block);
}

void __55__CMIOExtensionProvider_notifyAvailableDevicesChanged___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 112));
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 112));
  if (v3)
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v4 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) availableDevicesChanged:v3];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)notifyAvailableStreamsChangedWithDeviceID:(id)d streamIDs:(id)ds
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v23 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v24 = 1024;
      v25 = 3747;
      v26 = 2080;
      v27 = "[CMIOExtensionProvider notifyAvailableStreamsChangedWithDeviceID:streamIDs:]";
      v28 = 2112;
      selfCopy = self;
      v30 = 2112;
      dCopy = d;
      v32 = 2112;
      dsCopy = ds;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, %@", buf, 0x3Au);
    }
  }

  v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [ds countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      v13 = 0;
      do
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(ds);
        }

        -[NSArray addObject:](v9, "addObject:", [*(*(&v17 + 1) + 8 * v13++) UUIDString]);
      }

      while (v11 != v13);
      v11 = [ds countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  os_unfair_lock_lock(&self->_changedStreamIDsLock);
  changedStreamIDs = self->_changedStreamIDs;
  self->_changedStreamIDs = v9;
  os_unfair_lock_unlock(&self->_changedStreamIDsLock);

  clientQueue = self->_clientQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __77__CMIOExtensionProvider_notifyAvailableStreamsChangedWithDeviceID_streamIDs___block_invoke;
  v16[3] = &unk_27885B938;
  v16[4] = self;
  v16[5] = d;
  dispatch_async(clientQueue, v16);
}

void __77__CMIOExtensionProvider_notifyAvailableStreamsChangedWithDeviceID_streamIDs___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 128));
  v2 = *(a1 + 32);
  v3 = *(v2 + 136);
  *(v2 + 136) = 0;
  os_unfair_lock_unlock((*(a1 + 32) + 128));
  if (v3)
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    v4 = [*(*(a1 + 32) + 32) allValues];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v11 = 0u;
    v12 = 0u;
    v9 = 0u;
    v10 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(v4);
          }

          [*(*(&v9 + 1) + 8 * v8++) availableStreamsChangedWithDeviceID:objc_msgSend(*(a1 + 40) streamIDs:{"UUIDString"), v3}];
        }

        while (v6 != v8);
        v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }
  }
}

- (void)captureAsyncStillImageForClientID:(id)d streamID:(id)iD uniqueID:(int64_t)uniqueID options:(id)options reply:(id)reply
{
  v29 = *MEMORY[0x277D85DE8];
  v13 = CMIOLogLevel(1, a2);
  if (v13)
  {
    v14 = v13;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v18 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v19 = 1024;
      v20 = 3790;
      v21 = 2080;
      v22 = "[CMIOExtensionProvider captureAsyncStillImageForClientID:streamID:uniqueID:options:reply:]";
      v23 = 2112;
      selfCopy = self;
      v25 = 2112;
      dCopy = d;
      v27 = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_22EA08000, v14, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, %@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke;
  v16[3] = &unk_27885BB40;
  v16[4] = self;
  v16[5] = iD;
  v16[8] = reply;
  v16[9] = uniqueID;
  v16[6] = d;
  v16[7] = options;
  dispatch_async(clientQueue, v16);
}

uint64_t __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke(void *a1)
{
  v31[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    os_unfair_lock_lock((a1[4] + 16));
    v5 = [*(a1[4] + 32) objectForKey:a1[6]];
    [v5 setClientSourcedByNonStreamingProxyFrontedExtension:{objc_msgSend(*(a1[4] + 160), "containsObject:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(objc_msgSend(v5, "clientInfo"), "pid")))}];
    os_unfair_lock_unlock((a1[4] + 16));
    if (v5)
    {
      v8 = [v5 isClientSourcedByNonStreamingProxyFrontedExtension];
      if (v8)
      {
        v10 = CMIOLog(v8, v9);
        if (v10)
        {
          if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
          {
            __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_2();
          }
        }

        v11 = a1[8];
        v12 = MEMORY[0x277CCA9B8];
        v26 = *MEMORY[0x277CCA450];
        v27 = @"Client is fronted by proxy that is not streaming";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
        return (*(v11 + 16))(v11, 0, [v12 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v13]);
      }

      else
      {
        v23 = a1[7];
        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_448;
        v25[3] = &unk_27885BB18;
        v24 = a1[9];
        v25[4] = a1[8];
        return [v2 captureAsyncStillImage:v24 options:v23 completionHandler:v25];
      }
    }

    else
    {
      v19 = CMIOLog(v6, v7);
      if (v19 && os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_3();
      }

      v20 = a1[8];
      v21 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v29 = @"Invalid clientID";
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      return (*(v20 + 16))(v20, 0, [v21 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v22]);
    }
  }

  else
  {
    v15 = CMIOLog(v3, v4);
    if (v15 && os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_4();
    }

    v16 = a1[8];
    v17 = MEMORY[0x277CCA9B8];
    v30 = *MEMORY[0x277CCA450];
    v31[0] = @"Invalid streamID";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
    return (*(v16 + 16))(v16, 0, [v17 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v18]);
  }
}

uint64_t __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_448(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a3 userInfo:0];
  }

  v4 = *(*(a1 + 32) + 16);

  return v4();
}

- (void)enqueueReactionEffectForClientID:(id)d streamID:(id)iD reactionType:(id)type reply:(id)reply
{
  v27 = *MEMORY[0x277D85DE8];
  v11 = CMIOLogLevel(1, a2);
  if (v11)
  {
    v12 = v11;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316418;
      v16 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v17 = 1024;
      v18 = 3842;
      v19 = 2080;
      v20 = "[CMIOExtensionProvider enqueueReactionEffectForClientID:streamID:reactionType:reply:]";
      v21 = 2112;
      selfCopy = self;
      v23 = 2112;
      dCopy = d;
      v25 = 2112;
      iDCopy = iD;
      _os_log_impl(&dword_22EA08000, v12, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@, %@", buf, 0x3Au);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke;
  block[3] = &unk_27885BA50;
  block[4] = self;
  block[5] = iD;
  block[7] = type;
  block[8] = reply;
  block[6] = d;
  dispatch_async(clientQueue, block);
}

uint64_t __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((a1[4] + 80));
  v2 = [*(a1[4] + 88) objectForKey:a1[5]];
  os_unfair_lock_unlock((a1[4] + 80));
  if (v2)
  {
    os_unfair_lock_lock((a1[4] + 16));
    v5 = [*(a1[4] + 32) objectForKey:a1[6]];
    os_unfair_lock_unlock((a1[4] + 16));
    if (v5)
    {
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_451;
      v18[3] = &unk_27885BB68;
      v8 = a1[7];
      v18[4] = a1[8];
      return [v2 enqueueReactionEffect:v8 completionHandler:v18];
    }

    else
    {
      v14 = CMIOLog(v6, v7);
      if (v14)
      {
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_2();
        }
      }

      v15 = a1[8];
      v16 = MEMORY[0x277CCA9B8];
      v19 = *MEMORY[0x277CCA450];
      v20 = @"Invalid clientID";
      v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
      return (*(v15 + 16))(v15, [v16 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v17]);
    }
  }

  else
  {
    v10 = CMIOLog(v3, v4);
    if (v10 && os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_3();
    }

    v11 = a1[8];
    v12 = MEMORY[0x277CCA9B8];
    v21 = *MEMORY[0x277CCA450];
    v22[0] = @"Invalid streamID";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    return (*(v11 + 16))(v11, [v12 errorWithDomain:*MEMORY[0x277CCA590] code:-50 userInfo:v13]);
  }
}

uint64_t __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_451(uint64_t a1, int a2)
{
  if (a2)
  {
    [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA590] code:a2 userInfo:0];
  }

  v3 = *(*(a1 + 32) + 16);

  return v3();
}

- (void)_clientQueue_notifyDevicePropertiesChangedWithDeviceID:(id)d propertyStates:(id)states
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v21 = 1024;
      v22 = 3888;
      v23 = 2080;
      v24 = "[CMIOExtensionProvider _clientQueue_notifyDevicePropertiesChangedWithDeviceID:propertyStates:]";
      v25 = 2112;
      selfCopy = self;
      v27 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v14 + 1) + 8 * v13++) devicePropertiesChangedWithDeviceID:objc_msgSend(d propertyStates:{"UUIDString"), states}];
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_clientQueue_notifyStreamPropertiesChangedWithStreamID:(id)d propertyStates:(id)states
{
  v29 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(1, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v20 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v21 = 1024;
      v22 = 3904;
      v23 = 2080;
      v24 = "[CMIOExtensionProvider _clientQueue_notifyStreamPropertiesChangedWithStreamID:propertyStates:]";
      v25 = 2112;
      selfCopy = self;
      v27 = 2112;
      dCopy = d;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v10 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(allValues);
        }

        [*(*(&v14 + 1) + 8 * v13++) streamPropertiesChangedWithStreamID:objc_msgSend(d propertyStates:{"UUIDString"), states}];
      }

      while (v11 != v13);
      v11 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v11);
  }
}

- (void)_clientQueue_notifyIsRunningSomewhereForStream:(id)stream
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = CMIOLogLevel(1, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      v29 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v30 = 1024;
      v31 = 3920;
      v32 = 2080;
      v33 = "[CMIOExtensionProvider _clientQueue_notifyIsRunningSomewhereForStream:]";
      v34 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@", buf, 0x26u);
    }
  }

  parent = [stream parent];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  streams = [parent streams];
  v9 = [streams countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (!v9)
  {
    if (([parent isRunningSomewhere] & 1) == 0)
    {
      return;
    }

    v11 = 0;
    goto LABEL_15;
  }

  v10 = v9;
  v11 = 0;
  v12 = *v22;
  do
  {
    for (i = 0; i != v10; ++i)
    {
      if (*v22 != v12)
      {
        objc_enumerationMutation(streams);
      }

      v11 |= [objc_msgSend(*(*(&v21 + 1) + 8 * i) "_clientQueue_streamingClientsMap")] != 0;
    }

    v10 = [streams countByEnumeratingWithState:&v21 objects:v27 count:16];
  }

  while (v10);
  if ((v11 & 1) != [parent isRunningSomewhere])
  {
LABEL_15:
    [parent setRunningSomewhere:v11 & 1];
    v14 = [CMIOExtensionPropertyState alloc];
    v15 = -[CMIOExtensionPropertyState initWithValue:attributes:](v14, "initWithValue:attributes:", [MEMORY[0x277CCABB0] numberWithBool:v11 & 1], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    v16 = -[CMIOExtensionPropertyState initWithValue:attributes:]([CMIOExtensionPropertyState alloc], "initWithValue:attributes:", [objc_msgSend(stream "streamID")], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    v17 = -[CMIOExtensionPropertyState initWithValue:attributes:]([CMIOExtensionPropertyState alloc], "initWithValue:attributes:", [objc_msgSend(parent "deviceID")], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    if ([parent legacyDeviceID] && (objc_msgSend(objc_msgSend(parent, "legacyDeviceID"), "isEqualToString:", objc_msgSend(objc_msgSend(parent, "deviceID"), "UUIDString")) & 1) == 0)
    {
      v18 = -[CMIOExtensionPropertyState initWithValue:attributes:]([CMIOExtensionPropertyState alloc], "initWithValue:attributes:", [parent legacyDeviceID], +[CMIOExtensionPropertyAttributes readOnlyPropertyAttribute](CMIOExtensionPropertyAttributes, "readOnlyPropertyAttribute"));
    }

    else
    {
      v18 = 0;
    }

    v25[0] = 0x284358E18;
    v25[1] = 0x284358E38;
    v26[0] = v15;
    v26[1] = v16;
    v25[2] = 0x284358DB8;
    v26[2] = v17;
    v19 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:{objc_msgSend(MEMORY[0x277CBEAC0], "dictionaryWithObjects:forKeys:count:", v26, v25, 3)}];
    v20 = v19;
    if (v18)
    {
      [v19 setObject:v18 forKeyedSubscript:0x284358DD8];
    }

    [parent notifyPropertiesChanged:v20];
  }
}

- (void)_clientQueue_sendSampleForStream:(id)stream sample:(id)sample
{
  sampleCopy = sample;
  v65 = *MEMORY[0x277D85DE8];
  FormatDescription = CMSampleBufferGetFormatDescription([sample sampleBuffer]);
  MediaType = CMFormatDescriptionGetMediaType(FormatDescription);
  v9 = CMIOLogLevel(3, v8);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v11 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      *buf = 136317186;
      v48 = v11;
      v49 = 1024;
      v50 = 3960;
      v51 = 2080;
      v52 = "[CMIOExtensionProvider _clientQueue_sendSampleForStream:sample:]";
      v53 = 2112;
      selfCopy = self;
      v55 = 2112;
      streamCopy2 = stream;
      v57 = 1024;
      v58 = HIBYTE(MediaType);
      v59 = 1024;
      v60 = BYTE2(MediaType);
      v61 = 1024;
      v62 = BYTE1(MediaType);
      v63 = 1024;
      v64 = MediaType;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@ %c%c%c%c", buf, 0x48u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  allValues = [(NSMutableDictionary *)self->_contextsMap allValues];
  v13 = allValues;
  if (self->_nonStreamingProxyFrontedExtensionPIDsHasChanged)
  {
    selfCopy2 = self;
    v34 = sampleCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v15 = [allValues countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v42;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v42 != v17)
          {
            objc_enumerationMutation(v13);
          }

          [*(*(&v41 + 1) + 8 * i) setClientSourcedByNonStreamingProxyFrontedExtension:{-[NSArray containsObject:](selfCopy2->_nonStreamingProxyFrontedExtensionPIDs, "containsObject:", objc_msgSend(MEMORY[0x277CCABB0], "numberWithInt:", objc_msgSend(objc_msgSend(*(*(&v41 + 1) + 8 * i), "clientInfo"), "pid")))}];
        }

        v16 = [v13 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v16);
    }

    self = selfCopy2;
    selfCopy2->_nonStreamingProxyFrontedExtensionPIDsHasChanged = 0;
    sampleCopy = v34;
  }

  selfCopy3 = self;
  os_unfair_lock_unlock(&self->_contextsMapLock);
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v19 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v19)
  {
    v21 = v19;
    v22 = *v38;
    LODWORD(v33) = BYTE2(MediaType);
    HIDWORD(v33) = HIBYTE(MediaType);
    LODWORD(v32) = MediaType;
    HIDWORD(v32) = BYTE1(MediaType);
    *&v20 = 136317186;
    v31 = v20;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v38 != v22)
        {
          objc_enumerationMutation(v13);
        }

        v24 = *(*(&v37 + 1) + 8 * j);
        if ([objc_msgSend(stream _clientQueue_streamingClientsMap])
        {
          clientInfo = [v24 clientInfo];
          if (MediaType == 1936684398)
          {
            microphoneAuthorizationStatus = [clientInfo microphoneAuthorizationStatus];
          }

          else
          {
            microphoneAuthorizationStatus = [clientInfo cameraAuthorizationStatus];
          }

          if (microphoneAuthorizationStatus == 3)
          {
            if (([v24 isClientSourcedByNonStreamingProxyFrontedExtension] & 1) == 0)
            {
              [v24 receivedSampleWithStreamID:objc_msgSend(objc_msgSend(stream sample:{"streamID"), "UUIDString"), sampleCopy}];
            }
          }

          else
          {
            v28 = CMIOLogLevel(3, v27);
            if (v28)
            {
              v29 = v28;
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                v30 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
                *buf = v31;
                v48 = v30;
                v49 = 1024;
                v50 = 3991;
                v51 = 2080;
                v52 = "[CMIOExtensionProvider _clientQueue_sendSampleForStream:sample:]";
                v53 = 2112;
                selfCopy = selfCopy3;
                v55 = 2112;
                streamCopy2 = stream;
                v57 = 1024;
                v58 = HIDWORD(v33);
                v59 = 1024;
                v60 = v33;
                v61 = 1024;
                v62 = HIDWORD(v32);
                v63 = 1024;
                v64 = v32;
                _os_log_impl(&dword_22EA08000, v29, OS_LOG_TYPE_DEFAULT, "%s:%d:%s not authorized %@, %@ %c%c%c%c", buf, 0x48u);
              }
            }
          }
        }
      }

      v21 = [v13 countByEnumeratingWithState:&v37 objects:v45 count:16];
    }

    while (v21);
  }
}

- (void)consumeSampleBufferForStream:(id)stream client:(id)client reply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  v9 = CMIOLogLevel(3, a2);
  if (v9)
  {
    v10 = v9;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v14 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v15 = 1024;
      v16 = 3999;
      v17 = 2080;
      v18 = "[CMIOExtensionProvider consumeSampleBufferForStream:client:reply:]";
      v19 = 2112;
      selfCopy = self;
      v21 = 2112;
      streamCopy = stream;
      _os_log_impl(&dword_22EA08000, v10, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke;
  v12[3] = &unk_27885BA28;
  v12[4] = stream;
  v12[5] = client;
  v12[6] = self;
  v12[7] = reply;
  dispatch_async(clientQueue, v12);
}

uint64_t __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  if ([objc_msgSend(*(a1 + 32) "_clientQueue_streamingClientsMap")])
  {
    os_unfair_lock_lock((*(a1 + 48) + 80));
    v3 = [*(*(a1 + 48) + 32) objectForKey:{objc_msgSend(*(a1 + 40), "clientID")}];
    os_unfair_lock_unlock((*(a1 + 48) + 80));
    if (v3)
    {
      v6 = [objc_msgSend(*(a1 + 32) "streamID")];
      v7 = *(*(a1 + 48) + 8);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_457;
      v17[3] = &unk_27885BB90;
      v17[4] = *(a1 + 56);
      return [v3 pullSampleBufferForStreamID:v6 replyq:v7 reply:v17];
    }

    v16 = CMIOLog(v4, v5);
    if (v16)
    {
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_1();
      }
    }

    v10 = *(a1 + 56);
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA590];
    v18 = *MEMORY[0x277CCA450];
    v19 = @"Invalid clientID";
    v13 = MEMORY[0x277CBEAC0];
    v14 = &v19;
    v15 = &v18;
  }

  else
  {
    v9 = CMIOLog(0, v2);
    if (v9 && os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_2();
    }

    v10 = *(a1 + 56);
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277CCA590];
    v20 = *MEMORY[0x277CCA450];
    v21[0] = @"Invalid not streaming";
    v13 = MEMORY[0x277CBEAC0];
    v14 = v21;
    v15 = &v20;
  }

  return (*(v10 + 16))(v10, 0, 0, 0, 0, [v11 errorWithDomain:v12 code:-50 userInfo:{objc_msgSend(v13, "dictionaryWithObjects:forKeys:count:", v14, v15, 1)}]);
}

uint64_t __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_457(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    valuePtr = 0;
    v20 = 0;
    v8 = [a2 sampleBuffer];
    v9 = CMGetAttachment(v8, kCMIOSampleBufferAttachmentKey_DiscontinuityFlags, 0);
    if (v9)
    {
      v10 = v9;
      TypeID = CFNumberGetTypeID();
      if (TypeID == CFGetTypeID(v10) && !CFNumberGetValue(v10, kCFNumberSInt32Type, &valuePtr))
      {
        valuePtr = 0;
      }
    }

    v12 = [a2 sampleBuffer];
    v13 = CMGetAttachment(v12, kCMIOSampleBufferAttachmentKey_SequenceNumber, 0);
    if (v13)
    {
      v14 = v13;
      v15 = CFNumberGetTypeID();
      if (v15 == CFGetTypeID(v14) && !CFNumberGetValue(v14, kCFNumberSInt64Type, &v20))
      {
        v20 = 0;
      }
    }

    v16 = *(a1 + 32);
    v17 = [a2 sampleBuffer];
    return (*(v16 + 16))(v16, v17, v20, valuePtr, a3, a4);
  }

  else
  {
    v19 = *(*(a1 + 32) + 16);

    return v19();
  }
}

- (void)notifyScheduledOutputChangedForStream:(id)stream scheduledOutput:(id)output
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = CMIOLogLevel(2, a2);
  if (v7)
  {
    v8 = v7;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136316162;
      v12 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      v13 = 1024;
      v14 = 4052;
      v15 = 2080;
      v16 = "[CMIOExtensionProvider notifyScheduledOutputChangedForStream:scheduledOutput:]";
      v17 = 2112;
      selfCopy = self;
      v19 = 2112;
      streamCopy = stream;
      _os_log_impl(&dword_22EA08000, v8, OS_LOG_TYPE_DEFAULT, "%s:%d:%s %@, %@", buf, 0x30u);
    }
  }

  clientQueue = self->_clientQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __79__CMIOExtensionProvider_notifyScheduledOutputChangedForStream_scheduledOutput___block_invoke;
  block[3] = &unk_27885BBB8;
  block[4] = self;
  block[5] = stream;
  block[6] = output;
  dispatch_async(clientQueue, block);
}

void *__79__CMIOExtensionProvider_notifyScheduledOutputChangedForStream_scheduledOutput___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v2 = [*(*(a1 + 32) + 32) allValues];
  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([objc_msgSend(*(a1 + 40) "_clientQueue_streamingClientsMap")])
        {
          [v7 streamScheduledOutputChangedWithStreamID:objc_msgSend(objc_msgSend(*(a1 + 40) scheduledOutput:{"streamID"), "UUIDString"), *(a1 + 48)}];
        }

        v6 = v6 + 1;
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      v4 = result;
    }

    while (result);
  }

  return result;
}

- (void)updateNonStreamingProxyFrontedExtensionPIDs:(id)ds
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = CMIOLog(self, a2);
  if (v5)
  {
    v6 = v5;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
      nonStreamingProxyFrontedExtensionPIDs = self->_nonStreamingProxyFrontedExtensionPIDs;
      v10 = 136316163;
      v11 = v7;
      v12 = 1024;
      v13 = 4157;
      v14 = 2080;
      v15 = "[CMIOExtensionProvider updateNonStreamingProxyFrontedExtensionPIDs:]";
      v16 = 2113;
      v17 = nonStreamingProxyFrontedExtensionPIDs;
      v18 = 2113;
      dsCopy = ds;
      _os_log_impl(&dword_22EA08000, v6, OS_LOG_TYPE_DEFAULT, "%s:%d:%s updating %{private}@ to %{private}@", &v10, 0x30u);
    }
  }

  os_unfair_lock_lock(&self->_contextsMapLock);
  v9 = self->_nonStreamingProxyFrontedExtensionPIDs;
  self->_nonStreamingProxyFrontedExtensionPIDs = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:ds];

  self->_nonStreamingProxyFrontedExtensionPIDsHasChanged = 1;
  os_unfair_lock_unlock(&self->_contextsMapLock);
}

- (void)initWithSource:clientQueue:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)addDevice:error:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)addDevice:error:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)removeDevice:error:.cold.1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)removeDevice:error:.cold.2()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

+ (void)proprietaryDefaultsDomainForAuditToken:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

+ (void)proprietaryDefaultsDomainForAuditToken:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

+ (void)proprietaryDefaultsDomainForAuditToken:.cold.4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Cu);
}

+ (void)proprietaryDefaultsDomainForAuditToken:.cold.5()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x22u);
}

void __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __59__CMIOExtensionProvider_finishProviderContextRegistration___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __47__CMIOExtensionProvider_removeProviderContext___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)registerDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v0 deviceID];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)unregisterDevice:error:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v0 deviceID];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)registerStream:withDeviceID:error:.cold.1()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v0 streamID];
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x26u);
}

- (void)unregisterStream:withDeviceID:notify:error:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  *(v6 + 20) = "[CMIOExtensionProvider unregisterStream:withDeviceID:notify:error:]";
  *(v6 + 28) = 2114;
  *(v6 + 30) = v7;
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s streamID not register %{public}@", v8, v9);
}

void __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __55__CMIOExtensionProvider_pluginStatesForClientID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

- (void)_addAvailablePropertyStatesForDevice:toDictionary:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)_addAvailablePropertyStatesForDevice:toDictionary:.cold.2()
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

void __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __74__CMIOExtensionProvider_pluginPropertyStatesForClientID_properties_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __81__CMIOExtensionProvider_setPluginPropertyValuesForClientID_propertyValues_reply___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __77__CMIOExtensionProvider_availableDevicePropertiesForClientID_deviceID_reply___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_2()
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

void __64__CMIOExtensionProvider_deviceStatesForClientID_deviceID_reply___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_2()
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

void __83__CMIOExtensionProvider_devicePropertyStatesForClientID_deviceID_properties_reply___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [v1 deviceControlPID];
  [objc_msgSend(v0 "clientInfo")];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_5()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __90__CMIOExtensionProvider_setDevicePropertyValuesForClientID_deviceID_propertyValues_reply___block_invoke_cold_6()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __77__CMIOExtensionProvider_availableStreamPropertiesForClientID_streamID_reply___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_2()
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

void __83__CMIOExtensionProvider_streamPropertyStatesForClientID_streamID_properties_reply___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  [objc_msgSend(v1 "parent")];
  [objc_msgSend(v0 "clientInfo")];
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x28u);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_4()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_5()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __90__CMIOExtensionProvider_setStreamPropertyValuesForClientID_streamID_propertyValues_reply___block_invoke_cold_6()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_clientQueue_decrementPendingStreamStartCountForClientID:streamID:.cold.1()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x30u);
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __63__CMIOExtensionProvider_startStreamForClientID_streamID_reply___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

- (void)_clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:.cold.1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

- (void)_clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:.cold.2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

- (void)_clientQueue_startStreamForClientID:streamID:requestAudio:requestVideo:reply:.cold.3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __98__CMIOExtensionProvider__performDeferredStreamStartsForClient_streamID_requestVideo_requestAudio___block_invoke_444_cold_1()
{
  OUTLINED_FUNCTION_9();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x36u);
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __62__CMIOExtensionProvider_stopStreamForClientID_streamID_reply___block_invoke_cold_4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_3()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __91__CMIOExtensionProvider_captureAsyncStillImageForClientID_streamID_uniqueID_options_reply___block_invoke_cold_4()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_12();
  v3 = OUTLINED_FUNCTION_1(v0, 4.8153e-34, v1, v2);
  OUTLINED_FUNCTION_8(v3, v4, v5);
  OUTLINED_FUNCTION_2(v6, v7, v8);
  OUTLINED_FUNCTION_10(&dword_22EA08000, "%s:%d:%s exception %@", v9, v10);
}

void __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

void __86__CMIOExtensionProvider_enqueueReactionEffectForClientID_streamID_reactionType_reply___block_invoke_cold_3()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_1()
{
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
}

void __67__CMIOExtensionProvider_consumeSampleBufferForStream_client_reply___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_13();
  CMIOFilename("/Library/Caches/com.apple.xbs/Sources/CoreMediaIO/Sources/Extensions/Sources/CMIOExtensionProvider.m");
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_5();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x26u);
}

@end