@interface ULConnection
+ (id)_createNSXPCConnectionWithWeakProxy:(id)proxy;
+ (id)createServiceIdentifierForToken:(id)token;
+ (id)getMicroLocationInternalVersion;
+ (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording handler:(id)handler;
+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)d stateString:(id)string serviceUUID:(id)iD serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUUID:(id)uID source:(id)source roomUUID:(id)self0;
+ (id)metadataForHomekitActionSetEventWithUUID:(id)d name:(id)name type:(id)type clientName:(id)clientName source:(id)source homeName:(id)homeName;
+ (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types reply:(id)reply;
+ (void)deleteServiceWithIdentifier:(id)identifier reply:(id)reply;
+ (void)donateMicroLocationTruthTagWithTagUUID:(id)d correspondingToTriggerUUID:(id)iD handler:(id)handler;
+ (void)donateMicroLocationTruthTagWithTagUUID:(id)d forRecordingEventsBetweenDate:(id)date andDate:(id)andDate handler:(id)handler;
+ (void)exportDatabaseWithReply:(id)reply;
+ (void)imageFeaturesDebugWithTask:(unint64_t)task additionalInformation:(id)information reply:(id)reply;
+ (void)polarisDebugWithTask:(unint64_t)task reply:(id)reply;
+ (void)purgeDatabaseWithReply:(id)reply;
+ (void)queryServicesWithReply:(id)reply;
+ (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information;
+ (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording;
- (ULConnection)initWithDelegate:(id)delegate serviceIdentifier:(id)identifier;
- (ULConnectionDelegate)delegate;
- (ULMap)currentMap;
- (id)connect;
- (id)disconnect;
- (id)requestAllModelsLearning;
- (id)requestObservation;
- (id)requestPrediction;
- (id)runWithConfiguration:(id)configuration;
- (id)startUpdatingWithConfiguration:(id)configuration;
- (id)stopUpdating;
- (uint64_t)_xpcInterruptionHandler;
- (void)_checkAndRecoverIfNeeded;
- (void)_invalidate;
- (void)_manageConnectionAvailableNotificationObservation:(BOOL)observation;
- (void)_performAsyncOnDelegateQueueIfRespondsToSelector:(SEL)selector block:(id)block;
- (void)_xpcInterruptionHandler;
- (void)_xpcInvalidationHandler;
- (void)addLabel:(id)label;
- (void)addLabel:(id)label betweenStartDate:(id)date andEndDate:(id)endDate;
- (void)dealloc;
- (void)didCompleteObservationWithMetaInformation:(id)information;
- (void)didCompletePredictionWithMetaInformation:(id)information;
- (void)didCompleteRequest:(id)request withError:(id)error;
- (void)didCreateCustomLocationOfInterestWithError:(id)error;
- (void)didFailWithError:(id)error;
- (void)didRemoveCustomLocationOfInterestWithIdentifier:(id)identifier withError:(id)error;
- (void)didSendGenericEvent:(unint64_t)event withDescription:(id)description;
- (void)didUpdateMap:(id)map;
- (void)didUpdatePredictionContext:(id)context;
- (void)disableMicrolocationAtlocationWithIdentifier:(id)identifier;
- (void)enableMicrolocationAtCurrentLocation;
- (void)enableMicrolocationAtCurrentLocationWithConfiguration:(id)configuration;
- (void)updateLegacyServiceIdentifier:(id)identifier;
@end

@implementation ULConnection

- (ULConnection)initWithDelegate:(id)delegate serviceIdentifier:(id)identifier
{
  delegateCopy = delegate;
  identifierCopy = identifier;
  v19.receiver = self;
  v19.super_class = ULConnection;
  v8 = [(ULConnection *)&v19 init];
  if (v8)
  {
    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_create("com.apple.ULConnection.queue", v9);
    [(ULConnection *)v8 setQueue:v10];

    v11 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v12 = dispatch_queue_create("com.apple.ULConnection.delegateQueue", v11);
    [(ULConnection *)v8 setDelegateQueue:v12];

    queue = [(ULConnection *)v8 queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke;
    block[3] = &unk_2798D2448;
    v16 = v8;
    v17 = delegateCopy;
    v18 = identifierCopy;
    dispatch_sync(queue, block);
  }

  return v8;
}

void __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke(uint64_t a1)
{
  [*(a1 + 32) setDelegate:*(a1 + 40)];
  [*(a1 + 32) setServiceIdentifier:*(a1 + 48)];
  v2 = [objc_alloc(MEMORY[0x277D28888]) initWithObject:*(a1 + 32)];
  v3 = [ULConnection _createNSXPCConnectionWithWeakProxy:v2];
  [*(a1 + 32) setConnection:v3];

  v4 = objc_alloc_init(MEMORY[0x277D28850]);
  [*(a1 + 32) setDarwinNotificationHelper:v4];

  v5 = +[ULMap emptyMap];
  [*(a1 + 32) setInternalMap:v5];

  v6 = [ULConfiguration alloc];
  v7 = [MEMORY[0x277CBEB98] set];
  v8 = [(ULConfiguration *)v6 initWithContextLayers:v7];
  [*(a1 + 32) setConfiguration:v8];

  objc_initWeak(&location, *(a1 + 32));
  v9 = [*(a1 + 32) connection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_2;
  v18[3] = &unk_2798D2420;
  objc_copyWeak(&v19, &location);
  [v9 setInterruptionHandler:v18];

  v10 = [*(a1 + 32) connection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_3;
  v16[3] = &unk_2798D2420;
  objc_copyWeak(&v17, &location);
  [v10 setInvalidationHandler:v16];

  v11 = [*(a1 + 32) connection];
  v12 = [*(a1 + 32) queue];
  [v11 _setQueue:v12];

  [*(a1 + 32) _manageConnectionAvailableNotificationObservation:1];
  v13 = [*(a1 + 32) connection];
  [v13 resume];

  if (onceToken_MicroLocation_Default != -1)
  {
    __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
  }

  v14 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_258FC9000, v14, OS_LOG_TYPE_DEFAULT, "Initialized a new MiLo connection", v15, 2u);
  }

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained queue];
    dispatch_assert_queue_V2(v2);

    [v3 _xpcInterruptionHandler];
    WeakRetained = v3;
  }
}

void __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained queue];
    dispatch_assert_queue_V2(v2);

    [v3 _xpcInvalidationHandler];
    WeakRetained = v3;
  }
}

- (void)dealloc
{
  [(ULConnection *)self _invalidate];
  v3.receiver = self;
  v3.super_class = ULConnection;
  [(ULConnection *)&v3 dealloc];
}

