@interface NDOManager
+ (void)postCAEventFor:(id)for eventDict:(id)dict;
- (BOOL)checkIsAvailableInStore:(id)store;
- (BOOL)isAPSSupportedOverrideWithServerValue:(BOOL)value;
- (NDOManager)init;
- (id)agentConnection;
- (id)clientConfiguration;
- (id)defaultDevice;
- (id)getDefaultDeviceInfoUsingForceCachedPolicy;
- (id)getDeviceInfoUsingForceCachedPolicyForSerialNumber:(id)number;
- (id)pairedBTDevices;
- (id)pairedWatches;
- (id)payloadDictionaryForDeviceInfo:(id)info atIndex:(int64_t)index;
- (id)payloadFrom:(id)from atIndex:(int64_t)index device:(id)device;
- (void)_getDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionBlock:(id)block;
- (void)appSupportDictionaryWithReply:(id)reply;
- (void)apsSupportedOverride:(id)override;
- (void)clearAllUserInitiatedFollowUpDismissalsWithReply:(id)reply;
- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply;
- (void)dismissFollowUpForSerialNumber:(id)number completion:(id)completion;
- (void)dismissFollowUps:(id)ups completion:(id)completion;
- (void)dismissNotificationForSerialNumber:(id)number completion:(id)completion;
- (void)getAllFUPEligibleDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getAmsPropertiesForContext:(id)context withReply:(id)reply;
- (void)getBTDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getBTPioneerDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getCoverageInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDecodedParamsForPath:(id)path withReply:(id)reply;
- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params andForcePostFollowup:(BOOL)followup withReply:(id)reply;
- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)getDeviceListForLocalDevices:(id)devices sessionID:(id)d policy:(unint64_t)policy params:(id)params salesReplyOnly:(BOOL)only salesInfoReply:(id)reply deviceInfoReply:(id)infoReply completionBlock:(id)self0;
- (void)getLocalDeviceListWithReply:(id)reply;
- (void)getLocalDeviceWarrantyForSerialNumber:(id)number withReply:(id)reply;
- (void)getPrimaryFUPEligibleDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply;
- (void)getRemoteDeviceListWithReply:(id)reply;
- (void)getRemoteDeviceWarrantyForSerialNumber:(id)number withAdditionalHeaders:(id)headers withReply:(id)reply;
- (void)getWarrantyUsingPolicy:(unint64_t)policy withReply:(id)reply;
- (void)handleInternalCommand:(id)command withReply:(id)reply;
- (void)removePromoSectionWithHashValue:(int64_t)value andAckData:(id)data;
- (void)scheduleOutreachAfter:(double)after withReply:(id)reply;
- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply;
- (void)ulWebURLOverride:(id)override;
- (void)webURLOverride:(id)override;
@end

@implementation NDOManager

- (NDOManager)init
{
  v7.receiver = self;
  v7.super_class = NDOManager;
  v2 = [(NDOManager *)&v7 init];
  v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v4 = dispatch_queue_create("com.apple.newdeviceoutreach.ndoagent.devicelist", v3);
  workingQueue = v2->workingQueue;
  v2->workingQueue = v4;

  return v2;
}

- (id)agentConnection
{
  v2 = [objc_alloc(MEMORY[0x277CCAE80]) initWithMachServiceName:@"com.apple.ndoagent" options:0];
  v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_286D764F8];
  v4 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}];
  [v3 setClasses:v7 forSelector:sel_getDeviceListForLocalDevices_sessionID_params_withReply_ argumentIndex:0 ofReply:0];

  v8 = MEMORY[0x277CBEB98];
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v8 setWithObjects:{v9, v10, objc_opt_class(), 0}];
  [v3 setClasses:v11 forSelector:sel_getDeviceListForLocalDevices_sessionID_params_withReply_ argumentIndex:0 ofReply:1];

  v12 = MEMORY[0x277CBEB98];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  [v3 setClasses:v14 forSelector:sel_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v15 = MEMORY[0x277CBEB98];
  v16 = objc_opt_class();
  v17 = [v15 setWithObjects:{v16, objc_opt_class(), 0}];
  [v3 setClasses:v17 forSelector:sel_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v18 = MEMORY[0x277CBEB98];
  v19 = objc_opt_class();
  v20 = [v18 setWithObjects:{v19, objc_opt_class(), 0}];
  [v3 setClasses:v20 forSelector:sel_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v21 = MEMORY[0x277CBEB98];
  v22 = objc_opt_class();
  v23 = [v21 setWithObjects:{v22, objc_opt_class(), 0}];
  [v3 setClasses:v23 forSelector:sel_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply_ argumentIndex:0 ofReply:1];

  v24 = MEMORY[0x277CBEB98];
  v25 = objc_opt_class();
  v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
  [v3 setClasses:v26 forSelector:sel_defaultDevice_ argumentIndex:0 ofReply:1];

  v27 = MEMORY[0x277CBEB98];
  v28 = objc_opt_class();
  v29 = [v27 setWithObjects:{v28, objc_opt_class(), 0}];
  [v3 setClasses:v29 forSelector:sel_pairedWatches_ argumentIndex:0 ofReply:1];

  v30 = MEMORY[0x277CBEB98];
  v31 = objc_opt_class();
  v32 = objc_opt_class();
  v33 = [v30 setWithObjects:{v31, v32, objc_opt_class(), 0}];
  [v3 setClasses:v33 forSelector:sel_pairedBTDevices_ argumentIndex:0 ofReply:1];

  v34 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v34 forSelector:sel_getLocalDeviceListWithReply_ argumentIndex:0 ofReply:1];

  v35 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v35 forSelector:sel_getRemoteDeviceListWithReply_ argumentIndex:0 ofReply:1];

  v36 = [MEMORY[0x277CBEB98] setWithObjects:{objc_opt_class(), 0}];
  [v3 setClasses:v36 forSelector:sel_getAmsPropertiesForContext_withReply_ argumentIndex:0 ofReply:1];

  [v2 setRemoteObjectInterface:v3];
  [v2 resume];

  return v2;
}

- (void)scheduleOutreachAfter:(double)after withReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke;
  v16[3] = &unk_279975D98;
  v8 = agentConnection;
  v17 = v8;
  v9 = replyCopy;
  v18 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_9;
  v13[3] = &unk_279975DC0;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 scheduleOutreachAfter:v13 withReply:after];
}

