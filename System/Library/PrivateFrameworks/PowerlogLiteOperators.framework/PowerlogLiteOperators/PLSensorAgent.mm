@interface PLSensorAgent
+ (BOOL)shouldLogRearLux;
+ (id)entryEventPointDefinitionALS;
+ (id)entryEventPointDefinitionActivity;
+ (id)entryEventPointDefinitionOrientation;
+ (id)entryEventPointDefinitionPocketState;
+ (id)entryEventPointDefinitionProximity;
+ (id)entryEventPointDefinitions;
+ (void)load;
- (PLSensorAgent)init;
- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value;
- (void)handleMotionActivityManagerNotification:(id)notification;
- (void)handleOrientationManagerNotification:(id)notification;
- (void)handlePocketStateManagerNotification:(int64_t)notification;
- (void)initTaskOperatorDependancies;
- (void)logEventPointALS:(id)s;
- (void)logEventPointActivity:(id)activity;
- (void)logEventPointDeviceOrientation:(id)orientation;
- (void)logEventPointPocketState:(id)state;
- (void)logEventPointProximity:(id)proximity;
- (void)pocketStateManager:(id)manager didUpdateState:(int64_t)state;
@end

@implementation PLSensorAgent

+ (void)load
{
  v2.receiver = self;
  v2.super_class = &OBJC_METACLASS___PLSensorAgent;
  objc_msgSendSuper2(&v2, sel_load);
}

+ (id)entryEventPointDefinitions
{
  v10[5] = *MEMORY[0x277D85DE8];
  v9[0] = @"MotionActivity";
  v2 = +[PLSensorAgent entryEventPointDefinitionActivity];
  v10[0] = v2;
  v9[1] = @"DeviceOrientation";
  v3 = +[PLSensorAgent entryEventPointDefinitionOrientation];
  v10[1] = v3;
  v9[2] = @"PocketState";
  v4 = +[PLSensorAgent entryEventPointDefinitionPocketState];
  v10[2] = v4;
  v9[3] = @"Proximity";
  v5 = +[PLSensorAgent entryEventPointDefinitionProximity];
  v10[3] = v5;
  v9[4] = @"ALS";
  v6 = +[PLSensorAgent entryEventPointDefinitionALS];
  v10[4] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:5];

  return v7;
}

