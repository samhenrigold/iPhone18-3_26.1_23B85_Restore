@interface WFBlackListNode
- (BOOL)containsNetwork:(id)network;
- (BOOL)hasBlacklistedState:(unint64_t)state;
- (BOOL)updateNetwork:(id)network;
- (WFBlackListNode)initWithBlacklistNetwork:(id)network;
- (id)_copyCreateBlacklistedState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data;
- (void)addBlacklistTrigger:(unint64_t)trigger reasonData:(int64_t)data bssid:(id)bssid;
- (void)addBlacklistedState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data;
- (void)addBlacklistedStateHistory:(id)history state:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data;
- (void)dealloc;
- (void)networkPruned;
- (void)processBlacklistedStateMetric:(id)metric unblacklisting:(BOOL)unblacklisting unblacklistingReason:(unint64_t)reason;
@end

@implementation WFBlackListNode

- (WFBlackListNode)initWithBlacklistNetwork:(id)network
{
  networkCopy = network;
  v16.receiver = self;
  v16.super_class = WFBlackListNode;
  v5 = [(WFBlackListNode *)&v16 init];
  if (!v5)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  if (!networkCopy)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklistTriggers = v5->_blacklistTriggers;
  v5->_blacklistTriggers = v6;

  if (!v5->_blacklistTriggers)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklistedStatesCurrent = v5->_blacklistedStatesCurrent;
  v5->_blacklistedStatesCurrent = v8;

  if (!v5->_blacklistedStatesCurrent)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
  blacklistedStatesHistory = v5->_blacklistedStatesHistory;
  v5->_blacklistedStatesHistory = v10;

  if (!v5->_blacklistedStatesHistory)
  {
    [WFBlackListNode initWithBlacklistNetwork:];
    goto LABEL_13;
  }

  isEAP = [networkCopy isEAP];
  v5->_enterprisePolicy = isEAP & [networkCopy isProfileBased];
  v13 = [networkCopy copyWithZone:0];
  if (![v13 isEqualToBlacklistNetwork:networkCopy])
  {
LABEL_14:
    v14 = 0;
    goto LABEL_15;
  }

  [(WFBlackListNode *)v5 setNetworkDelegate:v13];
  v14 = v5;
LABEL_15:

  return v14;
}

- (void)dealloc
{
  [(NSMutableArray *)self->_blacklistTriggers removeAllObjects];
  [(NSMutableArray *)self->_blacklistedStatesCurrent removeAllObjects];
  [(NSMutableArray *)self->_blacklistedStatesHistory removeAllObjects];
  v3.receiver = self;
  v3.super_class = WFBlackListNode;
  [(WFBlackListNode *)&v3 dealloc];
}

- (void)addBlacklistTrigger:(unint64_t)trigger reasonData:(int64_t)data bssid:(id)bssid
{
  bssidCopy = bssid;
  blacklistTriggers = [(WFBlackListNode *)self blacklistTriggers];
  v10 = [blacklistTriggers count];

  if (v10 >= 0x10)
  {
    blacklistTriggers2 = [(WFBlackListNode *)self blacklistTriggers];
    [blacklistTriggers2 removeObjectAtIndex:0];
  }

  v12 = objc_alloc_init(WFBlacklistTriggerNode);
  if (v12)
  {
    v13 = [WFBlacklistEngine stringRepresentationWithReason:trigger];
    [(WFBlacklistTriggerNode *)v12 setTriggerReason:trigger];
    [(WFBlacklistTriggerNode *)v12 setTriggerReasonData:data];
    if (v13)
    {
      [(WFBlacklistTriggerNode *)v12 setTriggerReasonString:v13];
    }

    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(WFBlacklistTriggerNode *)v12 setTriggerReasonTimestamp:?];

    if (bssidCopy)
    {
      [(WFBlacklistTriggerNode *)v12 setBssid:bssidCopy];
    }

    blacklistTriggers3 = [(WFBlackListNode *)self blacklistTriggers];
    [blacklistTriggers3 addObject:v12];
  }

  else
  {
    [WFBlackListNode addBlacklistTrigger:reasonData:bssid:];
    v13 = v16;
  }
}

