@interface WiFiSoftError
+ (void)_cloudAssetsFetchHandler:(id)handler;
+ (void)_submitSummaryReportMetric;
+ (void)_updateHUDWithHost:(id)host messageDict:(id)dict;
+ (void)_updateHUDWithMessage:(id)message;
- (BOOL)_maxNonUIActionsReachedFor:(id)for;
- (BOOL)_maxUIActionsReachedFor:(id)for;
- (BOOL)askToLaunchTapToRadarWithMessage:(id)message timeout:(double)timeout;
- (BOOL)askToLaunchTapToRadarWithMessage:(id)message timeout:(double)timeout completionHandler:(id)handler;
- (NSMutableString)logMessage;
- (WiFiSoftError)initWithName:(id)name andParams:(id)params;
- (id)appendLogMessage:(id)message includeTimestamp:(BOOL)timestamp;
- (id)incrementCount;
- (id)submitABCReportWithReason:(id)reason event:(id)event;
- (id)submitMetric;
- (id)submitMetricWithData:(id)data;
- (id)tapToRadarWithURL:(id)l completionHandler:(id)handler;
- (id)updateHUDWithHost:(id)host messageDict:(id)dict;
- (id)updateHUDWithMessage:(id)message;
- (int64_t)_countOf:(id)of withinInterval:(double)interval;
- (int64_t)count;
- (int64_t)recentCountWithinTimeInterval:(double)interval;
- (void)_addConfigurationData:(id)data;
- (void)_addGenericMetricData:(id)data;
- (void)_recordCurrentTimestampIn:(id)in;
- (void)_resetCount;
- (void)clearLogMessage;
- (void)dealloc;
- (void)resetCount;
- (void)writeLogMessage;
@end

@implementation WiFiSoftError

- (WiFiSoftError)initWithName:(id)name andParams:(id)params
{
  v122 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  paramsCopy = params;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError initWithName:andParams:];
    }

    goto LABEL_9;
  }

  if ((os_variant_is_recovery() & 1) != 0 || (os_variant_is_darwinos() & 1) != 0 || MGGetBoolAnswer())
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError initWithName:andParams:];
    }