+ (id)createServiceIdentifierForToken:(id)token
{
  v43[8] = *MEMORY[0x277D85DE8];
  tokenCopy = token;
  v42[0] = @"com.apple.intelligentroutingd";
  v40[0] = @"com.apple.mediaremoted";
  v40[1] = @"com.apple.Music";
  v41[0] = @"00000000-0000-0000-0000-000000000001";
  v41[1] = @"00000000-0000-0000-0000-000000000002";
  v40[2] = @"com.apple.TelephonyUtilities";
  v40[3] = @"com.apple.controlcenter";
  v41[2] = @"00000000-0000-0000-0000-000000000003";
  v41[3] = @"00000000-0000-0000-0000-000000000004";
  v40[4] = @"com.apple.AVKit.RoutePickerViewService";
  v40[5] = @"com.apple.tvremoted";
  v41[4] = @"00000000-0000-0000-0000-000000000005";
  v41[5] = @"00000000-0000-0000-0000-000000000006";
  v40[6] = @"com.apple.NeighborhoodActivityConduitService";
  v40[7] = @"com.apple.intelligentroutingclient.Media";
  v41[6] = @"00000000-0000-0000-0000-000000000007";
  v41[7] = @"00000000-0000-0000-0000-000000000008";
  v40[8] = @"com.apple.intelligentroutingclient.AppleTVControl";
  v40[9] = @"com.apple.intelligentroutingclient.Home";
  v41[8] = @"00000000-0000-0000-0000-000000000009";
  v41[9] = @"00000000-0000-0000-0000-000000000025";
  v40[10] = @"com.apple.IntelligentRoutingHostTests.xctrunner.Media";
  v40[11] = @"com.apple.IntelligentRoutingHostTests.xctrunner.AppleTVControl";
  v41[10] = @"00000000-0000-0000-0000-000000000010";
  v41[11] = @"00000000-0000-0000-0000-000000000023";
  v40[12] = @"com.apple.IntelligentRoutingHostTests.xctrunner.Home";
  v40[13] = @"com.vpg.Rover";
  v41[12] = @"00000000-0000-0000-0000-000000000024";
  v41[13] = @"00000000-0000-0000-0000-000000000022";
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:14];
  v43[0] = v4;
  v42[1] = @"com.apple.MicroLocationHostTests.xctrunner";
  v38 = @"com.apple.MicroLocationHostTests.xctrunner";
  v39 = @"00000000-0000-0000-0000-000000000011";
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
  v43[1] = v5;
  v42[2] = @"com.apple.microlocationclient";
  v36[0] = @"com.apple.MicroLocationClientUnsupervised";
  v36[1] = @"com.apple.MicroLocationClientBinaryDetection";
  v37[0] = @"00000000-0000-0000-0000-000000000012";
  v37[1] = @"00000000-0000-0000-0000-000000000013";
  v36[2] = @"com.apple.MicroLocationClientMultiClass";
  v36[3] = @"com.apple.MicroLocationClientLSL";
  v37[2] = @"00000000-0000-0000-0000-000000000014";
  v37[3] = @"00000000-0000-0000-0000-000000000015";
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:4];
  v43[2] = v6;
  v42[3] = @"com.apple.MiLoDataCollection";
  v34 = @"com.apple.MiLoDataCollection";
  v35 = @"00000000-0000-0000-0000-000000000019";
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  v43[3] = v7;
  v42[4] = @"com.apple.MiLoLSL2";
  v32 = @"com.apple.MiLoLSL2";
  v33 = @"00000000-0000-0000-0000-000000000018";
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v33 forKeys:&v32 count:1];
  v43[4] = v8;
  v42[5] = @"com.apple.HomeSlam";
  v30 = @"com.apple.HomeSlam";
  v31 = @"00000000-0000-0000-0000-000000000020";
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
  v43[5] = v9;
  v42[6] = @"com.apple.MiLoPlaceholderApp";
  v28 = @"com.apple.MiLoPlaceholderApp";
  v29 = @"00000000-0000-0000-0000-000000000021";
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
  v43[6] = v10;
  v42[7] = @"com.apple.contextstored";
  v26 = @"com.apple.proactive.ProactiveContextClient";
  v27 = @"00000000-0000-0000-0000-000000000017";
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  v43[7] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:8];

  signingIdentityForSelf = [MEMORY[0x277CCAE80] signingIdentityForSelf];
  if (signingIdentityForSelf)
  {
    v14 = [v12 objectForKeyedSubscript:signingIdentityForSelf];
    v15 = v14;
    if (v14)
    {
      v16 = [v14 objectForKeyedSubscript:tokenCopy];
      if (v16)
      {
        v17 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v16];
      }

      else
      {
        v17 = 0;
      }
    }

    else
    {
      if (onceToken_MicroLocation_Default != -1)
      {
        __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
      }

      v18 = logObject_MicroLocation_Default;
      if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_ERROR))
      {
        v19 = v18;
        *buf = 138412546;
        v23 = objc_opt_class();
        v24 = 2112;
        v25 = signingIdentityForSelf;
        v20 = v23;
        _os_log_impl(&dword_258FC9000, v19, OS_LOG_TYPE_ERROR, "[%@] invalid signing identity: %@", buf, 0x16u);
      }

      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

+ (void)createServiceWithServiceType:(unint64_t)type locationTypes:(id)types reply:(id)reply
{
  typesCopy = types;
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "Creating a service", buf, 2u);
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.MicroLocation.createServiceWithServiceType", v10);

  v12 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v12 resume];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke;
  v16[3] = &unk_2798D2498;
  v17 = v12;
  v18 = typesCopy;
  v19 = replyCopy;
  typeCopy = type;
  v13 = replyCopy;
  v14 = typesCopy;
  v15 = v12;
  dispatch_async(v11, v16);
}

void __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke_2;
  v5[3] = &unk_2798D2470;
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 createServiceWithServiceType:v4 locationTypes:v3 reply:v5];
}

void __65__ULConnection_createServiceWithServiceType_locationTypes_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Creating service, identifier: %@, error:%@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (void)deleteServiceWithIdentifier:(id)identifier reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = identifierCopy;
    _os_log_impl(&dword_258FC9000, v7, OS_LOG_TYPE_DEFAULT, "Deleting service:%@", buf, 0xCu);
  }

  v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v9 = dispatch_queue_create("com.apple.MicroLocation.deleteServiceWithIdentifier", v8);

  v10 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v10 resume];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke;
  block[3] = &unk_2798D24E8;
  v15 = v10;
  v16 = identifierCopy;
  v17 = replyCopy;
  v11 = replyCopy;
  v12 = identifierCopy;
  v13 = v10;
  dispatch_async(v9, block);
}

