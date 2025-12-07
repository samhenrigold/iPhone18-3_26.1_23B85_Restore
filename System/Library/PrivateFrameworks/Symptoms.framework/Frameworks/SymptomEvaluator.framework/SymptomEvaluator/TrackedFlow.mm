@interface TrackedFlow
+ (id)currentCellUsers;
+ (id)getPolledFlowInfo;
+ (id)ownersOfFlowsPassingTest:(id)test;
+ (id)startTrackingForKey:(id)key;
+ (unint64_t)activeFlowsCountForType:(int64_t)type;
+ (unint64_t)cellExpensiveUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (unint64_t)cellUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (unint64_t)countFlowsPassingTest:(id)test;
+ (unint64_t)foregroundNonLocalUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (unint64_t)reverseRnfUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (unint64_t)rnfExpensiveUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (unint64_t)rnfUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (unint64_t)wifiNonLocalUsageGrandTallyAfterAdding:(unint64_t)adding;
+ (void)_dumpStateOfType:(int64_t)type;
+ (void)_notifyPollingEnd;
+ (void)_wifiStallCheck;
+ (void)_wifiStallCheckStarted;
+ (void)dumpState;
+ (void)initialize;
+ (void)removeTrackingForKey:(id)key fromSnapshot:(id)snapshot;
+ (void)startPollingWifiFlows:(unsigned int)flows;
+ (void)stopPollingWifiFlows;
- (BOOL)inheritEarlyProperties:(id)properties;
- (TrackedFlow)init;
- (id)description;
- (void)_decrementCounters;
- (void)_takeSnapshot;
- (void)_updateScoreholder:(scoreHolder *)scoreholder;
@end

@implementation TrackedFlow

- (TrackedFlow)init
{
  v6.receiver = self;
  v6.super_class = TrackedFlow;
  v2 = [(TrackedFlow *)&v6 init];
  if (v2)
  {
    date = [MEMORY[0x277CBEAA8] date];
    startingTimestamp = v2->_startingTimestamp;
    v2->_startingTimestamp = date;
  }

  return v2;
}

- (void)_decrementCounters
{
  v10 = *MEMORY[0x277D85DE8];
  if (allFlows <= 0)
  {
    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 67109120;
      v9 = allFlows;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "allFlows would be negative, currently %d", &v8, 8u);
    }

    allFlows = 1;
  }

  atomic_fetch_add_explicit(&allFlows, 0xFFFFFFFF, memory_order_relaxed);
  if ((self->_flags & 0x200) != 0)
  {
    ifType = self->_ifType;
    if (ifType > 1)
    {
      if (ifType == 3)
      {
        v5 = &wiredFlowCount;
        goto LABEL_17;
      }

      if (ifType == 2)
      {
        v5 = &cellFlowCount;
        goto LABEL_17;
      }
    }

    else
    {
      if (!ifType)
      {
        v5 = &otherFlowCount;
        goto LABEL_17;
      }

      if (ifType == 1)
      {
        v5 = &wifiFlowCount;
LABEL_17:
        atomic_fetch_add(v5, 0xFFFFFFFFFFFFFFFFLL);
        return;
      }
    }

    v6 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v7 = self->_ifType;
      v8 = 67109120;
      v9 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Unexpected interface type %d when decrementing counters", &v8, 8u);
    }
  }
}

+ (void)initialize
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v3 = liveSocketCache;
  liveSocketCache = v2;

  MEMORY[0x2821F96F8](v2, v3);
}

- (id)description
{
  immediateUser = [(TrackedFlow *)self immediateUser];
  ultimateUser = [(TrackedFlow *)self ultimateUser];
  flags = self->_flags;
  if (flags)
  {
    v6 = "?";
    v7 = "udp4";
    v8 = "udp6";
    if ((flags & 0x40) == 0)
    {
      v8 = "udp?";
    }

    if ((flags & 0x10) == 0)
    {
      v7 = v8;
    }

    if (flags)
    {
      v6 = v7;
    }

    v9 = "tcp4";
    v10 = "tcp6";
    if ((flags & 0x40) == 0)
    {
      v10 = "tcp?";
    }

    if ((flags & 0x10) == 0)
    {
      v9 = v10;
    }

    if ((flags & 2) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = v6;
    }

    v31 = v11;
    v12 = self->_ifType - 1;
    if (v12 > 2)
    {
      v13 = "unknown";
    }

    else
    {
      v13 = off_278990028[v12];
    }

    v30 = v13;
    v20 = MEMORY[0x277CCACA8];
    flowId = self->_flowId;
    ownerKey = self->_ownerKey;
    [(NSDate *)self->_startingTimestamp timeIntervalSince1970];
    v17 = timeStringMillisecondsFromTimeInterval(v23);
    [(NSDate *)self->_startingTimestamp timeIntervalSinceNow];
    v25 = v24;
    if (immediateUser)
    {
      userName = [immediateUser userName];
    }

    else
    {
      userName = @"-";
    }

    v27 = -v25;
    if (ultimateUser)
    {
      userName2 = [ultimateUser userName];
    }

    else
    {
      userName2 = @"-";
    }

    v19 = [v20 stringWithFormat:@"TrackedFlow %llu %s %s flow owner %@ start %@ duration %.3f trackers: self %p %@ other %p %@ rx pkts %lld tx pkts %lld", flowId, v30, v31, ownerKey, v17, *&v27, immediateUser, userName, ultimateUser, userName2, -[TrackedFlowCounts rxPkts](self, "rxPkts"), -[TrackedFlowCounts txPkts](self, "txPkts")];
    if (ultimateUser)
    {
    }

    if (immediateUser)
    {
    }
  }

  else
  {
    v14 = MEMORY[0x277CCACA8];
    flowId = [(TrackedFlow *)self flowId];
    [(NSDate *)self->_startingTimestamp timeIntervalSince1970];
    v17 = formattedDateStringForTimeInterval(v16);
    [(NSDate *)self->_startingTimestamp timeIntervalSinceNow];
    v19 = [v14 stringWithFormat:@"TrackedFlow %llu uninitialized, created %@ duration %f", flowId, v17, -v18];
  }

  return v19;
}

