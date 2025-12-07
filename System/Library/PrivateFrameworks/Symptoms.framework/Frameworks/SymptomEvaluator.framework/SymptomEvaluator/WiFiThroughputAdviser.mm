@interface WiFiThroughputAdviser
+ (WiFiThroughputAdviser)sharedInstance;
- (BOOL)setConfiguration:(id)configuration;
- (WiFiThroughputAdviser)init;
- (id)getStateAt:(double)at;
- (int)largeTransfersMeetContinuedThreshold:(id)threshold;
- (int)largeTransfersMeetInitialThreshold:(id)threshold;
- (void)checkHeavyInterfaceUseAt:(double)at;
- (void)checkLargeTransfersAt:(double)at;
- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic;
- (void)dumpStateAt:(double)at;
- (void)restoreDefaults;
- (void)setCellOutrankAdvised:(BOOL)advised;
- (void)setCellOutrankAdvisedViaInterfaceUse:(BOOL)use;
- (void)setCellOutrankAdvisedViaLargeTransfers:(BOOL)transfers;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation WiFiThroughputAdviser

+ (WiFiThroughputAdviser)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__WiFiThroughputAdviser_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_43 != -1)
  {
    dispatch_once(&sharedInstance_pred_43, block);
  }

  v2 = sharedInstance_sharedInstance_45;

  return v2;
}

uint64_t __39__WiFiThroughputAdviser_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_45;
  sharedInstance_sharedInstance_45 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (int)largeTransfersMeetInitialThreshold:(id)threshold
{
  v26 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  if (([thresholdCopy numWiFiRxUpperThresholdTransferSizes] || objc_msgSend(thresholdCopy, "numWiFiRxLowerThresholdTransferSizes") >= self->_numLowerTransferThresholdFlowsForUpperThreshold) && (objc_msgSend(thresholdCopy, "transferSizeRelatedRecentWiFiRxThroughput"), v5 > self->_minTransferSizeThroughputForUpgrade))
  {
    v6 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      numWiFiRxUpperThresholdTransferSizes = [thresholdCopy numWiFiRxUpperThresholdTransferSizes];
      numWiFiRxLowerThresholdTransferSizes = [thresholdCopy numWiFiRxLowerThresholdTransferSizes];
      numLowerTransferThresholdFlowsForUpperThreshold = self->_numLowerTransferThresholdFlowsForUpperThreshold;
      [thresholdCopy transferSizeRelatedRecentWiFiRxThroughput];
      minTransferSizeThroughputForUpgrade = self->_minTransferSizeThroughputForUpgrade;
      v16 = 134219008;
      v17 = numWiFiRxUpperThresholdTransferSizes;
      v18 = 2048;
      v19 = numWiFiRxLowerThresholdTransferSizes;
      v20 = 1024;
      v21 = numLowerTransferThresholdFlowsForUpperThreshold;
      v22 = 2048;
      v23 = v12;
      v24 = 2048;
      v25 = minTransferSizeThroughputForUpgrade;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser  largeTransfersMeetInitialThreshold, assess above as nums %zd %zd (need %d) tput %.6f target %.6f", &v16, 0x30u);
    }

    v13 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v16 = 138543362;
      v17 = thresholdCopy;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEBUG, "WiFiThroughputAdviser  largeTransfersMeetInitialThreshold, assessor status %{public}@", &v16, 0xCu);
    }

    v14 = 1;
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (int)largeTransfersMeetContinuedThreshold:(id)threshold
{
  v12 = *MEMORY[0x277D85DE8];
  thresholdCopy = threshold;
  if ([thresholdCopy numWiFiRxUpperThresholdTransferSizes] || objc_msgSend(thresholdCopy, "numCellRxUpperThresholdTransferSizes") || objc_msgSend(thresholdCopy, "numWiFiRxLowerThresholdTransferSizes") || objc_msgSend(thresholdCopy, "numCellRxLowerThresholdTransferSizes"))
  {
    [thresholdCopy transferSizeRelatedRecentTotalRxThroughput];
    if (v5 > self->_minTransferSizeThroughputForUpgrade)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  else
  {
    v6 = 0;
  }

  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v9[0] = 67109378;
    v9[1] = v6;
    v10 = 2114;
    v11 = thresholdCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "WiFiThroughputAdviser largeTransfersMeetContinuedThreshold, assess %d for %{public}@", v9, 0x12u);
  }

  return v6;
}