LABEL_9:
    v9 = 0;
    selfCopy2 = self;
    goto LABEL_10;
  }

  v91 = nameCopy;
  p_info = TBTileMO.info;
  if (!queue)
  {
    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("com.apple.wifi.softerror", v13);
    v15 = queue;
    queue = v14;
  }

  if (!logPtr)
  {
    v16 = os_log_create("com.apple.wifi.softerror", "");
    v17 = logPtr;
    logPtr = v16;
  }

  if (!currentSoftErrors)
  {
    v18 = [MEMORY[0x277CBEB58] set];
    v19 = currentSoftErrors;
    currentSoftErrors = v18;
  }

  if (!metricTimer)
  {
    v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    v21 = metricTimer;
    metricTimer = v20;

    dispatch_source_set_event_handler(metricTimer, &__block_literal_global_11);
    v22 = metricTimer;
    v23 = dispatch_time(0, 86400000000000);
    dispatch_source_set_timer(v22, v23, 0x4E94914F0000uLL, 0);
    dispatch_activate(metricTimer);
  }

  objc_storeStrong(&self->_name, name);
  v95 = 0u;
  v96 = 0u;
  v97 = 0u;
  v98 = 0u;
  selfCopy2 = [currentSoftErrors copy];
  v24 = [(WiFiSoftError *)selfCopy2 countByEnumeratingWithState:&v95 objects:v121 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = 0;
    v27 = *v96;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v96 != v27)
        {
          objc_enumerationMutation(selfCopy2);
        }

        pointerValue = [*(*(&v95 + 1) + 8 * i) pointerValue];
        name = [pointerValue name];
        v31 = [name isEqualToString:self->_name];

        v26 |= v31;
      }

      v25 = [(WiFiSoftError *)selfCopy2 countByEnumeratingWithState:&v95 objects:v121 count:16];
    }

    while (v25);

    p_info = (TBTileMO + 32);
    if (v26)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [WiFiSoftError initWithName:andParams:];
      }

      v9 = 0;
      selfCopy2 = self;
      nameCopy = v91;
      goto LABEL_10;
    }
  }

  else
  {
  }

  v94.receiver = self;
  v94.super_class = WiFiSoftError;
  v32 = [(WiFiSoftError *)&v94 init];
  v33 = [paramsCopy objectForKeyedSubscript:@"maxOccurrences"];
  integerValue = [v33 integerValue];
  v35 = integerValue <= -1 || v33 == 0;
  v36 = 100;
  if (!v35)
  {
    v36 = integerValue;
  }

  v32->_maxOccurrences = v36;
  v37 = [paramsCopy objectForKeyedSubscript:@"metricSubmissionSamplingRate"];

  integerValue2 = [v37 integerValue];
  v39 = integerValue2 >= 0x65 || v37 == 0;
  v40 = 30;
  if (!v39)
  {
    v40 = integerValue2;
  }

  v32->_metricSubmissionSamplingRate = v40;
  v41 = [paramsCopy objectForKeyedSubscript:@"maxNonUIActions"];

  integerValue3 = [v41 integerValue];
  v43 = integerValue3 <= -1 || v41 == 0;
  v44 = 5;
  if (!v43)
  {
    v44 = integerValue3;
  }

  v32->_maxNonUIActions = v44;
  v45 = [paramsCopy objectForKeyedSubscript:@"intervalForMaxNonUIActions"];

  integerValue4 = [v45 integerValue];
  v47 = integerValue4 <= -1 || v45 == 0;
  v48 = 120;
  if (!v47)
  {
    v48 = integerValue4;
  }

  v32->_intervalForMaxNonUIActions = v48;
  v49 = [paramsCopy objectForKeyedSubscript:@"maxUIActions"];

  integerValue5 = [v49 integerValue];
  v51 = integerValue5 <= -1 || v49 == 0;
  v52 = 2;
  if (!v51)
  {
    v52 = integerValue5;
  }

  v32->_maxUIActions = v52;
  v53 = [paramsCopy objectForKeyedSubscript:@"intervalForMaxUIActions"];

  integerValue6 = [v53 integerValue];
  v55 = integerValue6 <= -1 || v53 == 0;
  v56 = 86400;
  if (!v55)
  {
    v56 = integerValue6;
  }

  v32->_intervalForMaxUIActions = v56;
  v57 = [paramsCopy objectForKeyedSubscript:@"maxLogMessageLength"];

  integerValue7 = [v57 integerValue];
  v59 = integerValue7 <= -1 || v57 == 0;
  v60 = 1000;
  if (!v59)
  {
    v60 = integerValue7;
  }

  v32->_maxLogMessageLength = v60;
  v61 = p_info[147];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __40__WiFiSoftError_initWithName_andParams___block_invoke_34;
  block[3] = &unk_2789C6630;
  v9 = v32;
  v93 = v9;
  dispatch_sync(v61, block);
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v9->_creationDate = v62;
  *&v9->_enabled = vdupq_n_s64(1uLL);
  p_enabled = &v9->_enabled;
  v64 = [paramsCopy objectForKeyedSubscript:@"isRecommendedPriority"];

  v90 = v64;
  v9->_isRecommendedPriority = (v64 != 0) & [v64 BOOLValue];
  v65 = MEMORY[0x277CCACA8];
  p_name = &v9->_name;
  name = v9->_name;
  uRLUserAllowedCharacterSet = [MEMORY[0x277CCA900] URLUserAllowedCharacterSet];
  v69 = [(NSString *)name stringByAddingPercentEncodingWithAllowedCharacters:uRLUserAllowedCharacterSet];
  v70 = [v65 stringWithFormat:@"%@.%@", @"com.apple.wifi.softerror", v69];
  metricEventName = v9->_metricEventName;
  v9->_metricEventName = v70;

  if ((cloudAssetsQueried & 1) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError initWithName:andParams:];
    }

    [WCAFetchWiFiBehaviorParameters fetchWiFiBehaviorWithCompletion:&__block_literal_global_52];
    cloudAssetsQueried = 1;
  }

  nameCopy = v91;
  if (cloudAssets)
  {
    v72 = [cloudAssets objectForKey:*p_name];
    v73 = v72;
    if (v72)
    {
      v74 = [v72 objectForKey:@"enabled"];
      integerValue8 = [v74 integerValue];
      if (v74)
      {
        v76 = integerValue8;
        if (integerValue8 <= 1 && *p_enabled != integerValue8)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [WiFiSoftError initWithName:andParams:];
          }

          *p_enabled = v76;
        }
      }

      v77 = [v73 objectForKey:@"metricsEnabled"];

      integerValue9 = [v77 integerValue];
      if (v77)
      {
        v79 = integerValue9;
        if (integerValue9 <= 1 && v9->_metricsEnabled != integerValue9)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
          {
            [WiFiSoftError initWithName:andParams:];
          }

          v9->_metricsEnabled = v79;
        }
      }
    }
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v80 = *p_name;
    v81 = *p_enabled;
    metricsEnabled = v9->_metricsEnabled;
    maxOccurrences = v32->_maxOccurrences;
    metricSubmissionSamplingRate = v32->_metricSubmissionSamplingRate;
    maxNonUIActions = v32->_maxNonUIActions;
    intervalForMaxNonUIActions = v32->_intervalForMaxNonUIActions;
    maxUIActions = v32->_maxUIActions;
    intervalForMaxUIActions = v32->_intervalForMaxUIActions;
    maxLogMessageLength = v32->_maxLogMessageLength;
    *buf = 136317698;
    v100 = "[WiFiSoftError initWithName:andParams:]";
    v101 = 2112;
    v102 = v80;
    v103 = 2048;
    v104 = v81;
    v105 = 2048;
    v106 = metricsEnabled;
    v107 = 2048;
    v108 = maxOccurrences;
    v109 = 2048;
    v110 = metricSubmissionSamplingRate;
    v111 = 2048;
    v112 = maxNonUIActions;
    v113 = 2048;
    v114 = intervalForMaxNonUIActions;
    v115 = 2048;
    v116 = maxUIActions;
    v117 = 2048;
    v118 = intervalForMaxUIActions;
    v119 = 2048;
    v120 = maxLogMessageLength;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Created SoftError <%@>, enabled <%ld>, metricsEnabled <%ld>, params <%ld, %ld, %ld, %ld, %ld, %ld, %ld>", buf, 0x70u);
  }

LABEL_10:
  return v9;
}

void __40__WiFiSoftError_initWithName_andParams___block_invoke_34(uint64_t a1)
{
  v1 = currentSoftErrors;
  v2 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  [v1 addObject:v2];
}

- (void)dealloc
{
  v12 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    name = self->_name;
    *buf = 136315394;
    v9 = "[WiFiSoftError dealloc]";
    v10 = 2112;
    v11 = name;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Dealloc SoftError <%@>", buf, 0x16u);
  }

  if (self->_hudTimestamps)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v9 = "[WiFiSoftError dealloc]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Clearing HUD...", buf, 0xCu);
    }

    [WiFiSoftError _updateHUDWithMessage:0];
  }

  if (queue)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __24__WiFiSoftError_dealloc__block_invoke;
    block[3] = &unk_2789C6630;
    block[4] = self;
    dispatch_sync(queue, block);
    if (![currentSoftErrors count])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v9 = "[WiFiSoftError dealloc]";
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Final dealloc", buf, 0xCu);
      }

      if (metricTimer)
      {
        dispatch_source_cancel(metricTimer);
        v4 = metricTimer;
        metricTimer = 0;
      }

      if (hudTimer)
      {
        dispatch_source_cancel(hudTimer);
        v5 = hudTimer;
        hudTimer = 0;
      }
    }
  }

  v6.receiver = self;
  v6.super_class = WiFiSoftError;
  [(WiFiSoftError *)&v6 dealloc];
}

void __24__WiFiSoftError_dealloc__block_invoke(uint64_t a1)
{
  v1 = currentSoftErrors;
  v2 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:*(a1 + 32)];
  [v1 removeObject:v2];
}

