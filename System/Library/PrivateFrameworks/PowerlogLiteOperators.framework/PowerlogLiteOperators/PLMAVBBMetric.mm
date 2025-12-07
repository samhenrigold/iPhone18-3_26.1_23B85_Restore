@interface PLMAVBBMetric
+ (id)sharedInstance;
- (BOOL)registerForNotifClient:(id)client andProfile:(id)profile;
- (void)flushPeriodicMetrics;
- (void)initializeDataStoreBBTS:(id)s triggerCnt:(id)cnt triggerId:(id)id;
- (void)initializeMetricsDictWithTS:(id)s triggerCnt:(id)cnt triggerId:(id)id;
- (void)modelProdMetricsNotify;
- (void)queueAperiodicMetricId:(id)id payload:(id)payload profileId:(id)profileId;
- (void)queuePeriodicMetricId:(id)id payload:(id)payload forTrigger:(id)trigger;
@end

@implementation PLMAVBBMetric

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __31__PLMAVBBMetric_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F70D8 != -1)
  {
    dispatch_once(&qword_2811F70D8, block);
  }

  v2 = qword_2811F70E0;

  return v2;
}

- (void)modelProdMetricsNotify
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [(NSMutableDictionary *)self->_prodMetrics objectForKey:@"arr"];
  v3 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    v6 = -1;
    v7 = -1;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v23 + 1) + 8 * i);
        v10 = [v9 objectForKeyedSubscript:@"duration"];

        if (v10)
        {
          v11 = [v9 objectForKeyedSubscript:@"duration"];
          intValue = [v11 intValue];

          if (intValue >= v7)
          {
            v13 = v7;
          }

          else
          {
            v13 = intValue;
          }

          if (v7 == -1)
          {
            v7 = intValue;
          }

          else
          {
            v7 = v13;
          }

          if (intValue <= v6)
          {
            v14 = v6;
          }

          else
          {
            v14 = intValue;
          }

          if (v6 == -1)
          {
            v6 = intValue;
          }

          else
          {
            v6 = v14;
          }
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v23 objects:v29 count:16];
    }

    while (v4);
  }

  else
  {
    v6 = -1;
    v7 = -1;
  }

  v15 = [MEMORY[0x277CCABB0] numberWithInt:((v7 + v6) / 2)];
  [(NSMutableDictionary *)self->_prodMetrics setObject:v15 forKeyedSubscript:@"duration"];

  if ([(NSString *)self->_notifyTitle isEqualToString:@"MAV_METRIC_PROD"])
  {
    [MEMORY[0x277D3F258] postNotificationName:self->_notifyTitle object:self userInfo:self->_prodMetrics];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad metrics channel: !PROD"];
    v17 = MEMORY[0x277D3F178];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
    lastPathComponent = [v18 lastPathComponent];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric modelProdMetricsNotify]"];
    [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:268];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLMAVBBMetric modelProdMetricsNotify]", "PLMAVBBMetric.m", 269, "0");
    }
  }
}

uint64_t __31__PLMAVBBMetric_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  qword_2811F70E0 = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (BOOL)registerForNotifClient:(id)client andProfile:(id)profile
{
  v16 = *MEMORY[0x277D85DE8];
  integerValue = [profile integerValue];
  if (integerValue == 1)
  {
    notifyTitle = self->_notifyTitle;
    self->_notifyTitle = @"MAV_METRIC_PROD";
  }

  else
  {
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"*** error *** unsupported profile"];
    v8 = MEMORY[0x277D3F178];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
    lastPathComponent = [v9 lastPathComponent];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric registerForNotifClient:andProfile:]"];
    [v8 logMessage:v7 fromFile:lastPathComponent fromFunction:v11 fromLineNumber:62];

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v14 = 138412290;
      v15 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "%@", &v14, 0xCu);
    }
  }

  return integerValue == 1;
}