- (WiFiThroughputAdviser)init
{
  v5.receiver = self;
  v5.super_class = WiFiThroughputAdviser;
  v2 = [(WiFiThroughputAdviser *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(WiFiThroughputAdviser *)v2 restoreDefaults];
  }

  return v3;
}

- (void)setEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  v23 = *MEMORY[0x277D85DE8];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke;
  v20[3] = &unk_27898A0C8;
  v20[4] = self;
  if (setEnabled__pred != -1)
  {
    dispatch_once(&setEnabled__pred, v20);
  }

  if (self->_enabled != enabledCopy)
  {
    if (enabledCopy)
    {
      if (!self->_flowOracle)
      {
        v5 = +[FlowOracle sharedInstance];
        flowOracle = self->_flowOracle;
        self->_flowOracle = v5;

        flowScrutinizer = [(FlowOracle *)self->_flowOracle flowScrutinizer];

        if (!flowScrutinizer)
        {
          v8 = +[FlowScrutinizer sharedInstance];
          [(FlowOracle *)self->_flowOracle setFlowScrutinizer:v8];
        }

        if (self->_pendingConfigurationParams)
        {
          v9 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
          {
            pendingConfigurationParams = self->_pendingConfigurationParams;
            *buf = 138412290;
            v22 = pendingConfigurationParams;
            _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser set delayed configuration %@", buf, 0xCu);
          }

          logHandle = [self->_pendingConfigurationParams logHandle];
          [self->_pendingConfigurationParams setLogHandle:flowScrutinyLogHandle];
          flowScrutinizer2 = [(FlowOracle *)self->_flowOracle flowScrutinizer];
          wifiInterfaceSampler = [flowScrutinizer2 wifiInterfaceSampler];
          [wifiInterfaceSampler setConfiguration:self->_pendingConfigurationParams];

          [self->_pendingConfigurationParams setLogHandle:logHandle];
          v14 = self->_pendingConfigurationParams;
          self->_pendingConfigurationParams = 0;
        }
      }

      queue = [(WiFiThroughputAdviser *)self queue];
      v16 = queue;
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_4;
      v19[3] = &unk_27898A0C8;
      v19[4] = self;
      v17 = v19;
    }

    else
    {
      queue = [(WiFiThroughputAdviser *)self queue];
      v16 = queue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_2_6;
      block[3] = &unk_27898A0C8;
      block[4] = self;
      v17 = block;
    }

    dispatch_async(queue, v17);
  }

  self->_enabled = enabledCopy;
}

void __36__WiFiThroughputAdviser_setEnabled___block_invoke(uint64_t a1)
{
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_2;
  aBlock[3] = &unk_278990048;
  aBlock[4] = *(a1 + 32);
  v2 = _Block_copy(aBlock);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __36__WiFiThroughputAdviser_setEnabled___block_invoke_3;
  v7[3] = &unk_278990048;
  v7[4] = *(a1 + 32);
  v3 = _Block_copy(v7);
  if (!*(*(a1 + 32) + 72))
  {
    v4 = objc_alloc_init(LargeTransferAssessor);
    v5 = *(a1 + 32);
    v6 = *(v5 + 72);
    *(v5 + 72) = v4;

    [*(*(a1 + 32) + 72) setShouldGoActiveBlock:v2];
    [*(*(a1 + 32) + 72) setShouldStayActiveBlock:v3];
  }
}

void __36__WiFiThroughputAdviser_setEnabled___block_invoke_4(uint64_t a1)
{
  v2 = +[FlowRefreshScheduler sharedInstance];
  [v2 addDelegate:*(a1 + 32)];
}

void __36__WiFiThroughputAdviser_setEnabled___block_invoke_2_6(uint64_t a1)
{
  v2 = +[FlowRefreshScheduler sharedInstance];
  [v2 removeDelegate:*(a1 + 32)];
}

- (void)setCellOutrankAdvised:(BOOL)advised
{
  if (self->_cellOutrankAdvised != advised)
  {
    [(WiFiThroughputAdviser *)self willChangeValueForKey:@"cellOutrankAdvised"];
    self->_cellOutrankAdvised = advised;

    [(WiFiThroughputAdviser *)self didChangeValueForKey:@"cellOutrankAdvised"];
  }
}

- (void)setCellOutrankAdvisedViaInterfaceUse:(BOOL)use
{
  if (self->_cellOutrankAdvisedViaInterfaceUse != use)
  {
    useCopy = use;
    [(WiFiThroughputAdviser *)self willChangeValueForKey:@"cellOutrankAdvisedViaInterfaceUse"];
    self->_cellOutrankAdvisedViaInterfaceUse = useCopy;
    [(WiFiThroughputAdviser *)self didChangeValueForKey:@"cellOutrankAdvisedViaInterfaceUse"];
    if (useCopy || !self->_cellOutrankAdvisedViaLargeTransfers)
    {

      [(WiFiThroughputAdviser *)self setCellOutrankAdvised:useCopy];
    }
  }
}

