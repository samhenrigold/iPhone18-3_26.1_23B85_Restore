@interface PLSinopeBBMetric
+ (id)sharedInstance;
- (BOOL)registerForNotifClient:(id)client andProfile:(id)profile;
- (void)flushPeriodicMetrics;
- (void)initializeDataStoreBBTS:(id)s triggerCnt:(id)cnt triggerId:(id)id;
- (void)initializeMetricsDictWithTS:(id)s triggerCnt:(id)cnt triggerId:(id)id;
- (void)modelProdMetricsNotify;
- (void)queueAperiodicMetricId:(id)id payload:(id)payload forTrigger:(id)trigger;
- (void)queuePeriodicMetricId:(id)id payload:(id)payload forTrigger:(id)trigger;
@end

@implementation PLSinopeBBMetric

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __34__PLSinopeBBMetric_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_2811F7030 != -1)
  {
    dispatch_once(&qword_2811F7030, block);
  }

  v2 = qword_2811F7028;

  return v2;
}

uint64_t __34__PLSinopeBBMetric_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  qword_2811F7028 = v1;

  return MEMORY[0x2821F96F8](v1);
}

- (BOOL)registerForNotifClient:(id)client andProfile:(id)profile
{
  integerValue = [profile integerValue];
  if (integerValue == 1)
  {
    notificationTitle = self->_notificationTitle;
    self->_notificationTitle = @"SINOPE_METRIC_PROD";
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *v9 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_DEBUG, "BB Agent Sinope: Unsupported Profile", v9, 2u);
    }
  }

  return integerValue == 1;
}

- (void)queuePeriodicMetricId:(id)id payload:(id)payload forTrigger:(id)trigger
{
  v28 = *MEMORY[0x277D85DE8];
  idCopy = id;
  payloadCopy = payload;
  triggerCopy = trigger;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v23 = "[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]";
    v24 = 2112;
    v25 = idCopy;
    v26 = 2112;
    v27 = triggerCopy;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "[BBAgent] in @%s, metricId: %@, tid: %@", buf, 0x20u);
  }

  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "PLBBAgent not ready";
LABEL_11:
    _os_log_error_impl(&dword_21A4C6000, v15, OS_LOG_TYPE_ERROR, v16, buf, 2u);
    goto LABEL_9;
  }

  workQueue = [(PLAgent *)logAgent workQueue];

  if (!workQueue)
  {
    v15 = PLLogCommon();
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_9;
    }

    *buf = 0;
    v16 = "PLBBAgent workQueue not ready";
    goto LABEL_11;
  }

  workQueue2 = [(PLAgent *)self->_logAgent workQueue];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke;
  v17[3] = &unk_2782591A8;
  v18 = payloadCopy;
  v19 = idCopy;
  selfCopy = self;
  v21 = triggerCopy;
  dispatch_async(workQueue2, v17);

  v15 = v18;
LABEL_9:
}

