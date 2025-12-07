@interface PLHomeKitAgent
+ (id)entryAggregateDefinitionIDSPushMessageTypes;
+ (id)entryAggregateDefinitions;
+ (id)entryEventForwardDefinitionCameraConfiguration;
+ (id)entryEventForwardDefinitionHomeConfiguration;
+ (id)entryEventForwardDefinitions;
+ (id)entryEventPointDefinitionHomeKitAdvt;
+ (id)entryEventPointDefinitionHomeKitEvents;
+ (id)entryEventPointDefinitionHomeKitRegistration;
+ (id)entryEventPointDefinitionHomeKitSummary;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (BOOL)isAllowedMessageType:(id)type;
- (PLHomeKitAgent)init;
- (int64_t)eventTypeStringToEnum:(id)enum;
- (int64_t)registrationTypeStringToEnum:(id)enum;
- (void)initOperatorDependancies;
- (void)logAggregateIDSPushMessageTypes:(id)types;
- (void)logEventForwardCameraConfiguration:(id)configuration;
- (void)logEventForwardHomeConfiguration:(id)configuration;
- (void)logEventPointHomeKitEvents:(id)events;
- (void)logEventPointHomeKitRegistration:(id)registration;
- (void)writeAggregateCounters:(id)counters;
@end

@implementation PLHomeKitAgent

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 objectForKey:@"entry"];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 objectForKeyedSubscript:@"Reason"];

      if (v5)
      {
        v6 = [v4 objectForKeyedSubscript:@"Reason"];
        if ([v6 containsObject:@"bluetooth"])
        {
          ++*(*(a1 + 32) + 176);
          v7 = [v4 entryDate];
          [v7 timeIntervalSince1970];
          *(*(a1 + 32) + 184) = v8;

          [*(a1 + 32) writeAggregateCounters:@"btwake"];
        }
      }
    }

    else
    {
      v9 = PLLogHomeKit();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        *v10 = 0;
        _os_log_debug_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEBUG, "WARNING: No entry object associated with SleepWake entry", v10, 2u);
      }
    }
  }
}

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLHomeKitAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v10[4] = *MEMORY[0x277D85DE8];
  v9[0] = @"HomeKitBTLE";
  entryEventPointDefinitionHomeKitAdvt = [self entryEventPointDefinitionHomeKitAdvt];
  v10[0] = entryEventPointDefinitionHomeKitAdvt;
  v9[1] = @"HomeKitEvents";
  entryEventPointDefinitionHomeKitEvents = [self entryEventPointDefinitionHomeKitEvents];
  v10[1] = entryEventPointDefinitionHomeKitEvents;
  v9[2] = @"HomeKitSummary";
  entryEventPointDefinitionHomeKitSummary = [self entryEventPointDefinitionHomeKitSummary];
  v10[2] = entryEventPointDefinitionHomeKitSummary;
  v9[3] = @"HomeKitRegistration";
  entryEventPointDefinitionHomeKitRegistration = [self entryEventPointDefinitionHomeKitRegistration];
  v10[3] = entryEventPointDefinitionHomeKitRegistration;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];

  return v7;
}

+ (id)entryEventPointDefinitionHomeKitEvents
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_282C1BC28;
  v16[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"eventType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v14[0] = commonTypeDict_IntegerFormat;
  v13[1] = @"kHMFPowerLogDeviceIdentiferKey";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v14[1] = commonTypeDict_StringFormat;
  v13[2] = @"accessoryCategory";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat2;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionHomeKitAdvt
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1BC28;
  v14[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"kHMFPowerLogEventType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"kHMFPowerLogDeviceIdentiferKey";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat];
  v12[1] = commonTypeDict_StringFormat;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointDefinitionHomeKitRegistration
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F4A0];
  v15[0] = *MEMORY[0x277D3F568];
  v15[1] = v2;
  v16[0] = &unk_282C1BC38;
  v16[1] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  v18[0] = v3;
  v17[1] = *MEMORY[0x277D3F540];
  v13[0] = @"Enabled";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v14[0] = commonTypeDict_BoolFormat;
  v13[1] = @"BundleID";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat_withBundleID = [mEMORY[0x277D3F198]2 commonTypeDict_StringFormat_withBundleID];
  v14[1] = commonTypeDict_StringFormat_withBundleID;
  v13[2] = @"RegistrationType";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v14[2] = commonTypeDict_IntegerFormat;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v18[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];

  return v11;
}

