@interface LargeTransferAssessor
- (BOOL)setConfiguration:(id)configuration;
- (LargeTransferAssessor)init;
- (double)transferSizeRelatedRecentTotalThroughput;
- (id)description;
- (id)getState;
- (id)stateString;
- (void)checkLargeTransfersAt:(double)at;
- (void)dumpStateAt:(double)at;
- (void)markActiveTransferSizeFlowsAs:(unsigned int)as;
- (void)refreshTransferSizeState;
@end

@implementation LargeTransferAssessor

- (LargeTransferAssessor)init
{
  v10.receiver = self;
  v10.super_class = LargeTransferAssessor;
  v2 = [(LargeTransferAssessor *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    appTransferSummaries = v2->_appTransferSummaries;
    v2->_appTransferSummaries = v3;

    v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
    currentActiveTransferApps = v2->_currentActiveTransferApps;
    v2->_currentActiveTransferApps = v5;

    v7 = +[FlowScrutinizer sharedInstance];
    flowScrutinizer = v2->_flowScrutinizer;
    v2->_flowScrutinizer = v7;

    v2->_state = 0;
    [(LargeTransferAssessor *)v2 restoreDefaults];
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  stateString = [(LargeTransferAssessor *)self stateString];
  v5 = [v3 stringWithFormat:@"LargeTransferAssessor state %@ rx-cell-tput %.6f tx-cell-tput %.6f rx-wifi-tput %.6f tx-wifi-tput %.6f apps %@", stateString, *&self->_transferSizeRelatedRecentCellRxThroughput, *&self->_transferSizeRelatedRecentCellTxThroughput, *&self->_transferSizeRelatedRecentWiFiRxThroughput, *&self->_transferSizeRelatedRecentWiFiTxThroughput, self->_appTransferSummaries];

  return v5;
}

- (void)refreshTransferSizeState
{
  v138 = *MEMORY[0x277D85DE8];
  v3 = apparentTime();
  selfCopy = self;
  *&self->_numWiFiRxUpperThresholdTransferSizes = 0u;
  self = (self + 192);
  *&self[-1]._numWiFiTxUpperThresholdTransferSizes = 0u;
  p_numWiFiTxUpperThresholdTransferSizes = &self[-1]._numWiFiTxUpperThresholdTransferSizes;
  *&self[-1]._transferSizeRelatedRecentCellTxThroughput = 0u;
  p_transferSizeRelatedRecentCellTxThroughput = &self[-1]._transferSizeRelatedRecentCellTxThroughput;
  *&self[-1]._transferSizeRelatedRecentWiFiTxThroughput = 0u;
  v100 = (self - 16);
  *&self->numUpperThresholdRxTransferSizes = 0u;
  *&self->numCloakedTransferSizes = 0u;
  [self[-1]._numCellTxLowerThresholdTransferSizes removeAllObjects];
  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  selfCopy2 = self;
  obj = [self[-1]._numCellRxUpperThresholdTransferSizes transferSizeFlows];
  v4 = [obj countByEnumeratingWithState:&v118 objects:v137 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v119;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v119 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v118 + 1) + 8 * i);
        transferSizeFlows = [(FlowScrutinizer *)selfCopy->_flowScrutinizer transferSizeFlows];
        v10 = [transferSizeFlows objectForKeyedSubscript:v8];

        creatorLedger = [v10 creatorLedger];

        v12 = flowScrutinyLogHandle;
        v13 = os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO);
        if (creatorLedger)
        {
          if (v13)
          {
            v14 = v12;
            creatorLedger2 = [v10 creatorLedger];
            *buf = 138543874;
            v123 = v8;
            v124 = 2114;
            v125 = creatorLedger2;
            v126 = 2114;
            v127 = v10;
            _os_log_impl(&dword_23255B000, v14, OS_LOG_TYPE_INFO, "refreshTransferSizeState finds uuid %{public}@ has for %{public}@ the flow %{public}@", buf, 0x20u);
          }

          appTransferSummaries = selfCopy->_appTransferSummaries;
          creatorLedger3 = [v10 creatorLedger];
          name = [creatorLedger3 name];
          v19 = [(NSMutableDictionary *)appTransferSummaries objectForKeyedSubscript:name];

          if (!v19)
          {
            v19 = objc_alloc_init(LargeTransferAppSummary);
            v20 = objc_alloc_init(MEMORY[0x277CBEB38]);
            [(LargeTransferAppSummary *)v19 setTransferFlows:v20];

            creatorLedger4 = [v10 creatorLedger];
            [(LargeTransferAppSummary *)v19 setLedger:creatorLedger4];

            creatorLedger5 = [v10 creatorLedger];
            name2 = [creatorLedger5 name];
            [(LargeTransferAppSummary *)v19 setName:name2];

            v24 = selfCopy->_appTransferSummaries;
            creatorLedger6 = [v10 creatorLedger];
            name3 = [creatorLedger6 name];
            [(NSMutableDictionary *)v24 setObject:v19 forKeyedSubscript:name3];
          }

          transferFlows = [(LargeTransferAppSummary *)v19 transferFlows];
          v28 = [transferFlows objectForKeyedSubscript:v8];

          if (!v28)
          {
            v28 = objc_alloc_init(LargeTransferFlowSummary);
            [(LargeTransferFlowSummary *)v28 setState:1];
            [(LargeTransferFlowSummary *)v28 setLedger:v10];
            transferFlows2 = [(LargeTransferAppSummary *)v19 transferFlows];
            [transferFlows2 setObject:v28 forKeyedSubscript:v8];
          }

          [(LargeTransferFlowSummary *)v28 setLastSeenAt:v3];
          v30 = flowScrutinyLogHandle;
          if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            v31 = selfCopy->_appTransferSummaries;
            *buf = 138543362;
            v123 = v31;
            _os_log_impl(&dword_23255B000, v30, OS_LOG_TYPE_INFO, "refreshTransferSizeState _appTransferSummaries %{public}@", buf, 0xCu);
          }
        }

        else if (v13)
        {
          *buf = 138543618;
          v123 = v8;
          v124 = 2114;
          v125 = v10;
          _os_log_impl(&dword_23255B000, v12, OS_LOG_TYPE_INFO, "refreshTransferSizeState finds uuid %{public}@ has unmatched flow %{public}@", buf, 0x16u);
        }
      }

      v5 = [obj countByEnumeratingWithState:&v118 objects:v137 count:16];
    }

    while (v5);
  }

  [(NSMutableDictionary *)selfCopy->_appTransferSummaries allKeys];
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v95 = v117 = 0u;
  v97 = [v95 countByEnumeratingWithState:&v114 objects:v136 count:16];
  if (v97)
  {
    v96 = *v115;
    do
    {
      v32 = 0;
      do
      {
        if (*v115 != v96)
        {
          objc_enumerationMutation(v95);
        }

        v98 = *(*(&v114 + 1) + 8 * v32);
        v99 = v32;
        v33 = [(NSMutableDictionary *)selfCopy->_appTransferSummaries objectForKeyedSubscript:?];
        transferFlows3 = [v33 transferFlows];
        allKeys = [transferFlows3 allKeys];

        [v33 setNumCellRxUpperThresholdTransferSizes:0];
        [v33 setNumCellRxLowerThresholdTransferSizes:0];
        [v33 setNumCellTxUpperThresholdTransferSizes:0];
        [v33 setNumCellTxLowerThresholdTransferSizes:0];
        [v33 setNumWiFiRxUpperThresholdTransferSizes:0];
        [v33 setNumWiFiRxLowerThresholdTransferSizes:0];
        [v33 setNumWiFiTxUpperThresholdTransferSizes:0];
        [v33 setNumWiFiTxLowerThresholdTransferSizes:0];
        [v33 setRecentCellRxThroughput:0.0];
        [v33 setRecentCellTxThroughput:0.0];
        [v33 setRecentWiFiRxThroughput:0.0];
        [v33 setRecentWiFiTxThroughput:0.0];
        v112 = 0u;
        v113 = 0u;
        v110 = 0u;
        v111 = 0u;
        v36 = allKeys;
        v37 = [v36 countByEnumeratingWithState:&v110 objects:v135 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v111;
          do
          {
            v40 = 0;
            do
            {
              if (*v111 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v110 + 1) + 8 * v40);
              transferFlows4 = [v33 transferFlows];
              v43 = [transferFlows4 objectForKeyedSubscript:v41];

              [v43 lastSeenAt];
              if (v44 != v3)
              {
                transferFlows5 = [v33 transferFlows];
                [transferFlows5 setObject:0 forKeyedSubscript:v41];
                goto LABEL_32;
              }

              if ([v43 state] == 2)
              {
                [v43 stateEntryTimestamp];
                if (v46 == 0.0)
                {
                  [v43 setStateEntryTimestamp:v3];
                }

                else
                {
                  [v43 stateEntryTimestamp];
                  if (v3 - v47 > selfCopy->_transferSizeFlowFailedThresholdQuarantineTime)
                  {
                    v48 = flowScrutinyLogHandle;
                    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      v123 = v41;
                      _os_log_impl(&dword_23255B000, v48, OS_LOG_TYPE_DEFAULT, "FlowScrutinizer end of quarantine for flow %@", buf, 0xCu);
                    }

                    [v43 setState:1];
                  }
                }
              }

              if ([v43 state] == 1)
              {
                transferFlows5 = [v43 ledger];
                if ([transferFlows5 totalObservedCellRxBytes] || objc_msgSend(transferFlows5, "totalObservedCellTxBytes"))
                {
                  if ([transferFlows5 rxTransferSizeUpperThreshold])
                  {
                    [v33 setNumCellRxUpperThresholdTransferSizes:{objc_msgSend(v33, "numCellRxUpperThresholdTransferSizes") + 1}];
                    v49 = p_transferSizeRelatedRecentCellTxThroughput;
                    goto LABEL_49;
                  }

                  if ([transferFlows5 rxTransferSizeLowerThreshold])
                  {
                    [v33 setNumCellRxLowerThresholdTransferSizes:{objc_msgSend(v33, "numCellRxLowerThresholdTransferSizes") + 1}];
                    v49 = p_numWiFiTxUpperThresholdTransferSizes;
LABEL_49:
                    [v33 setTotalCellRxTransferSize:{objc_msgSend(v33, "totalCellRxTransferSize") + objc_msgSend(transferFlows5, "rxTransferSizeCount")}];
                    ++*v49;
                  }

                  if ([transferFlows5 txTransferSizeUpperThreshold])
                  {
                    [v33 setNumCellTxUpperThresholdTransferSizes:{objc_msgSend(v33, "numCellTxUpperThresholdTransferSizes") + 1}];
                    [v33 setTotalCellTxTransferSize:{objc_msgSend(v33, "totalCellTxTransferSize") + objc_msgSend(transferFlows5, "txTransferSizeCount")}];
                    p_transferSizeRelatedRecentWiFiRxThroughput = &selfCopy2[-1]._transferSizeRelatedRecentWiFiRxThroughput;
                    goto LABEL_65;
                  }

                  if ([transferFlows5 txTransferSizeLowerThreshold])
                  {
                    [v33 setNumCellTxLowerThresholdTransferSizes:{objc_msgSend(v33, "numCellTxLowerThresholdTransferSizes") + 1}];
                    [v33 setTotalCellTxTransferSize:{objc_msgSend(v33, "totalCellTxTransferSize") + objc_msgSend(transferFlows5, "txTransferSizeCount")}];
                    p_transferSizeRelatedRecentWiFiRxThroughput = &selfCopy2[-1]._transferSizeRelatedRecentCellRxThroughput;
                    goto LABEL_65;
                  }

LABEL_32:

                  goto LABEL_33;
                }

                if (![transferFlows5 totalObservedWiFiRxBytes] && !objc_msgSend(transferFlows5, "totalObservedWiFiTxBytes"))
                {
                  goto LABEL_32;
                }

                if ([transferFlows5 rxTransferSizeUpperThreshold])
                {
                  [v33 setNumWiFiRxUpperThresholdTransferSizes:{objc_msgSend(v33, "numWiFiRxUpperThresholdTransferSizes") + 1}];
                  v51 = selfCopy2;
                  goto LABEL_60;
                }

                if ([transferFlows5 rxTransferSizeLowerThreshold])
                {
                  [v33 setNumWiFiRxLowerThresholdTransferSizes:{objc_msgSend(v33, "numWiFiRxLowerThresholdTransferSizes") + 1}];
                  v51 = v100;
LABEL_60:
                  [v33 setTotalWiFiRxTransferSize:{objc_msgSend(v33, "totalWiFiRxTransferSize") + objc_msgSend(transferFlows5, "rxTransferSizeCount")}];
                  ++v51->super.isa;
                }

                if ([transferFlows5 txTransferSizeUpperThreshold])
                {
                  [v33 setNumWiFiTxUpperThresholdTransferSizes:{objc_msgSend(v33, "numWiFiTxUpperThresholdTransferSizes") + 1}];
                  [v33 setTotalWiFiTxTransferSize:{objc_msgSend(v33, "totalWiFiTxTransferSize") + objc_msgSend(transferFlows5, "txTransferSizeCount")}];
                  p_transferSizeRelatedRecentWiFiRxThroughput = &selfCopy2->numLowerThresholdRxTransferSizes;
                }

                else
                {
                  if (![transferFlows5 txTransferSizeLowerThreshold])
                  {
                    goto LABEL_32;
                  }

                  [v33 setNumWiFiTxLowerThresholdTransferSizes:{objc_msgSend(v33, "numWiFiTxLowerThresholdTransferSizes") + 1}];
                  [v33 setTotalWiFiTxTransferSize:{objc_msgSend(v33, "totalWiFiTxTransferSize") + objc_msgSend(transferFlows5, "txTransferSizeCount")}];
                  p_transferSizeRelatedRecentWiFiRxThroughput = &selfCopy2[-1]._accumulatedLowThroughputHysteresisTime;
                }

LABEL_65:
                ++*p_transferSizeRelatedRecentWiFiRxThroughput;
                goto LABEL_32;
              }

LABEL_33:

              ++v40;
            }

            while (v38 != v40);
            v52 = [v36 countByEnumeratingWithState:&v110 objects:v135 count:16];
            v38 = v52;
          }

          while (v52);
        }

        transferFlows6 = [v33 transferFlows];
        v54 = [transferFlows6 count];

        if (v54)
        {
          [v33 setRecentCellRxThroughput:0.0];
          [v33 setRecentCellTxThroughput:0.0];
          [v33 setRecentWiFiRxThroughput:0.0];
          [v33 setRecentWiFiTxThroughput:0.0];
          v108 = 0u;
          v109 = 0u;
          v106 = 0u;
          v107 = 0u;
          ledger = [v33 ledger];
          currentFlows = [ledger currentFlows];

          v57 = [currentFlows countByEnumeratingWithState:&v106 objects:v134 count:16];
          if (v57)
          {
            v58 = v57;
            v59 = *v107;
            do
            {
              for (j = 0; j != v58; ++j)
              {
                if (*v107 != v59)
                {
                  objc_enumerationMutation(currentFlows);
                }

                v61 = *(*(&v106 + 1) + 8 * j);
                ledger2 = [v33 ledger];
                currentFlows2 = [ledger2 currentFlows];
                v64 = [currentFlows2 objectForKeyedSubscript:v61];

                [v64 recentCellRxThroughput];
                v66 = v65;
                [v33 recentCellRxThroughput];
                [v33 setRecentCellRxThroughput:v66 + v67];
                [v64 recentCellTxThroughput];
                v69 = v68;
                [v33 recentCellTxThroughput];
                [v33 setRecentCellTxThroughput:v69 + v70];
                [v64 recentWiFiRxThroughput];
                v72 = v71;
                [v33 recentWiFiRxThroughput];
                [v33 setRecentWiFiRxThroughput:v72 + v73];
                [v64 recentWiFiTxThroughput];
                v75 = v74;
                [v33 recentWiFiTxThroughput];
                [v33 setRecentWiFiTxThroughput:v75 + v76];
              }

              v58 = [currentFlows countByEnumeratingWithState:&v106 objects:v134 count:16];
            }

            while (v58);
          }

          [v33 recentCellRxThroughput];
          selfCopy->_transferSizeRelatedRecentCellRxThroughput = v77 + selfCopy->_transferSizeRelatedRecentCellRxThroughput;
          [v33 recentCellTxThroughput];
          selfCopy->_transferSizeRelatedRecentCellTxThroughput = v78 + selfCopy->_transferSizeRelatedRecentCellTxThroughput;
          [v33 recentWiFiRxThroughput];
          selfCopy->_transferSizeRelatedRecentWiFiRxThroughput = v79 + selfCopy->_transferSizeRelatedRecentWiFiRxThroughput;
          [v33 recentWiFiTxThroughput];
          selfCopy->_transferSizeRelatedRecentWiFiTxThroughput = v80 + selfCopy->_transferSizeRelatedRecentWiFiTxThroughput;
        }

        else
        {
          [(NSMutableDictionary *)selfCopy->_appTransferSummaries setObject:0 forKeyedSubscript:v98];
        }

        v32 = v99 + 1;
      }

      while (v99 + 1 != v97);
      v97 = [v95 countByEnumeratingWithState:&v114 objects:v136 count:16];
    }

    while (v97);
  }

  v81 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    numCellRxUpperThresholdTransferSizes = selfCopy->_numCellRxUpperThresholdTransferSizes;
    numCellTxUpperThresholdTransferSizes = selfCopy->_numCellTxUpperThresholdTransferSizes;
    numCellRxLowerThresholdTransferSizes = selfCopy->_numCellRxLowerThresholdTransferSizes;
    numCellTxLowerThresholdTransferSizes = selfCopy->_numCellTxLowerThresholdTransferSizes;
    transferSizeRelatedRecentCellRxThroughput = selfCopy->_transferSizeRelatedRecentCellRxThroughput;
    transferSizeRelatedRecentCellTxThroughput = selfCopy->_transferSizeRelatedRecentCellTxThroughput;
    *buf = 134219264;
    v123 = numCellRxUpperThresholdTransferSizes;
    v124 = 2048;
    v125 = numCellRxLowerThresholdTransferSizes;
    v126 = 2048;
    v127 = numCellTxUpperThresholdTransferSizes;
    v128 = 2048;
    v129 = numCellTxLowerThresholdTransferSizes;
    v130 = 2048;
    v131 = transferSizeRelatedRecentCellRxThroughput;
    v132 = 2048;
    v133 = transferSizeRelatedRecentCellTxThroughput;
    _os_log_impl(&dword_23255B000, v81, OS_LOG_TYPE_DEBUG, "refreshTransferSizeState exit cell rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd rx-tput %.6f tx-tput %.6f", buf, 0x3Eu);
  }

  v88 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
  {
    numWiFiRxUpperThresholdTransferSizes = selfCopy->_numWiFiRxUpperThresholdTransferSizes;
    numWiFiTxUpperThresholdTransferSizes = selfCopy->_numWiFiTxUpperThresholdTransferSizes;
    numWiFiRxLowerThresholdTransferSizes = selfCopy->_numWiFiRxLowerThresholdTransferSizes;
    numWiFiTxLowerThresholdTransferSizes = selfCopy->_numWiFiTxLowerThresholdTransferSizes;
    transferSizeRelatedRecentWiFiRxThroughput = selfCopy->_transferSizeRelatedRecentWiFiRxThroughput;
    transferSizeRelatedRecentWiFiTxThroughput = selfCopy->_transferSizeRelatedRecentWiFiTxThroughput;
    *buf = 134219264;
    v123 = numWiFiRxUpperThresholdTransferSizes;
    v124 = 2048;
    v125 = numWiFiRxLowerThresholdTransferSizes;
    v126 = 2048;
    v127 = numWiFiTxUpperThresholdTransferSizes;
    v128 = 2048;
    v129 = numWiFiTxLowerThresholdTransferSizes;
    v130 = 2048;
    v131 = transferSizeRelatedRecentWiFiRxThroughput;
    v132 = 2048;
    v133 = transferSizeRelatedRecentWiFiTxThroughput;
    _os_log_impl(&dword_23255B000, v88, OS_LOG_TYPE_DEBUG, "refreshTransferSizeState exit wifi rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd rx-tput %.6f tx-tput %.6f", buf, 0x3Eu);
  }
}

