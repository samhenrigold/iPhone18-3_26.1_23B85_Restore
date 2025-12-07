@interface FlowScrutinizer
+ (FlowScrutinizer)sharedInstance;
- (BOOL)isFlushableOriginLedgerAfterFlushingSubsidiaries:(id)subsidiaries atMachAbsTime:(unint64_t)time;
- (FlowScrutinizer)init;
- (id)_findFlowOriginLedgerWithSnapshot:(id)snapshot;
- (id)getLedgerState:(BOOL)state;
- (id)getState:(BOOL)state;
- (int)setConfiguration:(id)configuration;
- (unsigned)_dispositionForPossibleLargeTransferOn:(id)on provisionally:(unsigned int)provisionally;
- (void)_coreMediaAssetDownloadCompletion:(id)completion for:(id)for at:(double)at;
- (void)_coreMediaAssetDownloadFlushAll;
- (void)_handleFlowDeltas:(id)deltas snapshot:(id)snapshot;
- (void)_reportClassificationChange:(id)change new:(unsigned int)new ledger:(id)ledger snapshot:(id)snapshot;
- (void)addActivityBitmapFromSnapshot:(id)snapshot;
- (void)addDelegate:(id)delegate;
- (void)addFlowStateForOrigin:(id)origin array:(id)array;
- (void)addStateForOrigin:(id)origin named:(id)named array:(id)array isExtension:(BOOL)extension isDelegate:(BOOL)delegate verbose:(BOOL)verbose;
- (void)assetDownloadScrutinyOnBehalfOf:(id)of required:(BOOL)required;
- (void)cellFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required;
- (void)clearAVSamplesIfAllIdle:(id)idle time:(double)time;
- (void)expectedTransferScrutinyOnBehalfOf:(id)of required:(BOOL)required;
- (void)flushInactiveLedgersAtMachAbsTime:(unint64_t)time;
- (void)noteCoreMediaAssetDownloadEvent:(unint64_t)event downloadUUID:(id)d byProcess:(id)process onBehalfOf:(id)of duration:(double)duration at:(double)at;
- (void)noteExpectedTransfer:(unint64_t)transfer inbound:(BOOL)inbound upperThreshold:(BOOL)threshold flowUUID:(id)d at:(double)at;
- (void)removeDelegate:(id)delegate;
- (void)restoreDefaults;
- (void)scrutinizeFlow:(id)flow withClassification:(id)classification;
- (void)updateAudioVideoSamplesWithTime:(double)time bumpSamples:(BOOL)samples;
- (void)updateInterfaceSamplesWithTime:(double)time bumpSamples:(BOOL)samples;
- (void)updateTransferSizeFlowsWithTime:(double)time;
- (void)wifiFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required;
@end

@implementation FlowScrutinizer

+ (FlowScrutinizer)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__FlowScrutinizer_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_27 != -1)
  {
    dispatch_once(&sharedInstance_pred_27, block);
  }

  v2 = sharedInstance_sharedInstance_28;

  return v2;
}

uint64_t __33__FlowScrutinizer_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_28;
  sharedInstance_sharedInstance_28 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (FlowScrutinizer)init
{
  v24.receiver = self;
  v24.super_class = FlowScrutinizer;
  v2 = [(FlowScrutinizer *)&v24 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    originLedgers = v2->_originLedgers;
    v2->_originLedgers = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    transferSizeFlows = v2->_transferSizeFlows;
    v2->_transferSizeFlows = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    cellAudioVideoSamples = v2->_cellAudioVideoSamples;
    v2->_cellAudioVideoSamples = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    wifiAudioVideoSamples = v2->_wifiAudioVideoSamples;
    v2->_wifiAudioVideoSamples = v9;

    v11 = [PhysicalInterfaceSampler sharedInstanceForInterfaceType:2];
    cellInterfaceSampler = v2->_cellInterfaceSampler;
    v2->_cellInterfaceSampler = v11;

    v13 = [PhysicalInterfaceSampler sharedInstanceForInterfaceType:1];
    wifiInterfaceSampler = v2->_wifiInterfaceSampler;
    v2->_wifiInterfaceSampler = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    cellFlowScrutinyRequesters = v2->_cellFlowScrutinyRequesters;
    v2->_cellFlowScrutinyRequesters = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    wifiFlowScrutinyRequesters = v2->_wifiFlowScrutinyRequesters;
    v2->_wifiFlowScrutinyRequesters = v17;

    v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
    assetDownloadScrutinyRequesters = v2->_assetDownloadScrutinyRequesters;
    v2->_assetDownloadScrutinyRequesters = v19;

    v21 = objc_alloc_init(MEMORY[0x277CBEB58]);
    expectedTransferScrutinyRequesters = v2->_expectedTransferScrutinyRequesters;
    v2->_expectedTransferScrutinyRequesters = v21;

    [(FlowScrutinizer *)v2 restoreDefaults];
  }

  return v2;
}

- (void)_reportClassificationChange:(id)change new:(unsigned int)new ledger:(id)ledger snapshot:(id)snapshot
{
  v8 = *&new;
  v33 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  ledgerCopy = ledger;
  snapshotCopy = snapshot;
  v13 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138413058;
    v26 = changeCopy;
    v27 = 1024;
    v28 = v8;
    v29 = 2112;
    v30 = ledgerCopy;
    v31 = 2112;
    v32 = snapshotCopy;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "_reportClassificationChange on %@, new %d ledger %@ snapshot %@", buf, 0x26u);
  }

  delegates = self->_delegates;
  if (delegates)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v15 = delegates;
    v16 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v21;
      do
      {
        v19 = 0;
        do
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          [*(*(&v20 + 1) + 8 * v19++) flowDispositionChangeTo:v8 flowIdentifier:changeCopy ledger:ledgerCopy snapshot:{snapshotCopy, v20}];
        }

        while (v17 != v19);
        v17 = [(NSMutableSet *)v15 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v17);
    }
  }
}

- (unsigned)_dispositionForPossibleLargeTransferOn:(id)on provisionally:(unsigned int)provisionally
{
  v20 = *MEMORY[0x277D85DE8];
  onCopy = on;
  if ([onCopy rxTransferSizeUpperThreshold])
  {
    if (([onCopy txTransferSizeUpperThreshold] & 1) == 0 && (objc_msgSend(onCopy, "txTransferSizeLowerThreshold") & 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  rxTransferSizeLowerThreshold = [onCopy rxTransferSizeLowerThreshold];
  if ([onCopy txTransferSizeUpperThreshold])
  {
    if (rxTransferSizeLowerThreshold)
    {
      goto LABEL_10;
    }

LABEL_13:
    provisionallyCopy = 33;
    goto LABEL_15;
  }

  txTransferSizeLowerThreshold = [onCopy txTransferSizeLowerThreshold];
  if (rxTransferSizeLowerThreshold)
  {
    if ((txTransferSizeLowerThreshold & 1) == 0)
    {
LABEL_11:
      provisionallyCopy = 32;
      goto LABEL_15;
    }

LABEL_10:
    provisionallyCopy = 34;
    goto LABEL_15;
  }

  if (txTransferSizeLowerThreshold)
  {
    goto LABEL_13;
  }

  [onCopy setHasPossibleTransferSizeDisposition:0];
  provisionallyCopy = provisionally;
LABEL_15:
  v9 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v10 = v9;
    v12 = 134218754;
    flowIdentifier = [onCopy flowIdentifier];
    v14 = 1024;
    provisionallyCopy2 = provisionally;
    v16 = 1024;
    v17 = provisionallyCopy;
    v18 = 2112;
    v19 = onCopy;
    _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_DEBUG, "_dispositionForPossibleLargeTransferOn: %lld  %d -> %d on %@", &v12, 0x22u);
  }

  return provisionallyCopy;
}

- (void)_handleFlowDeltas:(id)deltas snapshot:(id)snapshot
{
  v112 = *MEMORY[0x277D85DE8];
  deltasCopy = deltas;
  snapshotCopy = snapshot;
  [snapshotCopy flowSnapshotTimeIntervalSinceReferenceDate];
  v9 = v8;
  [deltasCopy prevSampleTime];
  v11 = v9 - v10;
  [snapshotCopy flowSnapshotTimeIntervalSinceReferenceDate];
  [deltasCopy setPrevSampleTime:?];
  deltaAccountingRxCellularBytes = [snapshotCopy deltaAccountingRxCellularBytes];
  deltaAccountingTxCellularBytes = [snapshotCopy deltaAccountingTxCellularBytes];
  deltaAccountingRxWiFiBytes = [snapshotCopy deltaAccountingRxWiFiBytes];
  deltaAccountingTxWiFiBytes = [snapshotCopy deltaAccountingTxWiFiBytes];
  v16 = deltaAccountingTxWiFiBytes;
  if (!deltaAccountingRxCellularBytes && !deltaAccountingTxCellularBytes && !deltaAccountingRxWiFiBytes && !deltaAccountingTxWiFiBytes)
  {
    if ([deltasCopy lastSampleWasIdle])
    {
      alternatingIdleNonIdlePeriods = [deltasCopy alternatingIdleNonIdlePeriods];
      lastObject = [alternatingIdleNonIdlePeriods lastObject];

      [(FlowSample *)lastObject elapsedTime];
      [(FlowSample *)lastObject setElapsedTime:v11 + v19];
    }

    else
    {
      [deltasCopy pendingFlowNonIdleDuration];
      [deltasCopy setPendingFlowNonIdleDuration:v11 + v30];
      [deltasCopy pendingFlowNonIdleDuration];
      v11 = v31;
      if (v31 <= 0.8)
      {
        goto LABEL_26;
      }

      [deltasCopy setPendingFlowNonIdleDuration:0.0];
      [deltasCopy setLastSampleWasIdle:1];
      alternatingIdleNonIdlePeriods2 = [deltasCopy alternatingIdleNonIdlePeriods];

      if (!alternatingIdleNonIdlePeriods2)
      {
        v33 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [deltasCopy setAlternatingIdleNonIdlePeriods:v33];
      }

      nonIdleSamples = [deltasCopy nonIdleSamples];
      if (nonIdleSamples)
      {
        v35 = nonIdleSamples;
        nonIdleSamples2 = [deltasCopy nonIdleSamples];
        v37 = [nonIdleSamples2 count];

        if (v37)
        {
          nonIdleSamples3 = [deltasCopy nonIdleSamples];
          v39 = [nonIdleSamples3 objectAtIndexedSubscript:0];

          nonIdleSamples4 = [deltasCopy nonIdleSamples];
          v41 = [nonIdleSamples4 count];

          if (v41 >= 2)
          {
            v42 = 1;
            do
            {
              nonIdleSamples5 = [deltasCopy nonIdleSamples];
              v44 = [nonIdleSamples5 objectAtIndexedSubscript:v42];
              [v39 accumulateFrom:v44];

              ++v42;
              nonIdleSamples6 = [deltasCopy nonIdleSamples];
              v46 = [nonIdleSamples6 count];
            }

            while (v46 > v42);
          }

          nonIdleSamples7 = [deltasCopy nonIdleSamples];
          [nonIdleSamples7 removeAllObjects];

          alternatingIdleNonIdlePeriods3 = [deltasCopy alternatingIdleNonIdlePeriods];
          [alternatingIdleNonIdlePeriods3 addObject:v39];
        }
      }

      lastObject = objc_alloc_init(FlowSample);
      [(FlowSample *)lastObject setElapsedTime:v11];
      alternatingIdleNonIdlePeriods4 = [deltasCopy alternatingIdleNonIdlePeriods];
      [alternatingIdleNonIdlePeriods4 addObject:lastObject];

      alternatingIdleNonIdlePeriods5 = [deltasCopy alternatingIdleNonIdlePeriods];
      v51 = [alternatingIdleNonIdlePeriods5 count];
      maxAlternatingIdleNonIdleSamples = self->_maxAlternatingIdleNonIdleSamples;

      if (v51 <= maxAlternatingIdleNonIdleSamples)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          alternatingIdleNonIdlePeriods6 = [deltasCopy alternatingIdleNonIdlePeriods];
          [alternatingIdleNonIdlePeriods6 removeObjectAtIndex:0];

          alternatingIdleNonIdlePeriods7 = [deltasCopy alternatingIdleNonIdlePeriods];
          v55 = [alternatingIdleNonIdlePeriods7 count];
          v56 = self->_maxAlternatingIdleNonIdleSamples;
        }

        while (v55 > v56);
      }
    }

    deltaAccountingTxCellularBytes = 0;
LABEL_26:
    [deltasCopy flowIdleDuration];
    [deltasCopy setFlowIdleDuration:v11 + v57];
    goto LABEL_57;
  }

  [deltasCopy setLastSampleWasIdle:0];
  nonIdleSamples8 = [deltasCopy nonIdleSamples];

  if (!nonIdleSamples8)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB18]);
    [deltasCopy setNonIdleSamples:v21];
  }

  nonIdleSamples9 = [deltasCopy nonIdleSamples];
  lastObject2 = [nonIdleSamples9 lastObject];

  [deltasCopy pendingFlowNonIdleDuration];
  if (v24 > 0.0)
  {
    if (lastObject2)
    {
      [deltasCopy pendingFlowNonIdleDuration];
      v26 = v25 * 0.5;
      [lastObject2 elapsedTime];
      [lastObject2 setElapsedTime:v27 + v26];
      [deltasCopy pendingFlowNonIdleDuration];
      v29 = v28 * 0.5;
    }

    else
    {
      v58 = deltaAccountingTxCellularBytes;
      v59 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v102 = deltasCopy;
        _os_log_impl(&dword_23255B000, v59, OS_LOG_TYPE_DEBUG, "_handleFlowDeltas finds no prev sample when pendingFlowNonIdleDuration, ledger %{public}@", buf, 0xCu);
      }

      [deltasCopy pendingFlowNonIdleDuration];
      deltaAccountingTxCellularBytes = v58;
    }

    v11 = v11 + v29;
    [deltasCopy setPendingFlowNonIdleDuration:0.0];
  }

  if (lastObject2 && (([lastObject2 elapsedTime], v11 < 0.8) || v11 + v60 < 2.0))
  {
    [lastObject2 elapsedTime];
    [lastObject2 setElapsedTime:v11 + v76];
    [lastObject2 setTotalObservedCellRxBytes:{objc_msgSend(lastObject2, "totalObservedCellRxBytes") + objc_msgSend(snapshotCopy, "deltaAccountingRxCellularBytes")}];
    [lastObject2 setTotalObservedCellTxBytes:{objc_msgSend(lastObject2, "totalObservedCellTxBytes") + objc_msgSend(snapshotCopy, "deltaAccountingTxCellularBytes")}];
    [lastObject2 setTotalObservedWiFiRxBytes:{objc_msgSend(lastObject2, "totalObservedWiFiRxBytes") + deltaAccountingRxWiFiBytes}];
    [lastObject2 setTotalObservedWiFiTxBytes:{objc_msgSend(lastObject2, "totalObservedWiFiTxBytes") + v16}];
  }

  else
  {
    v61 = deltaAccountingTxCellularBytes;
    v62 = objc_alloc_init(FlowSample);
    [(FlowSample *)v62 setElapsedTime:v11];
    [(FlowSample *)v62 setTotalObservedCellRxBytes:deltaAccountingRxCellularBytes];
    log = v61;
    [(FlowSample *)v62 setTotalObservedCellTxBytes:v61];
    v97 = deltaAccountingRxWiFiBytes;
    [(FlowSample *)v62 setTotalObservedWiFiRxBytes:deltaAccountingRxWiFiBytes];
    v98 = v16;
    [(FlowSample *)v62 setTotalObservedWiFiTxBytes:v16];
    if ([snapshotCopy interfaceCellular])
    {
      flowuuid = [snapshotCopy flowuuid];
      [(FlowSample *)v62 acquireCeilingValuesForCellFlow:flowuuid];
    }

    nonIdleSamples10 = [deltasCopy nonIdleSamples];
    [nonIdleSamples10 addObject:v62];

    nonIdleSamples11 = [deltasCopy nonIdleSamples];
    v66 = [nonIdleSamples11 count];
    maxContinuouslyActiveSamples = self->_maxContinuouslyActiveSamples;

    if (v66 > maxContinuouslyActiveSamples)
    {
      do
      {
        nonIdleSamples12 = [deltasCopy nonIdleSamples];
        v69 = [nonIdleSamples12 objectAtIndexedSubscript:0];
        nonIdleSamples13 = [deltasCopy nonIdleSamples];
        v71 = [nonIdleSamples13 objectAtIndexedSubscript:1];
        [v69 accumulateFrom:v71];

        nonIdleSamples14 = [deltasCopy nonIdleSamples];
        [nonIdleSamples14 removeObjectAtIndex:1];

        nonIdleSamples15 = [deltasCopy nonIdleSamples];
        v74 = [nonIdleSamples15 count];
        v75 = self->_maxContinuouslyActiveSamples;
      }

      while (v74 > v75);
    }

    deltaAccountingRxWiFiBytes = v97;
    v16 = v98;
    deltaAccountingTxCellularBytes = log;
  }

  if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
  {
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setTotalRxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_cellInterfaceSampler totalRxIfTypeBytes]+ deltaAccountingRxCellularBytes];
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setTotalTxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_cellInterfaceSampler totalTxIfTypeBytes]+ deltaAccountingTxCellularBytes];
    [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler setLastInterfaceTrafficTimestamp:apparentTime()];
  }

  if (deltaAccountingRxWiFiBytes | v16)
  {
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setTotalRxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler totalRxIfTypeBytes]+ deltaAccountingRxWiFiBytes];
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setTotalTxIfTypeBytes:[(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler totalTxIfTypeBytes]+ v16];
    [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler setLastInterfaceTrafficTimestamp:apparentTime()];
  }

  [deltasCopy setTotalObservedCellRxBytes:{objc_msgSend(deltasCopy, "totalObservedCellRxBytes") + deltaAccountingRxCellularBytes}];
  [deltasCopy setTotalObservedCellTxBytes:{objc_msgSend(deltasCopy, "totalObservedCellTxBytes") + deltaAccountingTxCellularBytes}];
  [deltasCopy setTotalObservedWiFiRxBytes:{objc_msgSend(deltasCopy, "totalObservedWiFiRxBytes") + deltaAccountingRxWiFiBytes}];
  [deltasCopy setTotalObservedWiFiTxBytes:{objc_msgSend(deltasCopy, "totalObservedWiFiTxBytes") + v16}];
  if (trafficClassIsAudioVideo([snapshotCopy trafficClass]))
  {
    if (([snapshotCopy isADaemon] & 1) != 0 || !objc_msgSend(snapshotCopy, "uiBackgroundAudioCapable"))
    {
      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        loga = v83;
        processName = [snapshotCopy processName];
        processID = [snapshotCopy processID];
        v86 = deltaAccountingTxCellularBytes;
        v87 = deltaAccountingRxWiFiBytes;
        isADaemon = [snapshotCopy isADaemon];
        uiBackgroundAudioCapable = [snapshotCopy uiBackgroundAudioCapable];
        *buf = 138413058;
        v102 = processName;
        v103 = 1024;
        *v104 = processID;
        *&v104[4] = 1024;
        *&v104[6] = isADaemon;
        deltaAccountingRxWiFiBytes = v87;
        deltaAccountingTxCellularBytes = v86;
        LOWORD(v105) = 1024;
        *(&v105 + 2) = uiBackgroundAudioCapable;
        _os_log_impl(&dword_23255B000, loga, OS_LOG_TYPE_DEBUG, "Ignoring A/V bytes from %@[%d], daemon = %d, backgroundAudio = %d", buf, 0x1Eu);
      }
    }

    else
    {
      v77 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        v78 = v77;
        processName2 = [snapshotCopy processName];
        processID2 = [snapshotCopy processID];
        *buf = 134219266;
        v102 = deltaAccountingRxCellularBytes;
        v103 = 2048;
        *v104 = deltaAccountingRxWiFiBytes;
        *&v104[8] = 2048;
        v105 = deltaAccountingTxCellularBytes;
        v106 = 2048;
        v107 = v16;
        v108 = 2112;
        v109 = processName2;
        v110 = 1024;
        v111 = processID2;
        _os_log_impl(&dword_23255B000, v78, OS_LOG_TYPE_INFO, "Accumulating A/V cell/Wifi  rx: %llu/%llu, tx: %llu/%llu bytes from %@[%d]", buf, 0x3Au);
      }

      v81 = self->_totalCellAudioVideoTxBytes + deltaAccountingTxCellularBytes;
      self->_totalCellAudioVideoRxBytes += deltaAccountingRxCellularBytes;
      self->_totalCellAudioVideoTxBytes = v81;
      v82 = self->_totalWiFiAudioVideoTxBytes + v16;
      self->_totalWiFiAudioVideoRxBytes += deltaAccountingRxWiFiBytes;
      self->_totalWiFiAudioVideoTxBytes = v82;
    }
  }

  v90 = mbpsThroughput(deltaAccountingRxWiFiBytes + deltaAccountingRxCellularBytes, v11);
  v91 = mbpsThroughput(v16 + deltaAccountingTxCellularBytes, v11);
  [deltasCopy maxRxThroughput];
  if (v90 > v92)
  {
    [deltasCopy setMaxRxThroughput:v90];
  }

  [deltasCopy maxTxThroughput];
  if (v91 > v93)
  {
    [deltasCopy setMaxTxThroughput:v91];
  }

  [deltasCopy flowNonIdleDuration];
  [deltasCopy setFlowNonIdleDuration:v11 + v94];
