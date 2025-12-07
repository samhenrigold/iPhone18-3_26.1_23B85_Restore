@interface FlowOracle
+ (FlowOracle)sharedInstance;
- (BOOL)flowQualfiesForAVHeuristics:(id)heuristics;
- (BOOL)hadZeroCellInterfaceTrafficForLast:(double)last;
- (BOOL)hadZeroWiFiInterfaceTrafficForLast:(double)last;
- (BOOL)hasSustainedConservativeHighCellInterfaceThroughput;
- (BOOL)hasSustainedConservativeHighWiFiInterfaceThroughput;
- (BOOL)hasSustainedHighCellInterfaceRxThroughput;
- (BOOL)hasSustainedHighCellInterfaceTxThroughput;
- (BOOL)hasSustainedHighWiFiInterfaceRxThroughput;
- (BOOL)hasSustainedHighWiFiInterfaceTxThroughput;
- (BOOL)hasSustainedResponsiveHighCellInterfaceThroughput;
- (BOOL)hasSustainedResponsiveHighWiFiInterfaceThroughput;
- (FlowOracle)init;
- (NSSet)allContributors;
- (NSSet)coreMediaAssetDownloadContributors;
- (NSSet)transferContributors;
- (double)coreMediaAssetDownloadRelatedRecentThroughput;
- (id)getState:(BOOL)state;
- (int)activeHighThroughputAudioVideoTrafficForegroundFlowScore;
- (int)activeLimitedThroughputAudioVideoTrafficForegroundFlowScore;
- (int)setConfiguration:(id)configuration;
- (unint64_t)numActiveCoreMediaAssetDownloads;
- (unint64_t)numActiveTransferSizes;
- (unint64_t)numCandidateCoreMediaAssetDownloads;
- (unint64_t)numCloakedTransferSizes;
- (unint64_t)numLowerThresholdTransferSizes;
- (unint64_t)numUpperThresholdTransferSizes;
- (void)_clearState;
- (void)applyFlowHeuristics:(id)heuristics onBehalfOf:(id)of;
- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic;
- (void)evaluatePossibleAVFlows:(id)flows currentFlowCount:(unint64_t)count activeFlowCount:(unint64_t)flowCount;
- (void)logCellInterfaceUseContributors:(unint64_t)contributors;
- (void)logCoreMediaAssetDownloadContributors:(unint64_t)contributors;
- (void)logTransferContributors:(unint64_t)contributors;
- (void)markCoreMediaAssetDownloadsAsActive;
- (void)markCoreMediaAssetDownloadsAsInactiveAt:(double)at;
- (void)markTransferSizeFlowsAsActive;
- (void)markTransferSizeFlowsAsInactive;
- (void)refreshState:(id)state;
- (void)refreshTransferSizeState;
- (void)restoreDefaults;
- (void)startSamplingPeriod:(id)period;
@end

@implementation FlowOracle

- (BOOL)hasSustainedConservativeHighCellInterfaceThroughput
{
  cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  hasSustainedConservativeHighInterfaceThroughput = [cellInterfaceSampler hasSustainedConservativeHighInterfaceThroughput];

  return hasSustainedConservativeHighInterfaceThroughput;
}

- (void)refreshTransferSizeState
{
  v47 = *MEMORY[0x277D85DE8];
  [(NSMutableSet *)self->_expectedTransferOrigins removeAllObjects];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v41;
    do
    {
      v7 = 0;
      do
      {
        if (*v41 != v6)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v8 = *(*(&v40 + 1) + 8 * v7);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v10 = [transferSizeFlows2 objectForKeyedSubscript:v8];

        creatorLedger = [v10 creatorLedger];
        if (creatorLedger && [v10 expectedTransferState] != 6)
        {
          [(NSMutableSet *)self->_expectedTransferOrigins addObject:creatorLedger];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [transferSizeFlows countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v5);
  }

  self->_transferSizeRelatedRecentTotalRxThroughput = 0.0;
  self->_transferSizeRelatedRecentTotalTxThroughput = 0.0;
  self->_transferSizeRelatedRecentCellRxThroughput = 0.0;
  self->_transferSizeRelatedRecentCellTxThroughput = 0.0;
  self->_transferSizeRelatedRecentWiFiRxThroughput = 0.0;
  self->_transferSizeRelatedRecentWiFiTxThroughput = 0.0;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = self->_expectedTransferOrigins;
  v12 = [(NSMutableSet *)obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v12)
  {
    v13 = v12;
    v31 = *v37;
    do
    {
      v14 = 0;
      do
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v36 + 1) + 8 * v14);
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        currentFlows = [v15 currentFlows];
        v17 = [currentFlows countByEnumeratingWithState:&v32 objects:v44 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v33;
          do
          {
            v20 = 0;
            do
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(currentFlows);
              }

              v21 = *(*(&v32 + 1) + 8 * v20);
              currentFlows2 = [v15 currentFlows];
              v23 = [currentFlows2 objectForKeyedSubscript:v21];

              [v23 recentRxThroughput];
              self->_transferSizeRelatedRecentTotalRxThroughput = v24 + self->_transferSizeRelatedRecentTotalRxThroughput;
              [v23 recentTxThroughput];
              self->_transferSizeRelatedRecentTotalTxThroughput = v25 + self->_transferSizeRelatedRecentTotalTxThroughput;
              [v23 recentCellRxThroughput];
              self->_transferSizeRelatedRecentCellRxThroughput = v26 + self->_transferSizeRelatedRecentCellRxThroughput;
              [v23 recentCellTxThroughput];
              self->_transferSizeRelatedRecentCellTxThroughput = v27 + self->_transferSizeRelatedRecentCellTxThroughput;
              [v23 recentWiFiRxThroughput];
              self->_transferSizeRelatedRecentWiFiRxThroughput = v28 + self->_transferSizeRelatedRecentWiFiRxThroughput;
              [v23 recentWiFiTxThroughput];
              self->_transferSizeRelatedRecentWiFiTxThroughput = v29 + self->_transferSizeRelatedRecentWiFiTxThroughput;

              ++v20;
            }

            while (v18 != v20);
            v18 = [currentFlows countByEnumeratingWithState:&v32 objects:v44 count:16];
          }

          while (v18);
        }

        ++v14;
      }

      while (v14 != v13);
      v13 = [(NSMutableSet *)obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v13);
  }

  self->_transferSizeRelatedRecentTotalThroughput = self->_transferSizeRelatedRecentTotalRxThroughput + self->_transferSizeRelatedRecentTotalTxThroughput;
  self->_transferSizeRelatedRecentCellThroughput = self->_transferSizeRelatedRecentCellRxThroughput + self->_transferSizeRelatedRecentCellTxThroughput;
  self->_transferSizeRelatedRecentWiFiThroughput = self->_transferSizeRelatedRecentWiFiRxThroughput + self->_transferSizeRelatedRecentWiFiTxThroughput;
}

- (unint64_t)numActiveCoreMediaAssetDownloads
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v17 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        currentAssetDownloads = [v6 currentAssetDownloads];
        v8 = [currentAssetDownloads countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(currentAssetDownloads);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              currentAssetDownloads2 = [v6 currentAssetDownloads];
              v14 = [currentAssetDownloads2 objectForKeyedSubscript:v12];

              if ([v14 downloadState] == 2)
              {
                ++v4;
              }
            }

            v9 = [currentAssetDownloads countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numCandidateCoreMediaAssetDownloads
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v17 = *v23;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v23 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v22 + 1) + 8 * i);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        currentAssetDownloads = [v6 currentAssetDownloads];
        v8 = [currentAssetDownloads countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v19;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v19 != v10)
              {
                objc_enumerationMutation(currentAssetDownloads);
              }

              v12 = *(*(&v18 + 1) + 8 * j);
              currentAssetDownloads2 = [v6 currentAssetDownloads];
              v14 = [currentAssetDownloads2 objectForKeyedSubscript:v12];

              if ([v14 downloadState] == 1)
              {
                ++v4;
              }
            }

            v9 = [currentAssetDownloads countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v9);
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)numCloakedTransferSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [transferSizeFlows2 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] == 6)
        {
          ++v6;
        }
      }

      v5 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)numActiveTransferSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [transferSizeFlows2 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] == 4)
        {
          ++v6;
        }
      }

      v5 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)numUpperThresholdTransferSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [transferSizeFlows2 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] - 2 <= 2 && ((objc_msgSend(v11, "rxTransferSizeUpperThreshold") & 1) != 0 || objc_msgSend(v11, "txTransferSizeUpperThreshold")))
        {
          ++v6;
        }
      }

      v5 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (unint64_t)numLowerThresholdTransferSizes
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v11 = [transferSizeFlows2 objectForKeyedSubscript:v9];

        if ([v11 expectedTransferState] - 2 <= 2 && ((objc_msgSend(v11, "rxTransferSizeLowerThreshold") & 1) != 0 || objc_msgSend(v11, "txTransferSizeLowerThreshold")) && (objc_msgSend(v11, "rxTransferSizeUpperThreshold") & 1) == 0)
        {
          v6 += [v11 txTransferSizeUpperThreshold] ^ 1;
        }
      }

      v5 = [transferSizeFlows countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)hasSustainedResponsiveHighCellInterfaceThroughput
{
  cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  hasSustainedResponsiveHighInterfaceThroughput = [cellInterfaceSampler hasSustainedResponsiveHighInterfaceThroughput];

  return hasSustainedResponsiveHighInterfaceThroughput;
}

