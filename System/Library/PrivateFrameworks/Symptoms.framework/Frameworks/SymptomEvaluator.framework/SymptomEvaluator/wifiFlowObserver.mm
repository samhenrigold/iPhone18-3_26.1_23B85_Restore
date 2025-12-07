@interface wifiFlowObserver
- (BOOL)addClassification:(id)classification context:(wifiPropertyCounts *)context;
- (BOOL)removeClassification:(id)classification context:(wifiPropertyCounts *)context;
- (NSString)description;
- (id)infoDir;
- (unsigned)noteFlow:(id)flow snapshot:(id)snapshot present:(BOOL)present trackedBy:(id)by;
- (void)_noteNewUsage;
- (void)configurePolicies:(id)policies;
- (void)noteForegroundState:(BOOL)state forApp:(id)app hasForegroundApps:(BOOL)apps;
- (void)setEnabled:(BOOL)enabled;
- (wifiFlowObserver)init;
@end

@implementation wifiFlowObserver

- (void)_noteNewUsage
{
  v42 = *MEMORY[0x277D85DE8];
  if (self->_dampening || !self->_enabled)
  {
    v15 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      classFlags = self->_foregroundCounts.classFlags;
      v17 = self->_backgroundCounts.classFlags;
      currentCombinedFlags = self->_backgroundCounts.currentCombinedFlags;
      lastReportedClassFlags = self->_foregroundCounts.lastReportedClassFlags;
      v20 = self->_foregroundCounts.currentCombinedFlags;
      lastReportedCombinedFlags = self->_foregroundCounts.lastReportedCombinedFlags;
      v22 = self->_backgroundCounts.lastReportedClassFlags;
      v23 = self->_backgroundCounts.lastReportedCombinedFlags;
      *buf = 67110912;
      v27 = classFlags;
      v28 = 2048;
      v29 = v20;
      v30 = 1024;
      v31 = v17;
      v32 = 2048;
      v33 = currentCombinedFlags;
      v34 = 1024;
      v35 = lastReportedClassFlags;
      v36 = 2048;
      v37 = lastReportedCombinedFlags;
      v38 = 1024;
      v39 = v22;
      v40 = 2048;
      v41 = v23;
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_INFO, "WiFi Observer: New flags fg 0x%x 0x%llx bg 0x%x 0x%llx  during suppression / dampening, initial value 0x%x 0x%llx 0x%x 0x%llx", buf, 0x42u);
    }
  }

  else if (self->_foregroundCounts.classFlags != self->_foregroundCounts.lastReportedClassFlags || self->_foregroundCounts.currentCombinedFlags != self->_foregroundCounts.lastReportedCombinedFlags || self->_backgroundCounts.classFlags != self->_backgroundCounts.lastReportedClassFlags || self->_backgroundCounts.currentCombinedFlags != self->_backgroundCounts.lastReportedCombinedFlags)
  {
    [(ManagedEventHandler *)self->_managedEventHandler sendNotificationWithId:11];
    v3 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
    {
      v4 = self->_foregroundCounts.classFlags;
      v5 = self->_backgroundCounts.classFlags;
      v6 = self->_backgroundCounts.currentCombinedFlags;
      v7 = self->_foregroundCounts.lastReportedClassFlags;
      v8 = self->_foregroundCounts.currentCombinedFlags;
      v9 = self->_foregroundCounts.lastReportedCombinedFlags;
      v10 = self->_backgroundCounts.lastReportedClassFlags;
      v11 = self->_backgroundCounts.lastReportedCombinedFlags;
      *buf = 67110912;
      v27 = v4;
      v28 = 2048;
      v29 = v8;
      v30 = 1024;
      v31 = v5;
      v32 = 2048;
      v33 = v6;
      v34 = 1024;
      v35 = v7;
      v36 = 2048;
      v37 = v9;
      v38 = 1024;
      v39 = v10;
      v40 = 2048;
      v41 = v11;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "WiFi Observer: Sent notification when new flags fg 0x%x 0x%llx bg 0x%x 0x%llx,  initial value 0x%x 0x%llx 0x%x 0x%llx", buf, 0x42u);
    }

    v12 = self->_seqno + 1;
    self->_seqno = v12;
    self->_dampening = 1;
    v13 = dispatch_time(0, 1000000 * self->_dampeningMsecs);
    v14 = +[FlowAnalyticsEngine queue];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __33__wifiFlowObserver__noteNewUsage__block_invoke;
    v24[3] = &unk_27898CAB8;
    v24[4] = self;
    v25 = v12;
    dispatch_after(v13, v14, v24);
  }
}

