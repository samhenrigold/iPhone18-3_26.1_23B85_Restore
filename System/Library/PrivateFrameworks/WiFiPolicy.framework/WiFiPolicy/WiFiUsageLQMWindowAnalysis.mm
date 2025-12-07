@interface WiFiUsageLQMWindowAnalysis
+ (BOOL)isInCallAnalysisDue:(id)due;
+ (id)config;
+ (unint64_t)canCreateAnalysisFor:(id)for;
+ (void)computeFeatures:(id)features For:(id)for WithLogLabel:(id)label;
+ (void)initialize;
+ (void)updateConfig;
- (BOOL)canSubmitToCA;
- (BOOL)getBeforeKernelWindowWithLikelyhood;
- (WiFiUsageLQMWindowAnalysis)initWithRollingWindow:(id)window andReason:(id)reason andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue;
- (id)addDimensionsTo:(id)to;
- (id)dumpAnalysis:(id)analysis;
- (id)dumpDimensions:(id)dimensions;
- (id)fetchKernelLQMRollingWindowForInterface:(id)interface into:(id)into;
- (id)metricCallbackForMetric:(id)metric AndField:(id)field;
- (os_state_data_s)_generateState;
- (void)computeBins:(id)bins WithSampleKind:(Class)kind;
- (void)computeFeaturesFor:(id)for WithLogLabel:(id)label;
- (void)dealloc;
- (void)performAnalysis;
- (void)updateWithLQMSample:(id)sample;
- (void)updateWithSubsequentTrigger:(id)trigger;
@end

@implementation WiFiUsageLQMWindowAnalysis

- (void)dealloc
{
  if (self->_osStateHandle)
  {
    os_state_remove_handler();
  }

  analysisTimer = self->_analysisTimer;
  if (analysisTimer)
  {
    dispatch_source_cancel(analysisTimer);
    v4 = self->_analysisTimer;
  }

  else
  {
    v4 = 0;
  }

  self->_analysisTimer = 0;

  v5.receiver = self;
  v5.super_class = WiFiUsageLQMWindowAnalysis;
  [(WiFiUsageLQMWindowAnalysis *)&v5 dealloc];
}

+ (BOOL)isInCallAnalysisDue:(id)due
{
  if (_inCallAnalysisIntervalSecEnabled != 1)
  {
    return 0;
  }

  [due timeIntervalSinceNow];
  return *&_inCallAnalysisIntervalSec <= -v5;
}

+ (id)config
{
  if (_isKernelParsingEnabled == 1)
  {
    _fetchKernelWindowSamplingRates = [MEMORY[0x277CCACA8] stringWithFormat:@"with likelyhood of fetching in-kernel LQM rolling window: %@", _fetchKernelWindowSamplingRates];
  }

  else
  {
    _fetchKernelWindowSamplingRates = &stru_28487EF20;
  }

  if (_inCallAnalysisIntervalSecEnabled == 1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = [MEMORY[0x277CCABB0] numberWithDouble:*&_inCallAnalysisIntervalSec];
    v5 = [WiFiUsagePrivacyFilter getHumanSecondsFromObject:v4];
    v6 = [v3 stringWithFormat:@"every %@", v5];
  }

  else
  {
    v6 = &stru_28487EF20;
  }

  v7 = @"NO";
  if (_isKernelParsingEnabled)
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  if (_inCallAnalysisIntervalSecEnabled)
  {
    v7 = @"YES";
  }

  v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"metricPrefix set to '%@'  cdfMetricName set to '%@' ; sankeyMetricName set to '%@' ; maxConcurrentAnalysis set to %u\nLikelyhood of creating an analysis: %@\nLikelyhood of sending analysis to CA: %@\nKernel window parsing enabled: %@ %@\nInCall LQMAnalysis enabled: %@ %@", _metricPrefix, _cdfMetricName, _sankeyMetricName, _maxConcurrentAnalysis, _createAnalysisSamplingRates, _submitToCASamplingRates, v8, _fetchKernelWindowSamplingRates, v7, v6];;

  return v9;
}

+ (void)initialize
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = _metricPrefix;
    _metricPrefix = @"com.apple.wifi.lqmanalysis";

    v5 = _cdfMetricName;
    _cdfMetricName = @"featuresbyfield";

    v6 = _sankeyMetricName;
    _sankeyMetricName = @"allfeatures";

    v7 = objc_opt_new();
    v8 = _createAnalysisSamplingRates;
    _createAnalysisSamplingRates = v7;

    v9 = objc_opt_new();
    v10 = _submitToCASamplingRates;
    _submitToCASamplingRates = v9;

    v11 = objc_opt_new();
    v12 = _fetchKernelWindowSamplingRates;
    _fetchKernelWindowSamplingRates = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCA968]);
    v14 = _dateFormatter_1;
    _dateFormatter_1 = v13;

    [_dateFormatter_1 setDateFormat:@"HH:mm:ss"];
    _isKernelParsingEnabled = 0;
    _maxConcurrentAnalysis = 6;
    _inCallAnalysisIntervalSecEnabled = 0;
    v15 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v15 forKeyedSubscript:@"Join"];

    v16 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v16 forKeyedSubscript:@"LinkDown"];

    v17 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v17 forKeyedSubscript:@"Roaming"];

    v18 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v18 forKeyedSubscript:@"InCall"];

    v19 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v19 forKeyedSubscript:@"DataTriggered"];

    v20 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA7A8];
    [_createAnalysisSamplingRates setObject:v20 forKeyedSubscript:@"NetworkQuality"];

    v21 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v21 forKeyedSubscript:@"LinkTest"];

    v22 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v22 forKeyedSubscript:@"SlowWiFiAP"];

    v23 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v23 forKeyedSubscript:@"SlowWiFiDUT"];

    v24 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v24 forKeyedSubscript:@"DatapathStall"];

    v25 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v25 forKeyedSubscript:@"LowRssiDns"];

    v26 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v26 forKeyedSubscript:@"LowRssiArp"];

    v27 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v27 forKeyedSubscript:@"LowRssiDataStall"];

    v28 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v28 forKeyedSubscript:@"ArpFailure"];

    v29 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_createAnalysisSamplingRates setObject:v29 forKeyedSubscript:@"SlowWiFiDnsFailure"];

    v30 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v30 forKeyedSubscript:@"Join"];

    v31 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v31 forKeyedSubscript:@"LinkDown"];

    v32 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v32 forKeyedSubscript:@"Roaming"];

    v33 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v33 forKeyedSubscript:@"InCall"];

    v34 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v34 forKeyedSubscript:@"DataTriggered"];

    v35 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA7A8];
    [_submitToCASamplingRates setObject:v35 forKeyedSubscript:@"NetworkQuality"];

    v36 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v36 forKeyedSubscript:@"LinkTest"];

    v37 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v37 forKeyedSubscript:@"SlowWiFiAP"];

    v38 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v38 forKeyedSubscript:@"SlowWiFiDUT"];

    v39 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v39 forKeyedSubscript:@"DatapathStall"];

    v40 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v40 forKeyedSubscript:@"LowRssiDns"];

    v41 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v41 forKeyedSubscript:@"LowRssiArp"];

    v42 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v42 forKeyedSubscript:@"LowRssiDataStall"];

    v43 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v43 forKeyedSubscript:@"ArpFailure"];

    v44 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:&unk_2848BA790];
    [_submitToCASamplingRates setObject:v44 forKeyedSubscript:@"SlowWiFiDnsFailure"];

    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      config = [self config];
      *buf = 136315394;
      v47 = "+[WiFiUsageLQMWindowAnalysis initialize]";
      v48 = 2112;
      v49 = config;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }
  }
}