- (id)incrementCount
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__6;
  v12 = __Block_byref_object_dispose__6;
  v13 = 0;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __31__WiFiSoftError_incrementCount__block_invoke;
    v7[3] = &unk_2789C73A8;
    v7[4] = self;
    v7[5] = &v8;
    dispatch_sync(queue, v7);
  }

  else
  {
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v4 = v9[5];
    v9[5] = v3;
  }

  v5 = v9[5];
  _Block_object_dispose(&v8, 8);

  return v5;
}

void __31__WiFiSoftError_incrementCount__block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 80))
  {
    v4 = [*(v2 + 104) count];
    v5 = *v3;
    if (v4 >= *(*v3 + 16))
    {
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
      v13 = *(*(a1 + 40) + 8);
      v14 = *(v13 + 40);
      *(v13 + 40) = v12;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __31__WiFiSoftError_incrementCount__block_invoke_cold_1();
      }
    }

    else
    {
      v6 = v5[13];
      if (!v6)
      {
        v7 = [MEMORY[0x277CBEB18] array];
        v8 = *(*v3 + 104);
        *(*v3 + 104) = v7;

        v5 = *v3;
        v6 = *(*v3 + 104);
      }

      [v5 _recordCurrentTimestampIn:v6];
    }
  }

  else
  {
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    MEMORY[0x2821F96F8](v9, v11);
  }
}

- (void)resetCount
{
  if (_os_feature_enabled_impl())
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __27__WiFiSoftError_resetCount__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

- (int64_t)count
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -1;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __22__WiFiSoftError_count__block_invoke;
  v4[3] = &unk_2789C73A8;
  v4[4] = self;
  v4[5] = &v5;
  dispatch_sync(queue, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void *__22__WiFiSoftError_count__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[10])
  {
    result = [result _countOf:result[13] withinInterval:9.22337204e18];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (int64_t)recentCountWithinTimeInterval:(double)interval
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = -1;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __47__WiFiSoftError_recentCountWithinTimeInterval___block_invoke;
    block[3] = &unk_2789C7C80;
    block[4] = self;
    block[5] = &v8;
    *&block[6] = interval;
    dispatch_sync(queue, block);
  }

  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v5;
}

void *__47__WiFiSoftError_recentCountWithinTimeInterval___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result[10])
  {
    result = [result _countOf:result[13] withinInterval:*(a1 + 48)];
    *(*(*(a1 + 40) + 8) + 24) = result;
  }

  return result;
}

- (id)appendLogMessage:(id)message includeTimestamp:(BOOL)timestamp
{
  messageCopy = message;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__6;
  v20 = __Block_byref_object_dispose__6;
  v21 = 0;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    v10 = queue;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke;
    v12[3] = &unk_2789C7CA8;
    v12[4] = self;
    timestampCopy = timestamp;
    v13 = messageCopy;
    v14 = &v16;
    dispatch_sync(v10, v12);
    v9 = v17[5];
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v8 = v17[5];
    v17[5] = v7;

    v9 = v17[5];
  }

  _Block_object_dispose(&v16, 8);

  return v9;
}

void __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    v4 = v2[15];
    if (!v4)
    {
      v5 = [MEMORY[0x277CCAB68] stringWithFormat:@"[name <%@>] ", v2[9]];
      v6 = *(*v3 + 120);
      *(*v3 + 120) = v5;

      v4 = *(*v3 + 120);
    }

    v7 = [v4 length];
    v8 = [*(a1 + 40) length];
    v9 = *(a1 + 32);
    if ((v8 + v7) >= *(v9 + 64))
    {
      v13 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:12 userInfo:0];
      v14 = *(*(a1 + 48) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke_cold_1();
      }
    }

    else if (*(a1 + 56) == 1)
    {
      v16 = [MEMORY[0x277CBEAA8] date];
      [*(*(a1 + 32) + 120) appendFormat:@"[date <%@> logStr <%@>] ", v16, *(a1 + 40)];
    }

    else
    {
      [*(v9 + 120) appendFormat:@"[logStr <%@>] ", *(a1 + 40)];
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v11 = *(*(a1 + 48) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;

    MEMORY[0x2821F96F8](v10, v12);
  }
}

- (NSMutableString)logMessage
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  if (_os_feature_enabled_impl() && !MGGetBoolAnswer())
  {
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __27__WiFiSoftError_logMessage__block_invoke;
    v5[3] = &unk_2789C73A8;
    v5[4] = self;
    v5[5] = &v6;
    dispatch_sync(queue, v5);
  }

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __27__WiFiSoftError_logMessage__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (*(v1 + 80))
  {
    v2 = result;
    v3 = [*(v1 + 120) copy];
    v4 = *(*(v2 + 40) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x2821F96F8](v3, v5);
  }

  return result;
}

- (void)clearLogMessage
{
  if (_os_feature_enabled_impl())
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__WiFiSoftError_clearLogMessage__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

void __32__WiFiSoftError_clearLogMessage__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (*(v1 + 80))
  {
    v2 = *(v1 + 120);
    *(v1 + 120) = 0;
  }
}

- (void)writeLogMessage
{
  if (_os_feature_enabled_impl())
  {
    if ((MGGetBoolAnswer() & 1) == 0)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __32__WiFiSoftError_writeLogMessage__block_invoke;
      block[3] = &unk_2789C6630;
      block[4] = self;
      dispatch_sync(queue, block);
    }
  }
}

void __32__WiFiSoftError_writeLogMessage__block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(*(a1 + 32) + 80))
  {
    v2 = logPtr;
    if (os_log_type_enabled(logPtr, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 32);
      v4 = *(v3 + 120);
      v5 = *(v3 + 104);
      v6 = v2;
      v7 = 138412546;
      v8 = v4;
      v9 = 2048;
      v10 = [v5 count];
      _os_log_impl(&dword_2332D7000, v6, OS_LOG_TYPE_DEFAULT, "%@ [count <%ld>]", &v7, 0x16u);
    }
  }
}