- (id)infoDir
{
  v97 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_foregroundCounts.currentCombinedFlags];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyForegroundCombinedFlowProperties];
  [dictionary setObject:v4 forKeyedSubscript:v5];

  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_foregroundCounts.classFlags];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyForegroundSpecificFlowClassifications];
  [dictionary setObject:v6 forKeyedSubscript:v7];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_backgroundCounts.currentCombinedFlags];
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyBackgroundCombinedFlowProperties];
  [dictionary setObject:v8 forKeyedSubscript:v9];

  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_backgroundCounts.classFlags];
  v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyBackgroundSpecificFlowClassifications];
  [dictionary setObject:v10 forKeyedSubscript:v11];

  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyRelevantState];
  [dictionary setObject:v12 forKeyedSubscript:v13];

  v14 = [FlowClassification classFlagsToString:self->_foregroundCounts.classFlags];
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundSpecificFlowClassifications];
  [dictionary setObject:v14 forKeyedSubscript:v15];

  v16 = [FlowClassification classFlagsToString:self->_backgroundCounts.classFlags];
  v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundSpecificFlowClassifications];
  [dictionary setObject:v16 forKeyedSubscript:v17];

  v18 = [FlowClassification propertyFlagsToString:LOBYTE(self->_foregroundCounts.currentCombinedFlags)];
  v19 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundLatencyValues];
  [dictionary setObject:v18 forKeyedSubscript:v19];

  v20 = [FlowClassification propertyFlagsToString:BYTE1(self->_foregroundCounts.currentCombinedFlags)];
  v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundJitterValues];
  [dictionary setObject:v20 forKeyedSubscript:v21];

  v22 = [FlowClassification propertyFlagsToString:BYTE3(self->_foregroundCounts.currentCombinedFlags)];
  v23 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundDurationValues];
  [dictionary setObject:v22 forKeyedSubscript:v23];

  v24 = [FlowClassification propertyFlagsToString:BYTE2(self->_foregroundCounts.currentCombinedFlags)];
  v25 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundLossToleranceValues];
  [dictionary setObject:v24 forKeyedSubscript:v25];

  v26 = [FlowClassification propertyFlagsToString:BYTE4(self->_foregroundCounts.currentCombinedFlags)];
  v27 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundReqdBandwidthValues];
  [dictionary setObject:v26 forKeyedSubscript:v27];

  v28 = [FlowClassification propertyFlagsToString:(WORD2(self->_foregroundCounts.currentCombinedFlags) >> 8)];
  v29 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableForegroundPrefBandwidthValues];
  [dictionary setObject:v28 forKeyedSubscript:v29];

  v30 = [FlowClassification propertyFlagsToString:LOBYTE(self->_backgroundCounts.currentCombinedFlags)];
  v31 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundLatencyValues];
  [dictionary setObject:v30 forKeyedSubscript:v31];

  v32 = [FlowClassification propertyFlagsToString:BYTE1(self->_backgroundCounts.currentCombinedFlags)];
  v33 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundJitterValues];
  [dictionary setObject:v32 forKeyedSubscript:v33];

  v34 = [FlowClassification propertyFlagsToString:BYTE3(self->_backgroundCounts.currentCombinedFlags)];
  v35 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundDurationValues];
  [dictionary setObject:v34 forKeyedSubscript:v35];

  v36 = [FlowClassification propertyFlagsToString:BYTE2(self->_backgroundCounts.currentCombinedFlags)];
  v37 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundLossToleranceValues];
  [dictionary setObject:v36 forKeyedSubscript:v37];

  v38 = [FlowClassification propertyFlagsToString:BYTE4(self->_backgroundCounts.currentCombinedFlags)];
  v39 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundReqdBandwidthValues];
  [dictionary setObject:v38 forKeyedSubscript:v39];

  v40 = [FlowClassification propertyFlagsToString:(WORD2(self->_backgroundCounts.currentCombinedFlags) >> 8)];
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyHumanReadableBackgroundPrefBandwidthValues];
  [dictionary setObject:v40 forKeyedSubscript:v41];

  v42 = +[AppStateMonitor foregroundAppKeys];
  v43 = v42;
  if (v42 && [v42 count])
  {
    v44 = [MEMORY[0x277CCACA8] stringWithUTF8String:kManagedEventKeyForegroundApps];
    [dictionary setObject:v43 forKeyedSubscript:v44];
  }

  classFlags = self->_foregroundCounts.classFlags;
  self->_foregroundCounts.everReportedClassFlags |= classFlags;
  self->_foregroundCounts.lastReportedClassFlags = classFlags;
  currentCombinedFlags = self->_foregroundCounts.currentCombinedFlags;
  self->_foregroundCounts.lastReportedCombinedFlags = currentCombinedFlags;
  self->_foregroundCounts.everReportedCombinedFlags |= currentCombinedFlags;
  LODWORD(currentCombinedFlags) = self->_backgroundCounts.classFlags;
  self->_backgroundCounts.lastReportedClassFlags = currentCombinedFlags;
  self->_backgroundCounts.everReportedClassFlags |= currentCombinedFlags;
  v47 = self->_backgroundCounts.currentCombinedFlags;
  self->_backgroundCounts.lastReportedCombinedFlags = v47;
  self->_backgroundCounts.everReportedCombinedFlags |= v47;
  v48 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v49 = self->_foregroundCounts.currentCombinedFlags;
    v83 = 134217984;
    *v84 = v49;
    _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "WiFi observer _foregroundCounts.currentCombinedFlags is 0x%llx", &v83, 0xCu);
  }

  v50 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v51 = self->_backgroundCounts.currentCombinedFlags;
    v83 = 134217984;
    *v84 = v51;
    _os_log_impl(&dword_23255B000, v50, OS_LOG_TYPE_DEFAULT, "WiFi observer _backgroundCounts.currentCombinedFlags is 0x%llx", &v83, 0xCu);
  }

  v52 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v53 = self->_backgroundCounts.latencyPropertyCounter[0];
    v54 = self->_backgroundCounts.latencyPropertyCounter[1];
    v55 = self->_backgroundCounts.latencyPropertyCounter[2];
    v56 = self->_backgroundCounts.latencyPropertyCounter[3];
    v57 = self->_backgroundCounts.latencyPropertyCounter[4];
    v58 = self->_backgroundCounts.latencyPropertyCounter[5];
    v59 = self->_backgroundCounts.latencyPropertyCounter[6];
    v60 = self->_backgroundCounts.latencyPropertyCounter[7];
    v83 = 67110912;
    *v84 = v53;
    *&v84[4] = 1024;
    *&v84[6] = v54;
    v85 = 1024;
    v86 = v55;
    v87 = 1024;
    v88 = v56;
    v89 = 1024;
    v90 = v57;
    v91 = 1024;
    v92 = v58;
    v93 = 1024;
    v94 = v59;
    v95 = 1024;
    v96 = v60;
    _os_log_impl(&dword_23255B000, v52, OS_LOG_TYPE_DEBUG, "WiFi observer _backgroundCounts latency counts %d %d %d %d %d %d %d %d", &v83, 0x32u);
  }

  v61 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v62 = self->_backgroundCounts.jitterPropertyCounter[0];
    v63 = self->_backgroundCounts.jitterPropertyCounter[1];
    v64 = self->_backgroundCounts.jitterPropertyCounter[2];
    v65 = self->_backgroundCounts.jitterPropertyCounter[3];
    v66 = self->_backgroundCounts.jitterPropertyCounter[4];
    v67 = self->_backgroundCounts.jitterPropertyCounter[5];
    v68 = self->_backgroundCounts.jitterPropertyCounter[6];
    v69 = self->_backgroundCounts.jitterPropertyCounter[7];
    v83 = 67110912;
    *v84 = v62;
    *&v84[4] = 1024;
    *&v84[6] = v63;
    v85 = 1024;
    v86 = v64;
    v87 = 1024;
    v88 = v65;
    v89 = 1024;
    v90 = v66;
    v91 = 1024;
    v92 = v67;
    v93 = 1024;
    v94 = v68;
    v95 = 1024;
    v96 = v69;
    _os_log_impl(&dword_23255B000, v61, OS_LOG_TYPE_DEBUG, "WiFi observer _backgroundCounts jitter counts %d %d %d %d %d %d %d %d", &v83, 0x32u);
  }

  v70 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v71 = self->_backgroundCounts.lossTolerancePropertyCounter[0];
    v72 = self->_backgroundCounts.lossTolerancePropertyCounter[1];
    v73 = self->_backgroundCounts.lossTolerancePropertyCounter[2];
    v74 = self->_backgroundCounts.lossTolerancePropertyCounter[3];
    v75 = self->_backgroundCounts.lossTolerancePropertyCounter[4];
    v76 = self->_backgroundCounts.lossTolerancePropertyCounter[5];
    v77 = self->_backgroundCounts.lossTolerancePropertyCounter[6];
    v78 = self->_backgroundCounts.lossTolerancePropertyCounter[7];
    v83 = 67110912;
    *v84 = v71;
    *&v84[4] = 1024;
    *&v84[6] = v72;
    v85 = 1024;
    v86 = v73;
    v87 = 1024;
    v88 = v74;
    v89 = 1024;
    v90 = v75;
    v91 = 1024;
    v92 = v76;
    v93 = 1024;
    v94 = v77;
    v95 = 1024;
    v96 = v78;
    _os_log_impl(&dword_23255B000, v70, OS_LOG_TYPE_DEBUG, "WiFi observer _backgroundCounts loss tolerance counts %d %d %d %d %d %d %d %d", &v83, 0x32u);
  }

  v79 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
  {
    v83 = 138543362;
    *v84 = dictionary;
    _os_log_impl(&dword_23255B000, v79, OS_LOG_TYPE_INFO, "WiFi observer Info dir %{public}@", &v83, 0xCu);
  }

  date = [MEMORY[0x277CBEAA8] date];
  lastReportTimestamp = self->_lastReportTimestamp;
  self->_lastReportTimestamp = date;

  return dictionary;
}

