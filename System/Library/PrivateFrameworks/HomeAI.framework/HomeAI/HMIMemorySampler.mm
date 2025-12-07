@interface HMIMemorySampler
+ (id)sharedInstance;
- (HMIMemorySampler)init;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)fire;
@end

@implementation HMIMemorySampler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_52 != -1)
  {
    +[HMIMemorySampler sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_51;

  return v3;
}

uint64_t __34__HMIMemorySampler_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(HMIMemorySampler);
  v1 = sharedInstance_sharedInstance_51;
  sharedInstance_sharedInstance_51 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (HMIMemorySampler)init
{
  v8.receiver = self;
  v8.super_class = HMIMemorySampler;
  v2 = [(HMIMemorySampler *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:? options:?];
    tick = v2->_tick;
    v2->_tick = v3;

    [(HMFTimer *)v2->_tick setDelegate:?];
    v5 = [[MovingAverage alloc] initWithWindowSize:?];
    average = v2->_average;
    v2->_average = v5;
  }

  return v2;
}

- (void)start
{
  tick = [(HMIMemorySampler *)self tick];
  [tick resume];
}

- (void)stop
{
  tick = [(HMIMemorySampler *)self tick];
  [tick suspend];
}

- (void)timerDidFire:(id)fire
{
  v52 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  v5 = objc_autoreleasePoolPush();
  v6 = getpid();
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (!proc_pid_rusage(v6, 6, buffer))
  {
    v7 = *(&v27 + 1);
    average = self->_average;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:?];
    [(MovingAverage *)average addNumber:?];

    [(MovingAverage *)self->_average movingAverage];
    v10 = objc_alloc_init(MEMORY[0x277CCA8E8]);
    [v10 setZeroPadsFractionDigits:?];
    [v10 setAllowedUnits:?];
    [v10 setCountStyle:?];
    [v10 setAllowsNonnumericFormatting:?];
    v11 = MEMORY[0x277CCACA8];
    v12 = [v10 stringFromByteCount:?];
    v23 = [v11 stringWithFormat:objc_msgSend(v12, "UTF8String")];

    v13 = MEMORY[0x277CCACA8];
    v14 = [v10 stringFromByteCount:?];
    v15 = [v13 stringWithFormat:objc_msgSend(v14, "UTF8String")];

    v16 = MEMORY[0x277CCACA8];
    v17 = [v10 stringFromByteCount:?];
    v18 = [v16 stringWithFormat:objc_msgSend(v17, "UTF8String")];

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = HMFGetLogIdentifier();
      LODWORD(buffer[0]) = 138544130;
      *(buffer + 4) = v22;
      WORD2(buffer[1]) = 2112;
      *(&buffer[1] + 6) = v23;
      HIWORD(buffer[2]) = 2112;
      buffer[3] = v15;
      LOWORD(v25) = 2112;
      *(&v25 + 2) = v18;
      _os_log_impl(&dword_22D12F000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Footprint: %@, Average: %@, Peak: %@", buffer, 0x2Au);
    }

    objc_autoreleasePoolPop(v19);
    if (([(HMIMemorySampler *)selfCopy highWaterMark]& 0x8000000000000000) == 0 && v7 > [(HMIMemorySampler *)selfCopy highWaterMark])
    {
      objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:? reason:? userInfo:?]);
    }
  }

  objc_autoreleasePoolPop(v5);
}

@end