void __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_9(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = _NDOLogSystem(a1);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "Result %d", v6, 8u);
  }

  [*(a1 + 32) invalidate];
  return (*(*(a1 + 40) + 16))();
}

- (void)getWarrantyUsingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __47__NDOManager_getWarrantyUsingPolicy_withReply___block_invoke;
  v8[3] = &unk_279975DE8;
  v9 = replyCopy;
  v7 = replyCopy;
  [(NDOManager *)self getDefaultDeviceInfoUsingPolicy:policy withReply:v8];
}

void __47__NDOManager_getWarrantyUsingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 warranty];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)checkIsAvailableInStore:(id)store
{
  storeCopy = store;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __38__NDOManager_checkIsAvailableInStore___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __38__NDOManager_checkIsAvailableInStore___block_invoke_12;
  v10[3] = &unk_279975E38;
  v8 = v6;
  v11 = v8;
  v12 = &v15;
  [v7 checkIsAvailableInStore:storeCopy withReply:v10];

  LOBYTE(v7) = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v7;
}

void __38__NDOManager_checkIsAvailableInStore___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __38__NDOManager_checkIsAvailableInStore___block_invoke_12(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = [v3 objectForKeyedSubscript:@"AppAvailabilityType"];
  *(*(*(a1 + 40) + 8) + 24) = v4 == 0;

  v6 = _NDOLogSystem(v5);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_25BD52000, v6, OS_LOG_TYPE_DEFAULT, "%@", &v7, 0xCu);
  }
}

- (void)appSupportDictionaryWithReply:(id)reply
{
  v21[1] = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  v18[0] = 0;
  v18[1] = v18;
  v18[2] = 0x3032000000;
  v18[3] = __Block_byref_object_copy_;
  v18[4] = __Block_byref_object_dispose_;
  v20 = @"AppAvailabilityType";
  v21[0] = &unk_286D6E450;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__NDOManager_appSupportDictionaryWithReply___block_invoke;
  v14[3] = &unk_279975E60;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
  v16 = v7;
  v17 = v18;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__NDOManager_appSupportDictionaryWithReply___block_invoke_18;
  v11[3] = &unk_279975E88;
  v9 = v6;
  v12 = v9;
  v10 = v7;
  v13 = v10;
  [v8 appSupportAvailability:@"com.apple.supportapp" withReply:v11];

  _Block_object_dispose(v18, 8);
}

void __44__NDOManager_appSupportDictionaryWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __44__NDOManager_appSupportDictionaryWithReply___block_invoke_18(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)webURLOverride:(id)override
{
  overrideCopy = override;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __29__NDOManager_webURLOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __29__NDOManager_webURLOverride___block_invoke_19;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = overrideCopy;
  v8 = overrideCopy;
  v9 = v6;
  [v7 readWebURLOverride:v10];
}

void __29__NDOManager_webURLOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __29__NDOManager_webURLOverride___block_invoke_19(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = (*(*(a1 + 40) + 16))();
  v5 = _NDOLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "webURLOverride : %@", &v6, 0xCu);
  }
}

- (void)ulWebURLOverride:(id)override
{
  overrideCopy = override;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __31__NDOManager_ulWebURLOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __31__NDOManager_ulWebURLOverride___block_invoke_21;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = overrideCopy;
  v8 = overrideCopy;
  v9 = v6;
  [v7 readULWebURLOverride:v10];
}

void __31__NDOManager_ulWebURLOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __31__NDOManager_ulWebURLOverride___block_invoke_21(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = (*(*(a1 + 40) + 16))();
  v5 = _NDOLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "ulWebURLOverride : %@", &v6, 0xCu);
  }
}

- (void)apsSupportedOverride:(id)override
{
  overrideCopy = override;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __35__NDOManager_apsSupportedOverride___block_invoke;
  v13[3] = &unk_279975E10;
  v6 = agentConnection;
  v14 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __35__NDOManager_apsSupportedOverride___block_invoke_22;
  v10[3] = &unk_279975EB0;
  v11 = v6;
  v12 = overrideCopy;
  v8 = overrideCopy;
  v9 = v6;
  [v7 readAPSSupportedOverride:v10];
}

void __35__NDOManager_apsSupportedOverride___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __35__NDOManager_apsSupportedOverride___block_invoke_22(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = (*(*(a1 + 40) + 16))();
  v5 = _NDOLogSystem(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_25BD52000, v5, OS_LOG_TYPE_DEFAULT, "apsSupportedOverride : %@", &v6, 0xCu);
  }
}

- (BOOL)isAPSSupportedOverrideWithServerValue:(BOOL)value
{
  v16 = 0;
  v17[0] = &v16;
  v17[1] = 0x3032000000;
  v17[2] = __Block_byref_object_copy_;
  v17[3] = __Block_byref_object_dispose_;
  v18 = 0;
  v5 = +[NDOUtilities isInternal];
  if (v5)
  {
    v6 = CFPreferencesCopyAppValue(@"isAPSSupported", @"com.apple.NewDeviceOutreach");
    v7 = *(v17[0] + 40);
    *(v17[0] + 40) = v6;

    if (!*(v17[0] + 40))
    {
      v8 = dispatch_semaphore_create(0);
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __52__NDOManager_isAPSSupportedOverrideWithServerValue___block_invoke;
      v13[3] = &unk_279975ED8;
      v15 = &v16;
      v9 = v8;
      v14 = v9;
      [(NDOManager *)self apsSupportedOverride:v13];
      v10 = dispatch_time(0, 2000000000);
      dispatch_semaphore_wait(v9, v10);
    }
  }

  if (*(v17[0] + 40))
  {
    v11 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      [(NDOManager *)v17 isAPSSupportedOverrideWithServerValue:v11];
    }

    value = [*(v17[0] + 40) isEqualToString:@"1"];
  }

  _Block_object_dispose(&v16, 8);

  return value;
}

void __52__NDOManager_isAPSSupportedOverrideWithServerValue___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (void)getDecodedParamsForPath:(id)path withReply:(id)reply
{
  pathCopy = path;
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v9 = agentConnection;
  v20 = v9;
  v10 = replyCopy;
  v21 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v19];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke_36;
  v15[3] = &unk_279975F00;
  v16 = pathCopy;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = pathCopy;
  [v11 getDecodedParamsForPath:v14 withReply:v15];
}