+ (id)entryEventPointDefinitionHomeKitSummary
{
  v34[2] = *MEMORY[0x277D85DE8];
  v33[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F550];
  v31[0] = *MEMORY[0x277D3F568];
  v31[1] = v2;
  v32[0] = &unk_282C1BC38;
  v32[1] = MEMORY[0x277CBEC28];
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  v34[0] = v28;
  v33[1] = *MEMORY[0x277D3F540];
  v29[0] = @"numBTPushes";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v30[0] = commonTypeDict_IntegerFormat;
  v29[1] = @"numConnections";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v30[1] = commonTypeDict_IntegerFormat2;
  v29[2] = @"numBTConnections";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v30[2] = commonTypeDict_IntegerFormat3;
  v29[3] = @"numIPConnections";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v30[3] = commonTypeDict_IntegerFormat4;
  v29[4] = @"numIPEvents";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v30[4] = commonTypeDict_IntegerFormat5;
  v29[5] = @"numIDSPushes";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v30[5] = commonTypeDict_IntegerFormat6;
  v29[6] = @"numCloudPushes";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat7 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v30[6] = commonTypeDict_IntegerFormat7;
  v29[7] = @"numBonjour";
  mEMORY[0x277D3F198]8 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat8 = [mEMORY[0x277D3F198]8 commonTypeDict_IntegerFormat];
  v30[7] = commonTypeDict_IntegerFormat8;
  v29[8] = @"numBTWakeAdvt";
  mEMORY[0x277D3F198]9 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat9 = [mEMORY[0x277D3F198]9 commonTypeDict_IntegerFormat];
  v30[8] = commonTypeDict_IntegerFormat9;
  v29[9] = @"numBTWakes";
  mEMORY[0x277D3F198]10 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat10 = [mEMORY[0x277D3F198]10 commonTypeDict_IntegerFormat];
  v30[9] = commonTypeDict_IntegerFormat10;
  v29[10] = @"Reason";
  mEMORY[0x277D3F198]11 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat11 = [mEMORY[0x277D3F198]11 commonTypeDict_IntegerFormat];
  v30[10] = commonTypeDict_IntegerFormat11;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:11];
  v34[1] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];

  return v12;
}

+ (id)entryEventForwardDefinitions
{
  v8[2] = *MEMORY[0x277D85DE8];
  v7[0] = @"HomeConfiguration";
  entryEventForwardDefinitionHomeConfiguration = [self entryEventForwardDefinitionHomeConfiguration];
  v7[1] = @"CameraConfiguration";
  v8[0] = entryEventForwardDefinitionHomeConfiguration;
  entryEventForwardDefinitionCameraConfiguration = [self entryEventForwardDefinitionCameraConfiguration];
  v8[1] = entryEventForwardDefinitionCameraConfiguration;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];

  return v5;
}

+ (id)entryEventForwardDefinitionHomeConfiguration
{
  v25[2] = *MEMORY[0x277D85DE8];
  v24[0] = *MEMORY[0x277D3F4E8];
  v22 = *MEMORY[0x277D3F568];
  v23 = &unk_282C1BC48;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
  v25[0] = v19;
  v24[1] = *MEMORY[0x277D3F540];
  v20[0] = @"numHomes";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v21[0] = commonTypeDict_IntegerFormat;
  v20[1] = @"numNonEmptyHomes";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v21[1] = commonTypeDict_IntegerFormat2;
  v20[2] = @"numUsers";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v21[2] = commonTypeDict_IntegerFormat3;
  v20[3] = @"numHAPAccessories";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v21[3] = commonTypeDict_IntegerFormat4;
  v20[4] = @"numEnabledResidents";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v21[4] = commonTypeDict_IntegerFormat5;
  v20[5] = @"isCurrentDevicePrimaryResident";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198]6 commonTypeDict_BoolFormat];
  v21[5] = commonTypeDict_BoolFormat;
  v20[6] = @"HomeHubVersion";
  mEMORY[0x277D3F198]7 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]7 commonTypeDict_IntegerFormat];
  v21[6] = commonTypeDict_IntegerFormat6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:7];
  v25[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];

  return v11;
}