- (NSString)description
{
  v15 = MEMORY[0x277CCACA8];
  classFlags = self->_backgroundCounts.classFlags;
  v4 = self->_foregroundCounts.classFlags;
  everSetClassFlags = self->_foregroundCounts.everSetClassFlags;
  v6 = self->_backgroundCounts.everSetClassFlags;
  everReportedClassFlags = self->_backgroundCounts.everReportedClassFlags;
  v8 = self->_foregroundCounts.everReportedClassFlags;
  lastReportedClassFlags = self->_foregroundCounts.lastReportedClassFlags;
  v10 = self->_backgroundCounts.lastReportedClassFlags;
  [(NSDate *)self->_lastReportTimestamp timeIntervalSince1970];
  v12 = formattedDateStringForTimeInterval(v11);
  v13 = [v15 stringWithFormat:@"wifiFlowObserver at %p, fg / bg current flags 0x%x 0x%x ever set 0x%x 0x%x reported 0x%x 0x%x last report 0x%x 0x%x at %@, enabled %d", self, v4, classFlags, everSetClassFlags, v6, v8, everReportedClassFlags, lastReportedClassFlags, v10, v12, self->_enabled];

  return v13;
}

- (wifiFlowObserver)init
{
  v7.receiver = self;
  v7.super_class = wifiFlowObserver;
  v2 = [(wifiFlowObserver *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_dampeningMsecs = 300;
    v4 = [ManagedEventHandler getHandlerByName:@"wifi-app-aware"];
    managedEventHandler = v3->_managedEventHandler;
    v3->_managedEventHandler = v4;

    v3->_enabled = 1;
  }

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v10 = *MEMORY[0x277D85DE8];
  v5 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    enabled = self->_enabled;
    v7[0] = 67109376;
    v7[1] = enabled;
    v8 = 1024;
    v9 = enabledCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEBUG, "Entry, _enabled = %d new value %d", v7, 0xEu);
  }

  self->_enabled = enabledCopy;
}