+ (void)updateConfig
{
  v69 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_class();
  if ([v3 isEqual:objc_opt_class()])
  {
    v4 = [WiFiUsageLQMConfiguration getConfigForKey:@"LQMWindowAnalysis"];
    if (v4)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v5 = [v4 objectForKey:@"MetricPrefix"];
        if (v5)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([_metricPrefix isEqualToString:v5] & 1) == 0)
          {
            objc_storeStrong(&_metricPrefix, v5);
          }
        }

        v6 = [v4 objectForKey:@"CDFMetricName"];

        if (v6)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([_cdfMetricName isEqualToString:v6] & 1) == 0)
          {
            objc_storeStrong(&_cdfMetricName, v6);
          }
        }

        v7 = [v4 objectForKey:@"SanKeyMetricName"];

        if (v7)
        {
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && ([_sankeyMetricName isEqualToString:v7] & 1) == 0)
          {
            objc_storeStrong(&_sankeyMetricName, v7);
          }
        }

        v8 = [v4 objectForKey:@"MaxConcurrentAnalysis"];

        if (v8)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _maxConcurrentAnalysis = [v8 unsignedIntValue];
          }
        }

        v9 = [v4 objectForKey:@"AnalysisCreationSampling"];

        v50 = v4;
        selfCopy = self;
        if (v9)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v47 = v9;
            v10 = v9;
            v60 = 0u;
            v61 = 0u;
            v62 = 0u;
            v63 = 0u;
            allKeys = [v10 allKeys];
            v12 = [allKeys countByEnumeratingWithState:&v60 objects:v68 count:16];
            if (v12)
            {
              v13 = v12;
              v14 = *v61;
              do
              {
                for (i = 0; i != v13; ++i)
                {
                  if (*v61 != v14)
                  {
                    objc_enumerationMutation(allKeys);
                  }

                  v16 = *(*(&v60 + 1) + 8 * i);
                  v17 = [v10 objectForKeyedSubscript:v16];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v18 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:v17];
                      [_createAnalysisSamplingRates setObject:v18 forKeyedSubscript:v16];
                    }
                  }
                }

                v13 = [allKeys countByEnumeratingWithState:&v60 objects:v68 count:16];
              }

              while (v13);
            }

            v4 = v50;
            self = selfCopy;
            v9 = v47;
          }
        }

        v19 = [v4 objectForKey:@"EventSubmissionSampling"];

        if (v19)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v48 = v19;
            v20 = v19;
            v56 = 0u;
            v57 = 0u;
            v58 = 0u;
            v59 = 0u;
            allKeys2 = [v20 allKeys];
            v22 = [allKeys2 countByEnumeratingWithState:&v56 objects:v67 count:16];
            if (v22)
            {
              v23 = v22;
              v24 = *v57;
              do
              {
                for (j = 0; j != v23; ++j)
                {
                  if (*v57 != v24)
                  {
                    objc_enumerationMutation(allKeys2);
                  }

                  v26 = *(*(&v56 + 1) + 8 * j);
                  v27 = [v20 objectForKeyedSubscript:v26];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v28 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:v27];
                      [_submitToCASamplingRates setObject:v28 forKeyedSubscript:v26];
                    }
                  }
                }

                v23 = [allKeys2 countByEnumeratingWithState:&v56 objects:v67 count:16];
              }

              while (v23);
            }

            v4 = v50;
            self = selfCopy;
            v19 = v48;
          }
        }

        v29 = [v4 objectForKey:@"KernelWindowParsingEnabled"];

        if (v29)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            _isKernelParsingEnabled = [v29 BOOLValue];
          }
        }

        v30 = [v4 objectForKey:@"KernelWindowSamplingRatePercentages"];

        if (v30)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v49 = v30;
            v31 = v30;
            v52 = 0u;
            v53 = 0u;
            v54 = 0u;
            v55 = 0u;
            allKeys3 = [v31 allKeys];
            v33 = [allKeys3 countByEnumeratingWithState:&v52 objects:v66 count:16];
            if (v33)
            {
              v34 = v33;
              v35 = *v53;
              do
              {
                for (k = 0; k != v34; ++k)
                {
                  if (*v53 != v35)
                  {
                    objc_enumerationMutation(allKeys3);
                  }

                  v37 = *(*(&v52 + 1) + 8 * k);
                  v38 = [v31 objectForKeyedSubscript:v37];
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v39 = [[WiFiUsageLQMAnalysisSamplingRate alloc] initWithValue:v38];
                      [_fetchKernelWindowSamplingRates setObject:v39 forKeyedSubscript:v37];
                    }
                  }
                }

                v34 = [allKeys3 countByEnumeratingWithState:&v52 objects:v66 count:16];
              }

              while (v34);
            }

            v4 = v50;
            self = selfCopy;
            v30 = v49;
          }
        }

        v40 = [v4 objectForKey:@"InCallAnalysisIntervalSec"];

        if (v40)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v40 doubleValue];
            _inCallAnalysisIntervalSec = v41;
            _inCallAnalysisIntervalSecEnabled = 1;
          }
        }
      }
    }
  }

  v42 = MEMORY[0x277CCACA8];
  config = [self config];
  v44 = [v42 stringWithFormat:@"%s: %@", "+[WiFiUsageLQMWindowAnalysis updateConfig]", config];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(v44, "UTF8String")];
    uTF8String = [v45 UTF8String];
    *buf = 136446210;
    v65 = uTF8String;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%{public}s", buf, 0xCu);
  }
}

- (WiFiUsageLQMWindowAnalysis)initWithRollingWindow:(id)window andReason:(id)reason andContext:(context)context andTimestamp:(id)timestamp onQueue:(id)queue
{
  v9 = *&context.var0;
  v80 = *MEMORY[0x277D85DE8];
  windowCopy = window;
  reasonCopy = reason;
  timestampCopy = timestamp;
  queueCopy = queue;
  v15 = [objc_opt_class() canCreateAnalysisFor:reasonCopy];
  if (!v15)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315394;
      *&location[4] = "[WiFiUsageLQMWindowAnalysis initWithRollingWindow:andReason:andContext:andTimestamp:onQueue:]";
      v78 = 2112;
      v79 = reasonCopy;
      v66 = MEMORY[0x277D86220];
      v67 = "%s - Won't Create Analysis (downsampling) for reason %@";
LABEL_11:
      _os_log_impl(&dword_2332D7000, v66, OS_LOG_TYPE_DEFAULT, v67, location, 0x16u);
    }