+ (id)entryEventPointDefinitionActivity
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1CAF8;
  v14[1] = MEMORY[0x277CBEC38];
  v13[2] = *MEMORY[0x277D3F580];
  v14[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Stationary";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"Confidence";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

+ (id)entryEventPointDefinitionOrientation
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1CAF8;
  v12[1] = MEMORY[0x277CBEC38];
  v11[2] = *MEMORY[0x277D3F580];
  v12[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"Orientation";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventPointDefinitionPocketState
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1CAF8;
  v12[1] = MEMORY[0x277CBEC38];
  v11[2] = *MEMORY[0x277D3F580];
  v12[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v10 = commonTypeDict_IntegerFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventPointDefinitionProximity
{
  v14[2] = *MEMORY[0x277D85DE8];
  v13[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v11[0] = *MEMORY[0x277D3F568];
  v11[1] = v2;
  v12[0] = &unk_282C1CAF8;
  v12[1] = MEMORY[0x277CBEC38];
  v11[2] = *MEMORY[0x277D3F580];
  v12[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v14[0] = v3;
  v13[1] = *MEMORY[0x277D3F540];
  v9 = @"State";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_BoolFormat = [mEMORY[0x277D3F198] commonTypeDict_BoolFormat];
  v10 = commonTypeDict_BoolFormat;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
  v14[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];

  return v7;
}

+ (id)entryEventPointDefinitionALS
{
  v16[2] = *MEMORY[0x277D85DE8];
  v15[0] = *MEMORY[0x277D3F4E8];
  v2 = *MEMORY[0x277D3F508];
  v13[0] = *MEMORY[0x277D3F568];
  v13[1] = v2;
  v14[0] = &unk_282C1CB08;
  v14[1] = MEMORY[0x277CBEC38];
  v13[2] = *MEMORY[0x277D3F580];
  v14[2] = MEMORY[0x277CBEC38];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:3];
  v16[0] = v3;
  v15[1] = *MEMORY[0x277D3F540];
  v11[0] = @"Lux";
  mEMORY[0x277D3F198] = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat = [mEMORY[0x277D3F198] commonTypeDict_IntegerFormat];
  v11[1] = @"RearLux";
  v12[0] = commonTypeDict_IntegerFormat;
  mEMORY[0x277D3F198]2 = [MEMORY[0x277D3F198] sharedInstance];
  commonTypeDict_IntegerFormat2 = [mEMORY[0x277D3F198]2 commonTypeDict_IntegerFormat];
  v12[1] = commonTypeDict_IntegerFormat2;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  v16[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];

  return v9;
}

- (PLSensorAgent)init
{
  v7.receiver = self;
  v7.super_class = PLSensorAgent;
  v2 = [(PLAgent *)&v7 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCABD8]);
    operationQueue = v2->_operationQueue;
    v2->_operationQueue = v3;

    workQueue = [(PLOperator *)v2 workQueue];
    [(NSOperationQueue *)v2->_operationQueue setUnderlyingQueue:workQueue];

    v2->_firstProximityEvent = 0;
  }

  return v2;
}

- (void)initTaskOperatorDependancies
{
  mEMORY[0x277D3F220] = [MEMORY[0x277D3F220] sharedInstance];
  stateTracker = self->_stateTracker;
  self->_stateTracker = mEMORY[0x277D3F220];

  v5 = objc_alloc_init(MEMORY[0x277CC1D28]);
  pocketStateManager = self->_pocketStateManager;
  self->_pocketStateManager = v5;

  v7 = objc_alloc_init(MEMORY[0x277CC1CD0]);
  motionActivityManager = self->_motionActivityManager;
  self->_motionActivityManager = v7;

  v9 = objc_alloc_init(MEMORY[0x277CC1C78]);
  deviceOrientationManager = self->_deviceOrientationManager;
  self->_deviceOrientationManager = v9;

  self->_proximityHIDClient = IOHIDEventSystemClientCreate();
  v11 = objc_alloc_init(MEMORY[0x277CFD390]);
  brightnessSystemClient = self->_brightnessSystemClient;
  self->_brightnessSystemClient = v11;

  v13 = self->_motionActivityManager;
  operationQueue = [(PLSensorAgent *)self operationQueue];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke;
  v29[3] = &unk_278261A98;
  v29[4] = self;
  [(CMMotionActivityManager *)v13 startActivityUpdatesToQueue:operationQueue withHandler:v29];

  v15 = self->_deviceOrientationManager;
  operationQueue2 = [(PLSensorAgent *)self operationQueue];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_2;
  v28[3] = &unk_278261AC0;
  v28[4] = self;
  [(CMDeviceOrientationManager *)v15 startDeviceOrientationUpdatesToQueue:operationQueue2 withHandler:v28];

  [(CMPocketStateManager *)self->_pocketStateManager setDelegate:self];
  v17 = self->_pocketStateManager;
  workQueue = [(PLOperator *)self workQueue];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_3;
  v27[3] = &unk_278261AE8;
  v27[4] = self;
  [(CMPocketStateManager *)v17 queryStateOntoQueue:workQueue andMonitorFor:v27 withTimeout:0.0 andHandler:1.0];

  v19 = self->_brightnessSystemClient;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_4;
  v26[3] = &unk_27825D620;
  v26[4] = self;
  [(BrightnessSystemClient *)v19 registerNotificationBlock:v26 forProperties:&unk_282C168A8];
  IOHIDEventSystemClientSetMatching();
  workQueue2 = [(PLOperator *)self workQueue];
  IOHIDEventSystemClientScheduleWithDispatchQueue();

  IOHIDEventSystemClientRegisterEventCallback();
  if ([MEMORY[0x277D3F180] BOOLForKey:@"EnableALSProximity" ifNotSet:1])
  {
    v21 = objc_alloc(MEMORY[0x277D3F250]);
    date = [MEMORY[0x277CBEAA8] date];
    workQueue3 = [(PLOperator *)self workQueue];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_87;
    v25[3] = &unk_278259C40;
    v25[4] = self;
    v24 = [v21 initWithFireDate:date withInterval:1 withTolerance:0 repeats:workQueue3 withUserInfo:v25 withQueue:60.0 withBlock:0.0];
    [(PLSensorAgent *)self setProximityTimer:v24];
  }
}

void __45__PLSensorAgent_initTaskOperatorDependancies__block_invoke_87(uint64_t a1)
{
  v2 = [*(a1 + 32) stateTracker];
  v3 = [v2 getCurrState:4];

  if (([v3 BOOLValue] & 1) == 0)
  {
    [*(a1 + 32) setFirstProximityEvent:1];
    BKSHIDServicesRequestProximityStatusEvent();
    v4 = PLLogSensor();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_21A4C6000, v4, OS_LOG_TYPE_DEBUG, "Requested Proximity Status from BackBoardServices", buf, 2u);
    }

    v5 = [*(a1 + 32) brightnessSystemClient];
    [v5 setProperty:MEMORY[0x277CBEC38] forKey:@"ActivateALS"];

    v6 = PLLogSensor();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *v7 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, "Activated CoreBrightness ALS", v7, 2u);
    }
  }
}