LABEL_57:
  if ([snapshotCopy firstOccurrence])
  {
    if (deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes)
    {
LABEL_64:
      v96 = 1;
      goto LABEL_65;
    }

LABEL_62:
    if (([snapshotCopy interfaceCellular] & 1) == 0 && !objc_msgSend(snapshotCopy, "rxCellularBytes"))
    {
      v96 = 1;
      if (![snapshotCopy txCellularBytes])
      {
        goto LABEL_66;
      }

      goto LABEL_65;
    }

    goto LABEL_64;
  }

  snapshotReason = [snapshotCopy snapshotReason];
  v96 = snapshotReason == 2;
  if (!(deltaAccountingRxCellularBytes | deltaAccountingTxCellularBytes))
  {
    if (snapshotReason != 2)
    {
      if (!(deltaAccountingRxWiFiBytes | v16))
      {
        goto LABEL_74;
      }

      goto LABEL_67;
    }

    goto LABEL_62;
  }

LABEL_65:
  [(FlowHistorian *)self->_cellInterfaceSampler applyDeltaRx:deltaAccountingRxCellularBytes deltaTx:deltaAccountingTxCellularBytes snapshot:snapshotCopy];
LABEL_66:
  if (deltaAccountingRxWiFiBytes | v16 || v96 && (([snapshotCopy interfaceWiFi] & 1) != 0 || objc_msgSend(snapshotCopy, "rxWiFiBytes") || objc_msgSend(snapshotCopy, "txWiFiBytes")))
  {
LABEL_67:
    [(FlowHistorian *)self->_wifiInterfaceSampler applyDeltaRx:deltaAccountingRxWiFiBytes deltaTx:v16 snapshot:snapshotCopy];
  }

LABEL_74:
}

- (void)_coreMediaAssetDownloadFlushAll
{
  v33 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_originLedgers;
  v19 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v32 count:16];
  v2 = 0;
  if (v19)
  {
    v17 = *v26;
    do
    {
      v3 = 0;
      do
      {
        if (*v26 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v20 = v3;
        v4 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:*(*(&v25 + 1) + 8 * v3)];
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v5 = [&unk_2847EEC28 countByEnumeratingWithState:&v21 objects:v31 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v22;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              v9 = v2;
              if (*v22 != v7)
              {
                objc_enumerationMutation(&unk_2847EEC28);
              }

              v10 = *(*(&v21 + 1) + 8 * i);
              delegates = [v4 delegates];
              v2 = [delegates objectForKeyedSubscript:v10];

              if (v2)
              {
                currentAssetDownloads = [v2 currentAssetDownloads];

                if (currentAssetDownloads)
                {
                  v13 = flowScrutinyLogHandle;
                  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
                  {
                    v14 = v13;
                    currentAssetDownloads2 = [v2 currentAssetDownloads];
                    *buf = 138412290;
                    v30 = currentAssetDownloads2;
                    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer _coreMediaAssetDownloadFlushAll, flush %@", buf, 0xCu);
                  }

                  [v2 setCurrentAssetDownloads:0];
                }
              }
            }

            v6 = [&unk_2847EEC28 countByEnumeratingWithState:&v21 objects:v31 count:16];
          }

          while (v6);
        }

        v3 = v20 + 1;
      }

      while (v20 + 1 != v19);
      v19 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v25 objects:v32 count:16];
    }

    while (v19);
  }
}

- (void)_coreMediaAssetDownloadCompletion:(id)completion for:(id)for at:(double)at
{
  v17 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  forCopy = for;
  downloadState = [completionCopy downloadState];
  [completionCopy thisRunStartTime];
  v11 = at - v10;
  if (downloadState == 3)
  {
    [completionCopy prevRunIdleTime];
    [completionCopy setPrevRunIdleTime:v12 + v11];
  }

  else
  {
    [completionCopy prevRunBusyTime];
    [completionCopy setPrevRunBusyTime:v13 + v11];
    [completionCopy setPrevRunsCellRxBytes:{objc_msgSend(forCopy, "totalObservedCellRxBytes") - objc_msgSend(completionCopy, "thisRunStartCellRxBytes") + objc_msgSend(completionCopy, "prevRunsCellRxBytes")}];
    [completionCopy setPrevRunsCellTxBytes:{objc_msgSend(forCopy, "totalObservedCellTxBytes") - objc_msgSend(completionCopy, "thisRunStartCellTxBytes") + objc_msgSend(completionCopy, "prevRunsCellTxBytes")}];
    [completionCopy setPrevRunsWiFiRxBytes:{objc_msgSend(forCopy, "totalObservedWiFiRxBytes") - objc_msgSend(completionCopy, "thisRunStartWiFiRxBytes") + objc_msgSend(completionCopy, "prevRunsWiFiRxBytes")}];
    [completionCopy setPrevRunsWiFiTxBytes:{objc_msgSend(forCopy, "totalObservedWiFiTxBytes") - objc_msgSend(completionCopy, "thisRunStartWiFiTxBytes") + objc_msgSend(completionCopy, "prevRunsWiFiTxBytes")}];
  }

  v14 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = completionCopy;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer finishing asset download %@", &v15, 0xCu);
  }
}