- (BOOL)inheritEarlyProperties:(id)properties
{
  v54[1] = *MEMORY[0x277D85DE8];
  propertiesCopy = properties;
  v5 = propertiesCopy;
  if ((self->_flags & 0x200) == 0)
  {
    if ([propertiesCopy interfaceWiFi])
    {
      v6 = 1;
    }

    else if ([v5 interfaceCellular])
    {
      v6 = 2;
    }

    else
    {
      interfaceWired = [v5 interfaceWired];
      v6 = 3;
      if (!interfaceWired)
      {
        v6 = 0;
      }
    }

    self->_ifType = v6;
    if ([v5 interfaceCompanionLink])
    {
      self->_flags |= 0x400u;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      self->_flags |= 2u;
      v10 = v5;
      tCPState = [v10 TCPState];
      v12 = [tCPState isEqualToString:*MEMORY[0x277D2CB78]];

      if (v12)
      {
        v13 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *v50 = 134217984;
          *&v50[4] = self;
          _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "Ignoring TCP LISTEN source %p", v50, 0xCu);
        }

        goto LABEL_36;
      }

      if (!self->_ifType && (self->_flags & 0x400) == 0)
      {
        v18 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
        {
          v19 = v18;
          verboseDescription = [v10 verboseDescription];
          *v50 = 138412290;
          *&v50[4] = verboseDescription;
          _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "Ignoring TCP source of unknown interface type, not companionlink %@", v50, 0xCu);
        }

        v21 = +[SystemSettingsRelay defaultRelay];
        if (([v21 autoBugCaptureEnabled] & 1) == 0)
        {
          goto LABEL_33;
        }

        v22 = +[SystemProperties sharedInstance];
        internalBuild = [v22 internalBuild];

        if (internalBuild)
        {
          v24 = objc_alloc_init(MEMORY[0x277D6AFC8]);
          v21 = v24;
          if (v24)
          {
            v25 = [v24 signatureWithDomain:*MEMORY[0x277D6B020] type:*MEMORY[0x277D6B220] subType:@"TCP Snapshot" subtypeContext:@"Unknown Interface Type" detectedProcess:@"symptomsd" triggerThresholdValues:0];
            v53 = *MEMORY[0x277D6B010];
            v51 = *MEMORY[0x277D6B008];
            v52 = &unk_2847EFD70;
            v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
            v54[0] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:&v53 count:1];
            [v21 snapshotWithSignature:v25 duration:0 events:0 payload:v27 actions:&__block_literal_global_54 reply:0.0];
          }

LABEL_33:
        }

LABEL_36:

        goto LABEL_37;
      }

      [(TrackedFlow *)self setTrafficMgtFlags:[v10 trafficManagementFlags]];
      [(TrackedFlow *)self setTrafficClassFlags:[v10 trafficClass]];

      goto LABEL_39;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v28 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
      {
LABEL_37:
        v8 = 0;
        goto LABEL_66;
      }

      v10 = v28;
      v29 = objc_opt_class();
      v30 = NSStringFromClass(v29);
      *v50 = 134218242;
      *&v50[4] = self;
      *&v50[12] = 2112;
      *&v50[14] = v30;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "Ignoring source %p with unknown snapshot type %@", v50, 0x16u);

      goto LABEL_36;
    }

    self->_flags |= 1u;
    if (self->_ifType)
    {
LABEL_39:
      if (![v5 processID])
      {
        v35 = flowLogHandle;
        if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
        {
          *v50 = 134218242;
          *&v50[4] = self;
          *&v50[12] = 2112;
          *&v50[14] = v5;
          _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_ERROR, "Ignoring source %p, snapshot is from kernel %@", v50, 0x16u);
        }

        goto LABEL_37;
      }

      remoteAddress = [v5 remoteAddress];
      bytes = [remoteAddress bytes];
      if (bytes)
      {
        v33 = *(bytes + 1);
        if (v33 == 30)
        {
          v34 = self->_flags | 0x40;
          goto LABEL_49;
        }

        if (v33 == 2)
        {
          v34 = self->_flags | 0x10;
LABEL_49:
          self->_flags = v34;
          goto LABEL_50;
        }
      }

      v36 = rnfLogHandle;
      if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
      {
        *v50 = 0;
        _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "Unknown address family", v50, 2u);
      }