- (void)configurePolicies:(id)policies
{
  v12 = *MEMORY[0x277D85DE8];
  policiesCopy = policies;
  v5 = configurationLogHandle;
  if (os_log_type_enabled(configurationLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [(wifiFlowObserver *)self description];
    v8 = 138412546;
    v9 = policiesCopy;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Entry with ignored params %@, self %@", &v8, 0x16u);
  }
}

- (BOOL)addClassification:(id)classification context:(wifiPropertyCounts *)context
{
  classificationCopy = classification;
  disposition = [classificationCopy disposition];
  if (disposition > 0x1F || (v7 = context->classCounter[disposition], context->classCounter[disposition] = v7 + 1, v7))
  {
    v8 = 0;
  }

  else
  {
    v8 = 1;
    *&context->classFlags = vorr_s8(*&context->classFlags, vdup_n_s32(1 << disposition));
  }

  latency = [classificationCopy latency];
  v10 = &context->classCounter[latency];
  v11 = v10[36];
  v10[36] = v11 + 1;
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1 << latency;
  }

  jitter = [classificationCopy jitter];
  v14 = &context->classCounter[jitter];
  v15 = v14[44];
  v14[44] = v15 + 1;
  v16 = 1 << (jitter + 8);
  if (v15)
  {
    v16 = 0;
  }

  v17 = v16 | v12;
  duration = [classificationCopy duration];
  v19 = &context->classCounter[duration];
  v20 = v19[60];
  v19[60] = v20 + 1;
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = 1 << (duration + 24);
  }

  requiredBandwidth = [classificationCopy requiredBandwidth];
  v23 = &context->classCounter[requiredBandwidth];
  v24 = v23[68];
  v23[68] = v24 + 1;
  v25 = 1 << (requiredBandwidth + 32);
  if (v24)
  {
    v25 = 0;
  }

  v26 = v17 | v21 | v25;
  lossTolerance = [classificationCopy lossTolerance];
  v28 = &context->classCounter[lossTolerance];
  v29 = v28[52];
  v28[52] = v29 + 1;
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = 1 << (lossTolerance + 16);
  }

  preferredBandwidth = [classificationCopy preferredBandwidth];

  v32 = &context->classCounter[preferredBandwidth];
  v33 = v32[76];
  v32[76] = v33 + 1;
  v34 = 1 << (preferredBandwidth + 40);
  if (v33)
  {
    v34 = 0;
  }

  v35 = v26 | v30 | v34;
  if (v35)
  {
    context->currentCombinedFlags |= v35;
    return 1;
  }

  return v8;
}