- (BOOL)containsNetwork:(id)network
{
  if (network)
  {
    return [(WFBlacklistNetwork *)self->_networkDelegate isEqualToBlacklistNetwork:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)hasBlacklistedState:(unint64_t)state
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  blacklistedStatesCurrent = [(WFBlackListNode *)self blacklistedStatesCurrent];
  v5 = [blacklistedStatesCurrent countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(blacklistedStatesCurrent);
        }

        if ([*(*(&v11 + 1) + 8 * i) blacklistedState] == state)
        {
          v9 = 1;
          goto LABEL_11;
        }
      }

      v6 = [blacklistedStatesCurrent countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (BOOL)updateNetwork:(id)network
{
  v4 = [network copyWithZone:0];
  networkDelegate = self->_networkDelegate;
  self->_networkDelegate = v4;

  return 1;
}

- (id)_copyCreateBlacklistedState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data
{
  v8 = objc_alloc_init(WFBlacklistStateNode);
  if (v8)
  {
    v9 = [WFBlacklistEngine stringRepresentationWithState:state];
    v10 = [WFBlacklistEngine stringRepresentationWithReason:reason];
    [(WFBlacklistStateNode *)v8 setBlacklistedState:state];
    [(WFBlacklistStateNode *)v8 setBlacklistedStateString:v9];
    date = [MEMORY[0x277CBEAA8] date];
    [date timeIntervalSince1970];
    [(WFBlacklistStateNode *)v8 setBlacklistedStateTimestamp:?];

    [(WFBlacklistStateNode *)v8 setBlacklistedReason:reason];
    [(WFBlacklistStateNode *)v8 setBlacklistedReasonData:data];
    [(WFBlacklistStateNode *)v8 setBlacklistedReasonString:v10];
  }

  else
  {
    [WFBlackListNode _copyCreateBlacklistedState:reason:reasonData:];
    v9 = v13;
  }

  return v8;
}

- (void)addBlacklistedState:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data
{
  reasonCopy = reason;
  v50 = *MEMORY[0x277D85DE8];
  v8 = [(WFBlackListNode *)self _copyCreateBlacklistedState:state reason:reason reasonData:data];
  if (!v8)
  {
    [WFBlackListNode addBlacklistedState:reason:reasonData:];
    ssid = *buf;
    goto LABEL_20;
  }

  networkDelegate = [(WFBlackListNode *)self networkDelegate];
  ssid = [networkDelegate ssid];

  networkDelegate2 = [(WFBlackListNode *)self networkDelegate];
  bssid = [networkDelegate2 bssid];

  blacklistedStatesCurrent = [(WFBlackListNode *)self blacklistedStatesCurrent];
  v14 = [blacklistedStatesCurrent count];

  if (v14)
  {
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    blacklistedStatesCurrent2 = [(WFBlackListNode *)self blacklistedStatesCurrent];
    v16 = [blacklistedStatesCurrent2 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v16)
    {
      v17 = v16;
      v30 = reasonCopy;
      v31 = bssid;
      v18 = ssid;
      v19 = 0;
      v20 = *v33;
      while (2)
      {
        v21 = 0;
        v22 = v19;
        do
        {
          if (*v33 != v20)
          {
            objc_enumerationMutation(blacklistedStatesCurrent2);
          }

          v19 = *(*(&v32 + 1) + 8 * v21);

          blacklistedState = [v19 blacklistedState];
          if (blacklistedState == [v8 blacklistedState])
          {

            ssid = v18;
            bssid = v31;
            if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
            {
              v28 = [WFBlacklistEngine stringRepresentationWithState:state];
              v29 = [WFBlacklistEngine stringRepresentationWithReason:v30];
              *buf = 141559554;
              *&buf[4] = 1752392040;
              v38 = 2112;
              v39 = v18;
              v40 = 2160;
              v41 = 1752392040;
              v42 = 2112;
              v43 = v31;
              v44 = 2112;
              v45 = v28;
              v46 = 2112;
              v47 = v29;
              v48 = 2048;
              v49 = v30;
              _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "'%{mask.hash}@[%{mask.hash}@]' was already %@. Would have blacklisted again due to %@(%lu)", buf, 0x48u);
            }

            goto LABEL_19;
          }

          ++v21;
          v22 = v19;
        }

        while (v17 != v21);
        v17 = [blacklistedStatesCurrent2 countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }

      ssid = v18;
      reasonCopy = v30;
      bssid = v31;
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v24 = [WFBlacklistEngine stringRepresentationWithState:state];
    v25 = [WFBlacklistEngine stringRepresentationWithReason:reasonCopy];
    *buf = 141559554;
    *&buf[4] = 1752392040;
    v38 = 2112;
    v39 = ssid;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 2112;
    v43 = bssid;
    v44 = 2112;
    v45 = v24;
    v46 = 2112;
    v47 = v25;
    v48 = 2048;
    v49 = reasonCopy;
    v26 = MEMORY[0x277D86220];
  }

  else
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    v24 = [WFBlacklistEngine stringRepresentationWithState:state];
    v25 = [WFBlacklistEngine stringRepresentationWithReason:reasonCopy];
    *buf = 141559554;
    *&buf[4] = 1752392040;
    v38 = 2112;
    v39 = ssid;
    v40 = 2160;
    v41 = 1752392040;
    v42 = 2112;
    v43 = bssid;
    v44 = 2112;
    v45 = v24;
    v46 = 2112;
    v47 = v25;
    v48 = 2048;
    v49 = reasonCopy;
    v26 = MEMORY[0x277D86220];
  }

  _os_log_error_impl(&dword_2332D7000, v26, OS_LOG_TYPE_ERROR, "Blacklisting and adding '%{mask.hash}@[%{mask.hash}@]' to %@ due to %@(%lu)", buf, 0x48u);

LABEL_18:
  blacklistedStatesCurrent3 = [(WFBlackListNode *)self blacklistedStatesCurrent];
  [blacklistedStatesCurrent3 addObject:v8];

  [(WFBlackListNode *)self processBlacklistedStateMetric:v8 unblacklisting:0 unblacklistingReason:0];
LABEL_19:

LABEL_20:
}

- (void)addBlacklistedStateHistory:(id)history state:(unint64_t)state reason:(unint64_t)reason reasonData:(int64_t)data
{
  v25 = *MEMORY[0x277D85DE8];
  historyCopy = history;
  v11 = historyCopy;
  if (historyCopy)
  {
    v12 = historyCopy;
  }

  else
  {
    v12 = [(WFBlackListNode *)self _copyCreateBlacklistedState:state reason:reason reasonData:data];
    if (!v12)
    {
      [WFBlackListNode addBlacklistedStateHistory:state:reason:reasonData:];
      v12 = *buf;
      goto LABEL_9;
    }
  }

  networkDelegate = [(WFBlackListNode *)self networkDelegate];
  ssid = [networkDelegate ssid];

  blacklistedStatesHistory = [(WFBlackListNode *)self blacklistedStatesHistory];
  v16 = [blacklistedStatesHistory count];

  if (v16 >= 5)
  {
    blacklistedStatesHistory2 = [(WFBlackListNode *)self blacklistedStatesHistory];
    [blacklistedStatesHistory2 removeObjectAtIndex:0];
  }

  v18 = MEMORY[0x277CCACA8];
  v19 = [WFBlacklistEngine stringRepresentationWithState:state];
  v20 = [WFBlacklistEngine stringRepresentationWithReason:reason];
  reason = [v18 stringWithFormat:@"Adding to blacklistHistory: %@ for '%@' due to %@(%lu)", v19, ssid, v20, reason];

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(reason, "UTF8String")];
    *buf = 136446210;
    *&buf[4] = [v22 UTF8String];
    _os_log_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%{public}s", buf, 0xCu);
  }

  blacklistedStatesHistory3 = [(WFBlackListNode *)self blacklistedStatesHistory];
  [blacklistedStatesHistory3 addObject:v12];

LABEL_9:
}