LABEL_50:
      v37 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v38 = v37;
        flowStartTimestamp = [v5 flowStartTimestamp];
        startingTimestamp = [(TrackedFlow *)self startingTimestamp];
        [flowStartTimestamp timeIntervalSinceDate:startingTimestamp];
        *v50 = 134218240;
        *&v50[4] = self;
        *&v50[12] = 2048;
        *&v50[14] = v41;
        _os_log_impl(&dword_23255B000, v38, OS_LOG_TYPE_DEBUG, "Adjusting flow start time for %p, delta: %f", v50, 0x16u);
      }

      flowStartTimestamp2 = [v5 flowStartTimestamp];
      [(TrackedFlow *)self setStartingTimestamp:flowStartTimestamp2];

      self->_flags |= 0x200u;
      ifType = self->_ifType;
      if (ifType > 1)
      {
        if (ifType == 3)
        {
          v44 = &wiredFlowCount;
          goto LABEL_64;
        }

        if (ifType == 2)
        {
          v8 = 1;
          atomic_fetch_add(&cellFlowCount, 1uLL);
LABEL_65:

          goto LABEL_66;
        }
      }

      else
      {
        if (!ifType)
        {
          v44 = &otherFlowCount;
          goto LABEL_64;
        }

        if (ifType == 1)
        {
          v44 = &wifiFlowCount;
LABEL_64:
          v8 = 1;
          atomic_fetch_add(v44, 1uLL);
          goto LABEL_65;
        }
      }

      v45 = analyticsLogHandle;
      if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
      {
        v46 = self->_ifType;
        *v50 = 67109120;
        *&v50[4] = v46;
        _os_log_impl(&dword_23255B000, v45, OS_LOG_TYPE_ERROR, "Unexpected interface type %d when inheriting properties", v50, 8u);
      }

      v8 = 0;
      goto LABEL_65;
    }

    if ([v5 rxCellularBytes] || objc_msgSend(v5, "txCellularBytes"))
    {
      self->_ifType = 2;
      v14 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *v50 = 138412290;
      *&v50[4] = v5;
      v15 = "UDP TrackedFlow has inferred interface type cell from snapshot %@";
    }

    else if ([v5 rxWiFiBytes] || objc_msgSend(v5, "txWiFiBytes"))
    {
      self->_ifType = 1;
      v14 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *v50 = 138412290;
      *&v50[4] = v5;
      v15 = "UDP TrackedFlow has inferred interface type wifi from snapshot %@";
    }

    else
    {
      if (![v5 rxWiredBytes] && !objc_msgSend(v5, "txWiredBytes"))
      {
        if (([v5 interfaceCompanionLinkBluetooth] & 1) != 0 || objc_msgSend(v5, "rxCompanionLinkBluetoothBytes") || objc_msgSend(v5, "txCompanionLinkBluetoothBytes"))
        {
          v48 = flowLogHandle;
          if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
          {
            *v50 = 138412290;
            *&v50[4] = v5;
            _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_INFO, "UDP TrackedFlow has interface type Bluetooth from snapshot %@", v50, 0xCu);
          }

          self->_ifType = 0;
          goto LABEL_39;
        }

        v49 = flowLogHandle;
        if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_39;
        }

        *v50 = 138412290;
        *&v50[4] = v5;
        v15 = "UDP TrackedFlow cannot infer interface type from snapshot %@";
        v16 = v49;
        v17 = OS_LOG_TYPE_DEFAULT;
LABEL_24:
        _os_log_impl(&dword_23255B000, v16, v17, v15, v50, 0xCu);
        goto LABEL_39;
      }

      self->_ifType = 3;
      v14 = flowLogHandle;
      if (!os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_INFO))
      {
        goto LABEL_39;
      }

      *v50 = 138412290;
      *&v50[4] = v5;
      v15 = "UDP TrackedFlow has inferred interface type wired from snapshot %@";
    }

    v16 = v14;
    v17 = OS_LOG_TYPE_INFO;
    goto LABEL_24;
  }

  v7 = flowLogHandle;
  if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_ERROR))
  {
    *v50 = 134217984;
    *&v50[4] = v5;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_ERROR, "Double call to inheritEarlyProperties for snapshot %p", v50, 0xCu);
  }

  v8 = 1;
LABEL_66:

  return v8;
}

void __38__TrackedFlow_inheritEarlyProperties___block_invoke(uint64_t a1, void *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = netepochsLogHandle;
  if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
  {
    v4 = 138412290;
    v5 = v2;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_INFO, "TCP Snapshot Unknown Interface Type response: %@", &v4, 0xCu);
  }
}

+ (unint64_t)activeFlowsCountForType:(int64_t)type
{
  typeCopy = type;
  v8 = *MEMORY[0x277D85DE8];
  if (type > 1)
  {
    if (type == 3)
    {
      v4 = &wiredFlowCount;
      return atomic_load(v4);
    }

    if (type == 2)
    {
      v4 = &cellFlowCount;
      return atomic_load(v4);
    }
  }

  else
  {
    if (!type)
    {
      v4 = &otherFlowCount;
      return atomic_load(v4);
    }

    if (type == 1)
    {
      v4 = &wifiFlowCount;
      return atomic_load(v4);
    }
  }

  v5 = analyticsLogHandle;
  if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_ERROR))
  {
    v7[0] = 67109120;
    v7[1] = typeCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Unexpected interface type %d when requesting current flow counts", v7, 8u);
  }

  return 0;
}

+ (unint64_t)cellUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&cellUsageGrandTally, adding);
  }

  return atomic_load(&cellUsageGrandTally);
}

+ (unint64_t)cellExpensiveUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&cellExpensiveUsageGrandTally, adding);
  }

  return atomic_load(&cellExpensiveUsageGrandTally);
}

