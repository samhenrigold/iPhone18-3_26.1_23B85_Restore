@interface CellOutrankMetrics
- (CellOutrankMetrics)initWithQueue:(id)queue;
- (id)_dailyOutrankMetricDictionary;
- (id)_outrankMetricForNew:(id)new old:(id)old withDelayedItems:(BOOL)items;
- (id)getState:(BOOL)state;
- (void)_captureOutrankEntryAdditionalState:(id)state flags:(unint64_t)flags;
- (void)_logMetricDictionaryForNew:(id)new old:(id)old withDelayedItems:(BOOL)items why:(id)why;
- (void)_resetDailyTelemetryMetrics;
- (void)_sendDailyOutrankMetric;
- (void)_sendOutrankMetricNew:(id)new old:(id)old withDelayedItems:(BOOL)items;
- (void)_setupDailyTelemetryTimer;
- (void)_updateStateDeltas:(id)deltas duration:(double)duration;
- (void)_updateStateTransitionMetricsForNewState:(unsigned int)state oldState:(unsigned int)oldState;
- (void)didSampleFlows;
- (void)noteSTMState:(unsigned int)state flags:(unint64_t)flags wrmStatus:(unint64_t)status;
- (void)reportABCCase:(id)case;
- (void)setConfiguration:(id)configuration;
- (void)updateMetricsForState:(id)state;
- (void)updateOutrankExitMetrics:(id)metrics;
@end

@implementation CellOutrankMetrics

- (void)didSampleFlows
{
  outrankPollingMode = self->_outrankPollingMode;
  if (outrankPollingMode == 2)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    if (v6 - self->_sampledTallyTimestamp <= 2.0 || v6 - self->_outrankEntryTimestamp <= self->_delayedMeasurementInterval)
    {
      v12 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v13[0] = 0;
        _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "COSM Metrics didSampleFlows insufficient elapsed time for second sample", v13, 2u);
      }
    }

    else
    {
      v7 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v14 = 0;
        _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "COSM Metrics didSampleFlows handle second sample", v14, 2u);
      }

      v8 = [(NSMutableArray *)self->_stateHistory count];
      v9 = v8 - 2;
      if (v8 >= 2)
      {
        v10 = [(NSMutableArray *)self->_stateHistory objectAtIndexedSubscript:v8 - 1];
        v11 = [(NSMutableArray *)self->_stateHistory objectAtIndexedSubscript:v9];
        [(CellOutrankMetrics *)self _logMetricDictionaryForNew:v10 old:v11 withDelayedItems:1 why:@"didSampleFlows"];
        [(CellOutrankMetrics *)self _sendOutrankMetricNew:v10 old:v11 withDelayedItems:1];
      }

      self->_outrankPollingMode = 0;
    }
  }

  else if (outrankPollingMode == 1)
  {
    v4 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM Metrics didSampleFlows handle first sample", buf, 2u);
    }

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    self->_sampledTallyTimestamp = v5;
    self->_sampledCellGrandTally = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
    self->_sampledWifiGrandTally = [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:0];
    self->_outrankPollingMode = 2;
  }
}