void __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = PLLogCommon();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    *buf = 136315394;
    v24 = "[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke";
    v25 = 2112;
    v26 = v19;
    _os_log_debug_impl(&dword_21A4C6000, v2, OS_LOG_TYPE_DEBUG, "[BBAgent] in @%s in dispatch queue : %@", buf, 0x16u);
  }

  if ([*(a1 + 40) integerValue] == 3932163)
  {
    if (*(*(a1 + 48) + 56))
    {
      if (![*(a1 + 56) integerValue] || (objc_msgSend(*(*(a1 + 48) + 56), "objectForKeyedSubscript:", @"triggerId"), v3 = objc_claimAutoreleasedReturnValue(), v4 = objc_msgSend(v3, "integerValue"), v5 = objc_msgSend(*(a1 + 56), "integerValue"), v3, v4 != v5))
      {
        if ([MEMORY[0x277D3F208] isBasebandClass:1003018])
        {
          [*(a1 + 48) modelProdMetricsNotify];
        }

        v6 = *(*(a1 + 48) + 64);
        if (v6)
        {
          [v6 logBBSinopePeriodicMetrics];
        }

        else
        {
          v7 = PLLogCommon();
          if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "bad tid.", buf, 2u);
          }

          [MEMORY[0x277D3F180] debugEnabled];
        }
      }
    }

    v8 = [[AWDMETRICSMetricLogPower alloc] initWithData:*(a1 + 32)];
    if ([(AWDMETRICSMetricLogPower *)v8 kCellularPerClientProfileTriggerCountsCount]>= 2)
    {
      v9 = PLLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_ERROR, "unexpected trigger count", buf, 2u);
      }

      [MEMORY[0x277D3F180] debugEnabled];
    }

    v10 = [(AWDMETRICSMetricLogPower *)v8 kCellularPerClientProfileTriggerCountAtIndex:0];
    if ([v10 hasTimestamp])
    {
      v11 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v10, "timestamp")}];
    }

    else
    {
      v11 = &unk_282C0C960;
    }

    if ([v10 hasTriggerCount])
    {
      v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v10, "triggerCount")}];
    }

    else
    {
      v12 = &unk_282C0C960;
    }

    [*(a1 + 48) initializeMetricsDictWithTS:v11 triggerCnt:v12 triggerId:*(a1 + 56)];
    [*(a1 + 48) initializeDataStoreBBTS:v11 triggerCnt:v12 triggerId:*(a1 + 56)];
  }

  v13 = PLLogCommon();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v20 = *(a1 + 40);
    v21 = *(a1 + 56);
    *buf = 136315650;
    v24 = "[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke";
    v25 = 2112;
    v26 = v20;
    v27 = 2112;
    v28 = v21;
    _os_log_debug_impl(&dword_21A4C6000, v13, OS_LOG_TYPE_DEBUG, "[BBAgent] in @%s in default: %@, tid: %@", buf, 0x20u);
  }

  v14 = [*(*(a1 + 48) + 56) objectForKeyedSubscript:@"arr"];
  if (v14)
  {
    v15 = [*(*(a1 + 48) + 64) decodePayload:*(a1 + 32) forMetricId:*(a1 + 40)];
    if (v15)
    {
      [v14 addObject:v15];
    }

    v16 = objc_opt_class();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_2;
    block[3] = &__block_descriptor_40_e5_v8__0lu32l8;
    block[4] = v16;
    if (qword_2811F7038 != -1)
    {
      dispatch_once(&qword_2811F7038, block);
    }

    if (_MergedGlobals_77 == 1)
    {
      v17 = [PLSinopeBBMetricUtility convertToStringData:*(a1 + 32)];
      [v15 setObject:v17 forKey:@"payload"];
    }

    v18 = *(*(a1 + 48) + 64);
    if (v18)
    {
      [v18 addToListMetric:*(a1 + 40) payload:*(a1 + 32)];
    }
  }

  else if ([MEMORY[0x277D3F180] debugEnabled])
  {
    __assert_rtn("[PLSinopeBBMetric queuePeriodicMetricId:payload:forTrigger:]_block_invoke", "PLSinopeBBMetric-SINOPE.m", 140, "0");
  }
}

void *__61__PLSinopeBBMetric_queuePeriodicMetricId_payload_forTrigger___block_invoke_2(uint64_t a1)
{
  result = [MEMORY[0x277D3F180] isClassDebugEnabled:*(a1 + 32)];
  _MergedGlobals_77 = result;
  return result;
}

- (void)flushPeriodicMetrics
{
  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v6 = PLLogCommon();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v7 = "BBAgent not ready";
LABEL_10:
    _os_log_error_impl(&dword_21A4C6000, v6, OS_LOG_TYPE_ERROR, v7, buf, 2u);
    goto LABEL_7;
  }

  workQueue = [(PLAgent *)logAgent workQueue];

  if (workQueue)
  {
    workQueue2 = [(PLAgent *)self->_logAgent workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __40__PLSinopeBBMetric_flushPeriodicMetrics__block_invoke;
    block[3] = &unk_2782591D0;
    block[4] = self;
    dispatch_async(workQueue2, block);

    return;
  }

  v6 = PLLogCommon();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    v7 = "Work-queue not ready";
    goto LABEL_10;
  }