LABEL_12:
    selfCopy = 0;
    goto LABEL_13;
  }

  if (!windowCopy)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *location = 136315394;
      *&location[4] = "[WiFiUsageLQMWindowAnalysis initWithRollingWindow:andReason:andContext:andTimestamp:onQueue:]";
      v78 = 2112;
      v79 = 0;
      v66 = MEMORY[0x277D86220];
      v67 = "%s - Cannot init Analysis (invalid current rolling window: %@)";
      goto LABEL_11;
    }

    goto LABEL_12;
  }

  v16 = v15;
  interfaceName = [windowCopy interfaceName];

  if (!interfaceName)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      interfaceName2 = [windowCopy interfaceName];
      *location = 136315394;
      *&location[4] = "[WiFiUsageLQMWindowAnalysis initWithRollingWindow:andReason:andContext:andTimestamp:onQueue:]";
      v78 = 2112;
      v79 = interfaceName2;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot init Analysis (invalid interfaceName on current rolling window: %@)", location, 0x16u);
    }

    goto LABEL_12;
  }

  v76.receiver = self;
  v76.super_class = WiFiUsageLQMWindowAnalysis;
  v18 = [(WiFiUsageLQMWindowAnalysis *)&v76 init];
  *(v18 + 15) = v16;
  v19 = [reasonCopy copy];
  v20 = *(v18 + 4);
  *(v18 + 4) = v19;

  objc_storeStrong(v18 + 5, timestamp);
  *(v18 + 25) = v9 & 1;
  *(v18 + 27) = BYTE1(v9) & 1;
  *(v18 + 28) = BYTE2(v9) & 1;
  samples = [windowCopy samples];
  lastObject = [samples lastObject];
  networkDetails = [lastObject networkDetails];
  connectedBss = [networkDetails connectedBss];
  bssid = [connectedBss bssid];

  samples2 = [windowCopy samples];
  v26 = [MEMORY[0x277CCAC30] predicateWithFormat:@"networkDetails.connectedBss.bssid == %@", bssid];
  v70 = [samples2 filteredArrayUsingPredicate:v26];

  v27 = [WiFiUsageLQMRollingWindow alloc];
  interfaceName3 = [windowCopy interfaceName];
  [windowCopy duration];
  v30 = v29;
  capabilities = [windowCopy capabilities];
  v32 = [(WiFiUsageLQMRollingWindow *)v27 initWithInterfaceName:interfaceName3 andDuration:capabilities andInterfaceCapabilities:v30];
  v33 = *(v18 + 18);
  *(v18 + 18) = v32;

  [*(v18 + 18) addSamples:v70];
  [*(v18 + 18) setLabel:@"before"];
  v34 = *(v18 + 18);
  capabilities2 = [windowCopy capabilities];
  [v34 setCapabilities:capabilities2];

  v36 = [WiFiUsageLQMRollingWindow alloc];
  interfaceName4 = [windowCopy interfaceName];
  [windowCopy duration];
  v39 = v38;
  capabilities3 = [windowCopy capabilities];
  v41 = [(WiFiUsageLQMRollingWindow *)v36 initWithInterfaceName:interfaceName4 andDuration:capabilities3 andInterfaceCapabilities:v39];
  v42 = *(v18 + 19);
  *(v18 + 19) = v41;

  [*(v18 + 19) setLabel:@"after"];
  fgApp = [windowCopy fgApp];
  v44 = *(v18 + 11);
  *(v18 + 11) = fgApp;

  v45 = MEMORY[0x277CBEA60];
  preceedingTriggers = [windowCopy preceedingTriggers];
  v47 = [v45 arrayWithArray:preceedingTriggers];
  v48 = *(v18 + 10);
  *(v18 + 10) = v47;

  v49 = *(v18 + 4);
  if ([v18 isMemberOfClass:objc_opt_class()])
  {

    v49 = @"GenericTrigger";
  }

  v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", _metricPrefix, _cdfMetricName, v49];
  v51 = *(v18 + 12);
  *(v18 + 12) = v50;

  v52 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@.%@.%@", _metricPrefix, _sankeyMetricName, v49];
  v53 = *(v18 + 13);
  *(v18 + 13) = v52;

  v54 = *(v18 + 7);
  *(v18 + 7) = 0;

  v55 = objc_opt_new();
  v56 = *(v18 + 8);
  *(v18 + 8) = v55;

  v57 = objc_opt_new();
  v58 = *(v18 + 14);
  *(v18 + 14) = v57;

  objc_storeStrong(v18 + 17, queue);
  v59 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, queueCopy);
  v60 = *(v18 + 16);
  *(v18 + 16) = v59;

  [v18 getBeforeKernelWindowWithLikelyhood];
  objc_initWeak(location, v18);
  v61 = *(v18 + 16);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __94__WiFiUsageLQMWindowAnalysis_initWithRollingWindow_andReason_andContext_andTimestamp_onQueue___block_invoke;
  handler[3] = &unk_2789C68F8;
  objc_copyWeak(&v75, location);
  dispatch_source_set_event_handler(v61, handler);
  v62 = *(v18 + 16);
  [windowCopy duration];
  v64 = dispatch_time(0, (v63 * 1000000000.0));
  dispatch_source_set_timer(v62, v64, 0xFFFFFFFFFFFFFFFFLL, 0);
  dispatch_resume(*(v18 + 16));
  objc_copyWeak(&v73, location);
  *(v18 + 2) = os_state_add_handler();
  *(v18 + 24) = 0;
  self = v18;
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v75);
  objc_destroyWeak(location);

  selfCopy = self;
LABEL_13:

  return selfCopy;
}

void __94__WiFiUsageLQMWindowAnalysis_initWithRollingWindow_andReason_andContext_andTimestamp_onQueue___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isAnalysisTodo])
  {
    [WeakRetained performAnalysis];
  }
}

uint64_t __94__WiFiUsageLQMWindowAnalysis_initWithRollingWindow_andReason_andContext_andTimestamp_onQueue___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained _generateState];

  return v2;
}

- (void)updateWithLQMSample:(id)sample
{
  v27 = *MEMORY[0x277D85DE8];
  sampleCopy = sample;
  if (sampleCopy)
  {
    samples = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    if (samples)
    {
      samples2 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
      if ([samples2 count])
      {
        samples3 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
        firstObject = [samples3 firstObject];
        networkDetails = [firstObject networkDetails];
        connectedBss = [networkDetails connectedBss];
        bssid = [connectedBss bssid];
      }

      else
      {
        bssid = 0;
      }
    }

    else
    {
      bssid = 0;
    }

    networkDetails2 = [sampleCopy networkDetails];
    connectedBss2 = [networkDetails2 connectedBss];
    bssid2 = [connectedBss2 bssid];

    if (bssid && ([bssid isEqualToString:bssid2] & 1) == 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v15 = 136316418;
        v16 = "[WiFiUsageLQMWindowAnalysis updateWithLQMSample:]";
        v17 = 2112;
        selfCopy = self;
        v19 = 2160;
        v20 = 1752392040;
        v21 = 2112;
        v22 = bssid;
        v23 = 2160;
        v24 = 1752392040;
        v25 = 2112;
        v26 = bssid2;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: performing LQM window analysis for reason %@ (ending this analysis early because the BSSID has changed (%{mask.hash}@ -> %{mask.hash}@)", &v15, 0x3Eu);
      }

      [(WiFiUsageLQMWindowAnalysis *)self performAnalysis];
    }

    else
    {
      [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger addSample:sampleCopy];
    }
  }
}

- (void)updateWithSubsequentTrigger:(id)trigger
{
  triggerCopy = trigger;
  v5 = triggerCopy;
  if (triggerCopy)
  {
    v8 = triggerCopy;
    triggerCopy = [(NSMutableArray *)self->_subsequentTriggers addObject:triggerCopy];
    v5 = v8;
    if (!self->_firstSubsequentLinkDownReason)
    {
      trigger = [v8 trigger];

      v5 = v8;
      if (trigger == @"LinkDown")
      {
        reason = [v8 reason];
        [(WiFiUsageLQMWindowAnalysis *)self setFirstSubsequentLinkDownReason:reason];

        v5 = v8;
      }
    }
  }

  MEMORY[0x2821F96F8](triggerCopy, v5);
}

- (void)computeFeaturesFor:(id)for WithLogLabel:(id)label
{
  labelCopy = label;
  forCopy = for;
  v8 = objc_opt_class();
  lqmWindowsFeatures = self->_lqmWindowsFeatures;
  samples = [forCopy samples];

  [v8 computeFeatures:lqmWindowsFeatures For:samples WithLogLabel:labelCopy];
}