+ (id)entryEventForwardDefinitionCameraConfiguration
{
  v23[2] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v20 = *MEMORY[0x277D3F568];
  v21 = &unk_282C1BC28;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v17;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"numCameras";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v19[0] = commonTypeDict_IntegerFormat;
  v18[1] = @"numCamerasRecordingEnabled";
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v19[1] = commonTypeDict_IntegerFormat2;
  v18[2] = @"numCamerasSmartBulletinNotificationEnabled";
  mEMORY[0x277D3F198]3 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat3 = [mEMORY[0x277D3F198]3 commonTypeDict_IntegerFormat];
  v19[2] = commonTypeDict_IntegerFormat3;
  v18[3] = @"numCamerasReachabilityNotificationEnabled";
  mEMORY[0x277D3F198]4 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat4 = [mEMORY[0x277D3F198]4 commonTypeDict_IntegerFormat];
  v19[3] = commonTypeDict_IntegerFormat4;
  v18[4] = @"numCamerasAnyMotionEventEnabled";
  mEMORY[0x277D3F198]5 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat5 = [mEMORY[0x277D3F198]5 commonTypeDict_IntegerFormat];
  v19[4] = commonTypeDict_IntegerFormat5;
  v18[5] = @"numCamerasHSVMotionEventEnabled";
  mEMORY[0x277D3F198]6 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat6 = [mEMORY[0x277D3F198]6 commonTypeDict_IntegerFormat];
  v19[5] = commonTypeDict_IntegerFormat6;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:6];
  v23[1] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];

  return v11;
}

+ (id)entryAggregateDefinitions
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = @"IDSPushMessageTypes";
  entryAggregateDefinitionIDSPushMessageTypes = [self entryAggregateDefinitionIDSPushMessageTypes];
  v6[0] = entryAggregateDefinitionIDSPushMessageTypes;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

+ (id)entryAggregateDefinitionIDSPushMessageTypes
{
  v23[4] = *MEMORY[0x277D85DE8];
  v22[0] = *MEMORY[0x277D3F4E8];
  v20 = *MEMORY[0x277D3F568];
  v21 = &unk_282C1BC38;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v23[0] = v2;
  v22[1] = *MEMORY[0x277D3F540];
  v18[0] = @"MessageType";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_StringFormat = [mEMORY[0x277D3F198] commonTypeDict_StringFormat];
  v18[1] = @"Count";
  v19[0] = commonTypeDict_StringFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v19[1] = commonTypeDict_IntegerFormat;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  v23[1] = v7;
  v22[2] = *MEMORY[0x277D3F478];
  v16 = &unk_282C1BC58;
  v14 = *MEMORY[0x277D3F470];
  v15 = &unk_282C1BC68;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
  v17 = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v17 forKeys:&v16 count:1];
  v23[2] = v9;
  v22[3] = *MEMORY[0x277D3F488];
  v13 = @"Count";
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v13 count:1];
  v23[3] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:4];

  return v11;
}

- (PLHomeKitAgent)init
{
  v3.receiver = self;
  v3.super_class = PLHomeKitAgent;
  result = [(PLAgent *)&v3 init];
  if (result)
  {
    result->_numBTPushes = 0;
    result->_numConnections = 0;
    result->_numPrevBTPushes = 0;
    result->_numPrevConnections = 0;
    result->_numBTConnections = 0;
    result->_numIPConnections = 0;
    result->_numBonjour = 0;
    result->_numIPEvents = 0;
    result->_numIDSPushes = 0;
    result->_numCloudPushes = 0;
    result->_numBTWakeAdvt = 0;
    result->_numBTWakes = 0;
    result->_lastapwake = 0.0;
    result->_enablelog = 0;
    result->_numaggregatelines = 0;
    result->_numBTlines = 0;
  }

  return result;
}