- (void)noteCoreMediaAssetDownloadEvent:(unint64_t)event downloadUUID:(id)d byProcess:(id)process onBehalfOf:(id)of duration:(double)duration at:(double)at
{
  v116 = *MEMORY[0x277D85DE8];
  dCopy = d;
  processCopy = process;
  ofCopy = of;
  v17 = ofCopy;
  if (activeTraceTargets)
  {
    traceEntry(1, "[FlowScrutinizer noteCoreMediaAssetDownloadEvent:downloadUUID:byProcess:onBehalfOf:duration:at:]", "%d %@ %@ %@ %f %t", event, processCopy, dCopy, ofCopy, *&duration, *&at);
  }

  if (!self->_assetDownloadsScrutinized)
  {
    v39 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 0;
    v40 = "noteCoreMediaAssetDownloadEvent called when no scrutiny required";
LABEL_26:
    _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_86;
  }

  if (event != 1)
  {
    if (dCopy)
    {
      v88 = v17;
      v90 = dCopy;
      v41 = processCopy;
      v107 = 0u;
      v108 = 0u;
      v105 = 0u;
      v106 = 0u;
      v42 = self->_originLedgers;
      v43 = [(NSMutableDictionary *)v42 countByEnumeratingWithState:&v105 objects:v111 count:16];
      if (!v43)
      {
        v36 = 0;
        goto LABEL_72;
      }

      v44 = v43;
      eventCopy = event;
      v36 = 0;
      v45 = *v106;
LABEL_30:
      v46 = 0;
      while (1)
      {
        v47 = v36;
        if (*v106 != v45)
        {
          objc_enumerationMutation(v42);
        }

        v48 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:*(*(&v105 + 1) + 8 * v46)];
        delegates = [v48 delegates];
        v36 = [delegates objectForKeyedSubscript:v41];

        if (v36)
        {
          currentAssetDownloads = [(CoreMediaDownload *)v36 currentAssetDownloads];

          if (currentAssetDownloads)
          {
            currentAssetDownloads2 = [(CoreMediaDownload *)v36 currentAssetDownloads];
            v52 = [currentAssetDownloads2 objectForKeyedSubscript:v90];

            if (v52)
            {
              break;
            }
          }
        }

        if (v44 == ++v46)
        {
          v44 = [(NSMutableDictionary *)v42 countByEnumeratingWithState:&v105 objects:v111 count:16];
          if (v44)
          {
            goto LABEL_30;
          }

LABEL_72:

          v80 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v80, OS_LOG_TYPE_ERROR, "FlowScrutinizer can't find a core media asset download", buf, 2u);
          }

          v29 = 0;
          dCopy = v90;
LABEL_79:
          processCopy = v41;
LABEL_80:
          v17 = v88;
          goto LABEL_81;
        }
      }

      if (eventCopy == 2)
      {
        v29 = v52;
        [(FlowScrutinizer *)self _coreMediaAssetDownloadCompletion:v52 for:v36 at:at];
        currentAssetDownloads3 = [(CoreMediaDownload *)v36 currentAssetDownloads];
        dCopy = v90;
        [currentAssetDownloads3 removeObjectForKey:v90];

        goto LABEL_79;
      }

      dCopy = v90;
      v29 = v52;
      if (eventCopy == 3)
      {
        processCopy = v41;
        if ([(NSMutableDictionary *)v52 downloadState]!= 3)
        {
          [(NSMutableDictionary *)v52 thisRunStartTime];
          v86 = at - v85;
          [(NSMutableDictionary *)v52 prevRunBusyTime];
          [(NSMutableDictionary *)v52 setPrevRunBusyTime:v87 + v86];
          [(NSMutableDictionary *)v52 setThisRunStartTime:at];
          [(NSMutableDictionary *)v52 setPrevRunsCellRxBytes:[(CoreMediaDownload *)v36 totalObservedCellRxBytes]- [(NSMutableDictionary *)v52 thisRunStartCellRxBytes]+ [(NSMutableDictionary *)v52 prevRunsCellRxBytes]];
          [(NSMutableDictionary *)v52 setPrevRunsCellTxBytes:[(CoreMediaDownload *)v36 totalObservedCellTxBytes]- [(NSMutableDictionary *)v52 thisRunStartCellTxBytes]+ [(NSMutableDictionary *)v52 prevRunsCellTxBytes]];
          [(NSMutableDictionary *)v52 setPrevRunsWiFiRxBytes:[(CoreMediaDownload *)v36 totalObservedWiFiRxBytes]- [(NSMutableDictionary *)v52 thisRunStartWiFiRxBytes]+ [(NSMutableDictionary *)v52 prevRunsWiFiRxBytes]];
          [(NSMutableDictionary *)v52 setPrevRunsWiFiTxBytes:[(CoreMediaDownload *)v36 totalObservedWiFiTxBytes]- [(NSMutableDictionary *)v52 thisRunStartWiFiTxBytes]+ [(NSMutableDictionary *)v52 prevRunsWiFiTxBytes]];
          [(NSMutableDictionary *)v52 setDownloadState:3];
          goto LABEL_80;
        }

        v81 = flowScrutinyLogHandle;
        v17 = v88;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v82 = "FlowScrutinizer told to pause an asset download that is already paused";
      }

      else
      {
        processCopy = v41;
        v17 = v88;
        if (eventCopy != 4)
        {
          goto LABEL_81;
        }

        if ([(NSMutableDictionary *)v52 downloadState]== 3)
        {
          [(NSMutableDictionary *)v52 thisRunStartTime];
          v74 = at - v73;
          [(NSMutableDictionary *)v52 prevRunIdleTime];
          [(NSMutableDictionary *)v52 setPrevRunIdleTime:v75 + v74];
          [(NSMutableDictionary *)v52 setThisRunStartTime:at];
          [(NSMutableDictionary *)v52 setThisRunStartCellRxBytes:[(CoreMediaDownload *)v36 totalObservedCellRxBytes]];
          [(NSMutableDictionary *)v52 setThisRunStartCellTxBytes:[(CoreMediaDownload *)v36 totalObservedCellTxBytes]];
          [(NSMutableDictionary *)v52 setThisRunStartWiFiRxBytes:[(CoreMediaDownload *)v36 totalObservedWiFiRxBytes]];
          [(NSMutableDictionary *)v52 setThisRunStartWiFiTxBytes:[(CoreMediaDownload *)v36 totalObservedWiFiTxBytes]];
          [(NSMutableDictionary *)v52 estimatedDuration];
          v38 = v52;
          if (v76 >= self->_minCoreMediaAssetDownloadEstimatedDuration)
          {
            goto LABEL_87;
          }

          v77 = 5;
          goto LABEL_88;
        }

        v81 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_81;
        }

        *buf = 0;
        v82 = "FlowScrutinizer told to resume an asset download that wasn't paused";
      }

      _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_ERROR, v82, buf, 2u);
      goto LABEL_81;
    }

    v53 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_ERROR, "Apparent mediaserverd restart, clearing any current asset downloads", buf, 2u);
    }

    v103 = 0u;
    v104 = 0u;
    v101 = 0u;
    v102 = 0u;
    v29 = self->_originLedgers;
    v54 = [(NSMutableDictionary *)v29 countByEnumeratingWithState:&v101 objects:v110 count:16];
    if (v54)
    {
      v55 = v54;
      v89 = v17;
      v56 = *v102;
      v92 = v29;
      v93 = processCopy;
      v91 = *v102;
      do
      {
        v57 = 0;
        v94 = v55;
        do
        {
          if (*v102 != v56)
          {
            objc_enumerationMutation(v29);
          }

          v58 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:*(*(&v101 + 1) + 8 * v57)];
          delegates2 = [v58 delegates];
          v60 = [delegates2 objectForKeyedSubscript:processCopy];

          if (v60)
          {
            currentAssetDownloads4 = [v60 currentAssetDownloads];

            if (currentAssetDownloads4)
            {
              v96 = v58;
              currentAssetDownloads5 = [v60 currentAssetDownloads];
              allKeys = [currentAssetDownloads5 allKeys];

              v99 = 0u;
              v100 = 0u;
              v97 = 0u;
              v98 = 0u;
              v64 = allKeys;
              v65 = [v64 countByEnumeratingWithState:&v97 objects:v109 count:16];
              if (v65)
              {
                v66 = v65;
                v67 = *v98;
                do
                {
                  for (i = 0; i != v66; ++i)
                  {
                    if (*v98 != v67)
                    {
                      objc_enumerationMutation(v64);
                    }

                    v69 = *(*(&v97 + 1) + 8 * i);
                    currentAssetDownloads6 = [v60 currentAssetDownloads];
                    v71 = [currentAssetDownloads6 objectForKeyedSubscript:v69];
                    [(FlowScrutinizer *)self _coreMediaAssetDownloadCompletion:v71 for:v60 at:at];

                    currentAssetDownloads7 = [v60 currentAssetDownloads];
                    [currentAssetDownloads7 removeObjectForKey:v69];
                  }

                  v66 = [v64 countByEnumeratingWithState:&v97 objects:v109 count:16];
                }

                while (v66);
              }

              v29 = v92;
              processCopy = v93;
              v56 = v91;
              v55 = v94;
              v58 = v96;
            }
          }

          ++v57;
        }

        while (v57 != v55);
        v55 = [(NSMutableDictionary *)v29 countByEnumeratingWithState:&v101 objects:v110 count:16];
      }

      while (v55);
      v17 = v89;
      dCopy = 0;
    }

    goto LABEL_82;
  }

  if (!v17)
  {
    v39 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_86;
    }

    *buf = 0;
    v40 = "FlowScrutinizer handed null originator for asset download start";
    goto LABEL_26;
  }

  v18 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v17];
  if (!v18)
  {
    v18 = objc_alloc_init(FlowOriginLedger);
    [(FlowOriginLedger *)v18 setName:v17];
    [(NSMutableDictionary *)self->_originLedgers setObject:v18 forKeyedSubscript:v17];
    v19 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v113 = v17;
      v114 = 2114;
      v115 = v18;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEBUG, "Origin ledger created for media download event  %{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  delegates3 = [(FlowOriginLedger *)v18 delegates];

  if (!delegates3)
  {
    v21 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(FlowOriginLedger *)v18 setDelegates:v21];
  }

  delegates4 = [(FlowOriginLedger *)v18 delegates];
  v23 = [delegates4 objectForKeyedSubscript:processCopy];

  if (!v23)
  {
    v24 = objc_alloc_init(FlowOriginLedger);
    processCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@:%@", v17, processCopy];
    [(FlowOriginLedger *)v24 setName:processCopy];

    delegates5 = [(FlowOriginLedger *)v18 delegates];
    [delegates5 setObject:v24 forKeyedSubscript:processCopy];

    v27 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543618;
      v113 = processCopy;
      v114 = 2114;
      v115 = v24;
      _os_log_impl(&dword_23255B000, v27, OS_LOG_TYPE_DEBUG, "Origin ledger (delegate) created for media download event  %{public}@ -> %{public}@", buf, 0x16u);
    }
  }

  delegates6 = [(FlowOriginLedger *)v18 delegates];
  v29 = [delegates6 objectForKeyedSubscript:processCopy];

  currentAssetDownloads8 = [(NSMutableDictionary *)v29 currentAssetDownloads];

  if (!currentAssetDownloads8)
  {
    v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
    [(NSMutableDictionary *)v29 setCurrentAssetDownloads:v31];
  }

  currentAssetDownloads9 = [(NSMutableDictionary *)v29 currentAssetDownloads];
  v33 = [currentAssetDownloads9 objectForKeyedSubscript:dCopy];

  if (!v33)
  {
    v36 = objc_alloc_init(CoreMediaDownload);
    [(CoreMediaDownload *)v36 setStartTime:at];
    [(CoreMediaDownload *)v36 setEstimatedDuration:duration];
    [(CoreMediaDownload *)v36 setThisRunStartTime:at];
    [(CoreMediaDownload *)v36 setThisRunStartCellRxBytes:[(NSMutableDictionary *)v29 totalObservedCellRxBytes]];
    [(CoreMediaDownload *)v36 setThisRunStartCellTxBytes:[(NSMutableDictionary *)v29 totalObservedCellTxBytes]];
    if (self->_minCoreMediaAssetDownloadEstimatedDuration <= duration)
    {
      v78 = 1;
    }

    else
    {
      v78 = 5;
    }

    [(CoreMediaDownload *)v36 setDownloadState:v78];
    currentAssetDownloads10 = [(NSMutableDictionary *)v29 currentAssetDownloads];
    [currentAssetDownloads10 setObject:v36 forKeyedSubscript:dCopy];

    goto LABEL_81;
  }

  v34 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "FlowScrutinizer told to start a previously known asset download", buf, 2u);
  }

  currentAssetDownloads11 = [(NSMutableDictionary *)v29 currentAssetDownloads];
  v36 = [currentAssetDownloads11 objectForKeyedSubscript:dCopy];

  [(CoreMediaDownload *)v36 estimatedDuration];
  if (v37 < duration)
  {
    [(CoreMediaDownload *)v36 setEstimatedDuration:duration];
    if (self->_minCoreMediaAssetDownloadEstimatedDuration <= duration && [(CoreMediaDownload *)v36 downloadState]== 5)
    {
      v38 = v36;
LABEL_87:
      v77 = 1;
LABEL_88:
      [(CoreMediaDownload *)v38 setDownloadState:v77];
    }
  }

LABEL_81:

LABEL_82:
  if (![(FlowScrutinizer *)self cellThroughputAdviserShouldRun])
  {
    v84 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v84, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer setting cellThroughputAdviserShouldRun after receipt of coremedia asset download event", buf, 2u);
    }

    [(FlowScrutinizer *)self setCellThroughputAdviserShouldRun:1];
  }

LABEL_86:
}

- (void)noteExpectedTransfer:(unint64_t)transfer inbound:(BOOL)inbound upperThreshold:(BOOL)threshold flowUUID:(id)d at:(double)at
{
  thresholdCopy = threshold;
  inboundCopy = inbound;
  v135 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v13 = dCopy;
  ++self->_numExpectedTransferSymptoms;
  if (activeTraceTargets)
  {
    traceEntry(1, "[FlowScrutinizer noteExpectedTransfer:inbound:upperThreshold:flowUUID:at:]", "%lld %d %d %@ %t", transfer, inboundCopy, thresholdCopy, dCopy, *&at);
  }

  v14 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218754;
    transferCopy = transfer;
    v123 = 1024;
    *v124 = inboundCopy;
    *&v124[4] = 1024;
    *&v124[6] = thresholdCopy;
    *v125 = 2112;
    *&v125[2] = v13;
    _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer noteExpectedTransfer:%lld %d %d %@", buf, 0x22u);
  }

  v104 = v13;
  if (v13)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v15 = self->_originLedgers;
    v91 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v117 objects:v134 count:16];
    v84 = thresholdCopy;
    v85 = inboundCopy;
    transferCopy2 = transfer;
    if (v91)
    {
      unsignedLongLongValue = 0;
      v87 = 0;
      v88 = v15;
      v92 = 0;
      v16 = 0;
      selfCopy = self;
      v90 = *v118;
      do
      {
        for (i = 0; i != v91; ++i)
        {
          if (*v118 != v90)
          {
            objc_enumerationMutation(v15);
          }

          v18 = *(*(&v117 + 1) + 8 * i);
          v19 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v18];
          v113 = 0u;
          v114 = 0u;
          v115 = 0u;
          v116 = 0u;
          v103 = v19;
          currentFlows = [v19 currentFlows];
          v21 = [currentFlows countByEnumeratingWithState:&v113 objects:v133 count:16];
          if (v21)
          {
            v22 = v21;
            v93 = v18;
            v95 = i;
            v23 = *v114;
            while (2)
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v114 != v23)
                {
                  objc_enumerationMutation(currentFlows);
                }

                v25 = *(*(&v113 + 1) + 8 * j);
                currentFlows2 = [v103 currentFlows];
                v27 = [currentFlows2 objectForKeyedSubscript:v25];

                flowUUID = [v27 flowUUID];
                if (flowUUID)
                {
                  v29 = flowUUID;
                  flowUUID2 = [v27 flowUUID];
                  v31 = [v104 isEqual:flowUUID2];

                  if (v31)
                  {
                    v32 = v27;

                    v18 = v93;
                    v33 = v93;

                    unsignedLongLongValue = [v25 unsignedLongLongValue];
                    v92 = v33;
                    v16 = v32;
                    v15 = v88;
                    self = selfCopy;
                    i = v95;
                    goto LABEL_22;
                  }
                }
              }

              v22 = [currentFlows countByEnumeratingWithState:&v113 objects:v133 count:16];
              if (v22)
              {
                continue;
              }

              break;
            }

            v15 = v88;
            self = selfCopy;
            v18 = v93;
            i = v95;
          }

