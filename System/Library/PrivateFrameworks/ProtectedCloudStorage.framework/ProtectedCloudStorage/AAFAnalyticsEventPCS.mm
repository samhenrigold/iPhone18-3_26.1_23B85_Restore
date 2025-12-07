@interface AAFAnalyticsEventPCS
+ (BOOL)isAuthKitAvailable;
+ (id)fetchDeviceSessionIDFromAuthKit:(id)kit;
- (AAFAnalyticsEventPCS)initWithPCSMetrics:(id)metrics altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID eventName:(id)name testsAreEnabled:(BOOL)enabled canSendMetrics:(BOOL)sendMetrics category:(id)self0;
- (BOOL)permittedToSendMetrics;
- (void)addMetrics:(id)metrics;
- (void)populateUnderlyingErrorsStartingWithRootError:(id)error;
@end

@implementation AAFAnalyticsEventPCS

+ (BOOL)isAuthKitAvailable
{
  if (isAuthKitAvailable_onceToken != -1)
  {
    +[AAFAnalyticsEventPCS isAuthKitAvailable];
  }

  return isAuthKitAvailable_available;
}

void __42__AAFAnalyticsEventPCS_isAuthKitAvailable__block_invoke()
{
  if (AuthKitLibraryCore(0))
  {
    isAuthKitAvailable_available = 1;
  }

  else
  {
    v0 = pcsLogObjForScope("aafanalyticsevent-pcs");
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __42__AAFAnalyticsEventPCS_isAuthKitAvailable__block_invoke_cold_1(v0);
    }
  }
}

- (BOOL)permittedToSendMetrics
{
  if (!+[AAFAnalyticsEventPCS isAAAFoundationAvailable]|| ![(AAFAnalyticsEventPCS *)self isAuthKitAvailable]|| [(AAFAnalyticsEventPCS *)self areTestsEnabled])
  {
    return 0;
  }

  return [(AAFAnalyticsEventPCS *)self canSendMetrics];
}