void __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __48__NDOManager_getDecodedParamsForPath_withReply___block_invoke_36(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = 136446722;
    v7 = "[NDOManager getDecodedParamsForPath:withReply:]_block_invoke";
    v8 = 2114;
    v9 = v5;
    v10 = 2114;
    v11 = v3;
    _os_log_impl(&dword_25BD52000, v4, OS_LOG_TYPE_DEFAULT, "%{public}s:  %{public}@ : %{public}@", &v6, 0x20u);
  }

  [*(a1 + 40) invalidate];
  (*(*(a1 + 48) + 16))();
}

- (id)clientConfiguration
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy_;
  v18 = __Block_byref_object_dispose_;
  v19 = 0;
  agentConnection = [(NDOManager *)self agentConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __33__NDOManager_clientConfiguration__block_invoke;
  v12[3] = &unk_279975E10;
  v3 = agentConnection;
  v13 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v12];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __33__NDOManager_clientConfiguration__block_invoke_37;
  v9[3] = &unk_279975E38;
  v5 = v3;
  v10 = v5;
  v11 = &v14;
  [v4 getClientConfigurationWithReply:v9];

  v6 = [NDOClientConfiguration alloc];
  v7 = [(NDOClientConfiguration *)v6 initWithConfigDictionary:v15[5]];

  _Block_object_dispose(&v14, 8);

  return v7;
}