- (NSSet)allContributors
{
  v3 = [MEMORY[0x277CBEB98] setWithSet:self->_highCellInterfaceUseContributors];
  if ([(NSMutableSet *)self->_accumulatedTransferOrigins count])
  {
    v4 = [v3 setByAddingObjectsFromSet:self->_accumulatedTransferOrigins];

    v3 = v4;
  }

  if ([(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins count])
  {
    v5 = [v3 setByAddingObjectsFromSet:self->_accumulatedCoreMediaAssetDownloadOrigins];

    v3 = v5;
  }

  return v3;
}

- (double)coreMediaAssetDownloadRelatedRecentThroughput
{
  v31 = *MEMORY[0x277D85DE8];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v26;
    v5 = 0.0;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v26 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        currentFlows = [v7 currentFlows];
        v9 = [currentFlows countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v22;
          do
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v22 != v11)
              {
                objc_enumerationMutation(currentFlows);
              }

              v13 = *(*(&v21 + 1) + 8 * j);
              currentFlows2 = [v7 currentFlows];
              v15 = [currentFlows2 objectForKeyedSubscript:v13];

              [v15 recentRxThroughput];
              v17 = v16;
              [v15 recentTxThroughput];
              v5 = v5 + v17 + v18;
            }

            v10 = [currentFlows countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v10);
        }
      }

      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v3);
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)_clearState
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "FlowOracle _clearState", v6, 2u);
  }

  busiestCellOrigin = self->_busiestCellOrigin;
  self->_busiestCellOrigin = 0;

  self->_busiestCellOriginRecentThroughput = 0.0;
  busiestWiFiOrigin = self->_busiestWiFiOrigin;
  self->_busiestWiFiOrigin = 0;

  self->_busiestWiFiOriginRecentThroughput = 0.0;
  self->_backgroundCellTransferRecentThroughput = 0.0;
  self->_backgroundWiFiTransferRecentThroughput = 0.0;
  [(NSMutableSet *)self->_expectedTransferOrigins removeAllObjects];
  [(NSMutableSet *)self->_coreMediaAssetDownloadOrigins removeAllObjects];
  [(NSMutableSet *)self->_likelyBelowThresholdAVFlows removeAllObjects];
  [(NSMutableSet *)self->_likelyOverThresholdAVFlows removeAllObjects];
  [(NSMutableSet *)self->_suppressedAVFlows removeAllObjects];
}

+ (FlowOracle)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __28__FlowOracle_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_pred_39 != -1)
  {
    dispatch_once(&sharedInstance_pred_39, block);
  }

  v2 = sharedInstance_sharedInstance_41;

  return v2;
}

uint64_t __28__FlowOracle_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = sharedInstance_sharedInstance_41;
  sharedInstance_sharedInstance_41 = v1;

  return MEMORY[0x2821F96F8](v1, v2);
}

- (FlowOracle)init
{
  v27.receiver = self;
  v27.super_class = FlowOracle;
  v2 = [(FlowOracle *)&v27 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB58]);
    expectedTransferOrigins = v2->_expectedTransferOrigins;
    v2->_expectedTransferOrigins = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    coreMediaAssetDownloadOrigins = v2->_coreMediaAssetDownloadOrigins;
    v2->_coreMediaAssetDownloadOrigins = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedTransferOrigins = v2->_accumulatedTransferOrigins;
    v2->_accumulatedTransferOrigins = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
    accumulatedCoreMediaAssetDownloadOrigins = v2->_accumulatedCoreMediaAssetDownloadOrigins;
    v2->_accumulatedCoreMediaAssetDownloadOrigins = v9;

    v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
    likelyBelowThresholdAVFlows = v2->_likelyBelowThresholdAVFlows;
    v2->_likelyBelowThresholdAVFlows = v11;

    v13 = objc_alloc_init(MEMORY[0x277CBEB58]);
    likelyOverThresholdAVFlows = v2->_likelyOverThresholdAVFlows;
    v2->_likelyOverThresholdAVFlows = v13;

    v15 = objc_alloc_init(MEMORY[0x277CBEB58]);
    suppressedAVFlows = v2->_suppressedAVFlows;
    v2->_suppressedAVFlows = v15;

    v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
    highCellInterfaceUseContributors = v2->_highCellInterfaceUseContributors;
    v2->_highCellInterfaceUseContributors = v17;

    v19 = objc_alloc_init(ContinuousAVFlowDetector);
    continuousAVDetector = v2->_continuousAVDetector;
    v2->_continuousAVDetector = v19;

    v21 = objc_alloc_init(StrictlyPeriodicAVFlowDetector);
    strictlyPeriodicAVDetector = v2->_strictlyPeriodicAVDetector;
    v2->_strictlyPeriodicAVDetector = v21;

    v23 = +[FlowScrutinizer sharedInstance];
    flowScrutinizer = v2->_flowScrutinizer;
    v2->_flowScrutinizer = v23;

    v25 = +[FlowRefreshScheduler sharedInstance];
    [v25 addDelegate:v2];

    [(FlowOracle *)v2 restoreDefaults];
  }

  return v2;
}

- (BOOL)flowQualfiesForAVHeuristics:(id)heuristics
{
  if (self->_avUseCasesSupported)
  {
    return [heuristics flowLastSeenAsForeground];
  }

  else
  {
    return 0;
  }
}

- (void)applyFlowHeuristics:(id)heuristics onBehalfOf:(id)of
{
  v24 = *MEMORY[0x277D85DE8];
  heuristicsCopy = heuristics;
  ofCopy = of;
  if ([(FlowOracle *)self flowQualfiesForAVHeuristics:heuristicsCopy])
  {
    v15 = 0;
    v16 = 0.0;
    v17 = @"noAVFlowDetection";
    [(ContinuousAVFlowDetector *)self->_continuousAVDetector possibleAVFlowScore:heuristicsCopy result:&v15];
    [(StrictlyPeriodicAVFlowDetector *)self->_strictlyPeriodicAVDetector possibleAVFlowScore:heuristicsCopy result:&v15];
    [heuristicsCopy setLatestClassification:v17];
    if (v15 >= 21)
    {
      v8 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109634;
        v19 = v15;
        v20 = 2112;
        v21 = v17;
        v22 = 2048;
        v23 = v16;
        _os_log_impl(&dword_23255B000, v8, OS_LOG_TYPE_DEFAULT, "FlowOracle applyFlowHeuristics score %d from %@ with tput %.6f Mbps", buf, 0x1Cu);
      }

      possibleAVFlows = [ofCopy possibleAVFlows];
      v10 = possibleAVFlows == 0;

      if (v10)
      {
        v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
        [ofCopy setPossibleAVFlows:v11];
      }

      v12 = objc_alloc_init(LikelyAVFlowDetails);
      createdBy = [heuristicsCopy createdBy];
      [(LikelyAVFlowDetails *)v12 setOwner:createdBy];

      [(LikelyAVFlowDetails *)v12 setMatchScore:v15];
      [(LikelyAVFlowDetails *)v12 setRelevantThroughput:v16];
      possibleAVFlows2 = [ofCopy possibleAVFlows];
      [possibleAVFlows2 addObject:v12];
    }
  }
}