- (id)_outrankMetricForNew:(id)new old:(id)old withDelayedItems:(BOOL)items
{
  itemsCopy = items;
  v101 = *MEMORY[0x277D85DE8];
  newCopy = new;
  oldCopy = old;
  v10 = +[COSMStateSummary primaryReasonFromFlags:state:](COSMStateSummary, "primaryReasonFromFlags:state:", [newCopy reasonFlags], objc_msgSend(newCopy, "cosmState"));
  v11 = +[COSMStateSummary primaryReasonFromFlags:state:](COSMStateSummary, "primaryReasonFromFlags:state:", [oldCopy reasonFlags], objc_msgSend(oldCopy, "cosmState"));
  v12 = v11;
  if (v10 == -1 || v11 == -1)
  {
    v14 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v15 = v14;
      *buf = 67109888;
      *v92 = v10;
      *&v92[4] = 1024;
      *&v92[6] = [newCopy cosmState];
      LOWORD(v93) = 1024;
      *(&v93 + 2) = v12;
      HIWORD(v93) = 1024;
      *v94 = [oldCopy cosmState];
      _os_log_impl(&dword_23255B000, v15, OS_LOG_TYPE_ERROR, "COSM Metrics primary reason error. Former %d state %d current %d state %d", buf, 0x1Au);
    }

    v16 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v17 = v16;
      v18 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [newCopy reasonFlags]);
      *buf = 138412290;
      *v92 = v18;
      _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_ERROR, "COSM Metrics new flags %@", buf, 0xCu);
    }

    v19 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v20 = v19;
      v21 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [oldCopy reasonFlags]);
      *buf = 138412290;
      *v92 = v21;
      _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_ERROR, "COSM Metrics old flags %@", buf, 0xCu);
    }

    v22 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v92 = newCopy;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "COSM Metrics new items %{public}@", buf, 0xCu);
    }

    v23 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *v92 = oldCopy;
      _os_log_impl(&dword_23255B000, v23, OS_LOG_TYPE_ERROR, "COSM Metrics old items %{public}@", buf, 0xCu);
    }

    [(CellOutrankMetrics *)self reportABCCase:@"SIS primary reason error"];
  }

  v24 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v25 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(newCopy, "cellularBandwidth")}];
  [v24 setObject:v25 forKeyedSubscript:@"cellularBandwidth"];

  v26 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(newCopy, "cellularExpensive")}];
  [v24 setObject:v26 forKeyedSubscript:@"cellularExpensive"];

  v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "cellularNRFrequencyBand")}];
  [v24 setObject:v27 forKeyedSubscript:@"cellularNRFrequencyBand"];

  v28 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "cellularRAT")}];
  [v24 setObject:v28 forKeyedSubscript:@"cellularRAT"];

  v29 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "cellularRSRP")}];
  [v24 setObject:v29 forKeyedSubscript:@"cellularRSRP"];

  v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(newCopy, "cellularWRMExpensive")}];
  [v24 setObject:v30 forKeyedSubscript:@"cellularWRMExpensive"];

  v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(newCopy, "cosmState")}];
  [v24 setObject:v31 forKeyedSubscript:@"cosmCurrentState"];

  v32 = [MEMORY[0x277CCABB0] numberWithInt:v10];
  [v24 setObject:v32 forKeyedSubscript:@"cosmCurrentStateEntryPrimaryReason"];

  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(newCopy, "reasonFlags")}];
  [v24 setObject:v33 forKeyedSubscript:@"cosmCurrentStateEntryReason"];

  v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(oldCopy, "cosmState")}];
  [v24 setObject:v34 forKeyedSubscript:@"cosmFormerState"];

  [newCopy timestamp];
  v36 = v35;
  [oldCopy timestamp];
  v38 = [(CellOutrankMetrics *)self secondsToMetricsAccuracy:v36 - v37];
  [v24 setObject:v38 forKeyedSubscript:@"cosmFormerStateDuration"];

  v39 = [MEMORY[0x277CCABB0] numberWithInt:v12];
  [v24 setObject:v39 forKeyedSubscript:@"cosmFormerStateEntryPrimaryReason"];

  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(oldCopy, "reasonFlags")}];
  [v24 setObject:v40 forKeyedSubscript:@"cosmFormerStateEntryReason"];

  [v24 setObject:&unk_2847EFD40 forKeyedSubscript:@"cosmReasonRevision"];
  v41 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(newCopy, "wifiSecure")}];
  [v24 setObject:v41 forKeyedSubscript:@"wifiGoodSecurity"];

  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{+[COSMStateSummary wifiPublicTypeFromFlags:](COSMStateSummary, "wifiPublicTypeFromFlags:", objc_msgSend(newCopy, "reasonFlags"))}];
  [v24 setObject:v42 forKeyedSubscript:@"wifiPublicType"];

  v43 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "wifiRAT")}];
  [v24 setObject:v43 forKeyedSubscript:@"wifiRAT"];

  v44 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "wifiRSSI")}];
  [v24 setObject:v44 forKeyedSubscript:@"wifiRSSI"];

  v45 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "outrankPercentIconShown")}];
  [v24 setObject:v45 forKeyedSubscript:@"outrankPercentIconShown"];

  v46 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "outrankNumIconOnTransitions")}];
  [v24 setObject:v46 forKeyedSubscript:@"outrankNumIconOnTransitions"];

  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularBandwidth"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularNRFrequencyBand"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularRAT"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularRSRP"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedCellularThroughput"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedMeasureIncludesExploitation"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedMeasurementOffsetInterval"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"delayedWiFiThroughput"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankNumFGAppsExploiting"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankNumFGAppsNonExploiting"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankPercentFGExploited"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"outrankPercentFGNonExploited"];
  v47 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(newCopy, "cellPrivateNetworkActive")}];
  [v24 setObject:v47 forKeyedSubscript:@"cellPrivateNetworkActive"];

  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"numSISFlows"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"numNonAppleStackFlows"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"numAppleStackFlows"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"wifiLargeTransferInitiatingCount"];
  [v24 setObject:&unk_2847EFE40 forKeyedSubscript:@"wifiLargeTransferHysteresisDuration"];
  [v24 setObject:&unk_2847EFD58 forKeyedSubscript:@"wifiLargeTransferHysteresisWins"];
  if ([oldCopy cosmState] == 3)
  {
    v48 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "outrankNumFGAppsExploiting")}];
    [v24 setObject:v48 forKeyedSubscript:@"outrankNumFGAppsExploiting"];

    v49 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "outrankNumFGAppsNonExploiting")}];
    [v24 setObject:v49 forKeyedSubscript:@"outrankNumFGAppsNonExploiting"];

    v50 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "outrankPercentFGExploited")}];
    [v24 setObject:v50 forKeyedSubscript:@"outrankPercentFGExploited"];

    v51 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(newCopy, "outrankPercentFGNonExploited")}];
    [v24 setObject:v51 forKeyedSubscript:@"outrankPercentFGNonExploited"];

    v52 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(newCopy, "openedSISFlows") - objc_msgSend(oldCopy, "openedSISFlows")}];
    [v24 setObject:v52 forKeyedSubscript:@"numSISFlows"];

    v53 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(newCopy, "openedNonAppleStackFlows") - objc_msgSend(oldCopy, "openedNonAppleStackFlows")}];
    [v24 setObject:v53 forKeyedSubscript:@"numNonAppleStackFlows"];

    v54 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(newCopy, "openedAppleStackFlows") - objc_msgSend(oldCopy, "openedAppleStackFlows")}];
    [v24 setObject:v54 forKeyedSubscript:@"numAppleStackFlows"];

    wifiLargeTransferInitiatingName = [oldCopy wifiLargeTransferInitiatingName];

    if (wifiLargeTransferInitiatingName)
    {
      wifiLargeTransferInitiatingName2 = [oldCopy wifiLargeTransferInitiatingName];
      [v24 setObject:wifiLargeTransferInitiatingName2 forKeyedSubscript:@"wifiLargeTransferInitiatingName"];

      v57 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:{objc_msgSend(oldCopy, "wifiLargeTransferInitiatingCount")}];
      [v24 setObject:v57 forKeyedSubscript:@"wifiLargeTransferInitiatingCount"];

      v58 = MEMORY[0x277CCABB0];
      [newCopy largeTransferHysteresisTime];
      v60 = v59;
      [oldCopy largeTransferHysteresisTime];
      v62 = [v58 numberWithDouble:v60 - v61];
      [v24 setObject:v62 forKeyedSubscript:@"wifiLargeTransferHysteresisDuration"];

      v63 = [MEMORY[0x277CCABB0] numberWithLongLong:{objc_msgSend(newCopy, "largeTransferHysteresisWins") - objc_msgSend(oldCopy, "largeTransferHysteresisWins")}];
      [v24 setObject:v63 forKeyedSubscript:@"wifiLargeTransferHysteresisWins"];
    }
  }

  if (itemsCopy)
  {
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v65 = v64;
    [newCopy timestamp];
    v67 = (v65 + 0.5 - v66);
    v68 = [MEMORY[0x277CCABB0] numberWithInt:{-[CellularStateRelay cellBandwidth](self->_cellRelay, "cellBandwidth")}];
    [v24 setObject:v68 forKeyedSubscript:@"delayedCellularBandwidth"];

    v69 = [MEMORY[0x277CCABB0] numberWithChar:{-[CellularStateRelay nrFrequencyBand](self->_cellRelay, "nrFrequencyBand")}];
    [v24 setObject:v69 forKeyedSubscript:@"delayedCellularNRFrequencyBand"];

    v70 = [MEMORY[0x277CCABB0] numberWithUnsignedChar:{-[NetworkStateRelay radioTechnology](self->_cellRelay, "radioTechnology")}];
    [v24 setObject:v70 forKeyedSubscript:@"delayedCellularRAT"];

    v71 = [MEMORY[0x277CCABB0] numberWithInt:{-[CellularStateRelay cellRSRP](self->_cellRelay, "cellRSRP")}];
    [v24 setObject:v71 forKeyedSubscript:@"delayedCellularRSRP"];

    v72 = [MEMORY[0x277CCABB0] numberWithInt:v67];
    [v24 setObject:v72 forKeyedSubscript:@"delayedMeasurementOffsetInterval"];

    v73 = [MEMORY[0x277CCABB0] numberWithInt:{-[CellOutrankController numForegroundAppsExploitingOutrank](self->_cellOutrankController, "numForegroundAppsExploitingOutrank") > 0}];
    [v24 setObject:v73 forKeyedSubscript:@"delayedMeasureIncludesExploitation"];

    v74 = v65 - self->_sampledTallyTimestamp;
    if (v74 > 0.0)
    {
      v75 = [TrackedFlow cellUsageGrandTallyAfterAdding:0];
      v76 = [TrackedFlow wifiNonLocalUsageGrandTallyAfterAdding:0];
      v77 = v75 - self->_sampledCellGrandTally;
      v89 = v76 - self->_sampledWifiGrandTally;
      v90 = v76;
      0x3E8 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(8 * (v77 / v74) + 999) / 0x3E8];
      [v24 setObject:0x3E8 forKeyedSubscript:@"delayedCellularThroughput"];

      0x3E82 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:(8 * (v89 / v74) + 999) / 0x3E8];
      [v24 setObject:0x3E82 forKeyedSubscript:@"delayedWiFiThroughput"];

      v80 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        sampledCellGrandTally = self->_sampledCellGrandTally;
        v82 = v80;
        v83 = [v24 objectForKeyedSubscript:@"delayedCellularThroughput"];
        *buf = 134219266;
        *v92 = v74;
        *&v92[8] = 2048;
        v93 = sampledCellGrandTally;
        *v94 = 2048;
        *&v94[2] = v75;
        v95 = 2048;
        v96 = v77;
        v97 = 2048;
        v98 = (v77 / v74);
        v99 = 2112;
        v100 = v83;
        _os_log_impl(&dword_23255B000, v82, OS_LOG_TYPE_DEBUG, "COSM Metrics delta interval %.3f cell before %llu after %llu delta %llu bytes/sec %lld reported kbps %@", buf, 0x3Eu);
      }

      v84 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
      {
        sampledWifiGrandTally = self->_sampledWifiGrandTally;
        v86 = v84;
        v87 = [v24 objectForKeyedSubscript:@"delayedWiFiThroughput"];
        *buf = 134219266;
        *v92 = v74;
        *&v92[8] = 2048;
        v93 = sampledWifiGrandTally;
        *v94 = 2048;
        *&v94[2] = v90;
        v95 = 2048;
        v96 = v89;
        v97 = 2048;
        v98 = (v89 / v74);
        v99 = 2112;
        v100 = v87;
        _os_log_impl(&dword_23255B000, v86, OS_LOG_TYPE_DEBUG, "COSM Metrics delta interval %.3f wifi before %llu after %llu delta %llu bytes/sec %lld reported kbps %@", buf, 0x3Eu);
      }
    }
  }

  return v24;
}