+ (id)fetchDeviceSessionIDFromAuthKit:(id)kit
{
  kitCopy = kit;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2050000000;
  v4 = getAKAccountManagerClass_softClass_2;
  v18 = getAKAccountManagerClass_softClass_2;
  if (!getAKAccountManagerClass_softClass_2)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __getAKAccountManagerClass_block_invoke_2;
    v14[3] = &unk_1E7B18A90;
    v14[4] = &v15;
    __getAKAccountManagerClass_block_invoke_2(v14);
    v4 = v16[3];
  }

  v5 = v4;
  _Block_object_dispose(&v15, 8);
  sharedInstance = [v4 sharedInstance];
  v7 = sharedInstance;
  if (kitCopy)
  {
    v13 = 0;
    primaryAuthKitAccount = [sharedInstance authKitAccountWithAltDSID:kitCopy error:&v13];
    v9 = v13;
    if (v9)
    {
      v10 = pcsLogObjForScope("aafanalyticsevent-pcs");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        [(AAFAnalyticsEventPCS *)v9 fetchDeviceSessionIDFromAuthKit:v10];
      }
    }
  }

  else
  {
    primaryAuthKitAccount = [sharedInstance primaryAuthKitAccount];
  }

  if ([v7 accountAccessTelemetryOptInForAccount:primaryAuthKitAccount])
  {
    v11 = [v7 telemetryDeviceSessionIDForAccount:primaryAuthKitAccount];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (AAFAnalyticsEventPCS)initWithPCSMetrics:(id)metrics altDSID:(id)d flowID:(id)iD deviceSessionID:(id)sessionID eventName:(id)name testsAreEnabled:(BOOL)enabled canSendMetrics:(BOOL)sendMetrics category:(id)self0
{
  enabledCopy = enabled;
  v49 = *MEMORY[0x1E69E9840];
  metricsCopy = metrics;
  dCopy = d;
  iDCopy = iD;
  sessionIDCopy = sessionID;
  nameCopy = name;
  categoryCopy = category;
  if (+[AAFAnalyticsEventPCS isAAAFoundationAvailable](AAFAnalyticsEventPCS, "isAAAFoundationAvailable") && +[AAFAnalyticsEventPCS isAuthKitAvailable]&& sendMetrics && !enabledCopy)
  {
    v46.receiver = self;
    v46.super_class = AAFAnalyticsEventPCS;
    v22 = [(AAFAnalyticsEventPCS *)&v46 init];
    if (v22)
    {
      v40 = iDCopy;
      dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v23 = v41 = dCopy;
      v24 = dispatch_queue_create("com.apple.pcs.aafanalyticsevent.queue", v23);
      queue = v22->_queue;
      v22->_queue = v24;

      v22->_areTestsEnabled = 0;
      v22->_canSendMetrics = sendMetrics;
      v22->_isAuthKitAvailable = 1;
      dCopy = v41;
      v26 = [objc_alloc(MEMORY[0x1E6985DB0]) initWithEventName:nameCopy eventCategory:categoryCopy initData:0 altDSID:v41];
      if (iDCopy && ([iDCopy isEqualToString:&stru_1F297D620] & 1) == 0)
      {
        [v26 setObject:iDCopy forKeyedSubscript:*MEMORY[0x1E6985E50]];
      }

      if (sessionIDCopy && ([sessionIDCopy isEqualToString:&stru_1F297D620] & 1) == 0)
      {
        [v26 setObject:sessionIDCopy forKeyedSubscript:*MEMORY[0x1E6985E38]];
        if (!metricsCopy)
        {
LABEL_24:
          event = v22->_event;
          v22->_event = v26;

          goto LABEL_25;
        }
      }

      else
      {
        v27 = [AAFAnalyticsEventPCS fetchDeviceSessionIDFromAuthKit:v41];
        [v26 setObject:v27 forKeyedSubscript:*MEMORY[0x1E6985E38]];

        dCopy = v41;
        if (!metricsCopy)
        {
          goto LABEL_24;
        }
      }

      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      allKeys = [metricsCopy allKeys];
      v29 = [allKeys countByEnumeratingWithState:&v42 objects:v48 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v43;
        do
        {
          for (i = 0; i != v30; ++i)
          {
            if (*v43 != v31)
            {
              objc_enumerationMutation(allKeys);
            }

            v33 = *(*(&v42 + 1) + 8 * i);
            v34 = [metricsCopy objectForKeyedSubscript:v33];
            [v26 setObject:v34 forKeyedSubscript:v33];
          }

          v30 = [allKeys countByEnumeratingWithState:&v42 objects:v48 count:16];
        }

        while (v30);
      }

      iDCopy = v40;
      dCopy = v41;
      categoryCopy = v38;
      nameCopy = v39;
      goto LABEL_24;
    }
  }

  else
  {
    v47.receiver = self;
    v47.super_class = AAFAnalyticsEventPCS;
    v22 = [(AAFAnalyticsEventPCS *)&v47 init];
    if (v22)
    {
      v22->_isAuthKitAvailable = +[AAFAnalyticsEventPCS isAuthKitAvailable];
      v22->_areTestsEnabled = enabledCopy;
      v22->_canSendMetrics = sendMetrics;
    }
  }

LABEL_25:
  v36 = v22;

  return v36;
}

- (void)populateUnderlyingErrorsStartingWithRootError:(id)error
{
  errorCopy = error;
  if ([(AAFAnalyticsEventPCS *)self permittedToSendMetrics])
  {
    queue = [(AAFAnalyticsEventPCS *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __70__AAFAnalyticsEventPCS_populateUnderlyingErrorsStartingWithRootError___block_invoke;
    v6[3] = &unk_1E7B1A230;
    v6[4] = self;
    v7 = errorCopy;
    dispatch_sync(queue, v6);
  }
}

void __70__AAFAnalyticsEventPCS_populateUnderlyingErrorsStartingWithRootError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) event];
  [v2 populateUnderlyingErrorsStartingWithRootError:*(a1 + 40)];
}

- (void)addMetrics:(id)metrics
{
  metricsCopy = metrics;
  if ([(AAFAnalyticsEventPCS *)self permittedToSendMetrics])
  {
    queue = [(AAFAnalyticsEventPCS *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__AAFAnalyticsEventPCS_addMetrics___block_invoke;
    v6[3] = &unk_1E7B1A230;
    v7 = metricsCopy;
    selfCopy = self;
    dispatch_async(queue, v6);
  }
}

void __35__AAFAnalyticsEventPCS_addMetrics___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [*(a1 + 32) allKeys];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = [*(a1 + 32) objectForKeyedSubscript:v7];
        v9 = [*(a1 + 40) event];
        [v9 setObject:v8 forKeyedSubscript:v7];
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }
}

+ (void)fetchDeviceSessionIDFromAuthKit:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_1B229C000, a2, OS_LOG_TYPE_ERROR, "authKitAccountWithAltDSID returned error: %@", &v2, 0xCu);
}

@end