- (void)checkLargeTransfersAt:(double)at
{
  v34 = *MEMORY[0x277D85DE8];
  setApparentTime(at);
  lastTransferSizeCheck = self->_lastTransferSizeCheck;
  if (lastTransferSizeCheck <= 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = at - lastTransferSizeCheck;
  }

  self->_lastTransferSizeCheck = at;
  [(LargeTransferAssessor *)self refreshTransferSizeState];
  state = self->_state;
  if (state == 3)
  {
    v17 = at - self->_lastTransferSizeUse;
    v18 = flowScrutinyLogHandle;
    if (v17 < self->_normalCloseDampeningInterval)
    {
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        LODWORD(v33) = 134217984;
        *(&v33 + 4) = v17;
        v12 = "LargeTransferAssessor checkLargeTransfers continue hysteresis, has continued for %.3f secs";
        v19 = v18;
        v20 = OS_LOG_TYPE_INFO;
        v21 = 12;
LABEL_40:
        _os_log_impl(&dword_23255B000, v19, v20, v12, &v33, v21);
        goto LABEL_41;
      }

      goto LABEL_41;
    }

    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_23255B000, v18, OS_LOG_TYPE_DEFAULT, "LargeTransferAssessor FinalHysteresis -> Idle", &v33, 2u);
    }

    goto LABEL_28;
  }

  if (state != 2)
  {
    if (state != 1)
    {
      goto LABEL_42;
    }

    shouldStayActiveBlock = [(LargeTransferAssessor *)self shouldStayActiveBlock];

    if (shouldStayActiveBlock)
    {
      shouldStayActiveBlock2 = [(LargeTransferAssessor *)self shouldStayActiveBlock];
      v10 = (shouldStayActiveBlock2)[2](shouldStayActiveBlock2, self);

      if (v10)
      {
        if (v10 != 2)
        {
          if (v10 != 1)
          {
            goto LABEL_41;
          }

          self->_lastTransferSizeUse = at;
          v11 = flowScrutinyLogHandle;
          if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
          {
            goto LABEL_41;
          }

          LOWORD(v33) = 0;
          v12 = "LargeTransferAssessor Active -> Active";
          goto LABEL_38;
        }

        self->_state = 2;
        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          v12 = "LargeTransferAssessor checkLargeTransfers Active -> Hysteresis";
          goto LABEL_35;
        }
      }

      else
      {
        [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:3];
        self->_state = 3;
        v16 = flowScrutinyLogHandle;
        if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v33) = 0;
          v12 = "LargeTransferAssessor checkLargeTransfers Active -> FinalHysteresis";
          goto LABEL_35;
        }
      }
    }

    goto LABEL_41;
  }

  shouldStayActiveBlock3 = [(LargeTransferAssessor *)self shouldStayActiveBlock];

  if (!shouldStayActiveBlock3)
  {
    goto LABEL_41;
  }

  shouldStayActiveBlock4 = [(LargeTransferAssessor *)self shouldStayActiveBlock];
  v15 = (shouldStayActiveBlock4)[2](shouldStayActiveBlock4, self);

  if (v15)
  {
    if (v15 != 2)
    {
      if (v15 != 1)
      {
        goto LABEL_41;
      }

      self->_lastTransferSizeUse = at;
      self->_state = 1;
      ++self->_numTransitionsLowThroughputHysteresisToActive;
      v16 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_41;
      }

      LOWORD(v33) = 0;
      v12 = "LargeTransferAssessor Hysteresis -> Active";
      goto LABEL_35;
    }

    self->_accumulatedLowThroughputHysteresisTime = v6 + self->_accumulatedLowThroughputHysteresisTime;
    v11 = flowScrutinyLogHandle;
    if (at - self->_lastTransferSizeUse <= self->_prolongedBelowThresholdDampeningInterval)
    {
      if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        v12 = "LargeTransferAssessor Hysteresis -> Hysteresis";
LABEL_38:
        v19 = v11;
        v20 = OS_LOG_TYPE_INFO;
        goto LABEL_39;
      }

      goto LABEL_41;
    }

    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v33) = 0;
      _os_log_impl(&dword_23255B000, v11, OS_LOG_TYPE_DEFAULT, "LargeTransferAssessor Hysteresis -> Idle", &v33, 2u);
    }

    [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:2];