void __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3 = *(a1 + 40);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke_2;
  v4[3] = &unk_2798D24C0;
  v5 = v3;
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 deleteServiceWithIdentifier:v5 reply:v4];
}

void __50__ULConnection_deleteServiceWithIdentifier_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = v4;
    v7 = [v3 localizedDescription];
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_258FC9000, v6, OS_LOG_TYPE_DEFAULT, "Deleting service, identifier: %@, error:%@", &v8, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) invalidate];
}

- (id)connect
{
  v32 = *MEMORY[0x277D85DE8];
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25[0]) = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "connect", v25, 2u);
  }

  configuration = [(ULConnection *)self configuration];
  contextLayers = [configuration contextLayers];
  v7 = [contextLayers count];

  if (!v7)
  {
    serviceIdentifier = [(ULConnection *)self serviceIdentifier];
    v9 = [ULContextLayerUtilities getDefaultContextLayerForService:serviceIdentifier];

    if (onceToken_MicroLocation_Default != -1)
    {
      __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
    }

    v10 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      serviceIdentifier2 = [(ULConnection *)self serviceIdentifier];
      uUIDString = [serviceIdentifier2 UUIDString];
      uTF8String = [uUIDString UTF8String];
      uTF8String2 = [v9 UTF8String];
      v25[0] = 68289538;
      v25[1] = 0;
      v26 = 2082;
      v27 = &unk_258FDF03F;
      v28 = 2082;
      v29 = uTF8String;
      v30 = 2082;
      v31 = uTF8String2;
      _os_log_impl(&dword_258FC9000, v11, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:connect: No context layers provided. Setting default context layer for service, ServiceUUID:%{public, location:escape_only}s, ContextLayer:%{public, location:escape_only}s}", v25, 0x26u);
    }

    configuration2 = [(ULConnection *)self configuration];
    predictionsUpdateType = [configuration2 predictionsUpdateType];

    v18 = [ULConfiguration alloc];
    v19 = [MEMORY[0x277CBEB98] setWithObject:v9];
    v20 = [(ULConfiguration *)v18 initWithContextLayers:v19];
    [(ULConnection *)self setConfiguration:v20];

    configuration3 = [(ULConnection *)self configuration];
    [configuration3 setPredictionsUpdateType:predictionsUpdateType];
  }

  configuration4 = [(ULConnection *)self configuration];
  v23 = [(ULConnection *)self runWithConfiguration:configuration4];

  return v23;
}

- (id)disconnect
{
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue2 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ULConnection_disconnect__block_invoke;
  v7[3] = &unk_2798D2510;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __26__ULConnection_disconnect__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "disconnect", v9, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 disconnectWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];

  v8 = +[ULMap emptyMap];
  [*(a1 + 32) setInternalMap:v8];
}

- (id)runWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  queue2 = [(ULConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__ULConnection_runWithConfiguration___block_invoke;
  block[3] = &unk_2798D2538;
  v11 = configurationCopy;
  v12 = &v13;
  block[4] = self;
  v7 = configurationCopy;
  dispatch_sync(queue2, block);

  v8 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v8;
}

void __37__ULConnection_runWithConfiguration___block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v12 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "runWithConfiguration", v12, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 48) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  v8 = *(a1 + 40);
  v9 = [*(a1 + 32) serviceIdentifier];
  v10 = [*(a1 + 32) legacyServiceIdentifier];
  [v7 runWithConfiguration:v8 serviceIdentifier:v9 legacyServiceIdentifier:v10 andRequestIdentifier:*(*(*(a1 + 48) + 8) + 40)];

  v11 = [*(a1 + 40) copy];
  [*(a1 + 32) setConfiguration:v11];
}

- (id)requestPrediction
{
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue2 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __33__ULConnection_requestPrediction__block_invoke;
  v7[3] = &unk_2798D2510;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __33__ULConnection_requestPrediction__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "requestPrediction", v8, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 requestPredictionWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];
}

- (id)requestObservation
{
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue2 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34__ULConnection_requestObservation__block_invoke;
  v7[3] = &unk_2798D2510;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __34__ULConnection_requestObservation__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "requestObservation", v8, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 requestObservationWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)addLabel:(id)label
{
  labelCopy = label;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __25__ULConnection_addLabel___block_invoke;
  v8[3] = &unk_2798D2560;
  v9 = labelCopy;
  selfCopy = self;
  v7 = labelCopy;
  dispatch_sync(queue2, v8);
}

void __25__ULConnection_addLabel___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 32) contextLayer];
  v4 = [v3 isEqualToString:@"ULContextLayerTypeUnknown"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) serviceIdentifier];
    v7 = [v5 copyWithReplacementContextLayerFromServiceIdentifier:v6];

    v2 = v7;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v2 name];
    v11 = [v2 contextLayer];
    v12 = ULDeviceClassToString([v2 deviceClass]);
    v15 = 138412802;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "addLabel with name: %@ to contextLayer: %@ to device: %@", &v15, 0x20u);
  }

  [*(a1 + 40) _checkAndRecoverIfNeeded];
  v13 = [*(a1 + 40) connection];
  v14 = [v13 remoteObjectProxy];
  [v14 addLabel:v2];
}

- (void)addLabel:(id)label betweenStartDate:(id)date andEndDate:(id)endDate
{
  labelCopy = label;
  dateCopy = date;
  endDateCopy = endDate;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULConnection *)self queue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __53__ULConnection_addLabel_betweenStartDate_andEndDate___block_invoke;
  v16[3] = &unk_2798D2588;
  v17 = labelCopy;
  selfCopy = self;
  v19 = dateCopy;
  v20 = endDateCopy;
  v13 = endDateCopy;
  v14 = dateCopy;
  v15 = labelCopy;
  dispatch_sync(queue2, v16);
}

void __53__ULConnection_addLabel_betweenStartDate_andEndDate___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) copy];
  v3 = [*(a1 + 32) contextLayer];
  v4 = [v3 isEqualToString:@"ULContextLayerTypeUnknown"];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) serviceIdentifier];
    v7 = [v5 copyWithReplacementContextLayerFromServiceIdentifier:v6];

    v2 = v7;
  }

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [v2 contextLayer];
    v11 = *(a1 + 48);
    v12 = *(a1 + 56);
    v15 = 138413058;
    v16 = v2;
    v17 = 2112;
    v18 = v10;
    v19 = 2112;
    v20 = v11;
    v21 = 2112;
    v22 = v12;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "addLabel with name: %@ contextLayer: %@ between dates: %@ - %@", &v15, 0x2Au);
  }

  [*(a1 + 40) _checkAndRecoverIfNeeded];
  v13 = [*(a1 + 40) connection];
  v14 = [v13 remoteObjectProxy];
  [v14 addLabel:v2 betweenStartDate:*(a1 + 48) andEndDate:*(a1 + 56)];
}