LABEL_7:
}

void *__40__PLSinopeBBMetric_flushPeriodicMetrics__block_invoke(void *result)
{
  v1 = result[4];
  if (*(v1 + 56) && *(v1 + 64))
  {
    v2 = result;
    v3 = PLLogCommon();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_21A4C6000, v3, OS_LOG_TYPE_DEBUG, "BB Agent: flushPeriodicMetrics", v4, 2u);
    }

    return [*(v2[4] + 64) logBBSinopePeriodicMetrics];
  }

  return result;
}

- (void)queueAperiodicMetricId:(id)id payload:(id)payload forTrigger:(id)trigger
{
  idCopy = id;
  payloadCopy = payload;
  triggerCopy = trigger;
  logAgent = self->_logAgent;
  if (!logAgent)
  {
    v14 = PLLogCommon();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v15 = "PLBBAgent: Not ready";
LABEL_9:
    _os_log_error_impl(&dword_21A4C6000, v14, OS_LOG_TYPE_ERROR, v15, buf, 2u);
    goto LABEL_7;
  }

  workQueue = [(PLAgent *)logAgent workQueue];

  if (!workQueue)
  {
    v14 = PLLogCommon();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_7;
    }

    *buf = 0;
    v15 = "PLBBAgent: Work queue Not ready";
    goto LABEL_9;
  }

  workQueue2 = [(PLAgent *)self->_logAgent workQueue];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __62__PLSinopeBBMetric_queueAperiodicMetricId_payload_forTrigger___block_invoke;
  v16[3] = &unk_2782591A8;
  v17 = payloadCopy;
  v18 = idCopy;
  selfCopy = self;
  v20 = triggerCopy;
  dispatch_async(workQueue2, v16);

  v14 = v17;
LABEL_7:
}

void __62__PLSinopeBBMetric_queueAperiodicMetricId_payload_forTrigger___block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = [[AWDMETRICSMetricLogPower alloc] initWithData:*(a1 + 32)];
  v3 = v2;
  if (v2)
  {
    v4 = [(AWDMETRICSMetricLogPower *)v2 dictionaryRepresentation];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v22;
      do
      {
        v9 = 0;
        v10 = v7;
        do
        {
          if (*v22 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v11 = [v4 objectForKey:*(*(&v21 + 1) + 8 * v9)];
          v7 = [v11 objectAtIndex:0];

          ++v9;
          v10 = v7;
        }

        while (v6 != v9);
        v6 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v6);
    }

    else
    {
      v7 = 0;
    }

    v12 = PLLogCommon();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v26 = v7;
      _os_log_debug_impl(&dword_21A4C6000, v12, OS_LOG_TYPE_DEBUG, "aperiodic BB metric: %@", buf, 0xCu);
    }

    if (v7)
    {
      if ([*(a1 + 40) intValue] == 3932163)
      {
        objc_storeStrong((*(a1 + 48) + 24), *(a1 + 56));
        v13 = [v7 objectForKeyedSubscript:@"trigger_count"];
        v14 = *(a1 + 48);
        v15 = *(v14 + 24);
        *(v14 + 24) = v13;

        v16 = *(a1 + 48);
        v17 = *(a1 + 32);
        v18 = *(v16 + 32);
        *(v16 + 32) = v17;
      }

      else
      {
        v19 = [PLSinopeBBHardwareMessage alloc];
        v20 = [v7 objectForKeyedSubscript:@"timestamp"];
        v18 = [(PLSinopeBBHardwareMessage *)v19 initEntryWithBBTS:v20 triggerId:*(a1 + 40) seqnum:*(*(a1 + 48) + 40) payload:*(a1 + 32) logAgent:*(*(a1 + 48) + 8)];

        [v18 logBBSinopeAperiodicMetrics];
      }
    }
  }

  else
  {
    v7 = PLLogCommon();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_21A4C6000, v7, OS_LOG_TYPE_ERROR, "Unable to init powerlogmetric class", buf, 2u);
    }
  }
}