LABEL_28:
    self->_lastTransferSizeUse = 0.0;
    self->_state = 0;
    goto LABEL_43;
  }

  [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:3];
  self->_state = 3;
  v16 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v33) = 0;
    v12 = "LargeTransferAssessor checkLargeTransfers Hysteresis -> FinalHysteresis";
LABEL_35:
    v19 = v16;
    v20 = OS_LOG_TYPE_DEFAULT;
LABEL_39:
    v21 = 2;
    goto LABEL_40;
  }

LABEL_41:
  state = self->_state;
LABEL_42:
  if (state)
  {
    return;
  }

LABEL_43:
  shouldGoActiveBlock = [(LargeTransferAssessor *)self shouldGoActiveBlock];

  if (!shouldGoActiveBlock)
  {
    return;
  }

  shouldGoActiveBlock2 = [(LargeTransferAssessor *)self shouldGoActiveBlock];
  self->_activeTransitionQualifier = (shouldGoActiveBlock2)[2](shouldGoActiveBlock2, self);

  activeTransitionQualifier = self->_activeTransitionQualifier;
  if (activeTransitionQualifier < 1)
  {
    if (activeTransitionQualifier < 0)
    {
      [(LargeTransferAssessor *)self markActiveTransferSizeFlowsAs:3];
      v32 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
      {
        return;
      }

      LOWORD(v33) = 0;
      v27 = "LargeTransferAssessor Idle -> Idle, move all current large transfers to quarantine state";
      v28 = v32;
      v29 = OS_LOG_TYPE_DEFAULT;
    }

    else
    {
      v31 = flowScrutinyLogHandle;
      if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEBUG))
      {
        return;
      }

      LOWORD(v33) = 0;
      v27 = "LargeTransferAssessor Idle -> Idle";
      v28 = v31;
      v29 = OS_LOG_TYPE_DEBUG;
    }

    v30 = 2;
  }

  else
  {
    self->_lastTransferSizeUse = at;
    self->_state = 1;
    v25 = flowScrutinyLogHandle;
    if (!os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v26 = self->_activeTransitionQualifier;
    LODWORD(v33) = 67109120;
    DWORD1(v33) = v26;
    v27 = "LargeTransferAssessor Idle -> Active, qualifier %d";
    v28 = v25;
    v29 = OS_LOG_TYPE_DEFAULT;
    v30 = 8;
  }

  _os_log_impl(&dword_23255B000, v28, v29, v27, &v33, v30);
}

