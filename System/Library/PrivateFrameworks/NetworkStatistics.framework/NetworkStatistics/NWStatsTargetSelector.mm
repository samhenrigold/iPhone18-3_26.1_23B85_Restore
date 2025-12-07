@interface NWStatsTargetSelector
- (BOOL)_applySelection:(id)selection;
- (BOOL)shouldAddProvider:(int)provider;
- (NWStatsTargetSelector)initWithMultipleSelections:(id)selections;
- (NWStatsTargetSelector)initWithSelection:(id)selection;
- (id)description;
@end

@implementation NWStatsTargetSelector

- (BOOL)_applySelection:(id)selection
{
  v95 = *MEMORY[0x277D85DE8];
  selectionCopy = selection;
  objc_storeStrong(&self->_suppliedParams, selection);
  v6 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];

  if (v6)
  {
    v7 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v10 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];
      self->_events |= [v10 unsignedLongLongValue];
    }

    else
    {
      v10 = NStatGetLog(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowEvents"];
        v93 = 138412290;
        v94 = v11;
        _os_log_impl(&dword_25BA3A000, v10, OS_LOG_TYPE_ERROR, "Incorrect class for configuration item %@", &v93, 0xCu);
      }
    }
  }

  v12 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];

  if (v12)
  {
    v13 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];
    objc_opt_class();
    v14 = objc_opt_isKindOfClass();

    if (v14)
    {
      v16 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];
      self->_events |= [v16 unsignedLongLongValue];
    }

    else
    {
      v16 = NStatGetLog(v15);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectConnEvents"];
        v93 = 138412290;
        v94 = v17;
        _os_log_impl(&dword_25BA3A000, v16, OS_LOG_TYPE_ERROR, "Incorrect class for configuration item %@", &v93, 0xCu);
      }
    }
  }

  v18 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellular"];
  if (v18)
  {
    v19 = v18;
    v20 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellular"];
    bOOLValue = [v20 BOOLValue];

    if (bOOLValue)
    {
      self->_filter |= 4uLL;
    }
  }

  v22 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceWiFi"];
  if (v22)
  {
    v23 = v22;
    v24 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceWiFi"];
    bOOLValue2 = [v24 BOOLValue];

    if (bOOLValue2)
    {
      self->_filter |= 8uLL;
    }
  }

  v26 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceWired"];
  if (v26)
  {
    v27 = v26;
    v28 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceWired"];
    bOOLValue3 = [v28 BOOLValue];

    if (bOOLValue3)
    {
      self->_filter |= 0x10uLL;
    }
  }

  v30 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLink"];
  if (v30)
  {
    v31 = v30;
    v32 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLink"];
    bOOLValue4 = [v32 BOOLValue];

    if (bOOLValue4)
    {
      self->_filter |= 0x200uLL;
    }
  }

  v34 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLinkBluetooth"];
  if (v34)
  {
    v35 = v34;
    v36 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCompanionLinkBluetooth"];
    bOOLValue5 = [v36 BOOLValue];

    if (bOOLValue5)
    {
      self->_filter |= 0x40000uLL;
    }
  }

  v38 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceLoopback"];
  if (v38)
  {
    v39 = v38;
    v40 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceLoopback"];
    bOOLValue6 = [v40 BOOLValue];

    if (bOOLValue6)
    {
      self->_filter |= 2uLL;
    }
  }

  v42 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceExpensive"];
  if (v42)
  {
    v43 = v42;
    v44 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceExpensive"];
    bOOLValue7 = [v44 BOOLValue];

    if (bOOLValue7)
    {
      self->_filter |= 0x40uLL;
    }
  }

  v46 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellularViaFallback"];
  if (v46)
  {
    v47 = v46;
    v48 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceCellularViaFallback"];
    bOOLValue8 = [v48 BOOLValue];

    if (bOOLValue8)
    {
      self->_filter |= 0x100uLL;
    }
  }

  v50 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceAWDL"];
  if (v50)
  {
    v51 = v50;
    v52 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceAWDL"];
    bOOLValue9 = [v52 BOOLValue];

    if (bOOLValue9)
    {
      self->_filter |= 0x20uLL;
    }
  }

  v54 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceUnknown"];
  if (v54)
  {
    v55 = v54;
    v56 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceUnknown"];
    bOOLValue10 = [v56 BOOLValue];

    if (bOOLValue10)
    {
      self->_filter |= 1uLL;
    }
  }

  v58 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceRouteValueError"];
  if (v58)
  {
    v59 = v58;
    v60 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceRouteValueError"];
    bOOLValue11 = [v60 BOOLValue];

    if (bOOLValue11)
    {
      self->_filter |= 0x2000uLL;
    }
  }

  v62 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceFlowswitchValueError"];
  if (v62)
  {
    v63 = v62;
    v64 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectInterfaceFlowswitchValueError"];
    bOOLValue12 = [v64 BOOLValue];

    if (bOOLValue12)
    {
      self->_filter |= 0x4000uLL;
    }
  }

  v66 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectAllFlowsAndSubFlows"];

  if (v66)
  {
    v67 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectAllFlowsAndSubFlows"];
    bOOLValue13 = [v67 BOOLValue];
    self->_hasExplicitTCP = 1;
    self->_explicitTCPValue = bOOLValue13;
    self->_hasExplicitUDP = 1;
    self->_explicitUDPValue = bOOLValue13;
    self->_hasExplicitQUIC = 1;
    self->_explicitQUICValue = bOOLValue13;
    self->_hasExplicitUDPSubFlows = 1;
    self->_explicitUDPSubFlowsValue = bOOLValue13;
  }

  v69 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectAllFlows"];

  if (v69)
  {
    v70 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectAllFlows"];
    bOOLValue14 = [v70 BOOLValue];
    self->_hasExplicitTCP = 1;
    self->_explicitTCPValue = bOOLValue14;
    self->_hasExplicitUDP = 1;
    self->_explicitUDPValue = bOOLValue14;
    self->_hasExplicitQUIC = 1;
    self->_explicitQUICValue = bOOLValue14;
  }

  v72 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectTCP"];

  if (v72)
  {
    v73 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectTCP"];
    self->_hasExplicitTCP = 1;
    self->_explicitTCPValue = [v73 BOOLValue];
  }

  v74 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectUDP"];

  if (v74)
  {
    v75 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectUDP"];
    self->_hasExplicitUDP = 1;
    self->_explicitUDPValue = [v75 BOOLValue];
  }

  v76 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectUDPSubFlows"];

  if (v76)
  {
    v77 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectUDPSubFlows"];
    self->_hasExplicitUDPSubFlows = 1;
    self->_explicitUDPSubFlowsValue = [v77 BOOLValue];
  }

  v78 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectQUIC"];

  if (v78)
  {
    v79 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectQUIC"];
    self->_hasExplicitQUIC = 1;
    self->_explicitQUICValue = [v79 BOOLValue];
  }

  v80 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowUsesChannels"];

  if (v80)
  {
    v81 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowUsesChannels"];
    self->_hasExplicitChannels = 1;
    self->_explicitChannelsValue = [v81 BOOLValue];
  }

  v82 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowUsesSockets"];

  if (v82)
  {
    v83 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectFlowUsesSockets"];
    self->_hasExplicitSockets = 1;
    self->_explicitSocketsValue = [v83 BOOLValue];
  }

  v84 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectUserlandConnections"];

  if (v84)
  {
    v85 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectUserlandConnections"];
    self->_hasExplicitUserlandConnections = 1;
    self->_explicitUserlandConnectionsValue = [v85 BOOLValue];
  }

  v86 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];

  if (v86)
  {
    v87 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectConnHasNetAccess"];
    if ([v87 BOOLValue])
    {
      self->_connFilter |= 0x1000000uLL;
    }
  }

  v88 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectStartupConnHasNetAccess"];

  if (v88)
  {
    v89 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectStartupConnHasNetAccess"];
    if ([v89 BOOLValue])
    {
      self->_connFilter |= 0x1001000000uLL;
    }
  }

  v90 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];

  if (v90)
  {
    v91 = [selectionCopy objectForKeyedSubscript:@"kNWStatsSelectTuneSkipNoChangeConnOnRefresh"];
    if ([v91 BOOLValue])
    {
      self->_connFilter |= 0x20000000uLL;
    }
  }

  return 1;
}