- (void)networkPruned
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s _blacklistMetrics nil", "-[WFBlackListNode networkPruned]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)processBlacklistedStateMetric:(id)metric unblacklisting:(BOOL)unblacklisting unblacklistingReason:(unint64_t)reason
{
  unblacklistingCopy = unblacklisting;
  v67 = *MEMORY[0x277D85DE8];
  metricCopy = metric;
  if (!metricCopy)
  {
    [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
LABEL_30:
    bssid = *buf;
    goto LABEL_27;
  }

  if (!self->_blacklistMetrics)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
    blacklistMetrics = self->_blacklistMetrics;
    self->_blacklistMetrics = v8;

    if (!self->_blacklistMetrics)
    {
      [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
      goto LABEL_30;
    }
  }

  networkDelegate = [(WFBlackListNode *)self networkDelegate];
  bssid = [networkDelegate bssid];

  networkDelegate2 = [(WFBlackListNode *)self networkDelegate];
  ssid = [networkDelegate2 ssid];

  if (bssid)
  {
    if (ssid)
    {
      if (unblacklistingCopy)
      {
        indexSet = [MEMORY[0x277CCAB58] indexSet];
        if ([(NSMutableArray *)self->_blacklistMetrics count])
        {
          v15 = 0;
          *&v14 = 136316930;
          v46 = v14;
          v47 = metricCopy;
          do
          {
            v16 = [(NSMutableArray *)self->_blacklistMetrics objectAtIndex:v15, v46];
            v17 = [v16 objectForKeyedSubscript:@"state"];
            unsignedIntegerValue = [v17 unsignedIntegerValue];
            blacklistedState = [metricCopy blacklistedState];

            if (unsignedIntegerValue == blacklistedState)
            {
              v20 = [v16 objectForKeyedSubscript:@"ssid"];
              if (([v20 isEqualToString:ssid] & 1) == 0)
              {

LABEL_16:
                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
                {
                  v31 = [v16 objectForKeyedSubscript:@"ssid"];
                  v32 = [v16 objectForKeyedSubscript:@"bssid"];
                  *buf = 136317186;
                  *&buf[4] = "[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]";
                  v51 = 2160;
                  v52 = 1752392040;
                  v53 = 2112;
                  v54 = v31;
                  v55 = 2160;
                  v56 = 1752392040;
                  v57 = 2112;
                  v58 = v32;
                  v59 = 2160;
                  v60 = 1752392040;
                  v61 = 2112;
                  v62 = ssid;
                  v63 = 2160;
                  v64 = 1752392040;
                  v65 = 2112;
                  v66 = bssid;
                  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s metric ssid:%{mask.hash}@ bssid:%{mask.hash}@ doesnt match with node ssid:%{mask.hash}@ bssid:%{mask.hash}@", buf, 0x5Cu);
                }

                goto LABEL_18;
              }

              v21 = [v16 objectForKeyedSubscript:@"bssid"];
              v22 = [v21 isEqualToString:bssid];

              if (!v22)
              {
                goto LABEL_16;
              }

              date = [MEMORY[0x277CBEAA8] date];
              [date timeIntervalSince1970];
              v25 = v24;

              v26 = MEMORY[0x277CCABB0];
              v27 = [v16 objectForKeyedSubscript:@"blocklistTimestamp"];
              [v27 doubleValue];
              v29 = [v26 numberWithDouble:v25 - v28];
              [v16 setObject:v29 forKeyedSubscript:@"blocklistedDuration"];

              v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:reason];
              [v16 setObject:v30 forKeyedSubscript:@"unblocklistingReason"];

              [v16 removeObjectForKey:@"ssid"];
              [v16 removeObjectForKey:@"bssid"];
              [v16 removeObjectForKey:@"state"];
              [v16 removeObjectForKey:@"blocklistTimestamp"];
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                v33 = [v16 objectForKeyedSubscript:@"blocklistedDuration"];
                v34 = [v16 objectForKeyedSubscript:@"unblocklistingReason"];
                v35 = [v16 objectForKeyedSubscript:@"prunedCount"];
                *buf = v46;
                *&buf[4] = "[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]";
                v51 = 2160;
                v52 = 1752392040;
                v53 = 2112;
                v54 = ssid;
                v55 = 2160;
                v56 = 1752392040;
                v57 = 2112;
                v58 = bssid;
                v59 = 2112;
                v60 = v33;
                v61 = 2112;
                v62 = v34;
                v63 = 2112;
                v64 = v35;
                _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Finish capturing metric for %{mask.hash}@[%{mask.hash}@] - {duration:%@ unblacklistReason:%@ prunedCount:%@}", buf, 0x52u);
              }

              [indexSet addIndex:v15];
              metricCopy = v47;
            }

LABEL_18:

            ++v15;
          }

          while (v15 < [(NSMutableArray *)self->_blacklistMetrics count]);
        }

        if ([indexSet count])
        {
          v45 = [(NSMutableArray *)self->_blacklistMetrics objectsAtIndexes:indexSet];
          [v45 enumerateObjectsUsingBlock:&__block_literal_global_15];
          [(NSMutableArray *)self->_blacklistMetrics removeObjectsAtIndexes:indexSet];
        }
      }

      else
      {
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v37 = [MEMORY[0x277CCACA8] stringWithString:ssid];
        [dictionary setObject:v37 forKeyedSubscript:@"ssid"];

        v38 = [MEMORY[0x277CCACA8] stringWithString:bssid];
        [dictionary setObject:v38 forKeyedSubscript:@"bssid"];

        v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(metricCopy, "blacklistedState")}];
        [dictionary setObject:v39 forKeyedSubscript:@"state"];

        v40 = MEMORY[0x277CCABB0];
        [metricCopy blacklistedStateTimestamp];
        v41 = [v40 numberWithDouble:?];
        [dictionary setObject:v41 forKeyedSubscript:@"blocklistTimestamp"];

        v42 = [WiFiUsagePrivacyFilter sanitizedOUI:bssid];
        [dictionary setObject:v42 forKeyedSubscript:@"oui"];

        v43 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(metricCopy, "blacklistedReason")}];
        [dictionary setObject:v43 forKeyedSubscript:@"blocklistedReason"];

        v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(metricCopy, "blacklistedReasonData")}];
        [dictionary setObject:v44 forKeyedSubscript:@"blocklistedSubreason"];

        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
        {
          [WFBlackListNode processBlacklistedStateMetric:ssid unblacklisting:bssid unblacklistingReason:dictionary];
        }

        [(NSMutableArray *)self->_blacklistMetrics addObject:dictionary];
      }
    }

    else
    {
      [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
    }
  }

  else
  {
    [WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:];
    bssid = ssid;
  }

