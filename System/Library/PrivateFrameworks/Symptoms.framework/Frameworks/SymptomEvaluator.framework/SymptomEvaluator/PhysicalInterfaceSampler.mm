@interface PhysicalInterfaceSampler
+ (id)sharedInstanceForInterfaceType:(int64_t)type;
- (BOOL)updateAssesmentHelper:(double)helper;
- (PhysicalInterfaceSampler)init;
- (double)lastInterfaceTrafficTimestamp;
- (id)getState:(BOOL)state;
- (int)setConfiguration:(id)configuration;
- (void)ensureNonZeroPhysicalInterfaceThroughputParameters;
- (void)restoreDefaults;
- (void)setHasSustainedConservativeHighInterfaceThroughput:(BOOL)throughput;
- (void)setHasSustainedResponsiveHighInterfaceThroughput:(BOOL)throughput;
- (void)updateAssesments;
- (void)updateInterfaceSamplesWithTime:(double)time bumpSamples:(BOOL)samples;
@end

@implementation PhysicalInterfaceSampler

- (double)lastInterfaceTrafficTimestamp
{
  result = self->_lastInterfaceTrafficTimestamp;
  if (result == 0.0)
  {
    result = apparentTime();
    self->_lastInterfaceTrafficTimestamp = result;
  }

  return result;
}

- (void)updateAssesments
{
  self->_hasSustainedHighInterfaceRxThroughput = 0;
  self->_hasSustainedHighInterfaceTxThroughput = 0;
  if ([(PhysicalInterfaceSampler *)self updateAssesmentHelper:self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput])
  {
    [(PhysicalInterfaceSampler *)self setHasSustainedConservativeHighInterfaceThroughput:1];

    [(PhysicalInterfaceSampler *)self setHasSustainedResponsiveHighInterfaceThroughput:1];
  }

  else
  {
    [(PhysicalInterfaceSampler *)self setHasSustainedResponsiveHighInterfaceThroughput:[(PhysicalInterfaceSampler *)self updateAssesmentHelper:self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput]];

    [(PhysicalInterfaceSampler *)self setHasSustainedConservativeHighInterfaceThroughput:0];
  }
}

+ (id)sharedInstanceForInterfaceType:(int64_t)type
{
  if (type == 1)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke_2;
    v6[3] = &__block_descriptor_40_e5_v8__0l;
    v6[4] = self;
    if (sharedInstanceForInterfaceType__wifiPred != -1)
    {
      dispatch_once(&sharedInstanceForInterfaceType__wifiPred, v6);
    }

    v3 = &sharedInstanceForInterfaceType__wifiSharedInstance;
    goto LABEL_9;
  }

  if (type == 2)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = self;
    if (sharedInstanceForInterfaceType__cellPred != -1)
    {
      dispatch_once(&sharedInstanceForInterfaceType__cellPred, block);
    }

    v3 = &sharedInstanceForInterfaceType__cellSharedInstance;
LABEL_9:
    v4 = *v3;
    goto LABEL_11;
  }

  v4 = 0;
LABEL_11:

  return v4;
}

uint64_t __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstanceForInterfaceType__cellSharedInstance;
  sharedInstanceForInterfaceType__cellSharedInstance = v1;

  [sharedInstanceForInterfaceType__cellSharedInstance setIfType:2];
  [sharedInstanceForInterfaceType__cellSharedInstance setLogPrefix:@"Cell"];
  v3 = sharedInstanceForInterfaceType__cellSharedInstance;

  return [v3 setMaxHistorySamples:10];
}

uint64_t __59__PhysicalInterfaceSampler_sharedInstanceForInterfaceType___block_invoke_2(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstanceForInterfaceType__wifiSharedInstance;
  sharedInstanceForInterfaceType__wifiSharedInstance = v1;

  [sharedInstanceForInterfaceType__wifiSharedInstance setIfType:1];
  [sharedInstanceForInterfaceType__wifiSharedInstance setLogPrefix:@"WiFi"];
  v3 = sharedInstanceForInterfaceType__wifiSharedInstance;

  return [v3 setMaxHistorySamples:10];
}