- (void)queuePeriodicMetricId:(id)id payload:(id)payload forTrigger:(id)trigger
{
  v22 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  triggerCopy = trigger;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v21 = payloadCopy;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId : %@", buf, 0xCu);
  }

  logAgent = self->_logAgent;
  if (logAgent && ([(PLAgent *)logAgent workQueue], v13 = objc_claimAutoreleasedReturnValue(), v13, v13))
  {
    workQueue = [(PLAgent *)self->_logAgent workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke;
    v15[3] = &unk_2782591A8;
    v16 = payloadCopy;
    v17 = idCopy;
    selfCopy = self;
    v19 = triggerCopy;
    dispatch_async(workQueue, v15);
  }

  else
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }
}

void __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v38 = *(a1 + 32);
    *buf = 138412290;
    v44 = v38;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId in dispatch queue : %@", buf, 0xCu);
  }

  v3 = [*(a1 + 40) integerValue];
  v4 = *(*(a1 + 48) + 48);
  if (v3 == 786435)
  {
    if (v4)
    {
      if ([*(a1 + 56) integerValue])
      {
        v5 = [*(*(a1 + 48) + 48) objectForKeyedSubscript:@"triggerId"];
        v6 = [v5 integerValue];
        v7 = [*(a1 + 56) integerValue];

        if (v6 == v7)
        {
          v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad tid. will failed assertion if debugEnabled"];
          v9 = MEMORY[0x277D3F178];
          v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
          v11 = [v10 lastPathComponent];
          v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke"];
          [v9 logMessage:v8 fromFile:v11 fromFunction:v12 fromLineNumber:107];

          v13 = PLLogCommon();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138412290;
            v44 = v8;
            _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
          }

          [MEMORY[0x277D3F180] debugEnabled];
          return;
        }
      }

      [*(a1 + 48) modelProdMetricsNotify];
      if (*(*(a1 + 48) + 56))
      {
        v20 = PLLogCommon();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v40 = *(a1 + 32);
          *buf = 138412290;
          v44 = v40;
          _os_log_debug_impl(&dword_21A4C6000, v20, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId in RF Trigger Count : %@", buf, 0xCu);
        }

        [*(*(a1 + 48) + 56) logBBMavPeriodicMetrics];
      }
    }

    v21 = [[AWDMETRICSCellularPowerLog alloc] initWithData:*(a1 + 32)];
    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v22 = objc_opt_class();
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_24;
      v42[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      v42[4] = v22;
      if (qword_2811F70E8 != -1)
      {
        dispatch_once(&qword_2811F70E8, v42);
      }

      if (_MergedGlobals_82 == 1)
      {
        v23 = [MEMORY[0x277CCACA8] stringWithFormat:@"Generate awdPowerLog to handle periodic metrics: %@", v21];
        v24 = MEMORY[0x277D3F178];
        v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
        v26 = [v25 lastPathComponent];
        v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke_2"];
        [v24 logMessage:v23 fromFile:v26 fromFunction:v27 fromLineNumber:117];

        v28 = PLLogCommon();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v44 = v23;
          _os_log_debug_impl(&dword_21A4C6000, v28, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if ([(AWDMETRICSCellularPowerLog *)v21 cellularPerClientProfileTriggerCountsCount]>= 2)
    {
      [MEMORY[0x277D3F180] debugEnabled];
    }

    v29 = [(AWDMETRICSCellularPowerLog *)v21 cellularPerClientProfileTriggerCountAtIndex:0];
    if ([v29 hasTimestamp])
    {
      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v29, "timestamp")}];
    }

    else
    {
      v30 = &unk_282C0CBD0;
    }

    if ([v29 hasTriggerCount])
    {
      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v29, "triggerCount")}];
    }

    else
    {
      v31 = &unk_282C0CBD0;
    }

    [*(a1 + 48) initializeMetricsDictWithTS:v30 triggerCnt:v31 triggerId:*(a1 + 56)];
    [*(a1 + 48) initializeDataStoreBBTS:v30 triggerCnt:v31 triggerId:*(a1 + 56)];
  }

  else
  {
    v14 = [v4 objectForKeyedSubscript:@"arr"];
    if (v14)
    {
      v15 = PLLogCommon();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v39 = *(a1 + 32);
        *buf = 138412290;
        v44 = v39;
        _os_log_debug_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_DEBUG, "BB Agent: queuePeriodicMetricId in default : %@", buf, 0xCu);
      }

      v16 = [*(*(a1 + 48) + 56) decodePayload:*(a1 + 32) forMetricId:*(a1 + 40)];
      v17 = objc_opt_class();
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_43;
      block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
      block[4] = v17;
      if (qword_2811F70F0 != -1)
      {
        dispatch_once(&qword_2811F70F0, block);
      }

      if (byte_2811F70D1 == 1)
      {
        v18 = [PLMAVBBMetricUtility convertToStringData:*(a1 + 32)];
        [v16 setObject:v18 forKey:@"payload"];
      }

      if (v16)
      {
        [v14 addObject:v16];
      }

      v19 = *(*(a1 + 48) + 56);
      if (v19)
      {
        [v19 addToListMetric:*(a1 + 40) payload:*(a1 + 32)];
      }
    }

    else
    {
      v32 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad arr"];
      v33 = MEMORY[0x277D3F178];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
      v35 = [v34 lastPathComponent];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke"];
      [v33 logMessage:v32 fromFile:v35 fromFunction:v36 fromLineNumber:141];

      v37 = PLLogCommon();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v44 = v32;
        _os_log_debug_impl(&dword_21A4C6000, v37, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
      }

      if ([MEMORY[0x277D3F180] debugEnabled])
      {
        __assert_rtn("[PLMAVBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke", "PLMAVBBMetric.m", 142, "0");
      }
    }
  }
}