- (void)evaluatePossibleAVFlows:(id)flows currentFlowCount:(unint64_t)count activeFlowCount:(unint64_t)flowCount
{
  v25 = *MEMORY[0x277D85DE8];
  flowsCopy = flows;
  v9 = flowsCopy;
  if (3 * flowCount + count <= self->_maxAppFlowMetricForAVDetermination)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    possibleAVFlows = [flowsCopy possibleAVFlows];
    v12 = [possibleAVFlows countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(possibleAVFlows);
          }

          v16 = *(*(&v20 + 1) + 8 * i);
          [v16 relevantThroughput];
          if (v17 <= self->_thresholdAudioVideoFlowsClassifiedIntensive)
          {
            v18 = 24;
          }

          else
          {
            v18 = 32;
          }

          [*(&self->super.isa + v18) addObject:v16];
        }

        v13 = [possibleAVFlows countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }
  }

  else
  {
    suppressedAVFlows = self->_suppressedAVFlows;
    possibleAVFlows = [flowsCopy possibleAVFlows];
    [(NSMutableSet *)suppressedAVFlows addObjectsFromArray:possibleAVFlows];
  }

  possibleAVFlows2 = [v9 possibleAVFlows];
  [possibleAVFlows2 removeAllObjects];
}

- (void)startSamplingPeriod:(id)period
{
  v33 = *MEMORY[0x277D85DE8];
  periodCopy = period;
  v4 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v4, OS_LOG_TYPE_INFO, "FlowOracle startSamplingPeriod, clear old state, start new cycle", buf, 2u);
  }

  [(NSMutableSet *)self->_accumulatedTransferOrigins removeAllObjects];
  [(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins removeAllObjects];
  [(NSMutableSet *)self->_highCellInterfaceUseContributors removeAllObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = [periodCopy originLedgers];
  v5 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v27;
    do
    {
      v8 = 0;
      do
      {
        if (*v27 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v26 + 1) + 8 * v8);
        originLedgers = [periodCopy originLedgers];
        v11 = [originLedgers objectForKeyedSubscript:v9];

        [v11 startSamplingPeriod];
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        delegates = [v11 delegates];
        v13 = [delegates countByEnumeratingWithState:&v22 objects:v31 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v23;
          do
          {
            v16 = 0;
            do
            {
              if (*v23 != v15)
              {
                objc_enumerationMutation(delegates);
              }

              v17 = *(*(&v22 + 1) + 8 * v16);
              delegates2 = [v11 delegates];
              v19 = [delegates2 objectForKeyedSubscript:v17];

              [v19 startSamplingPeriod];
              ++v16;
            }

            while (v14 != v16);
            v14 = [delegates countByEnumeratingWithState:&v22 objects:v31 count:16];
          }

          while (v14);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [obj countByEnumeratingWithState:&v26 objects:v32 count:16];
    }

    while (v6);
  }
}

- (void)logTransferContributors:(unint64_t)contributors
{
  v35 = *MEMORY[0x277D85DE8];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v4 = self->_expectedTransferOrigins;
  v5 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v25;
    v8 = &flowScrutinyLogHandle;
    do
    {
      v9 = 0;
      v23 = v6;
      do
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v24 + 1) + 8 * v9);
        if (([v10 sampledAsHighTransferSize] & 1) == 0)
        {
          [v10 setSampledAsHighTransferSize:1];
          [v10 sampleStartTime];
          if (v11 == 0.0)
          {
            [v10 setSampleStartTime:apparentTime()];
            [v10 setSampleStartedInForegroundState:{objc_msgSend(v10, "mostRecentFlowSeenAsForeground")}];
            v12 = *v8;
            if (os_log_type_enabled(*v8, OS_LOG_TYPE_INFO))
            {
              v13 = v12;
              name = [v10 name];
              sampleStartedInForegroundState = [v10 sampleStartedInForegroundState];
              [v10 sampleStartTime];
              dateStringMillisecondsFromReferenceInterval(v16);
              v17 = v7;
              contributorsCopy = contributors;
              v19 = v4;
              v21 = v20 = v8;
              *buf = 138412802;
              v29 = name;
              v30 = 1024;
              v31 = sampleStartedInForegroundState;
              v32 = 2112;
              v33 = v21;
              _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "FlowOracle logTransferContributors %@ fg %d at %@", buf, 0x1Cu);

              v8 = v20;
              v4 = v19;
              contributors = contributorsCopy;
              v7 = v17;
              v6 = v23;
            }
          }
        }

        [v10 setSampleAdditionalFlags:{objc_msgSend(v10, "sampleAdditionalFlags") | contributors}];
        ++v9;
      }

      while (v6 != v9);
      v6 = [(NSMutableSet *)v4 countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  [(NSMutableSet *)self->_accumulatedTransferOrigins unionSet:self->_expectedTransferOrigins];
}

- (void)logCoreMediaAssetDownloadContributors:(unint64_t)contributors
{
  v42 = *MEMORY[0x277D85DE8];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v30 objects:v41 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v31;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v31 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v30 + 1) + 8 * i);
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v29 = 0u;
        currentAssetDownloads = [v7 currentAssetDownloads];
        v9 = [currentAssetDownloads countByEnumeratingWithState:&v26 objects:v40 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v27;
          while (2)
          {
            for (j = 0; j != v10; ++j)
            {
              if (*v27 != v11)
              {
                objc_enumerationMutation(currentAssetDownloads);
              }

              v13 = *(*(&v26 + 1) + 8 * j);
              currentAssetDownloads2 = [v7 currentAssetDownloads];
              v15 = [currentAssetDownloads2 objectForKeyedSubscript:v13];

              if ([v15 downloadState] == 1 || objc_msgSend(v15, "downloadState") == 2 || objc_msgSend(v15, "downloadState") == 4)
              {
                if (([v7 sampledAsCoreMediaAssetDownload] & 1) == 0)
                {
                  [v7 setSampledAsCoreMediaAssetDownload:1];
                  [v7 sampleStartTime];
                  if (v16 == 0.0)
                  {
                    [v7 setSampleStartedInForegroundState:{objc_msgSend(v7, "mostRecentFlowSeenAsForeground")}];
                    [v7 setSampleStartTime:apparentTime()];
                    v17 = flowScrutinyLogHandle;
                    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
                    {
                      v18 = v17;
                      name = [v7 name];
                      sampleStartedInForegroundState = [v7 sampleStartedInForegroundState];
                      [v7 sampleStartTime];
                      v22 = dateStringMillisecondsFromReferenceInterval(v21);
                      *buf = 138412802;
                      v35 = name;
                      v36 = 1024;
                      v37 = sampleStartedInForegroundState;
                      v38 = 2112;
                      v39 = v22;
                      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_INFO, "FlowOracle logCoreMediaAssetDownloadContributors %@ fg %d at %@", buf, 0x1Cu);
                    }
                  }
                }

                [v7 setSampleAdditionalFlags:{objc_msgSend(v7, "sampleAdditionalFlags") | contributors}];

                goto LABEL_22;
              }
            }

            v10 = [currentAssetDownloads countByEnumeratingWithState:&v26 objects:v40 count:16];
            if (v10)
            {
              continue;
            }

            break;
          }
        }

LABEL_22:
      }

      v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v30 objects:v41 count:16];
    }

    while (v4);
  }

  [(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins unionSet:self->_coreMediaAssetDownloadOrigins];
}

