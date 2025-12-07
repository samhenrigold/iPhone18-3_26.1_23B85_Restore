@interface CellularStateRelay
- (NSArray)networkSlicingStates;
- (id)extendedDescription;
- (id)initForInternalType:(unsigned __int8)type;
- (void)setCellBandInfo:(int)info;
- (void)setCellBandwidth:(int)bandwidth;
- (void)setCellDualSimStatus:(unsigned __int8)status;
- (void)setCellMCC:(int)c;
- (void)setCellMNC:(int)c;
- (void)setCellNonPreferredMCC:(int)c;
- (void)setCellNonPreferredMNC:(int)c;
- (void)setCellPID:(int)d;
- (void)setCellRSRP:(int)p;
- (void)setCellRrcConnected:(BOOL)connected;
- (void)setCellSNR:(double)r;
- (void)setCellTAC:(int)c;
- (void)setCellType:(id)type;
- (void)setCellUARFCN:(int)n;
- (void)setIsNonTerrestrialNetworkActive:(BOOL)active;
- (void)setIsStewieActive:(BOOL)active;
- (void)setNetworkSlicingStateAtIndex:(unint64_t)index to:(BOOL)to;
- (void)setNrFrequencyBand:(char)band;
- (void)setRatSelectionIsNR:(BOOL)r;
- (void)updateCellInfo:(id)info;
@end

@implementation CellularStateRelay

- (NSArray)networkSlicingStates
{
  v3 = self->_networkSlicingStates;
  objc_sync_enter(v3);
  v4 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:self->_networkSlicingStates];
  objc_sync_exit(v3);

  return v4;
}

- (id)initForInternalType:(unsigned __int8)type
{
  v19 = *MEMORY[0x277D85DE8];
  v16.receiver = self;
  v16.super_class = CellularStateRelay;
  v3 = [(NetworkStateRelay *)&v16 initForInternalType:type];
  v4 = v3;
  if (v3)
  {
    [v3 setPowerCostDL:255];
    [v4 setPowerCostUL:255];
    [v4 setNrFrequencyBand:0xFFFFFFFFLL];
    v5 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(v4 + 224);
      *buf = 67109120;
      LODWORD(v18) = v6;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_DEFAULT, "Initializing NR frequency band for cell state relay to %d", buf, 8u);
    }

    [v4 setCellRrcConnected:0];
    v7 = analyticsLogHandle;
    if (os_log_type_enabled(analyticsLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      if (*(v4 + 227))
      {
        v8 = "connected";
      }

      else
      {
        v8 = "idle";
      }

      *buf = 136315138;
      v18 = v8;
      _os_log_impl(&dword_23255B000, v7, OS_LOG_TYPE_DEFAULT, "cellRrcConnected (baseline) is %s", buf, 0xCu);
    }

    v9 = +[CoreTelephonyShim sharedInstance];
    getNetworkSlicingStates = [v9 getNetworkSlicingStates];
    v11 = [getNetworkSlicingStates mutableCopy];
    v12 = v4[27];
    v4[27] = v11;

    v13 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_INFO))
    {
      v14 = v4[27];
      *buf = 138412290;
      v18 = v14;
      _os_log_impl(&dword_23255B000, v13, OS_LOG_TYPE_INFO, "Initialized _networkSlicingStates to %@", buf, 0xCu);
    }

    [v4 setIsNonTerrestrialNetworkActive:0];
    [v4 setIsStewieActive:0];
  }

  return v4;
}