LABEL_22:

          if (!v16)
          {
            v111 = 0u;
            v112 = 0u;
            v109 = 0u;
            v110 = 0u;
            obj = [v103 delegates];
            v101 = [obj countByEnumeratingWithState:&v109 objects:v132 count:16];
            if (v101)
            {
              v94 = v18;
              v96 = i;
              v100 = *v110;
              while (2)
              {
                v34 = 0;
                do
                {
                  if (*v110 != v100)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v102 = v34;
                  v35 = *(*(&v109 + 1) + 8 * v34);
                  delegates = [v103 delegates];
                  v99 = v35;
                  v37 = [delegates objectForKeyedSubscript:v35];

                  v107 = 0u;
                  v108 = 0u;
                  v105 = 0u;
                  v106 = 0u;
                  currentFlows3 = [v37 currentFlows];
                  v39 = [currentFlows3 countByEnumeratingWithState:&v105 objects:v131 count:16];
                  if (v39)
                  {
                    v40 = v39;
                    v41 = *v106;
LABEL_30:
                    v42 = 0;
                    while (1)
                    {
                      if (*v106 != v41)
                      {
                        objc_enumerationMutation(currentFlows3);
                      }

                      v43 = *(*(&v105 + 1) + 8 * v42);
                      currentFlows4 = [v37 currentFlows];
                      v16 = [currentFlows4 objectForKeyedSubscript:v43];

                      flowUUID3 = [(FlowLedger *)v16 flowUUID];
                      if (flowUUID3)
                      {
                        v46 = flowUUID3;
                        flowUUID4 = [(FlowLedger *)v16 flowUUID];
                        v48 = [v104 isEqual:flowUUID4];

                        if (v48)
                        {
                          break;
                        }
                      }

                      if (v40 == ++v42)
                      {
                        v40 = [currentFlows3 countByEnumeratingWithState:&v105 objects:v131 count:16];
                        if (v40)
                        {
                          goto LABEL_30;
                        }

                        goto LABEL_37;
                      }
                    }

                    unsignedLongLongValue = [v43 unsignedLongLongValue];

                    if (!v16)
                    {
                      goto LABEL_39;
                    }

                    v49 = v94;

                    v50 = v99;
                    v87 = v50;
                    v92 = v49;
                    goto LABEL_43;
                  }

LABEL_37:

LABEL_39:
                  v34 = v102 + 1;
                }

                while (v102 + 1 != v101);
                v101 = [obj countByEnumeratingWithState:&v109 objects:v132 count:16];
                if (v101)
                {
                  continue;
                }

                break;
              }

              v16 = 0;
LABEL_43:
              v15 = v88;
              self = selfCopy;
              i = v96;
            }

            else
            {
              v16 = 0;
            }
          }
        }

        v91 = [(NSMutableDictionary *)v15 countByEnumeratingWithState:&v117 objects:v134 count:16];
      }

      while (v91);

      if (v16)
      {
        ++self->_numMatchedExpectedTransferSymptoms;
        if (self->_accumulateCellAppHistoryEpisodes && [(FlowLedger *)v16 interfaceCellular])
        {
          v51 = [AppHistoryScreener fetchEpisodeFor:v92 inbound:v85];
          [(FlowLedger *)v16 setAppEpisode:v51];

          v52 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            v53 = v52;
            appEpisode = [(FlowLedger *)v16 appEpisode];
            if ([appEpisode screenIn])
            {
              v55 = "IN";
            }

            else
            {
              v55 = "OUT";
            }

            appEpisode2 = [(FlowLedger *)v16 appEpisode];
            *buf = 136315906;
            transferCopy = v55;
            v123 = 2112;
            *v124 = v104;
            *&v124[8] = 2112;
            *v125 = v92;
            *&v125[8] = 2048;
            *v126 = appEpisode2;
            _os_log_impl(&dword_23255B000, v53, OS_LOG_TYPE_DEFAULT, "App episode screened %s existing item %@ for app %@ (episode: %p)", buf, 0x2Au);
          }

          appEpisode3 = [(FlowLedger *)v16 appEpisode];
          if ([appEpisode3 screenIn])
          {
            v58 = 3;
          }

          else
          {
            v58 = 6;
          }

          [(FlowLedger *)v16 setExpectedTransferState:v58];
        }

        else
        {
          [(FlowLedger *)v16 setExpectedTransferState:3];
        }

        [(NSMutableDictionary *)self->_transferSizeFlows setObject:v16 forKeyedSubscript:v104];
        v60 = flowScrutinyLogHandle;
        if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
LABEL_74:
          if (!transferCopy2)
          {
            if (v85)
            {
              [(FlowLedger *)v16 setRxTransferSizeUpperThreshold:0];
              [(FlowLedger *)v16 setRxTransferSizeLowerThreshold:0];
              [(FlowLedger *)v16 setRxTransferSizeCount:0];
            }

            else
            {
              [(FlowLedger *)v16 setTxTransferSizeUpperThreshold:0];
              [(FlowLedger *)v16 setTxTransferSizeLowerThreshold:0];
              [(FlowLedger *)v16 setTxTransferSizeCount:0];
            }

            if (![(FlowLedger *)v16 rxTransferSizeUpperThreshold]&& ![(FlowLedger *)v16 rxTransferSizeLowerThreshold]&& ![(FlowLedger *)v16 txTransferSizeUpperThreshold]&& ![(FlowLedger *)v16 txTransferSizeLowerThreshold])
            {
              [(FlowLedger *)v16 setExpectedTransferState:1];
              appEpisode4 = [(FlowLedger *)v16 appEpisode];

              if (appEpisode4)
              {
                v75 = flowScrutinyLogHandle;
                if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
                {
                  v76 = v75;
                  appEpisode5 = [(FlowLedger *)v16 appEpisode];
                  *buf = 134218242;
                  transferCopy = appEpisode5;
                  v123 = 2112;
                  *v124 = v104;
                  _os_log_impl(&dword_23255B000, v76, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ with 0 count", buf, 0x16u);
                }

                appEpisode6 = [(FlowLedger *)v16 appEpisode];
                [appEpisode6 accrueRewardFromFlow:v16];

                [(FlowLedger *)v16 setAppEpisode:0];
              }

              transferSizeFlows = self->_transferSizeFlows;
              flowUUID5 = [(FlowLedger *)v16 flowUUID];
              [(NSMutableDictionary *)transferSizeFlows removeObjectForKey:flowUUID5];
            }

            goto LABEL_103;
          }

          if (v85)
          {
            [(FlowLedger *)v16 setRxTransferSizeCount:transferCopy2];
            if (v84)
            {
              v69 = 1;
              [(FlowLedger *)v16 setRxTransferSizeUpperThreshold:1];
              v70 = v16;
              v71 = 0;
LABEL_94:
              [(FlowLedger *)v70 setRxTransferSizeLowerThreshold:v71];
LABEL_99:
              [(FlowLedger *)v16 setHasPossibleTransferSizeDisposition:1];
              v81 = flowScrutinyLogHandle;
              if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
              {
                v82 = v81;
                flowIdentifier = [(FlowLedger *)v16 flowIdentifier];
                *buf = 134217984;
                transferCopy = flowIdentifier;
                _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_DEBUG, "FlowScrutinizer %lld set hasPossibleTransferSizeDisposition", buf, 0xCu);
              }

              if (v69)
              {
                [(FlowScrutinizer *)self setNumExpectedTransferSignificantChanges:[(FlowScrutinizer *)self numExpectedTransferSignificantChanges]+ 1];
              }

LABEL_103:
              v59 = v87;
              v13 = v92;
              goto LABEL_104;
            }

            if (![(FlowLedger *)v16 rxTransferSizeUpperThreshold])
            {
              v69 = 1;
              v70 = v16;
              v71 = 1;
              goto LABEL_94;
            }

LABEL_96:
            v69 = 0;
            goto LABEL_99;
          }

          [(FlowLedger *)v16 setTxTransferSizeCount:transferCopy2];
          if (v84)
          {
            v69 = 1;
            [(FlowLedger *)v16 setTxTransferSizeUpperThreshold:1];
            v72 = v16;
            v73 = 0;
          }

          else
          {
            if ([(FlowLedger *)v16 txTransferSizeUpperThreshold])
            {
              goto LABEL_96;
            }

            v69 = 1;
            v72 = v16;
            v73 = 1;
          }

          [(FlowLedger *)v72 setTxTransferSizeLowerThreshold:v73];
          goto LABEL_99;
        }

        *buf = 134219522;
        transferCopy = transferCopy2;
        v123 = 1024;
        *v124 = v85;
        *&v124[4] = 1024;
        *&v124[6] = v84;
        *v125 = 2048;
        *&v125[2] = unsignedLongLongValue;
        *v126 = 2112;
        *&v126[2] = v104;
        v127 = 2112;
        v128 = v92;
        v129 = 2112;
        v130 = v87;
        v61 = "FlowScrutinizer noteExpectedTransfer: matches transfer size %lld inbound %d upper threshold %d for flow %lld with UUID %@ for app %@ delegate %@";
        v62 = v60;
        v63 = OS_LOG_TYPE_DEFAULT;
        v64 = 64;
LABEL_73:
        _os_log_impl(&dword_23255B000, v62, v63, v61, buf, v64);
        goto LABEL_74;
      }

      v13 = v104;
    }

    else
    {

      v92 = 0;
      v87 = 0;
    }

    v65 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      transferCopy = v13;
      _os_log_impl(&dword_23255B000, v65, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer noteExpectedTransfer: can't find flow for UUID %@", buf, 0xCu);
    }

    v66 = [(NSMutableDictionary *)self->_transferSizeFlows objectForKeyedSubscript:v13];
    if (v66)
    {
      v16 = v66;
      ++self->_numDupDelayedMatchExpectedTransferSymptoms;
      v67 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_74;
      }

      *buf = 138412290;
      transferCopy = v104;
      v61 = "FlowScrutinizer noteExpectedTransfer: update to existing pending item for UUID %@";
      v62 = v67;
      v63 = OS_LOG_TYPE_DEFAULT;
      v64 = 12;
    }

    else
    {
      ++self->_numDelayedMatchExpectedTransferSymptoms;
      v16 = objc_alloc_init(FlowLedger);
      [(FlowLedger *)v16 setPrevSampleTime:at];
      [(FlowLedger *)v16 setFlowUUID:v13];
      [(FlowLedger *)v16 setExpectedTransferState:2];
      [(FlowLedger *)v16 setTransferStateEntryTimestamp:at];
      [(FlowLedger *)v16 setReportedDisposition:43];
      [(NSMutableDictionary *)self->_transferSizeFlows setObject:v16 forKeyedSubscript:v13];
      v68 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_74;
      }

      *buf = 138543618;
      transferCopy = v13;
      v123 = 2114;
      *v124 = v16;
      v61 = "Origin ledger created for noteExpectedTransfer %{public}@ -> %{public}@";
      v62 = v68;
      v63 = OS_LOG_TYPE_DEBUG;
      v64 = 22;
    }

    goto LABEL_73;
  }

  v16 = 0;
  v59 = 0;
LABEL_104:
}