- (PhysicalInterfaceSampler)init
{
  v8.receiver = self;
  v8.super_class = PhysicalInterfaceSampler;
  v2 = [(FlowHistorian *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    interfaceSamples = v2->_interfaceSamples;
    v2->_interfaceSamples = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    thresholdChangeHistory = v2->_thresholdChangeHistory;
    v2->_thresholdChangeHistory = v5;
  }

  return v2;
}

- (void)setHasSustainedConservativeHighInterfaceThroughput:(BOOL)throughput
{
  if (self->_hasSustainedConservativeHighInterfaceThroughput != throughput)
  {
    throughputCopy = throughput;
    thresholdChangeHistory = self->_thresholdChangeHistory;
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    hasSustainedConservativeHighInterfaceThroughput = self->_hasSustainedConservativeHighInterfaceThroughput;
    v8 = apparentTime();
    v9 = dateStringMillisecondsFromReferenceInterval(v8);
    v10 = [v6 initWithFormat:@"           cons-threshold %d -> %d    %@", hasSustainedConservativeHighInterfaceThroughput, throughputCopy, v9];
    [(NSMutableArray *)thresholdChangeHistory addObject:v10];

    if ([(NSMutableArray *)self->_thresholdChangeHistory count]>= 0xB)
    {
      [(NSMutableArray *)self->_thresholdChangeHistory removeObjectAtIndex:0];
    }

    self->_hasSustainedConservativeHighInterfaceThroughput = throughputCopy;
    if (throughputCopy)
    {
      self->_hasSustainedResponsiveHighInterfaceThroughput = 1;
    }
  }
}

- (void)setHasSustainedResponsiveHighInterfaceThroughput:(BOOL)throughput
{
  if (self->_hasSustainedResponsiveHighInterfaceThroughput != throughput)
  {
    throughputCopy = throughput;
    thresholdChangeHistory = self->_thresholdChangeHistory;
    v6 = objc_alloc(MEMORY[0x277CCACA8]);
    hasSustainedResponsiveHighInterfaceThroughput = self->_hasSustainedResponsiveHighInterfaceThroughput;
    v8 = apparentTime();
    v9 = dateStringMillisecondsFromReferenceInterval(v8);
    v10 = [v6 initWithFormat:@"           resp-threshold %d -> %d    %@", hasSustainedResponsiveHighInterfaceThroughput, throughputCopy, v9];
    [(NSMutableArray *)thresholdChangeHistory addObject:v10];

    if ([(NSMutableArray *)self->_thresholdChangeHistory count]>= 0xB)
    {
      [(NSMutableArray *)self->_thresholdChangeHistory removeObjectAtIndex:0];
    }

    self->_hasSustainedResponsiveHighInterfaceThroughput = throughputCopy;
    if (!throughputCopy)
    {
      self->_hasSustainedConservativeHighInterfaceThroughput = 0;
    }
  }
}

- (BOOL)updateAssesmentHelper:(double)helper
{
  v56 = *MEMORY[0x277D85DE8];
  v5 = [(NSMutableArray *)self->_interfaceSamples count];
  if (v5)
  {
    v6 = v5;
    lastObject = [(NSMutableArray *)self->_interfaceSamples lastObject];
    [lastObject startTimeIntervalSinceReferenceDate];
    v9 = v8;
    [lastObject elapsedTime];
    v11 = v10;
    [(NSMutableArray *)self->_interfaceSamples reverseObjectEnumerator];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v12 = v44 = 0u;
    v13 = [v12 countByEnumeratingWithState:&v41 objects:v55 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = v6 - 1;
      v16 = v9 + v11;
      v17 = *v42;
      v40 = v6 - 1;
LABEL_4:
      v18 = 0;
      v19 = -v15;
      v15 -= v14;
      while (1)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(v12);
        }

        v20 = *(*(&v41 + 1) + 8 * v18);
        [v20 startTimeIntervalSinceReferenceDate];
        if (v16 - v21 >= helper)
        {
          break;
        }

        ++v18;
        ++v19;
        if (v14 == v18)
        {
          v14 = [v12 countByEnumeratingWithState:&v41 objects:v55 count:16];
          if (v14)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }

      v22 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v23 = v22;
        [v20 startTimeIntervalSinceReferenceDate];
        v25 = v24;
        [v20 startTimeIntervalSinceReferenceDate];
        *buf = 134219008;
        v46 = v16;
        v47 = 2048;
        v48 = v25;
        v49 = 2048;
        v50 = v16 - v26;
        v51 = 2048;
        helperCopy = helper;
        v53 = 2048;
        v54 = -v19;
        _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_DEBUG, "Found a PhysicalInterfaceSample that went back long enough: %.4f to %.4f (delta %.4f >= %.4f) at index %lu", buf, 0x34u);
      }

      if (-v19 > v40)
      {
        v27 = 1;
        v28 = 1;
LABEL_22:
        self->_hasSustainedHighInterfaceRxThroughput = v27;
        self->_hasSustainedHighInterfaceTxThroughput = v28;
        LOBYTE(v5) = 1;
        return v5;
      }

      v29 = 0;
      v30 = -v19;
      v28 = 1;
      v27 = 1;
      while (1)
      {
        v31 = v30 + v29;
        v32 = [(NSMutableArray *)self->_interfaceSamples objectAtIndexedSubscript:v30 + v29];
        [v32 rxThroughput];
        v34 = &OBJC_IVAR___PhysicalInterfaceSampler__minPhysicalInterfaceRxUsageForSustainedHighThroughput;
        if (v29)
        {
          v35 = &OBJC_IVAR___PhysicalInterfaceSampler__minPhysicalInterfaceTxUsageForSustainedHighThroughput;
        }

        else
        {
          v34 = &OBJC_IVAR___PhysicalInterfaceSampler__minInitialInterfaceRxUsageForSustainedHighThroughput;
          v35 = &OBJC_IVAR___PhysicalInterfaceSampler__minInitialInterfaceTxUsageForSustainedHighThroughput;
        }

        v36 = v33 / *(&self->super.super.isa + *v34);
        [v32 txThroughput];
        v38 = v37 / *(&self->super.super.isa + *v35);

        if (v38 * v38 + v36 * v36 < 1.0)
        {
          break;
        }

        v28 &= v38 >= 1.0;
        v27 &= v36 >= 1.0;
        ++v29;
        if (v31 >= v40)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_10:
    }

    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)updateInterfaceSamplesWithTime:(double)time bumpSamples:(BOOL)samples
{
  samplesCopy = samples;
  v31 = *MEMORY[0x277D85DE8];
  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    ifType = self->_ifType;
    lastSampledRxIfTypeBytes = self->_lastSampledRxIfTypeBytes;
    totalRxIfTypeBytes = self->_totalRxIfTypeBytes;
    lastSampledTxIfTypeBytes = self->_lastSampledTxIfTypeBytes;
    totalTxIfTypeBytes = self->_totalTxIfTypeBytes;
    *buf = 67110656;
    *v20 = ifType;
    *&v20[4] = 2048;
    *&v20[6] = time;
    v21 = 1024;
    v22 = samplesCopy;
    v23 = 2048;
    v24 = lastSampledRxIfTypeBytes;
    v25 = 2048;
    v26 = totalRxIfTypeBytes;
    v27 = 2048;
    v28 = lastSampledTxIfTypeBytes;
    v29 = 2048;
    v30 = totalTxIfTypeBytes;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "PhysicalInterfaceSampler %d updateInterfaceSamplesWithTime %.3f bump %d, _lastSampledRxIfTypeBytes %lld _totalRxIfTypeBytes %lld  tx %lld %lld", buf, 0x40u);
  }

  if (self->_lastSampleTimeIntervalSinceReferenceDate != 0.0)
  {
    if (!samplesCopy)
    {
      goto LABEL_15;
    }

    v13 = objc_alloc_init(PhysicalInterfaceSample);
    [(PhysicalInterfaceSample *)v13 setStartTimeIntervalSinceReferenceDate:self->_lastSampleTimeIntervalSinceReferenceDate];
    [(PhysicalInterfaceSample *)v13 setElapsedTime:time - self->_lastSampleTimeIntervalSinceReferenceDate];
    [(PhysicalInterfaceSample *)v13 setRxBytes:self->_totalRxIfTypeBytes - self->_lastSampledRxIfTypeBytes];
    [(PhysicalInterfaceSample *)v13 setTxBytes:self->_totalTxIfTypeBytes - self->_lastSampledTxIfTypeBytes];
    [(NSMutableArray *)self->_interfaceSamples addObject:v13];
    if ([(NSMutableArray *)self->_interfaceSamples count]>= 0xB)
    {
      [(NSMutableArray *)self->_interfaceSamples removeObjectAtIndex:0];
    }

    self->_lastSampledRxIfTypeBytes = self->_totalRxIfTypeBytes;
    self->_lastSampledTxIfTypeBytes = self->_totalTxIfTypeBytes;
    self->_lastSampleTimeIntervalSinceReferenceDate = time;
    v14 = self->_ifType;
    v15 = flowScrutinyLogHandle;
    v16 = os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT);
    if (v14 == 1)
    {
      if (v16)
      {
        *buf = 138412290;
        *v20 = v13;
        v17 = "Wi-Fi PhysicalInterfaceSampler new entry %@";
LABEL_13:
        _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);
      }
    }

    else if (v16)
    {
      *buf = 138412290;
      *v20 = v13;
      v17 = "Cell  PhysicalInterfaceSampler new entry %@";
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  self->_lastSampledRxIfTypeBytes = self->_totalRxIfTypeBytes;
  self->_lastSampledTxIfTypeBytes = self->_totalTxIfTypeBytes;
  self->_lastSampleTimeIntervalSinceReferenceDate = time;
LABEL_15:
  v18.receiver = self;
  v18.super_class = PhysicalInterfaceSampler;
  [(FlowHistorian *)&v18 updateSamplesWithTime:samplesCopy bumpSamples:time];
  [(PhysicalInterfaceSampler *)self updateAssesments];
}