- (void)logCellInterfaceUseContributors:(unint64_t)contributors
{
  *&v31[13] = *MEMORY[0x277D85DE8];
  if (self->_busiestCellOrigin)
  {
    cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
    hasSustainedResponsiveHighInterfaceThroughput = [cellInterfaceSampler hasSustainedResponsiveHighInterfaceThroughput];

    if (hasSustainedResponsiveHighInterfaceThroughput)
    {
      v7 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        busiestCellOrigin = self->_busiestCellOrigin;
        v9 = v7;
        name = [(FlowOriginLedger *)busiestCellOrigin name];
        v28 = 138412290;
        contributorsCopy = name;
        _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_DEBUG, "FlowOracle logCellInterfaceUseContributors inherit high interface use for %@", &v28, 0xCu);
      }

      [(NSMutableSet *)self->_highCellInterfaceUseContributors addObject:self->_busiestCellOrigin];
      if (![(FlowOriginLedger *)self->_busiestCellOrigin sampledAsHighInterfaceUse])
      {
        [(FlowOriginLedger *)self->_busiestCellOrigin setSampledAsHighInterfaceUse:1];
        [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartTime];
        if (v11 == 0.0)
        {
          [(FlowOriginLedger *)self->_busiestCellOrigin setSampleStartTime:apparentTime()];
          [(FlowOriginLedger *)self->_busiestCellOrigin setSampleStartedInForegroundState:[(FlowOriginLedger *)self->_busiestCellOrigin mostRecentFlowSeenAsForeground]];
          v12 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v13 = self->_busiestCellOrigin;
            v14 = v12;
            name2 = [(FlowOriginLedger *)v13 name];
            sampleStartedInForegroundState = [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartedInForegroundState];
            [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartTime];
            v18 = dateStringMillisecondsFromReferenceInterval(v17);
            v28 = 138412802;
            contributorsCopy = name2;
            v30 = 1024;
            *v31 = sampleStartedInForegroundState;
            v31[2] = 2112;
            *&v31[3] = v18;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "FlowOracle logCellInterfaceUseContributors %@ fg %d at %@", &v28, 0x1Cu);
          }
        }
      }

      [(FlowOriginLedger *)self->_busiestCellOrigin setSampleAdditionalFlags:[(FlowOriginLedger *)self->_busiestCellOrigin sampleAdditionalFlags]| contributors];
    }

    else if ([(NSMutableSet *)self->_highCellInterfaceUseContributors containsObject:self->_busiestCellOrigin])
    {
      [(FlowOriginLedger *)self->_busiestCellOrigin setSampleAdditionalFlags:[(FlowOriginLedger *)self->_busiestCellOrigin sampleAdditionalFlags]| contributors];
      v20 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v21 = self->_busiestCellOrigin;
        v22 = v20;
        name3 = [(FlowOriginLedger *)v21 name];
        v28 = 134218242;
        contributorsCopy = contributors;
        v30 = 2112;
        *v31 = name3;
        _os_log_impl(&dword_23255B000, v22, OS_LOG_TYPE_DEBUG, "FlowOracle logCellInterfaceUseContributors when _hasSustainedHighCellInterfaceThroughput false, mark 0x%llx in %@", &v28, 0x16u);
      }
    }

    else
    {
      v24 = flowScrutinyLogHandle;
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        v25 = self->_busiestCellOrigin;
        v26 = v24;
        name4 = [(FlowOriginLedger *)v25 name];
        v28 = 138412290;
        contributorsCopy = name4;
        _os_log_impl(&dword_23255B000, v26, OS_LOG_TYPE_DEBUG, "FlowOracle logCellInterfaceUseContributors when _hasSustainedHighCellInterfaceThroughput false, busiest not already known %@", &v28, 0xCu);
      }
    }
  }

  else
  {
    v19 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_23255B000, v19, OS_LOG_TYPE_DEFAULT, "FlowOracle logCellInterfaceUseContributors called when no busiestOrigin", &v28, 2u);
    }
  }
}