- (void)scrutinizeFlow:(id)flow withClassification:(id)classification
{
  v111 = *MEMORY[0x277D85DE8];
  flowCopy = flow;
  classificationCopy = classification;
  v8 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9 = v8;
    verboseDescription = [flowCopy verboseDescription];
    *buf = 138412546;
    v105 = verboseDescription;
    v106 = 2112;
    *v107 = classificationCopy;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "FlowScrutinizer scrutinize snapshot %@ classification %@", buf, 0x16u);
  }

  snapshotReason = [flowCopy snapshotReason];
  if (classificationCopy)
  {
    v12 = snapshotReason;
    disposition = [classificationCopy disposition];
    v14 = disposition;
    if ((disposition - 5) < 4)
    {
      goto LABEL_5;
    }

    if (disposition == 40)
    {
      goto LABEL_118;
    }

    if (disposition == 3)
    {
LABEL_5:
      v102 = 1;
    }

    else
    {
      v102 = 0;
    }

    originLedgers = self->_originLedgers;
    attributedEntity = [flowCopy attributedEntity];
    v17 = [(NSMutableDictionary *)originLedgers objectForKeyedSubscript:attributedEntity];

    if (!v17)
    {
      v17 = objc_alloc_init(FlowOriginLedger);
      v18 = MEMORY[0x277CCACA8];
      attributedEntity2 = [flowCopy attributedEntity];
      v20 = [v18 stringWithFormat:@"%@", attributedEntity2];
      [(FlowOriginLedger *)v17 setName:v20];

      v21 = self->_originLedgers;
      attributedEntity3 = [flowCopy attributedEntity];
      [(NSMutableDictionary *)v21 setObject:v17 forKeyedSubscript:attributedEntity3];

      v23 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v24 = v23;
        attributedEntity4 = [flowCopy attributedEntity];
        *buf = 138543618;
        v105 = attributedEntity4;
        v106 = 2114;
        *v107 = v17;
        _os_log_impl(&dword_23255B000, v24, OS_LOG_TYPE_DEBUG, "Origin ledger created for new flow %{public}@ -> %{public}@", buf, 0x16u);
      }
    }

    delegateName = [flowCopy delegateName];

    v103 = v12;
    if (delegateName)
    {
      delegateName2 = [flowCopy delegateName];
      attributedEntity5 = [flowCopy attributedEntity];
      v29 = [delegateName2 isEqualToString:attributedEntity5];

      if ((v29 & 1) == 0)
      {
        delegates = [(FlowOriginLedger *)v17 delegates];

        if (!delegates)
        {
          v31 = objc_alloc_init(MEMORY[0x277CBEB38]);
          [(FlowOriginLedger *)v17 setDelegates:v31];
        }

        delegates2 = [(FlowOriginLedger *)v17 delegates];
        delegateName3 = [flowCopy delegateName];
        v34 = [delegates2 objectForKeyedSubscript:delegateName3];

        if (!v34)
        {
          v35 = objc_alloc_init(FlowOriginLedger);
          v36 = MEMORY[0x277CCACA8];
          attributedEntity6 = [flowCopy attributedEntity];
          delegateName4 = [flowCopy delegateName];
          v39 = [v36 stringWithFormat:@"%@:%@", attributedEntity6, delegateName4];
          [(FlowOriginLedger *)v35 setName:v39];

          delegates3 = [(FlowOriginLedger *)v17 delegates];
          delegateName5 = [flowCopy delegateName];
          [delegates3 setObject:v35 forKeyedSubscript:delegateName5];

          v42 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
          {
            v43 = v42;
            delegateName6 = [flowCopy delegateName];
            *buf = 138543618;
            v105 = delegateName6;
            v106 = 2114;
            *v107 = v35;
            _os_log_impl(&dword_23255B000, v43, OS_LOG_TYPE_DEBUG, "Origin ledger (delegate) created for new flow %{public}@ -> %{public}@", buf, 0x16u);
          }
        }

        delegates4 = [(FlowOriginLedger *)v17 delegates];
        delegateName7 = [flowCopy delegateName];
        v47 = [delegates4 objectForKeyedSubscript:delegateName7];

        v17 = v47;
      }
    }

    v48 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(flowCopy, "sourceIdentifier")}];
    currentFlows = [(FlowOriginLedger *)v17 currentFlows];
    v50 = [currentFlows objectForKeyedSubscript:v48];

    if (!v50)
    {
      if (-[NSMutableDictionary count](self->_transferSizeFlows, "count") && ([flowCopy flowuuid], v54 = objc_claimAutoreleasedReturnValue(), v54, v54) && (transferSizeFlows = self->_transferSizeFlows, objc_msgSend(flowCopy, "flowuuid"), v56 = objc_claimAutoreleasedReturnValue(), -[NSMutableDictionary objectForKeyedSubscript:](transferSizeFlows, "objectForKeyedSubscript:", v56), v53 = objc_claimAutoreleasedReturnValue(), v56, v53))
      {
        rxTransferSizeUpperThreshold = [(FlowLedger *)v53 rxTransferSizeLowerThreshold]|| [(FlowLedger *)v53 rxTransferSizeUpperThreshold];
        if (self->_accumulateCellAppHistoryEpisodes && [flowCopy interfaceCellular])
        {
          attributedEntity7 = [flowCopy attributedEntity];
          v64 = [AppHistoryScreener fetchEpisodeFor:attributedEntity7 inbound:rxTransferSizeUpperThreshold];
          [(FlowLedger *)v53 setAppEpisode:v64];

          v65 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            log = v65;
            appEpisode = [(FlowLedger *)v53 appEpisode];
            if ([appEpisode screenIn])
            {
              v66 = "IN";
            }

            else
            {
              v66 = "OUT";
            }

            flowuuid = [flowCopy flowuuid];
            attributedEntity8 = [flowCopy attributedEntity];
            appEpisode2 = [(FlowLedger *)v53 appEpisode];
            *buf = 136315906;
            v105 = v66;
            v12 = v103;
            v106 = 2112;
            *v107 = flowuuid;
            *&v107[8] = 2112;
            v108 = attributedEntity8;
            v109 = 2048;
            v110 = appEpisode2;
            _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "App episode screened %s provisional item %@ for app %@ (episode: %p)", buf, 0x2Au);
          }

          appEpisode3 = [(FlowLedger *)v53 appEpisode];
          if ([appEpisode3 screenIn])
          {
            v68 = 3;
          }

          else
          {
            v68 = 6;
          }

          [(FlowLedger *)v53 setExpectedTransferState:v68];
        }

        else
        {
          [(FlowLedger *)v53 setExpectedTransferState:3];
        }

        v14 = [(FlowScrutinizer *)self _dispositionForPossibleLargeTransferOn:v53 provisionally:v14];
      }

      else
      {
        v53 = objc_alloc_init(FlowLedger);
        [(FlowLedger *)v53 setExpectedTransferState:1];
        [(FlowLedger *)v53 setReportedDisposition:43];
      }

      ++self->_numFlowsScrutinized;
      currentFlows2 = [(FlowOriginLedger *)v17 currentFlows];

      if (!currentFlows2)
      {
        v70 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(FlowOriginLedger *)v17 setCurrentFlows:v70];
      }

      currentFlows3 = [(FlowOriginLedger *)v17 currentFlows];
      [currentFlows3 setObject:v53 forKeyedSubscript:v48];

      [(FlowLedger *)v53 setCreatorLedger:v17];
      -[FlowLedger setFlowIdentifier:](v53, "setFlowIdentifier:", [flowCopy sourceIdentifier]);
      -[FlowLedger setFlowStartedAsForeground:](v53, "setFlowStartedAsForeground:", [flowCopy startAppStateIsForeground]);
      flowType = [flowCopy flowType];
      [(FlowLedger *)v53 setFlowType:flowType];

      -[FlowLedger setInterfaceCellular:](v53, "setInterfaceCellular:", [flowCopy interfaceCellular]);
      [(FlowLedger *)v53 setLatestClassification:@"default"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [(FlowLedger *)v53 setFlowIsTCP:1];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(FlowLedger *)v53 setFlowIsUDP:1];
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(FlowLedger *)v53 setFlowIsQUIC:1];
          }
        }
      }

      if (v12 != 2)
      {
        flowuuid2 = [flowCopy flowuuid];

        if (flowuuid2)
        {
          flowuuid3 = [flowCopy flowuuid];
          v75 = [flowuuid3 copy];
          [(FlowLedger *)v53 setFlowUUID:v75];
        }

        -[FlowLedger setTrafficClass:](v53, "setTrafficClass:", [flowCopy trafficClass]);
        if (v102 && [flowCopy snapshotAppStateIsForeground])
        {
          [(FlowLedger *)v53 setNotedAsFGAudioVideoTC:1];
          numNotedAsFGAudioVideoTC = self->_numNotedAsFGAudioVideoTC;
          self->_numNotedAsFGAudioVideoTC = numNotedAsFGAudioVideoTC + 1;
          if (!numNotedAsFGAudioVideoTC)
          {
            [(FlowScrutinizer *)self setHasForegroundAVTrafficClassFlows:1];
          }

          if ([flowCopy interfaceCellular])
          {
            [(FlowLedger *)v53 setNotedAsCellFGAudioVideoTC:1];
            numNotedAsCellFGAudioVideoTC = self->_numNotedAsCellFGAudioVideoTC;
            self->_numNotedAsCellFGAudioVideoTC = numNotedAsCellFGAudioVideoTC + 1;
            if (!numNotedAsCellFGAudioVideoTC)
            {
              [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:1];
            }
          }

          else if ([flowCopy interfaceWiFi])
          {
            [(FlowLedger *)v53 setNotedAsWiFiFGAudioVideoTC:1];
            numNotedAsWiFiFGAudioVideoTC = self->_numNotedAsWiFiFGAudioVideoTC;
            self->_numNotedAsWiFiFGAudioVideoTC = numNotedAsWiFiFGAudioVideoTC + 1;
            if (!numNotedAsWiFiFGAudioVideoTC)
            {
              [(FlowScrutinizer *)self setHasForegroundWiFiAVTrafficClassFlows:1];
            }
          }
        }

        [flowCopy flowDuration];
        if (v79 <= 5.0)
        {
          [flowCopy flowStartTimeIntervalSinceReferenceDate];
        }

        else
        {
          [flowCopy flowSnapshotTimeIntervalSinceReferenceDate];
        }

        [(FlowLedger *)v53 setPrevSampleTime:?];
      }

      goto LABEL_97;
    }

    if (v12 == 2)
    {
      if ([(FlowLedger *)v50 notedAsFGAudioVideoTC])
      {
        --self->_numNotedAsFGAudioVideoTC;
      }

      if ([(FlowLedger *)v50 notedAsCellFGAudioVideoTC])
      {
        v51 = self->_numNotedAsCellFGAudioVideoTC;
        self->_numNotedAsCellFGAudioVideoTC = v51 - 1;
        if (v51 <= 1)
        {
          [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:0];
        }
      }

      if ([(FlowLedger *)v50 notedAsWiFiFGAudioVideoTC])
      {
        v52 = self->_numNotedAsWiFiFGAudioVideoTC;
        self->_numNotedAsWiFiFGAudioVideoTC = v52 - 1;
        if (v52 <= 1)
        {
          [(FlowScrutinizer *)self setHasForegroundWiFiAVTrafficClassFlows:0];
        }
      }

      v14 = 43;
      goto LABEL_29;
    }

    if ([(FlowLedger *)v50 hasPossibleTransferSizeDisposition])
    {
      v14 = [(FlowScrutinizer *)self _dispositionForPossibleLargeTransferOn:v50 provisionally:v14];
    }

    if ([(FlowLedger *)v50 notedAsFGAudioVideoTC])
    {
      if (v102 && ([flowCopy snapshotAppStateIsForeground] & 1) != 0)
      {
        goto LABEL_29;
      }

      --self->_numNotedAsFGAudioVideoTC;
      [(FlowLedger *)v50 setNotedAsFGAudioVideoTC:0];
      if ([(FlowLedger *)v50 notedAsCellFGAudioVideoTC])
      {
        v58 = self->_numNotedAsCellFGAudioVideoTC;
        self->_numNotedAsCellFGAudioVideoTC = v58 - 1;
        if (v58 <= 1)
        {
          [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:0];
        }
      }

      if (![(FlowLedger *)v50 notedAsWiFiFGAudioVideoTC])
      {
        goto LABEL_29;
      }

      v59 = self->_numNotedAsWiFiFGAudioVideoTC;
      self->_numNotedAsWiFiFGAudioVideoTC = v59 - 1;
      if (v59 > 1)
      {
        goto LABEL_29;
      }

      selfCopy2 = self;
      v61 = 0;
    }

    else
    {
      if (!v102 || ![flowCopy snapshotAppStateIsForeground])
      {
        goto LABEL_29;
      }

      [(FlowLedger *)v50 setNotedAsFGAudioVideoTC:1];
      v62 = self->_numNotedAsFGAudioVideoTC;
      self->_numNotedAsFGAudioVideoTC = v62 + 1;
      if (!v62)
      {
        [(FlowScrutinizer *)self setHasForegroundAVTrafficClassFlows:1];
      }

      if ([flowCopy interfaceCellular])
      {
        [(FlowLedger *)v50 setNotedAsCellFGAudioVideoTC:1];
        v63 = self->_numNotedAsCellFGAudioVideoTC;
        self->_numNotedAsCellFGAudioVideoTC = v63 + 1;
        if (!v63)
        {
          [(FlowScrutinizer *)self setHasForegroundCellAVTrafficClassFlows:1];
        }

        goto LABEL_29;
      }

      if (![flowCopy interfaceWiFi] || (-[FlowLedger setNotedAsWiFiFGAudioVideoTC:](v50, "setNotedAsWiFiFGAudioVideoTC:", 1), v95 = self->_numNotedAsWiFiFGAudioVideoTC, self->_numNotedAsWiFiFGAudioVideoTC = v95 + 1, v95))
      {
LABEL_29:
        v53 = v50;
LABEL_97:
        snapshotAppStateIsForeground = [flowCopy snapshotAppStateIsForeground];
        [(FlowLedger *)v53 setFlowLastSeenAsForeground:snapshotAppStateIsForeground];
        [(FlowOriginLedger *)v17 setMostRecentFlowSeenAsForeground:snapshotAppStateIsForeground];
        if (v50 || ([flowCopy flowDuration], v81 <= 5.0))
        {
          [(FlowScrutinizer *)self _handleFlowDeltas:v53 snapshot:flowCopy];
          -[FlowOriginLedger setTotalObservedCellRxBytes:](v17, "setTotalObservedCellRxBytes:", -[FlowOriginLedger totalObservedCellRxBytes](v17, "totalObservedCellRxBytes") + [flowCopy deltaAccountingRxCellularBytes]);
          -[FlowOriginLedger setTotalObservedCellTxBytes:](v17, "setTotalObservedCellTxBytes:", -[FlowOriginLedger totalObservedCellTxBytes](v17, "totalObservedCellTxBytes") + [flowCopy deltaAccountingTxCellularBytes]);
          -[FlowOriginLedger setTotalObservedWiFiRxBytes:](v17, "setTotalObservedWiFiRxBytes:", -[FlowOriginLedger totalObservedWiFiRxBytes](v17, "totalObservedWiFiRxBytes") + [flowCopy deltaAccountingRxWiFiBytes]);
          -[FlowOriginLedger setTotalObservedWiFiTxBytes:](v17, "setTotalObservedWiFiTxBytes:", -[FlowOriginLedger totalObservedWiFiTxBytes](v17, "totalObservedWiFiTxBytes") + [flowCopy deltaAccountingTxWiFiBytes]);
        }

        if (v103 == 2)
        {
          [(FlowOriginLedger *)v17 setLastUsed:apparentTime()];
          [(FlowLedger *)v53 setCreatorLedger:0];
          currentFlows4 = [(FlowOriginLedger *)v17 currentFlows];
          [currentFlows4 removeObjectForKey:v48];

          [(FlowOriginLedger *)v17 setClosedFlows:[(FlowOriginLedger *)v17 closedFlows]+ 1];
          if ([(FlowLedger *)v53 expectedTransferState]!= 1)
          {
            appEpisode4 = [(FlowLedger *)v53 appEpisode];

            if (appEpisode4)
            {
              v84 = flowScrutinyLogHandle;
              if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
              {
                v85 = v84;
                appEpisode5 = [(FlowLedger *)v53 appEpisode];
                flowUUID = [(FlowLedger *)v53 flowUUID];
                *buf = 134218242;
                v105 = appEpisode5;
                v106 = 2112;
                *v107 = flowUUID;
                _os_log_impl(&dword_23255B000, v85, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ in state kNWStatsSnapshotOnClose", buf, 0x16u);
              }

              appEpisode6 = [(FlowLedger *)v53 appEpisode];
              [appEpisode6 accrueRewardFromFlow:v53];

              [(FlowLedger *)v53 setAppEpisode:0];
            }

            v89 = self->_transferSizeFlows;
            flowUUID2 = [(FlowLedger *)v53 flowUUID];
            [(NSMutableDictionary *)v89 removeObjectForKey:flowUUID2];

            [(FlowLedger *)v53 setExpectedTransferState:1];
            ++self->_numClosedFlowsForExpectedTransferSymptoms;
          }
        }

        v91 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v92 = v91;
          reportedDisposition = [(FlowLedger *)v53 reportedDisposition];
          *buf = 138412802;
          v105 = v48;
          v106 = 1024;
          *v107 = reportedDisposition;
          *&v107[4] = 1024;
          *&v107[6] = v14;
          _os_log_impl(&dword_23255B000, v92, OS_LOG_TYPE_DEBUG, "FlowScrutinizer disposition for %@ %d -> %d", buf, 0x18u);
        }

        if (v14 != [(FlowLedger *)v53 reportedDisposition])
        {
          [(FlowScrutinizer *)self _reportClassificationChange:v48 new:v14 ledger:v53 snapshot:flowCopy];
          [(FlowLedger *)v53 setReportedDisposition:v14];
        }

        if (([flowCopy deltaAccountingRxCellularBytes] || objc_msgSend(flowCopy, "deltaAccountingTxCellularBytes")) && !-[FlowScrutinizer cellThroughputAdviserShouldRun](self, "cellThroughputAdviserShouldRun"))
        {
          v94 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_23255B000, v94, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer setting cellThroughputAdviserShouldRun after receipt of cellular data", buf, 2u);
          }

          [(FlowScrutinizer *)self setCellThroughputAdviserShouldRun:1];
        }

        goto LABEL_118;
      }

      selfCopy2 = self;
      v61 = 1;
    }

    [(FlowScrutinizer *)selfCopy2 setHasForegroundWiFiAVTrafficClassFlows:v61];
    goto LABEL_29;
  }

LABEL_118:
}

- (id)_findFlowOriginLedgerWithSnapshot:(id)snapshot
{
  v26 = *MEMORY[0x277D85DE8];
  snapshotCopy = snapshot;
  attributedEntity = [snapshotCopy attributedEntity];
  attributedExtension = [snapshotCopy attributedExtension];
  if (attributedEntity)
  {
    v7 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:attributedEntity];
    if (!v7)
    {
      v7 = objc_alloc_init(FlowOriginLedger);
      [(FlowOriginLedger *)v7 setName:attributedEntity];
      [(NSMutableDictionary *)self->_originLedgers setObject:v7 forKeyedSubscript:attributedEntity];
      v8 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v9 = v8;
        *buf = 134218498;
        sourceIdentifier = [snapshotCopy sourceIdentifier];
        v22 = 2114;
        v23 = attributedEntity;
        v24 = 2114;
        v25 = v7;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "Origin ledger created for snapshot %lld %{public}@ -> %{public}@", buf, 0x20u);
      }
    }

    if (attributedExtension)
    {
      appExtensions = [(FlowOriginLedger *)v7 appExtensions];

      if (!appExtensions)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
        [(FlowOriginLedger *)v7 setAppExtensions:v11];
      }

      appExtensions2 = [(FlowOriginLedger *)v7 appExtensions];
      v13 = [appExtensions2 objectForKeyedSubscript:attributedExtension];

      if (!v13)
      {
        v13 = objc_alloc_init(FlowOriginLedger);
        v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", attributedEntity, attributedExtension];
        [(FlowOriginLedger *)v13 setName:v14];

        appExtensions3 = [(FlowOriginLedger *)v7 appExtensions];
        [appExtensions3 setObject:v13 forKeyedSubscript:attributedExtension];

        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v17 = v16;
          sourceIdentifier2 = [snapshotCopy sourceIdentifier];
          *buf = 134218498;
          sourceIdentifier = sourceIdentifier2;
          v22 = 2114;
          v23 = attributedExtension;
          v24 = 2114;
          v25 = v13;
          _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEBUG, "Origin ledger (extension) created for snapshot %lld %{public}@ -> %{public}@", buf, 0x20u);
        }
      }
    }

    else
    {
      v13 = v7;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (void)addActivityBitmapFromSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  v5 = [(FlowScrutinizer *)self _findFlowOriginLedgerWithSnapshot:snapshotCopy];
  [v5 addActivityBitmapForSnapshot:snapshotCopy];
}