- (void)setCellOutrankAdvisedViaLargeTransfers:(BOOL)transfers
{
  if (self->_cellOutrankAdvisedViaLargeTransfers != transfers)
  {
    transfersCopy = transfers;
    [(WiFiThroughputAdviser *)self willChangeValueForKey:@"cellOutrankAdvisedViaLargeTransfers"];
    self->_cellOutrankAdvisedViaLargeTransfers = transfersCopy;
    [(WiFiThroughputAdviser *)self didChangeValueForKey:@"cellOutrankAdvisedViaLargeTransfers"];
    if (transfersCopy || !self->_cellOutrankAdvisedViaInterfaceUse)
    {

      [(WiFiThroughputAdviser *)self setCellOutrankAdvised:transfersCopy];
    }
  }
}

- (void)checkLargeTransfersAt:(double)at
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    transferAssessor = self->_transferAssessor;
    v6 = 134218242;
    v7 = transferAssessor;
    v8 = 2112;
    v9 = transferAssessor;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_DEBUG, "checkLargeTransfersAt, assessor %p %@", &v6, 0x16u);
  }

  [(LargeTransferAssessor *)self->_transferAssessor checkLargeTransfersAt:apparentTime()];
  [(WiFiThroughputAdviser *)self setCellOutrankAdvisedViaLargeTransfers:[(LargeTransferAssessor *)self->_transferAssessor assessedPositive]];
}

- (void)checkHeavyInterfaceUseAt:(double)at
{
  if ([(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighWiFiInterfaceThroughput])
  {
    cellOutrankAdvisedViaInterfaceUse = [(WiFiThroughputAdviser *)self cellOutrankAdvisedViaInterfaceUse];
    v6 = flowScrutinyLogHandle;
    if (!cellOutrankAdvisedViaInterfaceUse)
    {
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser sustained-high-interface-usasge causes outrank advisory", v15, 2u);
      }

      [(WiFiThroughputAdviser *)self setCellOutrankAdvisedViaInterfaceUse:1];
      goto LABEL_13;
    }

    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = 0;
      v7 = "WiFiThroughputAdviser sustained-high-interface-usasge causes continued outrank advisory";
      v8 = &v14;
LABEL_9:
      _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_INFO, v7, v8, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  if (self->_lastHighInterfaceUse <= 0.0)
  {
    return;
  }

  if ([(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighCellInterfaceThroughput])
  {
    v6 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      v7 = "WiFiThroughputAdviser sustained-high-interface-usasge on cell causes continued outrank advisory";
      v8 = buf;
      goto LABEL_9;
    }

LABEL_13:
    self->_lastHighInterfaceUse = at;
    return;
  }

  if (at - self->_lastHighInterfaceUse <= self->_lastHighInterfaceUseDampeningInterval)
  {
    v10 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      *v11 = 0;
      _os_log_impl(&dword_23255B000, v10, OS_LOG_TYPE_INFO, "WiFiThroughputAdviser in hysteresis for sustained-high-interface-usasge", v11, 2u);
    }
  }

  else
  {
    self->_lastHighInterfaceUse = 0.0;
    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEFAULT, "WiFiThroughputAdviser no longer sustained-high-interface-usasge causes outrank advisory to be dropped", v12, 2u);
    }

    [(WiFiThroughputAdviser *)self setCellOutrankAdvisedViaInterfaceUse:0];
  }
}

- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    enabled = self->_enabled;
    flowOracle = self->_flowOracle;
    v9 = v6;
    LODWORD(flowOracle) = [(FlowOracle *)flowOracle hasSustainedResponsiveHighWiFiInterfaceThroughput];
    hasSustainedResponsiveHighCellInterfaceThroughput = [(FlowOracle *)self->_flowOracle hasSustainedResponsiveHighCellInterfaceThroughput];
    v11[0] = 67109632;
    v11[1] = enabled;
    v12 = 1024;
    v13 = flowOracle;
    v14 = 1024;
    v15 = hasSustainedResponsiveHighCellInterfaceThroughput;
    _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "WiFiThroughputAdviser didPollFlowsAt enabled %d wifi sustained %d cell sustained %d", v11, 0x14u);
  }

  if (self->_enabled)
  {
    [(WiFiThroughputAdviser *)self checkHeavyInterfaceUseAt:at];
    [(WiFiThroughputAdviser *)self checkLargeTransfersAt:at];
  }
}