void __33__NDOManager_clientConfiguration__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __33__NDOManager_clientConfiguration__block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __33__NDOManager_clientConfiguration__block_invoke_37(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)defaultDevice
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__NDOManager_defaultDevice__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = agentConnection;
  v15 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__NDOManager_defaultDevice__block_invoke_39;
  v11[3] = &unk_279975F28;
  v5 = v3;
  v12 = v5;
  v13 = &v16;
  [v4 defaultDevice:v11];

  v7 = _NDOLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v17[5];
    *buf = 138477827;
    v23 = v8;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "default device: %{private}@", buf, 0xCu);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __27__NDOManager_defaultDevice__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __27__NDOManager_defaultDevice__block_invoke_39(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)pairedWatches
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __27__NDOManager_pairedWatches__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = agentConnection;
  v15 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __27__NDOManager_pairedWatches__block_invoke_41;
  v11[3] = &unk_279975F50;
  v5 = v3;
  v12 = v5;
  v13 = &v16;
  [v4 pairedWatches:v11];

  v7 = _NDOLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v17[5];
    *buf = 138477827;
    v23 = v8;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "paired watches : %{private}@", buf, 0xCu);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __27__NDOManager_pairedWatches__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __27__NDOManager_pairedWatches__block_invoke_41(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)pairedBTDevices
{
  v24 = *MEMORY[0x277D85DE8];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __29__NDOManager_pairedBTDevices__block_invoke;
  v14[3] = &unk_279975E10;
  v3 = agentConnection;
  v15 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __29__NDOManager_pairedBTDevices__block_invoke_43;
  v11[3] = &unk_279975F50;
  v5 = v3;
  v12 = v5;
  v13 = &v16;
  [v4 pairedBTDevices:v11];

  v7 = _NDOLogSystem(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v17[5];
    *buf = 138477827;
    v23 = v8;
    _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "paired BTDevices : %{private}@", buf, 0xCu);
  }

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __29__NDOManager_pairedBTDevices__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __29__NDOManager_pairedBTDevices__block_invoke_43(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (id)getDefaultDeviceInfoUsingForceCachedPolicy
{
  agentConnection = [(NDOManager *)self agentConnection];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy_;
  v17 = __Block_byref_object_dispose_;
  v18 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke;
  v11[3] = &unk_279975E10;
  v3 = agentConnection;
  v12 = v3;
  v4 = [v3 synchronousRemoteObjectProxyWithErrorHandler:v11];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke_44;
  v8[3] = &unk_279975F78;
  v5 = v3;
  v9 = v5;
  v10 = &v13;
  [v4 getDefaultDeviceInfoUsingPolicy:1 withReply:v8];

  v6 = v14[5];
  _Block_object_dispose(&v13, 8);

  return v6;
}

void __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __56__NDOManager_getDefaultDeviceInfoUsingForceCachedPolicy__block_invoke_44(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getDefaultDeviceInfoUsingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke;
  v16[3] = &unk_279975D98;
  v8 = agentConnection;
  v17 = v8;
  v9 = replyCopy;
  v18 = v9;
  v10 = [v8 remoteObjectProxyWithErrorHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke_45;
  v13[3] = &unk_279975FA0;
  v14 = v8;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  [v10 getDefaultDeviceInfoUsingPolicy:policy withReply:v13];
}

void __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __56__NDOManager_getDefaultDeviceInfoUsingPolicy_withReply___block_invoke_45(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)getDeviceInfoUsingForceCachedPolicyForSerialNumber:(id)number
{
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke;
  v14[3] = &unk_279975E10;
  v6 = agentConnection;
  v15 = v6;
  v7 = [v6 synchronousRemoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke_46;
  v11[3] = &unk_279975F78;
  v8 = v6;
  v12 = v8;
  v13 = &v16;
  [v7 getDeviceInfoForSerialNumber:numberCopy usingPolicy:1 withReply:v11];

  v9 = v17[5];
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

void __65__NDOManager_getDeviceInfoUsingForceCachedPolicyForSerialNumber___block_invoke_46(uint64_t a1, void *a2)
{
  v3 = a2;
  [*(a1 + 32) invalidate];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply
{
  numberCopy = number;
  replyCopy = reply;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke;
  v11[3] = &unk_279975FC8;
  v12 = numberCopy;
  v13 = replyCopy;
  v9 = numberCopy;
  v10 = replyCopy;
  [(NDOManager *)self getCoverageInfoForSerialNumber:v9 usingPolicy:2 withReply:v11];
}

void __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (v5)
  {
    v7 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __65__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_withReply___block_invoke_cold_1();
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [NDOManagerSupportAppUtilities ndoDeviceInfoFromCoverageInfoData:a2 withSerialNumber:*(a1 + 32)];
    (*(v8 + 16))(v8, v9);
  }
}

- (void)getDeviceInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy sessionID:(id)d params:(id)params andForcePostFollowup:(BOOL)followup withReply:(id)reply
{
  followupCopy = followup;
  replyCopy = reply;
  paramsCopy = params;
  dCopy = d;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __103__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_sessionID_params_andForcePostFollowup_withReply___block_invoke;
  v27[3] = &unk_279975D98;
  v19 = agentConnection;
  v28 = v19;
  v20 = replyCopy;
  v29 = v20;
  v21 = [v19 remoteObjectProxyWithErrorHandler:v27];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __103__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_sessionID_params_andForcePostFollowup_withReply___block_invoke_49;
  v24[3] = &unk_279975FA0;
  v25 = v19;
  v26 = v20;
  v22 = v20;
  v23 = v19;
  [v21 getDeviceInfoForSerialNumber:numberCopy usingPolicy:policy sessionID:dCopy params:paramsCopy andForcePostFollowup:followupCopy withReply:v24];
}

void __103__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_sessionID_params_andForcePostFollowup_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __103__NDOManager_getDeviceInfoForSerialNumber_usingPolicy_sessionID_params_andForcePostFollowup_withReply___block_invoke_49(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (id)payloadFrom:(id)from atIndex:(int64_t)index device:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  deviceCopy = device;
  serialNumber = [deviceCopy serialNumber];
  defaultDevice = [(NDOManager *)self defaultDevice];
  serialNumber2 = [defaultDevice serialNumber];
  v48 = serialNumber;
  v13 = [serialNumber2 isEqualToString:serialNumber];

  acOfferEligibleUntil = [fromCopy acOfferEligibleUntil];

  if (acOfferEligibleUntil)
  {
    acOfferEligibleUntil2 = [fromCopy acOfferEligibleUntil];
    v17 = [NDOUtilities daysFromDate:acOfferEligibleUntil2];
  }

  else
  {
    v17 = 1;
  }

  v18 = _NDOLogSystem(v15);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    defaultDevice2 = [(NDOManager *)self defaultDevice];
    serialNumber3 = [defaultDevice2 serialNumber];
    acOfferEligibleUntil3 = [fromCopy acOfferEligibleUntil];
    *buf = 136446978;
    v52 = "[NDOManager payloadFrom:atIndex:device:]";
    v53 = 2112;
    v54 = serialNumber3;
    v55 = 2112;
    v56 = serialNumber;
    v57 = 2112;
    v58 = acOfferEligibleUntil3;
    _os_log_impl(&dword_25BD52000, v18, OS_LOG_TYPE_DEFAULT, "%{public}s: sn: %@ sn2: %@ %@", buf, 0x2Au);
  }

  v50[0] = serialNumber;
  v49[0] = @"serialNum";
  v49[1] = @"currentDevice";
  v47 = [MEMORY[0x277CCABB0] numberWithBool:v13];
  v50[1] = v47;
  v49[2] = @"deviceSeq";
  v46 = [MEMORY[0x277CCABB0] numberWithInteger:index];
  v50[2] = v46;
  v49[3] = @"deviceName";
  name = [deviceCopy name];
  v50[3] = name;
  v49[4] = @"deviceImageUrl";
  deviceImageUrl = [deviceCopy deviceImageUrl];

  v24 = deviceImageUrl;
  if (!deviceImageUrl)
  {
    deviceImageUrl2 = [fromCopy deviceImageUrl];
    v44 = deviceImageUrl2;
    if (deviceImageUrl2)
    {
      v24 = deviceImageUrl2;
    }

    else
    {
      v24 = &stru_286D686B8;
    }
  }

  v50[4] = v24;
  v49[5] = @"deviceDesc";
  deviceDesc = [fromCopy deviceDesc];
  v27 = deviceDesc;
  if (deviceDesc)
  {
    v28 = deviceDesc;
  }

  else
  {
    v28 = &stru_286D686B8;
  }

  v50[5] = v28;
  v49[6] = @"eligibilityRemainingInDays";
  v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v17];
  v50[6] = v29;
  v49[7] = @"sgId";
  sgId = [fromCopy sgId];
  v31 = sgId;
  if (sgId)
  {
    v32 = sgId;
  }

  else
  {
    v32 = &stru_286D686B8;
  }

  v50[7] = v32;
  v49[8] = @"pfcId";
  pfcId = [fromCopy pfcId];
  v34 = pfcId;
  if (pfcId)
  {
    v35 = pfcId;
  }

  else
  {
    v35 = &stru_286D686B8;
  }

  v50[8] = v35;
  v49[9] = @"pgfId";
  pgfId = [fromCopy pgfId];
  v37 = pgfId;
  if (pgfId)
  {
    v38 = pgfId;
  }

  else
  {
    v38 = &stru_286D686B8;
  }

  v50[9] = v38;
  v49[10] = @"parentId";
  parentId = [fromCopy parentId];
  v40 = parentId;
  if (parentId)
  {
    v41 = parentId;
  }

  else
  {
    v41 = &stru_286D686B8;
  }

  v50[10] = v41;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v50 forKeys:v49 count:11];

  if (!deviceImageUrl)
  {
  }

  return v42;
}

- (id)payloadDictionaryForDeviceInfo:(id)info atIndex:(int64_t)index
{
  infoCopy = info;
  v7 = infoCopy;
  if (!infoCopy)
  {
    goto LABEL_14;
  }

  warranty = [infoCopy warranty];
  acOfferDisplayDate = [warranty acOfferDisplayDate];

  warranty2 = [v7 warranty];
  acOfferEligible = [warranty2 acOfferEligible];
  if (acOfferDisplayDate)
  {
    if (acOfferEligible)
    {
      warranty3 = [v7 warranty];
      acOfferDisplayDate2 = [warranty3 acOfferDisplayDate];
      [acOfferDisplayDate2 timeIntervalSinceNow];
      if (v14 > 0.0)
      {

        v15 = 0;
LABEL_12:

        goto LABEL_13;
      }

      warranty4 = [v7 warranty];
      acOfferEligibleUntil = [warranty4 acOfferEligibleUntil];
      [acOfferEligibleUntil timeIntervalSinceNow];
      v17 = v20;

      goto LABEL_10;
    }

LABEL_8:
    v15 = 0;
LABEL_13:

    goto LABEL_15;
  }

  if (!acOfferEligible)
  {
    goto LABEL_8;
  }

  warranty3 = [v7 warranty];
  acOfferDisplayDate2 = [warranty3 acOfferEligibleUntil];
  [acOfferDisplayDate2 timeIntervalSinceNow];
  v17 = v16;
LABEL_10:

  if (v17 > 0.0)
  {
    warranty2 = [v7 warranty];
    warranty3 = [v7 device];
    v15 = [(NDOManager *)self payloadFrom:warranty2 atIndex:index device:warranty3];
    goto LABEL_12;
  }

LABEL_14:
  v15 = 0;
LABEL_15:

  return v15;
}

- (void)getDeviceListForLocalDevices:(id)devices sessionID:(id)d policy:(unint64_t)policy params:(id)params salesReplyOnly:(BOOL)only salesInfoReply:(id)reply deviceInfoReply:(id)infoReply completionBlock:(id)self0
{
  devicesCopy = devices;
  dCopy = d;
  paramsCopy = params;
  replyCopy = reply;
  infoReplyCopy = infoReply;
  blockCopy = block;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke;
  v28[3] = &unk_279976108;
  v28[4] = self;
  v29 = devicesCopy;
  onlyCopy = only;
  v32 = blockCopy;
  v33 = replyCopy;
  v30 = dCopy;
  v31 = paramsCopy;
  v34 = infoReplyCopy;
  policyCopy = policy;
  v22 = infoReplyCopy;
  v23 = paramsCopy;
  v24 = dCopy;
  v25 = replyCopy;
  v26 = blockCopy;
  v27 = devicesCopy;
  [(NDOManager *)self _getDeviceListForLocalDevices:v27 sessionID:v24 params:v23 completionBlock:v28];
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v126 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v56 = a3;
  v59 = v4;
  v5 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  v58 = v5;
  v106 = 0;
  v107 = &v106;
  v108 = 0x2020000000;
  v109 = 0;
  v102 = 0;
  v103 = &v102;
  v104 = 0x2020000000;
  v105 = 0;
  v98 = 0;
  v99 = &v98;
  v100 = 0x2020000000;
  v101 = 0;
  if (v4 && (v5 = [v4 count]) != 0)
  {
    *(v99 + 24) = 1;
    [v58 addObjectsFromArray:v4];
    *(v107 + 24) = 1;
    v6 = *(a1 + 64);
    if (v6 && (*(a1 + 96) & 1) == 0)
    {
      v6 = (*(v6 + 16))(v6, v58);
    }

    v7 = _NDOLogSystem(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136446466;
      *&buf[4] = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      *&buf[12] = 1024;
      *&buf[14] = 428;
      _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d completionBlock", buf, 0x12u);
    }
  }

  else
  {
    v8 = _NDOLogSystem(v5);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_cold_1(v8);
    }

    v9 = [*(a1 + 32) defaultDevice];
    v7 = [v9 serialNumber];

    v10 = [NDODeviceSection alloc];
    v11 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v12 = [v11 localizedStringForKey:@"THIS_DEVICE" value:&stru_286D686B8 table:@"Localizable"];
    v13 = [(NDODeviceSection *)v10 initWithLabel:v12 identifier:@"THIS_DEVICE"];

    v14 = [NDODeviceSection alloc];
    v15 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v16 = [v15 localizedStringForKey:@"MORE_DEVICES" value:&stru_286D686B8 table:@"Localizable"];
    v17 = [(NDODeviceSection *)v14 initWithLabel:v16 identifier:@"MORE_DEVICES"];

    [v58 addObject:v13];
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v18 = *(a1 + 40);
    v19 = [v18 countByEnumeratingWithState:&v94 objects:v125 count:16];
    if (v19)
    {
      v20 = *v95;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v95 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v94 + 1) + 8 * i);
          v23 = [v22 serialNumber];
          v24 = [v23 isEqualToString:v7];

          if (v24)
          {
            v25 = v13;
          }

          else
          {
            v25 = v17;
          }

          [(NDODeviceSection *)v25 addDevice:v22];
        }

        v19 = [v18 countByEnumeratingWithState:&v94 objects:v125 count:16];
      }

      while (v19);
    }

    v26 = [(NDODeviceSection *)v17 deviceList];
    v27 = [v26 count] == 0;

    if (!v27)
    {
      [v58 addObject:v17];
    }
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v122 = __Block_byref_object_copy_;
  v123 = __Block_byref_object_dispose_;
  v28 = v56;
  v124 = v28;
  v54 = dispatch_group_create();
  v55 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v57 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v29 = [MEMORY[0x277CBEB18] arrayWithCapacity:0];
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v30 = v58;
  v31 = [v30 countByEnumeratingWithState:&v90 objects:v120 count:16];
  if (v31)
  {
    v32 = *v91;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v91 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = [*(*(&v90 + 1) + 8 * j) deviceList];
        [v29 addObjectsFromArray:v34];
      }

      v31 = [v30 countByEnumeratingWithState:&v90 objects:v120 count:16];
    }

    while (v31);
  }

  v35 = a1;
  if (*(v99 + 24) != 1 || !*(a1 + 72))
  {
    goto LABEL_38;
  }

  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_99;
  v87[3] = &unk_279975FF0;
  v36 = v57;
  v37 = *(a1 + 32);
  v88 = v36;
  v89 = v37;
  [v29 enumerateObjectsUsingBlock:v87];
  *(v103 + 24) = 1;
  v38 = *(a1 + 72);
  v39 = *(*&buf[8] + 40);
  v40 = [v36 count] ? v36 : 0;
  v41 = (*(v38 + 16))(v38, v39, v40, v28);
  v42 = _NDOLogSystem(v41);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    v53 = *(*&buf[8] + 40);
    *v110 = 136316162;
    v111 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke_2";
    v112 = 1024;
    v113 = 450;
    v114 = 2112;
    v115 = v53;
    v116 = 2112;
    v117 = v28;
    v118 = 2112;
    v119 = v36;
    _os_log_debug_impl(&dword_25BD52000, v42, OS_LOG_TYPE_DEBUG, "%s:%d salesInfoReply salesURL:%@ agsULUrl:%@ %@", v110, 0x30u);
  }

  v43 = *(a1 + 96);
  v35 = a1;
  if ((v43 & 1) == 0)
  {
LABEL_38:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_102;
    aBlock[3] = &unk_279976018;
    v44 = v55;
    v81 = v44;
    v85 = &v98;
    v45 = *(v35 + 72);
    v86 = buf;
    v46 = *(v35 + 32);
    v84 = v45;
    v82 = v46;
    v47 = v57;
    v83 = v47;
    v48 = _Block_copy(aBlock);
    v73[0] = MEMORY[0x277D85DD0];
    v73[1] = 3221225472;
    v73[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2;
    v73[3] = &unk_2799760B8;
    v49 = v54;
    v50 = *(v35 + 32);
    v74 = v49;
    v75 = v50;
    v79 = *(a1 + 88);
    v76 = *(a1 + 48);
    v77 = *(a1 + 56);
    v51 = v48;
    v78 = v51;
    [v29 enumerateObjectsUsingBlock:v73];
    v52 = *(*(a1 + 32) + 8);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_105;
    block[3] = &unk_2799760E0;
    v66 = *(a1 + 64);
    v69 = &v106;
    v72 = *(a1 + 96);
    v62 = v30;
    v67 = *(a1 + 72);
    v70 = &v102;
    v71 = buf;
    v63 = v47;
    v64 = v28;
    v68 = *(a1 + 80);
    v65 = v44;
    dispatch_group_notify(v49, v52, block);
  }

  _Block_object_dispose(buf, 8);
  _Block_object_dispose(&v98, 8);
  _Block_object_dispose(&v102, 8);
  _Block_object_dispose(&v106, 8);
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_99(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = a2;
  if ([v7 acOfferEligible])
  {
    v5 = *(a1 + 32);
    v6 = [*(a1 + 40) payloadFrom:v7 atIndex:a3 device:v7];
    [v5 addObject:v6];
  }
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_102(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v16 = a3;
  v7 = a2;
  v8 = [v16 warranty];
  [v7 updateWithWarranty:v8];

  [*(a1 + 32) addObject:v16];
  if ((*(*(*(a1 + 64) + 8) + 24) & 1) != 0 || !*(a1 + 56))
  {
    goto LABEL_10;
  }

  v9 = [v16 warranty];
  v10 = [v9 agsULURL];
  if (!v10)
  {
    goto LABEL_6;
  }

  v11 = *(*(*(a1 + 72) + 8) + 40);

  if (!v11)
  {
    v9 = [v16 warranty];
    v12 = [v9 agsULURL];
    v13 = *(*(a1 + 72) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

LABEL_6:
  }

  v15 = [*(a1 + 40) payloadDictionaryForDeviceInfo:v16 atIndex:a4];
  if (v15)
  {
    [*(a1 + 48) addObject:v15];
  }

LABEL_10:
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  dispatch_group_enter(*(a1 + 32));
  if ([v5 deviceType] == 2)
  {
    v6 = _NDOLogSystem(2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2_cold_1(v5, v6);
    }

    dispatch_group_leave(*(a1 + 32));
  }

  else
  {
    v7 = *(a1 + 40);
    v8 = [v5 serialNumber];
    v9 = *(a1 + 72);
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_3;
    v14[3] = &unk_279976090;
    v14[4] = *(a1 + 40);
    v12 = v5;
    v13 = *(a1 + 72);
    v15 = v12;
    v20 = v13;
    v16 = *(a1 + 32);
    v17 = *(a1 + 48);
    v18 = *(a1 + 56);
    v19 = *(a1 + 64);
    v21 = a3;
    [v7 getDeviceInfoForSerialNumber:v8 usingPolicy:v9 sessionID:v10 params:v11 andForcePostFollowup:0 withReply:v14];
  }
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 8);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_4;
  block[3] = &unk_279976068;
  v15 = v3;
  v5 = *(a1 + 40);
  v20 = *(a1 + 80);
  v6 = *(a1 + 48);
  v13 = *(a1 + 32);
  v7 = *(a1 + 56);
  *&v8 = v13;
  *(&v8 + 1) = v7;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  v16 = v9;
  v17 = v8;
  v18 = *(a1 + 64);
  v10 = *(a1 + 72);
  v11 = *(a1 + 88);
  v19 = v10;
  v21 = v11;
  v12 = v3;
  dispatch_async(v4, block);
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) warranty];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 acOfferEligible];
    if (v4 == [*(a1 + 40) acOfferEligible] || *(a1 + 88) == 2)
    {
      (*(*(a1 + 80) + 16))();
    }

    else
    {
      dispatch_group_enter(*(a1 + 48));
      v5 = *(a1 + 56);
      v6 = [*(a1 + 40) serialNumber];
      v7 = *(a1 + 64);
      v8 = *(a1 + 72);
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_5;
      v11[3] = &unk_279976040;
      v14 = *(a1 + 80);
      v9 = *(a1 + 40);
      v10 = *(a1 + 96);
      v12 = v9;
      v15 = v10;
      v13 = *(a1 + 48);
      [v5 getDeviceInfoForSerialNumber:v6 usingPolicy:2 sessionID:v7 params:v8 andForcePostFollowup:0 withReply:v11];
    }
  }

  dispatch_group_leave(*(a1 + 48));
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_5(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);

  dispatch_group_leave(v2);
}

