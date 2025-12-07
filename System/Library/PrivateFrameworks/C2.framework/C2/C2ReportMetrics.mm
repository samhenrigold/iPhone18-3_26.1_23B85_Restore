@interface C2ReportMetrics
+ (BOOL)useCloudTelemetryService;
+ (id)gzipDecode:(id)decode;
+ (id)gzipEncode:(id)encode;
+ (id)metricsForMetricRequestOptions:(id)options networkEvent:(id)event genericEvent:(id)genericEvent triggers:(int)triggers;
+ (id)requestForMetricRequestOptions:(id)options metrics:(id)metrics;
+ (void)_c2FormatValueForRTC:(id)c keyPrefix:(id)prefix targetDictionary:(id)dictionary multipleOperationGroups:(BOOL)groups;
+ (void)_reportWithOptions:(id)options networkEvent:(id)event genericEvent:(id)genericEvent triggers:(int)triggers eventName:(id)name startTime:(id)time endTime:(id)endTime attributes:(id)self0;
+ (void)reportMetricWithOptions:(id)options genericMetricType:(int64_t)type eventName:(id)name startTime:(id)time endTime:(id)endTime attributes:(id)attributes;
+ (void)reportNetworkEvent:(id)event triggers:(int)triggers originalSessionTask:(id)task;
- (C2ReportMetrics)initWithMetricRequest:(id)request metricRequestOptions:(id)options ignoreRequestThrottle:(BOOL)throttle requestThrottleIdentifier:(id)identifier requestThrottleLimit:(unint64_t)limit;
- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error;
- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error;
- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream;
- (void)send;
@end

@implementation C2ReportMetrics

+ (BOOL)useCloudTelemetryService
{
  v2 = _os_feature_enabled_impl();
  if (v2)
  {
    LOBYTE(v2) = MGGetProductType() != 3348380076;
  }

  return v2;
}