+ (unint64_t)rnfUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&rnfUsageGrandTally, adding);
  }

  return atomic_load(&rnfUsageGrandTally);
}

+ (unint64_t)rnfExpensiveUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&rnfExpensiveUsageGrandTally, adding);
  }

  return atomic_load(&rnfExpensiveUsageGrandTally);
}

+ (unint64_t)reverseRnfUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&reverseRnfUsageGrandTally, adding);
  }

  return atomic_load(&reverseRnfUsageGrandTally);
}

+ (unint64_t)wifiNonLocalUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&wifiNonLocalUsageGrandTally, adding);
  }

  return atomic_load(&wifiNonLocalUsageGrandTally);
}

+ (unint64_t)foregroundNonLocalUsageGrandTallyAfterAdding:(unint64_t)adding
{
  if (adding)
  {
    atomic_fetch_add(&foregroundNonLocalUsageGrandTally, adding);
  }

  return atomic_load(&foregroundNonLocalUsageGrandTally);
}

+ (id)startTrackingForKey:(id)key
{
  v17 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  v4 = [liveSocketCache objectForKey:keyCopy];
  if (v4)
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      v6 = v5;
      v7 = [keyCopy description];
      uTF8String = [v7 UTF8String];
      v9 = [v4 description];
      v13 = 136315394;
      v14 = uTF8String;
      v15 = 2080;
      uTF8String2 = [v9 UTF8String];
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "startTrackingForKey: creating flow in place of existing flow for same key: %s, flow: %s", &v13, 0x16u);
    }
  }

  v10 = objc_alloc_init(TrackedFlow);

  if (v10)
  {
    atomic_fetch_add_explicit(&allFlows, 1u, memory_order_relaxed);
    [liveSocketCache setObject:v10 forKey:keyCopy];
    -[TrackedFlow setFlowId:](v10, "setFlowId:", [keyCopy unsignedLongLongValue]);
    v11 = attributionLogHandle;
    if (os_log_type_enabled(attributionLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v13 = 138412290;
      v14 = keyCopy;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEBUG, "startTrackingForKey: creating flow for %@", &v13, 0xCu);
    }
  }

  return v10;
}

+ (void)removeTrackingForKey:(id)key fromSnapshot:(id)snapshot
{
  keyCopy = key;
  snapshotCopy = snapshot;
  v6 = [liveSocketCache objectForKey:keyCopy];
  v7 = v6;
  if (v6)
  {
    [v6 _decrementCounters];
    [AppTracker noteFlowEnding:v7 withSnapshot:snapshotCopy];
    [liveSocketCache removeObjectForKey:keyCopy];
  }
}

+ (id)currentCellUsers
{
  v22[2] = *MEMORY[0x277D85DE8];
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v2 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v3 = liveSocketCache;
  v9 = MEMORY[0x277D85DD0];
  v10 = 3221225472;
  v11 = __31__TrackedFlow_currentCellUsers__block_invoke;
  v12 = &unk_27898FFC8;
  v14 = &v15;
  v4 = v2;
  v13 = v4;
  [v3 enumerateKeysAndObjectsUsingBlock:&v9];
  v21[0] = @"activeTrafficClassFlags";
  v5 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{*(v16 + 6), v9, v10, v11, v12}];
  v21[1] = @"activeProcessIdentifiers";
  v22[0] = v5;
  v22[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];

  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "reply for current cell users is %@", buf, 0xCu);
  }

  _Block_object_dispose(&v15, 8);

  return v6;
}

void __31__TrackedFlow_currentCellUsers__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = a3;
  if ([v10 ifType] == 2)
  {
    v4 = [v10 immediateUser];
    if (v4)
    {
      v5 = v4;
    }

    else
    {
      v5 = [v10 ultimateUser];
      if (!v5)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v6 = [v10 classification];
    v7 = [v6 disposition];

    if (v7 <= 0x1F)
    {
      *(*(*(a1 + 40) + 8) + 24) |= 1 << v7;
      v8 = *(a1 + 32);
      v9 = [v5 userName];
      [v8 addObject:v9];
    }

    goto LABEL_7;
  }

LABEL_8:
}

+ (id)ownersOfFlowsPassingTest:(id)test
{
  v28 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v4 = objc_autoreleasePoolPush();
  allValues = [liveSocketCache allValues];
  v6 = [allValues indexesOfObjectsPassingTest:testCopy];
  v7 = [allValues objectsAtIndexes:v6];
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v7, "count")}];
  if ([v7 count])
  {
    v19 = v4;
    v20 = testCopy;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          ownerKey = [v14 ownerKey];

          if (ownerKey)
          {
            ownerKey2 = [v14 ownerKey];
            [v8 addObject:ownerKey2];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v27 count:16];
      }

      while (v11);
    }

    v4 = v19;
    testCopy = v20;
  }

  v17 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v8;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "reply for current flows is %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v4);

  return v8;
}

+ (unint64_t)countFlowsPassingTest:(id)test
{
  v13 = *MEMORY[0x277D85DE8];
  testCopy = test;
  v4 = objc_autoreleasePoolPush();
  allValues = [liveSocketCache allValues];
  v6 = [allValues indexesOfObjectsPassingTest:testCopy];
  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v8 = v7;
    v11 = 134217984;
    v12 = [v6 count];
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "count for current flows is %lu", &v11, 0xCu);
  }

  v9 = [v6 count];

  objc_autoreleasePoolPop(v4);
  return v9;
}