LABEL_27:
}

void __85__WFBlackListNode_processBlacklistedStateMetric_unblacklisting_unblacklistingReason___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  AnalyticsSendEventLazy();
}

- (void)initWithBlacklistNetwork:.cold.1()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s Alloc failed: historyList", "-[WFBlackListNode initWithBlacklistNetwork:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)initWithBlacklistNetwork:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s Alloc failed: statesList", "-[WFBlackListNode initWithBlacklistNetwork:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)initWithBlacklistNetwork:.cold.3()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s Alloc failed: triggersList", "-[WFBlackListNode initWithBlacklistNetwork:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)initWithBlacklistNetwork:.cold.4()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s network nil", "-[WFBlackListNode initWithBlacklistNetwork:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)initWithBlacklistNetwork:.cold.5()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s self nil", "-[WFBlackListNode initWithBlacklistNetwork:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)addBlacklistTrigger:reasonData:bssid:.cold.1()
{
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s ev alloc failed", "-[WFBlackListNode addBlacklistTrigger:reasonData:bssid:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_10(), "UTF8String")];
    [v1 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v2, "%{public}s", v3, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_0();
}

- (void)_copyCreateBlacklistedState:reason:reasonData:.cold.1()
{
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s stateNode alloc failed", "-[WFBlackListNode _copyCreateBlacklistedState:reason:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_10(), "UTF8String")];
    [v1 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v2, "%{public}s", v3, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_0();
}