- (void)refreshState:(id)state
{
  v155 = *MEMORY[0x277D85DE8];
  stateCopy = state;
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEBUG, "FlowOracle refreshState start", buf, 2u);
  }

  [(FlowOracle *)self _clearState];
  [(FlowOracle *)self refreshTransferSizeState];
  v4 = apparentTime();
  prevStateRefreshTimestampForTputEstimates = self->_prevStateRefreshTimestampForTputEstimates;
  v6 = v4 - prevStateRefreshTimestampForTputEstimates;
  if (v4 - prevStateRefreshTimestampForTputEstimates <= 1.0)
  {
    v7 = v4 - self->_olderSateRefreshTimestampForTputEstimates;
  }

  else
  {
    self->_prevStateRefreshTimestampForTputEstimates = v4;
    self->_olderSateRefreshTimestampForTputEstimates = prevStateRefreshTimestampForTputEstimates;
    v7 = v4 - prevStateRefreshTimestampForTputEstimates;
  }

  prevStateRefreshTimestamp = self->_prevStateRefreshTimestamp;
  self->_prevStateRefreshTimestamp = v4;
  if (v7 <= 0.0)
  {
    v9 = flowScrutinyLogHandle;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      *&buf[4] = v7;
      _os_log_impl(&dword_23255B000, v9, OS_LOG_TYPE_ERROR, "FlowOracle unexpected negative value for tputEstimationInterval %f", buf, 0xCu);
    }

    v7 = 0.1;
  }

  [stateCopy updateInterfaceSamplesWithTime:v6 > 1.0 bumpSamples:v4];
  cellAudioVideoSamples = [stateCopy cellAudioVideoSamples];
  v93 = [cellAudioVideoSamples count];

  [stateCopy updateAudioVideoSamplesWithTime:v6 > 1.0 bumpSamples:v4];
  [stateCopy updateTransferSizeFlowsWithTime:v4];
  v144 = 0u;
  v145 = 0u;
  v142 = 0u;
  v143 = 0u;
  obj = [stateCopy originLedgers];
  v96 = [obj countByEnumeratingWithState:&v142 objects:v154 count:16];
  if (v96)
  {
    v11 = v4 - prevStateRefreshTimestamp;
    v95 = *v143;
    do
    {
      v12 = 0;
      do
      {
        if (*v143 != v95)
        {
          v13 = v12;
          objc_enumerationMutation(obj);
          v12 = v13;
        }

        v94 = v12;
        v14 = *(*(&v142 + 1) + 8 * v12);
        originLedgers = [stateCopy originLedgers];
        v16 = [originLedgers objectForKeyedSubscript:v14];

        totalObservedCellRxBytes = [v16 totalObservedCellRxBytes];
        totalObservedCellTxBytes = [v16 totalObservedCellTxBytes];
        totalObservedWiFiRxBytes = [v16 totalObservedWiFiRxBytes];
        totalObservedWiFiTxBytes = [v16 totalObservedWiFiTxBytes];
        if (v6 <= 1.0)
        {
          prevPollIntervalCellRxBytes = [v16 prevPollIntervalCellRxBytes];
          prevPollIntervalCellTxBytes = [v16 prevPollIntervalCellTxBytes];
          prevPollIntervalWiFiRxBytes = [v16 prevPollIntervalWiFiRxBytes];
          prevPollIntervalWiFiTxBytes = [v16 prevPollIntervalWiFiTxBytes];
        }

        else
        {
          prevPollIntervalCellRxBytes = [v16 pollIntervalCellRxBytes];
          prevPollIntervalCellTxBytes = [v16 pollIntervalCellTxBytes];
          prevPollIntervalWiFiRxBytes = [v16 pollIntervalWiFiRxBytes];
          prevPollIntervalWiFiTxBytes = [v16 pollIntervalWiFiTxBytes];
          [v16 setPrevPrevPollCellRxBytes:{objc_msgSend(v16, "prevPollCellRxBytes")}];
          [v16 setPrevPrevPollCellTxBytes:{objc_msgSend(v16, "prevPollCellTxBytes")}];
          [v16 setPrevPrevPollWiFiRxBytes:{objc_msgSend(v16, "prevPollWiFiRxBytes")}];
          [v16 setPrevPrevPollWiFiTxBytes:{objc_msgSend(v16, "prevPollWiFiTxBytes")}];
          [v16 setPrevPollCellRxBytes:{objc_msgSend(v16, "totalObservedCellRxBytes")}];
          [v16 setPrevPollCellTxBytes:{objc_msgSend(v16, "totalObservedCellTxBytes")}];
          [v16 setPrevPollWiFiRxBytes:{objc_msgSend(v16, "totalObservedWiFiRxBytes")}];
          [v16 setPrevPollWiFiTxBytes:{objc_msgSend(v16, "totalObservedWiFiTxBytes")}];
        }

        v21 = mbpsThroughput(prevPollIntervalCellRxBytes + prevPollIntervalCellTxBytes, v7);
        v22 = mbpsThroughput(prevPollIntervalWiFiRxBytes + prevPollIntervalWiFiTxBytes, v7);
        v140 = 0u;
        v141 = 0u;
        v138 = 0u;
        v139 = 0u;
        currentFlows = [v16 currentFlows];
        v24 = [currentFlows countByEnumeratingWithState:&v138 objects:v153 count:16];
        if (v24)
        {
          v25 = 0;
          v114 = 0;
          v26 = *v139;
          do
          {
            for (i = 0; i != v24; ++i)
            {
              if (*v139 != v26)
              {
                objc_enumerationMutation(currentFlows);
              }

              v28 = *(*(&v138 + 1) + 8 * i);
              currentFlows2 = [v16 currentFlows];
              v30 = [currentFlows2 objectForKeyedSubscript:v28];

              [(FlowOracle *)self applyFlowHeuristics:v30 onBehalfOf:v16];
              LODWORD(currentFlows2) = [v30 lastSampleWasIdle];

              v25 += currentFlows2 ^ 1;
            }

            v114 += v24;
            v24 = [currentFlows countByEnumeratingWithState:&v138 objects:v153 count:16];
          }

          while (v24);

          if (v25)
          {
            [v16 sampleTotalBusyTime];
            [v16 setSampleTotalBusyTime:v11 + v31];
          }
        }

        else
        {

          v114 = 0;
          v25 = 0;
        }

        selfCopy2 = self;
        if (v21 > self->_busiestCellOriginRecentThroughput)
        {
          v33 = flowScrutinyLogHandle;
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEBUG))
          {
            busiestCellOriginRecentThroughput = self->_busiestCellOriginRecentThroughput;
            busiestCellOrigin = self->_busiestCellOrigin;
            if (busiestCellOrigin)
            {
              name = [(FlowOriginLedger *)self->_busiestCellOrigin name];
              v36 = name;
            }

            else
            {
              v36 = @"<none>";
            }

            v37 = busiestCellOrigin == 0;
            name2 = [v16 name];
            *buf = 134218754;
            *&buf[4] = busiestCellOriginRecentThroughput;
            *&buf[12] = 2112;
            *&buf[14] = v36;
            *&buf[22] = 2048;
            v150 = v21;
            v151 = 2112;
            v152 = name2;
            _os_log_impl(&dword_23255B000, v33, OS_LOG_TYPE_DEBUG, "FlowOracle recent cell tput was %.3f for %@, change to %.3f %@", buf, 0x2Au);

            if (!v37)
            {
            }
          }

          self->_busiestCellOriginRecentThroughput = v21;
          objc_storeStrong(&self->_busiestCellOrigin, v16);
          selfCopy2 = self;
        }

        if (v22 > selfCopy2->_busiestWiFiOriginRecentThroughput)
        {
          v39 = flowScrutinyLogHandle;
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEBUG))
          {
            busiestWiFiOriginRecentThroughput = selfCopy2->_busiestWiFiOriginRecentThroughput;
            busiestWiFiOrigin = selfCopy2->_busiestWiFiOrigin;
            if (busiestWiFiOrigin)
            {
              name3 = [(FlowOriginLedger *)selfCopy2->_busiestWiFiOrigin name];
              v42 = name3;
            }

            else
            {
              v42 = @"<none>";
            }

            v43 = busiestWiFiOrigin == 0;
            name4 = [v16 name];
            *buf = 134218754;
            *&buf[4] = busiestWiFiOriginRecentThroughput;
            *&buf[12] = 2112;
            *&buf[14] = v42;
            *&buf[22] = 2048;
            v150 = v22;
            v151 = 2112;
            v152 = name4;
            _os_log_impl(&dword_23255B000, v39, OS_LOG_TYPE_DEBUG, "FlowOracle recent wifi tput was %.3f for %@, change to %.3f %@", buf, 0x2Au);

            if (!v43)
            {
            }
          }

          self->_busiestWiFiOriginRecentThroughput = v22;
          objc_storeStrong(&self->_busiestWiFiOrigin, v16);
        }

        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        delegates = [v16 delegates];
        v101 = [delegates countByEnumeratingWithState:&v134 objects:v148 count:16];
        if (v101)
        {
          v100 = *v135;
          do
          {
            v45 = 0;
            do
            {
              if (*v135 != v100)
              {
                v46 = v45;
                objc_enumerationMutation(delegates);
                v45 = v46;
              }

              v106 = v45;
              v113 = *(*(&v134 + 1) + 8 * v45);
              delegates2 = [v16 delegates];
              v48 = [delegates2 objectForKeyedSubscript:v113];

              currentAssetDownloads = [v48 currentAssetDownloads];
              if (currentAssetDownloads)
              {
                currentAssetDownloads2 = [v48 currentAssetDownloads];
                v51 = [currentAssetDownloads2 count] == 0;

                if (!v51)
                {
                  v132 = 0u;
                  v133 = 0u;
                  v130 = 0u;
                  v131 = 0u;
                  currentAssetDownloads3 = [v48 currentAssetDownloads];
                  v53 = [currentAssetDownloads3 countByEnumeratingWithState:&v130 objects:v147 count:16];
                  if (v53)
                  {
                    v54 = *v131;
                    while (2)
                    {
                      for (j = 0; j != v53; ++j)
                      {
                        if (*v131 != v54)
                        {
                          objc_enumerationMutation(currentAssetDownloads3);
                        }

                        v56 = *(*(&v130 + 1) + 8 * j);
                        currentAssetDownloads4 = [v48 currentAssetDownloads];
                        v58 = [currentAssetDownloads4 objectForKeyedSubscript:v56];

                        if ([v58 downloadState] != 3)
                        {
                          if ([v58 downloadState] == 4)
                          {
                            [v58 quarantineStartTime];
                            if (v4 - v59 > self->_coreMediaAssetDownloadThresholdFailureQuarantineTime)
                            {
                              [v58 setDownloadState:1];
                            }
                          }

                          [(NSMutableSet *)self->_coreMediaAssetDownloadOrigins addObject:v48];

                          goto LABEL_64;
                        }
                      }

                      v53 = [currentAssetDownloads3 countByEnumeratingWithState:&v130 objects:v147 count:16];
                      if (v53)
                      {
                        continue;
                      }

                      break;
                    }
                  }

LABEL_64:
                }
              }

              totalObservedCellRxBytes2 = [v48 totalObservedCellRxBytes];
              totalObservedCellTxBytes2 = [v48 totalObservedCellTxBytes];
              totalObservedWiFiRxBytes2 = [v48 totalObservedWiFiRxBytes];
              totalObservedWiFiTxBytes2 = [v48 totalObservedWiFiTxBytes];
              if (v6 <= 1.0)
              {
                prevPollIntervalCellRxBytes2 = [v48 prevPollIntervalCellRxBytes];
                prevPollIntervalCellTxBytes2 = [v48 prevPollIntervalCellTxBytes];
                prevPollIntervalWiFiRxBytes2 = [v48 prevPollIntervalWiFiRxBytes];
                prevPollIntervalWiFiTxBytes2 = [v48 prevPollIntervalWiFiTxBytes];
              }

              else
              {
                prevPollIntervalCellRxBytes2 = [v48 pollIntervalCellRxBytes];
                prevPollIntervalCellTxBytes2 = [v48 pollIntervalCellTxBytes];
                prevPollIntervalWiFiRxBytes2 = [v48 pollIntervalWiFiRxBytes];
                prevPollIntervalWiFiTxBytes2 = [v48 pollIntervalWiFiTxBytes];
                [v48 setPrevPrevPollCellRxBytes:{objc_msgSend(v48, "prevPollCellRxBytes")}];
                [v48 setPrevPrevPollCellTxBytes:{objc_msgSend(v48, "prevPollCellTxBytes")}];
                [v48 setPrevPrevPollWiFiRxBytes:{objc_msgSend(v48, "prevPollWiFiRxBytes")}];
                [v48 setPrevPrevPollWiFiTxBytes:{objc_msgSend(v48, "prevPollWiFiTxBytes")}];
                [v48 setPrevPollCellRxBytes:{objc_msgSend(v48, "totalObservedCellRxBytes")}];
                [v48 setPrevPollCellTxBytes:{objc_msgSend(v48, "totalObservedCellTxBytes")}];
                [v48 setPrevPollWiFiRxBytes:{objc_msgSend(v48, "totalObservedWiFiRxBytes")}];
                [v48 setPrevPollWiFiTxBytes:{objc_msgSend(v48, "totalObservedWiFiTxBytes")}];
              }

              v112 = mbpsThroughput(prevPollIntervalCellRxBytes2 + prevPollIntervalCellTxBytes2, v7);
              v111 = mbpsThroughput(prevPollIntervalWiFiRxBytes2 + prevPollIntervalWiFiTxBytes2, v7);
              currentFlows3 = [v48 currentFlows];
              v65 = [currentFlows3 count] == 0;

              if (!v65)
              {
                [v48 setLastUsed:v4];
              }

              v128 = 0u;
              v129 = 0u;
              v126 = 0u;
              v127 = 0u;
              currentFlows4 = [v48 currentFlows];
              v67 = [currentFlows4 countByEnumeratingWithState:&v126 objects:v146 count:16];
              if (v67)
              {
                v68 = 0;
                v69 = *v127;
                do
                {
                  for (k = 0; k != v67; ++k)
                  {
                    if (*v127 != v69)
                    {
                      objc_enumerationMutation(currentFlows4);
                    }

                    v71 = *(*(&v126 + 1) + 8 * k);
                    currentFlows5 = [v48 currentFlows];
                    v73 = [currentFlows5 objectForKeyedSubscript:v71];

                    [(FlowOracle *)self applyFlowHeuristics:v73 onBehalfOf:v16];
                    LODWORD(currentFlows5) = [v73 lastSampleWasIdle];

                    v74 = currentFlows5 ^ 1;
                    v25 += v74;
                    v68 += v74;
                  }

                  v114 += v67;
                  v67 = [currentFlows4 countByEnumeratingWithState:&v126 objects:v146 count:16];
                }

                while (v67);

                if (v68)
                {
                  [v48 sampleTotalBusyTime];
                  [v48 setSampleTotalBusyTime:v11 + v75];
                }
              }

              else
              {
              }

              selfCopy4 = self;
              if (v112 > self->_busiestCellOriginRecentThroughput)
              {
                self->_busiestCellOriginRecentThroughput = v112;
                objc_storeStrong(&self->_busiestCellOrigin, v48);
                selfCopy4 = self;
              }

              if (v111 > selfCopy4->_busiestWiFiOriginRecentThroughput)
              {
                selfCopy4->_busiestWiFiOriginRecentThroughput = v111;
                objc_storeStrong(&selfCopy4->_busiestWiFiOrigin, v48);
              }

              if ([v113 containsString:@"nsurlsessiond"])
              {
                v77.f64[0] = v112;
                v77.f64[1] = v111;
                *&self->_backgroundCellTransferRecentThroughput = vaddq_f64(v77, *&self->_backgroundCellTransferRecentThroughput);
              }

              totalObservedCellRxBytes += totalObservedCellRxBytes2;
              totalObservedCellTxBytes += totalObservedCellTxBytes2;
              totalObservedWiFiRxBytes += totalObservedWiFiRxBytes2;
              totalObservedWiFiTxBytes += totalObservedWiFiTxBytes2;
              v45 = v106 + 1;
            }

            while (v106 + 1 != v101);
            v101 = [delegates countByEnumeratingWithState:&v134 objects:v148 count:16];
          }

          while (v101);
        }

        if (v114)
        {
          [v16 setLastUsed:v4];
        }

        [v16 setTotalWithDelegatesCellRxBytes:totalObservedCellRxBytes];
        [v16 setTotalWithDelegatesCellTxBytes:totalObservedCellTxBytes];
        [v16 setTotalWithDelegatesWiFiRxBytes:totalObservedWiFiRxBytes];
        [v16 setTotalWithDelegatesWiFiTxBytes:totalObservedWiFiTxBytes];
        possibleAVFlows = [v16 possibleAVFlows];
        v79 = [possibleAVFlows count] == 0;

        if (!v79)
        {
          [(FlowOracle *)self evaluatePossibleAVFlows:v16 currentFlowCount:v114 activeFlowCount:v25];
        }

        v12 = v94 + 1;
      }

      while (v94 + 1 != v96);
      v96 = [obj countByEnumeratingWithState:&v142 objects:v154 count:16];
    }

    while (v96);
  }

  cellInterfaceSampler = [stateCopy cellInterfaceSampler];
  hasSustainedResponsiveHighInterfaceThroughput = [cellInterfaceSampler hasSustainedResponsiveHighInterfaceThroughput];

  if (hasSustainedResponsiveHighInterfaceThroughput)
  {
    if (self->_busiestCellOrigin)
    {
      [(NSMutableSet *)self->_highCellInterfaceUseContributors addObject:?];
      [(FlowOriginLedger *)self->_busiestCellOrigin setSampledAsHighInterfaceUse:1];
      [(FlowOriginLedger *)self->_busiestCellOrigin sampleStartTime];
      if (v82 == 0.0)
      {
        [(FlowOriginLedger *)self->_busiestCellOrigin setSampleStartTime:apparentTime()];
      }

      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_DEBUG))
      {
        name5 = [(FlowOriginLedger *)self->_busiestCellOrigin name];
        *buf = 138412290;
        *&buf[4] = name5;
        _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_DEBUG, "FlowOracle refreshState set high cell interface use for %@", buf, 0xCu);
      }
    }

    else
    {
      v83 = flowScrutinyLogHandle;
      if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(&dword_23255B000, v83, OS_LOG_TYPE_ERROR, "FlowOracle refreshState _busiestOrigin unexpectedly nil when high cell interface throughput", buf, 2u);
      }
    }
  }

  cellAudioVideoSamples2 = [stateCopy cellAudioVideoSamples];
  v86 = [cellAudioVideoSamples2 count];

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v150 = 0.0;
  v122 = 0;
  v123 = &v122;
  v124 = 0x2020000000;
  v125 = 0;
  v118 = 0;
  v119 = &v118;
  v120 = 0x2020000000;
  v121 = 0;
  cellAudioVideoSamples3 = [stateCopy cellAudioVideoSamples];
  v117[0] = MEMORY[0x277D85DD0];
  v117[1] = 3221225472;
  v117[2] = __27__FlowOracle_refreshState___block_invoke;
  v117[3] = &unk_27898FD28;
  v117[4] = self;
  v117[5] = &v118;
  v117[6] = buf;
  v117[7] = &v122;
  [cellAudioVideoSamples3 enumerateObjectsUsingBlock:v117];

  v88 = v119[3];
  if (v88 > 0.0)
  {
    self->_averageCellAudioVideoTrafficClassRxThroughput = mbpsThroughput(*(*&buf[8] + 24), v88);
    self->_averageCellAudioVideoTrafficClassTxThroughput = mbpsThroughput(v123[3], v119[3]);
  }

  if (!v93 && v86)
  {
    v89 = 1;
LABEL_114:
    self->_cellNonCoreMediaAudioVideoOperation = v89;
    goto LABEL_115;
  }

  if (v93 && !v86)
  {
    v89 = 2;
    goto LABEL_114;
  }

  if (v93 && v86)
  {
    v89 = 3;
    goto LABEL_114;
  }

  self->_cellNonCoreMediaAudioVideoOperation = 0;