+ (void)computeFeatures:(id)features For:(id)for WithLogLabel:(id)label
{
  v58 = *MEMORY[0x277D85DE8];
  featuresCopy = features;
  forCopy = for;
  labelCopy = label;
  firstObject = [forCopy firstObject];
  v8 = objc_opt_class();
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obj = [v8 allLQMProperties];
  v40 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
  if (v40)
  {
    v9 = &stru_28487EF20;
    v39 = *v44;
    v10 = 0x277CCA000uLL;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v44 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v43 + 1) + 8 * i);
        v13 = [v8 isPerSecond:v12];
        v14 = [v8 featureFromFieldName:v12];
        v15 = @"PerSecond";
        if (!v13)
        {
          v15 = v9;
        }

        v16 = [*(v10 + 3240) stringWithFormat:@"%@_%@%@", v14, v12, v15, firstObject];
        v42 = v16;
        if (v14)
        {
          v17 = v16;
          if ([v14 isEqualToString:@"mode"])
          {
            v18 = @"%@ValueForField:ScaledByDuration:OnSamples:";
          }

          else
          {
            v18 = @"%@IntegerValueForField:ScaledByDuration:OnSamples:";
          }

          v19 = [*(v10 + 3240) stringWithFormat:v18, v14];
          aSelector = NSSelectorFromString(v19);

          v20 = [featuresCopy objectForKeyedSubscript:v17];
          if (!v20 || (v21 = v20, [featuresCopy objectForKeyedSubscript:v42], v22 = v9, v23 = v8, v24 = featuresCopy, v25 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v25, "objectForKeyedSubscript:", labelCopy), v26 = objc_claimAutoreleasedReturnValue(), v26, v25, featuresCopy = v24, v8 = v23, v9 = v22, v21, !v26))
          {
            if (objc_opt_respondsToSelector())
            {
              v27 = [WiFiUsageLQMRollingWindow methodForSelector:aSelector];
              v28 = objc_opt_class();
              v29 = v27(v28, aSelector, v12, v13, forCopy);
              if (v29)
              {
                v30 = v29;
                v31 = [featuresCopy valueForKey:v42];

                if (!v31)
                {
                  v32 = objc_opt_new();
                  [featuresCopy setObject:v32 forKeyedSubscript:v42];
                }

                v33 = [featuresCopy objectForKeyedSubscript:v42];
                [v33 setObject:v30 forKeyedSubscript:labelCopy];
              }
            }

            else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
            {
              v34 = NSStringFromSelector(aSelector);
              *buf = 136316162;
              v48 = "+[WiFiUsageLQMWindowAnalysis computeFeatures:For:WithLogLabel:]";
              v49 = 2112;
              v50 = v34;
              v51 = 2112;
              v52 = v14;
              v53 = 2112;
              v54 = v12;
              v55 = 2112;
              v56 = v8;
              _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Undefined selector %@ for feature type %@ for %@ on sample %@", buf, 0x34u);
            }
          }
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315906;
          v48 = "+[WiFiUsageLQMWindowAnalysis computeFeatures:For:WithLogLabel:]";
          v49 = 2112;
          v50 = 0;
          v51 = 2112;
          v52 = v12;
          v53 = 2112;
          v54 = v8;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Undefined feature type %@ for %@ on sample %@", buf, 0x2Au);
        }

        v10 = 0x277CCA000;
      }

      v40 = [obj countByEnumeratingWithState:&v43 objects:v57 count:16];
    }

    while (v40);
  }
}

- (void)computeBins:(id)bins WithSampleKind:(Class)kind
{
  v46 = *MEMORY[0x277D85DE8];
  binsCopy = bins;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = [binsCopy allKeys];
  v5 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v37;
    *&v6 = 136315394;
    v23 = v6;
    v24 = *v37;
    do
    {
      v9 = 0;
      v25 = v7;
      do
      {
        if (*v37 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v36 + 1) + 8 * v9);
        v11 = [v10 componentsSeparatedByString:{@"_", v23}];
        if ([v11 count] > 1)
        {
          v27 = v11;
          v28 = v9;
          v31 = [v11 objectAtIndex:1];
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v12 = [binsCopy objectForKeyedSubscript:v10];
          allKeys = [v12 allKeys];

          v29 = allKeys;
          v14 = [allKeys countByEnumeratingWithState:&v32 objects:v40 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v33;
            do
            {
              for (i = 0; i != v15; ++i)
              {
                if (*v33 != v16)
                {
                  objc_enumerationMutation(v29);
                }

                v18 = *(*(&v32 + 1) + 8 * i);
                v19 = [binsCopy objectForKeyedSubscript:v10];
                v20 = [v19 objectForKeyedSubscript:v18];
                v21 = -[objc_class binLabelfromFieldName:value:](kind, "binLabelfromFieldName:value:", v31, [v20 integerValue]);
                v22 = [binsCopy objectForKeyedSubscript:v10];
                [v22 setObject:v21 forKeyedSubscript:v18];
              }

              v15 = [v29 countByEnumeratingWithState:&v32 objects:v40 count:16];
            }

            while (v15);
          }

          v8 = v24;
          v7 = v25;
          v11 = v27;
          v9 = v28;
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          *buf = v23;
          v42 = "[WiFiUsageLQMWindowAnalysis computeBins:WithSampleKind:]";
          v43 = 2112;
          v44 = v10;
          _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - FeatureFieldName:%@ Unable to extract binFieldName", buf, 0x16u);
        }

        ++v9;
      }

      while (v9 != v7);
      v7 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v7);
  }
}

- (void)performAnalysis
{
  v78 = *MEMORY[0x277D85DE8];
  samples = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  if (samples)
  {
    samples2 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    firstObject = [samples2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  samples3 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  if (samples3)
  {
    samples4 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    lastObject = [samples4 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  if (!firstObject)
  {
    goto LABEL_32;
  }

  v55 = lastObject;
  if ([(NSMutableDictionary *)self->_lqmWindowsFeatures count]&& !+[WiFiUsageLQMKernelRollingWindow isOngoing])
  {
    interfaceName = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger interfaceName];

    v10 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (interfaceName)
    {
      if (v10)
      {
        *buf = 136315394;
        selfCopy2 = "[WiFiUsageLQMWindowAnalysis performAnalysis]";
        v58 = 2112;
        selfCopy = self;
        _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Fetching after kernel rolling window for analysis: %@", buf, 0x16u);
      }

      interfaceName3 = objc_opt_new();
      interfaceName2 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger interfaceName];
      v13 = [(WiFiUsageLQMWindowAnalysis *)self fetchKernelLQMRollingWindowForInterface:interfaceName2 into:interfaceName3];

      if (v13)
      {
        v14 = [WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:v13 withReferenceWindow:self->_windowAfterTrigger andLqmFeatures:self->_lqmWindowsFeatures];
        lqmWindowsFeatures = self->_lqmWindowsFeatures;
        self->_lqmWindowsFeatures = v14;
      }

      goto LABEL_18;
    }

    if (v10)
    {
      interfaceName3 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger interfaceName];
      *buf = 136315394;
      selfCopy2 = "[WiFiUsageLQMWindowAnalysis performAnalysis]";
      v58 = 2112;
      selfCopy = interfaceName3;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot fetch the kernel rolling window (invalid interface name on windowAfterTrigger: %@)", buf, 0x16u);
LABEL_18:
    }
  }

  [(WiFiUsageLQMWindowAnalysis *)self computeFeaturesFor:self->_windowBeforeTrigger WithLogLabel:@"before"];
  [(WiFiUsageLQMWindowAnalysis *)self computeFeaturesFor:self->_windowAfterTrigger WithLogLabel:@"after"];
  v16 = objc_opt_new();
  dimensions = self->dimensions;
  self->dimensions = v16;

  v18 = [(WiFiUsageLQMWindowAnalysis *)self addDimensionsTo:self->dimensions];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v19 = _dateFormatter_1;
    timestamp = [firstObject timestamp];
    v54 = [v19 stringFromDate:?];
    v20 = _dateFormatter_1;
    samples5 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    lastObject2 = [samples5 lastObject];
    timestamp2 = [lastObject2 timestamp];
    v53 = [v20 stringFromDate:?];
    v21 = _dateFormatter_1;
    samples6 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    firstObject2 = [samples6 firstObject];
    timestamp3 = [firstObject2 timestamp];
    v52 = [v21 stringFromDate:timestamp3];
    v23 = _dateFormatter_1;
    samples7 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    lastObject3 = [samples7 lastObject];
    timestamp4 = [lastObject3 timestamp];
    v51 = [v23 stringFromDate:timestamp4];
    networkDetails = [firstObject networkDetails];
    v50 = firstObject;
    if (v55)
    {
      networkDetails2 = [v55 networkDetails];
    }

    else
    {
      networkDetails2 = 0;
    }

    v29 = [(WiFiUsageLQMWindowAnalysis *)self dumpDimensions:self->dimensions];
    v30 = [(WiFiUsageLQMWindowAnalysis *)self dumpAnalysis:self->_lqmWindowsFeatures];
    *buf = 138414851;
    selfCopy2 = self;
    v58 = 2112;
    selfCopy = @"before";
    v60 = 2112;
    v61 = v54;
    v62 = 2112;
    v63 = v53;
    v64 = 2112;
    v65 = @"after";
    v66 = 2112;
    v67 = v52;
    v68 = 2112;
    v69 = v51;
    v70 = 2113;
    v71 = networkDetails;
    v72 = 2113;
    v73 = networkDetails2;
    v74 = 2112;
    v75 = v29;
    v76 = 2112;
    v77 = v30;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "LQM_RW - LQM window analysis for %@ (%@: %@ - %@ ; %@: %@ - %@)\n Network at trigger        : %{private}@\n Network at end of analysis: %{private}@\n Context:\n%@\n Features: %@", buf, 0x70u);
    if (v55)
    {
    }

    firstObject = v50;
  }

  [(WiFiUsageLQMWindowAnalysis *)self computeBins:self->_lqmWindowsFeatures WithSampleKind:objc_opt_class()];
  v31 = objc_alloc(MEMORY[0x277CBEAC0]);
  v32 = 0x277CBE000uLL;
  v33 = MEMORY[0x277CBEB18];
  allKeys = [(NSMutableDictionary *)self->_lqmWindowsFeatures allKeys];
  v35 = [v33 arrayWithArray:allKeys];
  metricNameCDF = self->_metricNameCDF;
  allKeys2 = [(NSMutableDictionary *)self->_lqmWindowsFeatures allKeys];
  v38 = [allKeys2 count];
  v39 = MEMORY[0x277CBEB18];
  if (v38)
  {
    v32 = objc_opt_new();
    v40 = [v39 arrayWithObject:v32];
  }

  else
  {
    v40 = objc_opt_new();
  }

  v41 = [v31 initWithObjectsAndKeys:{v35, metricNameCDF, v40, self->_metricNameSankey, 0}];
  summary = self->_summary;
  self->_summary = v41;

  if (v38)
  {

    v40 = v32;
  }

  lastObject = v55;