- (void)initOperatorDependancies
{
  v3 = objc_alloc(MEMORY[0x277D3F270]);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke;
  v32[3] = &unk_27825A1D8;
  v32[4] = self;
  v4 = [v3 initWithOperator:self withRegistration:&unk_282C16F00 withBlock:v32];
  homeKitEventsListener = self->_homeKitEventsListener;
  self->_homeKitEventsListener = v4;

  v6 = objc_alloc(MEMORY[0x277D3F270]);
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_308;
  v31[3] = &unk_27825A1D8;
  v31[4] = self;
  v7 = [v6 initWithOperator:self withRegistration:&unk_282C16F28 withBlock:v31];
  homeConfigurationListener = self->_homeConfigurationListener;
  self->_homeConfigurationListener = v7;

  v9 = objc_alloc(MEMORY[0x277D3F270]);
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_313;
  v30[3] = &unk_27825A1D8;
  v30[4] = self;
  v10 = [v9 initWithOperator:self withRegistration:&unk_282C16F50 withBlock:v30];
  cameraConfigurationListener = self->_cameraConfigurationListener;
  self->_cameraConfigurationListener = v10;

  v12 = objc_alloc(MEMORY[0x277D3F270]);
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_318;
  v29[3] = &unk_27825A1D8;
  v29[4] = self;
  v13 = [v12 initWithOperator:self withRegistration:&unk_282C16F78 withBlock:v29];
  homeKitRegistrationListener = self->_homeKitRegistrationListener;
  self->_homeKitRegistrationListener = v13;

  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_320;
  v28[3] = &unk_2782597E8;
  v28[4] = self;
  v15 = [MEMORY[0x277D3F1A8] significantBatteryChangeNotificationWithOperator:self withBlock:v28];
  sbcLevelChanged = self->_sbcLevelChanged;
  self->_sbcLevelChanged = v15;

  v17 = objc_alloc(MEMORY[0x277D3F1A8]);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_2;
  v27[3] = &unk_2782597E8;
  v27[4] = self;
  v18 = [v17 initWithOperator:self forEntryKey:@"PLSleepWakeAgent_EventForward_PowerState" withBlock:v27];
  [(PLHomeKitAgent *)self setDeviceWake:v18];
  [(PLOperator *)self defaultDoubleForKey:@"RunTimeAggregatorTimerCadence"];
  v20 = v19;
  v21 = objc_alloc(MEMORY[0x277D3F250]);
  v22 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:v20];
  workQueue = [(PLOperator *)self workQueue];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_339;
  v26[3] = &unk_278259C40;
  v26[4] = self;
  v24 = [v21 initWithFireDate:v22 withInterval:1 withTolerance:0 repeats:workQueue withUserInfo:v26 withQueue:v20 withBlock:0.0];
  runTimeAggregatorTimer = self->_runTimeAggregatorTimer;
  self->_runTimeAggregatorTimer = v24;
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HomeKitEvent callback for PLHomeKitAgent_EventPoint_HomeKitEvents: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointHomeKitEvents:v6];
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HomeConfiguration payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardHomeConfiguration:v6];
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_313(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "CameraConfiguration payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventForwardCameraConfiguration:v6];
}

void __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = a5;
  v7 = PLLogHomeKit();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v8 = 138412290;
    v9 = v6;
    _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "HomeKitRegistration payload: %@", &v8, 0xCu);
  }

  [*(a1 + 32) logEventPointHomeKitRegistration:v6];
}

uint64_t __42__PLHomeKitAgent_initOperatorDependancies__block_invoke_339(uint64_t result)
{
  *(*(result + 32) + 216) = 0;
  *(*(result + 32) + 224) = 0;
  return result;
}