LABEL_115:
  v90 = flowScrutinyLogHandle;
  if (os_log_type_enabled(v90, OS_LOG_TYPE_DEBUG))
  {
    *v116 = 0;
    _os_log_impl(&dword_23255B000, v90, OS_LOG_TYPE_DEBUG, "FlowOracle refreshState complete", v116, 2u);
  }

  _Block_object_dispose(&v118, 8);
  _Block_object_dispose(&v122, 8);
  _Block_object_dispose(buf, 8);
}

void __27__FlowOracle_refreshState___block_invoke(void *a1, void *a2)
{
  v6 = a2;
  v3 = [v6 rxBytes];
  [v6 elapsedTime];
  if (mbpsThroughput(v3, v4) >= *(a1[4] + 160))
  {
    [v6 elapsedTime];
    *(*(a1[5] + 8) + 24) = v5 + *(*(a1[5] + 8) + 24);
    *(*(a1[6] + 8) + 24) += [v6 rxBytes];
    *(*(a1[7] + 8) + 24) += [v6 txBytes];
  }
}

- (void)didPollFlowsAt:(double)at periodic:(BOOL)periodic
{
  periodicCopy = periodic;
  v9 = *MEMORY[0x277D85DE8];
  v7 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 67109120;
    v8[1] = periodicCopy;
    _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEBUG, "FlowOracle didPollFlowsAt: periodic is %d", v8, 8u);
  }

  setApparentTime(at);
  if (periodicCopy)
  {
    [(FlowOracle *)self refreshState:self->_flowScrutinizer];
  }
}