- (id)submitMetric
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__6;
  v13 = __Block_byref_object_dispose__6;
  v14 = 0;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  v3 = MGGetBoolAnswer() ^ 1;
  if (!MEMORY[0x2822170A0])
  {
    LOBYTE(v3) = 0;
  }

  if (v3)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __29__WiFiSoftError_submitMetric__block_invoke;
    v8[3] = &unk_2789C73A8;
    v8[4] = self;
    v8[5] = &v9;
    dispatch_sync(queue, v8);
  }

  else
  {
LABEL_5:
    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v5 = v10[5];
    v10[5] = v4;
  }

  v6 = v10[5];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __29__WiFiSoftError_submitMetric__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 80) && *(v2 + 88))
  {
    if (*(*v3 + 3) <= arc4random_uniform(0x64u))
    {
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v11 = *(*(a1 + 40) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __29__WiFiSoftError_submitMetric__block_invoke_cold_1();
      }
    }

    else
    {
      v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.wifi.softerror", @"generic"];
      v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
      [*v3 _addGenericMetricData:v5];
      if ([v5 count])
      {
        [v5 setObject:*(*v3 + 9) forKey:@"name"];
        v13 = v5;
        AnalyticsSendEventLazy();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v6 = *(*v3 + 9);
          *buf = 136315650;
          v15 = "[WiFiSoftError submitMetric]_block_invoke_2";
          v16 = 2112;
          v17 = v6;
          v18 = 2112;
          v19 = v4;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted metric <%@>", buf, 0x20u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v15 = "[WiFiSoftError submitMetric]_block_invoke";
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT, "%s: SoftError metric dictionary <%@>", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x2821F96F8](v7, v9);
  }
}

- (id)submitMetricWithData:(id)data
{
  dataCopy = data;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__6;
  v18 = __Block_byref_object_dispose__6;
  v19 = 0;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_5;
  }

  v5 = MGGetBoolAnswer() ^ 1;
  if (!MEMORY[0x2822170A0])
  {
    LOBYTE(v5) = 0;
  }

  if (v5)
  {
    v9 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __38__WiFiSoftError_submitMetricWithData___block_invoke;
    block[3] = &unk_2789C7CD0;
    block[4] = self;
    v13 = &v14;
    v12 = dataCopy;
    dispatch_sync(v9, block);
    v8 = v15[5];
  }

  else
  {
LABEL_5:
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v7 = v15[5];
    v15[5] = v6;

    v8 = v15[5];
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __38__WiFiSoftError_submitMetricWithData___block_invoke(void *a1)
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = (a1 + 4);
  v2 = a1[4];
  if (*(v2 + 80) && *(v2 + 88))
  {
    if (*(*v3 + 3) <= arc4random_uniform(0x64u))
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v9 = *(a1[6] + 8);
      v10 = *(v9 + 40);
      *(v9 + 40) = v8;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __38__WiFiSoftError_submitMetricWithData___block_invoke_cold_1();
      }
    }

    else
    {
      if (a1[5])
      {
        v4 = [objc_alloc(MEMORY[0x277CBEB38]) initWithDictionary:a1[5]];
      }

      else
      {
        v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      }

      v11 = v4;
      [*v3 _addGenericMetricData:v4];
      if ([v11 count])
      {
        [v11 setObject:*(*v3 + 9) forKey:@"name"];
        v14 = v11;
        AnalyticsSendEventLazy();
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*v3 + 9);
          v13 = *(*v3 + 16);
          *buf = 136315650;
          v16 = "[WiFiSoftError submitMetricWithData:]_block_invoke_2";
          v17 = 2112;
          v18 = v12;
          v19 = 2112;
          v20 = v13;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted metric <%@>", buf, 0x20u);
        }
      }

      if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v16 = "[WiFiSoftError submitMetricWithData:]_block_invoke";
        v17 = 2112;
        v18 = v11;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT, "%s: SoftError metric dictionary <%@>", buf, 0x16u);
      }
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v6 = *(a1[6] + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x2821F96F8](v5, v7);
  }
}