+ (id)metricsForMetricRequestOptions:(id)options networkEvent:(id)event genericEvent:(id)genericEvent triggers:(int)triggers
{
  optionsCopy = options;
  eventCopy = event;
  genericEventCopy = genericEvent;
  metricOptions = [optionsCopy metricOptions];
  if (!metricOptions)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v13 = +[C2Metric generateDeviceInfo];
  if (v13)
  {
    generateCloudKitInfo = [metricOptions generateCloudKitInfo];
    if (!generateCloudKitInfo)
    {
      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v15 = objc_alloc_init(C2MPMetric);
    v16 = v15;
    if (v15)
    {
      [(C2MPMetric *)v15 setDeviceInfo:v13];
      [(C2MPMetric *)v16 setCloudkitInfo:generateCloudKitInfo];
      [(C2MPMetric *)v16 setTriggers:triggers];
      -[C2MPMetric setReportFrequency:](v16, "setReportFrequency:", [metricOptions reportFrequency]);
      -[C2MPMetric setReportFrequencyBase:](v16, "setReportFrequencyBase:", [metricOptions reportFrequencyBase]);
      -[C2MPMetric setReportTransportAllowExpensiveAccess:](v16, "setReportTransportAllowExpensiveAccess:", [optionsCopy _allowsExpensiveAccess] != 0);
      -[C2MPMetric setReportTransportAllowPowerNapScheduling:](v16, "setReportTransportAllowPowerNapScheduling:", [optionsCopy _allowsPowerNapScheduling] != 0);
      _sourceApplicationBundleIdentifier = [optionsCopy _sourceApplicationBundleIdentifier];
      [(C2MPMetric *)v16 setReportTransportSourceApplicationBundleIdentifier:_sourceApplicationBundleIdentifier];

      _sourceApplicationSecondaryIdentifier = [optionsCopy _sourceApplicationSecondaryIdentifier];
      [(C2MPMetric *)v16 setReportTransportSourceApplicationSecondaryIdentifier:_sourceApplicationSecondaryIdentifier];

      if (eventCopy || !genericEventCopy)
      {
        v19 = 0;
        if (!eventCopy || genericEventCopy)
        {
          goto LABEL_16;
        }

        [(C2MPMetric *)v16 setMetricType:200];
        [(C2MPMetric *)v16 setNetworkEvent:eventCopy];
      }

      else
      {
        [(C2MPMetric *)v16 setMetricType:201];
        [(C2MPMetric *)v16 setGenericEvent:genericEventCopy];
      }

      deviceInfo = [(C2MPMetric *)v16 deviceInfo];
      [deviceInfo setProcessUuid:0];

      cloudkitInfo = [(C2MPMetric *)v16 cloudkitInfo];
      [cloudkitInfo setContainerScopedDeviceIdentifier:0];

      cloudkitInfo2 = [(C2MPMetric *)v16 cloudkitInfo];
      [cloudkitInfo2 setContainerScopedUserIdentifier:0];

      networkEvent = [(C2MPMetric *)v16 networkEvent];
      [networkEvent setNetworkConnectionUuid:0];

      v19 = v16;
    }

    else
    {
      v19 = 0;
    }

LABEL_16:

    goto LABEL_17;
  }

  v19 = 0;
LABEL_18:

LABEL_19:

  return v19;
}

+ (id)requestForMetricRequestOptions:(id)options metrics:(id)metrics
{
  metricsCopy = metrics;
  v6 = metricsCopy;
  v7 = 0;
  if (options && metricsCopy)
  {
    metricOptions = [options metricOptions];
    v9 = metricOptions;
    if (metricOptions)
    {
      c2MetricsEndpoint = [metricOptions c2MetricsEndpoint];
      v11 = c2MetricsEndpoint;
      if (c2MetricsEndpoint)
      {
        v12 = [c2MetricsEndpoint URLByAppendingPathComponent:@"c2"];
        if (v12)
        {
          v13 = [objc_alloc(MEMORY[0x277CCAB70]) initWithURL:v12];
          if (v13)
          {
            v14 = objc_alloc_init(MEMORY[0x277D43178]);
            if (v14)
            {
              [v6 writeTo:v14];
              immutableData = [v14 immutableData];
              if (immutableData)
              {
                v16 = [objc_opt_class() gzipEncode:immutableData];
                if (v16)
                {
                  [v13 setHTTPMethod:@"POST"];
                  [v13 setHTTPBody:v16];
                  [v13 setValue:@"application/protobuf" forHTTPHeaderField:@"Content-Type"];
                  [v13 setValue:@"gzip" forHTTPHeaderField:@"Content-Encoding"];
                  v7 = v13;
                }

                else
                {
                  v7 = 0;
                }
              }

              else
              {
                v7 = 0;
              }
            }

            else
            {
              v7 = 0;
            }
          }

          else
          {
            v7 = 0;
          }
        }

        else
        {
          v7 = 0;
        }
      }

      else
      {
        v7 = 0;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  return v7;
}

+ (id)gzipEncode:(id)encode
{
  v10 = *MEMORY[0x277D85DE8];
  encodeCopy = encode;
  bzero(v9, 0x2000uLL);
  data = [MEMORY[0x277CBEB28] data];
  memset(&v8, 0, sizeof(v8));
  if (deflateInit2_(&v8, -1, 8, 31, 8, 0, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v6 = encodeCopy;
    v8.avail_in = [v6 length];
    do
    {
      v8.avail_out = 0x2000;
      v8.next_out = v9;
      if (deflate(&v8, 4) == -2)
      {
        +[C2ReportMetrics gzipEncode:];
      }

      [data appendBytes:v9 length:0x2000 - v8.avail_out];
    }

    while (!v8.avail_out);
    if (v8.avail_in)
    {
      +[C2ReportMetrics gzipEncode:];
    }

    deflateEnd(&v8);
    v5 = data;
  }

  return v5;
}

+ (id)gzipDecode:(id)decode
{
  v10 = *MEMORY[0x277D85DE8];
  decodeCopy = decode;
  bzero(v9, 0x2000uLL);
  data = [MEMORY[0x277CBEB28] data];
  memset(&v8, 0, sizeof(v8));
  if (inflateInit2_(&v8, 31, "1.2.12", 112))
  {
    v5 = 0;
  }

  else
  {
    v6 = decodeCopy;
    v8.avail_in = [v6 length];
    do
    {
      v8.avail_out = 0x2000;
      v8.next_out = v9;
      if (inflate(&v8, 4) == -2)
      {
        +[C2ReportMetrics gzipDecode:];
      }

      [data appendBytes:v9 length:0x2000 - v8.avail_out];
    }

    while (!v8.avail_out);
    if (v8.avail_in)
    {
      +[C2ReportMetrics gzipDecode:];
    }

    inflateEnd(&v8);
    v5 = data;
  }

  return v5;
}

+ (void)reportNetworkEvent:(id)event triggers:(int)triggers originalSessionTask:(id)task
{
  v6 = *&triggers;
  eventCopy = event;
  taskCopy = task;
  v8 = objc_autoreleasePoolPush();
  options = [taskCopy options];
  v10 = [[C2MetricRequestOptions alloc] initWithRequestOptions:options];
  [objc_opt_class() _reportWithOptions:v10 networkEvent:eventCopy genericEvent:0 triggers:v6 eventName:0 startTime:0 endTime:0 attributes:0];

  objc_autoreleasePoolPop(v8);
}

+ (void)reportMetricWithOptions:(id)options genericMetricType:(int64_t)type eventName:(id)name startTime:(id)time endTime:(id)endTime attributes:(id)attributes
{
  optionsCopy = options;
  nameCopy = name;
  timeCopy = time;
  endTimeCopy = endTime;
  attributesCopy = attributes;
  v17 = objc_autoreleasePoolPush();
  metricOptions = [optionsCopy metricOptions];
  v19 = [metricOptions generateTriggerWithResponseHeader:0];

  v20 = [C2Metric generateGenericEventWithName:nameCopy genericMetricType:type startTime:timeCopy endTime:endTimeCopy attributes:attributesCopy];
  [objc_opt_class() _reportWithOptions:optionsCopy networkEvent:0 genericEvent:v20 triggers:v19 eventName:nameCopy startTime:timeCopy endTime:endTimeCopy attributes:attributesCopy];

  objc_autoreleasePoolPop(v17);
}

+ (void)_c2FormatValueForRTC:(id)c keyPrefix:(id)prefix targetDictionary:(id)dictionary multipleOperationGroups:(BOOL)groups
{
  groupsCopy = groups;
  v59 = *MEMORY[0x277D85DE8];
  cCopy = c;
  prefixCopy = prefix;
  dictionaryCopy = dictionary;
  if (cCopy)
  {
    v13 = 0x277CBE000uLL;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v49[0] = MEMORY[0x277D85DD0];
      v49[1] = 3221225472;
      v49[2] = __91__C2ReportMetrics__c2FormatValueForRTC_keyPrefix_targetDictionary_multipleOperationGroups___block_invoke;
      v49[3] = &unk_278D400C8;
      v53 = groupsCopy;
      v50 = prefixCopy;
      selfCopy = self;
      v51 = dictionaryCopy;
      [cCopy enumerateKeysAndObjectsUsingBlock:v49];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = cCopy;
        v38 = v14;
        if ([prefixCopy isEqualToString:@"generic_event_metric"])
        {
          v42 = prefixCopy;
          selfCopy2 = self;
          v40 = groupsCopy;
          v41 = dictionaryCopy;
          v37 = cCopy;
          v47 = 0u;
          v48 = 0u;
          v45 = 0u;
          v46 = 0u;
          v15 = v14;
          v16 = [v15 countByEnumeratingWithState:&v45 objects:v58 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v46;
            v19 = @"key";
            v20 = 0x277CCA000uLL;
            v39 = v15;
            do
            {
              v21 = 0;
              do
              {
                if (*v46 != v18)
                {
                  objc_enumerationMutation(v15);
                }

                v22 = *(*(&v45 + 1) + 8 * v21);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v23 = v22;
                  v24 = [v23 objectForKeyedSubscript:v19];
                  if (v24)
                  {
                    objc_opt_class();
                    if (objc_opt_isKindOfClass())
                    {
                      v25 = [v23 objectForKeyedSubscript:@"value"];
                      if (v25)
                      {
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          v56 = v24;
                          v57 = v25;
                          [*(v13 + 2752) dictionaryWithObjects:&v57 forKeys:&v56 count:1];
                          v26 = v13;
                          v27 = v19;
                          v29 = v28 = v20;
                          [selfCopy2 _c2FormatValueForRTC:v29 keyPrefix:v42 targetDictionary:v41 multipleOperationGroups:v40];

                          v20 = v28;
                          v19 = v27;
                          v13 = v26;
                          v15 = v39;
                        }
                      }
                    }
                  }
                }

                ++v21;
              }

              while (v17 != v21);
              v17 = [v15 countByEnumeratingWithState:&v45 objects:v58 count:16];
            }

            while (v17);
          }

          cCopy = v37;
          v14 = v38;
          dictionaryCopy = v41;
          prefixCopy = v42;
        }

        else if ([v14 count] == 1)
        {
          firstObject = [v14 firstObject];
          [self _c2FormatValueForRTC:firstObject keyPrefix:prefixCopy targetDictionary:dictionaryCopy multipleOperationGroups:groupsCopy];
        }

        else
        {
          v31 = [v14 count];
          selfCopy3 = self;
          if (v31)
          {
            v32 = v31;
            for (i = 0; i != v32; ++i)
            {
              v34 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", i];
              v54 = v34;
              v35 = [v14 objectAtIndexedSubscript:i];
              v55 = v35;
              v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v55 forKeys:&v54 count:1];
              [selfCopy3 _c2FormatValueForRTC:v36 keyPrefix:prefixCopy targetDictionary:dictionaryCopy multipleOperationGroups:groupsCopy];

              v14 = v38;
            }
          }
        }
      }

      else
      {
        [dictionaryCopy setObject:cCopy forKeyedSubscript:prefixCopy];
      }
    }
  }
}