- (void)_sendOutrankMetricNew:(id)new old:(id)old withDelayedItems:(BOOL)items
{
  newCopy = new;
  oldCopy = old;
  v8 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "COSM Metrics calling AnalyticsSendEventLazy", buf, 2u);
  }

  v11 = newCopy;
  v9 = oldCopy;
  v10 = newCopy;
  AnalyticsSendEventLazy();
}

id __65__CellOutrankMetrics__sendOutrankMetricNew_old_withDelayedItems___block_invoke(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v1 = [*(a1 + 32) _outrankMetricForNew:*(a1 + 40) old:*(a1 + 48) withDelayedItems:*(a1 + 56)];
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    v5 = v1;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM Metrics return to AnalyticsSendEventLazy is %{public}@", &v4, 0xCu);
  }

  return v1;
}

- (void)_updateStateDeltas:(id)deltas duration:(double)duration
{
  v45 = *MEMORY[0x277D85DE8];
  deltasCopy = deltas;
  [(CellOutrankController *)self->_cellOutrankController cellOutrankIconSetDuration];
  v8 = v7;
  [(CellOutrankController *)self->_cellOutrankController cellOutrankFGExploitDuration];
  v10 = v9;
  [(CellOutrankController *)self->_cellOutrankController cellOutrankFGNonExploitDuration];
  v12 = v11;
  if (duration <= 0.0)
  {
LABEL_24:
    [deltasCopy setOutrankPercentIconShown:0xFFFFFFFFLL];
    [deltasCopy setOutrankPercentFGExploited:0xFFFFFFFFLL];
    [deltasCopy setOutrankPercentFGNonExploited:0xFFFFFFFFLL];
    goto LABEL_25;
  }

  v13 = v8 - self->_prevCellOutrankIconSetDuration;
  v14 = v10 - self->_prevCellOutrankFGExploitDuration;
  v15 = v11 - self->_prevCellOutrankFGNonExploitDuration;
  [deltasCopy setOutrankPercentIconShown:(v13 * 100.0 / duration)];
  [deltasCopy setOutrankPercentFGExploited:(v14 * 100.0 / duration)];
  [deltasCopy setOutrankPercentFGNonExploited:(v15 * 100.0 / duration)];
  if (![deltasCopy outrankPercentIconShown] && v13 > 0.0)
  {
    [deltasCopy setOutrankPercentIconShown:1];
  }

  if (![deltasCopy outrankPercentFGExploited] && v14 > 0.0)
  {
    [deltasCopy setOutrankPercentFGExploited:1];
  }

  if (![deltasCopy outrankPercentFGNonExploited] && v15 > 0.0)
  {
    [deltasCopy setOutrankPercentFGNonExploited:1];
  }

  v16 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v17 = v16;
    v38 = 67109632;
    *v39 = [deltasCopy outrankPercentIconShown];
    *&v39[4] = 1024;
    *&v39[6] = [deltasCopy outrankPercentFGExploited];
    LOWORD(v40) = 1024;
    *(&v40 + 2) = [deltasCopy outrankPercentFGNonExploited];
    _os_log_impl(&dword_23255B000, v17, OS_LOG_TYPE_DEFAULT, "COSM Metrics _updateStateDeltas percent icon shown %d fg-exploit %d fg-non-exploit %d", &v38, 0x14u);
  }

  outrankPercentFGExploited = [deltasCopy outrankPercentFGExploited];
  if (([deltasCopy outrankPercentFGNonExploited] + outrankPercentFGExploited) > 100 || objc_msgSend(deltasCopy, "outrankPercentIconShown") >= 101)
  {
    v19 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      v38 = 134217984;
      *v39 = duration;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_ERROR, "COSM Metrics percentage error, measurement duration %.3f", &v38, 0xCu);
    }

    v20 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      prevCellOutrankIconSetDuration = self->_prevCellOutrankIconSetDuration;
      v22 = v20;
      outrankPercentIconShown = [deltasCopy outrankPercentIconShown];
      v38 = 134218752;
      *v39 = prevCellOutrankIconSetDuration;
      *&v39[8] = 2048;
      v40 = v8;
      v41 = 2048;
      v42 = v13;
      v43 = 1024;
      v44 = outrankPercentIconShown;
      _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_ERROR, "COSM Metrics possible icon set prev %.3f new %.3f diff %.3f percent %d", &v38, 0x26u);
    }

    v24 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      prevCellOutrankFGExploitDuration = self->_prevCellOutrankFGExploitDuration;
      v26 = v24;
      outrankPercentFGExploited2 = [deltasCopy outrankPercentFGExploited];
      v38 = 134218752;
      *v39 = prevCellOutrankFGExploitDuration;
      *&v39[8] = 2048;
      v40 = v10;
      v41 = 2048;
      v42 = v14;
      v43 = 1024;
      v44 = outrankPercentFGExploited2;
      _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_ERROR, "COSM Metrics fg exploit duration prev %.3f new %.3f diff %.3f percent %d", &v38, 0x26u);
    }

    v28 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      prevCellOutrankFGNonExploitDuration = self->_prevCellOutrankFGNonExploitDuration;
      v30 = v28;
      outrankPercentFGNonExploited = [deltasCopy outrankPercentFGNonExploited];
      v38 = 134218752;
      *v39 = prevCellOutrankFGNonExploitDuration;
      *&v39[8] = 2048;
      v40 = v12;
      v41 = 2048;
      v42 = v15;
      v43 = 1024;
      v44 = outrankPercentFGNonExploited;
      _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_ERROR, "COSM Metrics fg non-exploit duration prev %.3f new %.3f diff %.3f percent %d", &v38, 0x26u);
    }

    [(CellOutrankMetrics *)self reportABCCase:@"Metrics percentage error"];
    goto LABEL_24;
  }