- (id)extendedDescription
{
  v20 = objc_alloc(MEMORY[0x277CCACA8]);
  v21.receiver = self;
  v21.super_class = CellularStateRelay;
  v19 = [(NetworkStateRelay *)&v21 description];
  v18 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostDL]];
  v17 = [NetworkAnalyticsEngine mapPowerCost:[(NetworkStateRelay *)self powerCostUL]];
  signalBars = [(NetworkStateRelay *)self signalBars];
  v15 = [NetworkAnalyticsEngine mapRadioTechnology:[(NetworkStateRelay *)self radioTechnology]];
  cellMNC = [(CellularStateRelay *)self cellMNC];
  cellMCC = [(CellularStateRelay *)self cellMCC];
  cellUARFCN = [(CellularStateRelay *)self cellUARFCN];
  cellPID = [(CellularStateRelay *)self cellPID];
  cellBandInfo = [(CellularStateRelay *)self cellBandInfo];
  cellType = [(CellularStateRelay *)self cellType];
  cellBandwidth = [(CellularStateRelay *)self cellBandwidth];
  cellTAC = [(CellularStateRelay *)self cellTAC];
  cellRSRP = [(CellularStateRelay *)self cellRSRP];
  [(CellularStateRelay *)self cellSNR];
  v13 = [v20 initWithFormat:@"%@/pwrDL:%ld/pwrUL:%ld/signalBars:%d/ic:%ld/cellMNC:%d/cellMCC:%d/cellUARFCN=%d/cellPID=%d/cellBandInfo=%d/cellType=%@/cellBandwidth=%d/cellTAC=%d/cellRSRP=%d/cellSNR=%f"], v19, v18, v17, signalBars, v15, cellMNC, cellMCC, cellUARFCN, cellPID, cellBandInfo, cellType, cellBandwidth, cellTAC, cellRSRP, v12);

  return v13;
}

- (void)updateCellInfo:(id)info
{
  v65 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  if (infoCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v44 = 0u;
      v45 = 0u;
      v46 = 0u;
      v47 = 0u;
      v5 = infoCopy;
      v6 = [v5 countByEnumeratingWithState:&v44 objects:v64 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v45;
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (*v45 != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = *(*(&v44 + 1) + 8 * i);
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              v33 = netepochsLogHandle;
              if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
              {
                v34 = v33;
                v35 = objc_opt_class();
                v36 = NSStringFromClass(v35);
                *buf = 138412546;
                *v49 = v36;
                *&v49[8] = 2112;
                v50 = v10;
                _os_log_impl(&dword_23255B000, v34, OS_LOG_TYPE_ERROR, "Expected to find class NSDictionary, found class %@, %@", buf, 0x16u);
              }

              goto LABEL_42;
            }
          }

          v7 = [v5 countByEnumeratingWithState:&v44 objects:v64 count:16];
          if (v7)
          {
            continue;
          }

          break;
        }
      }

      if ([v5 count])
      {
        v11 = [v5 objectAtIndex:0];
        v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38A0]];
        v13 = v12;
        if (v12)
        {
          -[CellularStateRelay setCellMCC:](self, "setCellMCC:", [v12 intValue]);
        }

        v14 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38B0]];

        if (v14)
        {
          -[CellularStateRelay setCellMNC:](self, "setCellMNC:", [v14 intValue]);
        }

        v15 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3928]];

        if (v15)
        {
          -[CellularStateRelay setCellUARFCN:](self, "setCellUARFCN:", [v15 intValue]);
        }

        v16 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38B8]];

        if (v16)
        {
          -[CellularStateRelay setCellPID:](self, "setCellPID:", [v16 intValue]);
        }

        v17 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3858]];

        if (v17)
        {
          -[CellularStateRelay setCellBandInfo:](self, "setCellBandInfo:", [v17 intValue]);
        }

        v18 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3880]];
        if (v18)
        {
          [(CellularStateRelay *)self setCellType:v18];
        }

        v19 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3860]];

        if (v19)
        {
          -[CellularStateRelay setCellBandwidth:](self, "setCellBandwidth:", [v19 intValue]);
        }

        v20 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3920]];

        if (v20)
        {
          -[CellularStateRelay setCellTAC:](self, "setCellTAC:", [v20 intValue]);
        }

        v21 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC38C0]];

        if (v21)
        {
          -[CellularStateRelay setCellRSRP:](self, "setCellRSRP:", [v21 intValue]);
        }

        v22 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC3910]];

        if (v22)
        {
          [v22 doubleValue];
          [(CellularStateRelay *)self setCellSNR:?];
        }

        v23 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          log = v23;
          cellMCC = [(CellularStateRelay *)self cellMCC];
          cellMNC = [(CellularStateRelay *)self cellMNC];
          cellUARFCN = [(CellularStateRelay *)self cellUARFCN];
          cellPID = [(CellularStateRelay *)self cellPID];
          cellBandInfo = [(CellularStateRelay *)self cellBandInfo];
          cellType = [(CellularStateRelay *)self cellType];
          cellBandwidth = [(CellularStateRelay *)self cellBandwidth];
          cellTAC = [(CellularStateRelay *)self cellTAC];
          cellRSRP = [(CellularStateRelay *)self cellRSRP];
          [(CellularStateRelay *)self cellSNR];
          *buf = 67111426;
          *v49 = cellMCC;
          *&v49[4] = 1024;
          *&v49[6] = cellMNC;
          LOWORD(v50) = 1024;
          *(&v50 + 2) = cellUARFCN;
          HIWORD(v50) = 1024;
          v51 = cellPID;
          v52 = 1024;
          v53 = cellBandInfo;
          v54 = 2112;
          v55 = cellType;
          v56 = 1024;
          v57 = cellBandwidth;
          v58 = 1024;
          v59 = cellTAC;
          v60 = 1024;
          v61 = cellRSRP;
          v62 = 2048;
          v63 = v28;
          _os_log_impl(&dword_23255B000, log, OS_LOG_TYPE_DEFAULT, "CT update cell info: mcc:%d/mnc=%d/uarfcn:%d/pid:%d/bandinfo:%d/type:%@/bandwidth:%d/tac:%d/rsrp:%d/snr:%f", buf, 0x46u);
        }
      }

      else
      {
        v37 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_23255B000, v37, OS_LOG_TYPE_ERROR, "Expected info to have count > 0", buf, 2u);
        }
      }

      goto LABEL_42;
    }

    v30 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v5 = v30;
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138412290;
      *v49 = v32;
      _os_log_impl(&dword_23255B000, v5, OS_LOG_TYPE_ERROR, "Expected info to be an NSArray, received %@", buf, 0xCu);