LABEL_32:
  if (!self->_isDone)
  {
    completionHandler = self->_completionHandler;
    if (completionHandler)
    {
      self->_isDone = 1;
      completionHandler[2](completionHandler, self);
    }
  }
}

- (os_state_data_s)_generateState
{
  v70 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v63 = "[WiFiUsageLQMWindowAnalysis _generateState]";
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: BEGIN", buf, 0xCu);
  }

  samples = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  if (samples)
  {
    samples2 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    firstObject = [samples2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  samples3 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  if (samples3)
  {
    samples4 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    lastObject = [samples4 lastObject];
  }

  else
  {
    lastObject = 0;
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  v11 = dictionary2;
  if (!(firstObject | lastObject))
  {
    v25 = 0;
LABEL_23:
    v43 = 0;
    v44 = 0;
    goto LABEL_24;
  }

  v61 = dictionary2;
  v58 = dictionary;
  array = [MEMORY[0x277CBEB18] array];
  v52 = MEMORY[0x277CCACA8];
  v53 = array;
  v13 = _dateFormatter_1;
  timestamp = [firstObject timestamp];
  v51 = [v13 stringFromDate:timestamp];
  v14 = _dateFormatter_1;
  samples5 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject2 = [samples5 lastObject];
  timestamp2 = [lastObject2 timestamp];
  [v14 stringFromDate:timestamp2];
  v15 = v60 = firstObject;
  v16 = _dateFormatter_1;
  samples6 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  firstObject2 = [samples6 firstObject];
  timestamp3 = [firstObject2 timestamp];
  v20 = [v16 stringFromDate:timestamp3];
  v21 = _dateFormatter_1;
  v59 = lastObject;
  timestamp4 = [lastObject timestamp];
  v23 = [v21 stringFromDate:timestamp4];
  v24 = [v52 stringWithFormat:@"LQM window analysis for %@ (%@: %@ - %@  %@: %@ - %@)\n", self, @"before", v51, v15, @"after", v20, v23];;
  v25 = v53;
  [v53 addObject:v24];

  firstObject = v60;
  if (v60)
  {
    v26 = MEMORY[0x277CCACA8];
    networkDetails = [v60 networkDetails];
    v28 = [v26 stringWithFormat:@"Network at trigger: %@", networkDetails];
    [v53 addObject:v28];
  }

  dictionary = v58;
  lastObject = v59;
  if (v59)
  {
    v29 = MEMORY[0x277CCACA8];
    networkDetails2 = [v59 networkDetails];
    v31 = [v29 stringWithFormat:@"Network at end of analysis: %@", networkDetails2];
    [v53 addObject:v31];
  }

  if (v58)
  {
    v32 = [(WiFiUsageLQMWindowAnalysis *)self addDimensionsTo:v58];
    v33 = MEMORY[0x277CCACA8];
    v34 = [(WiFiUsageLQMWindowAnalysis *)self dumpDimensions:v58];
    v35 = [v33 stringWithFormat:@"Context: %@", v34];
    [v53 addObject:v35];
  }

  v11 = v61;
  if (v61)
  {
    v36 = objc_opt_class();
    samples7 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
    [v36 computeFeatures:v61 For:samples7 WithLogLabel:@"before"];

    v38 = objc_opt_class();
    samples8 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
    [v38 computeFeatures:v61 For:samples8 WithLogLabel:@"after"];

    v40 = MEMORY[0x277CCACA8];
    v41 = [(WiFiUsageLQMWindowAnalysis *)self dumpAnalysis:v61];
    v42 = [v40 stringWithFormat:@"Features: %@", v41];
    [v53 addObject:v42];

    v11 = v61;
  }

  if (!v53)
  {
    goto LABEL_23;
  }

  v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"%s %@", "-[WiFiUsageLQMWindowAnalysis _generateState]", self->_reason];
  v44 = v53;
  v45 = [MEMORY[0x277CCAC58] dataWithPropertyList:v53 format:100 options:0 error:0];
  v25 = v45;
  if (!v45)
  {
LABEL_24:
    v48 = 0;
    v46 = 0;
    goto LABEL_25;
  }

  v46 = [v45 length];
  v47 = malloc_type_calloc(1uLL, v46 + 200, 0x1000040BEF03554uLL);
  v48 = v47;
  if (v47)
  {
    v47->var0 = 1;
    v47->var1.var1 = v46;
    [v43 UTF8String];
    __strlcpy_chk();
    memcpy(v48->var4, [v25 bytes], v46);
  }

LABEL_25:
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v49 = "success";
    *buf = 136315906;
    v63 = "[WiFiUsageLQMWindowAnalysis _generateState]";
    v64 = 2080;
    if (!v48)
    {
      v49 = "failed";
    }

    v65 = v49;
    v66 = 2048;
    v67 = v46;
    v68 = 1024;
    v69 = 0x8000;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: END (%s), bytes: %zu (limit: %d)", buf, 0x26u);
  }

  return v48;
}

+ (unint64_t)canCreateAnalysisFor:(id)for
{
  forCopy = for;
  if ([_createAnalysisSamplingRates count])
  {
    v4 = [_createAnalysisSamplingRates objectForKeyedSubscript:forCopy];
    LODWORD(v5) = arc4random_uniform([v4 samplingBase]);

    v6 = [_createAnalysisSamplingRates objectForKeyedSubscript:forCopy];
    if (v6)
    {
      v7 = [_createAnalysisSamplingRates objectForKeyedSubscript:forCopy];
      if (v5 >= [v7 samplingRate])
      {
        v5 = 0;
      }

      else
      {
        v5 = v5;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 1;
  }

  return v5;
}

- (BOOL)canSubmitToCA
{
  diceRoll = self->_diceRoll;
  if (![_submitToCASamplingRates count])
  {
    return 1;
  }

  v4 = [_createAnalysisSamplingRates objectForKeyedSubscript:self->_reason];
  samplingBase = [v4 samplingBase];
  v6 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
  samplingBase2 = [v6 samplingBase];

  if (samplingBase != samplingBase2)
  {
    v8 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
    diceRoll = arc4random_uniform([v8 samplingBase]);
  }

  v9 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
  if (v9)
  {
    v10 = [_submitToCASamplingRates objectForKeyedSubscript:self->_reason];
    v11 = diceRoll < [v10 samplingRate];
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)metricCallbackForMetric:(id)metric AndField:(id)field
{
  v36 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  fieldCopy = field;
  v8 = objc_opt_new();
  if ([metricCopy hasPrefix:self->_metricNameSankey])
  {
    v27 = fieldCopy;
    v28 = metricCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = self->_lqmWindowsFeatures;
    v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v9)
    {
      v10 = v9;
      v30 = *v32;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v32 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v31 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:v12];
          v14 = [v13 objectForKeyedSubscript:@"before"];
          v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, @"before"];
          [v8 setObject:v14 forKeyedSubscript:v15];

          v16 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:v12];
          v17 = [v16 objectForKeyedSubscript:@"after"];
          v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v12, @"after"];
          [v8 setObject:v17 forKeyedSubscript:v18];
        }

        v10 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v10);
    }

    fieldCopy = v27;
    metricCopy = v28;
  }

  else
  {
    v19 = [metricCopy hasPrefix:self->_metricNameCDF];
    if (fieldCopy && v19)
    {
      [v8 setObject:fieldCopy forKeyedSubscript:@"fieldName"];
      v20 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:fieldCopy];
      v21 = [v20 objectForKeyedSubscript:@"before"];
      [v8 setObject:v21 forKeyedSubscript:@"before"];

      v22 = [(NSMutableDictionary *)self->_lqmWindowsFeatures objectForKeyedSubscript:fieldCopy];
      v23 = [v22 objectForKeyedSubscript:@"after"];
      [v8 setObject:v23 forKeyedSubscript:@"after"];
    }
  }

  allKeys = [v8 allKeys];
  v25 = [allKeys count];

  if (v25)
  {
    [v8 addEntriesFromDictionary:self->dimensions];
  }

  return v8;
}