- (void)_takeSnapshot
{
  self->_snapshotRxWiFiBytes = [(TrackedFlowCounts *)self rxWiFiBytes];
  self->_snapshotTxWiFiBytes = [(TrackedFlowCounts *)self txWiFiBytes];
  self->_snapshotRxPkts = [(TrackedFlowCounts *)self rxPkts];
  self->_snapshotTxPkts = [(TrackedFlowCounts *)self txPkts];
  self->_snapshotRxDupeBytes = [(TrackedFlowCounts *)self rxDupeBytes];
  self->_snapshotRxOOOBytes = [(TrackedFlowCounts *)self rxOOOBytes];
  self->_snapshotTxReTxBytes = [(TrackedFlowCounts *)self txReTxBytes];
  self->_snapshotTxUnacked = [(TrackedFlow *)self txUnacked];
}

- (void)_updateScoreholder:(scoreHolder *)scoreholder
{
  v62 = *MEMORY[0x277D85DE8];
  rxWiFiBytes = [(TrackedFlowCounts *)self rxWiFiBytes];
  snapshotRxWiFiBytes = self->_snapshotRxWiFiBytes;
  v43 = rxWiFiBytes;
  txWiFiBytes = [(TrackedFlowCounts *)self txWiFiBytes];
  snapshotTxWiFiBytes = self->_snapshotTxWiFiBytes;
  v41 = txWiFiBytes - snapshotTxWiFiBytes;
  rxPkts = [(TrackedFlowCounts *)self rxPkts];
  snapshotRxPkts = self->_snapshotRxPkts;
  v39 = rxPkts;
  v40 = rxPkts - snapshotRxPkts;
  txPkts = [(TrackedFlowCounts *)self txPkts];
  snapshotTxPkts = self->_snapshotTxPkts;
  rxDupeBytes = [(TrackedFlowCounts *)self rxDupeBytes];
  snapshotRxDupeBytes = self->_snapshotRxDupeBytes;
  v36 = rxDupeBytes - snapshotRxDupeBytes;
  rxOOOBytes = [(TrackedFlowCounts *)self rxOOOBytes];
  snapshotRxOOOBytes = self->_snapshotRxOOOBytes;
  v14 = rxOOOBytes - snapshotRxOOOBytes;
  txReTxBytes = [(TrackedFlowCounts *)self txReTxBytes];
  snapshotTxReTxBytes = self->_snapshotTxReTxBytes;
  v17 = txReTxBytes - snapshotTxReTxBytes;
  v18 = v43 - snapshotRxWiFiBytes;
  v34 = snapshotTxWiFiBytes;
  v35 = txWiFiBytes;
  if (v43 != snapshotRxWiFiBytes || txWiFiBytes != snapshotTxWiFiBytes || v39 != snapshotRxPkts || txPkts != snapshotTxPkts || rxDupeBytes != snapshotRxDupeBytes || rxOOOBytes != snapshotRxOOOBytes || txReTxBytes != snapshotTxReTxBytes)
  {
    v25 = evaluationLogHandle;
    v26 = txReTxBytes - snapshotTxReTxBytes;
    v27 = os_log_type_enabled(evaluationLogHandle, OS_LOG_TYPE_DEBUG);
    v18 = v43 - snapshotRxWiFiBytes;
    v17 = v26;
    if (v27)
    {
      txUnacked = self->_txUnacked;
      *buf = 134220032;
      selfCopy = self;
      v46 = 2048;
      v47 = v43 - snapshotRxWiFiBytes;
      v48 = 2048;
      v49 = v41;
      v50 = 2048;
      v51 = v40;
      v52 = 2048;
      v53 = txPkts - snapshotTxPkts;
      v54 = 2048;
      v55 = rxDupeBytes - snapshotRxDupeBytes;
      v56 = 2048;
      v57 = rxOOOBytes - snapshotRxOOOBytes;
      v58 = 2048;
      v59 = v26;
      v60 = 1024;
      v61 = txUnacked;
      _os_log_impl(&dword_23255B000, v25, OS_LOG_TYPE_DEBUG, "self %p bytes rx %lld tx %lld pkts rx %lld tx %lld dup %lld OOO %lld retx %lld unack %u", buf, 0x58u);
      v18 = v43 - snapshotRxWiFiBytes;
      v17 = v26;
    }
  }

  v29 = scoreholder->var0.var1 + v41;
  scoreholder->var0.var0 += v18;
  scoreholder->var0.var1 = v29;
  v30 = scoreholder->var0.var3 + txPkts - snapshotTxPkts;
  v31 = self->_txUnacked;
  scoreholder->var0.var2 += v40;
  scoreholder->var0.var3 = v30;
  v32 = scoreholder->var0.var5 + v36;
  scoreholder->var0.var4 += v31;
  scoreholder->var0.var5 = v32;
  v33 = scoreholder->var0.var7 + v17;
  scoreholder->var0.var6 += v14;
  scoreholder->var0.var7 = v33;
  ++scoreholder->var1;
  if (self->_txUnacked)
  {
    if (v43 != snapshotRxWiFiBytes || v35 != v34)
    {
      ++scoreholder->var4;
      goto LABEL_30;
    }

LABEL_29:
    ++scoreholder->var3;
    goto LABEL_30;
  }

  if (v18 == v14 + v36)
  {
    if (!(v18 + v41))
    {
      ++scoreholder->var2;
      goto LABEL_30;
    }

    goto LABEL_29;
  }

  if (v14 + v36 + v17)
  {
    ++scoreholder->var6;
  }

  else
  {
    ++scoreholder->var5;
  }

LABEL_30:
  if ([(TrackedFlowCounts *)self probedFlow])
  {
    ++scoreholder->var7;
  }

  if ([(TrackedFlowCounts *)self probed3WHSStuckFlow])
  {
    ++scoreholder->var8;
  }

  if ([(TrackedFlowCounts *)self probedReadStuckFlow])
  {
    ++scoreholder->var9;
  }

  if ([(TrackedFlowCounts *)self probedWriteStuckFlow])
  {
    ++scoreholder->var10;
  }

  [(TrackedFlow *)self _takeSnapshot];
}