- (id)submitABCReportWithReason:(id)reason event:(id)event
{
  reasonCopy = reason;
  eventCopy = event;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = 0;
  if (_os_feature_enabled_impl() && (MGGetBoolAnswer() & 1) == 0 && objc_opt_class())
  {
    v8 = queue;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke;
    v13[3] = &unk_2789C7CF8;
    v13[4] = self;
    v16 = &v17;
    v14 = reasonCopy;
    v15 = eventCopy;
    dispatch_sync(v8, v13);
    v9 = v18[5];
  }

  else
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v11 = v18[5];
    v18[5] = v10;

    v9 = v18[5];
  }

  _Block_object_dispose(&v17, 8);

  return v9;
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke(void *a1)
{
  v3 = a1 + 4;
  v2 = a1[4];
  if (v2[10])
  {
    if ([v2 _maxNonUIActionsReachedFor:v2[18]])
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v5 = *(a1[7] + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_2();
      }
    }

    else
    {
      v10 = *v3;
      v11 = *(*v3 + 136);
      if (!v11)
      {
        v12 = objc_alloc_init(MEMORY[0x277D6AFC0]);
        v13 = *(*v3 + 136);
        *(*v3 + 136) = v12;

        v10 = *v3;
        v11 = *(*v3 + 136);
      }

      v14 = *(v10 + 72);
      v15 = a1[5];
      v16 = [MEMORY[0x277CCAC38] processInfo];
      v17 = [v16 processName];
      v18 = [v11 signatureWithDomain:@"WiFi" type:@"SoftError" subType:v14 subtypeContext:v15 detectedProcess:v17 triggerThresholdValues:0];

      v19 = a1[4];
      v20 = *(v19 + 136);
      v21 = a1[6];
      v26[0] = MEMORY[0x277D85DD0];
      v26[1] = 3221225472;
      v26[2] = __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_93;
      v26[3] = &unk_2789C6998;
      v26[4] = v19;
      if (([v20 snapshotWithSignature:v18 duration:v21 events:0 payload:0 actions:v26 reply:0.0] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_1();
      }

      v22 = *v3;
      v23 = *(*v3 + 144);
      if (!v23)
      {
        v24 = [MEMORY[0x277CBEB18] array];
        v25 = *(*v3 + 144);
        *(*v3 + 144) = v24;

        v22 = *v3;
        v23 = *(*v3 + 144);
      }

      [v22 _recordCurrentTimestampIn:v23];
    }
  }

  else
  {
    v7 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v8 = *(a1[7] + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    MEMORY[0x2821F96F8](v7, v9);
  }
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_93(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v2 = *(*(a1 + 32) + 72);
    v3 = 136315394;
    v4 = "[WiFiSoftError submitABCReportWithReason:event:]_block_invoke";
    v5 = 2112;
    v6 = v2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted an ABC report", &v3, 0x16u);
  }
}

- (id)updateHUDWithHost:(id)host messageDict:(id)dict
{
  v38 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  dictCopy = dict;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = __Block_byref_object_copy__6;
  v34 = __Block_byref_object_dispose__6;
  v35 = 0;
  if (!_os_feature_enabled_impl() || (MGGetBoolAnswer() & 1) != 0 || !MGGetBoolAnswer())
  {
    goto LABEL_8;
  }

  v8 = MGGetBoolAnswer() ^ 1;
  if (!MEMORY[0x28220D318])
  {
    LOBYTE(v8) = 1;
  }

  if ((v8 & 1) != 0 || isDisplayOff())
  {
LABEL_8:
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
    v10 = v31[5];
    v31[5] = v9;

LABEL_9:
    v11 = v31;
LABEL_10:
    v12 = v11[5];
    goto LABEL_11;
  }

  if (![dictCopy count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v37 = "[WiFiSoftError updateHUDWithHost:messageDict:]";
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Clearing HUD and HUD timer...", buf, 0xCu);
    }

    [WiFiSoftError _updateHUDWithMessage:0];
    if (hudTimer)
    {
      dispatch_source_set_timer(hudTimer, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    v11 = v31;
    goto LABEL_10;
  }

  v14 = hudTimer;
  if (!hudTimer)
  {
    v15 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queue);
    v16 = hudTimer;
    hudTimer = v15;

    dispatch_source_set_event_handler(hudTimer, &__block_literal_global_102);
    dispatch_activate(hudTimer);
    v14 = hudTimer;
  }

  v17 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v14, v17, 0xFFFFFFFFFFFFFFFFLL, 0);
  v18 = _os_feature_enabled_impl();
  v19 = CFPreferencesCopyValue(@"kWiFiSoftErrorHUDPreference", @"com.apple.settings.airport", @"mobile", *MEMORY[0x277CBF010]);
  v20 = v19;
  if (v19)
  {
    v21 = CFGetTypeID(v19);
    if (v21 == CFStringGetTypeID())
    {
      if (CFStringCompare(v20, @"Never", 0))
      {
        if (CFStringCompare(v20, @"Recommended", 0))
        {
          if (CFStringCompare(v20, @"Limited", 0))
          {
            if (CFStringCompare(v20, @"Unlimited", 0) == kCFCompareEqualTo)
            {
              v18 = 3;
            }
          }

          else
          {
            v18 = 2;
          }
        }
      }

      else
      {
        v18 = 0;
      }
    }

    CFRelease(v20);
  }

  if (v18 == 1)
  {
    if (!self->_isRecommendedPriority)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        [WiFiSoftError updateHUDWithHost:messageDict:];
      }

      goto LABEL_37;
    }
  }

  else if (!v18)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      [WiFiSoftError updateHUDWithHost:messageDict:];
    }

LABEL_37:
    v22 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:1 userInfo:0];
    v23 = v31[5];
    v31[5] = v22;

    goto LABEL_9;
  }

  v24 = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125;
  block[3] = &unk_2789C7D20;
  v29 = v18;
  block[4] = self;
  v28 = &v30;
  v26 = hostCopy;
  v27 = dictCopy;
  dispatch_sync(v24, block);
  v12 = v31[5];

LABEL_11:
  _Block_object_dispose(&v30, 8);

  return v12;
}

uint64_t __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke()
{
  v3 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v1 = 136315138;
    v2 = "[WiFiSoftError updateHUDWithHost:messageDict:]_block_invoke";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Clearing HUD...", &v1, 0xCu);
  }

  return [WiFiSoftError _updateHUDWithMessage:0];
}

void __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[20]] && (*(a1 + 64) - 1) <= 1)
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125_cold_1();
      }
    }

    else
    {
      [WiFiSoftError _updateHUDWithHost:*(a1 + 40) messageDict:*(a1 + 48)];
      v7 = *(a1 + 32);
      v8 = v7[20];
      if (!v8)
      {
        v9 = [MEMORY[0x277CBEB18] array];
        v10 = *(*v3 + 160);
        *(*v3 + 160) = v9;

        v7 = *v3;
        v8 = *(*v3 + 160);
      }

      [v7 _recordCurrentTimestampIn:v8];
    }
  }

  else
  {
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v12 = *(*(a1 + 56) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    MEMORY[0x2821F96F8](v11, v13);
  }
}

- (id)updateHUDWithMessage:(id)message
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (message)
  {
    v9 = @"content";
    v10[0] = message;
    v4 = MEMORY[0x277CBEAC0];
    messageCopy = message;
    v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }

  else
  {
    v6 = MEMORY[0x277CBEC10];
  }

  v7 = [(WiFiSoftError *)self updateHUDWithHost:@"banner" messageDict:v6];

  return v7;
}

- (BOOL)askToLaunchTapToRadarWithMessage:(id)message timeout:(double)timeout
{
  messageCopy = message;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (!_os_feature_enabled_impl() || (MGGetBoolAnswer() & 1) != 0 || !MGGetBoolAnswer() || !MGGetBoolAnswer() || !objc_opt_class() || MKBGetDeviceLockState() == 1)
  {
    goto LABEL_10;
  }

  v7 = !isDisplayOff();
  if (!messageCopy)
  {
    LOBYTE(v7) = 0;
  }

  if (v7)
  {
    v10 = queue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke;
    v11[3] = &unk_2789C7200;
    v11[4] = self;
    timeoutCopy = timeout;
    v12 = messageCopy;
    v13 = &v15;
    dispatch_sync(v10, v11);
    v8 = *(v16 + 24);
  }

  else
  {
LABEL_10:
    v8 = *(v16 + 24);
  }

  _Block_object_dispose(&v15, 8);

  return v8 & 1;
}