LABEL_25:
  self->_prevCellOutrankIconSetDuration = v8;
  self->_prevCellOutrankFGExploitDuration = v10;
  self->_prevCellOutrankFGNonExploitDuration = v12;
  v32 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    cellOutrankController = self->_cellOutrankController;
    v34 = v32;
    cellOutrankIconSetEvents = [(CellOutrankController *)cellOutrankController cellOutrankIconSetEvents];
    prevCellOutrankIconSetEvents = self->_prevCellOutrankIconSetEvents;
    v38 = 67109376;
    *v39 = cellOutrankIconSetEvents;
    *&v39[4] = 1024;
    *&v39[6] = prevCellOutrankIconSetEvents;
    _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_DEFAULT, "COSM Metrics _updateStateDeltas current set events %d, prev %d", &v38, 0xEu);
  }

  cellOutrankIconSetEvents2 = [(CellOutrankController *)self->_cellOutrankController cellOutrankIconSetEvents];
  [deltasCopy setOutrankNumIconOnTransitions:cellOutrankIconSetEvents2 - self->_prevCellOutrankIconSetEvents];
  self->_prevCellOutrankIconSetEvents = cellOutrankIconSetEvents2;
}

- (void)updateOutrankExitMetrics:(id)metrics
{
  cellOutrankController = self->_cellOutrankController;
  metricsCopy = metrics;
  [metricsCopy setOutrankNumFGAppsExploiting:{-[CellOutrankController numForegroundAppsExploitingOutrank](cellOutrankController, "numForegroundAppsExploitingOutrank")}];
  [metricsCopy setOutrankNumFGAppsNonExploiting:{-[CellOutrankController numForegroundAppsNonExploitingOutrank](self->_cellOutrankController, "numForegroundAppsNonExploitingOutrank")}];
}

- (void)_captureOutrankEntryAdditionalState:(id)state flags:(unint64_t)flags
{
  flagsCopy = flags;
  v26 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  if ((flagsCopy & 0x200) != 0)
  {
    wifiThroughputAdviser = self->_wifiThroughputAdviser;
    if (wifiThroughputAdviser)
    {
      largeTransferAssessor = [(WiFiThroughputAdviser *)wifiThroughputAdviser largeTransferAssessor];

      if (largeTransferAssessor)
      {
        v23 = 0u;
        v24 = 0u;
        v21 = 0u;
        v22 = 0u;
        largeTransferAssessor2 = [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser largeTransferAssessor];
        currentActiveTransferApps = [largeTransferAssessor2 currentActiveTransferApps];

        v11 = [currentActiveTransferApps countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          totalWiFiRxTransferSize = 0;
          v14 = *v22;
          do
          {
            v15 = 0;
            do
            {
              if (*v22 != v14)
              {
                objc_enumerationMutation(currentActiveTransferApps);
              }

              v16 = *(*(&v21 + 1) + 8 * v15);
              wifiLargeTransferInitiatingName = [stateCopy wifiLargeTransferInitiatingName];
              if (!wifiLargeTransferInitiatingName || (v18 = wifiLargeTransferInitiatingName, v19 = [v16 totalWiFiRxTransferSize], v18, v19 > totalWiFiRxTransferSize))
              {
                totalWiFiRxTransferSize = [v16 totalWiFiRxTransferSize];
                name = [v16 name];
                [stateCopy setWifiLargeTransferInitiatingName:name];

                [stateCopy setWifiLargeTransferInitiatingCount:{objc_msgSend(v16, "totalWiFiRxTransferSize")}];
              }

              ++v15;
            }

            while (v12 != v15);
            v12 = [currentActiveTransferApps countByEnumeratingWithState:&v21 objects:v25 count:16];
          }

          while (v12);
        }
      }
    }
  }
}

