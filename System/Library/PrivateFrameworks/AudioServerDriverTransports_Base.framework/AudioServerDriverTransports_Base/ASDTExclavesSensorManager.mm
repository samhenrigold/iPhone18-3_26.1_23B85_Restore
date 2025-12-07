@interface ASDTExclavesSensorManager
+ (id)forSensorName:(id)name;
- (ASDTExclavesSensorManager)initWithSensorName:(id)name;
- (void)ioThreadStartStop:(BOOL)stop withStatusTracker:(void *)tracker;
@end

@implementation ASDTExclavesSensorManager

+ (id)forSensorName:(id)name
{
  nameCopy = name;
  v4 = nameCopy;
  if (+[ASDTExclavesSensorManager forSensorName:]::onceToken == -1)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }

LABEL_8:
    v5 = 0;
    goto LABEL_9;
  }

  +[ASDTExclavesSensorManager forSensorName:];
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = LABEL_3:;
  if (!v5)
  {
    v5 = [[ASDTExclavesSensorManager alloc] initWithSensorName:v4];
    if (v5)
    {
    }
  }

LABEL_9:

  return v5;
}

uint64_t __43__ASDTExclavesSensorManager_forSensorName___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CCAAF8]);

  [MEMORY[0x277CBEB38] dictionaryWithCapacity:1];

  return MEMORY[0x2821F96F8]();
}

- (ASDTExclavesSensorManager)initWithSensorName:(id)name
{
  nameCopy = name;
  v7.receiver = self;
  v7.super_class = ASDTExclavesSensorManager;
  if ([(ASDTExclavesSensorManager *)&v7 init])
  {
    [nameCopy UTF8String];
    ASDT::Exclaves::Sensor::Create();
  }

  v5 = 0;

  return v5;
}

- (void)ioThreadStartStop:(BOOL)stop withStatusTracker:(void *)tracker
{
  if (tracker)
  {
    stopCopy = stop;
    v11 = 0;
    if (!ASDT::Exclaves::Sensor::GetStatus(self->_sensor.__ptr_, &v11))
    {
      if (stopCopy)
      {
        v6 = 1;
      }

      else
      {
        v6 = 2;
      }

      v7 = v11;
      ASDTTime::machAbsoluteTime(v8 + 1);
      *&v8[0] = -1;
      v9 = v7;
      v10 = v6;
      ASDT::Exclaves::StatusTracker::Push(tracker, v8);
    }
  }
}

- (void)initWithSensorName:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_241659000, a2, OS_LOG_TYPE_ERROR, "ASDTExclavesSensorManager(%@): Exclaves sensor creation fails unexpectedly.", &v2, 0xCu);
}

@end