- (id)addDimensionsTo:(id)to
{
  v159 = *MEMORY[0x277D85DE8];
  toCopy = to;
  [toCopy setObject:self->_reason forKeyedSubscript:@"trigger"];
  v5 = MEMORY[0x277CCACA8];
  [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger duration];
  v7 = [v5 stringWithFormat:@"%lu", v6];
  [toCopy setObject:v7 forKeyedSubscript:@"duration"];

  [toCopy setObject:self->_fgApp forKeyedSubscript:@"fgApp"];
  v8 = MEMORY[0x277CCACA8];
  capabilities = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger capabilities];
  v10 = [v8 stringWithFormat:@"%lu", objc_msgSend(capabilities, "maxInterfacePHYRate")];
  [toCopy setObject:v10 forKeyedSubscript:@"deviceTheoreticalMaxRate"];

  v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_inCall];
  [toCopy setObject:v11 forKeyedSubscript:@"inCall"];

  v12 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasKernel];
  [toCopy setObject:v12 forKeyedSubscript:@"hasKernelStats"];

  v13 = [MEMORY[0x277CCABB0] numberWithBool:self->_inA2dp];
  [toCopy setObject:v13 forKeyedSubscript:@"inA2DP"];

  v14 = [MEMORY[0x277CCABB0] numberWithBool:self->_inEsco];
  [toCopy setObject:v14 forKeyedSubscript:@"ineSCO"];

  samples = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject = [samples lastObject];
  networkDetails = [lastObject networkDetails];

  v18 = MEMORY[0x277CCACA8];
  connectedBss = [networkDetails connectedBss];
  v20 = [v18 stringWithFormat:@"%ld", objc_msgSend(connectedBss, "channel")];
  [toCopy setObject:v20 forKeyedSubscript:@"channel"];

  connectedBss2 = [networkDetails connectedBss];
  v22 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [connectedBss2 band]);
  [toCopy setObject:v22 forKeyedSubscript:@"band"];

  v23 = MEMORY[0x277CCACA8];
  connectedBss3 = [networkDetails connectedBss];
  v25 = [v23 stringWithFormat:@"%ld", objc_msgSend(connectedBss3, "channelWidth")];
  [toCopy setObject:v25 forKeyedSubscript:@"channelWidth"];

  connectedBss4 = [networkDetails connectedBss];
  apProfile = [connectedBss4 apProfile];
  [toCopy setObject:apProfile forKeyedSubscript:@"apProfile"];

  connectedBss5 = [networkDetails connectedBss];
  bssid = [connectedBss5 bssid];
  v30 = [WiFiUsagePrivacyFilter sanitizedOUI:bssid];
  [toCopy setObject:v30 forKeyedSubscript:@"oui"];

  v146 = networkDetails;
  connectedBss6 = [networkDetails connectedBss];
  bssid2 = [connectedBss6 bssid];
  samples2 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  lastObject2 = [samples2 lastObject];
  networkDetails2 = [lastObject2 networkDetails];
  connectedBss7 = [networkDetails2 connectedBss];
  bssid3 = [connectedBss7 bssid];
  v38 = [bssid2 isEqualToString:bssid3];
  v39 = [MEMORY[0x277CCABB0] numberWithBool:v38];
  [toCopy setObject:v39 forKeyedSubscript:@"sameBSSID"];

  v40 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowBeforeTrigger, "hasChanged:", @"networkDetails.connectedBss.channel"}];
  [toCopy setObject:v40 forKeyedSubscript:@"channel_hasChanged_inBefore"];

  v41 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowAfterTrigger, "hasChanged:", @"networkDetails.connectedBss.channel"}];
  [toCopy setObject:v41 forKeyedSubscript:@"channel_hasChanged_inAfter"];

  v42 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowBeforeTrigger, "hasChanged:", @"networkDetails.connectedBss.band"}];
  [toCopy setObject:v42 forKeyedSubscript:@"band_hasChanged_inBefore"];

  v43 = [MEMORY[0x277CCABB0] numberWithBool:{-[WiFiUsageLQMRollingWindow hasChanged:](self->_windowAfterTrigger, "hasChanged:", @"networkDetails.connectedBss.band"}];
  v147 = toCopy;
  [toCopy setObject:v43 forKeyedSubscript:@"band_hasChanged_inAfter"];

  v44 = objc_opt_new();
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v45 = self->_preceedingTriggers;
  v46 = [(NSArray *)v45 countByEnumeratingWithState:&v153 objects:v158 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v154;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v154 != v48)
        {
          objc_enumerationMutation(v45);
        }

        trigger = [*(*(&v153 + 1) + 8 * i) trigger];
        [v44 appendFormat:@"&%@", trigger];
      }

      v47 = [(NSArray *)v45 countByEnumeratingWithState:&v153 objects:v158 count:16];
    }

    while (v47);
  }

  v145 = v44;
  [toCopy setObject:v44 forKeyedSubscript:@"preceedingTriggers"];
  v148 = objc_opt_new();
  v149 = 0u;
  v150 = 0u;
  v151 = 0u;
  v152 = 0u;
  v51 = self->_subsequentTriggers;
  v52 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v149 objects:v157 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v150;
    do
    {
      for (j = 0; j != v53; ++j)
      {
        if (*v150 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v149 + 1) + 8 * j);
        timestamp = [v56 timestamp];
        timestamp = self->_timestamp;
        [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger duration];
        v59 = [(NSDate *)timestamp dateByAddingTimeInterval:?];
        v60 = [timestamp compare:v59];

        if (v60 != 1)
        {
          trigger2 = [v56 trigger];
          [v148 appendFormat:@"&%@", trigger2];
        }
      }

      v53 = [(NSMutableArray *)v51 countByEnumeratingWithState:&v149 objects:v157 count:16];
    }

    while (v53);
  }

  [v147 setObject:v148 forKeyedSubscript:@"subsequentTriggers"];
  [v147 setObject:self->_firstSubsequentLinkDownReason forKeyedSubscript:@"firstSubsequentLinkDownReason"];
  v62 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v146, "hasEnterpriseSecurity")}];
  [v147 setObject:v62 forKeyedSubscript:@"isEnterprise"];

  v63 = [WiFiUsagePrivacyFilter getLabelsForNetworkProperties:v146];
  [v147 addEntriesFromDictionary:v63];

  bssEnvironment = [v146 bssEnvironment];
  [v147 setObject:bssEnvironment forKeyedSubscript:@"bssEnvironment"];

  privateMacType = [v146 privateMacType];
  [v147 setObject:privateMacType forKeyedSubscript:@"privateMacType"];

  v66 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v146, "privateRelayEnabled")}];
  [v147 setObject:v66 forKeyedSubscript:@"privacyProxyEnabled"];

  samples3 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject3 = [samples3 lastObject];
  motionState = [lastObject3 motionState];
  [v147 setObject:motionState forKeyedSubscript:@"motionStatus"];

  v70 = MEMORY[0x277CCABB0];
  samples4 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject4 = [samples4 lastObject];
  v73 = [v70 numberWithBool:{objc_msgSend(lastObject4, "isAnyAppInFG")}];
  [v147 setObject:v73 forKeyedSubscript:@"isAnyAppInFG"];

  v74 = MEMORY[0x277CCABB0];
  samples5 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject5 = [samples5 lastObject];
  v77 = [v74 numberWithBool:{objc_msgSend(lastObject5, "isFTactive")}];
  [v147 setObject:v77 forKeyedSubscript:@"isFTactive"];

  v78 = MEMORY[0x277CCABB0];
  samples6 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject6 = [samples6 lastObject];
  v81 = [v78 numberWithBool:{objc_msgSend(lastObject6, "isTimeSensitiveAppRunning")}];
  [v147 setObject:v81 forKeyedSubscript:@"isTimeSensitiveAppRunning"];

  samples7 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject7 = [samples7 lastObject];
  v84 = +[WiFiUsageLQMTransformations getLabelTrafficState:](WiFiUsageLQMTransformations, "getLabelTrafficState:", [lastObject7 trafficState]);
  [v147 setObject:v84 forKeyedSubscript:@"last_trafficState_before"];

  if (+[WiFiUsagePrivacyFilter isInternalInstall](WiFiUsagePrivacyFilter, "isInternalInstall") && [v146 isInternal])
  {
    networkName = [v146 networkName];
    [v147 setObject:networkName forKeyedSubscript:@"NetworkName"];

    connectedBss8 = [v146 connectedBss];
    bssid4 = [connectedBss8 bssid];
    v88 = [WiFiUsageAccessPointProfile apNameForBSSID:bssid4];

    v89 = [[WiFiUsageAppleWiFiNameBlocks alloc] initWithAPName:v88];
    [v147 setObject:v88 forKeyedSubscript:@"apName"];
    if (v89)
    {
      building = [(WiFiUsageAppleWiFiNameBlocks *)v89 building];
      [v147 setObject:building forKeyedSubscript:@"apNamePortionA"];

      section = [(WiFiUsageAppleWiFiNameBlocks *)v89 section];
      [v147 setObject:section forKeyedSubscript:@"apNamePortionB"];

      floor = [(WiFiUsageAppleWiFiNameBlocks *)v89 floor];
      [v147 setObject:floor forKeyedSubscript:@"apNamePortionC"];

      v93 = [(WiFiUsageAppleWiFiNameBlocks *)v89 pod];
      [v147 setObject:v93 forKeyedSubscript:@"apNamePortionD"];

      other = [(WiFiUsageAppleWiFiNameBlocks *)v89 other];
      [v147 setObject:other forKeyedSubscript:@"apNamePortionE"];
    }
  }

  samples8 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  lastObject8 = [samples8 lastObject];
  timestamp2 = [lastObject8 timestamp];
  samples9 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  firstObject = [samples9 firstObject];
  timestamp3 = [firstObject timestamp];
  [timestamp2 timeIntervalSinceDate:timestamp3];
  v102 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v101 As:0];
  [v147 setObject:v102 forKeyedSubscript:@"windowSpan_before"];

  samples10 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  lastObject9 = [samples10 lastObject];
  timestamp4 = [lastObject9 timestamp];
  samples11 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  firstObject2 = [samples11 firstObject];
  timestamp5 = [firstObject2 timestamp];
  [timestamp4 timeIntervalSinceDate:timestamp5];
  v110 = [WiFiUsagePrivacyFilter getBinEvery10Over100:v109 As:0];
  [v147 setObject:v110 forKeyedSubscript:@"windowSpan_after"];

  samples12 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger samples];
  v112 = +[WiFiUsagePrivacyFilter getBinEvery10Over100:As:](WiFiUsagePrivacyFilter, "getBinEvery10Over100:As:", [samples12 count], 0);
  [v147 setObject:v112 forKeyedSubscript:@"samplesCount_before"];

  samples13 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  v114 = +[WiFiUsagePrivacyFilter getBinEvery10Over100:As:](WiFiUsagePrivacyFilter, "getBinEvery10Over100:As:", [samples13 count], 0);
  [v147 setObject:v114 forKeyedSubscript:@"samplesCount_after"];

  samples14 = [(WiFiUsageLQMRollingWindow *)self->_windowAfterTrigger samples];
  lastObject10 = [samples14 lastObject];
  networkDetails3 = [lastObject10 networkDetails];

  v118 = MEMORY[0x277CCACA8];
  connectedBss9 = [networkDetails3 connectedBss];
  v120 = [v118 stringWithFormat:@"%ld", objc_msgSend(connectedBss9, "channel")];
  [v147 setObject:v120 forKeyedSubscript:@"channel_after"];

  connectedBss10 = [networkDetails3 connectedBss];
  v122 = +[WiFiUsagePrivacyFilter bandAsString:](WiFiUsagePrivacyFilter, "bandAsString:", [connectedBss10 band]);
  [v147 setObject:v122 forKeyedSubscript:@"band_after"];

  v123 = MEMORY[0x277CCACA8];
  connectedBss11 = [networkDetails3 connectedBss];
  v125 = [v123 stringWithFormat:@"%ld", objc_msgSend(connectedBss11, "channelWidth")];
  [v147 setObject:v125 forKeyedSubscript:@"channelWidth_after"];

  connectedBss12 = [networkDetails3 connectedBss];
  apProfile2 = [connectedBss12 apProfile];
  [v147 setObject:apProfile2 forKeyedSubscript:@"apProfile_after"];

  connectedBss13 = [networkDetails3 connectedBss];
  bssid5 = [connectedBss13 bssid];
  v130 = [WiFiUsagePrivacyFilter sanitizedOUI:bssid5];
  [v147 setObject:v130 forKeyedSubscript:@"oui_after"];

  v131 = [WiFiUsagePrivacyFilter getLabelsForNetworkProperties:networkDetails3];
  [v147 addEntriesFromDictionary:v131];

  bssEnvironment2 = [networkDetails3 bssEnvironment];
  [v147 setObject:bssEnvironment2 forKeyedSubscript:@"bssEnvironment_after"];

  privateMacType2 = [networkDetails3 privateMacType];
  [v147 setObject:privateMacType2 forKeyedSubscript:@"privateMacType_after"];

  v134 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(networkDetails3, "privateRelayEnabled")}];
  [v147 setObject:v134 forKeyedSubscript:@"privacyProxyEnabled_after"];

  if (+[WiFiUsagePrivacyFilter isInternalInstall](WiFiUsagePrivacyFilter, "isInternalInstall") && [networkDetails3 isInternal])
  {
    connectedBss14 = [networkDetails3 connectedBss];
    bssid6 = [connectedBss14 bssid];
    v137 = [WiFiUsageAccessPointProfile apNameForBSSID:bssid6];

    v138 = [[WiFiUsageAppleWiFiNameBlocks alloc] initWithAPName:v137];
    [v147 setObject:v137 forKeyedSubscript:@"apName_after"];
    if (v138)
    {
      building2 = [(WiFiUsageAppleWiFiNameBlocks *)v138 building];
      [v147 setObject:building2 forKeyedSubscript:@"apNamePortionA_after"];

      section2 = [(WiFiUsageAppleWiFiNameBlocks *)v138 section];
      [v147 setObject:section2 forKeyedSubscript:@"apNamePortionB_after"];

      floor2 = [(WiFiUsageAppleWiFiNameBlocks *)v138 floor];
      [v147 setObject:floor2 forKeyedSubscript:@"apNamePortionC_after"];

      v142 = [(WiFiUsageAppleWiFiNameBlocks *)v138 pod];
      [v147 setObject:v142 forKeyedSubscript:@"apNamePortionD_after"];

      other2 = [(WiFiUsageAppleWiFiNameBlocks *)v138 other];
      [v147 setObject:other2 forKeyedSubscript:@"apNamePortionE_after"];
    }
  }

  return v147;
}