- (int64_t)eventTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"HomeKit BLE Advertisement"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"HomeKit Connection"])
  {
    v4 = 2;
  }

  else if ([enumCopy isEqualToString:@"HomeKit IDS Push"])
  {
    v4 = 3;
  }

  else if ([enumCopy isEqualToString:@"HomeKit Cloud Push"])
  {
    v4 = 4;
  }

  else if ([enumCopy isEqualToString:@"HomeKit IP Event"])
  {
    v4 = 5;
  }

  else if ([enumCopy isEqualToString:@"HomeKit Loxy Event"])
  {
    v4 = 6;
  }

  else if ([enumCopy isEqualToString:@"HomeKit Bonjour"])
  {
    v4 = 7;
  }

  else if ([enumCopy isEqualToString:@"HomeKit Disconnection"])
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)registrationTypeStringToEnum:(id)enum
{
  enumCopy = enum;
  if ([enumCopy isEqualToString:@"HomeKit Remote Reachability Registration Event"])
  {
    v4 = 1;
  }

  else if ([enumCopy isEqualToString:@"HomeKit Characteristic Registration Event"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isAllowedMessageType:(id)type
{
  v3 = MEMORY[0x277CBEB98];
  typeCopy = type;
  v5 = [v3 setWithObjects:{@"HMDFetchHomeDataMessage", @"RemoteEventRouterRequestMessage", @"kModifyCharacterisiticNotificationsRequestKey", @"HMDHouseholdMetricsHomeDataLogEventRequest", @"kEnableAccessoryReachabilityNotificationRequestKey", @"kDisableAccessoryReachabilityNotificationRequestKey", @"kPingInternalRequestKey", @"RemoteEventRouterUpdateMessageName", @"primaryResidentDiscovery", @"kMultipleCharacteristicReadRequestKey", @"kCharacterisiticsChangedInternalNotificationKey", @"kRemoteReachabilityChangedNotificationKey", @"kDeviceMeshUpdateKey", @"kMultipleCharacteristicWriteRequestKey", @"kDeviceMeshUpdateRequestKey", @"mesh.requestCapabilities", @"kHomeLocationUpdatedNotificationKey", @"kElectDeviceForIDSSessionKey", @"kEventTriggerUserPermissionRemoveDialogKey", @"mesh.currentPrimaryUpdate", @"kTakeSnapshotRemoteRequestKey", @"kCurrentHomeChangedNotificationKey", @"mesh.meshInformationRequest", @"HMDRemotePersonDataMessengerPerformCloudPullMessage", @"kTakeSnapshotRemoteReceivedKey", @"HMDMAR.RouteMediaAction", @"HMDUCM.rRepr", @"kStartRecordingSessionRequestKey", @"HMDRemoteCameraReachabilityDidChangeMessage", @"kNegotitateRemoteStreamRequestKey", @"kStopRemoteStreamRequestKey", @"HMAccessoryFetchManagedConfigurationProfilesMessage", @"kStreamStoppedRemoteNotificationKey", @"HMDCloudShareInviteMessage", @"HMDCloudShareRequestInviteMessage", @"kStartRemoteStreamRequestKey", @"HMDMediaProfileSetPowerRequestKey", @"HMDCameraAnalysisStatePublisherStateUpdateMessage", @"kSetAppDataRequestKey", @"kTakeSnapshotSendFailedNotificationKey", @"kRenameAccessoryRequestKey", @"kUpdateRoomForAccessoryRequestKey", @"kMediaPropertiesReadRequestKey", @"kPredicateEvaluatePredicateRequestKey", @"HMDUCM.rsr", @"kReconfigureRemoteStreamRequestKey", @"kRenameServiceRequestKey", @"HMAccessorySettingsUpdateRequestMessage", @"kRemoveAccessoryRequestKey", @"kHomeDataFragmentedSyncRequestKey", @"kSecureClientIDSMessageRequestKey", @"kRemoveTriggerRequestKey", @"HMDHomeQueryResidentReachabilityForAccessoriesMessageKey", @"kRequestForCompanionKeysSyncInternalRequestKey", @"HMDHomeCHIPSendReportMessage", @"HMAccessoryFetchCHIPPairingsMessage", @"kAddRoomRequestKey", @"kSetAssociatedServiceTypeRequestKey", @"HMAccessorySettingsFetchRequestMessage", @"HMDHomeResolveLockNotificationContextIdentifierMessage", @"HMDHomeConfigureAccessoriesWithDeviceCredentialKeyMessage"}];
  v6 = [v5 containsObject:typeCopy];

  return v6;
}

- (void)logEventPointHomeKitEvents:(id)events
{
  v32 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  v5 = [eventsCopy objectForKeyedSubscript:@"kHMFPowerLogEventType"];
  v6 = [(PLHomeKitAgent *)self eventTypeStringToEnum:v5];
  if (v6 == 2)
  {
    v7 = [eventsCopy objectForKeyedSubscript:@"kHMFPowerLogLinkTypeKey"];
    if ([v7 isEqualToString:@"HomeKitLinkTypeBluetoothLE"])
    {
      v6 = 8;
    }

    else if ([v7 isEqualToString:@"HomeKitLinkTypeIP"])
    {
      v6 = 9;
    }

    else
    {
      v6 = 2;
    }
  }

  v8 = PLLogHomeKit();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v31 = v5;
    _os_log_debug_impl(&dword_21A4C6000, v8, OS_LOG_TYPE_DEBUG, "Logging for type HomeKit %@\n", buf, 0xCu);
  }

  if (!self->_enablelog)
  {
    self->_enablelog = 1;
  }

  v9 = *MEMORY[0x277D3F5E8];
  v10 = [(PLOperator *)PLHomeKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HomeKitEvents"];
  v11 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v10];
  v12 = [eventsCopy objectForKeyedSubscript:@"accessoryCategory"];
  [v11 setObject:v12 forKeyedSubscript:@"accessoryCategory"];

  v13 = [eventsCopy objectForKeyedSubscript:@"kHMFPowerLogDeviceIdentiferKey"];
  [v11 setObject:v13 forKeyedSubscript:@"kHMFPowerLogDeviceIdentiferKey"];

  v14 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [v11 setObject:v14 forKeyedSubscript:@"eventType"];

  if (v6 == 3)
  {
    v15 = [eventsCopy objectForKeyedSubscript:@"kHMFPowerLogMessageTypeKey"];
    if (v15)
    {
      v16 = v15;
      if (![(PLHomeKitAgent *)self isAllowedMessageType:v15])
      {
        v17 = PLLogHomeKit();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v31 = v16;
          _os_log_debug_impl(&dword_21A4C6000, v17, OS_LOG_TYPE_DEBUG, "%@ is not an allowed Message Type, changing to 'Unknown'", buf, 0xCu);
        }

        v16 = @"Unknown";
      }

      v28[0] = @"MessageType";
      v28[1] = @"Count";
      v29[0] = v16;
      v29[1] = &unk_282C0D0B0;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v19 = PLLogHomeKit();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v31 = v18;
        _os_log_debug_impl(&dword_21A4C6000, v19, OS_LOG_TYPE_DEBUG, "Got callback for IDSPushMessageTypes: %@", buf, 0xCu);
      }

      [(PLHomeKitAgent *)self logAggregateIDSPushMessageTypes:v18];
    }
  }

  [(PLOperator *)self logEntry:v11];
  if ([(__CFString *)v5 isEqualToString:@"HomeKit BLE Advertisement"])
  {
    v20 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v9 andName:@"HomeKitBTLE"];
    v21 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v20 withRawData:eventsCopy];
    entryDate = [v21 entryDate];
    [entryDate timeIntervalSince1970];
    v24 = v23;

    ++self->_numBTPushes;
    if (self->_lastapwake + 2.0 >= v24)
    {
      ++self->_numBTWakeAdvt;
    }

    v25 = self->_numBTlines + 1;
    self->_numBTlines = v25;
    if (v25 <= 0xA)
    {
      [(PLOperator *)self logEntry:v21];
    }

    goto LABEL_27;
  }

  if ([(__CFString *)v5 isEqualToString:@"HomeKit IP Event"])
  {
    v26 = 144;
LABEL_30:
    ++*(&self->super.super.super.isa + v26);
    goto LABEL_31;
  }

  if (![(__CFString *)v5 isEqualToString:@"HomeKit Connection"])
  {
    if ([(__CFString *)v5 isEqualToString:@"HomeKit Cloud Push"])
    {
      v26 = 160;
    }

    else if ([(__CFString *)v5 isEqualToString:@"HomeKit IDS Push"])
    {
      v26 = 152;
    }

    else
    {
      if (![(__CFString *)v5 isEqualToString:@"HomeKit Bonjour"])
      {
        goto LABEL_31;
      }

      v26 = 136;
    }

    goto LABEL_30;
  }

  v27 = &OBJC_IVAR___PLHomeKitAgent__numBTConnections;
  ++self->_numConnections;
  v20 = [eventsCopy objectForKeyedSubscript:@"kHMFPowerLogLinkTypeKey"];
  if ([v20 isEqualToString:@"HomeKitLinkTypeBluetoothLE"])
  {
    goto LABEL_36;
  }

  if ([v20 isEqualToString:@"HomeKitLinkTypeIP"])
  {
    v27 = &OBJC_IVAR___PLHomeKitAgent__numIPConnections;
LABEL_36:
    ++*(&self->super.super.super.isa + *v27);
  }