+ (void)_wifiStallCheckStarted
{
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "wifi stallcheck started", v3, 2u);
  }

  scoreHolderId = -1;
  bzero(openFlowScoreHolders, 0x460uLL);
  [liveSocketCache enumerateKeysAndObjectsUsingBlock:&__block_literal_global_146];
}

void __37__TrackedFlow__wifiStallCheckStarted__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  if ([v3 ifType] == 1 && (objc_msgSend(v3, "flags") & 2) != 0)
  {
    [v3 _takeSnapshot];
  }
}

+ (id)getPolledFlowInfo
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = scoreHolderId;
  v3 = scoreHolderId;
  [gLastPollCollectionDate timeIntervalSinceNow];
  v5 = v4;
  v6 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v54 = v5;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "Collect info, last update was %f secs ago", buf, 0xCu);
  }

  if (v5 < -5.0)
  {
    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Poll data too old ";
LABEL_16:
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, v8, buf, 2u);
      goto LABEL_17;
    }

    goto LABEL_17;
  }

  if (v3 <= 0)
  {
    v7 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v8 = "Insufficient samples";
      goto LABEL_16;
    }

LABEL_17:
    v12 = 0;
    v13 = 0;
    goto LABEL_39;
  }

  v50 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v9 = v2 - v3;
  while (v3 != openFlowScoreHolders[28 * (v3 % 0xAu) + 26])
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v54) = v3;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEFAULT, "Saved results id %d not found, wind back further", buf, 8u);
    }

    --v2;
    v11 = __OFSUB__(v3--, 1);
    if ((v3 < 0) ^ v11 | (v3 == 0))
    {
      v3 = 0;
      goto LABEL_19;
    }
  }

  v9 = v2;
LABEL_19:
  v14 = 0;
  LODWORD(v15) = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = &openFlowScoreHolders[28 * v3];
  v21 = 1;
  v22 = v3;
  do
  {
    v23 = v21;
    v24 = &v20[-280 * (v22 / 0xA)];
    v14 = *v24 + v14 - (*(v24 + 5) + *(v24 + 6));
    v15 = (v24[18] + v15);
    v19 |= *(v24 + 7) != 0;
    v18 |= v24[23] != 0;
    v17 |= v24[24] != 0;
    v16 |= v24[25] != 0;
    v25 = v3-- != 0;
    if (!v25)
    {
      break;
    }

    v21 = 0;
    v20 -= 28;
    --v22;
  }

  while ((v23 & 1) != 0);
  v26 = v18 | v17 | v16;
  if (v14)
  {
    if (v26 & 1 | (v15 != 0))
    {
      v27 = 25;
    }

    else if (v14 <= 0x9C40)
    {
      v27 = 50;
    }

    else
    {
      v27 = 100;
    }
  }

  else if (v26 & 1 | (v15 != 0) | v19 & 1)
  {
    v27 = 0;
  }

  else
  {
    v27 = 50;
  }

  v44 = v27;
  v48 = v14;
  v28 = -5;
  do
  {
    v29 = &openFlowScoreHolders[28 * (v9 % 10)];
    v30 = [MEMORY[0x277CCACA8] stringWithFormat:@"id %d: bytes rx %lld tx %lld  pkts rx %lld tx %lld  unacked %lld   dupe %lld OOO %lld retx %lld", v29[26], *v29, *(v29 + 1), *(v29 + 2), *(v29 + 3), *(v29 + 4), *(v29 + 5), *(v29 + 6), *(v29 + 7)];
    [v50 addObject:v30];

    v31 = [MEMORY[0x277CCACA8] stringWithFormat:@"id %d: flows %d good %d imperfect %d stuck %d unack %d quiet %d extra-stats-flows %d 3whs-stuck %d read-stuck %d write-stuck %d", v29[26], v29[16], v29[20], v29[21], v29[18], v29[19], v29[17], v29[22], v29[23], v29[24], v29[25]];
    [v50 addObject:v31];

    if (!v9)
    {
      break;
    }

    --v9;
    v25 = __CFADD__(v28++, 1);
  }

  while (!v25);
  v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"total input %llu  flows stuck %d txReTx %d TCPExtra %d", v48, v15, v19 & 1, ((v18 | v17) | v16) & 1];
  v46 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v51[0] = v46;
  v45 = [MEMORY[0x277CCABB0] numberWithInt:v44];
  v52[0] = v45;
  v43 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v51[1] = v43;
  v32 = @"no info";
  if (v13)
  {
    v32 = v13;
  }

  v52[1] = v32;
  v42 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerBundleInput];
  v51[2] = v42;
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v48];
  v52[2] = v49;
  v41 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPExtraState];
  v51[3] = v41;
  v47 = [MEMORY[0x277CCABB0] numberWithBool:((v18 | v17) | v16) & 1];
  v52[3] = v47;
  v40 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCP3WHSStuck];
  v51[4] = v40;
  v33 = [MEMORY[0x277CCABB0] numberWithBool:v18 & 1];
  v52[4] = v33;
  v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPReadStuck];
  v51[5] = v34;
  v35 = [MEMORY[0x277CCABB0] numberWithBool:v17 & 1];
  v52[5] = v35;
  v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPWriteStuck];
  v51[6] = v36;
  v37 = [MEMORY[0x277CCABB0] numberWithBool:v16 & 1];
  v52[6] = v37;
  v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerDetails];
  v51[7] = v38;
  v52[7] = v50;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:8];