- (id)dumpAnalysis:(id)analysis
{
  v35 = *MEMORY[0x277D85DE8];
  analysisCopy = analysis;
  v4 = [MEMORY[0x277CCAB68] stringWithFormat:@"(format: fieldName=<feature %@>|<feature %@>|<median change>)\n", @"before", @"after"];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  allKeys = [analysisCopy allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  obj = v6;
  v27 = [v6 countByEnumeratingWithState:&v30 objects:v34 count:16];
  if (v27)
  {
    v26 = *v31;
    v22 = analysisCopy;
    do
    {
      for (i = 0; i != v27; ++i)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v30 + 1) + 8 * i);
        [v4 appendFormat:@"%@=", v8];
        v29 = [analysisCopy objectForKeyedSubscript:v8];
        v9 = [v29 objectForKeyedSubscript:@"before"];
        v28 = [analysisCopy objectForKeyedSubscript:v8];
        v10 = [v28 objectForKeyedSubscript:@"after"];
        v11 = [analysisCopy objectForKeyedSubscript:v8];
        v12 = [v11 objectForKeyedSubscript:@"after"];
        if (objc_opt_respondsToSelector())
        {
          v24 = MEMORY[0x277CCABB0];
          v25 = [analysisCopy objectForKeyedSubscript:v8];
          v13 = [v25 objectForKeyedSubscript:@"after"];
          [v13 doubleValue];
          v15 = v14;
          v16 = [analysisCopy objectForKeyedSubscript:v8];
          v17 = [v16 objectForKeyedSubscript:@"before"];
          [v17 doubleValue];
          [v24 numberWithDouble:v15 - v18];
          v20 = v19 = v4;
          [v19 appendFormat:@"%@|%@|%@", v9, v10, v20];

          v4 = v19;
          analysisCopy = v22;
        }

        else
        {
          [v4 appendFormat:@"%@|%@|%@", v9, v10, &stru_28487EF20];
        }

        [v4 appendString:@";"];
      }

      v27 = [obj countByEnumeratingWithState:&v30 objects:v34 count:16];
    }

    while (v27);
  }

  return v4;
}