void *__58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_24(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_82 = result;
  return result;
}

void *__58__PLMAVBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_43(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70D1 = result;
  return result;
}

- (void)flushPeriodicMetrics
{
  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v6 = PLLogCommon();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "BBAgent not ready";
LABEL_10:
    _os_log_debug_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_DEBUG, v7, buf, 2u);
    goto LABEL_7;
  }

  workQueue = [(PLAgent *)logAgent workQueue];

  if (workQueue)
  {
    workQueue2 = [(PLAgent *)self->_logAgent workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__PLMAVBBMetric_flushPeriodicMetrics__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(workQueue2, block);

    return;
  }

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    v7 = "Work-queue not ready";
    goto LABEL_10;
  }

LABEL_7:
}

void *__37__PLMAVBBMetric_flushPeriodicMetrics__block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 48) && *(v1 + 56))
  {
    v2 = result;
    v3 = PLLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "BB Agent: flushPeriodicMetrics", v4, 2u);
    }

    return [*(v2[4] + 56) logBBMavPeriodicMetrics];
  }

  return result;
}

- (void)queueAperiodicMetricId:(id)id payload:(id)payload profileId:(id)profileId
{
  idCopy = id;
  payloadCopy = payload;
  profileIdCopy = profileId;
  logAgent = self->_logAgent;
  if (logAgent && ([(PLAgent *)logAgent workQueue], v12 = objc_claimAutoreleasedReturnValue(), v12, v12))
  {
    workQueue = [(PLAgent *)self->_logAgent workQueue];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke;
    v14[3] = &unk_2782591A8;
    v15 = payloadCopy;
    selfCopy = self;
    v17 = idCopy;
    v18 = profileIdCopy;
    dispatch_async(workQueue, v14);
  }

  else
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }
}