- (id)startUpdatingWithConfiguration:(id)configuration
{
  v19 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 138412290;
    v18 = configurationCopy;
    _os_log_impl(&dword_258FC9000, v6, OS_LOG_TYPE_DEFAULT, "startUpdatingWithConfiguration: %@", &v17, 0xCu);
  }

  v7 = [ULConfiguration alloc];
  configuration = [(ULConnection *)self configuration];
  contextLayers = [configuration contextLayers];
  v10 = [(ULConfiguration *)v7 initWithContextLayers:contextLayers];
  [(ULConnection *)self setConfiguration:v10];

  LODWORD(v10) = [configurationCopy isLowLatency];
  configuration2 = [(ULConnection *)self configuration];
  v12 = configuration2;
  if (v10)
  {
    v13 = 2;
  }

  else
  {
    v13 = 1;
  }

  [configuration2 setPredictionsUpdateType:v13];

  configuration3 = [(ULConnection *)self configuration];
  v15 = [(ULConnection *)self runWithConfiguration:configuration3];

  return v15;
}

- (id)stopUpdating
{
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v13 = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "stopUpdating", v13, 2u);
  }

  v5 = [ULConfiguration alloc];
  configuration = [(ULConnection *)self configuration];
  contextLayers = [configuration contextLayers];
  v8 = [(ULConfiguration *)v5 initWithContextLayers:contextLayers];
  [(ULConnection *)self setConfiguration:v8];

  configuration2 = [(ULConnection *)self configuration];
  [configuration2 setPredictionsUpdateType:0];

  configuration3 = [(ULConnection *)self configuration];
  v11 = [(ULConnection *)self runWithConfiguration:configuration3];

  return v11;
}

- (void)enableMicrolocationAtCurrentLocation
{
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Legacy SPI request, enableMicrolocationAtCurrentLocation, default to enable in room detection", v6, 2u);
  }

  v5 = [[ULCustomLoiConfiguration alloc] initWithEnableInRoomDetection:1];
  [(ULConnection *)self enableMicrolocationAtCurrentLocationWithConfiguration:v5];
}

- (void)enableMicrolocationAtCurrentLocationWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __70__ULConnection_enableMicrolocationAtCurrentLocationWithConfiguration___block_invoke;
  v8[3] = &unk_2798D2560;
  v9 = configurationCopy;
  selfCopy = self;
  v7 = configurationCopy;
  dispatch_sync(queue2, v8);
}

void __70__ULConnection_enableMicrolocationAtCurrentLocationWithConfiguration___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "enableMicrolocationAtCurrentLocationWithConfiguration %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) connection];
  v5 = [v4 remoteObjectProxy];
  [v5 createCustomLocationOfInterestAtCurrentLocationWithConfiguration:*(a1 + 32)];
}

- (ULMap)currentMap
{
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy_;
  v12 = __Block_byref_object_dispose_;
  v13 = 0;
  queue2 = [(ULConnection *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __26__ULConnection_currentMap__block_invoke;
  v7[3] = &unk_2798D25B0;
  v7[4] = self;
  v7[5] = &v8;
  dispatch_sync(queue2, v7);

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __26__ULConnection_currentMap__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) internalMap];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)didUpdateMap:(id)map
{
  mapCopy = map;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v15 = [ULMap alloc];
  mapItems = [mapCopy mapItems];
  internalMap = [(ULConnection *)self internalMap];
  predictionContext = [internalMap predictionContext];
  locationOfInterest = [mapCopy locationOfInterest];
  serviceState = [mapCopy serviceState];
  serviceSuspendReasons = [mapCopy serviceSuspendReasons];
  isMapValid = [mapCopy isMapValid];
  metaInfo = [mapCopy metaInfo];
  homeSlamModelData = [mapCopy homeSlamModelData];

  v14 = [(ULMap *)v15 initWithMapItems:mapItems predictionContext:predictionContext locationOfInterest:locationOfInterest serviceState:serviceState serviceSuspendReasons:serviceSuspendReasons isMapValid:isMapValid metaInfo:metaInfo homeSlamModelData:homeSlamModelData];
  [(ULConnection *)self setInternalMap:v14];

  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __29__ULConnection_didUpdateMap___block_invoke;
  v17[3] = &unk_2798D25D8;
  v17[4] = self;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connectionDidUpdateMap_ block:v17];
}

void __29__ULConnection_didUpdateMap___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionDidUpdateMap:*(a1 + 32)];
}

- (void)didUpdatePredictionContext:(id)context
{
  contextCopy = context;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  internalMap = [(ULConnection *)self internalMap];
  v7 = [internalMap copyWithReplacementPredictionContext:contextCopy];

  [(ULConnection *)self setInternalMap:v7];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __43__ULConnection_didUpdatePredictionContext___block_invoke;
  v8[3] = &unk_2798D25D8;
  v8[4] = self;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connectionDidUpdatePredictionContext_ block:v8];
}

void __43__ULConnection_didUpdatePredictionContext___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionDidUpdatePredictionContext:*(a1 + 32)];
}

- (void)didCompleteRequest:(id)request withError:(id)error
{
  requestCopy = request;
  errorCopy = error;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __45__ULConnection_didCompleteRequest_withError___block_invoke;
  v11[3] = &unk_2798D2448;
  v11[4] = self;
  v12 = requestCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = requestCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didCompleteRequest_withError_ block:v11];
}

void __45__ULConnection_didCompleteRequest_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCompleteRequest:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)didCreateCustomLocationOfInterestWithError:(id)error
{
  errorCopy = error;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__ULConnection_didCreateCustomLocationOfInterestWithError___block_invoke;
  v7[3] = &unk_2798D2560;
  v7[4] = self;
  v8 = errorCopy;
  v6 = errorCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didEnableMicrolocationAtCurrentLocationWithError_ block:v7];
}

void __59__ULConnection_didCreateCustomLocationOfInterestWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didEnableMicrolocationAtCurrentLocationWithError:*(a1 + 40)];
}

- (void)didRemoveCustomLocationOfInterestWithIdentifier:(id)identifier withError:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __74__ULConnection_didRemoveCustomLocationOfInterestWithIdentifier_withError___block_invoke;
  v11[3] = &unk_2798D2448;
  v11[4] = self;
  v12 = identifierCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = identifierCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didDisableMicrolocationAtLocationWithIdentifier_withError_ block:v11];
}