uint64_t __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_105(uint64_t result)
{
  v1 = result;
  v12 = *MEMORY[0x277D85DE8];
  if (*(result + 64) && (*(*(*(result + 88) + 8) + 24) & 1) == 0 && (*(result + 112) & 1) == 0)
  {
    v2 = _NDOLogSystem(result);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      v10 = 1024;
      v11 = 507;
      _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "%{public}s:%d completionBlock", &v8, 0x12u);
    }

    result = (*(*(v1 + 64) + 16))();
  }

  if (*(v1 + 72) && (*(*(*(v1 + 96) + 8) + 24) & 1) == 0)
  {
    v3 = _NDOLogSystem(result);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      v10 = 1024;
      v11 = 512;
      _os_log_impl(&dword_25BD52000, v3, OS_LOG_TYPE_DEFAULT, "%{public}s:%d salesInfoReply", &v8, 0x12u);
    }

    v4 = *(v1 + 72);
    v5 = *(*(*(v1 + 104) + 8) + 40);
    if ([*(v1 + 40) count])
    {
      v6 = *(v1 + 40);
    }

    else
    {
      v6 = 0;
    }

    result = (*(v4 + 16))(v4, v5, v6, *(v1 + 48));
  }

  if (*(v1 + 80) && (*(v1 + 112) & 1) == 0)
  {
    v7 = _NDOLogSystem(result);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136446466;
      v9 = "[NDOManager getDeviceListForLocalDevices:sessionID:policy:params:salesReplyOnly:salesInfoReply:deviceInfoReply:completionBlock:]_block_invoke";
      v10 = 1024;
      v11 = 517;
      _os_log_impl(&dword_25BD52000, v7, OS_LOG_TYPE_DEFAULT, "%{public}s:%d deviceInfoReply", &v8, 0x12u);
    }

    return (*(*(v1 + 80) + 16))();
  }

  return result;
}