void __91__C2ReportMetrics__c2FormatValueForRTC_keyPrefix_targetDictionary_multipleOperationGroups___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (([v8 isEqualToString:@"triggers"] & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_frequency") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_frequency_base") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"operation_triggered") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_client_operation_frequency") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_client_operation_frequency_base") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"operation_group_triggered") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_operation_group_frequency") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_operation_group_frequency_base") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_transport_allow_expensive_access") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"report_transport_allow_power_nap_scheduling") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"is_apple_internal") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"product_build") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"product_type") & 1) == 0 && (objc_msgSend(v8, "isEqualToString:", @"product_version") & 1) == 0 && ((*(a1 + 56) & 1) != 0 || (objc_msgSend(v8, "isEqualToString:", @"operation_group_index") & 1) == 0))
  {
    if (*(a1 + 32))
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", *(a1 + 32), v8];
    }

    else
    {
      v6 = v8;
    }

    v7 = v6;
    [*(a1 + 48) _c2FormatValueForRTC:v5 keyPrefix:v6 targetDictionary:*(a1 + 40) multipleOperationGroups:*(a1 + 56)];
  }
}

+ (void)_reportWithOptions:(id)options networkEvent:(id)event genericEvent:(id)genericEvent triggers:(int)triggers eventName:(id)name startTime:(id)time endTime:(id)endTime attributes:(id)self0
{
  v12 = *&triggers;
  v117 = *MEMORY[0x277D85DE8];
  optionsCopy = options;
  eventCopy = event;
  genericEventCopy = genericEvent;
  nameCopy = name;
  timeCopy = time;
  endTimeCopy = endTime;
  attributesCopy = attributes;
  v102 = genericEventCopy;
  v103 = eventCopy;
  v19 = [C2ReportMetrics metricsForMetricRequestOptions:optionsCopy networkEvent:eventCopy genericEvent:genericEventCopy triggers:v12];
  if (v19 && MGGetProductType() != 3348380076)
  {
    cloudkitInfo = [v19 cloudkitInfo];
    operationGroupsCount = [cloudkitInfo operationGroupsCount];

    v22 = objc_alloc_init(MEMORY[0x277CBEB38]);
    metricType = [v19 metricType];
    if (metricType)
    {
      if (metricType == 201)
      {
        v24 = @"generic_event_type";
      }

      else if (metricType == 200)
      {
        v24 = @"network_event_type";
      }

      else
      {
        v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", metricType];
      }
    }

    else
    {
      v24 = @"none_type";
    }

    [v22 setObject:v24 forKeyedSubscript:@"metric_type"];

    if ([v19 metricType] == 200)
    {
      v97 = operationGroupsCount;
      v25 = operationGroupsCount > 1;
      networkEvent = [v19 networkEvent];
      dictionaryRepresentation = [networkEvent dictionaryRepresentation];
      [self _c2FormatValueForRTC:dictionaryRepresentation keyPrefix:@"network_event" targetDictionary:v22 multipleOperationGroups:v25];

      v28 = 1;
LABEL_36:

      operationGroupsCount = v97;
LABEL_37:
      v46 = operationGroupsCount > 1;
      cloudkitInfo2 = [v19 cloudkitInfo];
      dictionaryRepresentation2 = [cloudkitInfo2 dictionaryRepresentation];
      [self _c2FormatValueForRTC:dictionaryRepresentation2 keyPrefix:@"cloudkit_info" targetDictionary:v22 multipleOperationGroups:v46];

      deviceInfo = [v19 deviceInfo];
      dictionaryRepresentation3 = [deviceInfo dictionaryRepresentation];
      [self _c2FormatValueForRTC:dictionaryRepresentation3 keyPrefix:@"device_info" targetDictionary:v22 multipleOperationGroups:v46];

      if (v28 == 1)
      {
        v51 = @"Network";
      }

      else
      {
        if (v28 != 2162)
        {
          +[C2ReportMetrics useCloudTelemetryService];
          goto LABEL_46;
        }

        v51 = @"Operation";
      }

      if (+[C2ReportMetrics useCloudTelemetryService])
      {
        v105 = 0;
        v106 = &v105;
        v107 = 0x2050000000;
        v52 = getCloudTelemetryReporterClass_softClass;
        v108 = getCloudTelemetryReporterClass_softClass;
        if (!getCloudTelemetryReporterClass_softClass)
        {
          *&buf = MEMORY[0x277D85DD0];
          *(&buf + 1) = 3221225472;
          v114 = __getCloudTelemetryReporterClass_block_invoke;
          v115 = &unk_278D400F0;
          v116 = &v105;
          __getCloudTelemetryReporterClass_block_invoke(&buf);
          v52 = v106[3];
        }

        v53 = v52;
        _Block_object_dispose(&v105, 8);
        v54 = [optionsCopy allowsCellularAccess] != 0;
        v55 = [optionsCopy _allowsExpensiveAccess] != 0;
        _sourceApplicationBundleIdentifier = [optionsCopy _sourceApplicationBundleIdentifier];
        [v52 reportWithTeamID:@"4K9A2JBQ2X" eventType:v51 event:v22 allowCellularAccess:v54 allowExpensiveAccess:v55 bundleID:_sourceApplicationBundleIdentifier error:0];
LABEL_57:

        goto LABEL_58;
      }

LABEL_46:
      v57 = *MEMORY[0x277D44040];
      v111[0] = *MEMORY[0x277D44030];
      v111[1] = v57;
      v112[0] = &unk_285473BC0;
      v112[1] = &unk_285473BD8;
      v58 = *MEMORY[0x277D44010];
      v111[2] = *MEMORY[0x277D44080];
      v111[3] = v58;
      v112[2] = &unk_285473BD8;
      v112[3] = MEMORY[0x277CBEC38];
      v111[4] = *MEMORY[0x277D44028];
      _sourceApplicationBundleIdentifier2 = [optionsCopy _sourceApplicationBundleIdentifier];
      v60 = _sourceApplicationBundleIdentifier2;
      v61 = @"com.apple.cloudd";
      if (_sourceApplicationBundleIdentifier2)
      {
        v61 = _sourceApplicationBundleIdentifier2;
      }

      v112[4] = v61;
      _sourceApplicationBundleIdentifier = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v112 forKeys:v111 count:5];

      v62 = *MEMORY[0x277D44090];
      v110[0] = @"com.apple.C2ReportMetrics";
      v63 = *MEMORY[0x277D44098];
      v109[0] = v62;
      v109[1] = v63;
      cloudkitInfo3 = [v19 cloudkitInfo];
      container = [cloudkitInfo3 container];
      v66 = container;
      if (container)
      {
        v67 = container;
      }

      else
      {
        v67 = @"com.apple.C2ReportMetrics";
      }

      v110[1] = v67;
      v68 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v110 forKeys:v109 count:2];

      v104 = 0;
      v69 = [MEMORY[0x277D43FE0] sendOneMessageWithSessionInfo:_sourceApplicationBundleIdentifier userInfo:v68 category:v28 type:0 payload:v22 error:&v104];
      v70 = v104;
      if ((v69 & 1) == 0)
      {
        if (C2_DEFAULT_LOG_BLOCK != -1)
        {
          +[C2ReportMetrics _reportWithOptions:networkEvent:genericEvent:triggers:eventName:startTime:endTime:attributes:];
        }

        v71 = C2_DEFAULT_LOG_INTERNAL;
        if (os_log_type_enabled(C2_DEFAULT_LOG_INTERNAL, OS_LOG_TYPE_ERROR))
        {
          LODWORD(buf) = 138412290;
          *(&buf + 4) = v70;
          _os_log_impl(&dword_242158000, v71, OS_LOG_TYPE_ERROR, "Publishing metric to RTCReporting encountered error: %@", &buf, 0xCu);
        }
      }

      goto LABEL_57;
    }

    if ([v19 metricType] != 201)
    {
      v28 = 3;
      goto LABEL_37;
    }

    v97 = operationGroupsCount;
    genericEvent = [v19 genericEvent];
    type = [genericEvent type];
    if (type > 200)
    {
      if (type == 201)
      {
        v31 = @"cloudkit_client";
        goto LABEL_24;
      }

      if (type == 301)
      {
        v31 = @"server";
        goto LABEL_24;
      }
    }

    else
    {
      if (!type)
      {
        v31 = @"none";
        goto LABEL_24;
      }

      if (type == 101)
      {
        v31 = @"cloudkit";
LABEL_24:
        [v22 setObject:v31 forKeyedSubscript:@"generic_event_type"];

        v32 = nameCopy;
        genericEvent2 = [v19 genericEvent];
        type2 = [genericEvent2 type];

        if (type2 == 201)
        {
          v35 = MEMORY[0x277CCACA8];
          cloudkitInfo4 = [v19 cloudkitInfo];
          container2 = [cloudkitInfo4 container];
          networkEvent = [v35 stringWithFormat:@"%@:%@", container2, v32];

          v38 = 6;
        }

        else
        {
          v38 = 2;
          networkEvent = v32;
        }

        [v22 setObject:v32 forKeyedSubscript:@"generic_event_name"];
        c2UniformlyDistributedIdentifier = [networkEvent c2UniformlyDistributedIdentifier];
        if (timeCopy)
        {
          [v22 setObject:timeCopy forKeyedSubscript:@"generic_event_startTime"];
          v39 = MEMORY[0x277CCABB0];
          [timeCopy timeIntervalSince1970];
          v40 = [v39 numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:")}];
          [v22 setObject:v40 forKeyedSubscript:@"generic_event_startTimestampMS"];
        }

        if (endTimeCopy)
        {
          [v22 setObject:endTimeCopy forKeyedSubscript:@"generic_event_endTime"];
          v41 = MEMORY[0x277CCABB0];
          [endTimeCopy timeIntervalSince1970];
          v42 = [v41 numberWithUnsignedLongLong:{+[C2Time convertTimeIntervalToServerTime:](C2Time, "convertTimeIntervalToServerTime:")}];
          [v22 setObject:v42 forKeyedSubscript:@"generic_event_endTimestampMS"];

          if (timeCopy != endTimeCopy && timeCopy != 0)
          {
            v44 = MEMORY[0x277CCABB0];
            [endTimeCopy timeIntervalSinceDate:timeCopy];
            v45 = [v44 numberWithDouble:?];
            [v22 setObject:v45 forKeyedSubscript:@"generic_event_durationSeconds"];
          }
        }

        v28 = v38 | (16 * c2UniformlyDistributedIdentifier);
        [self _c2FormatValueForRTC:attributesCopy keyPrefix:@"generic_event_key" targetDictionary:v22 multipleOperationGroups:v97 > 1];
        goto LABEL_36;
      }
    }

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", type];
    goto LABEL_24;
  }