- (void)markActiveTransferSizeFlowsAs:(unsigned int)as
{
  v3 = *&as;
  v29 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = self->_appTransferSummaries;
  v4 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v4)
  {
    v5 = v4;
    v17 = *v24;
    do
    {
      v6 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [(NSMutableDictionary *)self->_appTransferSummaries objectForKeyedSubscript:*(*(&v23 + 1) + 8 * v6)];
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        transferFlows = [v7 transferFlows];
        v9 = [transferFlows countByEnumeratingWithState:&v19 objects:v27 count:16];
        if (v9)
        {
          v10 = v9;
          v11 = *v20;
          do
          {
            v12 = 0;
            do
            {
              if (*v20 != v11)
              {
                objc_enumerationMutation(transferFlows);
              }

              v13 = *(*(&v19 + 1) + 8 * v12);
              transferFlows2 = [v7 transferFlows];
              v15 = [transferFlows2 objectForKeyedSubscript:v13];

              if ([v15 state] == 1)
              {
                [v15 setState:v3];
              }

              ++v12;
            }

            while (v10 != v12);
            v10 = [transferFlows countByEnumeratingWithState:&v19 objects:v27 count:16];
          }

          while (v10);
        }

        ++v6;
      }

      while (v6 != v5);
      v5 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v5);
  }
}