LABEL_27:

LABEL_31:
}

- (void)logEventPointHomeKitRegistration:(id)registration
{
  registrationCopy = registration;
  v5 = [registrationCopy objectForKeyedSubscript:@"kHMFPowerLogEventType"];
  v6 = [(PLHomeKitAgent *)self registrationTypeStringToEnum:v5];

  v11 = [(PLOperator *)PLHomeKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HomeKitRegistration"];
  v7 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v11 withRawData:registrationCopy];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
  [v7 setObject:v8 forKeyedSubscript:@"RegistrationType"];

  v9 = [registrationCopy objectForKeyedSubscript:@"kHMFPowerLogClientIdentifierKey"];
  [v7 setObject:v9 forKeyedSubscript:@"BundleID"];

  v10 = [registrationCopy objectForKeyedSubscript:@"kHMFPowerLogEnabledKey"];

  [v7 setObject:v10 forKeyedSubscript:@"Enabled"];
  [(PLOperator *)self logEntry:v7];
}

- (void)writeAggregateCounters:(id)counters
{
  v27[11] = *MEMORY[0x277D85DE8];
  countersCopy = counters;
  v5 = [(PLOperator *)PLHomeKitAgent entryKeyForType:*MEMORY[0x277D3F5E8] andName:@"HomeKitSummary"];
  if (self->_enablelog)
  {
    v18 = [countersCopy isEqualToString:@"btwake"];
    v24 = v5;
    v25 = countersCopy;
    if (v18)
    {
      v19 = 0;
      v6 = 1;
    }

    else
    {
      v19 = [countersCopy isEqualToString:@"sbc"];
      if (v19)
      {
        v6 = 2;
      }

      else
      {
        v6 = 0;
      }
    }

    v26[0] = @"numBTPushes";
    v23 = [MEMORY[0x277CCABB0] numberWithInteger:{self->_numBTPushes, 88}];
    v27[0] = v23;
    v26[1] = @"numConnections";
    v22 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numConnections];
    v27[1] = v22;
    v26[2] = @"numBTConnections";
    v21 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBTConnections];
    v27[2] = v21;
    v26[3] = @"numIPConnections";
    v20 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numIPConnections];
    v27[3] = v20;
    v26[4] = @"numIPEvents";
    v7 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numIPEvents];
    v27[4] = v7;
    v26[5] = @"numIDSPushes";
    v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numIDSPushes];
    v27[5] = v8;
    v26[6] = @"numCloudPushes";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numCloudPushes];
    v27[6] = v9;
    v26[7] = @"numBonjour";
    v10 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBonjour];
    v27[7] = v10;
    v26[8] = @"numBTWakeAdvt";
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBTWakeAdvt];
    v27[8] = v11;
    v26[9] = @"numBTWakes";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:self->_numBTWakes];
    v27[9] = v12;
    v26[10] = @"Reason";
    v13 = [MEMORY[0x277CCABB0] numberWithInteger:v6];
    v27[10] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:11];

    v5 = v24;
    v15 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v24 withRawData:v14];
    v16 = self->_numaggregatelines + 1;
    self->_numaggregatelines = v16;
    if (v16 <= 0x1D)
    {
      if (v19)
      {
        [(PLOperator *)self logEntry:v15];
      }

      else if (v18 && *(&self->super.super.super.isa + v17) > self->_numPrevBTPushes)
      {
        [(PLOperator *)self logEntry:v15];
        self->_numPrevBTPushes = *(&self->super.super.super.isa + v17);
      }
    }

    countersCopy = v25;
  }
}