- (void)noteSTMState:(unsigned int)state flags:(unint64_t)flags wrmStatus:(unint64_t)status
{
  v7 = *&state;
  v36 = *MEMORY[0x277D85DE8];
  v9 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v31[0] = 67109632;
    v31[1] = v7;
    v32 = 2048;
    flagsCopy = flags;
    v34 = 2048;
    statusCopy = status;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "COSM Metrics noteSTMState %d flags 0x%llx wrmstatus 0x%llx", v31, 0x1Cu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v11 = v10;
  v12 = objc_alloc_init(CapturedSystemState);
  [(CapturedSystemState *)v12 setCosmState:v7];
  [(CapturedSystemState *)v12 setReasonFlags:flags & 0xFFFDFFFFFFFFFFFFLL];
  [(CapturedSystemState *)v12 setWrmStatus:status];
  [(CapturedSystemState *)v12 setTimestamp:v11];
  [(CapturedSystemState *)v12 setCellularRAT:[(NetworkStateRelay *)self->_cellRelay radioTechnology]];
  [(CapturedSystemState *)v12 setCellularNRFrequencyBand:[(CellularStateRelay *)self->_cellRelay nrFrequencyBand]];
  [(CapturedSystemState *)v12 setCellularBandwidth:[(CellularStateRelay *)self->_cellRelay cellBandwidth]];
  [(CapturedSystemState *)v12 setCellularRSRP:[(CellularStateRelay *)self->_cellRelay cellRSRP]];
  [(CapturedSystemState *)v12 setWifiRAT:[(NetworkStateRelay *)self->_wifiRelay radioTechnology]];
  [(CapturedSystemState *)v12 setWifiRSSI:[(NetworkStateRelay *)self->_wifiRelay lastReportedRxSignalStrength]];
  v13 = +[FlowScrutinizer sharedInstance];
  cellInterfaceSampler = [v13 cellInterfaceSampler];
  -[CapturedSystemState setOpenedSISFlows:](v12, "setOpenedSISFlows:", [cellInterfaceSampler totalOpenedSISFlows]);

  v15 = +[FlowScrutinizer sharedInstance];
  cellInterfaceSampler2 = [v15 cellInterfaceSampler];
  totalOpenedAppleStackFlows = [cellInterfaceSampler2 totalOpenedAppleStackFlows];
  v18 = +[FlowScrutinizer sharedInstance];
  wifiInterfaceSampler = [v18 wifiInterfaceSampler];
  -[CapturedSystemState setOpenedAppleStackFlows:](v12, "setOpenedAppleStackFlows:", [wifiInterfaceSampler totalOpenedAppleStackFlows] + totalOpenedAppleStackFlows - -[CapturedSystemState openedSISFlows](v12, "openedSISFlows"));

  v20 = +[FlowScrutinizer sharedInstance];
  cellInterfaceSampler3 = [v20 cellInterfaceSampler];
  totalOpenedNonAppleStackFlows = [cellInterfaceSampler3 totalOpenedNonAppleStackFlows];
  v23 = +[FlowScrutinizer sharedInstance];
  wifiInterfaceSampler2 = [v23 wifiInterfaceSampler];
  -[CapturedSystemState setOpenedNonAppleStackFlows:](v12, "setOpenedNonAppleStackFlows:", [wifiInterfaceSampler2 totalOpenedNonAppleStackFlows] + totalOpenedNonAppleStackFlows);

  largeTransferAssessor = [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser largeTransferAssessor];
  [largeTransferAssessor accumulatedLowThroughputHysteresisTime];
  [(CapturedSystemState *)v12 setLargeTransferHysteresisTime:?];

  largeTransferAssessor2 = [(WiFiThroughputAdviser *)self->_wifiThroughputAdviser largeTransferAssessor];
  -[CapturedSystemState setLargeTransferHysteresisWins:](v12, "setLargeTransferHysteresisWins:", [largeTransferAssessor2 numTransitionsLowThroughputHysteresisToActive]);

  lastObject = [(NSMutableArray *)self->_stateHistory lastObject];
  [(NSMutableArray *)self->_stateHistory addObject:v12];
  ++self->_stateHistorySeqno;
  if ([(NSMutableArray *)self->_stateHistory count]> self->_maxStateHistory)
  {
    [(NSMutableArray *)self->_stateHistory removeObjectAtIndex:0];
  }

  if (lastObject)
  {
    [lastObject timestamp];
    [(CellOutrankMetrics *)self _updateStateDeltas:v12 duration:v11 - v28];
    -[CellOutrankMetrics _updateStateTransitionMetricsForNewState:oldState:](self, "_updateStateTransitionMetricsForNewState:oldState:", v7, [lastObject cosmState]);
    if (v7 == 3)
    {
      self->_outrankPollingMode = 1;
      self->_outrankEntryTimestamp = v11;
      [(CellOutrankMetrics *)self _captureOutrankEntryAdditionalState:v12 flags:flags];
    }

    else
    {
      if ([lastObject cosmState] == 3)
      {
        if (self->_outrankPollingMode && [(NSMutableArray *)self->_stateHistory count]>= 3)
        {
          v29 = [(NSMutableArray *)self->_stateHistory objectAtIndexedSubscript:[(NSMutableArray *)self->_stateHistory count]- 3];
          [(CellOutrankMetrics *)self _logMetricDictionaryForNew:lastObject old:v29 withDelayedItems:0 why:@"queuedOutrank"];
          [(CellOutrankMetrics *)self _sendOutrankMetricNew:lastObject old:v29 withDelayedItems:0];
        }

        [(CellOutrankMetrics *)self updateOutrankExitMetrics:v12];
      }

      self->_outrankPollingMode = 0;
      [(CellOutrankMetrics *)self _logMetricDictionaryForNew:v12 old:lastObject withDelayedItems:0 why:@"noteSTMState"];
      v30 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v31[0]) = 0;
        _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_DEFAULT, "COSM Metrics noteSTMState about to send", v31, 2u);
      }

      [(CellOutrankMetrics *)self _sendOutrankMetricNew:v12 old:lastObject withDelayedItems:0];
    }
  }
}

- (void)_logMetricDictionaryForNew:(id)new old:(id)old withDelayedItems:(BOOL)items why:(id)why
{
  itemsCopy = items;
  v33 = *MEMORY[0x277D85DE8];
  whyCopy = why;
  v11 = [(CellOutrankMetrics *)self _outrankMetricForNew:new old:old withDelayedItems:itemsCopy];
  v12 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v30 = whyCopy;
    v31 = 2114;
    v32 = v11;
    _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_DEFAULT, "COSM Metrics %@ sample dictionary %{public}@", buf, 0x16u);
  }

  v23 = whyCopy;
  allKeys = [v11 allKeys];
  v13 = [allKeys sortedArrayUsingSelector:sel_caseInsensitiveCompare_];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v25;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v25 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = outrankLogHandle;
        if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEBUG))
        {
          v19 = *(*(&v24 + 1) + 8 * i);
          v20 = v18;
          v21 = [v11 objectForKeyedSubscript:v19];
          *buf = 138412546;
          v30 = v19;
          v31 = 2112;
          v32 = v21;
          _os_log_impl(&dword_23255B000, v20, OS_LOG_TYPE_DEBUG, "COSM Metrics %@ -> %@", buf, 0x16u);
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v15);
  }
}

- (void)reportABCCase:(id)case
{
  caseCopy = case;
  v4 = +[CellOutrankHandler sharedInstance];
  [v4 reportOutrankABCCase:caseCopy singleShot:1];
}

- (id)getState:(BOOL)state
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_stateHistory;
  v5 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = @"<prev>   ";
    v8 = *v23;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        v10 = v7;
        if (*v23 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        if ([v11 cosmState])
        {
          cosmState = [v11 cosmState];
          v13 = @"<armed>  ";
          if (cosmState != 2)
          {
            cosmState2 = [v11 cosmState];
            v13 = @"<unknown>";
            if (cosmState2 == 3)
            {
              v13 = @"<outrank>";
            }
          }
        }

        else
        {
          v13 = @"<idle>   ";
        }

        v7 = v13;
        v15 = objc_alloc(MEMORY[0x277CCACA8]);
        [v11 timestamp];
        v17 = dateStringMillisecondsFromReferenceInterval(v16);
        v18 = +[COSMStateSummary summaryFromFlags:](COSMStateSummary, "summaryFromFlags:", [v11 reasonFlags]);
        v19 = [v15 initWithFormat:@"COSMMetrics %@  %@ -> %@  %@", v17, v10, v7, v18];
        [v4 addObject:v19];
      }

      v6 = [(NSMutableArray *)obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = @"<prev>   ";
  }

  return v4;
}

- (void)_resetDailyTelemetryMetrics
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Resetting metrics for next-day collection", v9, 2u);
  }

  self->_sporadicIsKnown = 0;
  *&self->_durationInIdleState = 0u;
  *&self->_numberOfIdleToArmedTransitions = 0u;
  *&self->_numTimesWiFiEligible = 0u;
  *&self->_durationInArmedState = 0u;
  self->_durationForCellInexpensive = 0.0;
  self->_durationForCellWRMInexpensive = 0.0;
  self->_durationOnSporadicNetwork = 0.0;
  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_lastTransitionToIdleState = _Q0;
  *&self->_lastTransitionToOutrankState = _Q0;
  *&self->_lastCellInexpensive = _Q0;
}