void __74__ULConnection_didRemoveCustomLocationOfInterestWithIdentifier_withError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didDisableMicrolocationAtLocationWithIdentifier:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)didFailWithError:(id)error
{
  errorCopy = error;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __33__ULConnection_didFailWithError___block_invoke;
  v10 = &unk_2798D2560;
  selfCopy = self;
  v12 = errorCopy;
  v6 = errorCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didFailWithError_ block:&v7];
  [(ULConnection *)self _invalidate:v7];
}

void __33__ULConnection_didFailWithError___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didFailWithError:*(a1 + 40)];
}

- (void)didSendGenericEvent:(unint64_t)event withDescription:(id)description
{
  descriptionCopy = description;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__ULConnection_didSendGenericEvent_withDescription___block_invoke;
  v9[3] = &unk_2798D2600;
  v10 = descriptionCopy;
  eventCopy = event;
  v9[4] = self;
  v8 = descriptionCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didSendGenericEvent_withDescription_ block:v9];
}

void __52__ULConnection_didSendGenericEvent_withDescription___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didSendGenericEvent:*(a1 + 48) withDescription:*(a1 + 40)];
}

- (void)didCompleteObservationWithMetaInformation:(id)information
{
  informationCopy = information;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__ULConnection_didCompleteObservationWithMetaInformation___block_invoke;
  v7[3] = &unk_2798D2560;
  v7[4] = self;
  v8 = informationCopy;
  v6 = informationCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didCompleteObservationWithMetaInformation_ block:v7];
}

void __58__ULConnection_didCompleteObservationWithMetaInformation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCompleteObservationWithMetaInformation:*(a1 + 40)];
}

- (void)didCompletePredictionWithMetaInformation:(id)information
{
  informationCopy = information;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__ULConnection_didCompletePredictionWithMetaInformation___block_invoke;
  v7[3] = &unk_2798D2560;
  v7[4] = self;
  v8 = informationCopy;
  v6 = informationCopy;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connection_didCompletePredictionWithMetaInformation_ block:v7];
}

void __57__ULConnection_didCompletePredictionWithMetaInformation___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connection:*(a1 + 32) didCompletePredictionWithMetaInformation:*(a1 + 40)];
}

+ (id)_createNSXPCConnectionWithWeakProxy:(id)proxy
{
  v3 = MEMORY[0x277CCAE80];
  proxyCopy = proxy;
  v5 = [[v3 alloc] initWithMachServiceName:@"com.apple.milod.xpc.service" options:4096];
  v6 = +[ULXPCProtocols responseInterface];
  [v5 setExportedInterface:v6];

  [v5 setExportedObject:proxyCopy];
  v7 = +[ULXPCProtocols requestInterface];
  [v5 setRemoteObjectInterface:v7];

  return v5;
}

- (void)_xpcInterruptionHandler
{
  v13 = *MEMORY[0x277D85DE8];
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  interrupted = [(ULConnection *)self interrupted];
  if (interrupted)
  {
    [(ULConnection *)interrupted _xpcInterruptionHandler];
  }

  else if (onceToken_MicroLocation_Default == -1)
  {
    goto LABEL_3;
  }

  _CLLogObjectForCategory_MicroLocation_Default_cold_1();
LABEL_3:
  v5 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    connection = [(ULConnection *)self connection];
    signingIdentity = [connection signingIdentity];
    *buf = 138412290;
    v12 = signingIdentity;
    _os_log_impl(&dword_258FC9000, v6, OS_LOG_TYPE_DEFAULT, "%@: connection interrupted", buf, 0xCu);
  }

  v9 = +[ULMap emptyMap];
  [(ULConnection *)self setInternalMap:v9];

  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __39__ULConnection__xpcInterruptionHandler__block_invoke;
  v10[3] = &unk_2798D25D8;
  v10[4] = self;
  [(ULConnection *)self _performAsyncOnDelegateQueueIfRespondsToSelector:sel_connectionDidUpdateMap_ block:v10];
  [(ULConnection *)self setInterrupted:1];
}

void __39__ULConnection__xpcInterruptionHandler__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) delegate];
  [v2 connectionDidUpdateMap:*(a1 + 32)];
}

- (void)_xpcInvalidationHandler
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_258FC9000, v2, v3, "{msg%{public}.0s:Invalidation handler called after interruption handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v23, v24, v25, v26);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_258FC9000, v10, v11, v12, "Invalidation handler called after interruption handler", "{msg%{public}.0s:Invalidation handler called after interruption handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v23, v24, v25, v26);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_258FC9000, v17, v18, "{msg%{public}.0s:Invalidation handler called after interruption handler, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v23, v24, v25, v26);
  }

  abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationFramework/src/ULConnection.m", 554, "[ULConnection _xpcInvalidationHandler]");
  +[ULContextLayerUtilities getDefaultContextLayerForService:];
}

- (void)_invalidate
{
  connection = [(ULConnection *)self connection];
  [connection setInterruptionHandler:0];

  connection2 = [(ULConnection *)self connection];
  [connection2 setInvalidationHandler:0];

  connection3 = [(ULConnection *)self connection];
  [connection3 invalidate];

  [(ULConnection *)self setConnection:0];

  [(ULConnection *)self _manageConnectionAvailableNotificationObservation:0];
}

- (void)_manageConnectionAvailableNotificationObservation:(BOOL)observation
{
  if (observation)
  {
    objc_initWeak(&location, self);
    darwinNotificationHelper = [(ULConnection *)self darwinNotificationHelper];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke;
    v6[3] = &unk_2798D2420;
    objc_copyWeak(&v7, &location);
    [darwinNotificationHelper addObserverForNotificationName:@"ULConnectionAvailableNotification" handler:v6];

    objc_destroyWeak(&v7);
    objc_destroyWeak(&location);
  }

  else
  {
    darwinNotificationHelper2 = [(ULConnection *)self darwinNotificationHelper];
    [darwinNotificationHelper2 removeObserverForNotificationName:@"ULConnectionAvailableNotification"];
  }
}

void __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke_2;
    block[3] = &unk_2798D25D8;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

uint64_t __66__ULConnection__manageConnectionAvailableNotificationObservation___block_invoke_2(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "Handling connection available notification", v4, 2u);
  }

  return [*(a1 + 32) _checkAndRecoverIfNeeded];
}

- (void)_performAsyncOnDelegateQueueIfRespondsToSelector:(SEL)selector block:(id)block
{
  v15 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(ULConnection *)self delegate];
  if (delegate && (objc_opt_respondsToSelector() & 1) != 0)
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default_cold_1();
    }

    v9 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v10 = v9;
      v11 = NSStringFromSelector(selector);
      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&dword_258FC9000, v10, OS_LOG_TYPE_DEFAULT, "Performing block for selector: %@", &v13, 0xCu);
    }

    delegateQueue = [(ULConnection *)self delegateQueue];
    dispatch_async(delegateQueue, blockCopy);
  }
}