void __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[21]])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke_cold_1();
      }
    }

    else
    {
      v8 = 0;
      CFUserNotificationDisplayAlert(*(a1 + 56), 0, 0, 0, 0, *(a1 + 40), @"File a radar now?", @"No", @"Yes", 0, &v8);
      if (v8 == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      v4 = *v3;
      v5 = *(*v3 + 168);
      if (!v5)
      {
        v6 = [MEMORY[0x277CBEB18] array];
        v7 = *(*v3 + 168);
        *(*v3 + 168) = v6;

        v4 = *v3;
        v5 = *(*v3 + 168);
      }

      [v4 _recordCurrentTimestampIn:v5];
    }
  }
}

- (BOOL)askToLaunchTapToRadarWithMessage:(id)message timeout:(double)timeout completionHandler:(id)handler
{
  v28[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  handlerCopy = handler;
  v23 = 0;
  v24 = &v23;
  v25 = 0x2020000000;
  v26 = 0;
  v10 = MKBGetDeviceLockState() == 1 || isDisplayOff();
  if (!_os_feature_enabled_impl() || !MGGetBoolAnswer() || !MGGetBoolAnswer() || objc_opt_class() == 0 || v10)
  {
    goto LABEL_11;
  }

  v11 = MGGetBoolAnswer() ^ 1;
  if (!messageCopy)
  {
    LOBYTE(v11) = 0;
  }

  if (v11)
  {
    v18 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke;
    block[3] = &unk_2789C7200;
    block[4] = self;
    timeoutCopy = timeout;
    v20 = messageCopy;
    v21 = &v23;
    dispatch_sync(v18, block);
    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, 0);
    }

    v16 = *(v24 + 24);
  }

  else
  {
LABEL_11:
    v12 = MEMORY[0x277CCA9B8];
    v27 = @"deviceNotInteractive";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v10];
    v28[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:&v27 count:1];
    v15 = [v12 errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:v14];

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v15);
    }

    v16 = *(v24 + 24);
  }

  _Block_object_dispose(&v23, 8);

  return v16 & 1;
}

void __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[21]])
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke_cold_1();
      }
    }

    else
    {
      v8 = 0;
      CFUserNotificationDisplayAlert(*(a1 + 56), 0, 0, 0, 0, *(a1 + 40), @"File a radar now?", @"No", @"Yes", 0, &v8);
      if (v8 == 1)
      {
        *(*(*(a1 + 48) + 8) + 24) = 1;
      }

      v4 = *v3;
      v5 = *(*v3 + 168);
      if (!v5)
      {
        v6 = [MEMORY[0x277CBEB18] array];
        v7 = *(*v3 + 168);
        *(*v3 + 168) = v6;

        v4 = *v3;
        v5 = *(*v3 + 168);
      }

      [v4 _recordCurrentTimestampIn:v5];
    }
  }
}

- (id)tapToRadarWithURL:(id)l completionHandler:(id)handler
{
  v29[1] = *MEMORY[0x277D85DE8];
  lCopy = l;
  handlerCopy = handler;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__6;
  v26 = __Block_byref_object_dispose__6;
  v27 = 0;
  v8 = MKBGetDeviceLockState() == 1 || isDisplayOff();
  if (_os_feature_enabled_impl() && !(MGGetBoolAnswer() | v8) && MGGetBoolAnswer() && MGGetBoolAnswer() && (v9 = objc_opt_class(), lCopy) && v9)
  {
    v10 = queue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke;
    block[3] = &unk_2789C7D70;
    block[4] = self;
    v21 = &v22;
    v20 = handlerCopy;
    v19 = lCopy;
    dispatch_sync(v10, block);
    v11 = v23[5];
  }

  else
  {
    v12 = MEMORY[0x277CCA9B8];
    v28 = @"deviceNotInteractive";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v29[0] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v15 = [v12 errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:v14];
    v16 = v23[5];
    v23[5] = v15;

    if (handlerCopy)
    {
      (*(handlerCopy + 2))(handlerCopy, 0, v23[5]);
    }

    v11 = v23[5];
  }

  _Block_object_dispose(&v22, 8);

  return v11;
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (v2[10])
  {
    if ([v2 _maxUIActionsReachedFor:v2[22]])
    {
      v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:35 userInfo:0];
      v5 = *(*(a1 + 56) + 8);
      v6 = *(v5 + 40);
      *(v5 + 40) = v4;

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_cold_1();
      }

      v7 = *(a1 + 48);
      if (v7)
      {
        (*(v7 + 16))(v7, 0, *(*(*(a1 + 56) + 8) + 40));
      }
    }

    else
    {
      v11 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v17 = MEMORY[0x277D85DD0];
      v18 = 3221225472;
      v19 = __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147;
      v20 = &unk_2789C7D48;
      v12 = *(a1 + 40);
      v21 = *(a1 + 32);
      v22 = *(a1 + 48);
      [v11 openURL:v12 configuration:0 completionHandler:&v17];

      v13 = *(a1 + 32);
      v14 = v13[22];
      if (!v14)
      {
        v15 = [MEMORY[0x277CBEB18] array];
        v16 = *(*v3 + 176);
        *(*v3 + 176) = v15;

        v13 = *v3;
        v14 = *(*v3 + 176);
      }

      [v13 _recordCurrentTimestampIn:{v14, v17, v18, v19, v20, v21}];
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:82 userInfo:0];
    v9 = *(*(a1 + 56) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    MEMORY[0x2821F96F8](v8, v10);
  }
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147_cold_1();
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    (*(v7 + 16))(v7, v5, v6);
  }
}

- (void)_recordCurrentTimestampIn:(id)in
{
  v3 = MEMORY[0x277CCABB0];
  v4 = MEMORY[0x277CBEAA8];
  inCopy = in;
  [v4 timeIntervalSinceReferenceDate];
  v6 = [v3 numberWithDouble:?];
  [inCopy addObject:v6];
}