- (void)markTransferSizeFlowsAsActive
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v10 = [transferSizeFlows2 objectForKeyedSubscript:v8];

        if ([v10 expectedTransferState] == 3)
        {
          [v10 setExpectedTransferState:4];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [transferSizeFlows countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (void)markTransferSizeFlowsAsInactive
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  transferSizeFlows = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
  v4 = [transferSizeFlows countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
    do
    {
      v7 = 0;
      do
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(transferSizeFlows);
        }

        v8 = *(*(&v11 + 1) + 8 * v7);
        transferSizeFlows2 = [(FlowScrutinizer *)self->_flowScrutinizer transferSizeFlows];
        v10 = [transferSizeFlows2 objectForKeyedSubscript:v8];

        if ([v10 expectedTransferState] == 4)
        {
          [v10 setExpectedTransferState:5];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [transferSizeFlows countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v5);
  }
}

- (BOOL)hasSustainedHighCellInterfaceRxThroughput
{
  cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  hasSustainedHighInterfaceRxThroughput = [cellInterfaceSampler hasSustainedHighInterfaceRxThroughput];

  return hasSustainedHighInterfaceRxThroughput;
}

- (BOOL)hasSustainedHighCellInterfaceTxThroughput
{
  cellInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer cellInterfaceSampler];
  hasSustainedHighInterfaceTxThroughput = [cellInterfaceSampler hasSustainedHighInterfaceTxThroughput];

  return hasSustainedHighInterfaceTxThroughput;
}

- (BOOL)hasSustainedConservativeHighWiFiInterfaceThroughput
{
  wifiInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  hasSustainedConservativeHighInterfaceThroughput = [wifiInterfaceSampler hasSustainedConservativeHighInterfaceThroughput];

  return hasSustainedConservativeHighInterfaceThroughput;
}

- (BOOL)hasSustainedResponsiveHighWiFiInterfaceThroughput
{
  wifiInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  hasSustainedResponsiveHighInterfaceThroughput = [wifiInterfaceSampler hasSustainedResponsiveHighInterfaceThroughput];

  return hasSustainedResponsiveHighInterfaceThroughput;
}

- (BOOL)hasSustainedHighWiFiInterfaceRxThroughput
{
  wifiInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  hasSustainedHighInterfaceRxThroughput = [wifiInterfaceSampler hasSustainedHighInterfaceRxThroughput];

  return hasSustainedHighInterfaceRxThroughput;
}

- (BOOL)hasSustainedHighWiFiInterfaceTxThroughput
{
  wifiInterfaceSampler = [(FlowScrutinizer *)self->_flowScrutinizer wifiInterfaceSampler];
  hasSustainedHighInterfaceTxThroughput = [wifiInterfaceSampler hasSustainedHighInterfaceTxThroughput];

  return hasSustainedHighInterfaceTxThroughput;
}

- (BOOL)hadZeroCellInterfaceTrafficForLast:(double)last
{
  [(FlowScrutinizer *)self->_flowScrutinizer lastCellInterfaceTrafficTimestamp];
  if (v5 == 0.0)
  {
    return 0;
  }

  v6 = apparentTime();
  [(FlowScrutinizer *)self->_flowScrutinizer lastCellInterfaceTrafficTimestamp];
  return v6 - v7 > last;
}

- (BOOL)hadZeroWiFiInterfaceTrafficForLast:(double)last
{
  [(FlowScrutinizer *)self->_flowScrutinizer lastWiFiInterfaceTrafficTimestamp];
  if (v5 == 0.0)
  {
    return 0;
  }

  v6 = apparentTime();
  [(FlowScrutinizer *)self->_flowScrutinizer lastWiFiInterfaceTrafficTimestamp];
  return v6 - v7 > last;
}

- (id)getState:(BOOL)state
{
  stateCopy = state;
  v103 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v70 = objc_alloc(MEMORY[0x277CCACA8]);
  v69 = [(NSMutableSet *)self->_likelyBelowThresholdAVFlows count];
  v68 = [(NSMutableSet *)self->_likelyOverThresholdAVFlows count];
  v67 = [(NSMutableSet *)self->_suppressedAVFlows count];
  v5 = [(NSMutableSet *)self->_expectedTransferOrigins count];
  numLowerThresholdTransferSizes = [(FlowOracle *)self numLowerThresholdTransferSizes];
  numUpperThresholdTransferSizes = [(FlowOracle *)self numUpperThresholdTransferSizes];
  numActiveTransferSizes = [(FlowOracle *)self numActiveTransferSizes];
  [(FlowOracle *)self transferSizeRelatedRecentCellThroughput];
  v10 = v9;
  [(FlowOracle *)self transferSizeRelatedRecentWiFiThroughput];
  v12 = v11;
  numActiveCoreMediaAssetDownloads = [(FlowOracle *)self numActiveCoreMediaAssetDownloads];
  numCandidateCoreMediaAssetDownloads = [(FlowOracle *)self numCandidateCoreMediaAssetDownloads];
  v15 = [(NSMutableSet *)self->_coreMediaAssetDownloadOrigins count];
  [(FlowOracle *)self coreMediaAssetDownloadRelatedRecentThroughput];
  v17 = [v70 initWithFormat:@"FlowOracle state: AV-flows  below %d above %d suppressed %d large-transfer-contributors %d num-lower %zu num-higher %zu num-active %zu cell-xfer-tput %0.6f  wifi-xfer-tput %0.6f asset-dl-active %zu dl-candidate %zu downloaders %d dl-tput %0.6f num-cloaked %zu", v69, v68, v67, v5, numLowerThresholdTransferSizes, numUpperThresholdTransferSizes, numActiveTransferSizes, v10, v12, numActiveCoreMediaAssetDownloads, numCandidateCoreMediaAssetDownloads, v15, v16, -[FlowOracle numCloakedTransferSizes](self, "numCloakedTransferSizes")];
  [v4 addObject:v17];
  if (stateCopy)
  {
    selfCopy2 = self;
    if ([(NSMutableSet *)self->_likelyBelowThresholdAVFlows count])
    {
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v19 = self->_likelyBelowThresholdAVFlows;
      v20 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v93 objects:v102 count:16];
      if (v20)
      {
        v21 = v20;
        v22 = *v94;
        do
        {
          v23 = 0;
          v24 = v17;
          do
          {
            if (*v94 != v22)
            {
              objc_enumerationMutation(v19);
            }

            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       LikelyBelowThreshold:   %@", *(*(&v93 + 1) + 8 * v23)];

            [v4 addObject:v17];
            ++v23;
            v24 = v17;
          }

          while (v21 != v23);
          v21 = [(NSMutableSet *)v19 countByEnumeratingWithState:&v93 objects:v102 count:16];
        }

        while (v21);
      }
    }

    if ([(NSMutableSet *)selfCopy2->_likelyOverThresholdAVFlows count])
    {
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v25 = selfCopy2->_likelyOverThresholdAVFlows;
      v26 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v89 objects:v101 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v90;
        do
        {
          v29 = 0;
          v30 = v17;
          do
          {
            if (*v90 != v28)
            {
              objc_enumerationMutation(v25);
            }

            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       LikelyOverThreshold:   %@", *(*(&v89 + 1) + 8 * v29)];

            [v4 addObject:v17];
            ++v29;
            v30 = v17;
          }

          while (v27 != v29);
          v27 = [(NSMutableSet *)v25 countByEnumeratingWithState:&v89 objects:v101 count:16];
        }

        while (v27);
      }
    }

    if ([(NSMutableSet *)selfCopy2->_suppressedAVFlows count])
    {
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v31 = selfCopy2->_suppressedAVFlows;
      v32 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v85 objects:v100 count:16];
      if (v32)
      {
        v33 = v32;
        v34 = *v86;
        do
        {
          v35 = 0;
          v36 = v17;
          do
          {
            if (*v86 != v34)
            {
              objc_enumerationMutation(v31);
            }

            v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       Suppressed (xs flows): %@", *(*(&v85 + 1) + 8 * v35)];

            [v4 addObject:v17];
            ++v35;
            v36 = v17;
          }

          while (v33 != v35);
          v33 = [(NSMutableSet *)v31 countByEnumeratingWithState:&v85 objects:v100 count:16];
        }

        while (v33);
      }
    }
  }

  else
  {
    selfCopy2 = self;
  }

  v71 = selfCopy2;
  if ([(NSMutableSet *)selfCopy2->_accumulatedTransferOrigins count])
  {
    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v37 = selfCopy2->_accumulatedTransferOrigins;
    v38 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v81 objects:v99 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v82;
      do
      {
        v41 = 0;
        v42 = v17;
        do
        {
          if (*v82 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v43 = *(*(&v81 + 1) + 8 * v41);
          v44 = objc_alloc(MEMORY[0x277CCACA8]);
          briefDescription = [v43 briefDescription];
          v17 = [v44 initWithFormat:@"       Accumulated transfer origin:   %@", briefDescription];

          [v4 addObject:v17];
          ++v41;
          v42 = v17;
        }

        while (v39 != v41);
        v39 = [(NSMutableSet *)v37 countByEnumeratingWithState:&v81 objects:v99 count:16];
      }

      while (v39);
    }

    selfCopy2 = v71;
  }

  if ([(NSMutableSet *)selfCopy2->_accumulatedCoreMediaAssetDownloadOrigins count])
  {
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v46 = selfCopy2->_accumulatedCoreMediaAssetDownloadOrigins;
    v47 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v77 objects:v98 count:16];
    if (v47)
    {
      v48 = v47;
      v49 = *v78;
      do
      {
        v50 = 0;
        v51 = v17;
        do
        {
          if (*v78 != v49)
          {
            objc_enumerationMutation(v46);
          }

          v52 = *(*(&v77 + 1) + 8 * v50);
          v53 = objc_alloc(MEMORY[0x277CCACA8]);
          briefDescription2 = [v52 briefDescription];
          v17 = [v53 initWithFormat:@"       Accumulated download origin:   %@", briefDescription2];

          [v4 addObject:v17];
          ++v50;
          v51 = v17;
        }

        while (v48 != v50);
        v48 = [(NSMutableSet *)v46 countByEnumeratingWithState:&v77 objects:v98 count:16];
      }

      while (v48);
    }

    selfCopy2 = v71;
  }

  if ([(NSMutableSet *)selfCopy2->_highCellInterfaceUseContributors count])
  {
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v55 = selfCopy2->_highCellInterfaceUseContributors;
    v56 = [(NSMutableSet *)v55 countByEnumeratingWithState:&v73 objects:v97 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = *v74;
      do
      {
        v59 = 0;
        v60 = v17;
        do
        {
          if (*v74 != v58)
          {
            objc_enumerationMutation(v55);
          }

          v61 = *(*(&v73 + 1) + 8 * v59);
          v62 = objc_alloc(MEMORY[0x277CCACA8]);
          briefDescription3 = [v61 briefDescription];
          v17 = [v62 initWithFormat:@"       High interface use origin:     %@", briefDescription3];

          [v4 addObject:v17];
          ++v59;
          v60 = v17;
        }

        while (v57 != v59);
        v57 = [(NSMutableSet *)v55 countByEnumeratingWithState:&v73 objects:v97 count:16];
      }

      while (v57);
    }

    selfCopy2 = v71;
  }

  if (stateCopy)
  {
    v64 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FlowOracle configuration: max AV thrshld %2.3f Mbps", *&selfCopy2->_thresholdAudioVideoFlowsClassifiedIntensive];

    [v4 addObject:v64];
    v17 = v64;
  }

  v65 = [(StrictlyPeriodicAVFlowDetector *)selfCopy2->_strictlyPeriodicAVDetector getState:stateCopy];
  [v4 addObjectsFromArray:v65];

  return v4;
}