LABEL_42:
    }
  }

  else
  {
    v29 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_23255B000, v29, OS_LOG_TYPE_ERROR, "Expected info to be non-nil", buf, 2u);
    }
  }
}

- (void)setNrFrequencyBand:(char)band
{
  if (self->_nrFrequencyBand != band)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"nrFrequencyBand"];
    self->_nrFrequencyBand = band;
    [(CellularStateRelay *)self didChangeValueForKey:@"nrFrequencyBand"];
    v5 = [MEMORY[0x277D6B3E0] nwInterfaceTypeForNWFunctionalInterfaceType:{-[NetworkStateRelay functionalInterfaceType](self, "functionalInterfaceType")}];
    v6 = +[NetworkAnalyticsEngine sharedInstance];
    [v6 _createJournalRecordOfType:3 forInterface:v5 fromDict:0];
  }
}

- (void)setRatSelectionIsNR:(BOOL)r
{
  if (self->_ratSelectionIsNR != r)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"ratSelectionIsNR"];
    self->_ratSelectionIsNR = r;

    [(CellularStateRelay *)self didChangeValueForKey:@"ratSelectionIsNR"];
  }
}

- (void)setCellMNC:(int)c
{
  if (self->_cellMNC != c)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellMNC"];
    self->_cellMNC = c;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellMNC"];
  }
}

- (void)setCellMCC:(int)c
{
  if (self->_cellMCC != c)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellMCC"];
    self->_cellMCC = c;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellMCC"];
  }
}

- (void)setCellUARFCN:(int)n
{
  if (self->_cellUARFCN != n)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellUARFCN"];
    self->_cellUARFCN = n;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellUARFCN"];
  }
}

- (void)setCellPID:(int)d
{
  if (self->_cellPID != d)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellPID"];
    self->_cellPID = d;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellPID"];
  }
}

- (void)setCellBandInfo:(int)info
{
  if (self->_cellBandInfo != info)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellBandInfo"];
    self->_cellBandInfo = info;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellBandInfo"];
  }
}

- (void)setCellType:(id)type
{
  typeCopy = type;
  if (([typeCopy isEqualToString:self->_cellType] & 1) == 0)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellType"];
    objc_storeStrong(&self->_cellType, type);
    [(CellularStateRelay *)self didChangeValueForKey:@"cellType"];
  }
}

- (void)setCellBandwidth:(int)bandwidth
{
  if (self->_cellBandwidth != bandwidth)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellBandwidth"];
    self->_cellBandwidth = bandwidth;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellBandwidth"];
  }
}

- (void)setCellTAC:(int)c
{
  if (self->_cellTAC != c)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellTAC"];
    self->_cellTAC = c;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellTAC"];
  }
}