- (void)_updateStateTransitionMetricsForNewState:(unsigned int)state oldState:(unsigned int)oldState
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = outrankLogHandle;
  if (state == oldState)
  {
    if (!os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v23) = 0;
    v5 = "COSM Daily Metrics: Obtained same state after COSM state transition";
    v6 = v4;
    v7 = 2;
    goto LABEL_4;
  }

  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 67109376;
    stateCopy2 = oldState;
    v25 = 1024;
    stateCopy = state;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Updating metrics on state transition %d -> %d", &v23, 0xEu);
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  switch(state)
  {
    case 3u:
      self->_lastTransitionToOutrankState = v11;
      if (oldState)
      {
        lastTransitionToArmedState = self->_lastTransitionToArmedState;
        if (lastTransitionToArmedState == -1.0)
        {
          lastTransitionToArmedState = self->_lastDailyTelemetryTimestamp;
          if (lastTransitionToArmedState == -1.0)
          {
            lastTransitionToArmedState = self->_startedCollectingMetricsFrom;
          }
        }

        v17 = v11 - lastTransitionToArmedState;
        if (v17 >= 5.0)
        {
          ++self->_numberOfTimesInArmedStateForAtLeastFiveSeconds;
        }

        self->_durationInArmedState = v17 + self->_durationInArmedState;
        ++self->_numberOfArmedToOutrankTransitions;
      }

      else
      {
        lastTransitionToIdleState = self->_lastTransitionToIdleState;
        if (lastTransitionToIdleState == -1.0)
        {
          lastTransitionToIdleState = self->_lastDailyTelemetryTimestamp;
          if (lastTransitionToIdleState == -1.0)
          {
            lastTransitionToIdleState = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationInIdleState = self->_durationInIdleState + v11 - lastTransitionToIdleState;
        ++self->_numberOfIdleToOutrankTransitions;
        *&self->_numberOfIdleToArmedTransitions = vadd_s32(*&self->_numberOfIdleToArmedTransitions, 0x100000001);
      }

      goto LABEL_47;
    case 2u:
      self->_lastTransitionToArmedState = v11;
      if (oldState)
      {
        lastTransitionToOutrankState = self->_lastTransitionToOutrankState;
        if (lastTransitionToOutrankState == -1.0)
        {
          lastTransitionToOutrankState = self->_lastDailyTelemetryTimestamp;
          if (lastTransitionToOutrankState == -1.0)
          {
            lastTransitionToOutrankState = self->_startedCollectingMetricsFrom;
          }
        }

        v15 = v11 - lastTransitionToOutrankState;
        if (v15 >= 5.0)
        {
          ++self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds;
        }

        self->_durationInOutrankState = v15 + self->_durationInOutrankState;
      }

      else
      {
        lastDailyTelemetryTimestamp = self->_lastTransitionToIdleState;
        if (lastDailyTelemetryTimestamp == -1.0)
        {
          lastDailyTelemetryTimestamp = self->_lastDailyTelemetryTimestamp;
          if (lastDailyTelemetryTimestamp == -1.0)
          {
            lastDailyTelemetryTimestamp = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationInIdleState = self->_durationInIdleState + v11 - lastDailyTelemetryTimestamp;
        ++self->_numberOfIdleToArmedTransitions;
      }

      goto LABEL_47;
    case 0u:
      self->_lastTransitionToIdleState = v11;
      if (oldState == 3)
      {
        startedCollectingMetricsFrom = self->_lastTransitionToOutrankState;
        if (startedCollectingMetricsFrom == -1.0)
        {
          startedCollectingMetricsFrom = self->_lastDailyTelemetryTimestamp;
          if (startedCollectingMetricsFrom == -1.0)
          {
            startedCollectingMetricsFrom = self->_startedCollectingMetricsFrom;
          }
        }

        v13 = v11 - startedCollectingMetricsFrom;
        if (v13 >= 5.0)
        {
          ++self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds;
        }

        self->_durationInOutrankState = v13 + self->_durationInOutrankState;
        ++self->_numberOfOutrankToIdleTransitions;
      }

      else
      {
        v19 = self->_lastTransitionToArmedState;
        if (v19 == -1.0)
        {
          v19 = self->_lastDailyTelemetryTimestamp;
          if (v19 == -1.0)
          {
            v19 = self->_startedCollectingMetricsFrom;
          }
        }

        v20 = v11 - v19;
        if (v20 >= 5.0)
        {
          ++self->_numberOfTimesInArmedStateForAtLeastFiveSeconds;
        }

        self->_durationInArmedState = v20 + self->_durationInArmedState;
      }

LABEL_47:
      self->_currentCOSMState = state;
      return;
  }

  v18 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    v23 = 67109120;
    stateCopy2 = state;
    v5 = "COSM Daily Metrics: Got undefined COSM state %d";
    v6 = v18;
    v7 = 8;
LABEL_4:
    _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, v5, &v23, v7);
  }
}

- (void)updateMetricsForState:(id)state
{
  v25 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v23 = 138477827;
    v24 = stateCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Updating metrics for state %{private}@", &v23, 0xCu);
  }

  numTimesWiFiEligible = self->_numTimesWiFiEligible;
  numTimesCellEligible = self->_numTimesCellEligible;
  numTimesWiFiAndCellEligible = self->_numTimesWiFiAndCellEligible;
  prevWiFiEligible = self->_prevWiFiEligible;
  if (prevWiFiEligible != [stateCopy wifiEligible])
  {
    if ([stateCopy wifiEligible])
    {
      ++self->_numTimesWiFiEligible;
    }

    self->_prevWiFiEligible = [stateCopy wifiEligible];
  }

  prevCellEligible = self->_prevCellEligible;
  if (prevCellEligible != [stateCopy cellEligible])
  {
    if ([stateCopy cellEligible])
    {
      ++self->_numTimesCellEligible;
    }

    self->_prevCellEligible = [stateCopy cellEligible];
  }

  if (self->_numTimesCellEligible + self->_numTimesWiFiEligible != numTimesCellEligible + numTimesWiFiEligible && [stateCopy cellEligible] && objc_msgSend(stateCopy, "wifiEligible"))
  {
    ++self->_numTimesWiFiAndCellEligible;
  }

  prevDeviceEligible = self->_prevDeviceEligible;
  if (prevDeviceEligible != [stateCopy deviceEligible])
  {
    if (([stateCopy deviceEligible] & 1) == 0 && self->_numTimesWiFiAndCellEligible > numTimesWiFiAndCellEligible)
    {
      ++self->_numTimesWiFiAndCellEligibleDeviceIneligible;
    }

    self->_prevDeviceEligible = [stateCopy deviceEligible];
  }

  prevCellPrivateNetworkActive = self->_prevCellPrivateNetworkActive;
  if (prevCellPrivateNetworkActive != [stateCopy cellPrivateNetworkActive])
  {
    if ([stateCopy cellPrivateNetworkActive])
    {
      ++self->_numTimesCellPrivateNetworkActive;
    }

    self->_prevCellPrivateNetworkActive = [stateCopy cellPrivateNetworkActive];
  }

  sporadicIsKnown = self->_sporadicIsKnown;
  if (sporadicIsKnown != [stateCopy wifiKnowableSporadic] && objc_msgSend(stateCopy, "wifiKnowableSporadic"))
  {
    self->_sporadicIsKnown = 1;
  }

  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v15 = v14;
  prevWiFiSporadic = self->_prevWiFiSporadic;
  if (prevWiFiSporadic != [stateCopy wifiSporadic])
  {
    if ([stateCopy wifiSporadic])
    {
      self->_lastEntryToSporadicNetwork = v15;
    }

    else
    {
      lastEntryToSporadicNetwork = self->_lastEntryToSporadicNetwork;
      if (lastEntryToSporadicNetwork == -1.0)
      {
        lastEntryToSporadicNetwork = self->_lastDailyTelemetryTimestamp;
        if (lastEntryToSporadicNetwork == -1.0)
        {
          lastEntryToSporadicNetwork = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationOnSporadicNetwork = self->_durationOnSporadicNetwork + v15 - lastEntryToSporadicNetwork;
    }

    self->_prevWiFiSporadic = [stateCopy wifiSporadic];
  }

  cellExpensive = [stateCopy cellExpensive];
  cellWRMExpensive = [stateCopy cellWRMExpensive];
  v20 = cellWRMExpensive ^ 1;
  if (self->_prevCellInexpensive != (cellExpensive ^ 1))
  {
    if (cellExpensive)
    {
      lastCellInexpensive = self->_lastCellInexpensive;
      if (lastCellInexpensive == -1.0)
      {
        lastCellInexpensive = self->_lastDailyTelemetryTimestamp;
        if (lastCellInexpensive == -1.0)
        {
          lastCellInexpensive = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationForCellInexpensive = self->_durationForCellInexpensive + v15 - lastCellInexpensive;
    }

    else
    {
      self->_lastCellInexpensive = v15;
    }

    self->_prevCellInexpensive = cellExpensive ^ 1;
  }

  if (self->_prevCellWRMInexpensive != v20)
  {
    if (cellWRMExpensive)
    {
      lastCellWRMInexpensive = self->_lastCellWRMInexpensive;
      if (lastCellWRMInexpensive == -1.0)
      {
        lastCellWRMInexpensive = self->_lastDailyTelemetryTimestamp;
        if (lastCellWRMInexpensive == -1.0)
        {
          lastCellWRMInexpensive = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationForCellWRMInexpensive = self->_durationForCellWRMInexpensive + v15 - lastCellWRMInexpensive;
    }

    else
    {
      self->_lastCellWRMInexpensive = v15;
    }

    self->_prevCellWRMInexpensive = v20;
  }
}

- (void)_setupDailyTelemetryTimer
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Setting up daily telemetry timer", buf, 2u);
  }

  v4 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, self->_queue);
  dailyTelemetryTimer = self->_dailyTelemetryTimer;
  self->_dailyTelemetryTimer = v4;

  if (self->_dailyTelemetryTimer)
  {
    objc_initWeak(buf, self);
    v6 = dispatch_time(0xFFFFFFFFFFFFFFFELL, 86400000000000);
    dispatch_source_set_timer(self->_dailyTelemetryTimer, v6, 0x4E94914F0000uLL, 0x12A05F200uLL);
    v7 = self->_dailyTelemetryTimer;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __47__CellOutrankMetrics__setupDailyTelemetryTimer__block_invoke;
    v9[3] = &unk_27898BA88;
    objc_copyWeak(&v10, buf);
    v9[4] = self;
    dispatch_source_set_event_handler(v7, v9);
    dispatch_resume(self->_dailyTelemetryTimer);
    objc_destroyWeak(&v10);
    objc_destroyWeak(buf);
  }

  else
  {
    v8 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Error creating daily telemetry timer", buf, 2u);
    }
  }
}

void __47__CellOutrankMetrics__setupDailyTelemetryTimer__block_invoke(uint64_t a1)
{
  v2 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v2, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Running scheduled daily telemetry collection block", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _sendDailyOutrankMetric];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    *(*(a1 + 32) + 224) = v5;
    [v4 _resetDailyTelemetryMetrics];
  }

  else
  {
    v6 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Skipping daily telemetry collection on nil instance", v7, 2u);
    }
  }
}