- (void)_checkAndRecoverIfNeeded
{
  v18 = *MEMORY[0x277D85DE8];
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([(ULConnection *)self interrupted])
  {
    if (onceToken_MicroLocation_Default != -1)
    {
      _CLLogObjectForCategory_MicroLocation_Default_cold_1();
    }

    v4 = logObject_MicroLocation_Default;
    if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
    {
      v5 = v4;
      internalMap = [(ULConnection *)self internalMap];
      configuration = [(ULConnection *)self configuration];
      v14 = 138412546;
      v15 = internalMap;
      v16 = 2112;
      v17 = configuration;
      _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "Recovering: internalMap: %@, configuration: %@", &v14, 0x16u);
    }

    connection = [(ULConnection *)self connection];
    remoteObjectProxy = [connection remoteObjectProxy];
    configuration2 = [(ULConnection *)self configuration];
    serviceIdentifier = [(ULConnection *)self serviceIdentifier];
    legacyServiceIdentifier = [(ULConnection *)self legacyServiceIdentifier];
    uUID = [MEMORY[0x277CCAD78] UUID];
    [remoteObjectProxy runWithConfiguration:configuration2 serviceIdentifier:serviceIdentifier legacyServiceIdentifier:legacyServiceIdentifier andRequestIdentifier:uUID];

    [(ULConnection *)self setInterrupted:0];
  }
}

- (ULConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

+ (void)exportDatabaseWithReply:(id)reply
{
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Exporting database", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.exportDatabaseWithReply", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke;
  v10[3] = &unk_2798D2650;
  v11 = v7;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v7;
  dispatch_async(v6, v10);
}

void __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke_2;
  v3[3] = &unk_2798D2628;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 exportDatabaseWithReply:v3];
}

void __52__ULConnection_Diagnostic__exportDatabaseWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Export database response, URLS:%@, error:%@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (void)purgeDatabaseWithReply:(id)reply
{
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Purging database", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.purgeDatabaseWithReply", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke;
  v10[3] = &unk_2798D2650;
  v11 = v7;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v7;
  dispatch_async(v6, v10);
}

void __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke_2;
  v3[3] = &unk_2798D2678;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 purgeDatabaseWithReply:v3];
}

void __51__ULConnection_Diagnostic__purgeDatabaseWithReply___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "Purge database response, error:%@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (void)queryServicesWithReply:(id)reply
{
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "Querying services", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.queryServicesForClient", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke;
  v10[3] = &unk_2798D2650;
  v11 = v7;
  v12 = replyCopy;
  v8 = replyCopy;
  v9 = v7;
  dispatch_async(v6, v10);
}

void __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke_2;
  v3[3] = &unk_2798D2628;
  v5 = *(a1 + 40);
  v4 = *(a1 + 32);
  [v2 queryServicesWithReply:v3];
}

void __51__ULConnection_Diagnostic__queryServicesWithReply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v10 = 138412546;
    v11 = v5;
    v12 = 2112;
    v13 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Query services response:%@, error:%@", &v10, 0x16u);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (void)imageFeaturesDebugWithTask:(unint64_t)task additionalInformation:(id)information reply:(id)reply
{
  informationCopy = information;
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v9 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v9, OS_LOG_TYPE_DEFAULT, "imageFeaturesDebug", buf, 2u);
  }

  v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = dispatch_queue_create("com.apple.MicroLocation.imageFeaturesDebug", v10);

  v12 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v12 resume];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke;
  v16[3] = &unk_2798D2498;
  v17 = v12;
  v18 = informationCopy;
  v19 = replyCopy;
  taskCopy = task;
  v13 = replyCopy;
  v14 = informationCopy;
  v15 = v12;
  dispatch_async(v11, v16);
}

void __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke_2;
  v5[3] = &unk_2798D26A0;
  v4 = *(a1 + 56);
  v7 = *(a1 + 48);
  v6 = *(a1 + 32);
  [v2 imageFeaturesDebugWithTask:v4 additionalInformation:v3 reply:v5];
}

void __83__ULConnection_Diagnostic__imageFeaturesDebugWithTask_additionalInformation_reply___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v7 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v9 = [v6 localizedDescription];
    v10 = 138412290;
    v11 = v9;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "Image features debug response, error:%@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

+ (void)polarisDebugWithTask:(unint64_t)task reply:(id)reply
{
  v20 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v6 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v7 = v6;
    v8 = ULPolarisManagerTaskToString(task);
    *buf = 138412290;
    v19 = v8;
    _os_log_impl(&dword_258FC9000, v7, OS_LOG_TYPE_DEFAULT, "polarisDebug. task: %@", buf, 0xCu);
  }

  v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v10 = dispatch_queue_create("com.apple.MicroLocation.polarisDebug", v9);

  v11 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v11 resume];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke;
  block[3] = &unk_2798D26C8;
  v16 = replyCopy;
  taskCopy = task;
  v15 = v11;
  v12 = replyCopy;
  v13 = v11;
  dispatch_async(v10, block);
}

void __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke_2;
  v4[3] = &unk_2798D2678;
  v3 = *(a1 + 48);
  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  [v2 polarisDebugWithTask:v3 reply:v4];
}

void __55__ULConnection_Diagnostic__polarisDebugWithTask_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v5 = v4;
    v6 = [v3 localizedDescription];
    v7 = 138412290;
    v8 = v6;
    _os_log_impl(&dword_258FC9000, v5, OS_LOG_TYPE_DEFAULT, "polaris debug response, error:%@", &v7, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) invalidate];
}

- (id)requestAllModelsLearning
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy_;
  v11 = __Block_byref_object_dispose_;
  v12 = 0;
  queue = [(ULConnection *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __52__ULConnection_Diagnostic__requestAllModelsLearning__block_invoke;
  v6[3] = &unk_2798D2510;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __52__ULConnection_Diagnostic__requestAllModelsLearning__block_invoke(uint64_t a1)
{
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "requestAllModelsLearning", v8, 2u);
  }

  [*(a1 + 32) _checkAndRecoverIfNeeded];
  v3 = [MEMORY[0x277CCAD78] UUID];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = [*(a1 + 32) connection];
  v7 = [v6 remoteObjectProxy];
  [v7 requestAllModelsLearningWithRequestIdentifier:*(*(*(a1 + 40) + 8) + 40)];
}

- (void)disableMicrolocationAtlocationWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__ULConnection_Diagnostic__disableMicrolocationAtlocationWithIdentifier___block_invoke;
  v8[3] = &unk_2798D2560;
  v9 = identifierCopy;
  selfCopy = self;
  v7 = identifierCopy;
  dispatch_sync(queue2, v8);
}