- (void)_getDeviceListForLocalDevices:(id)devices sessionID:(id)d params:(id)params completionBlock:(id)block
{
  blockCopy = block;
  paramsCopy = params;
  dCopy = d;
  devicesCopy = devices;
  agentConnection = [(NDOManager *)self agentConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke;
  v23[3] = &unk_279975D98;
  v15 = agentConnection;
  v24 = v15;
  v16 = blockCopy;
  v25 = v16;
  v17 = [v15 remoteObjectProxyWithErrorHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_107;
  v20[3] = &unk_279976130;
  v21 = v15;
  v22 = v16;
  v18 = v16;
  v19 = v15;
  [v17 getDeviceListForLocalDevices:devicesCopy sessionID:dCopy params:paramsCopy withReply:v20];
}

void __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __77__NDOManager__getDeviceListForLocalDevices_sessionID_params_completionBlock___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getPrimaryFUPEligibleDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  upsCopy = ups;
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __84__NDOManager_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke;
  v18[3] = &unk_279975D98;
  v10 = agentConnection;
  v19 = v10;
  v11 = replyCopy;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __84__NDOManager_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_108;
  v15[3] = &unk_279976158;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [v12 getPrimaryFUPEligibleDeviceInfosUsingPolicy:policy updateFollowUps:upsCopy withReply:v15];
}

void __84__NDOManager_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __84__NDOManager_getPrimaryFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_108(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getAllFUPEligibleDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  upsCopy = ups;
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __80__NDOManager_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke;
  v18[3] = &unk_279975D98;
  v10 = agentConnection;
  v19 = v10;
  v11 = replyCopy;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __80__NDOManager_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_109;
  v15[3] = &unk_279976158;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [v12 getAllFUPEligibleDeviceInfosUsingPolicy:policy updateFollowUps:upsCopy withReply:v15];
}

void __80__NDOManager_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __80__NDOManager_getAllFUPEligibleDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_109(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getBTDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  upsCopy = ups;
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __68__NDOManager_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke;
  v18[3] = &unk_279975D98;
  v10 = agentConnection;
  v19 = v10;
  v11 = replyCopy;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __68__NDOManager_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_110;
  v15[3] = &unk_279976158;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [v12 getBTDeviceInfosUsingPolicy:policy updateFollowUps:upsCopy withReply:v15];
}

void __68__NDOManager_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __68__NDOManager_getBTDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_110(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getBTPioneerDeviceInfosUsingPolicy:(unint64_t)policy updateFollowUps:(BOOL)ups withReply:(id)reply
{
  upsCopy = ups;
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__NDOManager_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke;
  v18[3] = &unk_279975D98;
  v10 = agentConnection;
  v19 = v10;
  v11 = replyCopy;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__NDOManager_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_111;
  v15[3] = &unk_279976158;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [v12 getBTPioneerDeviceInfosUsingPolicy:policy updateFollowUps:upsCopy withReply:v15];
}

void __75__NDOManager_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __75__NDOManager_getBTPioneerDeviceInfosUsingPolicy_updateFollowUps_withReply___block_invoke_111(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)dismissFollowUpForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = completionCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke_112;
  v14[3] = &unk_279975DC0;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 dismissFollowUpForSerialNumber:numberCopy completion:v14];
}