- (id)dumpDimensions:(id)dimensions
{
  v19 = *MEMORY[0x277D85DE8];
  dimensionsCopy = dimensions;
  v4 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  allKeys = [dimensionsCopy allKeys];
  v6 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = [dimensionsCopy objectForKeyedSubscript:v11];
        [v4 appendFormat:@"%@=%@;", v11, v12];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v4;
}

- (id)fetchKernelLQMRollingWindowForInterface:(id)interface into:(id)into
{
  interfaceCopy = interface;
  intoCopy = into;
  v7 = Apple80211Open();
  if (v7)
  {
    [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:v7 into:?];
  }

  else
  {
    v8 = Apple80211BindToInterface();
    if (v8)
    {
      [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:interfaceCopy into:v8];
    }

    else
    {
      v9 = Apple80211Get();
      if (v9)
      {
        [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:v9 into:?];
      }

      else
      {
        v10 = [intoCopy objectForKeyedSubscript:&unk_2848BA7C0];
        if (v10)
        {
          v11 = v10;
          goto LABEL_6;
        }

        [WiFiUsageLQMWindowAnalysis fetchKernelLQMRollingWindowForInterface:into:];
      }
    }
  }

  v11 = 0;
LABEL_6:

  return v11;
}

- (BOOL)getBeforeKernelWindowWithLikelyhood
{
  v44 = *MEMORY[0x277D85DE8];
  diceRoll = self->_diceRoll;
  v4 = [_createAnalysisSamplingRates objectForKeyedSubscript:self->_reason];
  samplingBase = [v4 samplingBase];
  v6 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
  samplingBase2 = [v6 samplingBase];

  if (samplingBase != samplingBase2)
  {
    v8 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
    diceRoll = arc4random_uniform([v8 samplingBase]);
  }

  v9 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
  if (!v9)
  {
    v13 = 0;
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
  samplingRate = [v11 samplingRate];
  v13 = diceRoll < samplingRate;

  if (_isKernelParsingEnabled != 1 || diceRoll >= samplingRate)
  {
LABEL_9:
    v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
    if (v14)
    {
      if (_isKernelParsingEnabled)
      {
        v15 = @"YES";
      }

      else
      {
        v15 = @"NO";
      }

      if (v13)
      {
        v16 = @"YES";
      }

      else
      {
        v16 = @"NO";
      }

      v17 = self->_diceRoll;
      v18 = [_fetchKernelWindowSamplingRates objectForKeyedSubscript:self->_reason];
      samplingRate2 = [v18 samplingRate];
      v30 = 136316674;
      v31 = "[WiFiUsageLQMWindowAnalysis getBeforeKernelWindowWithLikelyhood]";
      if (+[WiFiUsageLQMKernelRollingWindow isOngoing])
      {
        v20 = @"YES";
      }

      else
      {
        v20 = @"NO";
      }

      v32 = 2112;
      selfCopy2 = self;
      v34 = 2112;
      v35 = v15;
      v36 = 2112;
      v37 = v16;
      v38 = 2048;
      v39 = v17;
      v40 = 1024;
      v41 = samplingRate2;
      v42 = 2112;
      v43 = v20;
      _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Not fetching before kernel rolling window for analysis: %@ (enabled: %@ - sampling:%@(%lu>=%u) - ongoing kernel window parsing:%@)", &v30, 0x44u);

LABEL_20:
      LOBYTE(v14) = 0;
      return v14;
    }

    return v14;
  }

  if (+[WiFiUsageLQMKernelRollingWindow isOngoing])
  {
    v13 = 1;
    goto LABEL_9;
  }

  interfaceName = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];

  v14 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
  if (!interfaceName)
  {
    if (!v14)
    {
      return v14;
    }

    interfaceName2 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];
    v30 = 136315394;
    v31 = "[WiFiUsageLQMWindowAnalysis getBeforeKernelWindowWithLikelyhood]";
    v32 = 2112;
    selfCopy2 = interfaceName2;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s - Cannot fetch the kernel rolling window (invalid interface name on windowBeforeTrigger: %@)", &v30, 0x16u);

    goto LABEL_20;
  }

  if (v14)
  {
    interfaceName3 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];
    v30 = 136315650;
    v31 = "[WiFiUsageLQMWindowAnalysis getBeforeKernelWindowWithLikelyhood]";
    v32 = 2112;
    selfCopy2 = self;
    v34 = 2112;
    v35 = interfaceName3;
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "%s: Fetching before kernel rolling window for analysis %@ on interface %@", &v30, 0x20u);
  }

  v23 = objc_opt_new();
  interfaceName4 = [(WiFiUsageLQMRollingWindow *)self->_windowBeforeTrigger interfaceName];
  v25 = [(WiFiUsageLQMWindowAnalysis *)self fetchKernelLQMRollingWindowForInterface:interfaceName4 into:v23];

  if (v25)
  {
    v26 = [WiFiUsageLQMKernelRollingWindow kernelLQMRollingWindow:v25 withReferenceWindow:self->_windowBeforeTrigger andLqmFeatures:self->_lqmWindowsFeatures];
    lqmWindowsFeatures = self->_lqmWindowsFeatures;
    self->_lqmWindowsFeatures = v26;
  }

  if ([(NSMutableDictionary *)self->_lqmWindowsFeatures count])
  {
    self->_hasKernel = 1;
  }

  LOBYTE(v14) = 1;
  return v14;
}

- (void)fetchKernelLQMRollingWindowForInterface:(int)a1 into:.cold.1(int a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    strerror(a1);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }
}

- (void)fetchKernelLQMRollingWindowForInterface:(uint64_t)a1 into:(int)a2 .cold.2(uint64_t a1, int a2)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    strerror(a2);
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v3, v4, v5, v6, v7, 0x26u);
  }
}

- (void)fetchKernelLQMRollingWindowForInterface:(int)a1 into:.cold.3(int a1)
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    strerror(a1);
    OUTLINED_FUNCTION_0_8();
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v2, v3, v4, v5, v6, 0x1Cu);
  }
}

- (void)fetchKernelLQMRollingWindowForInterface:into:.cold.4()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    OUTLINED_FUNCTION_1_5();
    _os_log_impl(v0, v1, v2, v3, v4, 0xCu);
  }
}

@end