- (double)transferSizeRelatedRecentTotalThroughput
{
  [(LargeTransferAssessor *)self transferSizeRelatedRecentTotalRxThroughput];
  v4 = v3;
  [(LargeTransferAssessor *)self transferSizeRelatedRecentTotalTxThroughput];
  return v4 + v5;
}

- (id)stateString
{
  state = self->_state;
  if ((state - 1) < 3)
  {
    return *(&off_27898FF00 + (state - 1));
  }

  if (state)
  {
    return @"unknown";
  }

  return @"Idle";
}

- (BOOL)setConfiguration:(id)configuration
{
  v11 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if (configurationCopy)
  {
    v5 = flowScrutinyLogHandle;
    if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_INFO))
    {
      v9 = 138412290;
      v10 = configurationCopy;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_INFO, "LargeTransferAssessor set configuration %@", &v9, 0xCu);
    }

    logHandle = [configurationCopy logHandle];
    [configurationCopy setLogHandle:flowScrutinyLogHandle];
    [configurationCopy extractKey:@"kOutrankDampeningLargeTransfersBelowThreshold" toDouble:&self->_prolongedBelowThresholdDampeningInterval defaultTo:10.0];
    [configurationCopy extractKey:@"OutrankDampeningHighTransferSize" toDouble:&self->_normalCloseDampeningInterval defaultTo:2.0];
    [configurationCopy extractKey:@"TransferSizeFailedThresholdQuarantineTime" toDouble:&self->_transferSizeFlowFailedThresholdQuarantineTime defaultTo:600.0];
    v7 = [configurationCopy objectForKey:@"restoreDefaults"];
    if (v7)
    {
      [(LargeTransferAssessor *)self restoreDefaults];
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
    traceEntry(3, "[LargeTransferAssessor dumpStateAt:]", "%t", *&at);
  }

  setApparentTime(at);
  v5 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "=========================== START OF LARGETRANSFERASSESSOR STATE DUMP ===========================", buf, 2u);
  }

  getState = [(LargeTransferAssessor *)self getState];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [getState countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(getState);
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

      v8 = [getState countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }

  v13 = flowScrutinyLogHandle;
  if (os_log_type_enabled(flowScrutinyLogHandle, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_DEFAULT, "=========================== END OF LARGETRANSFERASSESSOR STATE DUMP ===========================", buf, 2u);
  }
}