void __73__ULConnection_Diagnostic__disableMicrolocationAtlocationWithIdentifier___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "disableMicrolocationAtlocationWithIdentifier: %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) connection];
  v5 = [v4 remoteObjectProxy];
  [v5 removeCustomLocationOfInterestWithIdentifier:*(a1 + 32)];
}

+ (id)getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording handler:(id)handler
{
  handlerCopy = handler;
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v7 = dispatch_queue_create("com.apple.MicroLocation.getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation", v6);

  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v8 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v8, OS_LOG_TYPE_DEFAULT, "[DEPRECATED][DoNothing] received recording scan request", buf, 2u);
  }

  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __138__ULConnection_Legacy__getRecordingTriggerUUIDAndRequestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording_handler___block_invoke;
  block[3] = &unk_2798D26F0;
  v12 = handlerCopy;
  v9 = handlerCopy;
  dispatch_async(v7, block);

  return 0;
}

+ (void)donateMicroLocationTruthTagWithTagUUID:(id)d correspondingToTriggerUUID:(id)iD handler:(id)handler
{
  dCopy = d;
  iDCopy = iD;
  handlerCopy = handler;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_258FC9000, v10, OS_LOG_TYPE_DEFAULT, "[DEPRECATED][DoNothing] received truth label donation request for a recording trigger", v11, 2u);
  }
}

+ (void)donateMicroLocationTruthTagWithTagUUID:(id)d forRecordingEventsBetweenDate:(id)date andDate:(id)andDate handler:(id)handler
{
  dCopy = d;
  dateCopy = date;
  andDateCopy = andDate;
  handlerCopy = handler;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v13 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *v14 = 0;
    _os_log_impl(&dword_258FC9000, v13, OS_LOG_TYPE_DEFAULT, "[DEPRECATED][DoNothing] received truth label donation request between Dates", v14, 2u);
  }
}

+ (void)requestMicroLocationRecordingScanWithAdditionalInformation:(id)information shouldForceRecording:(BOOL)recording
{
  v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  informationCopy = information;
  v8 = dispatch_queue_create("com.apple.MicroLocation.requestMicroLocationRecordingScanWithAdditionalInformation", v6);

  v9 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v9 resume];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy_;
  v16[4] = __Block_byref_object_dispose_;
  v10 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:informationCopy copyItems:1];

  v17 = v10;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __104__ULConnection_Legacy__requestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording___block_invoke;
  block[3] = &unk_2798D2740;
  recordingCopy = recording;
  v13 = v9;
  v14 = v16;
  v11 = v9;
  dispatch_async(v8, block);

  _Block_object_dispose(v16, 8);
}

void __104__ULConnection_Legacy__requestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording___block_invoke(uint64_t a1)
{
  v38[3] = *MEMORY[0x277D85DE8];
  if (!*(*(*(a1 + 40) + 8) + 40))
  {
    v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v3 = *(*(a1 + 40) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = v2;
  }

  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(*(*(a1 + 40) + 8) + 40) copyItems:1];
  v6 = v5;
  if (*(a1 + 48))
  {
    v7 = MEMORY[0x277CBEC38];
  }

  else
  {
    v7 = MEMORY[0x277CBEC28];
  }

  [v5 setValue:v7 forKey:@"private.MicroLocation.forced.recordingRequest"];
  v8 = [v6 objectForKey:@"private.MicroLocation.recordingTriggerUUID"];

  if (!v8)
  {
    v9 = [MEMORY[0x277CCAD78] UUID];
    [v6 setValue:v9 forKey:@"private.MicroLocation.recordingTriggerUUID"];
  }

  v38[0] = objc_opt_class();
  v38[1] = objc_opt_class();
  v38[2] = objc_opt_class();
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v22 = a1;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v10 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v24 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v24)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v32 + 1) + 8 * i);
        v28 = 0u;
        v29 = 0u;
        v30 = 0u;
        v31 = 0u;
        v14 = v25;
        v15 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v29;
          while (2)
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v29 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = [v6 objectForKeyedSubscript:v13];
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {

                goto LABEL_23;
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v28 objects:v36 count:16];
            if (v16)
            {
              continue;
            }

            break;
          }
        }

        [v6 removeObjectForKey:v13];
LABEL_23:
        ;
      }

      v11 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  v21 = [*(v22 + 32) remoteObjectProxy];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __104__ULConnection_Legacy__requestMicroLocationRecordingScanWithAdditionalInformation_shouldForceRecording___block_invoke_2;
  v26[3] = &unk_2798D2718;
  v27 = *(v22 + 32);
  [v21 requestMicroLocationRecordingScanWithAdditionalInformation:v6 reply:v26];
}

+ (void)requestCurrentMicroLocationWithAdditionalInformation:(id)information
{
  informationCopy = information;
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v4 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v4, OS_LOG_TYPE_DEFAULT, "received localization scan request", buf, 2u);
  }

  v5 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v6 = dispatch_queue_create("com.apple.MicroLocation.requestCurrentMicroLocationWithAdditionalInformation", v5);

  v7 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v7 resume];
  *buf = 0;
  v13 = buf;
  v14 = 0x3032000000;
  v15 = __Block_byref_object_copy_;
  v16 = __Block_byref_object_dispose_;
  v17 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithDictionary:informationCopy copyItems:1];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __77__ULConnection_Legacy__requestCurrentMicroLocationWithAdditionalInformation___block_invoke;
  v9[3] = &unk_2798D25B0;
  v10 = v7;
  v11 = buf;
  v8 = v7;
  dispatch_async(v6, v9);

  _Block_object_dispose(buf, 8);
}

void __77__ULConnection_Legacy__requestCurrentMicroLocationWithAdditionalInformation___block_invoke(uint64_t a1)
{
  v31[2] = *MEMORY[0x277D85DE8];
  v31[0] = objc_opt_class();
  v31[1] = objc_opt_class();
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:*(*(*(a1 + 40) + 8) + 40) copyItems:1];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v15 = a1;
  obj = *(*(*(a1 + 40) + 8) + 40);
  v3 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v3)
  {
    v4 = v3;
    v17 = *v26;
    do
    {
      v5 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * v5);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v7 = v18;
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          while (2)
          {
            v11 = 0;
            do
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = [v2 objectForKeyedSubscript:v6];
              isKindOfClass = objc_opt_isKindOfClass();

              if (isKindOfClass)
              {

                goto LABEL_16;
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [v7 countByEnumeratingWithState:&v21 objects:v29 count:16];
            if (v9)
            {
              continue;
            }

            break;
          }
        }

        [v2 removeObjectForKey:v6];
LABEL_16:
        ++v5;
      }

      while (v5 != v4);
      v4 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v4);
  }

  v14 = [*(v15 + 32) remoteObjectProxy];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __77__ULConnection_Legacy__requestCurrentMicroLocationWithAdditionalInformation___block_invoke_2;
  v19[3] = &unk_2798D2718;
  v20 = *(v15 + 32);
  [v14 requestCurrentMicroLocationWithAdditionalInformation:v2 reply:v19];
}