- (BOOL)removeClassification:(id)classification context:(wifiPropertyCounts *)context
{
  classificationCopy = classification;
  disposition = [classificationCopy disposition];
  if (disposition <= 0x1F)
  {
    v7 = context->classCounter[disposition] - 1;
    context->classCounter[disposition] = v7;
    if (!v7)
    {
      context->classFlags &= ~(1 << disposition);
    }
  }

  latency = [classificationCopy latency];
  v9 = &context->classCounter[latency];
  v10 = v9[36] - 1;
  v9[36] = v10;
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = 1 << latency;
  }

  jitter = [classificationCopy jitter];
  v13 = &context->classCounter[jitter];
  v14 = v13[44] - 1;
  v13[44] = v14;
  v15 = 1 << (jitter + 8);
  if (v14)
  {
    v15 = 0;
  }

  v16 = v15 | v11;
  lossTolerance = [classificationCopy lossTolerance];
  v18 = &context->classCounter[lossTolerance];
  v19 = v18[52] - 1;
  v18[52] = v19;
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = 1 << (lossTolerance + 16);
  }

  duration = [classificationCopy duration];
  v22 = &context->classCounter[duration];
  v23 = v22[60] - 1;
  v22[60] = v23;
  v24 = 1 << (duration + 24);
  if (v23)
  {
    v24 = 0;
  }

  v25 = v16 | v20 | v24;
  requiredBandwidth = [classificationCopy requiredBandwidth];
  v27 = &context->classCounter[requiredBandwidth];
  v28 = v27[68] - 1;
  v27[68] = v28;
  if (v28)
  {
    v29 = 0;
  }

  else
  {
    v29 = 1 << (requiredBandwidth + 32);
  }

  preferredBandwidth = [classificationCopy preferredBandwidth];

  v31 = &context->classCounter[preferredBandwidth];
  v32 = v31[76] - 1;
  v31[76] = v32;
  v33 = 1 << (preferredBandwidth + 40);
  if (v32)
  {
    v33 = 0;
  }

  v34 = v25 | v29 | v33;
  if (v34)
  {
    context->currentCombinedFlags &= ~v34;
  }

  return v34 != 0;
}