- (id)getState:(BOOL)state
{
  stateCopy = state;
  v31 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  ifType = self->_ifType;
  v7 = @"other";
  if (ifType == 1)
  {
    v7 = @"WiFi";
  }

  if (ifType == 2)
  {
    v8 = @"Cell";
  }

  else
  {
    v8 = v7;
  }

  v9 = v8;
  if (stateCopy)
  {
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    hasSustainedConservativeHighInterfaceThroughput = self->_hasSustainedConservativeHighInterfaceThroughput;
    hasSustainedResponsiveHighInterfaceThroughput = self->_hasSustainedResponsiveHighInterfaceThroughput;
    hasSustainedHighInterfaceRxThroughput = self->_hasSustainedHighInterfaceRxThroughput;
    hasSustainedHighInterfaceTxThroughput = self->_hasSustainedHighInterfaceTxThroughput;
    v15 = dateStringMillisecondsFromReferenceInterval(self->_lastSampleTimeIntervalSinceReferenceDate);
    v16 = [v10 initWithFormat:@"%@ Physical interface, sustained-tput-conservative %d responsive %d sustained-rx %d sustained-tx %d, last sample at %@", v9, hasSustainedConservativeHighInterfaceThroughput, hasSustainedResponsiveHighInterfaceThroughput, hasSustainedHighInterfaceRxThroughput, hasSustainedHighInterfaceTxThroughput, v15];
    [v5 addObject:v16];

    v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"   configuration  rx initial %2.3f Mbps, rx usage %2.3f Mbps, tx initial %2.3f Mbps, tx usage %2.3f Mbps min durations %2.3f %2.3f", *&self->_minInitialInterfaceRxUsageForSustainedHighThroughput, *&self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput, *&self->_minInitialInterfaceTxUsageForSustainedHighThroughput, *&self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput, *&self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput, *&self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput];
    [v5 addObject:v17];

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v18 = self->_thresholdChangeHistory;
    v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v27;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v27 != v21)
          {
            objc_enumerationMutation(v18);
          }

          [v5 addObject:*(*(&v26 + 1) + 8 * i)];
        }

        v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v26 objects:v30 count:16];
      }

      while (v20);
    }
  }

  v25.receiver = self;
  v25.super_class = PhysicalInterfaceSampler;
  v23 = [(FlowHistorian *)&v25 getState:stateCopy];
  if (v23)
  {
    [v5 addObjectsFromArray:v23];
  }

  return v5;
}