- (void)updateInterfaceSamplesWithTime:(double)time bumpSamples:(BOOL)samples
{
  samplesCopy = samples;
  [PhysicalInterfaceSampler updateInterfaceSamplesWithTime:"updateInterfaceSamplesWithTime:bumpSamples:" bumpSamples:?];
  wifiInterfaceSampler = self->_wifiInterfaceSampler;

  [(PhysicalInterfaceSampler *)wifiInterfaceSampler updateInterfaceSamplesWithTime:samplesCopy bumpSamples:time];
}

- (void)clearAVSamplesIfAllIdle:(id)idle time:(double)time
{
  idleCopy = idle;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 1;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __48__FlowScrutinizer_clearAVSamplesIfAllIdle_time___block_invoke;
  v9[3] = &unk_27898E108;
  *&v9[6] = time;
  v9[4] = self;
  v9[5] = &v10;
  [idleCopy enumerateObjectsWithOptions:2 usingBlock:v9];
  if (*(v11 + 24) == 1)
  {
    v7 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "All AudioVideoSamples, including the latest sampling are idle, clearing", v8, 2u);
    }

    [idleCopy removeAllObjects];
  }

  _Block_object_dispose(&v10, 8);
}

void __48__FlowScrutinizer_clearAVSamplesIfAllIdle_time___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 startTimeIntervalSinceReferenceDate];
  v7 = v6;
  [v9 elapsedTime];
  if (v7 + v8 > *(a1 + 48) - *(*(a1 + 32) + 216) && ([v9 rxBytes] || objc_msgSend(v9, "txBytes")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)updateAudioVideoSamplesWithTime:(double)time bumpSamples:(BOOL)samples
{
  if (self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate == 0.0)
  {
LABEL_2:
    *&self->_lastSampledCellAudioVideoRxBytes = *&self->_totalCellAudioVideoRxBytes;
    *&self->_lastSampledWiFiAudioVideoRxBytes = *&self->_totalWiFiAudioVideoRxBytes;
    self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate = time;
    return;
  }

  if (samples)
  {
    totalCellAudioVideoRxBytes = self->_totalCellAudioVideoRxBytes;
    totalCellAudioVideoTxBytes = self->_totalCellAudioVideoTxBytes;
    lastSampledCellAudioVideoRxBytes = self->_lastSampledCellAudioVideoRxBytes;
    lastSampledCellAudioVideoTxBytes = self->_lastSampledCellAudioVideoTxBytes;
    totalWiFiAudioVideoRxBytes = self->_totalWiFiAudioVideoRxBytes;
    totalWiFiAudioVideoTxBytes = self->_totalWiFiAudioVideoTxBytes;
    lastSampledWiFiAudioVideoRxBytes = self->_lastSampledWiFiAudioVideoRxBytes;
    lastSampledWiFiAudioVideoTxBytes = self->_lastSampledWiFiAudioVideoTxBytes;
    v14 = totalCellAudioVideoRxBytes == lastSampledCellAudioVideoRxBytes && totalCellAudioVideoTxBytes == lastSampledCellAudioVideoTxBytes;
    v15 = v14;
    if (v14 && [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 1;
      cellAudioVideoSamples = self->_cellAudioVideoSamples;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke;
      v29[3] = &unk_27898E108;
      *&v29[6] = time;
      v29[4] = self;
      v29[5] = &v30;
      [(NSMutableArray *)cellAudioVideoSamples enumerateObjectsWithOptions:2 usingBlock:v29];
      if (*(v31 + 24) == 1)
      {
        v25 = v15;
        v17 = totalWiFiAudioVideoRxBytes;
        v18 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "All Cell AudioVideoSamples, including the latest sampling are idle, clearing", buf, 2u);
        }

        [(NSMutableArray *)self->_cellAudioVideoSamples removeAllObjects];
        totalWiFiAudioVideoRxBytes = v17;
        v15 = v25;
      }

      _Block_object_dispose(&v30, 8);
    }

    v26 = totalWiFiAudioVideoRxBytes;
    v19 = totalWiFiAudioVideoRxBytes == lastSampledWiFiAudioVideoRxBytes && totalWiFiAudioVideoTxBytes == lastSampledWiFiAudioVideoTxBytes;
    v20 = v19;
    if (v19 && [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      v30 = 0;
      v31 = &v30;
      v32 = 0x2020000000;
      v33 = 1;
      wifiAudioVideoSamples = self->_wifiAudioVideoSamples;
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke_47;
      v27[3] = &unk_27898E108;
      *&v27[6] = time;
      v27[4] = self;
      v27[5] = &v30;
      [(NSMutableArray *)wifiAudioVideoSamples enumerateObjectsWithOptions:2 usingBlock:v27];
      if (*(v31 + 24) == 1)
      {
        log = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "All WiFi AudioVideoSamples, including the latest sampling are idle, clearing", buf, 2u);
        }

        [(NSMutableArray *)self->_wifiAudioVideoSamples removeAllObjects];
      }

      _Block_object_dispose(&v30, 8);
    }

    if (v15 && [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      [(FlowScrutinizer *)self clearAVSamplesIfAllIdle:self->_cellAudioVideoSamples time:time];
    }

    if (v20 && [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      [(FlowScrutinizer *)self clearAVSamplesIfAllIdle:self->_wifiAudioVideoSamples time:time];
    }

    if (totalCellAudioVideoRxBytes != lastSampledCellAudioVideoRxBytes || totalCellAudioVideoTxBytes != lastSampledCellAudioVideoTxBytes || [(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      v22 = objc_alloc_init(AudioVideoSample);
      [(AudioVideoSample *)v22 setStartTimeIntervalSinceReferenceDate:self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v22 setElapsedTime:time - self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v22 setRxBytes:totalCellAudioVideoRxBytes - lastSampledCellAudioVideoRxBytes];
      [(AudioVideoSample *)v22 setTxBytes:totalCellAudioVideoTxBytes - lastSampledCellAudioVideoTxBytes];
      [(NSMutableArray *)self->_cellAudioVideoSamples addObject:v22];
      if ([(NSMutableArray *)self->_cellAudioVideoSamples count]>= 0x15)
      {
        [(NSMutableArray *)self->_cellAudioVideoSamples removeObjectAtIndex:0];
      }
    }

    if (v26 != lastSampledWiFiAudioVideoRxBytes || totalWiFiAudioVideoTxBytes != lastSampledWiFiAudioVideoTxBytes || [(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      v23 = objc_alloc_init(AudioVideoSample);
      [(AudioVideoSample *)v23 setStartTimeIntervalSinceReferenceDate:self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v23 setElapsedTime:time - self->_lastAudioVideoSampleTimeIntervalSinceReferenceDate];
      [(AudioVideoSample *)v23 setRxBytes:v26 - lastSampledWiFiAudioVideoRxBytes];
      [(AudioVideoSample *)v23 setTxBytes:totalWiFiAudioVideoTxBytes - lastSampledWiFiAudioVideoTxBytes];
      [(NSMutableArray *)self->_wifiAudioVideoSamples addObject:v23];
      if ([(NSMutableArray *)self->_wifiAudioVideoSamples count]>= 0x15)
      {
        [(NSMutableArray *)self->_wifiAudioVideoSamples removeObjectAtIndex:0];
      }
    }

    goto LABEL_2;
  }
}

void __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 startTimeIntervalSinceReferenceDate];
  v7 = v6;
  [v9 elapsedTime];
  if (v7 + v8 > *(a1 + 48) - *(*(a1 + 32) + 216) && ([v9 rxBytes] || objc_msgSend(v9, "txBytes")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

void __63__FlowScrutinizer_updateAudioVideoSamplesWithTime_bumpSamples___block_invoke_47(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v9 = a2;
  [v9 startTimeIntervalSinceReferenceDate];
  v7 = v6;
  [v9 elapsedTime];
  if (v7 + v8 > *(a1 + 48) - *(*(a1 + 32) + 216) && ([v9 rxBytes] || objc_msgSend(v9, "txBytes")))
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a4 = 1;
  }
}

- (void)updateTransferSizeFlowsWithTime:(double)time
{
  v57 = *MEMORY[0x277D85DE8];
  if ([(NSMutableDictionary *)self->_transferSizeFlows count])
  {
    [(NSMutableDictionary *)self->_transferSizeFlows allKeys];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v5 = v47 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v44 objects:v56 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v45;
      v10 = &flowScrutinyLogHandle;
      *&v7 = 134218754;
      v42 = v7;
      while (2)
      {
        v11 = 0;
        v43 = v8;
        do
        {
          if (*v45 != v9)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v13 = [(NSMutableDictionary *)self->_transferSizeFlows objectForKeyedSubscript:v12, v42];
          expectedTransferState = [v13 expectedTransferState];
          if (expectedTransferState == 5)
          {
            [v13 transferStateEntryTimestamp];
            if (v15 == 0.0)
            {
              [v13 setTransferStateEntryTimestamp:time];
            }

            else
            {
              [v13 transferStateEntryTimestamp];
              if (time - v16 > self->_transferSizeFlowFailedThresholdQuarantineTime)
              {
                v17 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  v49 = v12;
                  _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer end of quarantine for flow %@", buf, 0xCu);
                }

                [v13 setExpectedTransferState:3];
              }
            }
          }

          else if (expectedTransferState == 2)
          {
            [v13 transferStateEntryTimestamp];
            if (time - v34 > 10.0)
            {
              appEpisode = [v13 appEpisode];

              if (appEpisode)
              {
                v36 = *v10;
                if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
                {
                  v37 = v36;
                  appEpisode2 = [v13 appEpisode];
                  flowUUID = [v13 flowUUID];
                  *buf = 134218242;
                  v49 = appEpisode2;
                  v50 = 2112;
                  v51 = flowUUID;
                  _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ in state kExpectedTransferStateProvisional", buf, 0x16u);
                }

                appEpisode3 = [v13 appEpisode];
                [appEpisode3 accrueRewardFromFlow:v13];

                [v13 setAppEpisode:0];
              }

              v41 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v49 = v12;
                _os_log_impl(&dword_23255B000, v41, OS_LOG_TYPE_ERROR, "FlowScrutinizer unable to match Flow UUID %@ to actual flow", buf, 0xCu);
              }

              [(NSMutableDictionary *)self->_transferSizeFlows removeObjectForKey:v12];

              v13 = 0;
            }

            goto LABEL_39;
          }

          v18 = 0.0;
          if ([v13 lastSampleWasIdle])
          {
            alternatingIdleNonIdlePeriods = [v13 alternatingIdleNonIdlePeriods];

            if (alternatingIdleNonIdlePeriods)
            {
              alternatingIdleNonIdlePeriods2 = [v13 alternatingIdleNonIdlePeriods];
              lastObject = [alternatingIdleNonIdlePeriods2 lastObject];

              [lastObject elapsedTime];
              v18 = v22;
            }
          }

          if (v18 > self->_maxFlowIdleTimeWhileMarkedWithTransferSize)
          {
            v23 = *v10;
            if (os_log_type_enabled(*v10, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v49 = v13;
              _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "FlowScrutinizer updateTransferSizeFlowsWithTime, excessive idle while marked with transfer size, clearing %@", buf, 0xCu);
            }

            [v13 setRxTransferSizeLowerThreshold:0];
            [v13 setRxTransferSizeUpperThreshold:0];
            [v13 setTxTransferSizeLowerThreshold:0];
            [v13 setTxTransferSizeUpperThreshold:0];
            [v13 setExpectedTransferState:1];
            appEpisode4 = [v13 appEpisode];

            if (appEpisode4)
            {
              v25 = *v10;
              if (os_log_type_enabled(*v10, OS_LOG_TYPE_INFO))
              {
                v26 = v25;
                appEpisode5 = [v13 appEpisode];
                [v13 flowUUID];
                v28 = v9;
                v29 = v5;
                v31 = v30 = v10;
                maxFlowIdleTimeWhileMarkedWithTransferSize = self->_maxFlowIdleTimeWhileMarkedWithTransferSize;
                *buf = v42;
                v49 = appEpisode5;
                v50 = 2112;
                v51 = v31;
                v52 = 2048;
                v53 = v18;
                v54 = 2048;
                v55 = maxFlowIdleTimeWhileMarkedWithTransferSize;
                _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_INFO, "App episode %p unloaded from flow %@ with idle time %f greater than: %f", buf, 0x2Au);

                v10 = v30;
                v5 = v29;
                v9 = v28;
                v8 = v43;
              }

              appEpisode6 = [v13 appEpisode];
              [appEpisode6 accrueRewardFromFlow:v13];

              [v13 setAppEpisode:0];
            }

            [(NSMutableDictionary *)self->_transferSizeFlows removeObjectForKey:v12];
          }

          ++v11;
        }

        while (v8 != v11);
        v8 = [v5 countByEnumeratingWithState:&v44 objects:v56 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_39:
  }
}

- (void)addDelegate:(id)delegate
{
  v15 = *MEMORY[0x277D85DE8];
  delegateCopy = delegate;
  if (objc_opt_respondsToSelector())
  {
    delegates = self->_delegates;
    if (!delegates)
    {
      v6 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v7 = self->_delegates;
      self->_delegates = v6;

      delegates = self->_delegates;
    }

    [(NSMutableSet *)delegates addObject:delegateCopy];
    v8 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = delegateCopy;
      v9 = "FlowScrutinizer add delegate %@";
      v10 = v8;
      v11 = OS_LOG_TYPE_INFO;
LABEL_8:
      _os_log_impl(&dword_23255B000, v10, v11, v9, &v13, 0xCu);
    }
  }

  else
  {
    v12 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = delegateCopy;
      v9 = "FlowScrutinizer failed attempt to add delegate, selector not supported by %@";
      v10 = v12;
      v11 = OS_LOG_TYPE_ERROR;
      goto LABEL_8;
    }
  }
}

- (void)removeDelegate:(id)delegate
{
  delegates = self->_delegates;
  if (delegates)
  {
    [(NSMutableSet *)delegates removeObject:delegate];
  }
}

- (void)cellFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  cellFlowScrutinyRequesters = self->_cellFlowScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)cellFlowScrutinyRequesters addObject:ofCopy];
    v8 = 2;