- (id)getState
{
  v3 = apparentTime();
  if ((activeTraceTargets & 8) != 0)
  {
    traceEntry(3, "[LargeTransferAssessor getState]", "%t", *&v3);
  }

  array = [MEMORY[0x277CBEB18] array];
  v5 = objc_alloc(MEMORY[0x277CCACA8]);
  stateString = [(LargeTransferAssessor *)self stateString];
  v7 = [v5 initWithFormat:@"LargeTransferAssessor state %@ configuration: low-tput-dampening %.3f final-dampening %.3f quarantine %.3f", stateString, *&self->_prolongedBelowThresholdDampeningInterval, *&self->_normalCloseDampeningInterval, *&self->_transferSizeFlowFailedThresholdQuarantineTime];

  [array addObject:v7];
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  numCellRxUpperThresholdTransferSizes = self->_numCellRxUpperThresholdTransferSizes;
  numCellTxUpperThresholdTransferSizes = self->_numCellTxUpperThresholdTransferSizes;
  numCellRxLowerThresholdTransferSizes = self->_numCellRxLowerThresholdTransferSizes;
  numCellTxLowerThresholdTransferSizes = self->_numCellTxLowerThresholdTransferSizes;
  [(LargeTransferAssessor *)self transferSizeRelatedRecentCellThroughput];
  v14 = [v8 initWithFormat:@"LargeTransferAssessor cell num rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd total-tput %.6f rx %.6f tx %.6f", numCellRxUpperThresholdTransferSizes, numCellRxLowerThresholdTransferSizes, numCellTxUpperThresholdTransferSizes, numCellTxLowerThresholdTransferSizes, v13, *&self->_transferSizeRelatedRecentCellRxThroughput, *&self->_transferSizeRelatedRecentCellTxThroughput];

  [array addObject:v14];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  numWiFiRxUpperThresholdTransferSizes = self->_numWiFiRxUpperThresholdTransferSizes;
  numWiFiTxUpperThresholdTransferSizes = self->_numWiFiTxUpperThresholdTransferSizes;
  numWiFiRxLowerThresholdTransferSizes = self->_numWiFiRxLowerThresholdTransferSizes;
  numWiFiTxLowerThresholdTransferSizes = self->_numWiFiTxLowerThresholdTransferSizes;
  [(LargeTransferAssessor *)self transferSizeRelatedRecentWiFiThroughput];
  v21 = [v15 initWithFormat:@"LargeTransferAssessor wifi num rx-upper %zd rx-lower %zd tx-upper %zd tx-lower %zd total-tput %.6f rx %.6f tx %.6f", numWiFiRxUpperThresholdTransferSizes, numWiFiRxLowerThresholdTransferSizes, numWiFiTxUpperThresholdTransferSizes, numWiFiTxLowerThresholdTransferSizes, v20, *&self->_transferSizeRelatedRecentWiFiRxThroughput, *&self->_transferSizeRelatedRecentWiFiTxThroughput];

  [array addObject:v21];

  return array;
}

@end