- (void)_sendDailyOutrankMetric
{
  v3 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf[0]) = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Calling AnalyticsSendEventLazy to send Daily COSM Metrics to CA", buf, 2u);
  }

  objc_initWeak(buf, self);
  objc_copyWeak(&v4, buf);
  AnalyticsSendEventLazy();
  objc_destroyWeak(&v4);
  objc_destroyWeak(buf);
}

id __45__CellOutrankMetrics__sendDailyOutrankMetric__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained _dailyOutrankMetricDictionary];
  }

  else
  {
    v4 = outrankLogHandle;
    if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Cannot send daily telemetry due to nil instance", v6, 2u);
    }

    v3 = 0;
  }

  return v3;
}

- (id)_dailyOutrankMetricDictionary
{
  v41 = *MEMORY[0x277D85DE8];
  [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
  v4 = v3;
  currentCOSMState = self->_currentCOSMState;
  switch(currentCOSMState)
  {
    case 3u:
      lastTransitionToOutrankState = self->_lastTransitionToOutrankState;
      if (lastTransitionToOutrankState == -1.0)
      {
        lastTransitionToOutrankState = self->_lastDailyTelemetryTimestamp;
        if (lastTransitionToOutrankState == -1.0)
        {
          lastTransitionToOutrankState = self->_startedCollectingMetricsFrom;
        }
      }

      v10 = v4 - lastTransitionToOutrankState;
      if (v10 >= 5.0)
      {
        ++self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds;
      }

      self->_durationInOutrankState = v10 + self->_durationInOutrankState;
      goto LABEL_20;
    case 2u:
      lastTransitionToArmedState = self->_lastTransitionToArmedState;
      if (lastTransitionToArmedState == -1.0)
      {
        lastTransitionToArmedState = self->_lastDailyTelemetryTimestamp;
        if (lastTransitionToArmedState == -1.0)
        {
          lastTransitionToArmedState = self->_startedCollectingMetricsFrom;
        }
      }

      v8 = v4 - lastTransitionToArmedState;
      if (v8 >= 5.0)
      {
        ++self->_numberOfTimesInArmedStateForAtLeastFiveSeconds;
      }

      self->_durationInArmedState = v8 + self->_durationInArmedState;
      goto LABEL_20;
    case 0u:
      lastTransitionToIdleState = self->_lastTransitionToIdleState;
      if (lastTransitionToIdleState == -1.0)
      {
        lastTransitionToIdleState = self->_lastDailyTelemetryTimestamp;
        if (lastTransitionToIdleState == -1.0)
        {
          lastTransitionToIdleState = self->_startedCollectingMetricsFrom;
        }
      }

      self->_durationInIdleState = self->_durationInIdleState + v4 - lastTransitionToIdleState;
LABEL_20:
      if (self->_prevWiFiSporadic)
      {
        lastEntryToSporadicNetwork = self->_lastEntryToSporadicNetwork;
        if (lastEntryToSporadicNetwork == -1.0)
        {
          lastEntryToSporadicNetwork = self->_lastDailyTelemetryTimestamp;
          if (lastEntryToSporadicNetwork == -1.0)
          {
            lastEntryToSporadicNetwork = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationOnSporadicNetwork = self->_durationOnSporadicNetwork + v4 - lastEntryToSporadicNetwork;
      }

      if (self->_prevCellInexpensive)
      {
        lastCellInexpensive = self->_lastCellInexpensive;
        if (lastCellInexpensive == -1.0)
        {
          lastCellInexpensive = self->_lastDailyTelemetryTimestamp;
          if (lastCellInexpensive == -1.0)
          {
            lastCellInexpensive = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationForCellInexpensive = self->_durationForCellInexpensive + v4 - lastCellInexpensive;
      }

      if (self->_prevCellWRMInexpensive)
      {
        lastCellWRMInexpensive = self->_lastCellWRMInexpensive;
        if (lastCellWRMInexpensive == -1.0)
        {
          lastCellWRMInexpensive = self->_lastDailyTelemetryTimestamp;
          if (lastCellWRMInexpensive == -1.0)
          {
            lastCellWRMInexpensive = self->_startedCollectingMetricsFrom;
          }
        }

        self->_durationForCellWRMInexpensive = self->_durationForCellWRMInexpensive + v4 - lastCellWRMInexpensive;
      }

      v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
      lastDailyTelemetryTimestamp = self->_lastDailyTelemetryTimestamp;
      if (lastDailyTelemetryTimestamp == -1.0)
      {
        lastDailyTelemetryTimestamp = self->_startedCollectingMetricsFrom;
      }

      v16 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:(v4 - lastDailyTelemetryTimestamp)];
      [v14 setObject:v16 forKeyedSubscript:@"timePeriod"];

      v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesWiFiEligible];
      [v14 setObject:v17 forKeyedSubscript:@"numTimesWiFiEligible"];

      v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesCellEligible];
      [v14 setObject:v18 forKeyedSubscript:@"numTimesCellEligible"];

      v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesWiFiAndCellEligible];
      [v14 setObject:v19 forKeyedSubscript:@"numTimesWiFiAndCellEligible"];

      v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesWiFiAndCellEligibleDeviceIneligible];
      [v14 setObject:v20 forKeyedSubscript:@"numTimesWiFiAndCellEligibleDeviceIneligible"];

      v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numTimesCellPrivateNetworkActive];
      [v14 setObject:v21 forKeyedSubscript:@"numTimesCellPrivateNetworkActive"];

      v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationInArmedState];
      [v14 setObject:v22 forKeyedSubscript:@"totalDurationInArmedState"];

      v23 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationInOutrankState];
      [v14 setObject:v23 forKeyedSubscript:@"totalDurationInOutrankState"];

      v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationInIdleState];
      [v14 setObject:v24 forKeyedSubscript:@"totalDurationInIdleState"];

      v25 = [MEMORY[0x277CCABB0] numberWithBool:self->_sporadicIsKnown];
      [v14 setObject:v25 forKeyedSubscript:@"isSporadicKnown"];

      v26 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationOnSporadicNetwork];
      [v14 setObject:v26 forKeyedSubscript:@"totalDurationOnSporadicNetworks"];

      v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfTimesInArmedStateForAtLeastFiveSeconds];
      [v14 setObject:v27 forKeyedSubscript:@"numberOfTimesInArmedStateForAtLeastFiveSeconds"];

      v28 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfTimesInOutrankStateForAtLeastFiveSeconds];
      [v14 setObject:v28 forKeyedSubscript:@"numberOfTimesInOutrankStateForAtLeastFiveSeconds"];

      v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfIdleToArmedTransitions];
      [v14 setObject:v29 forKeyedSubscript:@"numberOfIdleToArmedTransitions"];

      v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfArmedToOutrankTransitions];
      [v14 setObject:v30 forKeyedSubscript:@"numberOfArmedToOutrankTransitions"];

      v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfOutrankToIdleTransitions];
      [v14 setObject:v31 forKeyedSubscript:@"numberOfOutrankToIdleTransitions"];

      v32 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_numberOfIdleToOutrankTransitions];
      [v14 setObject:v32 forKeyedSubscript:@"numberOfIdleToOutrankTransitions"];

      v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationForCellInexpensive];
      [v14 setObject:v33 forKeyedSubscript:@"totalDurationForCellInexpensive"];

      v34 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:self->_durationForCellWRMInexpensive];
      [v14 setObject:v34 forKeyedSubscript:@"totalDurationForCellWRMInexpensive"];

      v35 = outrankLogHandle;
      if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        v39 = 138477827;
        v40 = v14;
        _os_log_impl(&dword_23255B000, v35, OS_LOG_TYPE_DEFAULT, "COSM Daily Metrics: Posting metric dictionary %{private}@ to CA", &v39, 0xCu);
      }

      goto LABEL_42;
  }

  v36 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_ERROR))
  {
    v37 = self->_currentCOSMState;
    v39 = 67109120;
    LODWORD(v40) = v37;
    _os_log_impl(&dword_23255B000, v36, OS_LOG_TYPE_ERROR, "COSM Daily Metrics: Got unexpected COSM state %d", &v39, 8u);
  }

  v14 = 0;