- (void)initializeMetricsDictWithTS:(id)s triggerCnt:(id)cnt triggerId:(id)id
{
  v23 = *MEMORY[0x277D85DE8];
  cntCopy = cnt;
  idCopy = id;
  sCopy = s;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v17 = 136315650;
    v18 = "[PLSinopeBBMetric initializeMetricsDictWithTS:triggerCnt:triggerId:]";
    v19 = 2112;
    v20 = cntCopy;
    v21 = 2112;
    v22 = idCopy;
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s, %@, %@", &v17, 0x20u);
  }

  v12 = objc_opt_new();
  metricDict = self->_metricDict;
  self->_metricDict = v12;

  v14 = [objc_alloc(MEMORY[0x277CBEAA8]) initWithTimeIntervalSince1970:{objc_msgSend(sCopy, "integerValue")}];
  convertFromBasebandToMonotonic = [v14 convertFromBasebandToMonotonic];
  [(NSMutableDictionary *)self->_metricDict setObject:convertFromBasebandToMonotonic forKeyedSubscript:@"timestamp"];

  [(NSMutableDictionary *)self->_metricDict setObject:sCopy forKeyedSubscript:@"bbtimestamp"];
  [(NSMutableDictionary *)self->_metricDict setObject:v14 forKeyedSubscript:@"timestampLogged"];
  [(NSMutableDictionary *)self->_metricDict setObject:&unk_282C0C960 forKeyedSubscript:@"duration"];
  [(NSMutableDictionary *)self->_metricDict setObject:cntCopy forKeyedSubscript:@"seqnum"];
  [(NSMutableDictionary *)self->_metricDict setObject:idCopy forKeyedSubscript:@"triggerId"];
  v16 = objc_opt_new();
  [(NSMutableDictionary *)self->_metricDict setObject:v16 forKeyedSubscript:@"arr"];
}

- (void)initializeDataStoreBBTS:(id)s triggerCnt:(id)cnt triggerId:(id)id
{
  v16 = *MEMORY[0x277D85DE8];
  idCopy = id;
  cntCopy = cnt;
  sCopy = s;
  v11 = PLLogCommon();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    v14 = 136315138;
    v15 = "[PLSinopeBBMetric initializeDataStoreBBTS:triggerCnt:triggerId:]";
    _os_log_debug_impl(&dword_21A4C6000, v11, OS_LOG_TYPE_DEBUG, "[BBAgent] : in @%s", &v14, 0xCu);
  }

  v12 = [[PLSinopeBBHardwareMessage alloc] initEntryWithBBTS:sCopy triggerId:idCopy seqnum:cntCopy payload:0 logAgent:self->_logAgent];
  hardwareMessage = self->_hardwareMessage;
  self->_hardwareMessage = v12;
}

- (void)modelProdMetricsNotify
{
  v30 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v2 = [(NSMutableDictionary *)self->_metricDict objectForKey:@"arr"];
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
  [(NSMutableDictionary *)self->_metricDict setObject:v15 forKeyedSubscript:@"duration"];

  if ([(NSString *)self->_notificationTitle isEqualToString:@"SINOPE_METRIC_PROD"])
  {
    [MEMORY[0x277D3F258] postNotificationName:self->_notificationTitle object:self userInfo:self->_metricDict];
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"bad metrics channel: !PROD"];
    v17 = MEMORY[0x277D3F178];
    v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/PerfPowerServices_Operators/Utilities/Baseband/KSinope/PLSinopeBBMetric-SINOPE.m"];
    lastPathComponent = [v18 lastPathComponent];
    v20 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[PLSinopeBBMetric modelProdMetricsNotify]"];
    [v17 logMessage:v16 fromFile:lastPathComponent fromFunction:v20 fromLineNumber:300];

    v21 = PLLogCommon();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v28 = v16;
      _os_log_debug_impl(&dword_21A4C6000, v21, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
    }

    if ([MEMORY[0x277D3F180] debugEnabled])
    {
      __assert_rtn("[PLSinopeBBMetric modelProdMetricsNotify]", "PLSinopeBBMetric-SINOPE.m", 301, "0");
    }
  }
}

@end