LABEL_58:
  if (v12)
  {
    metricOptions9 = [C2ReportMetrics requestForMetricRequestOptions:optionsCopy metrics:v19];
    v73 = MEMORY[0x277CCACA8];
    metricOptions = [optionsCopy metricOptions];
    container3 = [metricOptions container];
    v76 = container3;
    if (v103)
    {
      v77 = [v73 stringWithFormat:@"NetworkEvent %@ %llu", container3, 100];
      v78 = 100;
LABEL_75:

      v86 = [[C2ReportMetrics alloc] initWithMetricRequest:metricOptions9 metricRequestOptions:optionsCopy ignoreRequestThrottle:v12 & 1 requestThrottleIdentifier:v77 requestThrottleLimit:v78];
      metricOptions2 = [optionsCopy metricOptions];
      testBehavior_reportMetric = [metricOptions2 testBehavior_reportMetric];

      if (testBehavior_reportMetric)
      {
        metricOptions3 = [optionsCopy metricOptions];
        testBehavior_reportMetric2 = [metricOptions3 testBehavior_reportMetric];
        (testBehavior_reportMetric2)[2](testBehavior_reportMetric2, v86, v103, v102);
      }

      if (v86)
      {
        [(C2ReportMetrics *)v86 send];
      }

      else
      {
        metricOptions4 = [optionsCopy metricOptions];
        didCompleteWithError = [metricOptions4 didCompleteWithError];

        if (didCompleteWithError)
        {
          metricOptions5 = [optionsCopy metricOptions];
          didCompleteWithError2 = [metricOptions5 didCompleteWithError];
          didCompleteWithError2[2](didCompleteWithError2, 0);
        }

        metricOptions6 = [optionsCopy metricOptions];
        [metricOptions6 setDidCompleteWithError:0];
      }

      goto LABEL_83;
    }

    type3 = [v102 type];
    if (type3 > 200)
    {
      if (type3 == 201)
      {
        v84 = @"cloudkit_client";
        goto LABEL_74;
      }

      if (type3 == 301)
      {
        v84 = @"server";
        goto LABEL_74;
      }
    }

    else
    {
      if (!type3)
      {
        v84 = @"none";
        goto LABEL_74;
      }

      if (type3 == 101)
      {
        v84 = @"cloudkit";
LABEL_74:
        name = [v102 name];
        v77 = [v73 stringWithFormat:@"GenericEvent %@ %@ %@ %llu", v76, v84, name, 5];

        v78 = 5;
        goto LABEL_75;
      }
    }

    v84 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", type3];
    goto LABEL_74;
  }

  metricOptions7 = [optionsCopy metricOptions];
  didCompleteWithError3 = [metricOptions7 didCompleteWithError];

  if (didCompleteWithError3)
  {
    metricOptions8 = [optionsCopy metricOptions];
    didCompleteWithError4 = [metricOptions8 didCompleteWithError];
    didCompleteWithError4[2](didCompleteWithError4, 0);
  }

  metricOptions9 = [optionsCopy metricOptions];
  [metricOptions9 setDidCompleteWithError:0];