+ (id)getMicroLocationInternalVersion
{
  v29 = *MEMORY[0x277D85DE8];
  if (onceToken_MicroLocation_Default != -1)
  {
    _CLLogObjectForCategory_MicroLocation_Default_cold_1();
  }

  v2 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(logObject_MicroLocation_Default, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_258FC9000, v2, OS_LOG_TYPE_DEFAULT, "received internal version get request", buf, 2u);
  }

  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.MicroLocation.getMicroLocationInternalVersion", v3);

  v5 = [ULConnection _createNSXPCConnectionWithWeakProxy:0];
  [v5 resume];
  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy_;
  v22 = __Block_byref_object_dispose_;
  v23 = 0;
  v6 = dispatch_semaphore_create(0);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke;
  block[3] = &unk_2798D2538;
  v7 = v5;
  v15 = v7;
  v17 = buf;
  v8 = v6;
  v16 = v8;
  dispatch_async(v4, block);
  v9 = dispatch_time(0, 2000000000);
  dispatch_semaphore_wait(v8, v9);
  if (onceToken_MicroLocation_Default != -1)
  {
    __51__ULConnection_initWithDelegate_serviceIdentifier___block_invoke_cold_1();
  }

  v10 = logObject_MicroLocation_Default;
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    uTF8String = [*(v19 + 5) UTF8String];
    v24 = 68289282;
    v25 = 2082;
    v26 = &unk_258FDF03F;
    v27 = 2082;
    v28 = uTF8String;
    _os_log_impl(&dword_258FC9000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:MicroLocation Internal Version request, version:%{public, location:escape_only}s}", &v24, 0x1Cu);
  }

  v12 = *(v19 + 5);
  _Block_object_dispose(buf, 8);

  return v12;
}

void __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) remoteObjectProxy];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke_2;
  v4[3] = &unk_2798D2768;
  v3 = *(a1 + 40);
  v7 = *(a1 + 48);
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 getMicroLocationInternalVersionWithReply:v4];
}

void __55__ULConnection_Legacy__getMicroLocationInternalVersion__block_invoke_2(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
  [*(a1 + 40) invalidate];
}

+ (id)metadataForHomekitActionSetEventWithUUID:(id)d name:(id)name type:(id)type clientName:(id)clientName source:(id)source homeName:(id)homeName
{
  v13 = MEMORY[0x277CBEB38];
  homeNameCopy = homeName;
  sourceCopy = source;
  clientNameCopy = clientName;
  typeCopy = type;
  nameCopy = name;
  dCopy = d;
  v20 = objc_alloc_init(v13);
  [v20 setValue:dCopy forKey:@"private.HomeKit.scene.actionSetUUID"];

  [v20 setValue:nameCopy forKey:@"private.HomeKit.scene.actionSetName"];
  [v20 setValue:typeCopy forKey:@"private.HomeKit.scene.actionSetType"];

  [v20 setValue:clientNameCopy forKey:@"private.HomeKit.scene.clientName"];
  [v20 setValue:sourceCopy forKey:@"private.HomeKit.scene.source"];

  [v20 setValue:homeNameCopy forKey:@"private.HomeKit.scene.homeName"];

  return v20;
}

+ (id)metadataForHomekitAccessoryControlEventWithUUID:(id)d stateString:(id)string serviceUUID:(id)iD serviceType:(id)type characteristicType:(id)characteristicType serviceGroupUUID:(id)uID source:(id)source roomUUID:(id)self0
{
  v16 = MEMORY[0x277CBEB38];
  uUIDCopy = uUID;
  sourceCopy = source;
  uIDCopy = uID;
  characteristicTypeCopy = characteristicType;
  typeCopy = type;
  iDCopy = iD;
  stringCopy = string;
  dCopy = d;
  v25 = objc_alloc_init(v16);
  [v25 setValue:dCopy forKey:@"private.HomeKit.accessory.accessoryUUID"];

  [v25 setValue:stringCopy forKey:@"private.HomeKit.accessory.stateString"];
  [v25 setValue:iDCopy forKey:@"private.HomeKit.accessory.serviceUUID"];

  [v25 setValue:typeCopy forKey:@"private.HomeKit.accessory.serviceType"];
  [v25 setValue:characteristicTypeCopy forKey:@"private.HomeKit.accessory.characteristicType"];

  [v25 setValue:uIDCopy forKey:@"private.HomeKit.accessory.serviceGroupUUID"];
  [v25 setValue:sourceCopy forKey:@"private.HomeKit.accessory.source"];

  [v25 setValue:uUIDCopy forKey:@"private.HomeKit.accessory.roomUUID"];

  return v25;
}

- (void)updateLegacyServiceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  queue = [(ULConnection *)self queue];
  dispatch_assert_queue_not_V2(queue);

  queue2 = [(ULConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __54__ULConnection_Legacy__updateLegacyServiceIdentifier___block_invoke;
  v8[3] = &unk_2798D2560;
  v8[4] = self;
  v9 = identifierCopy;
  v7 = identifierCopy;
  dispatch_sync(queue2, v8);
}

- (uint64_t)_xpcInterruptionHandler
{
  v1 = _CLLogObjectForCategory_MicroLocation_Default(self);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_FAULT))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_3(&dword_258FC9000, v2, v3, "{msg%{public}.0s:Interruption handler called twice, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v4, v5, v6, v7, v25, v26, v27, v28);
  }

  v9 = _CLLogObjectForCategory_MicroLocation_Default(v8);
  if (os_signpost_enabled(v9))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_258FC9000, v10, v11, v12, "Interruption handler called twice", "{msg%{public}.0s:Interruption handler called twice, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v13, v14, v25, v26, v27, v28);
  }

  v16 = _CLLogObjectForCategory_MicroLocation_Default(v15);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_2(&dword_258FC9000, v17, v18, "{msg%{public}.0s:Interruption handler called twice, event:%{public, location:escape_only}s, condition:%{private, location:escape_only}s}", v19, v20, v21, v22, v25, v26, v27, v28);
  }

  v23 = abort_report_np("%s:%d: assertion failure in %s", "/Library/Caches/com.apple.xbs/Sources/MicroLocation/MicroLocationFramework/src/ULConnection.m", 536, "[ULConnection _xpcInterruptionHandler]");
  return [(ULConnection *)v23 _xpcInvalidationHandler];
}

@end