- (void)restoreDefaults
{
  *&self->_lastHighInterfaceUseDampeningInterval = xmmword_2328171A0;
  self->_minRequiredLargeTransferThroughputForContinuedOutrank = 20.0;
  self->_numLowerTransferThresholdFlowsForUpperThreshold = 2;
}

- (BOOL)setConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v13 = 138412290;
      v14 = configurationCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "WiFiThroughputAdviser set configuration %@", &v13, 0xCu);
    }

    logHandle = [configurationCopy logHandle];
    [configurationCopy setLogHandle:flowScrutinyLogHandle];
    [configurationCopy extractKey:@"OutrankDampeningHighInterfaceUse" toDouble:&self->_lastHighInterfaceUseDampeningInterval defaultTo:5.8];
    [configurationCopy extractKey:@"OutrankMinTransferSizeTput" toDouble:&self->_minTransferSizeThroughputForUpgrade defaultTo:50.0];
    [configurationCopy extractKey:@"OutrankMinContinuedTransferSizeTput" toDouble:&self->_minRequiredLargeTransferThroughputForContinuedOutrank defaultTo:20.0];
    [configurationCopy extractKey:@"OutrankNumLowerTransferSizeFlows" toUint32:&self->_numLowerTransferThresholdFlowsForUpperThreshold defaultTo:2];
    v7 = [configurationCopy objectForKey:@"restoreDefaults"];
    if (v7)
    {
      [(WiFiThroughputAdviser *)self restoreDefaults];
    }

    flowOracle = self->_flowOracle;
    if (flowOracle)
    {
      pendingConfigurationParams = [(FlowOracle *)flowOracle flowScrutinizer];
      wifiInterfaceSampler = [pendingConfigurationParams wifiInterfaceSampler];
      [wifiInterfaceSampler setConfiguration:configurationCopy];
    }

    else
    {
      v11 = configurationCopy;
      pendingConfigurationParams = self->_pendingConfigurationParams;
      self->_pendingConfigurationParams = v11;
    }

    [configurationCopy setLogHandle:logHandle];
  }

  return 0;
}

- (void)dumpStateAt:(double)at
{
  v21 = *MEMORY[0x277D85DE8];
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[WiFiThroughputAdviser dumpStateAt:]", "%t", *&at);
  }

  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "=========================== START OF WIFITHROUGHPUTADVISER STATE DUMP ===========================", buf, 2u);
  }

  v6 = [(WiFiThroughputAdviser *)self getStateAt:at];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
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

        v11 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          v12 = *(*(&v14 + 1) + 8 * i);
          *buf = 138543362;
          v19 = v12;
          _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "=========================== END OF WIFITHROUGHPUTADVISER STATE DUMP ===========================", buf, 2u);
  }
}

- (id)getStateAt:(double)at
{
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[WiFiThroughputAdviser getStateAt:]", "%t", *&at);
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"WiFiThroughputAdviser: enabled %d outrank-advised %d via-throughput %d via-large-transfer %d", self->_enabled, self->_cellOutrankAdvised, self->_cellOutrankAdvisedViaInterfaceUse, self->_cellOutrankAdvisedViaLargeTransfers];
  [array addObject:v5];
  v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"WiFiThroughputAdviser configuration: hi-ifuse-dampening %.3f transfer continued-tput %.6f %.6f num-lower-xfer %d", *&self->_lastHighInterfaceUseDampeningInterval, *&self->_minTransferSizeThroughputForUpgrade, *&self->_minRequiredLargeTransferThroughputForContinuedOutrank, self->_numLowerTransferThresholdFlowsForUpperThreshold];
  [array addObject:v6];
  getState = [(LargeTransferAssessor *)self->_transferAssessor getState];
  if (getState)
  {
    [array addObjectsFromArray:getState];
  }

  flowOracle = self->_flowOracle;
  if (flowOracle)
  {
    flowScrutinizer = [(FlowOracle *)flowOracle flowScrutinizer];
    wifiInterfaceSampler = [flowScrutinizer wifiInterfaceSampler];
    v11 = [wifiInterfaceSampler getState:1];

    if (v11)
    {
      [array addObjectsFromArray:v11];
    }
  }

  else
  {
    [array addObject:@"No WiFi interface statistics as the SIS machinery has not been enabled yet"];
  }

  return array;
}

@end