LABEL_83:
}

uint64_t __112__C2ReportMetrics__reportWithOptions_networkEvent_genericEvent_triggers_eventName_startTime_endTime_attributes___block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (C2ReportMetrics)initWithMetricRequest:(id)request metricRequestOptions:(id)options ignoreRequestThrottle:(BOOL)throttle requestThrottleIdentifier:(id)identifier requestThrottleLimit:(unint64_t)limit
{
  requestCopy = request;
  optionsCopy = options;
  identifierCopy = identifier;
  v16 = identifierCopy;
  selfCopy = 0;
  if (requestCopy && optionsCopy && identifierCopy)
  {
    metricRequestTransportOptions = [optionsCopy metricRequestTransportOptions];
    if (metricRequestTransportOptions)
    {
      limitCopy = limit;
      metricUUID = [optionsCopy metricUUID];
      uUIDString = [metricUUID UUIDString];

      if (uUIDString)
      {
        v28.receiver = self;
        v28.super_class = C2ReportMetrics;
        v21 = [(C2ReportMetrics *)&v28 init];
        v22 = v21;
        if (v21)
        {
          v21->_ignoreRequestThrottle = throttle;
          objc_storeStrong(&v21->_requestThrottleIdentifier, identifier);
          v22->_requestThrottleLimit = limitCopy;
          objc_storeStrong(&v22->_metricRequest, request);
          metricOptions = [optionsCopy metricOptions];
          metricOptions = v22->_metricOptions;
          v22->_metricOptions = metricOptions;

          [(NSMutableURLRequest *)v22->_metricRequest setValue:uUIDString forHTTPHeaderField:@"x-apple-request-uuid"];
          v25 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetricRequest-%@", uUIDString];
          [metricRequestTransportOptions setIdentifier:v25];

          objc_storeStrong(&v22->_metricsTransportRequestOptions, metricRequestTransportOptions);
        }

        self = v22;
        selfCopy = self;
      }

      else
      {
        selfCopy = 0;
      }
    }

    else
    {
      selfCopy = 0;
    }
  }

  return selfCopy;
}

