@interface ASDTSystemStatus
+ (id)systemStatus;
- (ASDTSystemStatus)init;
- (BOOL)enabled;
- (void)publishMicrophoneEnabled:(BOOL)enabled;
- (void)recordingIsEnabled:(BOOL)enabled forDeviceUID:(id)d;
@end

@implementation ASDTSystemStatus

+ (id)systemStatus
{
  if (+[ASDTSystemStatus systemStatus]::onceToken != -1)
  {
    +[ASDTSystemStatus systemStatus];
  }

  v3 = gSystemStatus;

  return v3;
}

uint64_t __32__ASDTSystemStatus_systemStatus__block_invoke()
{
  gSystemStatus = objc_alloc_init(ASDTSystemStatus);

  return MEMORY[0x2821F96F8]();
}

- (ASDTSystemStatus)init
{
  v31.receiver = self;
  v31.super_class = ASDTSystemStatus;
  v2 = [(ASDTSystemStatus *)&v31 init];
  if (!v2)
  {
    goto LABEL_17;
  }

  v3 = [ASDTCondition conditionWithName:@"com.apple.AudioServerDriverTransports.SystemStatus"];
  [(ASDTSystemStatus *)v2 setMutex:v3];

  v4 = [MEMORY[0x277CBEB58] setWithCapacity:2];
  [(ASDTSystemStatus *)v2 setDeviceUIDs:v4];

  mutex = [(ASDTSystemStatus *)v2 mutex];
  v7 = mutex;
  if (!mutex || ([(ASDTSystemStatus *)v2 deviceUIDs], v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
  {
    v12 = ASDTBaseLogType(mutex, v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }

    goto LABEL_9;
  }

  *&v9 = -1;
  *(&v9 + 1) = -1;
  *task_info_out = v9;
  v30 = v9;
  task_info_outCnt = 8;
  v10 = task_info(*MEMORY[0x277D85F48], 0xFu, task_info_out, &task_info_outCnt);
  if (v10)
  {
    v12 = ASDTBaseLogType(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }

    goto LABEL_9;
  }

  v14 = objc_opt_class();
  if (!v14 || (v14 = objc_opt_class()) == 0 || (v14 = objc_opt_class()) == 0)
  {
    v12 = ASDTBaseLogType(v14, v15);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      LOWORD(v27[0]) = 0;
      _os_log_impl(&dword_241659000, v12, OS_LOG_TYPE_INFO, "SystemStatus is not supported on this system.", v27, 2u);
    }

    goto LABEL_9;
  }

  v16 = objc_alloc_init(MEMORY[0x277D6B9E8]);
  [(ASDTSystemStatus *)v2 setPublisher:v16];

  publisher = [(ASDTSystemStatus *)v2 publisher];

  if (!publisher)
  {
    v12 = ASDTBaseLogType(v18, v19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }

    goto LABEL_9;
  }

  v27[0] = *task_info_out;
  v27[1] = v30;
  v12 = [MEMORY[0x277D6B8E0] attributionWithAuditToken:v27];
  if (v12)
  {
    v21 = [objc_alloc(MEMORY[0x277D6B9D8]) initWithActivityAttribution:v12];
    [(ASDTSystemStatus *)v2 setAttribution:v21];

    attribution = [(ASDTSystemStatus *)v2 attribution];

    if (attribution)
    {

LABEL_17:
      v13 = v2;
      goto LABEL_18;
    }

    v26 = ASDTBaseLogType(v23, v24);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }
  }

  else
  {
    v26 = ASDTBaseLogType(0, v20);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      [ASDTSystemStatus init];
    }
  }

LABEL_9:
  v13 = 0;
LABEL_18:

  return v13;
}

- (BOOL)enabled
{
  mutex = [(ASDTSystemStatus *)self mutex];
  [mutex lock];

  deviceUIDs = [(ASDTSystemStatus *)self deviceUIDs];
  v5 = [deviceUIDs count];

  mutex2 = [(ASDTSystemStatus *)self mutex];
  [mutex2 unlock];

  return v5 != 0;
}

- (void)recordingIsEnabled:(BOOL)enabled forDeviceUID:(id)d
{
  dCopy = d;
  if (!dCopy)
  {
    goto LABEL_10;
  }

  mutex = [(ASDTSystemStatus *)self mutex];
  [mutex lock];

  deviceUIDs = [(ASDTSystemStatus *)self deviceUIDs];
  v8 = [deviceUIDs containsObject:dCopy];

  if (!(v8 & 1 | !enabled))
  {
    deviceUIDs2 = [(ASDTSystemStatus *)self deviceUIDs];
    [deviceUIDs2 addObject:dCopy];
    goto LABEL_7;
  }

  v9 = 0;
  if (!enabled && ((v8 ^ 1) & 1) == 0)
  {
    deviceUIDs2 = [(ASDTSystemStatus *)self deviceUIDs];
    [deviceUIDs2 removeObject:dCopy];
LABEL_7:

    v9 = 1;
  }

  deviceUIDs3 = [(ASDTSystemStatus *)self deviceUIDs];
  v12 = [deviceUIDs3 count];

  mutex2 = [(ASDTSystemStatus *)self mutex];
  [mutex2 unlock];

  if (v9)
  {
    [(ASDTSystemStatus *)self publishMicrophoneEnabled:v12 != 0];
  }

LABEL_10:
}

- (void)publishMicrophoneEnabled:(BOOL)enabled
{
  publisher = [(ASDTSystemStatus *)self publisher];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__ASDTSystemStatus_publishMicrophoneEnabled___block_invoke;
  v6[3] = &unk_278CE6438;
  enabledCopy = enabled;
  v6[4] = self;
  [publisher updateVolatileDataWithBlock:v6];
}

void __45__ASDTSystemStatus_publishMicrophoneEnabled___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    v4 = [v3 attribution];
    [v5 addMicrophoneAttribution:v4];
  }

  else
  {
    v4 = [v3 attribution];
    [v5 removeMicrophoneAttribution:v4];
  }
}

@end