LABEL_3:
    self->_cellFlowsScrutinized = v8;
    goto LABEL_7;
  }

  [(NSMutableSet *)cellFlowScrutinyRequesters removeObject:ofCopy];
  if (![(NSMutableSet *)self->_cellFlowScrutinyRequesters count]&& self->_cellFlowsScrutinized == 2)
  {
    v8 = 1;
    goto LABEL_3;
  }

LABEL_7:
}

- (void)wifiFlowScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  wifiFlowScrutinyRequesters = self->_wifiFlowScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)wifiFlowScrutinyRequesters addObject:ofCopy];
    v8 = 2;
LABEL_3:
    self->_wifiFlowsScrutinized = v8;
    goto LABEL_7;
  }

  [(NSMutableSet *)wifiFlowScrutinyRequesters removeObject:ofCopy];
  if (![(NSMutableSet *)self->_wifiFlowScrutinyRequesters count]&& self->_wifiFlowsScrutinized == 2)
  {
    v8 = 1;
    goto LABEL_3;
  }

LABEL_7:
}

- (void)assetDownloadScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  assetDownloadScrutinyRequesters = self->_assetDownloadScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)assetDownloadScrutinyRequesters addObject:ofCopy];
    v8 = 1;
  }

  else
  {
    [(NSMutableSet *)assetDownloadScrutinyRequesters removeObject:ofCopy];
    if ([(NSMutableSet *)self->_assetDownloadScrutinyRequesters count])
    {
      goto LABEL_6;
    }

    [(FlowScrutinizer *)self _coreMediaAssetDownloadFlushAll];
    v8 = 0;
  }

  self->_assetDownloadsScrutinized = v8;
LABEL_6:
}

- (void)expectedTransferScrutinyOnBehalfOf:(id)of required:(BOOL)required
{
  requiredCopy = required;
  ofCopy = of;
  expectedTransferScrutinyRequesters = self->_expectedTransferScrutinyRequesters;
  v9 = ofCopy;
  if (requiredCopy)
  {
    [(NSMutableSet *)expectedTransferScrutinyRequesters addObject:ofCopy];
    v8 = 1;
  }

  else
  {
    [(NSMutableSet *)expectedTransferScrutinyRequesters removeObject:ofCopy];
    if ([(NSMutableSet *)self->_expectedTransferScrutinyRequesters count])
    {
      goto LABEL_6;
    }

    v8 = 0;
  }

  self->_expectedTransfersScrutinized = v8;
LABEL_6:
}

- (void)flushInactiveLedgersAtMachAbsTime:(unint64_t)time
{
  v28 = *MEMORY[0x277D85DE8];
  allKeys = [(NSMutableDictionary *)self->_originLedgers allKeys];
  v6 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v24 = allKeys;
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEBUG, "flushInactiveLedgers check list is %{public}@", buf, 0xCu);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = allKeys;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    *&v9 = 138543618;
    v18 = v9;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v13, v18, v19];
        v15 = [(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v14 atMachAbsTime:time];
        v16 = flowScrutinyLogHandle;
        if (v15)
        {
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v18;
            v24 = v13;
            v25 = 2114;
            v26 = v14;
            _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEFAULT, "Flush top level origin ledger %{public}@ -> %{public}@", buf, 0x16u);
          }

          [(NSMutableDictionary *)self->_originLedgers setObject:0 forKeyedSubscript:v13];
        }

        else if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
        {
          *buf = v18;
          v24 = v13;
          v25 = 2114;
          v26 = v14;
          _os_log_impl(&dword_23255B000, v16, OS_LOG_TYPE_DEBUG, "Skip flush top level origin ledger %{public}@ -> %{public}@", buf, 0x16u);
        }
      }

      v10 = [v7 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "flushInactiveLedgers complete", buf, 2u);
  }
}

- (BOOL)isFlushableOriginLedgerAfterFlushingSubsidiaries:(id)subsidiaries atMachAbsTime:(unint64_t)time
{
  v96 = *MEMORY[0x277D85DE8];
  subsidiariesCopy = subsidiaries;
  appExtensions = [subsidiariesCopy appExtensions];

  if (appExtensions)
  {
    appExtensions2 = [subsidiariesCopy appExtensions];
    allKeys = [appExtensions2 allKeys];

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v10 = allKeys;
    v11 = [v10 countByEnumeratingWithState:&v79 objects:v95 count:16];
    if (v11)
    {
      v13 = v11;
      v14 = *v80;
      *&v12 = 138543618;
      v69 = v12;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v80 != v14)
          {
            objc_enumerationMutation(v10);
          }

          v16 = *(*(&v79 + 1) + 8 * i);
          appExtensions3 = [subsidiariesCopy appExtensions];
          v18 = [appExtensions3 objectForKeyedSubscript:v16];

          if ([(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v18 atMachAbsTime:time])
          {
            v19 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v69;
              v84 = v16;
              v85 = 2114;
              v86 = v18;
              _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "Flush extension origin ledger %{public}@ -> %{public}@", buf, 0x16u);
            }

            appExtensions4 = [subsidiariesCopy appExtensions];
            [appExtensions4 setObject:0 forKeyedSubscript:v16];
          }
        }

        v13 = [v10 countByEnumeratingWithState:&v79 objects:v95 count:16];
      }

      while (v13);
    }

    appExtensions5 = [subsidiariesCopy appExtensions];
    v22 = [appExtensions5 count];

    if (!v22)
    {
      [subsidiariesCopy setAppExtensions:0];
    }
  }

  delegates = [subsidiariesCopy delegates];

  if (delegates)
  {
    delegates2 = [subsidiariesCopy delegates];
    allKeys2 = [delegates2 allKeys];

    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v26 = allKeys2;
    v27 = [v26 countByEnumeratingWithState:&v75 objects:v94 count:16];
    if (v27)
    {
      v29 = v27;
      v30 = *v76;
      *&v28 = 138543618;
      v70 = v28;
      do
      {
        for (j = 0; j != v29; ++j)
        {
          if (*v76 != v30)
          {
            objc_enumerationMutation(v26);
          }

          v32 = *(*(&v75 + 1) + 8 * j);
          delegates3 = [subsidiariesCopy delegates];
          v34 = [delegates3 objectForKeyedSubscript:v32];

          if ([(FlowScrutinizer *)self isFlushableOriginLedgerAfterFlushingSubsidiaries:v34 atMachAbsTime:time])
          {
            v35 = flowScrutinyLogHandle;
            if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v70;
              v84 = v32;
              v85 = 2114;
              v86 = v34;
              _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "Flush delegate origin ledger %{public}@ -> %{public}@", buf, 0x16u);
            }

            delegates4 = [subsidiariesCopy delegates];
            [delegates4 setObject:0 forKeyedSubscript:v32];
          }
        }

        v29 = [v26 countByEnumeratingWithState:&v75 objects:v94 count:16];
      }

      while (v29);
    }

    delegates5 = [subsidiariesCopy delegates];
    v38 = [delegates5 count];

    if (!v38)
    {
      [subsidiariesCopy setDelegates:0];
    }
  }

  activityBitmaps = [subsidiariesCopy activityBitmaps];

  if (activityBitmaps)
  {
    activityBitmaps2 = [subsidiariesCopy activityBitmaps];
    allKeys3 = [activityBitmaps2 allKeys];

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    activityBitmaps = allKeys3;
    v42 = [activityBitmaps countByEnumeratingWithState:&v71 objects:v93 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v72;
      do
      {
        for (k = 0; k != v43; ++k)
        {
          if (*v72 != v44)
          {
            objc_enumerationMutation(activityBitmaps);
          }

          v46 = *(*(&v71 + 1) + 8 * k);
          activityBitmaps3 = [subsidiariesCopy activityBitmaps];
          v48 = [activityBitmaps3 objectForKeyedSubscript:v46];

          if ([v48 isOutdated:time])
          {
            activityBitmaps4 = [subsidiariesCopy activityBitmaps];
            [activityBitmaps4 setObject:0 forKeyedSubscript:v46];
          }

          else
          {
            [v48 freeUpBufferSpace];
          }
        }

        v43 = [activityBitmaps countByEnumeratingWithState:&v71 objects:v93 count:16];
      }

      while (v43);
    }

    activityBitmaps5 = [subsidiariesCopy activityBitmaps];
    v51 = [activityBitmaps5 count];

    if (!v51)
    {
      [subsidiariesCopy setActivityBitmaps:0];
    }
  }

  appExtensions6 = [subsidiariesCopy appExtensions];
  if (appExtensions6 || ([subsidiariesCopy delegates], (appExtensions6 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    currentFlows = appExtensions6;
LABEL_48:

    goto LABEL_49;
  }

  currentFlows = [subsidiariesCopy currentFlows];
  if (currentFlows)
  {
    activityBitmaps = [subsidiariesCopy currentFlows];
    if ([activityBitmaps count])
    {

      goto LABEL_48;
    }
  }

  activityBitmaps6 = [subsidiariesCopy activityBitmaps];
  if (activityBitmaps6)
  {
    activityBitmaps7 = [subsidiariesCopy activityBitmaps];
    if ([activityBitmaps7 count])
    {
      v66 = 0;
    }

    else
    {
      [subsidiariesCopy durationSinceLastUse];
      v66 = v68 > 900.0;
    }
  }

  else
  {
    [subsidiariesCopy durationSinceLastUse];
    v66 = v67 > 900.0;
  }

  if (currentFlows)
  {
  }

  if (v66)
  {
    v62 = 1;
    goto LABEL_52;
  }

LABEL_49:
  v54 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v55 = v54;
    name = [subsidiariesCopy name];
    [subsidiariesCopy durationSinceLastUse];
    v58 = v57;
    appExtensions7 = [subsidiariesCopy appExtensions];
    delegates6 = [subsidiariesCopy delegates];
    activityBitmaps8 = [subsidiariesCopy activityBitmaps];
    *buf = 138544386;
    v84 = name;
    v85 = 2048;
    v86 = v58;
    v87 = 2114;
    v88 = appExtensions7;
    v89 = 2114;
    v90 = delegates6;
    v91 = 2114;
    v92 = activityBitmaps8;
    _os_log_impl(&dword_23255B000, v55, OS_LOG_TYPE_DEBUG, "Skip flush origin ledger, name %{public}@ duration %.3f extensions %{public}@ delegates %{public}@ bitmaps %{public}@", buf, 0x34u);
  }

  v62 = 0;
LABEL_52:

  return v62;
}

- (void)addFlowStateForOrigin:(id)origin array:(id)array
{
  v60 = *MEMORY[0x277D85DE8];
  originCopy = origin;
  arrayCopy = array;
  v53 = 0u;
  v54 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [originCopy currentFlows];
  v42 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v42)
  {
    v41 = *v54;
    do
    {
      for (i = 0; i != v42; ++i)
      {
        if (*v54 != v41)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v53 + 1) + 8 * i);
        currentFlows = [originCopy currentFlows];
        v10 = [currentFlows objectForKeyedSubscript:v8];

        v11 = MEMORY[0x277CCACA8];
        briefDescription = [v10 briefDescription];
        v13 = [v11 stringWithFormat:@"      %@", briefDescription];

        [arrayCopy addObject:v13];
        alternatingIdleNonIdlePeriods = [v10 alternatingIdleNonIdlePeriods];
        if (alternatingIdleNonIdlePeriods)
        {
          v15 = alternatingIdleNonIdlePeriods;
          alternatingIdleNonIdlePeriods2 = [v10 alternatingIdleNonIdlePeriods];
          v17 = [alternatingIdleNonIdlePeriods2 count];

          if (v17)
          {
            v43 = v13;
            v51 = 0u;
            v52 = 0u;
            v49 = 0u;
            v50 = 0u;
            alternatingIdleNonIdlePeriods3 = [v10 alternatingIdleNonIdlePeriods];
            v19 = [alternatingIdleNonIdlePeriods3 countByEnumeratingWithState:&v49 objects:v58 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v50;
              v22 = @"           idle/non-idle   %@";
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v50 != v21)
                  {
                    objc_enumerationMutation(alternatingIdleNonIdlePeriods3);
                  }

                  v24 = [MEMORY[0x277CCACA8] stringWithFormat:v22, *(*(&v49 + 1) + 8 * j)];
                  [arrayCopy addObject:v24];

                  v22 = @"                           %@";
                }

                v20 = [alternatingIdleNonIdlePeriods3 countByEnumeratingWithState:&v49 objects:v58 count:16];
                v22 = @"                           %@";
              }

              while (v20);
            }

            v13 = v43;
          }
        }

        nonIdleSamples = [v10 nonIdleSamples];
        if (nonIdleSamples)
        {
          v26 = nonIdleSamples;
          nonIdleSamples2 = [v10 nonIdleSamples];
          v28 = [nonIdleSamples2 count];

          if (v28)
          {
            v44 = v13;
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            nonIdleSamples3 = [v10 nonIdleSamples];
            v30 = [nonIdleSamples3 countByEnumeratingWithState:&v45 objects:v57 count:16];
            if (v30)
            {
              v31 = v30;
              v32 = *v46;
              v33 = @"           continuous      %@";
              do
              {
                for (k = 0; k != v31; ++k)
                {
                  if (*v46 != v32)
                  {
                    objc_enumerationMutation(nonIdleSamples3);
                  }

                  v35 = [MEMORY[0x277CCACA8] stringWithFormat:v33, *(*(&v45 + 1) + 8 * k)];
                  [arrayCopy addObject:v35];

                  v33 = @"                           %@";
                }

                v31 = [nonIdleSamples3 countByEnumeratingWithState:&v45 objects:v57 count:16];
                v33 = @"                           %@";
              }

              while (v31);
            }

            statisticsDescription = [v10 statisticsDescription];
            if (statisticsDescription)
            {
              v37 = MEMORY[0x277CCACA8];
              flowType = [v10 flowType];
              v39 = [v37 stringWithFormat:@"           %@ %@", flowType, statisticsDescription];
              [arrayCopy addObject:v39];
            }

            v13 = v44;
          }
        }
      }

      v42 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
    }

    while (v42);
  }
}