- (void)logEventForwardHomeConfiguration:(id)configuration
{
  v4 = *MEMORY[0x277D3F5D0];
  configurationCopy = configuration;
  v9 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v4 andName:@"HomeConfiguration"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v9 withRawData:configurationCopy];
  v7 = [configurationCopy objectForKeyedSubscript:@"isCurrentDeviceHH2Enabled"];

  LODWORD(configurationCopy) = [v7 isEqual:MEMORY[0x277CBEC38]];
  if (configurationCopy)
  {
    v8 = &unk_282C0D0C8;
  }

  else
  {
    v8 = &unk_282C0D0B0;
  }

  [v6 setObject:v8 forKeyedSubscript:@"HomeHubVersion"];
  [(PLOperator *)self logEntry:v6];
}

- (void)logEventForwardCameraConfiguration:(id)configuration
{
  v4 = *MEMORY[0x277D3F5D0];
  configurationCopy = configuration;
  v7 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v4 andName:@"CameraConfiguration"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:configurationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logAggregateIDSPushMessageTypes:(id)types
{
  v4 = *MEMORY[0x277D3F5B8];
  typesCopy = types;
  v7 = [(PLOperator *)PLHomeKitAgent entryKeyForType:v4 andName:@"IDSPushMessageTypes"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:typesCopy];

  [(PLOperator *)self logEntry:v6];
}

@end