- (void)addBlacklistedState:reason:reasonData:.cold.1()
{
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Failed to add state", "-[WFBlackListNode addBlacklistedState:reason:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_10(), "UTF8String")];
    [v1 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v2, "%{public}s", v3, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_0();
}

- (void)addBlacklistedStateHistory:state:reason:reasonData:.cold.1()
{
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s Failed to add state to history", "-[WFBlackListNode addBlacklistedStateHistory:state:reason:reasonData:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_10(), "UTF8String")];
    [v1 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v2, "%{public}s", v3, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_0();
}

- (void)processBlacklistedStateMetric:(uint64_t)a1 unblacklisting:(uint64_t)a2 unblacklistingReason:(void *)a3 .cold.1(uint64_t a1, uint64_t a2, void *a3)
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = [a3 objectForKeyedSubscript:@"oui"];
  v7 = [a3 objectForKeyedSubscript:@"blocklistedReason"];
  v8 = [a3 objectForKeyedSubscript:@"blocklistedSubreason"];
  v13[0] = 136316930;
  OUTLINED_FUNCTION_4_2();
  v14 = a1;
  v15 = v9;
  v16 = v10;
  v17 = v11;
  v18 = a2;
  v19 = v11;
  v20 = v6;
  v21 = v11;
  v22 = v7;
  v23 = v11;
  v24 = v12;
  _os_log_error_impl(&dword_2332D7000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "%s Begin capturing metric for %{mask.hash}@[%{mask.hash}@] - {oui:%@ blacklistedReason:%@ blacklistedSubreason:%@}", v13, 0x52u);
}

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.2()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s ssid nil", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.3()
{
  v1 = [OUTLINED_FUNCTION_1_2(*MEMORY[0x277D85DE8]) stringWithFormat:@"%s bssid nil", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_11(), "UTF8String")];
    [v2 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v3, "%{public}s", v4, v5, v6, v7, v8, v9);
  }
}

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.4()
{
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s _blacklistMetrics alloc failed", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_10(), "UTF8String")];
    [v1 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v2, "%{public}s", v3, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_0();
}

- (void)processBlacklistedStateMetric:unblacklisting:unblacklistingReason:.cold.5()
{
  [OUTLINED_FUNCTION_0_2() stringWithFormat:@"%s node nil", "-[WFBlackListNode processBlacklistedStateMetric:unblacklisting:unblacklistingReason:]"];
  objc_claimAutoreleasedReturnValue();
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v1 = [v0 stringWithFormat:@"[WiFiPolicy] %s", objc_msgSend(OUTLINED_FUNCTION_10(), "UTF8String")];
    [v1 UTF8String];
    OUTLINED_FUNCTION_2_0();
    OUTLINED_FUNCTION_1_1(&dword_2332D7000, MEMORY[0x277D86220], v2, "%{public}s", v3, v4, v5, v6, v7, v8);
  }

  OUTLINED_FUNCTION_6_0();
}

@end