- (void)ensureNonZeroPhysicalInterfaceThroughputParameters
{
  if (self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput = 1.0e-10;
  }

  if (self->_minInitialInterfaceRxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minInitialInterfaceRxUsageForSustainedHighThroughput = 1.0e-10;
  }

  if (self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput = 1.0e-10;
  }

  if (self->_minInitialInterfaceTxUsageForSustainedHighThroughput == 0.0)
  {
    self->_minInitialInterfaceTxUsageForSustainedHighThroughput = 1.0e-10;
  }
}

- (void)restoreDefaults
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "PhysicalInterfaceSampler restore configuration defaults", v6, 2u);
  }

  ifType = self->_ifType;
  if (ifType == 1)
  {
    self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput = 32.0;
    self->_minInitialInterfaceRxUsageForSustainedHighThroughput = 24.0;
    v5 = 100000.0;
    self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput = 100000.0;
    goto LABEL_7;
  }

  if (ifType == 2)
  {
    self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput = 16.0;
    self->_minInitialInterfaceRxUsageForSustainedHighThroughput = 8.0;
    self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput = 4.0;
    v5 = 2.0;
LABEL_7:
    self->_minInitialInterfaceTxUsageForSustainedHighThroughput = v5;
    self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput = 4.6;
    self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput = 2.2;
  }

  self->_defaultMinPhysicalInterfaceRxUsageForSustainedHighThroughput = self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput;
  self->_defaultMinInitialInterfaceRxUsageForSustainedHighThroughput = self->_minInitialInterfaceRxUsageForSustainedHighThroughput;
  self->_defaultMinPhysicalInterfaceTxUsageForSustainedHighThroughput = self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput;
  self->_defaultMinInitialInterfaceTxUsageForSustainedHighThroughput = self->_minInitialInterfaceTxUsageForSustainedHighThroughput;
  self->_defaultMinConservativePhysicalInterfaceDurationForSustainedHighThroughput = self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput;
  self->_defaultMinResponsivePhysicalInterfaceDurationForSustainedHighThroughput = self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput;
  [(PhysicalInterfaceSampler *)self ensureNonZeroPhysicalInterfaceThroughputParameters];
}