- (void)addStateForOrigin:(id)origin named:(id)named array:(id)array isExtension:(BOOL)extension isDelegate:(BOOL)delegate verbose:(BOOL)verbose
{
  verboseCopy = verbose;
  delegateCopy = delegate;
  extensionCopy = extension;
  v106 = *MEMORY[0x277D85DE8];
  originCopy = origin;
  namedCopy = named;
  arrayCopy = array;
  if (delegateCopy)
  {
    v15 = @"    ";
    if (!extensionCopy)
    {
      v15 = @"  ";
    }

    obj = v15;
    v16 = &stru_2847966D8;
    v17 = @"delegate";
    v18 = @"extension-delegate";
  }

  else
  {
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"(combined cell rx %lld tx %lld wifi rx %lld tx %lld) ", objc_msgSend(originCopy, "totalWithDelegatesCellRxBytes"), objc_msgSend(originCopy, "totalWithDelegatesCellTxBytes"), objc_msgSend(originCopy, "totalWithDelegatesWiFiRxBytes"), objc_msgSend(originCopy, "totalWithDelegatesWiFiTxBytes")];
    v19 = &stru_2847966D8;
    if (extensionCopy)
    {
      v19 = @"  ";
    }

    obj = v19;
    v17 = @"for";
    v18 = @"extension";
  }

  v20 = MEMORY[0x277CCACA8];
  v83 = extensionCopy;
  if (extensionCopy)
  {
    v21 = v18;
  }

  else
  {
    v21 = v17;
  }

  totalObservedCellRxBytes = [originCopy totalObservedCellRxBytes];
  v23 = [originCopy totalObservedWiFiRxBytes] + totalObservedCellRxBytes;
  totalObservedWiFiTxBytes = [originCopy totalObservedWiFiTxBytes];
  v25 = [originCopy totalObservedWiFiTxBytes] + totalObservedWiFiTxBytes;
  closedFlows = [originCopy closedFlows];
  [originCopy lastUsed];
  v28 = dateStringMillisecondsFromReferenceInterval(v27);
  v79 = namedCopy;
  v29 = [v20 stringWithFormat:@"%@ FlowOriginLedger %@ %@, rx %lld tx %lld %@num closed %lld last access %@", obj, v21, namedCopy, v23, v25, v16, closedFlows, v28];

  v78 = v29;
  [arrayCopy addObject:v29];
  v80 = v16;
  if (verboseCopy)
  {
    activityBitmaps = [originCopy activityBitmaps];
    if (activityBitmaps)
    {
      v31 = activityBitmaps;
      activityBitmaps2 = [originCopy activityBitmaps];
      v33 = [activityBitmaps2 count];

      if (v33)
      {
        v34 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:@"    Associated bitmaps: "];
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v101 = 0u;
        obja = [originCopy activityBitmaps];
        v35 = [obja countByEnumeratingWithState:&v98 objects:v105 count:16];
        if (v35)
        {
          v36 = v35;
          v37 = *v99;
          do
          {
            for (i = 0; i != v36; ++i)
            {
              if (*v99 != v37)
              {
                objc_enumerationMutation(obja);
              }

              v39 = *(*(&v98 + 1) + 8 * i);
              intValue = [(__CFString *)v39 intValue];
              v41 = @"CompanionLink";
              if (intValue != 7)
              {
                v41 = v39;
              }

              if (intValue == 5)
              {
                v41 = @"Cell";
              }

              if (intValue == 3)
              {
                v42 = @"WiFi";
              }

              else
              {
                v42 = v41;
              }

              activityBitmaps3 = [originCopy activityBitmaps];
              v44 = [activityBitmaps3 objectForKeyedSubscript:v39];
              [v34 appendFormat:@"%@ -> %@ ", v42, v44];
            }

            v36 = [obja countByEnumeratingWithState:&v98 objects:v105 count:16];
          }

          while (v36);
        }

        [arrayCopy addObject:v34];
      }
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    currentAssetDownloads = [originCopy currentAssetDownloads];
    v46 = [currentAssetDownloads countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = *v95;
      do
      {
        for (j = 0; j != v47; ++j)
        {
          if (*v95 != v48)
          {
            objc_enumerationMutation(currentAssetDownloads);
          }

          v50 = *(*(&v94 + 1) + 8 * j);
          currentAssetDownloads2 = [originCopy currentAssetDownloads];
          v52 = [currentAssetDownloads2 objectForKeyedSubscript:v50];

          v53 = [MEMORY[0x277CCACA8] stringWithFormat:@"      AssetDownload %@:  %@", v50, v52];
          [arrayCopy addObject:v53];
        }

        v47 = [currentAssetDownloads countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v47);
    }

    [(FlowScrutinizer *)self addFlowStateForOrigin:originCopy array:arrayCopy];
    v16 = v80;
  }

  delegates = [originCopy delegates];

  if (delegates)
  {
    delegates2 = [originCopy delegates];
    allKeys = [delegates2 allKeys];
    v57 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v58 = v57;
    v59 = [v58 countByEnumeratingWithState:&v90 objects:v103 count:16];
    if (v59)
    {
      v60 = v59;
      v61 = *v91;
      do
      {
        for (k = 0; k != v60; ++k)
        {
          if (*v91 != v61)
          {
            objc_enumerationMutation(v58);
          }

          v63 = *(*(&v90 + 1) + 8 * k);
          delegates3 = [originCopy delegates];
          v65 = [delegates3 objectForKeyedSubscript:v63];

          [(FlowScrutinizer *)self addStateForOrigin:v65 named:v63 array:arrayCopy isExtension:v83 isDelegate:1 verbose:verboseCopy];
        }

        v60 = [v58 countByEnumeratingWithState:&v90 objects:v103 count:16];
      }

      while (v60);
    }

    v16 = v80;
  }

  appExtensions = [originCopy appExtensions];

  if (appExtensions)
  {
    appExtensions2 = [originCopy appExtensions];
    allKeys2 = [appExtensions2 allKeys];
    v69 = [allKeys2 sortedArrayUsingSelector:sel_caseInsensitiveCompare_];

    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    v70 = v69;
    v71 = [v70 countByEnumeratingWithState:&v86 objects:v102 count:16];
    if (v71)
    {
      v72 = v71;
      v73 = *v87;
      do
      {
        for (m = 0; m != v72; ++m)
        {
          if (*v87 != v73)
          {
            objc_enumerationMutation(v70);
          }

          v75 = *(*(&v86 + 1) + 8 * m);
          appExtensions3 = [originCopy appExtensions];
          v77 = [appExtensions3 objectForKeyedSubscript:v75];

          [(FlowScrutinizer *)self addStateForOrigin:v77 named:v75 array:arrayCopy isExtension:1 isDelegate:0 verbose:verboseCopy];
        }

        v72 = [v70 countByEnumeratingWithState:&v86 objects:v102 count:16];
      }

      while (v72);
    }

    v16 = v80;
  }
}

- (id)getState:(BOOL)state
{
  stateCopy = state;
  v105 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"FlowScrutinizer state: num as FG AV %lld, handled  %lld flows %lld transfer-size (%lld matched)", self->_numNotedAsFGAudioVideoTC, self->_numFlowsScrutinized, self->_numExpectedTransferSymptoms, self->_numMatchedExpectedTransferSymptoms];
  [v5 addObject:v6];
  v7 = [(PhysicalInterfaceSampler *)self->_cellInterfaceSampler getState:stateCopy];
  if (v7)
  {
    [v5 addObjectsFromArray:v7];
  }

  v8 = [(PhysicalInterfaceSampler *)self->_wifiInterfaceSampler getState:stateCopy];
  if (v8)
  {
    [v5 addObjectsFromArray:v8];
  }

  v68 = v7;
  selfCopy = self;
  v67 = v8;
  v65 = stateCopy;
  if (stateCopy)
  {
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v9 = self->_cellAudioVideoSamples;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v94 objects:v104 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v95;
      do
      {
        v13 = 0;
        v14 = v6;
        do
        {
          if (*v95 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"   [cell] %@", *(*(&v94 + 1) + 8 * v13)];

          [v5 addObject:v6];
          ++v13;
          v14 = v6;
        }

        while (v11 != v13);
        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v94 objects:v104 count:16];
      }

      while (v11);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v15 = selfCopy->_wifiAudioVideoSamples;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v90 objects:v103 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v91;
      do
      {
        v19 = 0;
        v20 = v6;
        do
        {
          if (*v91 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"   [wifi] %@", *(*(&v90 + 1) + 8 * v19)];

          [v5 addObject:v6];
          ++v19;
          v20 = v6;
        }

        while (v17 != v19);
        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v90 objects:v103 count:16];
      }

      while (v17);
    }

    self = selfCopy;
  }

  else
  {
    if ([(NSMutableArray *)self->_cellAudioVideoSamples count])
    {
      lastObject = [(NSMutableArray *)self->_cellAudioVideoSamples lastObject];
      v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"   [cell] %@", lastObject];

      [v5 addObject:v22];
      v6 = v22;
    }

    if ([(NSMutableArray *)self->_wifiAudioVideoSamples count])
    {
      lastObject2 = [(NSMutableArray *)self->_wifiAudioVideoSamples lastObject];
      v24 = [MEMORY[0x277CCACA8] stringWithFormat:@"   [wifi] %@", lastObject2];

      [v5 addObject:v24];
      v6 = v24;
    }
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v25 = self->_transferSizeFlows;
  v26 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v86 objects:v102 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v87;
    do
    {
      v29 = 0;
      v30 = v6;
      do
      {
        if (*v87 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v31 = [(NSMutableDictionary *)selfCopy->_transferSizeFlows objectForKeyedSubscript:*(*(&v86 + 1) + 8 * v29)];
        v32 = MEMORY[0x277CCACA8];
        briefDescription = [v31 briefDescription];
        v6 = [v32 stringWithFormat:@"       Expected transfer contributor: %@", briefDescription];

        [v5 addObject:v6];
        ++v29;
        v30 = v6;
      }

      while (v27 != v29);
      v27 = [(NSMutableDictionary *)v25 countByEnumeratingWithState:&v86 objects:v102 count:16];
    }

    while (v27);
  }

  if (v65)
  {
    v34 = objc_alloc(MEMORY[0x277CCACA8]);
    v35 = +[FlowOriginLedger getStatsString];
    v36 = [v34 initWithFormat:@"FlowScrutinizer %@", v35];

    v66 = v36;
    [v5 addObject:v36];
    allKeys = [(NSMutableDictionary *)selfCopy->_originLedgers allKeys];
    v38 = [allKeys sortedArrayUsingSelector:sel_compare_];

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    v39 = v38;
    v40 = [v39 countByEnumeratingWithState:&v82 objects:v101 count:16];
    if (v40)
    {
      v41 = v40;
      v42 = *v83;
      do
      {
        for (i = 0; i != v41; ++i)
        {
          if (*v83 != v42)
          {
            objc_enumerationMutation(v39);
          }

          v44 = *(*(&v82 + 1) + 8 * i);
          v45 = [(NSMutableDictionary *)selfCopy->_originLedgers objectForKeyedSubscript:v44];
          [(FlowScrutinizer *)selfCopy addStateForOrigin:v45 named:v44 array:v5 isExtension:0 isDelegate:0 verbose:1];
        }

        v41 = [v39 countByEnumeratingWithState:&v82 objects:v101 count:16];
      }

      while (v41);
    }
  }

  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v46 = selfCopy->_cellFlowScrutinyRequesters;
  v47 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v78 objects:v100 count:16];
  if (v47)
  {
    v48 = v47;
    v49 = *v79;
    do
    {
      for (j = 0; j != v48; ++j)
      {
        if (*v79 != v49)
        {
          objc_enumerationMutation(v46);
        }

        v51 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" Cell flow scrutiny requested by: %@", *(*(&v78 + 1) + 8 * j)];
        [v5 addObject:v51];
      }

      v48 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v78 objects:v100 count:16];
    }

    while (v48);
  }

  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v52 = selfCopy->_wifiFlowScrutinyRequesters;
  v53 = [(NSMutableSet *)v52 countByEnumeratingWithState:&v74 objects:v99 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v75;
    do
    {
      for (k = 0; k != v54; ++k)
      {
        if (*v75 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" Wi-Fi flow scrutiny requested by: %@", *(*(&v74 + 1) + 8 * k)];
        [v5 addObject:v57];
      }

      v54 = [(NSMutableSet *)v52 countByEnumeratingWithState:&v74 objects:v99 count:16];
    }

    while (v54);
  }

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v58 = selfCopy->_delegates;
  v59 = [(NSMutableSet *)v58 countByEnumeratingWithState:&v70 objects:v98 count:16];
  if (v59)
  {
    v60 = v59;
    v61 = *v71;
    do
    {
      for (m = 0; m != v60; ++m)
      {
        if (*v71 != v61)
        {
          objc_enumerationMutation(v58);
        }

        v63 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@" Delegate: %@", *(*(&v70 + 1) + 8 * m)];
        [v5 addObject:v63];
      }

      v60 = [(NSMutableSet *)v58 countByEnumeratingWithState:&v70 objects:v98 count:16];
    }

    while (v60);
  }

  return v5;
}

- (id)getLedgerState:(BOOL)state
{
  stateCopy = state;
  v24 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  v7 = +[FlowOriginLedger getStatsString];
  v8 = [v6 initWithFormat:@"FlowScrutinizer %@", v7];

  [v5 addObject:v8];
  allKeys = [(NSMutableDictionary *)self->_originLedgers allKeys];
  v10 = [allKeys sortedArrayUsingSelector:sel_compare_];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [(NSMutableDictionary *)self->_originLedgers objectForKeyedSubscript:v16];
        [(FlowScrutinizer *)self addStateForOrigin:v17 named:v16 array:v5 isExtension:0 isDelegate:0 verbose:stateCopy];
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  return v5;
}

- (void)restoreDefaults
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer restore configuration defaults", v4, 2u);
  }

  *&self->_maxContinuouslyActiveSamples = xmmword_232816E40;
  *&self->_minCoreMediaAssetDownloadEstimatedDuration = vdupq_n_s64(0x4082C00000000000uLL);
  self->_maxFlowIdleTimeWhileMarkedWithTransferSize = 900.0;
  self->_idleDurationStopNonCoreMediaThroughputReporting = 10.0;
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
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer handle new configuration parameters %{public}@", &v8, 0xCu);
  }

  [configurationCopy extractKey:@"maxActiveSamples" toUint64:&self->_maxContinuouslyActiveSamples defaultTo:30];
  [configurationCopy extractKey:@"maxAlternatingSamples" toUint64:&self->_maxAlternatingIdleNonIdleSamples defaultTo:21];
  [configurationCopy extractKey:@"maxAlternatingSamples" toDouble:&self->_minCoreMediaAssetDownloadEstimatedDuration defaultTo:600.0];
  [configurationCopy extractKey:@"TransferSizeFailedThresholdQuarantineTime" toDouble:&self->_transferSizeFlowFailedThresholdQuarantineTime defaultTo:600.0];
  [configurationCopy extractKey:@"MaxFlowIdleTimeWhileMarkedWithTransferSize" toDouble:&self->_maxFlowIdleTimeWhileMarkedWithTransferSize defaultTo:900.0];
  [configurationCopy extractKey:@"IdleDurationStopNonCoreMediaThroughputReporting" toDouble:&self->_idleDurationStopNonCoreMediaThroughputReporting defaultTo:10.0];
  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(FlowScrutinizer *)self restoreDefaults];
  }

  return 0;
}

@end