void __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [[AWDMETRICSCellularPowerLog alloc] initWithData:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [(AWDMETRICSCellularPowerLog *)v2 dictionaryRepresentation];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v33;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [v4 objectForKey:*(*(&v32 + 1) + 8 * v9)];
          v7 = [v11 objectAtIndex:0];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      v12 = objc_opt_class();
      block = MEMORY[0x277D85DD0];
      v28 = 3221225472;
      v29 = __58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke_2;
      v30 = &__block_descriptor_40_e5_v8__0lu32l8;
      v31 = v12;
      if (qword_2811F70F8 != -1)
      {
        dispatch_once(&qword_2811F70F8, &block);
      }

      if (byte_2811F70D2 == 1)
      {
        v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"aperiodic MAV metric: %@", v7, block, v28, v29, v30, v31];
        v14 = MEMORY[0x277D3F178];
        v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KMAV/PLMAVBBMetric.m"];
        v16 = [v15 lastPathComponent];
        v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLMAVBBMetric queueAperiodicMetricId:payload:profileId:]_block_invoke"];
        [v14 logMessage:v13 fromFile:v16 fromFunction:v17 fromLineNumber:222];

        v18 = PLLogCommon();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v37 = v13;
          _os_log_debug_impl(&dword_21A4C6000, v18, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
        }
      }
    }

    if (v7)
    {
      if ([*(a1 + 48) intValue] == 786435)
      {
        objc_storeStrong((*(a1 + 40) + 32), *(a1 + 56));
        v19 = [v7 objectForKeyedSubscript:@"trigger_count"];
        v20 = *(a1 + 40);
        v21 = *(v20 + 24);
        *(v20 + 24) = v19;

        v22 = *(a1 + 40);
        v23 = *(a1 + 32);
        v24 = *(v22 + 40);
        *(v22 + 40) = v23;
      }

      else
      {
        v25 = [PLMAVBBHardwareMessage alloc];
        v26 = [v7 objectForKeyedSubscript:@"timestamp"];
        v24 = [(PLMAVBBHardwareMessage *)v25 initEntryWithBBTS:v26 triggerId:*(a1 + 48) seqnum:*(*(a1 + 40) + 24) payload:*(a1 + 32) logAgent:*(*(a1 + 40) + 8)];

        [v24 logBBMavAperiodicMetrics];
      }
    }
  }

  else
  {
    [MEMORY[0x277D3F180] debugEnabled];
  }
}

void *__58__PLMAVBBMetric_queueAperiodicMetricId_payload_profileId___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  byte_2811F70D2 = result;
  return result;
}

- (void)initializeMetricsDictWithTS:(id)s triggerCnt:(id)cnt triggerId:(id)id
{
  idCopy = id;
  cntCopy = cnt;
  sCopy = s;
  v11 = objc_opt_new();
  prodMetrics = self->_prodMetrics;
  self->_prodMetrics = v11;

  v15 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(sCopy, "integerValue")}];
  convertFromBasebandToMonotonic = [v15 convertFromBasebandToMonotonic];
  [(NSMutableDictionary *)self->_prodMetrics setObject:convertFromBasebandToMonotonic forKeyedSubscript:@"timestamp"];

  [(NSMutableDictionary *)self->_prodMetrics setObject:sCopy forKeyedSubscript:@"bbtimestamp"];
  [(NSMutableDictionary *)self->_prodMetrics setObject:&unk_282C0CBD0 forKeyedSubscript:@"duration"];
  [(NSMutableDictionary *)self->_prodMetrics setObject:cntCopy forKeyedSubscript:@"seqnum"];

  [(NSMutableDictionary *)self->_prodMetrics setObject:idCopy forKeyedSubscript:@"triggerId"];
  v14 = objc_opt_new();
  [(NSMutableDictionary *)self->_prodMetrics setObject:v14 forKeyedSubscript:@"arr"];
}

- (void)initializeDataStoreBBTS:(id)s triggerCnt:(id)cnt triggerId:(id)id
{
  idCopy = id;
  cntCopy = cnt;
  sCopy = s;
  v11 = [[PLMAVBBHardwareMessage alloc] initEntryWithBBTS:sCopy triggerId:idCopy seqnum:cntCopy payload:0 logAgent:self->_logAgent];

  storeMetricsLogger = self->_storeMetricsLogger;
  self->_storeMetricsLogger = v11;
}

@end