- (NWStatsTargetSelector)initWithSelection:(id)selection
{
  selectionCopy = selection;
  v8.receiver = self;
  v8.super_class = NWStatsTargetSelector;
  v5 = [(NWStatsTargetSelector *)&v8 init];
  v6 = v5;
  if (v5 && ![(NWStatsTargetSelector *)v5 _applySelection:selectionCopy])
  {

    v6 = 0;
  }

  return v6;
}

- (NWStatsTargetSelector)initWithMultipleSelections:(id)selections
{
  v18 = *MEMORY[0x277D85DE8];
  selectionsCopy = selections;
  v16.receiver = self;
  v16.super_class = NWStatsTargetSelector;
  v5 = [(NWStatsTargetSelector *)&v16 init];
  if (v5)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = selectionsCopy;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          if (![(NWStatsTargetSelector *)v5 _applySelection:*(*(&v12 + 1) + 8 * i), v12])
          {

            v5 = 0;
            goto LABEL_12;
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v17 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  return v5;
}

- (BOOL)shouldAddProvider:(int)provider
{
  hasExplicitTCP = self->_hasExplicitTCP;
  if (hasExplicitTCP)
  {
    explicitTCPValue = self->_explicitTCPValue;
    if (!self->_hasExplicitUDP)
    {
LABEL_13:
      v6 = 0;
      explicitUDPValue = 0;
      goto LABEL_14;
    }

LABEL_6:
    explicitUDPValue = self->_explicitUDPValue;
    v6 = 1;
    goto LABEL_14;
  }

  if (self->_hasExplicitUDP)
  {
    explicitTCPValue = 0;
    goto LABEL_6;
  }

  explicitTCPValue = !self->_hasExplicitQUIC && !self->_hasExplicitUDPSubFlows && !self->_hasExplicitUserlandConnections;
  if (self->_hasExplicitQUIC || self->_hasExplicitUDPSubFlows)
  {
    goto LABEL_13;
  }

  v6 = 0;
  explicitUDPValue = !self->_hasExplicitUserlandConnections;
LABEL_14:
  hasExplicitUDPSubFlows = self->_hasExplicitUDPSubFlows;
  v8 = hasExplicitUDPSubFlows && self->_explicitUDPSubFlowsValue;
  if (self->_hasExplicitQUIC)
  {
    explicitQUICValue = self->_explicitQUICValue;
    goto LABEL_27;
  }

  if ((v6 | hasExplicitTCP))
  {
    goto LABEL_20;
  }

  if (self->_hasExplicitSockets)
  {
    explicitQUICValue = 0;
    if (hasExplicitUDPSubFlows || !self->_hasExplicitChannels)
    {
      goto LABEL_27;
    }
  }

  else if (hasExplicitUDPSubFlows)
  {
LABEL_20:
    explicitQUICValue = 0;
    goto LABEL_27;
  }

  explicitQUICValue = !self->_hasExplicitUserlandConnections;
LABEL_27:
  v10 = self->_hasExplicitUserlandConnections && self->_explicitUserlandConnectionsValue;
  hasExplicitChannels = self->_hasExplicitChannels;
  if (hasExplicitChannels)
  {
    explicitChannelsValue = self->_explicitChannelsValue;
    if (!self->_hasExplicitSockets)
    {
LABEL_32:
      explicitSocketsValue = !hasExplicitChannels;
      goto LABEL_35;
    }
  }

  else
  {
    explicitChannelsValue = !self->_hasExplicitSockets;
    if (explicitChannelsValue)
    {
      goto LABEL_32;
    }
  }

  explicitSocketsValue = self->_explicitSocketsValue;
LABEL_35:
  v14 = 0;
  if (provider <= 4)
  {
    switch(provider)
    {
      case 2:
        v14 = explicitTCPValue && explicitSocketsValue;
        break;
      case 3:
        v14 = explicitTCPValue && explicitChannelsValue;
        break;
      case 4:
        v14 = explicitUDPValue && explicitSocketsValue;
        break;
    }
  }

  else if (provider > 8)
  {
    if (provider == 9)
    {
      return v10;
    }

    else if (provider == 10)
    {
      return v8;
    }
  }

  else if (provider == 5)
  {
    return explicitUDPValue && explicitChannelsValue;
  }

  else if (provider == 8)
  {
    return explicitQUICValue;
  }

  return v14;
}

- (id)description
{
  v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"NWStatsTargetSelector at %p, filter 0x%llx connFilter 0x%llx events 0x%llx cfg UDP %d val %d cfg TCP %d val %d cfg QUIC %d val %d cfg subflows %d val %d cfg conns %d val %d cfg channels %d val %d cfg sockets %d val %d params %@", self, self->_filter, self->_connFilter, self->_events, self->_hasExplicitUDP, self->_explicitUDPValue, self->_hasExplicitTCP, self->_explicitTCPValue, self->_hasExplicitQUIC, self->_explicitQUICValue, self->_hasExplicitUDPSubFlows, self->_explicitUDPSubFlowsValue, self->_hasExplicitUserlandConnections, self->_explicitUserlandConnectionsValue, self->_hasExplicitChannels, self->_explicitChannelsValue, self->_hasExplicitSockets, self->_explicitSocketsValue, self->_suppliedParams];

  return v2;
}

@end