LABEL_42:

  return v14;
}

- (void)setConfiguration:(id)configuration
{
  v9 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  v5 = outrankLogHandle;
  if (os_log_type_enabled(outrankLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138543362;
    v8 = configurationCopy;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "CellOutrankHandler new configuration parameters %{public}@", &v7, 0xCu);
  }

  [configurationCopy extractKey:@"metricsMeasurementDelay" toDouble:&self->_delayedMeasurementInterval defaultTo:5.0];
  [configurationCopy extractKey:@"metricsMaxHistory" toUint32:&self->_maxStateHistory defaultTo:12];
  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(CellOutrankMetrics *)self restoreDefaults];
  }
}

- (CellOutrankMetrics)initWithQueue:(id)queue
{
  queueCopy = queue;
  v20.receiver = self;
  v20.super_class = CellOutrankMetrics;
  v6 = [(CellOutrankMetrics *)&v20 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
    v8 = [NetworkStateRelay getStateRelayFor:5];
    cellRelay = v7->_cellRelay;
    v7->_cellRelay = v8;

    v10 = [NetworkStateRelay getStateRelayFor:3];
    wifiRelay = v7->_wifiRelay;
    v7->_wifiRelay = v10;

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    stateHistory = v7->_stateHistory;
    v7->_stateHistory = v12;

    v14 = +[CellOutrankController sharedInstance];
    cellOutrankController = v7->_cellOutrankController;
    v7->_cellOutrankController = v14;

    v16 = +[WiFiThroughputAdviser sharedInstance];
    wifiThroughputAdviser = v7->_wifiThroughputAdviser;
    v7->_wifiThroughputAdviser = v16;

    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v7->_startedCollectingMetricsFrom = v18;
    v7->_lastDailyTelemetryTimestamp = -1.0;
    *&v7->_prevWiFiEligible = 0;
    *&v7->_prevCellPrivateNetworkActive = 0;
    v7->_prevDeviceEligible = 1;
    [(CellOutrankMetrics *)v7 _resetDailyTelemetryMetrics];
    [(CellOutrankMetrics *)v7 _setupDailyTelemetryTimer];
    [(CellOutrankMetrics *)v7 restoreDefaults];
  }

  return v7;
}

@end