- (int64_t)_countOf:(id)of withinInterval:(double)interval
{
  v22 = *MEMORY[0x277D85DE8];
  ofCopy = of;
  v6 = ofCopy;
  if (ofCopy)
  {
    if (interval == 9.22337204e18)
    {
      v7 = [ofCopy count];
    }

    else
    {
      [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
      v9 = v8;
      v17 = 0u;
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v10 = v6;
      v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v11)
      {
        v12 = v11;
        v7 = 0;
        v13 = *v18;
        do
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v18 != v13)
            {
              objc_enumerationMutation(v10);
            }

            [*(*(&v17 + 1) + 8 * i) doubleValue];
            if (v9 - v15 < interval)
            {
              ++v7;
            }
          }

          v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
        }

        while (v12);
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)_maxNonUIActionsReachedFor:(id)for
{
  forCopy = for;
  v7 = 0;
  if (forCopy)
  {
    v5 = [(WiFiSoftError *)self _countOf:forCopy withinInterval:self->_intervalForMaxNonUIActions];
    v6 = [(WiFiSoftError *)self _countOf:forCopy withinInterval:9.22337204e18];
    if (v5 >= self->_maxNonUIActions || v6 >= self->_maxOccurrences)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (BOOL)_maxUIActionsReachedFor:(id)for
{
  forCopy = for;
  v7 = 0;
  if (forCopy)
  {
    v5 = [(WiFiSoftError *)self _countOf:forCopy withinInterval:self->_intervalForMaxUIActions];
    v6 = [(WiFiSoftError *)self _countOf:forCopy withinInterval:9.22337204e18];
    if (v5 >= self->_maxUIActions || v6 >= self->_maxOccurrences)
    {
      v7 = 1;
    }
  }

  return v7;
}

- (void)_resetCount
{
  if (self->_enabled)
  {
    [(NSMutableArray *)self->_occurrenceTimestamps removeAllObjects];
  }
}

- (void)_addConfigurationData:(id)data
{
  v4 = MEMORY[0x277CCABB0];
  metricSubmissionSamplingRate = self->_metricSubmissionSamplingRate;
  dataCopy = data;
  v7 = [v4 numberWithInteger:metricSubmissionSamplingRate];
  [dataCopy setObject:v7 forKey:@"samplingRate"];

  v8 = [MEMORY[0x277CCABB0] numberWithInteger:self->_maxOccurrences];
  [dataCopy setObject:v8 forKey:@"maxOccurrences"];

  v9 = [MEMORY[0x277CCABB0] numberWithBool:{-[NSMutableArray count](self->_occurrenceTimestamps, "count") == self->_maxOccurrences}];
  [dataCopy setObject:v9 forKey:@"reachedMaxDailyOccurrences"];
}

- (void)_addGenericMetricData:(id)data
{
  dataCopy = data;
  v4 = [(WiFiSoftError *)self _countOf:self->_occurrenceTimestamps withinInterval:9.22337204e18];
  v5 = v4;
  if (v4 > 1 || v4 == 1 && self->_lastTimestamp)
  {
    v6 = [(NSMutableArray *)self->_occurrenceTimestamps objectAtIndexedSubscript:v4 - 1];
    [v6 doubleValue];
    v8 = v7;

    if (v5 <= 1)
    {
      [(NSNumber *)self->_lastTimestamp doubleValue];
      v11 = v12;
    }

    else
    {
      v9 = [(NSMutableArray *)self->_occurrenceTimestamps objectAtIndexedSubscript:v5 - 2];
      [v9 doubleValue];
      v11 = v10;
    }

    v13 = [WiFiUsagePrivacyFilter getBinTimeInterval:1 As:v8 - v11];
    if (v13)
    {
      v14 = v13;
      [dataCopy setObject:v13 forKey:@"timeSinceLastOccurrenceBin"];
      [(WiFiSoftError *)self _addConfigurationData:dataCopy];
    }
  }
}

+ (void)_submitSummaryReportMetric
{
  v44 = *MEMORY[0x277D85DE8];
  if (_os_feature_enabled_impl() && (v2 = MGGetBoolAnswer(), MEMORY[0x2822170A0]) && !v2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v4 = v3;
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@", @"com.apple.wifi.softerror", @"generic"];
    v6 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:2];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = currentSoftErrors;
    v7 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v33;
      v26 = *v33;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v33 != v9)
          {
            objc_enumerationMutation(obj);
          }

          pointerValue = [*(*(&v32 + 1) + 8 * i) pointerValue];
          [pointerValue creationDate];
          if (v4 - v12 >= 86400.0 && [pointerValue metricsEnabled])
          {
            name = [pointerValue name];
            [v6 setObject:name forKey:@"name"];

            v30 = 0u;
            v31 = 0u;
            v28 = 0u;
            v29 = 0u;
            occurrenceTimestamps = [pointerValue occurrenceTimestamps];
            v15 = [occurrenceTimestamps countByEnumeratingWithState:&v28 objects:v42 count:16];
            if (v15)
            {
              v16 = v15;
              v17 = 0;
              v18 = *v29;
              do
              {
                for (j = 0; j != v16; ++j)
                {
                  if (*v29 != v18)
                  {
                    objc_enumerationMutation(occurrenceTimestamps);
                  }

                  [*(*(&v28 + 1) + 8 * j) doubleValue];
                  if (v4 - v20 < 86400.0)
                  {
                    ++v17;
                  }
                }

                v16 = [occurrenceTimestamps countByEnumeratingWithState:&v28 objects:v42 count:16];
              }

              while (v16);
            }

            else
            {
              v17 = 0;
            }

            v21 = [MEMORY[0x277CCABB0] numberWithInteger:v17];
            [v6 setObject:v21 forKey:@"occurrenceCountIn24hr"];

            [pointerValue _addConfigurationData:v6];
            occurrenceTimestamps2 = [pointerValue occurrenceTimestamps];
            lastObject = [occurrenceTimestamps2 lastObject];
            [pointerValue setLastTimestamp:lastObject];

            [pointerValue _resetCount];
            v24 = v6;
            AnalyticsSendEventLazy();
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              name2 = [pointerValue name];
              *buf = 136315650;
              v37 = "+[WiFiSoftError _submitSummaryReportMetric]";
              v38 = 2112;
              v39 = name2;
              v40 = 2112;
              v41 = v5;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: SoftError <%@> submitted a summary in metric <%@>", buf, 0x20u);
            }

            v9 = v26;
            if (os_log_type_enabled(MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315394;
              v37 = "+[WiFiSoftError _submitSummaryReportMetric]";
              v38 = 2112;
              v39 = v6;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86228], OS_LOG_TYPE_DEFAULT, "%s: SoftError metric dictionary <%@>", buf, 0x16u);
            }

            [v24 removeAllObjects];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v32 objects:v43 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:45 userInfo:0];
  }
}