void __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __56__NDOManager_dismissFollowUpForSerialNumber_completion___block_invoke_112(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)dismissNotificationForSerialNumber:(id)number completion:(id)completion
{
  completionCopy = completion;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = completionCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke_113;
  v14[3] = &unk_279975DC0;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 dismissNotificationForSerialNumber:numberCopy completion:v14];
}

void __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

uint64_t __60__NDOManager_dismissNotificationForSerialNumber_completion___block_invoke_113(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

+ (void)postCAEventFor:(id)for eventDict:(id)dict
{
  forCopy = for;
  dictCopy = dict;
  v5 = dictCopy;
  v6 = forCopy;
  AnalyticsSendEventLazy();
}

id __39__NDOManager_postCAEventFor_eventDict___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v2 = _NDOLogSystem(a1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_25BD52000, v2, OS_LOG_TYPE_DEFAULT, "Posting for event: %@ with value: %@", &v7, 0x16u);
  }

  v5 = *(a1 + 40);

  return v5;
}

- (void)clearUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_208;
  v14[3] = &unk_2799761A8;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 clearUserInitiatedFollowUpDismissalForSerialNumber:numberCopy completion:v14];
}

void __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __75__NDOManager_clearUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_208(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)clearAllUserInitiatedFollowUpDismissalsWithReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke_209;
  v11[3] = &unk_2799761A8;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 clearAllUserInitiatedFollowUpDismissalsWithCompletion:v11];
}

void __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __63__NDOManager_clearAllUserInitiatedFollowUpDismissalsWithReply___block_invoke_209(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)storeUserInitiatedFollowUpDismissalForSerialNumber:(id)number withReply:(id)reply
{
  v23 = *MEMORY[0x277D85DE8];
  replyCopy = reply;
  numberCopy = number;
  v8 = _NDOLogSystem(numberCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136380675;
    v22 = "[NDOManager storeUserInitiatedFollowUpDismissalForSerialNumber:withReply:]";
    _os_log_impl(&dword_25BD52000, v8, OS_LOG_TYPE_DEFAULT, "%{private}s", buf, 0xCu);
  }

  agentConnection = [(NDOManager *)self agentConnection];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke;
  v18[3] = &unk_279975D98;
  v10 = agentConnection;
  v19 = v10;
  v11 = replyCopy;
  v20 = v11;
  v12 = [v10 remoteObjectProxyWithErrorHandler:v18];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_210;
  v15[3] = &unk_2799761A8;
  v16 = v10;
  v17 = v11;
  v13 = v11;
  v14 = v10;
  [v12 storeUserInitiatedFollowUpDismissalForSerialNumber:numberCopy completion:v15];
}

void __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))();
  }
}

uint64_t __75__NDOManager_storeUserInitiatedFollowUpDismissalForSerialNumber_withReply___block_invoke_210(uint64_t a1)
{
  [*(a1 + 32) invalidate];
  v2 = *(*(a1 + 40) + 16);

  return v2();
}

- (void)getLocalDeviceListWithReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NDOManager_getLocalDeviceListWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __42__NDOManager_getLocalDeviceListWithReply___block_invoke_211;
  v11[3] = &unk_2799761D0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getLocalDeviceListWithReply:v11];
}