- (int)setConfiguration:(id)configuration
{
  v10 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = configurationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "PhysicalInterfaceSampler handle new configuration parameters %{public}@", &v8, 0xCu);
  }

  [configurationCopy extractKey:@"MinRxTputHighInterfaceUse" toDouble:&self->_minPhysicalInterfaceRxUsageForSustainedHighThroughput defaultTo:self->_defaultMinPhysicalInterfaceRxUsageForSustainedHighThroughput];
  [configurationCopy extractKey:@"MinInitialRxTputHighInterfaceUse" toDouble:&self->_minInitialInterfaceRxUsageForSustainedHighThroughput defaultTo:self->_defaultMinInitialInterfaceRxUsageForSustainedHighThroughput];
  [configurationCopy extractKey:@"MinTxTputHighInterfaceUse" toDouble:&self->_minPhysicalInterfaceTxUsageForSustainedHighThroughput defaultTo:self->_defaultMinPhysicalInterfaceTxUsageForSustainedHighThroughput];
  [configurationCopy extractKey:@"MinInitialTxTputHighInterfaceUse" toDouble:&self->_minInitialInterfaceTxUsageForSustainedHighThroughput defaultTo:self->_defaultMinInitialInterfaceTxUsageForSustainedHighThroughput];
  if ((self->_ifType - 1) <= 1)
  {
    [configurationCopy extractKey:@"MinDisplayOffHighInterfaceUseDuration" toDouble:&self->_minConservativePhysicalInterfaceDurationForSustainedHighThroughput defaultTo:4.6];
    [configurationCopy extractKey:@"MinDisplayOnHighInterfaceUseDuration" toDouble:&self->_minResponsivePhysicalInterfaceDurationForSustainedHighThroughput defaultTo:2.2];
  }

  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(PhysicalInterfaceSampler *)self restoreDefaults];
  }

  [(PhysicalInterfaceSampler *)self ensureNonZeroPhysicalInterfaceThroughputParameters];

  return 0;
}

@end