+ (void)_cloudAssetsFetchHandler:(id)handler
{
  handlerCopy = handler;
  v4 = queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke;
  block[3] = &unk_2789C6630;
  v7 = handlerCopy;
  v5 = handlerCopy;
  dispatch_sync(v4, block);
}

void __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __42__WiFiSoftError__cloudAssetsFetchHandler___block_invoke_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = [v2 softErrors];
    v4 = [v3 copy];
    v5 = cloudAssets;
    cloudAssets = v4;
  }

  if (cloudAssets)
  {
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v6 = currentSoftErrors;
    v7 = [v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v30;
      *&v8 = 136315906;
      v26 = v8;
      do
      {
        v11 = 0;
        do
        {
          if (*v30 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = [*(*(&v29 + 1) + 8 * v11) pointerValue];
          v13 = cloudAssets;
          v14 = [v12 name];
          v15 = [v13 objectForKey:v14];

          if (v15)
          {
            v16 = [v15 objectForKey:@"enabled"];
            v17 = [v16 integerValue];
            if (v16)
            {
              v18 = v17 > 1;
            }

            else
            {
              v18 = 1;
            }

            if (!v18)
            {
              v19 = v17;
              if ([v12 enabled] != v17)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v27 = [v12 name];
                  v24 = [v12 enabled];
                  *buf = v26;
                  v34 = "+[WiFiSoftError _cloudAssetsFetchHandler:]_block_invoke";
                  v35 = 2112;
                  v36 = v27;
                  v37 = 2048;
                  v38 = v24;
                  v39 = 2048;
                  v40 = v19;
                  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Updating SoftError <%@> property <enabled> from %ld => %ld", buf, 0x2Au);
                }

                [v12 setEnabled:v19];
              }
            }

            v20 = [v15 objectForKey:@"metricsEnabled"];

            v21 = [v20 integerValue];
            if (v20)
            {
              v22 = v21 > 1;
            }

            else
            {
              v22 = 1;
            }

            if (!v22)
            {
              v23 = v21;
              if ([v12 metricsEnabled] != v21)
              {
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v28 = [v12 name];
                  v25 = [v12 metricsEnabled];
                  *buf = v26;
                  v34 = "+[WiFiSoftError _cloudAssetsFetchHandler:]_block_invoke";
                  v35 = 2112;
                  v36 = v28;
                  v37 = 2048;
                  v38 = v25;
                  v39 = 2048;
                  v40 = v23;
                  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s: Updating SoftError <%@> property <metricsEnabled> from %ld => %ld", buf, 0x2Au);
                }

                [v12 setMetricsEnabled:v23];
              }
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v9);
    }
  }
}

+ (void)_updateHUDWithHost:(id)host messageDict:(id)dict
{
  v35 = *MEMORY[0x277D85DE8];
  hostCopy = host;
  dictCopy = dict;
  if ([dictCopy count])
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v34 = dictCopy;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[HUD]: HUD message info: %@", buf, 0xCu);
    }

    if (objc_opt_class() && objc_opt_class() && objc_opt_class() && objc_opt_class())
    {
      v26 = hostCopy;
      array = [MEMORY[0x277CBEB18] array];
      v28 = 0u;
      v29 = 0u;
      v30 = 0u;
      v31 = 0u;
      v8 = dictCopy;
      v9 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v29;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v29 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v28 + 1) + 8 * i);
            v14 = [v8 objectForKeyedSubscript:v13];
            v15 = [v14 description];

            v16 = [MEMORY[0x277CCAD18] queryItemWithName:v13 value:v15];
            [array addObject:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v28 objects:v32 count:16];
        }

        while (v10);
      }

      v17 = objc_alloc_init(MEMORY[0x277CCACE0]);
      [v17 setScheme:@"wifiapp"];
      hostCopy = v26;
      [v17 setHost:v26];
      v18 = [array copy];
      [v17 setQueryItems:v18];

      v19 = [v17 URL];
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_INFO))
      {
        absoluteString = [v19 absoluteString];
        *buf = 138412290;
        v34 = absoluteString;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_INFO, "[HUD]: attempted to open url: %@", buf, 0xCu);
      }

      v21 = objc_alloc_init(MEMORY[0x277CC1F00]);
      v22 = objc_opt_new();
      [v22 setValue:MEMORY[0x277CBEC38] forKey:*MEMORY[0x277D0ABE8]];
      [v21 setFrontBoardOptions:v22];
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v27 = 0;
      v24 = [defaultWorkspace openURL:v19 configuration:v21 error:&v27];
      v25 = v27;

      if (v25 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
      {
        +[WiFiSoftError _updateHUDWithHost:messageDict:];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      +[WiFiSoftError _updateHUDWithHost:messageDict:];
    }
  }

  else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    +[WiFiSoftError _updateHUDWithHost:messageDict:];
  }
}

+ (void)_updateHUDWithMessage:(id)message
{
  v7[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v4 = messageCopy;
  if (messageCopy)
  {
    v6 = @"content";
    v7[0] = messageCopy;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:&v6 count:1];
  }

  else
  {
    v5 = MEMORY[0x277CBEC10];
  }

  [WiFiSoftError _updateHUDWithHost:@"banner" messageDict:v5];
}

- (void)initWithName:andParams:.cold.2()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)initWithName:andParams:.cold.4()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

- (void)initWithName:andParams:.cold.5()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __31__WiFiSoftError_incrementCount__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __51__WiFiSoftError_appendLogMessage_includeTimestamp___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __29__WiFiSoftError_submitMetric__block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __38__WiFiSoftError_submitMetricWithData___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_4_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
}

void __49__WiFiSoftError_submitABCReportWithReason_event___block_invoke_cold_2()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __47__WiFiSoftError_updateHUDWithHost_messageDict___block_invoke_125_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __58__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __76__WiFiSoftError_askToLaunchTapToRadarWithMessage_timeout_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x2Au);
}

void __53__WiFiSoftError_tapToRadarWithURL_completionHandler___block_invoke_147_cold_1()
{
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
}

@end