- (int)activeLimitedThroughputAudioVideoTrafficForegroundFlowScore
{
  if ([(NSMutableSet *)self->_likelyBelowThresholdAVFlows count]!= 1 || [(NSMutableSet *)self->_likelyOverThresholdAVFlows count])
  {
    return 0;
  }

  anyObject = [(NSMutableSet *)self->_likelyBelowThresholdAVFlows anyObject];
  matchScore = [anyObject matchScore];

  return matchScore;
}

- (int)activeHighThroughputAudioVideoTrafficForegroundFlowScore
{
  if ([(NSMutableSet *)self->_likelyOverThresholdAVFlows count]!= 1 || [(NSMutableSet *)self->_likelyBelowThresholdAVFlows count])
  {
    return 0;
  }

  anyObject = [(NSMutableSet *)self->_likelyOverThresholdAVFlows anyObject];
  matchScore = [anyObject matchScore];

  return matchScore;
}

- (void)markCoreMediaAssetDownloadsAsActive
{
  v26 = *MEMORY[0x277D85DE8];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v2 = [(NSMutableSet *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v21;
    do
    {
      v5 = 0;
      do
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v20 + 1) + 8 * v5);
        v16 = 0u;
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        currentAssetDownloads = [v6 currentAssetDownloads];
        v8 = [currentAssetDownloads countByEnumeratingWithState:&v16 objects:v24 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v17;
          do
          {
            v11 = 0;
            do
            {
              if (*v17 != v10)
              {
                objc_enumerationMutation(currentAssetDownloads);
              }

              v12 = *(*(&v16 + 1) + 8 * v11);
              currentAssetDownloads2 = [v6 currentAssetDownloads];
              v14 = [currentAssetDownloads2 objectForKeyedSubscript:v12];

              if ([v14 downloadState] != 4)
              {
                [v14 setDownloadState:2];
                [v14 setQuarantineStartTime:0.0];
              }

              ++v11;
            }

            while (v9 != v11);
            v9 = [currentAssetDownloads countByEnumeratingWithState:&v16 objects:v24 count:16];
          }

          while (v9);
        }

        ++v5;
      }

      while (v5 != v3);
      v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }
}

- (void)markCoreMediaAssetDownloadsAsInactiveAt:(double)at
{
  v28 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = self->_coreMediaAssetDownloadOrigins;
  v4 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v23;
    do
    {
      v7 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v22 + 1) + 8 * v7);
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        currentAssetDownloads = [v8 currentAssetDownloads];
        v10 = [currentAssetDownloads countByEnumeratingWithState:&v18 objects:v26 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v19;
          do
          {
            v13 = 0;
            do
            {
              if (*v19 != v12)
              {
                objc_enumerationMutation(currentAssetDownloads);
              }

              v14 = *(*(&v18 + 1) + 8 * v13);
              currentAssetDownloads2 = [v8 currentAssetDownloads];
              v16 = [currentAssetDownloads2 objectForKeyedSubscript:v14];

              if ([v16 downloadState] != 4)
              {
                [v16 setDownloadState:4];
                [v16 setQuarantineStartTime:at];
                [v8 setSampledCoreMediaAssetDownloadInactive:1];
              }

              ++v13;
            }

            while (v11 != v13);
            v11 = [currentAssetDownloads countByEnumeratingWithState:&v18 objects:v26 count:16];
          }

          while (v11);
        }

        ++v7;
      }

      while (v7 != v5);
      v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v5);
  }
}

- (NSSet)transferContributors
{
  p_accumulatedTransferOrigins = &self->_accumulatedTransferOrigins;
  if (![(NSMutableSet *)self->_accumulatedTransferOrigins count])
  {
    expectedTransferOrigins = self->_expectedTransferOrigins;
    p_expectedTransferOrigins = &self->_expectedTransferOrigins;
    v6 = [(NSMutableSet *)expectedTransferOrigins count];
    if (!v6)
    {
      goto LABEL_5;
    }

    p_accumulatedTransferOrigins = p_expectedTransferOrigins;
  }

  v6 = [MEMORY[0x277CBEB98] setWithSet:*p_accumulatedTransferOrigins];
LABEL_5:

  return v6;
}

- (NSSet)coreMediaAssetDownloadContributors
{
  v3 = [(NSMutableSet *)self->_accumulatedCoreMediaAssetDownloadOrigins count];
  if (v3)
  {
    v3 = [MEMORY[0x277CBEB98] setWithSet:self->_accumulatedCoreMediaAssetDownloadOrigins];
  }

  return v3;
}

- (void)restoreDefaults
{
  v3 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_23255B000, v3, OS_LOG_TYPE_DEFAULT, "FlowOracle restore configuration defaults", v4, 2u);
  }

  self->_thresholdAudioVideoFlowsClassifiedIntensive = 4.0;
  self->_maxAppFlowMetricForAVDetermination = 40;
  *&self->_coreMediaAssetDownloadThresholdFailureQuarantineTime = xmmword_232817090;
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
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "FlowOracle handle new configuration parameters %{public}@", &v8, 0xCu);
  }

  [configurationCopy extractKey:@"ThresholdAVFlowsClassifiedIntensive" toDouble:&self->_thresholdAudioVideoFlowsClassifiedIntensive defaultTo:4.0];
  [configurationCopy extractKey:@"MinNonCoreMediaThroughputNonIdle" toDouble:&self->_minThroughputForNonIdleNonCoreMedia defaultTo:0.1];
  [configurationCopy extractKey:@"MaxAppFlowMetricForAVDetermination" toUint64:&self->_maxAppFlowMetricForAVDetermination defaultTo:40];
  [configurationCopy extractKey:@"AssetDownloadFailedThresholdQuarantineTime" toDouble:&self->_coreMediaAssetDownloadThresholdFailureQuarantineTime defaultTo:600.0];
  [configurationCopy extractKey:@"AVUseCasesSupported" toBool:&self->_avUseCasesSupported defaultTo:0];
  [(AVFlowDetector *)self->_continuousAVDetector setConfiguration:configurationCopy];
  [(StrictlyPeriodicAVFlowDetector *)self->_strictlyPeriodicAVDetector setConfiguration:configurationCopy];
  v6 = [configurationCopy objectForKey:@"restoreDefaults"];
  if (v6)
  {
    [(FlowOracle *)self restoreDefaults];
  }

  return 0;
}

@end