- (void)setCellRSRP:(int)p
{
  if (self->_cellRSRP != p)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellRSRP"];
    self->_cellRSRP = p;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellRSRP"];
  }
}

- (void)setCellSNR:(double)r
{
  if (self->_cellSNR != r)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellSNR"];
    self->_cellSNR = r;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellSNR"];
  }
}

- (void)setCellDualSimStatus:(unsigned __int8)status
{
  v9 = *MEMORY[0x277D85DE8];
  if (status)
  {
    cellDualSimStatus = self->_cellDualSimStatus;
    if (cellDualSimStatus != status)
    {
      if (status == 2 && (cellDualSimStatus & 0xFFFFFFFD) != 0)
      {
        v6 = netepochsLogHandle;
        if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
        {
          v7 = self->_cellDualSimStatus;
          v8[0] = 67109120;
          v8[1] = v7;
          _os_log_impl(&dword_23255B000, v6, OS_LOG_TYPE_ERROR, "Rejecting dual SIM status update to 'SupportedButUnknown' from current status %d", v8, 8u);
        }
      }

      else
      {
        [(CellularStateRelay *)self willChangeValueForKey:@"cellDualSimStatus"];
        self->_cellDualSimStatus = status;

        [(CellularStateRelay *)self didChangeValueForKey:@"cellDualSimStatus"];
      }
    }
  }
}

- (void)setCellNonPreferredMNC:(int)c
{
  if (self->_cellNonPreferredMNC != c)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellNonPreferredMNC"];
    self->_cellNonPreferredMNC = c;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellNonPreferredMNC"];
  }
}

- (void)setCellNonPreferredMCC:(int)c
{
  if (self->_cellNonPreferredMCC != c)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellNonPreferredMCC"];
    self->_cellNonPreferredMCC = c;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellNonPreferredMCC"];
  }
}

- (void)setCellRrcConnected:(BOOL)connected
{
  if (self->_cellRrcConnected != connected)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"cellRrcConnected"];
    self->_cellRrcConnected = connected;

    [(CellularStateRelay *)self didChangeValueForKey:@"cellRrcConnected"];
  }
}

- (void)setNetworkSlicingStateAtIndex:(unint64_t)index to:(BOOL)to
{
  toCopy = to;
  v18 = *MEMORY[0x277D85DE8];
  v7 = self->_networkSlicingStates;
  objc_sync_enter(v7);
  if ([(NSMutableArray *)self->_networkSlicingStates count]<= index)
  {
    v15 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_ERROR))
    {
      v16 = 134217984;
      indexCopy = index;
      v12 = "Received request to change network slicing state at invalid index %lu";
      v13 = v15;
      v14 = OS_LOG_TYPE_ERROR;
      goto LABEL_6;
    }
  }

  else
  {
    networkSlicingStates = self->_networkSlicingStates;
    v9 = [MEMORY[0x277CCABB0] numberWithBool:toCopy];
    [(NSMutableArray *)networkSlicingStates replaceObjectAtIndex:index withObject:v9];

    v10 = netepochsLogHandle;
    if (os_log_type_enabled(netepochsLogHandle, OS_LOG_TYPE_DEBUG))
    {
      v11 = self->_networkSlicingStates;
      v16 = 138412290;
      indexCopy = v11;
      v12 = "Network slicing states changed to %@";
      v13 = v10;
      v14 = OS_LOG_TYPE_DEBUG;
LABEL_6:
      _os_log_impl(&dword_23255B000, v13, v14, v12, &v16, 0xCu);
    }
  }

  objc_sync_exit(v7);
}

- (void)setIsNonTerrestrialNetworkActive:(BOOL)active
{
  if (self->_isNonTerrestrialNetworkActive != active)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"isNonTerrestrialNetworkActive"];
    self->_isNonTerrestrialNetworkActive = active;

    [(CellularStateRelay *)self didChangeValueForKey:@"isNonTerrestrialNetworkActive"];
  }
}

- (void)setIsStewieActive:(BOOL)active
{
  if (self->_isStewieActive != active)
  {
    [(CellularStateRelay *)self willChangeValueForKey:@"isStewieActive"];
    self->_isStewieActive = active;

    [(CellularStateRelay *)self didChangeValueForKey:@"isStewieActive"];
  }
}

@end