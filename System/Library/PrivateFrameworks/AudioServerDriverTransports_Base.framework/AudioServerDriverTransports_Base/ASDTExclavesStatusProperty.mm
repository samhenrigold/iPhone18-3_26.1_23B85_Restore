@interface ASDTExclavesStatusProperty
+ (id)config;
- (ASDTExclavesStatusProperty)initWithConfig:(id)config;
- (id)retrievePropertyValue;
- (void)addedToDevice:(id)device;
@end

@implementation ASDTExclavesStatusProperty

+ (id)config
{
  v5[4] = *MEMORY[0x277D85DE8];
  v4[0] = @"Subclass";
  v4[1] = @"Selector";
  v5[0] = @"ASDTExclavesStatusProperty";
  v5[1] = &unk_285354768;
  v4[2] = @"Scope";
  v4[3] = @"Element";
  v5[2] = &unk_285354780;
  v5[3] = &unk_285354798;
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:4];

  return v2;
}

- (ASDTExclavesStatusProperty)initWithConfig:(id)config
{
  configCopy = config;
  v8.receiver = self;
  v8.super_class = ASDTExclavesStatusProperty;
  v5 = [(ASDTCustomProperty *)&v8 initWithConfig:configCopy propertyDataType:1886155636 qualifierDataType:0];
  v6 = v5;
  if (v5)
  {
    [(ASDTCustomProperty *)v5 setCacheMode:0];
    [(ASDCustomProperty *)v6 setSettable:0];
  }

  return v6;
}

- (void)addedToDevice:(id)device
{
  location[3] = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([deviceCopy conformsToProtocol:&unk_285364AE8])
  {
    [(ASDTExclavesStatusProperty *)self setStatusTrackerHost:deviceCopy];
    statusTrackerHost = [(ASDTExclavesStatusProperty *)self statusTrackerHost];
    exclavesStatusTracker = [statusTrackerHost exclavesStatusTracker];

    if (exclavesStatusTracker)
    {
      objc_initWeak(location, self);
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 3221225472;
      aBlock[2] = __44__ASDTExclavesStatusProperty_addedToDevice___block_invoke;
      aBlock[3] = &unk_278CE6068;
      objc_copyWeak(&v14, location);
      ASDT::Exclaves::StatusTracker::SetSignalBlock(exclavesStatusTracker, aBlock);
      objc_destroyWeak(&v14);
      objc_destroyWeak(location);
    }

    else
    {
      v9 = asdt_exclaves_available(v7, v8);
      if (v9)
      {
        v11 = ASDTBaseLogType(v9, v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          exclavesSensorName = [deviceCopy exclavesSensorName];
          [(ASDTExclavesStatusProperty *)exclavesSensorName addedToDevice:v11];
        }
      }
    }
  }
}

void __44__ASDTExclavesStatusProperty_addedToDevice___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained sensorStatusChanged];
}

- (id)retrievePropertyValue
{
  v17[5] = *MEMORY[0x277D85DE8];
  statusTrackerHost = [(ASDTExclavesStatusProperty *)self statusTrackerHost];
  exclavesStatusTracker = [statusTrackerHost exclavesStatusTracker];

  if (exclavesStatusTracker)
  {
    ASDT::Exclaves::StatusTracker::Pop(&__p, exclavesStatusTracker, 0);
    v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:0xCCCCCCCCCCCCCCCDLL * ((v15 - __p) >> 3)];
    v5 = __p;
    v6 = v15;
    if (__p != v15)
    {
      do
      {
        v16[0] = @"machAbsoluteTime";
        v7 = [MEMORY[0x277CCABB0] numberWithLongLong:v5[2]];
        v17[0] = v7;
        v16[1] = @"timeNanoseconds";
        v8 = [MEMORY[0x277CCABB0] numberWithLongLong:v5[1]];
        v17[1] = v8;
        v16[2] = @"sampleTime";
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*v5];
        v17[2] = v9;
        v16[3] = @"statusRawValue";
        v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v5 + 8)];
        v17[3] = v10;
        v16[4] = @"operation";
        v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v5 + 9)];
        v17[4] = v11;
        v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:5];
        [v4 addObject:v12];

        v5 += 5;
      }

      while (v5 != v6);
    }

    if (__p)
    {
      v15 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (void)addedToDevice:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_241659000, log, OS_LOG_TYPE_ERROR, "ASDTExclavesStatusProperty(%@): Failed to create sensor manager.", buf, 0xCu);
}

@end