- (void)logEventPointALS:(id)s
{
  v4 = *MEMORY[0x277D3F5E8];
  sCopy = s;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"ALS"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:sCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointDeviceOrientation:(id)orientation
{
  v4 = *MEMORY[0x277D3F5E8];
  orientationCopy = orientation;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"DeviceOrientation"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:orientationCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointActivity:(id)activity
{
  v4 = *MEMORY[0x277D3F5E8];
  activityCopy = activity;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"MotionActivity"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:activityCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointPocketState:(id)state
{
  v4 = *MEMORY[0x277D3F5E8];
  stateCopy = state;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"PocketState"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:stateCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)logEventPointProximity:(id)proximity
{
  v4 = *MEMORY[0x277D3F5E8];
  proximityCopy = proximity;
  v7 = [(PLOperator *)PLSensorAgent entryKeyForType:v4 andName:@"Proximity"];
  v6 = [objc_alloc(MEMORY[0x277D3F190]) initWithEntryKey:v7 withRawData:proximityCopy];

  [(PLOperator *)self logEntry:v6];
}

- (void)handleBrightnessClientNotification:(id)notification withValue:(id)value
{
  v23 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  v7 = [notification isEqual:@"Lux"];
  if (valueCopy && v7)
  {
    stateTracker = [(PLSensorAgent *)self stateTracker];
    v9 = [stateTracker getCurrState:4];

    if (([v9 BOOLValue] & 1) == 0)
    {
      brightnessSystemClient = [(PLSensorAgent *)self brightnessSystemClient];
      [brightnessSystemClient setProperty:MEMORY[0x277CBEC28] forKey:@"ActivateALS"];

      if (+[PLSensorAgent shouldLogRearLux])
      {
        v18 = 0;
        *&buf = &v21;
        *(&buf + 1) = &v20;
        v17 = &v22;
        v19 = 0x4E0000001;
        workQueue = [(PLOperator *)self workQueue];
        ApplePhotonDetectorServicesGetLux();
      }

      v14 = @"Lux";
      v15 = valueCopy;
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
      [(PLSensorAgent *)self logEventPointALS:v12];

      v13 = PLLogSensor();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        LODWORD(buf) = 138412290;
        *(&buf + 4) = valueCopy;
        _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "Received ALS event (display-off) Front: %@", &buf, 0xCu);
      }
    }
  }
}

+ (BOOL)shouldLogRearLux
{
  isiPhone = [MEMORY[0x277D3F208] isiPhone];
  if (isiPhone)
  {
    LOBYTE(isiPhone) = [MEMORY[0x277D3F208] kPLDeviceClassIsOneOf:{102040, 102041, 0}];
  }

  return isiPhone;
}

- (void)handleOrientationManagerNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = PLLogSensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 67109120;
      orientation = [notificationCopy orientation];
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Device orientation event: %d", buf, 8u);
    }

    if ([notificationCopy orientation] == 5)
    {
      v6 = 0;
    }

    else if ([notificationCopy orientation] == 6)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{v6, @"Orientation"}];
    v10 = v7;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v10 forKeys:&v9 count:1];
    [(PLSensorAgent *)self logEventPointDeviceOrientation:v8];
  }
}

- (void)handleMotionActivityManagerNotification:(id)notification
{
  v13 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  if (notificationCopy)
  {
    v5 = PLLogSensor();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v12 = notificationCopy;
      _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Device activity event: %@", buf, 0xCu);
    }

    if ([notificationCopy confidence] >= 1)
    {
      v6 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(notificationCopy, "stationary", @"Stationary"}];
      v9[1] = @"Confidence";
      v10[0] = v6;
      v7 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(notificationCopy, "confidence")}];
      v10[1] = v7;
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
      [(PLSensorAgent *)self logEventPointActivity:v8];
    }
  }
}

- (void)handlePocketStateManagerNotification:(int64_t)notification
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = PLLogSensor();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    notificationCopy = notification;
    _os_log_debug_impl(&dword_21A4C6000, v5, OS_LOG_TYPE_DEBUG, "Pocket state event: %d", buf, 8u);
  }

  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{notification, @"State"}];
  v9 = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  [(PLSensorAgent *)self logEventPointPocketState:v7];
}

- (void)pocketStateManager:(id)manager didUpdateState:(int64_t)state
{
  if (manager)
  {
    [(PLSensorAgent *)self handlePocketStateManagerNotification:state];
  }
}

@end