- (void)send
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:self object:a2 file:@"C2ReportMetrics.m" lineNumber:512 description:@"metricOptions must not be nil."];
}

uint64_t __23__C2ReportMetrics_send__block_invoke()
{
  C2_DEFAULT_LOG_INTERNAL = os_log_create("com.apple.c2", "default");

  return MEMORY[0x2821F96F8]();
}

- (void)URLSession:(id)session _willRetryBackgroundDataTask:(id)task withError:(id)error
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2ReportMetrics.m" lineNumber:541 description:@"Unexpected callback."];
}

- (void)URLSession:(id)session task:(id)task didCompleteWithError:(id)error
{
  sessionCopy = session;
  taskCopy = task;
  errorCopy = error;
  testBehavior_didCompleteWithError = self->_testBehavior_didCompleteWithError;
  if (testBehavior_didCompleteWithError)
  {
    testBehavior_didCompleteWithError[2](testBehavior_didCompleteWithError, errorCopy);
  }

  pthread_mutex_lock(&sOutstandingTaskCountMutex);
  if (!sOutstandingTaskCountMap)
  {
    [C2ReportMetrics URLSession:task:didCompleteWithError:];
  }

  v11 = NSMapGet(sOutstandingTaskCountMap, self->_requestThrottleIdentifier);
  if (!v11)
  {
    [C2ReportMetrics URLSession:task:didCompleteWithError:];
  }

  NSMapInsert(sOutstandingTaskCountMap, self->_requestThrottleIdentifier, v11 - 1);
  pthread_mutex_unlock(&sOutstandingTaskCountMutex);
  didCompleteWithError = [(C2MetricOptions *)self->_metricOptions didCompleteWithError];

  if (didCompleteWithError)
  {
    didCompleteWithError2 = [(C2MetricOptions *)self->_metricOptions didCompleteWithError];
    (didCompleteWithError2)[2](didCompleteWithError2, errorCopy);
  }

  [(C2MetricOptions *)self->_metricOptions setDidCompleteWithError:0];
}

- (void)URLSession:(id)session task:(id)task needNewBodyStream:(id)stream
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"C2ReportMetrics.m" lineNumber:578 description:@"Unexpected callback."];
}

@end