void __42__NDOManager_getLocalDeviceListWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __42__NDOManager_getLocalDeviceListWithReply___block_invoke_211(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getRemoteDeviceListWithReply:(id)reply
{
  replyCopy = reply;
  agentConnection = [(NDOManager *)self agentConnection];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __43__NDOManager_getRemoteDeviceListWithReply___block_invoke;
  v14[3] = &unk_279975D98;
  v6 = agentConnection;
  v15 = v6;
  v7 = replyCopy;
  v16 = v7;
  v8 = [v6 remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __43__NDOManager_getRemoteDeviceListWithReply___block_invoke_213;
  v11[3] = &unk_2799761D0;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  [v8 getRemoteDeviceListWithReply:v11];
}

void __43__NDOManager_getRemoteDeviceListWithReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __43__NDOManager_getRemoteDeviceListWithReply___block_invoke_213(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)removePromoSectionWithHashValue:(int64_t)value andAckData:(id)data
{
  dataCopy = data;
  agentConnection = [(NDOManager *)self agentConnection];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke;
  v13[3] = &unk_279975E10;
  v8 = agentConnection;
  v14 = v8;
  v9 = [v8 remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke_214;
  v11[3] = &unk_2799761F8;
  v12 = v8;
  v10 = v8;
  [v9 removePromoSectionWithHashValue:value andAckData:dataCopy withReply:v11];
}

void __57__NDOManager_removePromoSectionWithHashValue_andAckData___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
}

- (void)getLocalDeviceWarrantyForSerialNumber:(id)number withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke_215;
  v14[3] = &unk_2799761D0;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 getLocalDeviceWarrantyForSerialNumber:numberCopy withReply:v14];
}

void __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __62__NDOManager_getLocalDeviceWarrantyForSerialNumber_withReply___block_invoke_215(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getRemoteDeviceWarrantyForSerialNumber:(id)number withAdditionalHeaders:(id)headers withReply:(id)reply
{
  replyCopy = reply;
  headersCopy = headers;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke;
  v20[3] = &unk_279975D98;
  v12 = agentConnection;
  v21 = v12;
  v13 = replyCopy;
  v22 = v13;
  v14 = [v12 remoteObjectProxyWithErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke_216;
  v17[3] = &unk_2799761D0;
  v18 = v12;
  v19 = v13;
  v15 = v13;
  v16 = v12;
  [v14 getRemoteDeviceWarrantyForSerialNumber:numberCopy withAdditionalHeaders:headersCopy withReply:v17];
}

void __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __85__NDOManager_getRemoteDeviceWarrantyForSerialNumber_withAdditionalHeaders_withReply___block_invoke_216(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getCoverageInfoForSerialNumber:(id)number usingPolicy:(unint64_t)policy withReply:(id)reply
{
  replyCopy = reply;
  numberCopy = number;
  agentConnection = [(NDOManager *)self agentConnection];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke;
  v19[3] = &unk_279975D98;
  v11 = agentConnection;
  v20 = v11;
  v12 = replyCopy;
  v21 = v12;
  v13 = [v11 remoteObjectProxyWithErrorHandler:v19];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke_217;
  v16[3] = &unk_279976220;
  v17 = v11;
  v18 = v12;
  v14 = v12;
  v15 = v11;
  [v13 getCoverageInfoForSerialNumber:numberCopy usingPolicy:policy withReply:v16];
}

void __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __67__NDOManager_getCoverageInfoForSerialNumber_usingPolicy_withReply___block_invoke_217(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)getAmsPropertiesForContext:(id)context withReply:(id)reply
{
  replyCopy = reply;
  contextCopy = context;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke_218;
  v14[3] = &unk_279976248;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 getAmsPropertiesForContext:contextCopy withReply:v14];
}

void __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __51__NDOManager_getAmsPropertiesForContext_withReply___block_invoke_218(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = a2;
  [v5 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)dismissFollowUps:(id)ups completion:(id)completion
{
  completionCopy = completion;
  upsCopy = ups;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __42__NDOManager_dismissFollowUps_completion___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = completionCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __42__NDOManager_dismissFollowUps_completion___block_invoke_220;
  v14[3] = &unk_279975D98;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 dismissFollowUps:upsCopy completion:v14];
}

void __42__NDOManager_dismissFollowUps_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __42__NDOManager_dismissFollowUps_completion___block_invoke_220(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)handleInternalCommand:(id)command withReply:(id)reply
{
  replyCopy = reply;
  commandCopy = command;
  agentConnection = [(NDOManager *)self agentConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __46__NDOManager_handleInternalCommand_withReply___block_invoke;
  v17[3] = &unk_279975D98;
  v9 = agentConnection;
  v18 = v9;
  v10 = replyCopy;
  v19 = v10;
  v11 = [v9 remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __46__NDOManager_handleInternalCommand_withReply___block_invoke_221;
  v14[3] = &unk_279975D98;
  v15 = v9;
  v16 = v10;
  v12 = v10;
  v13 = v9;
  [v11 handleInternalCommand:commandCopy withReply:v14];
}

void __46__NDOManager_handleInternalCommand_withReply___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = _NDOLogSystem(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __46__NDOManager_scheduleOutreachAfter_withReply___block_invoke_cold_1();
  }

  [*(a1 + 32) invalidate];
  (*(*(a1 + 40) + 16))();
}

void __46__NDOManager_handleInternalCommand_withReply___block_invoke_221(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v3 invalidate];
  (*(*(a1 + 40) + 16))();
}

- (void)isAPSSupportedOverrideWithServerValue:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(*a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_25BD52000, a2, OS_LOG_TYPE_DEBUG, "Using overriden value %@", &v3, 0xCu);
}

void __33__NDOManager_clientConfiguration__block_invoke_cold_1()
{
  v2 = *MEMORY[0x277D85DE8];
  v1[0] = 136446466;
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(&dword_25BD52000, v0, OS_LOG_TYPE_ERROR, "%{public}s error:%@", v1, 0x16u);
}

void __129__NDOManager_getDeviceListForLocalDevices_sessionID_policy_params_salesReplyOnly_salesInfoReply_deviceInfoReply_completionBlock___block_invoke_2_cold_1(void *a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = [a1 serialNumber];
  v4[0] = 136315394;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_25BD52000, a2, OS_LOG_TYPE_DEBUG, "%s Skipping APPLEID Device %@", v4, 0x16u);
}

@end