LABEL_39:

  return v12;
}

+ (void)_notifyPollingEnd
{
  v22[7] = *MEMORY[0x277D85DE8];
  v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
  v21[0] = v18;
  v17 = [MEMORY[0x277CCABB0] numberWithInt:50];
  v22[0] = v17;
  v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScoreInfo];
  v21[1] = v16;
  v22[1] = @"polled flow shutdown";
  v15 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerBundleInput];
  v21[2] = v15;
  v2 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:0];
  v22[2] = v2;
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCP3WHSStuck];
  v21[3] = v3;
  v4 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22[3] = v4;
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPReadStuck];
  v21[4] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22[4] = v6;
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPWriteStuck];
  v21[5] = v7;
  v8 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22[5] = v8;
  v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerTCPExtraState];
  v21[6] = v9;
  v10 = [MEMORY[0x277CCABB0] numberWithBool:0];
  v22[6] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];

  if (v11)
  {
    v12 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v20 = v11;
      _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "Notify ending assessment %@", buf, 0xCu);
    }

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter postNotificationName:@"kNotificationPolledFlowAssessment" object:self userInfo:v11];
  }
}

+ (void)_dumpStateOfType:(int64_t)type
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __32__TrackedFlow__dumpStateOfType___block_invoke;
  v3[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
  v3[4] = type;
  [liveSocketCache enumerateKeysAndObjectsUsingBlock:v3];
}

void __32__TrackedFlow__dumpStateOfType___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([v4 ifType] == *(a1 + 32))
  {
    v5 = flowLogHandle;
    if (os_log_type_enabled(flowLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v4 description];
      v8 = 138412290;
      v9 = v7;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "FLOW %@", &v8, 0xCu);
    }
  }
}

+ (void)dumpState
{
  [TrackedFlow _dumpStateOfType:2];
  [TrackedFlow _dumpStateOfType:1];
  [TrackedFlow _dumpStateOfType:3];

  [TrackedFlow _dumpStateOfType:0];
}

+ (void)_wifiStallCheck
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 67109120;
    v12 = scoreHolderId;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "stallcheck entry, id %d", buf, 8u);
  }

  v4 = (scoreHolderId + 1) % 10;
  v5 = &openFlowScoreHolders[28 * v4];
  *v5 = 0u;
  v5[1] = 0u;
  v5[2] = 0u;
  v5[3] = 0u;
  v5[4] = 0u;
  v5[5] = 0u;
  v5[6] = 0u;
  v6 = ++scoreHolderId;
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  setApparentTime(v7);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __30__TrackedFlow__wifiStallCheck__block_invoke;
  v8[3] = &__block_descriptor_56_e8_v12__0B8l;
  v9 = v6;
  v10 = v4;
  v8[4] = v5;
  v8[5] = self;
  [FlowRefreshScheduler refreshDataUsageMaxStale:@"WiFiStallCheck" maxDelay:v8 logAs:0.0 callback:0.0];
}

void __30__TrackedFlow__wifiStallCheck__block_invoke(uint64_t a1, int a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    if (scoreHolderId != -1)
    {
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __30__TrackedFlow__wifiStallCheck__block_invoke_2;
      v10[3] = &__block_descriptor_40_e15_v32__0_8_16_B24l;
      v10[4] = *(a1 + 32);
      [liveSocketCache enumerateKeysAndObjectsUsingBlock:v10];
      if (scoreHolderId != -1)
      {
        *(*(a1 + 32) + 104) = *(a1 + 48);
        v3 = [MEMORY[0x277CBEAA8] date];
        objc_storeStrong(&gLastPollCollectionDate, v3);
        objc_storeStrong(&openFlowScoreDate[*(a1 + 52)], v3);
        v4 = [*(a1 + 40) getPolledFlowInfo];
        if (v4)
        {
          v5 = [MEMORY[0x277CCAB98] defaultCenter];
          v6 = rnfLogHandle;
          if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v12 = v4;
            _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, "Notify assessment %@", buf, 0xCu);
          }

          [v5 postNotificationName:@"kNotificationPolledFlowAssessment" object:*(a1 + 40) userInfo:v4];
          v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:kSymptomManagedEventKeyTriggerScore];
          v8 = [v4 objectForKeyedSubscript:v7];

          if (v8 && ![v8 intValue])
          {
            v9 = rnfLogHandle;
            if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v12 = v4;
              _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_INFO, "Notify bad assessment %@", buf, 0xCu);
            }

            [v5 postNotificationName:@"kNotificationPolledFlowAssessedBad" object:*(a1 + 40) userInfo:v4];
          }
        }
      }
    }
  }
}