- (unsigned)noteFlow:(id)flow snapshot:(id)snapshot present:(BOOL)present trackedBy:(id)by
{
  presentCopy = present;
  flowCopy = flow;
  snapshotCopy = snapshot;
  byCopy = by;
  if (snapshotCopy && [snapshotCopy startAppStateIsForeground])
  {
    [flowCopy setFlags:{objc_msgSend(flowCopy, "flags") | 0x800}];
  }

  if (presentCopy)
  {
    [flowCopy setFlags:{objc_msgSend(flowCopy, "flags") | 0x1000}];
  }

  if (([flowCopy flags] & 0x800) != 0)
  {
    v13 = 8;
  }

  else
  {
    v13 = 376;
  }

  classification = [flowCopy classification];
  v15 = self + v13;
  if (presentCopy)
  {
    v16 = [(wifiFlowObserver *)self addClassification:classification context:v15];

    if (!v16)
    {
LABEL_11:
      v17 = 0;
      goto LABEL_16;
    }
  }

  else
  {
    v18 = [(wifiFlowObserver *)self removeClassification:classification context:v15];

    if (!v18)
    {
      goto LABEL_11;
    }
  }

  [(wifiFlowObserver *)self _noteNewUsage];
  classification2 = [flowCopy classification];
  disposition = [classification2 disposition];

  if (presentCopy && disposition < 0x20)
  {
    v17 = 1 << disposition;
  }

  else
  {
    v17 = 0;
  }

LABEL_16:

  return v17;
}

- (void)noteForegroundState:(BOOL)state forApp:(id)app hasForegroundApps:(BOOL)apps
{
  appsCopy = apps;
  v14 = *MEMORY[0x277D85DE8];
  appCopy = app;
  if (!appsCopy)
  {
    if (!self->_foreground)
    {
      goto LABEL_11;
    }

    self->_foreground = 0;
    v8 = scoringLogHandle;
    if (!os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_9;
    }

    enabled = self->_enabled;
    v12 = 67109120;
    v13 = enabled;
    v10 = "WiFi Observer going to background, enabled %d";
    goto LABEL_8;
  }

  if (self->_foreground)
  {
    goto LABEL_11;
  }

  self->_foreground = 1;
  v8 = scoringLogHandle;
  if (os_log_type_enabled(scoringLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = self->_enabled;
    v12 = 67109120;
    v13 = v9;
    v10 = "WiFi Observer going to Foreground, enabled %d";
LABEL_8:
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEBUG, v10, &v12, 8u);
  }

LABEL_9:
  if (self->_enabled)
  {
    [(wifiFlowObserver *)self _noteNewUsage];
  }

LABEL_11:
}

@end