void __30__TrackedFlow__wifiStallCheck__block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if ([v4 ifType] == 1)
  {
    [v4 _updateScoreholder:*(a1 + 32)];
  }
}

+ (void)startPollingWifiFlows:(unsigned int)flows
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = flows + 1;
  add = atomic_fetch_add(&gPolledFlowClientCount, 1uLL);
  v7 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109376;
    *v28 = flows;
    *&v28[4] = 2048;
    *&v28[6] = add;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "startPollingWifiFlows, secs %u number of existing clients is %llu", buf, 0x12u);
  }

  v8 = gPolledFlowCount;
  if (add)
  {
    v9 = 1;
  }

  else
  {
    v9 = gPolledFlowCount == 0;
  }

  if (!v9)
  {
    v10 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_ERROR, "startPollingWifiFlows: Logic error, already running but client count was zero", buf, 2u);
    }

    v8 = gPolledFlowCount;
  }

  if (v8 >= v5 >> 1)
  {
    v12 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v13 = "startPollingWifiFlows: already running";
    goto LABEL_17;
  }

  if (v8)
  {
    v11 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *v28 = gPolledFlowCount;
      *&v28[8] = 2048;
      *&v28[10] = v5 >> 1;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "startPollingWifiFlows: bump from %lld to %lld", buf, 0x16u);
    }

    gPolledFlowCount = v5 >> 1;
    return;
  }

  if (add)
  {
    v16 = rnfLogHandle;
    if (!os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v13 = "startPollingWifiFlows, subsequent client finds gPolledFlowCount set to zero";
    v14 = v16;
    v15 = OS_LOG_TYPE_ERROR;
LABEL_18:
    _os_log_impl(&dword_23255B000, v14, v15, v13, buf, 2u);
    return;
  }

  if (gPolledFlowTimer)
  {
    v17 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "startPollingWifiFlows: need to cancel old timer", buf, 2u);
    }

    dispatch_source_cancel(gPolledFlowTimer);
    v18 = gPolledFlowTimer;
    gPolledFlowTimer = 0;
  }

  v19 = _pollingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  dispatch_async(v19, block);

  v20 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
  v21 = gPolledFlowTimer;
  gPolledFlowTimer = v20;

  v22 = gPolledFlowTimer;
  v23 = dispatch_time(0, 2000000000);
  dispatch_source_set_timer(v22, v23, 0x77359400uLL, 0);
  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_166;
  handler[3] = &__block_descriptor_40_e5_v8__0l;
  handler[4] = self;
  dispatch_source_set_event_handler(gPolledFlowTimer, handler);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_2;
  v24[3] = &__block_descriptor_40_e5_v8__0l;
  v24[4] = self;
  dispatch_source_set_cancel_handler(gPolledFlowTimer, v24);
  dispatch_resume(gPolledFlowTimer);
  v12 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v13 = "startPollingWifiFlows: exit";
LABEL_17:
    v14 = v12;
    v15 = OS_LOG_TYPE_DEFAULT;
    goto LABEL_18;
  }
}

uint64_t __37__TrackedFlow_startPollingWifiFlows___block_invoke(uint64_t a1)
{
  v2 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "startPollingWifiFlows: async stall check start", v4, 2u);
  }

  [*(a1 + 32) _wifiStallCheckStarted];
  return [*(a1 + 32) _wifiStallCheck];
}

void __37__TrackedFlow_startPollingWifiFlows___block_invoke_166(uint64_t a1)
{
  if (--gPolledFlowCount)
  {
    v2 = _pollingQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_167;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = *(a1 + 32);
    dispatch_async(v2, block);
  }

  else
  {
    v3 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "Shut down polled flow timer", buf, 2u);
    }

    dispatch_source_cancel(gPolledFlowTimer);
    v2 = gPolledFlowTimer;
    gPolledFlowTimer = 0;
  }
}

void __37__TrackedFlow_startPollingWifiFlows___block_invoke_2(uint64_t a1)
{
  v2 = _pollingQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__TrackedFlow_startPollingWifiFlows___block_invoke_3;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = *(a1 + 32);
  dispatch_async(v2, block);
}

+ (void)stopPollingWifiFlows
{
  v9 = *MEMORY[0x277D85DE8];
  add = atomic_fetch_add(&gPolledFlowClientCount, 0xFFFFFFFFFFFFFFFFLL);
  v3 = rnfLogHandle;
  if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = add;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "stopPollingWifiFlows, number of clients is %llu", &v7, 0xCu);
  }

  if (add)
  {
    if (add == 1)
    {
      if (gPolledFlowTimer)
      {
        dispatch_source_cancel(gPolledFlowTimer);
        v4 = gPolledFlowTimer;
        gPolledFlowTimer = 0;
      }

      else
      {
        v6 = rnfLogHandle;
        if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v7) = 0;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "stopPollingWifiFlows, last client but timer already nil", &v7, 2u);
        }
      }

      gPolledFlowCount = 0;
      scoreHolderId = -1;
    }
  }

  else
  {
    v5 = rnfLogHandle;
    if (os_log_type_enabled(rnfLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v7) = 0;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "stopPollingWifiFlows, mismatched starts/stops, ignoring stop", &v7, 2u);
    }

    atomic_fetch_add(&gPolledFlowClientCount, 1uLL);
  }
}

@end